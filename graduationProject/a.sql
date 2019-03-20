/*
Navicat MySQL Data Transfer

Source Server         : 47.98.135.26
Source Server Version : 50718
Source Host           : 47.98.135.26:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-08-27 10:27:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `a`
-- ----------------------------
DROP TABLE IF EXISTS `a`;
CREATE TABLE `a` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(4) NOT NULL DEFAULT '0000-00-00 00:00:00.0000',
  `updated_at` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of a
-- ----------------------------
INSERT INTO `a` VALUES ('1', '2018-01-31 18:43:51.0000', '2018-01-31 17:44:02.000000');

-- ----------------------------
-- Table structure for `failed_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `g_admin`
-- ----------------------------
DROP TABLE IF EXISTS `g_admin`;
CREATE TABLE `g_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Token',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1超级管理员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of g_admin
-- ----------------------------
INSERT INTO `g_admin` VALUES ('1', 'admin', '/uploads/images/avatar/teXcDqspZaNiOJjYZt11Cor1GISGvXvJsi5sCqqT.jpeg', '0384023@qq.com', '$2y$10$u6GzLcxchbFlWwPnO08x0.QiuWOpsiuzzcDSHka9GTzbj7T92J82S', 'binSvoFKFCBoCH9ENOTQbYIzIBfkK3zPuYVYzB6uT52An5SZYFYrG7OtwA5I', '2017-08-01 10:01:24', '2018-08-17 18:14:34', '1');
INSERT INTO `g_admin` VALUES ('2', 'test', '/uploads/images/avatar/q9TV8ghZJEUYvkpxLE3ZQutGg7PwDbcuDnMq47oA.jpeg', '3240394@qq.com', '$2y$10$BewlOLb5Urku1riwo8xWbus4CVtOKxejwLUD/AfPoHLfb/4mH4Gxm', null, '2017-08-11 10:03:13', '2017-08-23 14:22:20', '0');

-- ----------------------------
-- Table structure for `g_article`
-- ----------------------------
DROP TABLE IF EXISTS `g_article`;
CREATE TABLE `g_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'article' COMMENT '类型',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 1正常，2禁用',
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '封面图片',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '浏览数',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of g_article
-- ----------------------------
INSERT INTO `g_article` VALUES ('4', '银行处处打压支付宝，为什么不去对付微信？', 'article', '1', '/uploads/images/article/9OvGWTLOex0kssrzYPK360icrOst3Hnn8GV7s9wu.jpeg', '<p></p><p><section><h1 style=\"margin: 0.2rem 0px; font-size: 19px; max-width: 100%; color: black; word-wrap: break-word !important; box-sizing: border-box !important;\">银行处处打压支付宝，为什么不去对付微信？</h1><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">这些年来移动支付异常火爆，传统银行步履维艰，而作为始作俑者的支付宝自然备受银行痛恨，不知道大家有没有发现，在支付宝被传统银行步步紧逼的当下，微信却能置身事外，一心一意谋发展，那么银行处处打压支付宝，为什么不去对付微信？让我们看看网友观点。</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\"><span class=\"bannerfix-wrapper\" style=\"display: block; width: auto; margin: 0.01rem 0px 0.01rem -0.15rem; text-align: center; position: relative; vertical-align: top; max-width: none !important; word-wrap: break-word !important; box-sizing: border-box !important;\"><img src=\"https://qqpublic.qpic.cn/qq_public/0/0-3218809462-62143D7DD0C7B27C13B3BF35797B10A7/900\" width=\"640\" height=\"auto\"/></span></p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">一叶岂可知秋：</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">支付宝一开始只是地位为钱包，属性是存钱、购物消费方便。从开始推出余额宝产品后，支付宝就不仅仅是个“支付工具，钱包”，为用户提供了理财服务。当支付宝开通交水电费、煤气、信用卡还款等等功能时，它的目标就和“钱包”无关，而是为广大用户提供另一种生活方式：不再去超时交电费，用支付宝；不再用老旧还款方式，用支付宝还信用卡。当支付宝链接商户和用户时，它又在影响人们的日常生活中的“购物”。支付宝链接用户和商家、链接用户和服务并没有引起大家的反感，归根结底是因为“利用支付宝还信用卡、交水电费比以往更方便”，为用户带来便利。而这是银行给银行卡的属性定位，这就导致广大用户对银行卡的依赖大大降低了，尤其是现在实行无现金社会，支付宝的便利就提现的更突出。而微信作为一个通讯工具，虽然也不满足于工具属性，其提供的理财通、链接用户与服务、用户与商户也在走支付宝的路线：大家都不满足于工具，而期望为用户提供一系列生活服务。而且微信支付如果想要完善更多的支付场景、生活服务，就不会一直依托于微信，但微信一开始进入用户心中的是通讯工具，那就很难超脱人们的品牌认知，后续一系列的金融服务会收到局限。微信的侧重点也是作为一个通讯工具。相比较来说支付宝对银行的威胁会大很多。</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\"><span class=\"bannerfix-wrapper\" style=\"display: block; width: auto; margin: 0.01rem 0px 0.01rem -0.15rem; text-align: center; position: relative; vertical-align: top; max-width: none !important; word-wrap: break-word !important; box-sizing: border-box !important;\"><img src=\"https://qqpublic.qpic.cn/qq_public/0/0-2527852992-24B09693804D2D7EC2E8128953A57B3E/900\" width=\"700\" height=\"auto\"/></span></p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">用户107235806：</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">支付宝是中国这个世纪最伟大发明！乔布斯是西方的神，马云是东方的神。乔布斯带领世界进入移动互联时代，马云带领世界进入移动互联经济时代，一个是全才，一个是鬼才，比尔.盖恣只服两个人，一个是乔布斯，一个是马云，预言马云会成全球第一个万亿富豪！支付宝是为一个无所不包的金融产品，移动支付是重中之重，过去银行认为支付是一件吃力不讨好的工作，没有油水可捞，马云去找建行合作，建行都不投资。</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">支付宝是二维码支付，银行是银联支付，二维码支付能得到消费清单，银联支付能得到消费金额，平常人不懂得消费清单的重要性，惯性思维没什么用。‘马云用反常人思维去思考问题，阿里有天量成交，这些大数据怎么变成钱？</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">马云投资云计算，2010年马化腾，李宏彦还嘲笑云计算是忽悠，没想到阿里云成功了。有了阿里云，阿里大数据就变成中国个人消费金额清单分布图，中国每个省每个市每个区每个人的消费图，可以给每个人每个商户每个小企业评分，有了评级。有了评级支付宝为每个人定制专享服务，为每个商户定制共享服务，为小企业定制产品服务，拿下淘宝后，再为天猫大企业定制分享经济！有了二维码移动支付才有中国的共享经济，滴滴打车，美团，共享单车，无人超市，盒马鲜生等等共享经济！共享经济是中国发明和独有的，代表了未来经济发展方向，是一种全新的模式，无人可挡！</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">微信虽然有二维码支付，可微信没有阿里的天量大数据，只能控股京东获取，而京东大额交易用户习惯用银行支付，京东又主要是自营，拿不到大数据，就不能用腾迅云计算，给人评级，所以危胁不到银行！马云说过支付宝只要三万人就可以取代银行百分八十业务，真不是吹的！支付宝用大数据评分，用云计算放贷，用网银服务，用苏宁银行吸储，完全可以取代银行！</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">银行能不怕吗？微信还不行，因为没大数据！</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\"><span class=\"bannerfix-wrapper\" style=\"display: block; width: auto; margin: 0.01rem 0px 0.01rem -0.15rem; text-align: center; position: relative; vertical-align: top; max-width: none !important; word-wrap: break-word !important; box-sizing: border-box !important;\"></span></p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">天天122685816：</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">因为支付宝太可怕了，如果不加监管的随意发展，很可能会颠覆中国金融。比如现在你去国外旅游买个东西，你可以用现金，或者刷卡，当然很多国家开始接入了支付宝。这里面就存在一个漏洞，如果这个东西是一个价值1美元的汉堡，你用1美元来购买，那么，这个叫做交易。但如果你用一千万美元去买，这就叫洗钱，或者叫资本转移。资本流出的途径本来是被人民银行监控着的，外国资金想要离境必须要在人民银行汇兑，由于全程被监控，所以非法收入是不能出境的。很多很在国内比如贪污受贿或者非法获得大量钱财，从正常渠道你也是无法带出去的。</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">现金不可能，一个人能携带的现金是有限的，基本上带个200万就背不动了，而且很多国家是有现金入境的上限的，所以现金转移资金不现实。第二种就是卡转，直接汇款应该不是立刻到账的，因为需要对你的操作进行核查，而一比非常大的转账一定会被监控，所以直接转账不现实。</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">那么可以通过购物来实现资金转移。不过如果用卡购买，也是有上限的，比如最近就有境外消费超过1000就要被关注还是什么的，就是为了防止这个，有人会说那多买几次就行了。如果你通过一个账户在同一个地方不停的进行消费，肯定会引起注意。所以支付宝就会成为一个具有可操作性的资本外逃的方式。因为支付宝转账和购物的结算是在阿里巴巴，所以如果他刻意开后门，那么资金很容易在逃的。毕竟一个国家的金融监管不可能放在一个私人企业的手里，所以国家统一监管是有必要的。</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">丰登街：</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">从线上到线下，从战略到投资，腾讯和阿里两家互联网巨头公司的竞争从未停止过，但与此同时，两者又都在各自的领域上称王。腾讯的微信和阿里的支付宝虽同为移动支付领域的佼佼者，但不少细心的市民发现，银行处处都在打压支付宝，反而对微信比较宽容，这是又为什么呢?</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\"><span class=\"bannerfix-wrapper\" style=\"display: block; width: auto; margin: 0.01rem 0px 0.01rem -0.15rem; text-align: center; position: relative; vertical-align: top; max-width: none !important; word-wrap: break-word !important; box-sizing: border-box !important;\"></span></p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">在余额宝出现之前，支付宝更多的被看作是一种电子钱包，其功能属性主要是存钱和电子支付，目的是为了抢占移动支付市场。</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">在2008年-2013年期间，支付宝陆续与银联、银行、社会保障局等机构合作，陆续推出各种金融理财服务，如信用卡支付、信用卡还款、公共事业缴费、保险理财产品等等。</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">这时候，支付宝的定位已不仅仅是一个电子钱包了，除了支付消费、转账结算等基本功能以外，支付宝还能用来消费、还款、查账单甚至是缴纳水电费，这基本就是银行给银行卡的属性定位。随着市民对于信用卡的依赖度降低，支付宝也开始影响到了银行的利益了。如果说余额宝的低成本、高收益的运营战略威胁到了银行存款，那么蚂蚁花呗和蚂蚁借呗的出现，则秒杀了银行贷款和其他线下金融公司。</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">根据加上马云曾说过“银行不改变，我们就改变银行”，考虑到超过4.5亿的支付宝实名用户，央行确实不得不防。支付宝虽然作为一家第三方支付机构，但是从用户消费结算的流程来看，支付宝似乎完全可以替代银联。众所周知，国内每张信用卡的消费都需要经过银联的清算，但如果通过支付宝或者微信支付，这些第三方支付机构能够完全替代银联，完成收单和清算的全套服务。</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\"><span class=\"bannerfix-wrapper\" style=\"display: block; width: auto; margin: 0.01rem 0px 0.01rem -0.15rem; text-align: center; position: relative; vertical-align: top; max-width: none !important; word-wrap: break-word !important; box-sizing: border-box !important;\"></span></p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">IT168企业级：</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">处处打压倒也谈不上，只是有所管制！</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">央行最新发文，号称“第三方支付版银联”的网联，将在2018年6月30日监管“收编”所有的第三方支付机构。支付宝、微信支付均在“收编”之列，届时所有网络支付业务全部通过网联平台处理。此次调整由央行牵头，主要出于用户资金安全考虑。据推测，由于网联可能会收取部分手续费，因此整合之后的各大移动支付平台恐会提高提现手续费。</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\"><span class=\"bannerfix-wrapper\" style=\"display: block; width: auto; margin: 0.01rem 0px 0.01rem -0.15rem; text-align: center; position: relative; vertical-align: top; max-width: none !important; word-wrap: break-word !important; box-sizing: border-box !important;\"></span>清请情感：</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">银行对付支付宝,是因为银行收入锐减,感觉到痛了,银联都没有刷卡收入了,今后2年,可以说银联边缘化,任何银行的不作为,都是成就了马云的支付宝,国外为啥没有支付宝,或者说移动支付,因为国外银行都比较竞争充分,服务好,所以人们并不需要移动支付来替代信用卡。</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">在美国如果信用卡掉了,因为美国信用卡不用密码,只有签字,你只要挂失,所有不是你消费的钱,银行都会包赔,而不用担心,而银行的损失会找被消费的企业求偿,因为签字是假的。</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">国内银行垄断,服务太差,收费太高,这是移动支付受大众欢迎的原因,用脚投票,没有银行的不作为就没有支付宝的今天。<span class=\"bannerfix-wrapper\" style=\"display: block; width: auto; margin: 0.01rem 0px 0.01rem -0.15rem; text-align: center; position: relative; vertical-align: top; max-width: none !important; word-wrap: break-word !important; box-sizing: border-box !important;\"><img src=\"https://qqpublic.qpic.cn/qq_public/0/0-3061613576-D71E583589C33C4F99D25F1D804BD86C/900\" height=\"auto\" width=\"420\"/></span></p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">丝丝小可乐：</p><p style=\"margin-top: 0.16rem; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; clear: both; line-height: 1.9; word-break: break-word; color: rgb(62, 62, 62); box-sizing: border-box !important;\">微信只是个支付工具，对外支付时才会从银行卡扣款，虽然会有资金沉淀，但是和他的市场规模挂钩，而且腾讯基本上不会对外发放收益，这和银行业务有着本质区别。而支付宝就完全不同了，他的主要目标在各种基金理财产品，和银行业务重合，但是他没有营业网点，不需要支付房租水电装修安防人员工资等等一系列成本，反倒是银行的营业点在免费为蚂蚁服务，很多人去银行存款，连大厅还没走出去就已经把钱转走了。这是银行永远无法竞争的痛点。而且，支付宝的规模远不止日常消费支付，如果大家都把钱提出来去买支付宝上面的各种基金产品，对于银行的打击几乎可以说是灭顶的，因为他没有上限，甚至于可以将银行的资金储备掏空。所以说，微信在银行的眼里只是小屁孩而已，但支付宝绝对是个无法战胜的对手，基因优势根本没有竞争的余地，唯一能够匹敌的，只有行政干预。</p></section></p><p></p><p class=\"wrap_btn_original\" style=\"margin-top: 0px; margin-bottom: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; overflow: hidden; font-size: 18px; line-height: 28.8px; white-space: normal; background-color: rgb(255, 255, 255);\"><a class=\"jubao\" style=\"color: rgb(187, 187, 187); float: right; font-size: 0.14rem; line-height: 0.22rem; margin: 0.2rem 0px 0px;\"><em style=\"display: inline-block; margin: 0px 0.02rem 0px 0px; position: relative; top: 0.04rem; width: 0.18rem; height: 0.18rem; background: url(&quot;widget/images/icon_dislike.png&quot;);\"></em></a></p><p><br/></p>', '0', '2017-09-18 11:49:18', '2017-09-18 11:49:18');
INSERT INTO `g_article` VALUES ('3', '他放弃580万年薪，拿月薪500元， 漂亮老婆很生气，如今身价近400亿', 'article', '1', '/uploads/images/article/iCyPkvDgYH67G5ourdbkZRAorpLUeZRiN5wP6BSt.jpeg', '<h1 style=\"margin: 0px; padding: 0px; font-weight: 400; font-size: 16px; max-width: 100%; color: rgb(62, 62, 62); font-family: -apple-system-font, &#39;Helvetica Neue&#39;, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, sans-serif; line-height: 25.6px; white-space: normal; box-sizing: border-box !important; word-wrap: break-word !important; background-color: rgb(255, 255, 255);\"><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 26.9474px; box-sizing: border-box !important; word-wrap: break-word !important; text-align: center;\"><img src=\"/ueditor/php/upload/image/20170918/1505706210620467.jpg\" title=\"1505706210620467.jpg\" alt=\"n08a00_p_02_02.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; font-family: 微软雅黑; line-height: 25.6px; text-align: center; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; font-size: 14px; line-height: 25.6px;\">蔡崇信——马云背后的男人</span></p><section><blockquote style=\"margin: 5px 0px; padding: 0px 0px 0px 10px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; border-left-width: 3px; border-left-style: solid; border-left-color: rgb(219, 219, 219); color: rgb(51, 51, 51); background-color: rgb(241, 241, 241);\"><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; font-size: 14px; line-height: 22.4px; color: rgb(0, 0, 0);\"></span><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">2015年福布斯华人富豪榜中，蔡崇信以<span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">59亿美元（376亿人民币）</strong></span><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">身价</span></strong>名列第38位。让人们津津乐道的是，蔡崇信当年竟<strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">放弃70万美元年薪</span></strong>（按当时汇率，折合人民币580万），带着怀孕的妻子投奔马云，<strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">拿月薪500元</strong>，他为什么这么做，又如何成就现在的身价的呢？</span><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; font-size: 14px; line-height: 22.4px; color: rgb(217, 33, 66);\"></span><br/></p></blockquote></section><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; line-height: 25.6px;\">1999年，蔡崇信赶赴杭州拜访马云，当时阿里巴巴还是一家鲜为人知的创业公司，其创始人马云同样名气不大。<span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(255, 41, 65); line-height: 25.6px;\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">此时的蔡崇信一直在香港工作，是瑞典投资公司Investor AB的高管。</strong></span></span></p></section></section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; font-family: 微软雅黑; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; line-height: 25.6px;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; line-height: 25.6px;\">然而，就是一次见面改变了蔡崇信整个人生轨迹，他竟然提出放弃一切（包括年薪70万美元），跟着马云一起干，月薪500元也没关系。甚至，他的家人，以及怀孕的妻子都强烈反对，他为什么要这么做呢？</span></span></p></section></section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; font-family: 微软雅黑; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; line-height: 25.6px;\">1999年5月，他和马云第一次见面。去之前，他的台湾朋友给他描述<span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; line-height: 25.6px;\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(255, 41, 65); line-height: 25.6px;\">马云&quot;这个人有点疯狂&quot;</span></strong></span>，当他去了之后，发现马云甚至还没有成立自己的公司。<span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(171, 25, 66); line-height: 25.6px;\">任何公司实体都不存在，只有一个上线刚刚几个月的网站——阿里巴巴。</span></span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\">他与马云见面的时候，就被马云的人格魅力深深吸引了。马云非常平易近人，还极有魅力，他一直都在谈论伟大的愿景。他们没有谈商业模式、盈利或者其他业务上的东西。<span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(255, 41, 65);\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">马云说，&quot;我们拥有这些数以百万计的工厂资源。我如何帮助这内地工厂接触到西方世界呢？&quot;</strong></span></p></section></section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; font-family: 微软雅黑; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; line-height: 25.6px;\">当时他觉得马云的创意——将这些公司推上线——够得上伟大，却不是什么惊天动地的想法。他很欣赏马云的个性，然而，真正打动他的地方，不仅仅是马云本人，而是马云与一群追随者患难与共的事实。</span><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; line-height: 25.6px;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; line-height: 25.6px;\">&nbsp; &nbsp; &nbsp;<br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\">蔡崇信：<strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(171, 25, 66);\">&quot;我想，这家伙有能力将一群人聚集在一起，是个有影响力的领导者。马云真的有能力做成一番事业。我是不是也该加入这个充满冒险精神的团队呢？&quot;。</span></strong>他告诉了马云这个想法，<strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(255, 41, 65);\">马云说，我只付得起500元的月薪。</span></strong>他说好，没问题。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; line-height: 25.6px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\">打定主意后，<span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(171, 25, 66);\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">蔡崇信决定辞掉年薪70万美元的工作</strong></span>，跟马云一起干。<span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(171, 25, 66);\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">然而，当时他的妻子克拉拉正处于怀孕阶段</strong></span>，一听说这个想法，就觉得自己的老公疯了，这么好的待遇不想干，却去一个不知道未来的小公司。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; line-height: 25.6px;\">&nbsp; &nbsp; &nbsp;&nbsp;<br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(171, 25, 66);\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">一听马云只付得起500元月薪，就连蔡崇信的老爸——蔡中曾（台湾知名律师）也连连摇头。</strong></span>不过，蔡崇信却坚定的辞职了，把家人气得够呛。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; line-height: 25.6px;\">&nbsp; &nbsp; &nbsp; &nbsp;<br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\">1999年，蔡崇信来到杭州再次找到马云，<span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(255, 41, 65);\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">这一次他还带着妻子克拉拉</strong></span>，希望说服她同意自己加入。</p></section></section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; font-family: 微软雅黑; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\">6月，马云对他说，&quot;崇信，请帮我组建公司吧。&quot;他答应了。他问马云哪些人将成为股东，马云给了他一个名单，<strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(255, 41, 65);\">几乎小屋里所有人都是股东，马云将很大一部分公司股权让给了创业团队，这让他很惊讶。因为，其他企业家会说：&quot;我想尽可能多持有股份，掌控公司。&quot;马云开放的胸怀，让蔡觉得自己跟对了人。</span></strong><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\">在杭州湿热的夏夜里，蔡崇信拿着一块小白板，挥汗如雨地向员工们讲述何为&quot;股份&quot;、&quot;股东权益&quot;，接着又帮<strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(255, 255, 255); background-color: rgb(0, 128, 255);\">&quot;十八罗汉&quot;</span></strong>拟出十八份完全符合国际惯例的股份合同，从这一刻开始，阿里巴巴这家&quot;公司&quot;，才有了最粗略的雏形。</p></section></section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; font-family: 微软雅黑; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; line-height: 25.6px;\">接下来，就是大家都知道的蔡崇信操盘的3次重要增资了：<span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; line-height: 25.6px; color: rgb(255, 41, 65);\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">2000年，蔡马二人前往日本软银在东京的办公室与孙正义谈判。</strong></span>蔡深谙谈判出价之道，一坐上谈判桌，马云即发挥独有的个人魅力，大谈阿里巴巴美丽前景，而蔡崇信虽然不多话，却在关键时刻，对孙正义前两次的出价勇敢说&quot;不&quot;。</span></p></section></section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; font-family: 微软雅黑; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; line-height: 25.6px; color: rgb(171, 25, 66);\">最终，孙正义点头答应拿出2000万美元，阿里巴巴凭借这次投资躲过了互联网的最寒冷的冬天。</span></strong><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; line-height: 25.6px;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(255, 41, 65);\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">2004年和2005年，蔡崇信再度替马云筹资8200万美元，并合并雅虎中国。</strong></span>这两次重要的翻身，不仅让阿里巴巴有充足的资源建构淘宝网，也让阿里巴巴坐稳今天中国第一大电子商务的宝座。</p></section></section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; font-family: 微软雅黑; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(255, 41, 65);\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">2014年，蔡崇信带领阿里巴巴在美国上市</strong></span>，他参与了IPO过程的各个环节，包括公司结构的设计以及承销商的选择。他不断打电话与摩根大通、高盛和摩根斯坦利进行沟通。<span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(255, 41, 65);\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">阿里巴巴创造了史上最大的IPO，蔡崇信持有的2.9%股份价值45亿美元。</strong></span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(192, 0, 0); font-family: Arial; font-size: 19px; line-height: 23px; background-color: rgba(255, 255, 255, 0.298039);\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(255, 0, 0);\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(227, 108, 9); font-family: 微软雅黑; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(62, 62, 62); line-height: 25.6px;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: red;\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; font-family: Simsun;\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; font-family: inherit; line-height: 25.6px; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; line-height: 25.6px; width: auto !important;\"></span></strong></strong></span></strong></strong></strong></span></strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\">2015年，蔡崇信以59亿美元名列福布斯全球富豪榜第248位，掌声与鲜花背后，很多人佩服他的眼光和能力，然而，却很少有人知道，面对当时家人、妻子的不理解，<span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(255, 41, 65);\">他曾经多么倔强的坚持。</span></strong></span></p></section></section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; font-family: 微软雅黑; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important; text-align: center;\"><img src=\"/ueditor/php/upload/image/20170918/1505706159993419.jpg\" title=\"1505706159993419.jpg\" alt=\"89391415784820.jpg\"/></p><section><section></section></section><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; text-align: center; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; line-height: 25.6px;\"></span></p></section></section></h1>', '0', '2017-09-18 11:37:49', '2017-09-18 11:44:06');

-- ----------------------------
-- Table structure for `g_auth`
-- ----------------------------
DROP TABLE IF EXISTS `g_auth`;
CREATE TABLE `g_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `idcard` varchar(20) DEFAULT NULL,
  `card_img_a` varchar(255) DEFAULT NULL,
  `card_img_b` varchar(255) DEFAULT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1未审核 2通过，3不通过',
  `msg` varchar(255) DEFAULT NULL,
  `user_img` varchar(255) DEFAULT NULL COMMENT '手持身份证照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of g_auth
-- ----------------------------
INSERT INTO `g_auth` VALUES ('1', '2017-11-30 08:33:55', '2017-12-01 12:47:26', '168', '陈锦章', '350623199208204896', '/uploads/images/auth/9dLjXL41JXyxEkoC1r24ERhIzQUZXwdMLPgxLA7e.jpeg', '/uploads/images/auth/701mVdot7TXmeJVFrKOTajiJfPXbc5fQIn70MiR5.jpeg', '2', null, '/uploads/images/auth/pmX3r1FICSyCEe629TmSGL1TGxlEheprzfyid9DY.jpeg');
INSERT INTO `g_auth` VALUES ('2', '2017-12-27 16:26:31', '2017-12-27 16:26:47', '204', '肖福花', '350524197002064586', '/uploads/images/auth/LfabWZ0uUoTbnwuH1KotGMwhwCsi2GQ0HiyuLR40.jpeg', '/uploads/images/auth/M9HKFdyaQKCS86ZuJtpWdskaxuZauBrODIhPCSUW.jpeg', '2', null, '/uploads/images/auth/V97U3aCe1lqNEB20fJJIGMyym7rNiIZsJ1wlHHzv.jpeg');
INSERT INTO `g_auth` VALUES ('3', '2017-12-28 13:54:08', '2017-12-28 13:55:04', '133', '张坤伟', '52212419720305081x', '/uploads/images/auth/WFKRDPEMroOZzCYHvH2pI2CdL95AQAlAPewXnURO.png', '/uploads/images/auth/UZ2bG110SHVI0OxUrK2G8xpTVCo6W2fbeMHWoYJJ.png', '2', null, '/uploads/images/auth/SbKjsTkKQxhG6SzKQr7hEQxbktJzrgiBxxMtkH22.png');
INSERT INTO `g_auth` VALUES ('4', '2017-12-28 16:57:51', '2017-12-28 16:58:06', '137', '罗承花', '350423198203045026', '/uploads/images/auth/hzKWXig4WCJeuJgvVo6y2SzrfhflWc2arXLAofAY.jpeg', '/uploads/images/auth/BYxhUWKb3FqSshAm6YNF3saMyGT64TwxU1G9Ms8C.jpeg', '2', null, '/uploads/images/auth/UZG2REB8yGTCy5upYj59YDfJyYo4cXna82RaFPQl.jpeg');
INSERT INTO `g_auth` VALUES ('5', '2017-12-30 17:23:13', '2017-12-30 17:24:47', '213', '李超', '51102419860920175X', '/uploads/images/auth/CVqcbISsR8JJFLxTgQWKXz9xJvqmbWvF7tyKNJ5E.png', '/uploads/images/auth/F2eB96MSaRpH4nJTHZsP5Z9aCvgeFMSEBLpwrWZ7.jpeg', '2', null, '/uploads/images/auth/ZB7kQgRZaNlF3LbmoHltvgY736WFZo7kNm01saH1.jpeg');
INSERT INTO `g_auth` VALUES ('6', '2018-01-01 14:25:53', '2018-01-01 18:59:00', '210', '肖丽婷', '350824199103093226', '/uploads/images/auth/Bw3maOLbgVTH7iTfiMyQcBnF2etPXA066wELhIqd.png', '/uploads/images/auth/rD9LJx6Tgatj9bmn1vheplZSBveTbWehLd315TGQ.png', '2', null, '/uploads/images/auth/WSX8APgHOm8Z2ATq49Jf7jYp9O2o7lT4A3bzisRI.png');
INSERT INTO `g_auth` VALUES ('7', '2018-01-03 14:13:10', '2018-01-03 14:47:42', '158', '胡进才', '350211197001134054', '/uploads/images/auth/iI15xxNWxGv3JkmgZl4em9n5HzwW0wmEz933saV5.jpeg', '/uploads/images/auth/FvDMOskXem0Oa7ChhhDTShKaxtweXC7RwdrJk10g.jpeg', '2', null, '/uploads/images/auth/WvY9skURuQDClOE4rRNsxCJ8f8MU3MnSPaAPj0tB.jpeg');
INSERT INTO `g_auth` VALUES ('8', '2018-01-03 14:52:22', '2018-01-03 14:53:00', '220', '李丽敏', '350622198701113049', '/uploads/images/auth/8QN7fWbrSZm4PWMBQg7NoUzTNRfWNGtj1EUSaw5k.jpeg', '/uploads/images/auth/Erzn0djZDAOfQDtrvKKS1Qeycr50G66NCgJuB0VH.jpeg', '2', null, '/uploads/images/auth/X4LuPfgOhPjiIQjXQPqDCFYRpOipreZQC45bYGRI.jpeg');
INSERT INTO `g_auth` VALUES ('9', '2018-01-28 19:30:59', '2018-01-28 23:48:23', '35', '林雪', '350104199301085418', '/uploads/images/auth/kIp6B96pXbEwaoa9p4x2qmO3cVwVHrhgGQxExpUM.jpeg', '/uploads/images/auth/kYZJzL5cLhbG0SuvTQnbZKDhKSjdygnXC7l7qCo8.jpeg', '3', '请上传清晰身份证照片！', '/uploads/images/auth/nMDhBcopQ1hh0fI9n7Pzm4atSXRX8QwnD01ivgqL.png');
INSERT INTO `g_auth` VALUES ('10', '2018-02-19 19:37:36', '2018-02-20 07:25:09', '173', '林琦耿', '220104197402160319', '/uploads/images/auth/eSIZa30vyNgjDHd7zEpYAL6HT0yyhrCTx6AGJ69m.jpeg', '/uploads/images/auth/6Ng3pKskTvq15wfVi1dEJPp1XKZqUdhbfLFlbe1A.jpeg', '2', null, '/uploads/images/auth/GuJl3NEhCZtwC9uFDFVyxmgsaSkPA3UWRZNIJ2BJ.jpeg');

-- ----------------------------
-- Table structure for `g_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `g_feedback`;
CREATE TABLE `g_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1024) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(50) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of g_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `g_page_statistic`
-- ----------------------------
DROP TABLE IF EXISTS `g_page_statistic`;
CREATE TABLE `g_page_statistic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '页面id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `ip_addr` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ip地址',
  `day` int(11) NOT NULL COMMENT '日期天，如20170102',
  `hour` tinyint(4) NOT NULL COMMENT '小时0-23',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of g_page_statistic
-- ----------------------------

-- ----------------------------
-- Table structure for `g_recharge`
-- ----------------------------
DROP TABLE IF EXISTS `g_recharge`;
CREATE TABLE `g_recharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `money` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(4) NOT NULL COMMENT '1充值中，2已付款，3失败',
  `order_no` varchar(30) NOT NULL,
  `out_trade_no` varchar(255) NOT NULL DEFAULT '',
  `pay_way` varchar(20) NOT NULL DEFAULT '0' COMMENT '支付宝',
  `pay_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of g_recharge
-- ----------------------------
INSERT INTO `g_recharge` VALUES ('1', '35', '20000000', '2018-08-12 18:04:05', '2018-08-12 18:04:05', '1', '2020180812180405590821080', '', 'testPay', '0000-00-00 00:00:00');
INSERT INTO `g_recharge` VALUES ('2', '35', '20000000', '2018-08-12 18:04:05', '2018-08-12 18:04:05', '1', '2020180812180405793676533', '', 'testPay', '0000-00-00 00:00:00');
INSERT INTO `g_recharge` VALUES ('3', '35', '20000000', '2018-08-12 18:04:06', '2018-08-12 18:04:06', '1', '2020180812180406598938825', '', 'testPay', '0000-00-00 00:00:00');
INSERT INTO `g_recharge` VALUES ('4', '35', '20000000', '2018-08-12 18:04:06', '2018-08-12 18:04:06', '1', '2020180812180406884924681', '', 'testPay', '0000-00-00 00:00:00');
INSERT INTO `g_recharge` VALUES ('5', '35', '20000000', '2018-08-12 18:04:07', '2018-08-12 18:04:07', '1', '2020180812180407162490458', '', 'testPay', '0000-00-00 00:00:00');
INSERT INTO `g_recharge` VALUES ('6', '35', '20000000', '2018-08-12 18:04:07', '2018-08-12 18:04:07', '1', '2020180812180407667671381', '', 'alipay', '0000-00-00 00:00:00');
INSERT INTO `g_recharge` VALUES ('7', '274', '500000', '2018-08-12 18:04:23', '2018-08-12 18:04:23', '2', '2020180812180423011901815', '', 'testPay', '2018-08-12 18:04:23');
INSERT INTO `g_recharge` VALUES ('8', '35', '20000000', '2018-08-12 18:04:24', '2018-08-12 18:04:24', '1', '2020180812180424770118475', '', 'testPay', '0000-00-00 00:00:00');
INSERT INTO `g_recharge` VALUES ('9', '35', '20000000', '2018-08-12 18:04:26', '2018-08-12 18:04:26', '1', '2020180812180426605378990', '', 'testPay', '0000-00-00 00:00:00');
INSERT INTO `g_recharge` VALUES ('10', '35', '20000000', '2018-08-12 18:04:26', '2018-08-12 18:04:26', '1', '2020180812180426788228223', '', 'testPay', '0000-00-00 00:00:00');
INSERT INTO `g_recharge` VALUES ('11', '35', '20000000', '2018-08-12 18:04:27', '2018-08-12 18:04:27', '1', '2020180812180427160367238', '', 'testPay', '0000-00-00 00:00:00');
INSERT INTO `g_recharge` VALUES ('12', '35', '20000000', '2018-08-12 18:04:27', '2018-08-12 18:04:27', '1', '2020180812180427363386617', '', 'testPay', '0000-00-00 00:00:00');
INSERT INTO `g_recharge` VALUES ('13', '35', '20000000', '2018-08-12 18:04:27', '2018-08-12 18:04:27', '1', '2020180812180427811522848', '', 'testPay', '0000-00-00 00:00:00');
INSERT INTO `g_recharge` VALUES ('14', '35', '20000000', '2018-08-12 18:04:28', '2018-08-12 18:04:28', '1', '2020180812180428126223455', '', 'testPay', '0000-00-00 00:00:00');
INSERT INTO `g_recharge` VALUES ('15', '35', '20000000', '2018-08-12 18:04:28', '2018-08-12 18:04:28', '1', '2020180812180428318128256', '', 'testPay', '0000-00-00 00:00:00');
INSERT INTO `g_recharge` VALUES ('16', '35', '20000000', '2018-08-12 18:04:28', '2018-08-12 18:04:28', '1', '2020180812180428719509780', '', 'testPay', '0000-00-00 00:00:00');
INSERT INTO `g_recharge` VALUES ('17', '35', '20000000', '2018-08-12 18:04:29', '2018-08-12 18:04:29', '1', '2020180812180429003671918', '', 'testPay', '0000-00-00 00:00:00');
INSERT INTO `g_recharge` VALUES ('18', '35', '20000000', '2018-08-12 18:04:32', '2018-08-12 18:04:32', '1', '2020180812180432283593595', '', 'wxpay', '0000-00-00 00:00:00');
INSERT INTO `g_recharge` VALUES ('19', '35', '20000000', '2018-08-12 18:04:37', '2018-08-12 18:04:37', '1', '2020180812180437158122374', '', 'wxpay', '0000-00-00 00:00:00');
INSERT INTO `g_recharge` VALUES ('20', '274', '500', '2018-08-12 18:06:56', '2018-08-12 18:06:57', '2', '2020180812180656986478933', '', 'testPay', '2018-08-12 18:06:57');
INSERT INTO `g_recharge` VALUES ('21', '28', '1000', '2018-08-14 15:00:08', '2018-08-14 15:00:08', '2', '2020180814150008685316025', '', 'testPay', '2018-08-14 15:00:08');
INSERT INTO `g_recharge` VALUES ('22', '28', '1000', '2018-08-14 15:03:08', '2018-08-14 15:03:08', '2', '2020180814150308299347837', '', 'testPay', '2018-08-14 15:03:08');
INSERT INTO `g_recharge` VALUES ('23', '35', '10000', '2018-08-15 22:43:06', '2018-08-15 22:43:06', '2', '2020180815224306581168890', '', 'testPay', '2018-08-15 22:43:06');
INSERT INTO `g_recharge` VALUES ('24', '35', '100000', '2018-08-15 22:43:16', '2018-08-15 22:43:16', '2', '2020180815224316678678227', '', 'testPay', '2018-08-15 22:43:16');

-- ----------------------------
-- Table structure for `g_setting`
-- ----------------------------
DROP TABLE IF EXISTS `g_setting`;
CREATE TABLE `g_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类型',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '值',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_id` int(11) DEFAULT '0',
  `group_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of g_setting
-- ----------------------------
INSERT INTO `g_setting` VALUES ('1', '等待秒数', 'common-wait', '1', '2018-07-03 16:25:15', '2018-07-03 16:25:15', '0', null);
INSERT INTO `g_setting` VALUES ('2', '抽成比例%', 'common-chou', '10', '2018-07-03 16:25:15', '2018-07-03 16:25:15', '0', null);
INSERT INTO `g_setting` VALUES ('3', '文字', 'other-wenzi', '默认文字', '2018-07-03 16:25:15', '2018-07-03 16:25:15', '0', null);
INSERT INTO `g_setting` VALUES ('4', '运费', 'other-delivery_fee', '8.00', '2018-07-03 16:25:15', '2018-07-03 16:25:15', '0', null);

-- ----------------------------
-- Table structure for `g_sms_record`
-- ----------------------------
DROP TABLE IF EXISTS `g_sms_record`;
CREATE TABLE `g_sms_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机号',
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '验证码',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '短信类型',
  `available` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否可用',
  `expired_at` int(11) NOT NULL DEFAULT '0' COMMENT '过期时间',
  `send_time` int(11) NOT NULL DEFAULT '0' COMMENT '发送时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sms_record_phone_index` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of g_sms_record
-- ----------------------------

-- ----------------------------
-- Table structure for `g_third_qq`
-- ----------------------------
DROP TABLE IF EXISTS `g_third_qq`;
CREATE TABLE `g_third_qq` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'openid',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
  `headerImg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '头像',
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '状态',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of g_third_qq
-- ----------------------------

-- ----------------------------
-- Table structure for `g_third_wechat`
-- ----------------------------
DROP TABLE IF EXISTS `g_third_wechat`;
CREATE TABLE `g_third_wechat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'openid',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
  `headerImg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '头像',
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '状态',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of g_third_wechat
-- ----------------------------

-- ----------------------------
-- Table structure for `g_third_weibo`
-- ----------------------------
DROP TABLE IF EXISTS `g_third_weibo`;
CREATE TABLE `g_third_weibo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'openid',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
  `headerImg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '头像',
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '状态',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of g_third_weibo
-- ----------------------------

-- ----------------------------
-- Table structure for `g_user_balance_log`
-- ----------------------------
DROP TABLE IF EXISTS `g_user_balance_log`;
CREATE TABLE `g_user_balance_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `type` tinyint(4) NOT NULL COMMENT '类型 1充值，2提现，3支付 , 4退款，5订单收入',
  `state` tinyint(4) NOT NULL COMMENT '状态1未确认，2已确认，3已取消',
  `money` int(11) NOT NULL COMMENT '金额（单位分）',
  `balance` int(11) NOT NULL COMMENT '当前余额',
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '详情',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_balance_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of g_user_balance_log
-- ----------------------------
INSERT INTO `g_user_balance_log` VALUES ('1', '28', '6', '2', '20000', '20000', '推荐高级会员奖励', '2018-08-14 15:41:23', '2018-08-14 15:41:23');
INSERT INTO `g_user_balance_log` VALUES ('2', '281', '6', '2', '600', '600', '推荐普通会员奖励', '2018-08-16 17:35:32', '2018-08-16 17:35:32');
INSERT INTO `g_user_balance_log` VALUES ('3', '274', '6', '2', '600', '600', '推荐普通会员奖励', '2018-08-16 17:35:32', '2018-08-16 17:35:32');
INSERT INTO `g_user_balance_log` VALUES ('4', '28', '6', '2', '300', '20300', '推荐普通会员奖励', '2018-08-16 17:35:32', '2018-08-16 17:35:32');
INSERT INTO `g_user_balance_log` VALUES ('5', '274', '6', '2', '20000', '20600', '推荐高级会员奖励', '2018-08-16 17:35:32', '2018-08-16 17:35:32');
INSERT INTO `g_user_balance_log` VALUES ('6', '28', '6', '2', '20000', '40300', '推荐高级会员奖励', '2018-08-16 17:35:32', '2018-08-16 17:35:32');
INSERT INTO `g_user_balance_log` VALUES ('7', '274', '2', '2', '-20600', '0', '申请提现', '2018-08-16 17:38:36', '2018-08-16 17:39:18');
INSERT INTO `g_user_balance_log` VALUES ('8', '28', '6', '2', '700', '41000', '推荐普通会员奖励', '2018-08-16 17:54:20', '2018-08-16 17:54:20');
INSERT INTO `g_user_balance_log` VALUES ('9', '275', '6', '2', '600', '600', '推荐普通会员奖励', '2018-08-16 18:09:20', '2018-08-16 18:09:20');
INSERT INTO `g_user_balance_log` VALUES ('10', '287', '6', '2', '200', '200', '推荐普通会员奖励', '2018-08-17 09:29:13', '2018-08-17 09:29:13');
INSERT INTO `g_user_balance_log` VALUES ('11', '275', '6', '2', '600', '1200', '推荐普通会员奖励', '2018-08-17 09:29:13', '2018-08-17 09:29:13');
INSERT INTO `g_user_balance_log` VALUES ('12', '288', '6', '2', '200', '200', '推荐普通会员奖励', '2018-08-17 09:32:44', '2018-08-17 09:32:44');
INSERT INTO `g_user_balance_log` VALUES ('13', '287', '6', '2', '200', '400', '推荐普通会员奖励', '2018-08-17 09:32:44', '2018-08-17 09:32:44');
INSERT INTO `g_user_balance_log` VALUES ('14', '275', '6', '2', '600', '1800', '推荐普通会员奖励', '2018-08-17 09:32:44', '2018-08-17 09:32:44');
INSERT INTO `g_user_balance_log` VALUES ('15', '289', '6', '2', '200', '200', '推荐普通会员奖励', '2018-08-17 09:36:57', '2018-08-17 09:36:57');
INSERT INTO `g_user_balance_log` VALUES ('16', '288', '6', '2', '200', '400', '推荐普通会员奖励', '2018-08-17 09:36:58', '2018-08-17 09:36:58');
INSERT INTO `g_user_balance_log` VALUES ('17', '287', '6', '2', '200', '600', '推荐普通会员奖励', '2018-08-17 09:36:58', '2018-08-17 09:36:58');
INSERT INTO `g_user_balance_log` VALUES ('18', '290', '6', '2', '200', '200', '推荐普通会员奖励', '2018-08-17 09:39:44', '2018-08-17 09:39:44');
INSERT INTO `g_user_balance_log` VALUES ('19', '289', '6', '2', '200', '400', '推荐普通会员奖励', '2018-08-17 09:39:44', '2018-08-17 09:39:44');
INSERT INTO `g_user_balance_log` VALUES ('20', '288', '6', '2', '200', '600', '推荐普通会员奖励', '2018-08-17 09:39:44', '2018-08-17 09:39:44');
INSERT INTO `g_user_balance_log` VALUES ('21', '291', '6', '2', '200', '200', '推荐普通会员奖励', '2018-08-17 10:04:19', '2018-08-17 10:04:19');
INSERT INTO `g_user_balance_log` VALUES ('22', '290', '6', '2', '200', '400', '推荐普通会员奖励', '2018-08-17 10:04:19', '2018-08-17 10:04:19');
INSERT INTO `g_user_balance_log` VALUES ('23', '289', '6', '2', '200', '600', '推荐普通会员奖励', '2018-08-17 10:04:20', '2018-08-17 10:04:20');
INSERT INTO `g_user_balance_log` VALUES ('24', '292', '6', '2', '200', '200', '推荐普通会员奖励', '2018-08-18 17:59:16', '2018-08-18 17:59:16');
INSERT INTO `g_user_balance_log` VALUES ('25', '291', '6', '2', '200', '400', '推荐普通会员奖励', '2018-08-18 17:59:16', '2018-08-18 17:59:16');
INSERT INTO `g_user_balance_log` VALUES ('26', '290', '6', '2', '200', '600', '推荐普通会员奖励', '2018-08-18 17:59:16', '2018-08-18 17:59:16');

-- ----------------------------
-- Table structure for `g_withdraw`
-- ----------------------------
DROP TABLE IF EXISTS `g_withdraw`;
CREATE TABLE `g_withdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `account` varchar(50) NOT NULL DEFAULT '' COMMENT '提现账号',
  `account_type` varchar(10) NOT NULL COMMENT '提现账号类型，zfb支付宝',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `idcard` varchar(50) NOT NULL DEFAULT '' COMMENT '身份证',
  `money` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(4) NOT NULL COMMENT '1申请中，2已付款，3审核失败',
  `msg` varchar(255) DEFAULT '' COMMENT '审核信息',
  `user_balance_log_id` int(11) NOT NULL DEFAULT '0' COMMENT '提现对应余额日志id',
  `zfb_out_trade_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of g_withdraw
-- ----------------------------
INSERT INTO `g_withdraw` VALUES ('1', '274', '15653259959', 'zfb', '韩金涛', '', '20600', '2018-08-16 17:38:36', '2018-08-16 17:39:18', '2', null, '7', '201808161739184716');

-- ----------------------------
-- Table structure for `jobs`
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=787 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2018_08_14_114921_create_jobs_table', '1');
INSERT INTO `migrations` VALUES ('2', '2018_08_14_160048_create_failed_jobs_table', '2');

-- ----------------------------
-- Table structure for `shop_order_common`
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_common`;
CREATE TABLE `shop_order_common` (
  `order_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `rec_name` varchar(20) NOT NULL DEFAULT '' COMMENT '收货人',
  `rec_mobile` varchar(20) NOT NULL DEFAULT '',
  `rec_province` int(11) NOT NULL DEFAULT '0',
  `rec_city` int(11) NOT NULL DEFAULT '0',
  `rec_area` int(11) NOT NULL DEFAULT '0',
  `rec_address` varchar(255) NOT NULL DEFAULT '',
  `rec_zip_code` varchar(8) NOT NULL DEFAULT '',
  `send_name` varchar(20) NOT NULL DEFAULT '' COMMENT '发货人',
  `send_mobile` varchar(20) NOT NULL DEFAULT '',
  `send_province` int(11) NOT NULL DEFAULT '0',
  `send_city` int(11) NOT NULL DEFAULT '0',
  `send_area` int(11) NOT NULL DEFAULT '0',
  `send_address` varchar(255) NOT NULL DEFAULT '',
  `send_zip_code` varchar(8) NOT NULL DEFAULT '',
  `remark` varchar(512) NOT NULL DEFAULT '' COMMENT '卖家备注',
  `buyer_msg` varchar(512) NOT NULL DEFAULT '' COMMENT '买家留言',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单其他信息表';

-- ----------------------------
-- Records of shop_order_common
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_goods`;
CREATE TABLE `shop_order_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `goods_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '商品名称',
  `sku_id` int(11) NOT NULL COMMENT '规格id',
  `sku_info` varchar(255) NOT NULL DEFAULT '' COMMENT '规格信息',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '商品图片',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '商品数量',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT '商品重量',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '售价',
  `real_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '成交价',
  `cost_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '成本价',
  `sale_way` tinyint(4) NOT NULL DEFAULT '1' COMMENT '销售方式 1正常销售',
  `return_id` int(11) NOT NULL DEFAULT '0' COMMENT '退货退款id',
  `comment_id` int(11) NOT NULL DEFAULT '0' COMMENT '评论id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单商品表';

-- ----------------------------
-- Records of shop_order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_order_log`
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_log`;
CREATE TABLE `shop_order_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL COMMENT '店铺id',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '内容',
  `operator` tinyint(11) NOT NULL DEFAULT '0' COMMENT '操作人，1系统，2商家，3买家',
  `type` tinyint(4) DEFAULT NULL COMMENT '操作类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单日志';

-- ----------------------------
-- Records of shop_order_log
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_order_package`
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_package`;
CREATE TABLE `shop_order_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `order_products` varchar(1024) NOT NULL DEFAULT '' COMMENT '包裹中订单商品集合(序列化)key=product_id,value=product_num',
  `delivery_company` varchar(50) NOT NULL DEFAULT '' COMMENT '物流公司',
  `delivery_code` varchar(50) NOT NULL DEFAULT '' COMMENT '物流单号',
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '包裹状态 0未发货，4已发货，8已收货',
  `add_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单发货包裹';

-- ----------------------------
-- Records of shop_order_package
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `nickname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '头像',
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机号',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `source` tinyint(4) NOT NULL DEFAULT '1' COMMENT '注册来源 1网站 2微博,3QQ,4微信',
  `qq` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'qq openid',
  `weibo` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '微博 openid',
  `wechat` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '微信 openid',
  `score` int(11) NOT NULL DEFAULT '1000' COMMENT '积分',
  `balance` int(11) NOT NULL DEFAULT '0' COMMENT '账户余额',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Token',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth` tinyint(4) NOT NULL DEFAULT '1' COMMENT '实名认证，1未审核 2通过，3不通过',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `sex` tinyint(4) NOT NULL DEFAULT '0' COMMENT '保密，1男，2女',
  `clientid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '推送id',
  `ios` tinyint(4) DEFAULT NULL COMMENT '是否ios系统',
  `pay_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '支付密码',
  `login_time` int(11) NOT NULL DEFAULT '0',
  `recom_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级id',
  `recom_id2` int(11) NOT NULL DEFAULT '0' COMMENT '上上级id',
  `recom_id3` int(11) NOT NULL DEFAULT '0' COMMENT '上上上级id',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_tel_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('28', '', '所以', '/uploads/images/avatar/JNaG0xvOKGZj4NHxGAzoiWewhmF8reYtvlNwEuLU.jpeg', '15280086731', '', '$2y$10$lXptGzpN7g91bT6BQGnkfOfkLo39YHdwXYlGGUNMmO0Ro4nLOCbsa', '1', '', '', '', '4995010', '41000', '2d61aab03cfea2b575379224a608e322', null, '2018-08-16 17:54:20', '1', '0', '1', 'c638b1949823aa92c50ae38622fa1541', '0', '1', '1521989191', '0', '0', '0', 'fb9937297ee985511ee6f96f59383029', '3');
INSERT INTO `users` VALUES ('29', '', '感受', '', '15280086730', '', '$2y$10$8Hy3j/X37pWiuEzwMg/eNeGYGc9gqKz.N8jVDavCdAnzllBidkkZK', '1', '', '', '', '0', '0', 'e1ce35d0ee3ab7f2966ef7f7ea2663ec', null, '2018-02-20 07:26:19', '1', '0', '1', 'e0f5419f7060b5a770d4bcda482030ac', '1', '', '1517059723', '0', '0', '0', '', '0');
INSERT INTO `users` VALUES ('35', '呵呵', '这里也很', '/uploads/images/avatar/IuV03ltssaQcbxuQnxfQQMrpVDArkXEGzKa0rqLY.jpeg', '15280086732', '', '$2y$10$hZN3hKHcSkwYBZzN.ssieeA43WkeOUE116r5VCMgZpib6/60GsTxy', '1', '', '', '', '325921', '0', 'e0c92c5bc2337fd60b41f58d2d9f5814', null, '2018-08-18 23:12:25', '1', '0', '2', 'e0f5419f7060b5a770d4bcda482030ac', '1', '123123', '1525270319', '0', '0', '0', '6f710a592e3d6b077b317b77a013a521', '1');
INSERT INTO `users` VALUES ('198', '', '诺兰', '/uploads/images/avatar/QVWb51Xcz1dM0HwB7UIucpQZdq7eGMbb3AwcJSMT.jpeg', '18450000119', '', '$2y$10$Zo/0xqyE9i8OQB5craxIi.LyA0OxKDCW3EyC3BcZeSQdNS1DNyAUW', '1', '', '', '', '0', '0', '413804e5a9d2c24e11c225b8678ae168', '2017-12-26 17:52:22', '2018-08-08 12:47:22', '1', '0', '2', 'aa4b0d1db8335aa401be7809d8e47b5e', '1', '', '1522943855', '0', '0', '0', '533e50305d6639df59fdd1b5daa5600e', '0');
INSERT INTO `users` VALUES ('274', '', '一级下线', '', '15280086001', '', '$2y$10$o64zGxpzMhGWs5cWHojfh.izEk2QH.95E9MZLuyWuKm0roQJjEygi', '1', '', '', '', '204480', '0', null, '2018-08-12 17:22:25', '2018-08-16 17:38:36', '1', '0', '1', null, null, '1', '0', '28', '0', '0', '204379ab56fb0b862a5c187c73befecb', '2');
INSERT INTO `users` VALUES ('275', '', '0', '/uploads/images/avatar/h1gOKzCYTa8JcqbBzrqt0I8KFgvTcUkE5xL1CrXK.jpeg', 'admin', '', '$2y$10$2B/y9FejiEkUYxwjg50Gt.g/9LaPB.mo90J0nxuUmdzsbF2P3pPnW', '1', '', '', '', '208950', '1800', null, '2018-08-15 15:09:37', '2018-08-18 18:11:20', '1', '0', '1', null, null, '1', '0', '0', '0', '0', '6150cd5f0c8966c2900fc8e99efce39d', '2');
INSERT INTO `users` VALUES ('276', '', '1', '', '13111111111', '', '$2y$10$lfxJb5Jp2TGdtctNhD164OF8bK9vqtOG8Nr5yMaYQ51IWi9y83Pva', '1', '', '', '', '1000', '0', null, '2018-08-16 11:22:16', '2018-08-16 11:25:23', '1', '0', '1', null, null, '2', '0', '0', '0', '0', '5710e3dfc5d9e3c8ccb05c1ab5c73f85', '0');
INSERT INTO `users` VALUES ('277', '', '1.1', '', '13121111111', '', '$2y$10$sUWMjfkGc3kiD0d05OwjvOdFYgbTb.v7I38vw493Q4jmiNZEqJ0oe', '1', '', '', '', '1000', '0', null, '2018-08-16 11:39:40', '2018-08-16 11:39:53', '1', '0', '1', null, null, '', '0', '0', '0', '0', '527529751880d19979473b4583ffef2e', '0');
INSERT INTO `users` VALUES ('278', '', '哈罗', '', '13560694521', '', '$2y$10$9OKSvVackXkcdnggvnhRy.npkwIY8w6xFVoaCgxXdkfe8xXkP4QE.', '1', '', '', '', '1000', '0', null, '2018-08-16 11:58:07', '2018-08-16 11:58:07', '1', '0', '1', null, null, '', '0', '0', '0', '0', 'f9c99fc2cdf635033a4c5c082cb9bdbe', '0');
INSERT INTO `users` VALUES ('279', '', '哈罗', '', '13560694558', '', '$2y$10$rp0FRQFnDXjSSagFGa0tweGmfVViKrNhWb8u13O4IXX6BO1P/baha', '1', '', '', '', '1000', '0', null, '2018-08-16 11:58:18', '2018-08-16 11:58:18', '1', '0', '1', null, null, '', '0', '0', '0', '0', 'e3949c179605e2e8cb624696a585486e', '0');
INSERT INTO `users` VALUES ('280', '', '哈罗', '', '13588462391', '', '$2y$10$Yu9VpKWjyUwqq85aHd8MVe8y8c0ygF4CpBClqEXpR5n0UoA5jsMH6', '1', '', '', '', '1000', '0', null, '2018-08-16 11:58:37', '2018-08-16 11:58:37', '1', '0', '1', null, null, '', '0', '0', '0', '0', '08b11ea2fc7993de9c07907c4b303222', '0');
INSERT INTO `users` VALUES ('281', '', '1.11', '/uploads/images/avatar/j1PUc6P4h4FgI2YpuyVVCPnya68xLMTwUz9s00Oz.jpeg', '15000000001', '', '$2y$10$pXDOmDrScSIRiWsCT2vUNuedYgxlqtD9RyGg.aWllyLNQanijpsqG', '1', '', '', '', '212940', '600', null, '2018-08-16 12:39:00', '2018-08-16 17:35:32', '1', '0', '1', null, null, '123456', '0', '274', '28', '0', '9fb99d27e2252ff3ac8f2b136ae4670b', '2');
INSERT INTO `users` VALUES ('282', '', '1.11', '', '15000000002', '', '$2y$10$msGMN07URFTtz5BcTUVZ5eHT0QQO1qEQThIiKZn/5MR3zTMy0lZGS', '1', '', '', '', '1000', '0', null, '2018-08-16 12:39:43', '2018-08-16 12:39:50', '1', '0', '1', null, null, '', '0', '0', '0', '0', '009d2ff59e083db1f3a053a7df1f3d33', '0');
INSERT INTO `users` VALUES ('283', '', '123', '', '15000000003', '', '$2y$10$qSt4baJQEX1P1tp2TtXR0uEnxIxEwpiIyIyxlnMoIxdRyvbGTuRDy', '1', '', '', '', '4980', '0', null, '2018-08-16 15:36:18', '2018-08-16 15:37:53', '1', '0', '1', null, null, '', '0', '281', '274', '28', 'ea723b8fa4bf71231babfc820456bf58', '1');
INSERT INTO `users` VALUES ('284', '', '常常', '', '15280086100', '', '$2y$10$iHQH2pI60vUulkL8UYVd9OpHI/h/jILbIHx4ShsgBUiXPJAsC3C9m', '1', '', '', '', '16920', '0', null, '2018-08-16 17:44:27', '2018-08-16 17:55:54', '1', '0', '1', null, null, '', '0', '28', '0', '0', '1fac7f22f8a2b9e079104e9fa65574f3', '0');
INSERT INTO `users` VALUES ('285', '', '我们', '', '15280086101', '', '$2y$10$qpB2AEkBM0OkKQK2AHVjpOYibAzU0aXm74F4rokfBl.x9XIQYNzmW', '1', '', '', '', '1000', '0', null, '2018-08-16 17:49:11', '2018-08-16 17:49:11', '1', '0', '1', null, null, '', '0', '28', '0', '0', 'cb53b86aad7605be2e1dba34d63a432b', '0');
INSERT INTO `users` VALUES ('286', '', '我是真的', '/uploads/images/avatar/ZRVlm1oc2GDS5EsxkXiGJ7RkhxwVL2UPBcufergE.jpeg', '15280086102', '', '$2y$10$KKZBDuc7fe6ePFOyO3TS6uHuNV8OlYhYDDK5PKTzln5vEboWD9mua', '1', '', '', '', '4980', '0', null, '2018-08-16 17:52:56', '2018-08-16 17:54:19', '1', '0', '1', null, null, '', '0', '28', '0', '0', '1b7ef03b8f237575d404ff09688c0122', '1');
INSERT INTO `users` VALUES ('287', '', '1234', '', '15000000004', '', '$2y$10$.w3ek0wIgaia6eRYiDb9Xuk.GrzHgAXgXBJ.Pwg04ATp8ZPKxd.Im', '1', '', '', '', '26860', '600', null, '2018-08-16 18:08:06', '2018-08-18 17:09:54', '1', '0', '1', null, null, '1', '0', '275', '0', '0', '5ee95d4d1843dcb45a7d4e669abbe4a7', '1');
INSERT INTO `users` VALUES ('288', '', '12345', '', '15000000005', '', '$2y$10$oVNbsMfz.eCYToH1nbc/3.Je9xEsDdGl0ytI8gfr8BgcqopX.0DF2', '1', '', '', '', '8960', '600', null, '2018-08-17 09:28:28', '2018-08-17 18:20:45', '1', '0', '1', null, null, '', '0', '287', '275', '0', '360b02628fbca544009098ff9a286774', '1');
INSERT INTO `users` VALUES ('289', '', '123456', '/uploads/images/avatar/aas0D9DTaihS588LcbGvpVhzquR7TugzL6ewTAuc.png', '15000000006', '', '$2y$10$TQxOxawGxU3bJnLeWsZpU.YFOKiNNwgpII4JYRYO9MNBq8mWd6fRC', '1', '', '', '', '-5020', '600', null, '2018-08-17 09:31:54', '2018-08-17 17:23:33', '1', '0', '1', null, null, '1', '0', '288', '287', '275', '33c765749a13b6b3491e26d1493fe9b4', '1');
INSERT INTO `users` VALUES ('290', '', '7', '', '15000000007', '', '$2y$10$8YtikRN42Mg3j0ir7yeyeujoqbUykZCo4BskdpV/GEEv5Yp.IpwUe', '1', '', '', '', '4980', '600', null, '2018-08-17 09:35:40', '2018-08-18 17:59:16', '1', '0', '1', null, null, '', '0', '289', '288', '287', '25b396864861f5414cbe22295f552108', '1');
INSERT INTO `users` VALUES ('291', '', '8', '', '15000000008', '', '$2y$10$PihjuizGhXUycMH2cmvonewmuYg4Eg8iXI4uuqq.RjAld.aRH4NNu', '1', '', '', '', '4980', '400', null, '2018-08-17 09:38:19', '2018-08-18 17:59:16', '1', '0', '1', null, null, '', '0', '290', '289', '288', 'b2716368869f17c47bcd74966c469853', '1');
INSERT INTO `users` VALUES ('292', '', '9', '', '15000000009', '', '$2y$10$b1iAlfWSaqpirl0Bw7uHQ.fdCJ/R14mc85qaITvsxVXqrF/HnDRze', '1', '', '', '', '4980', '200', null, '2018-08-17 09:42:41', '2018-08-26 18:15:19', '1', '0', '1', null, null, '', '0', '291', '290', '289', '0bcce071da95bd0cbadd10e530a432f6', '1');
INSERT INTO `users` VALUES ('293', '', '10', '', '15000000010', '', '$2y$10$tfAJN142tpkKVRr7Guqs6uDn.FGUadw2KvOefWRtK7ld3xLuPxSii', '1', '', '', '', '24880', '0', null, '2018-08-18 17:15:27', '2018-08-18 18:20:49', '1', '0', '1', null, null, '', '0', '292', '291', '290', '8f2cbe64a931c57e8e5a4c7094822804', '1');
INSERT INTO `users` VALUES ('294', '', '11', '', '15000000011', '', '$2y$10$E8fv1qzyax1kTtt7yohKtO0kc.7FkoDyYLaLIA9FqmE2B6p21WYfy', '1', '', '', '', '1000', '0', null, '2018-08-18 18:27:50', '2018-08-26 18:15:04', '1', '0', '1', null, null, '', '0', '293', '292', '291', 'e6877920824dc7fa4a1cf4ca43358dfa', '0');

-- ----------------------------
-- Table structure for `z_area`
-- ----------------------------
DROP TABLE IF EXISTS `z_area`;
CREATE TABLE `z_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地区名',
  `full_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地区全名',
  `parent_code` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '上级省市区编码',
  `code` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '省市区编码',
  `code1` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '省编码',
  `code2` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '市编码',
  `code3` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '区编码',
  `level` tinyint(4) NOT NULL COMMENT '级别，省1，市2，区3',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pinyin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pre_pinyin` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3512 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of z_area
-- ----------------------------
INSERT INTO `z_area` VALUES ('1', '北京', '北京', '', '110000', '11', '00', '00', '1', '2017-05-11 01:45:11', '2017-08-28 14:21:29', 'beijing', 'b');
INSERT INTO `z_area` VALUES ('2', '北京市', '北京 北京市', '110000', '110100', '11', '01', '00', '2', '2017-05-11 01:45:11', '2018-08-16 14:17:40', 'beijingshi', 'b');
INSERT INTO `z_area` VALUES ('3', '东城区', '北京 北京市 东城区', '110100', '110101', '11', '01', '01', '3', '2017-05-11 01:45:12', '2018-08-17 14:26:31', 'dongchengqu', 'd');
INSERT INTO `z_area` VALUES ('4', '西城区', '北京 北京市 西城区', '110100', '110102', '11', '01', '02', '3', '2017-05-11 01:45:12', '2018-08-17 14:26:31', 'xichengqu', 'x');
INSERT INTO `z_area` VALUES ('5', '朝阳区', '北京 北京市 朝阳区', '110100', '110105', '11', '01', '05', '3', '2017-05-11 01:45:12', '2018-08-17 14:26:31', 'chaoyangqu', 'c');
INSERT INTO `z_area` VALUES ('6', '丰台区', '北京 北京市 丰台区', '110100', '110106', '11', '01', '06', '3', '2017-05-11 01:45:12', '2018-08-17 14:26:31', 'fengtaiqu', 'f');
INSERT INTO `z_area` VALUES ('7', '石景山区', '北京 北京市 石景山区', '110100', '110107', '11', '01', '07', '3', '2017-05-11 01:45:12', '2018-08-17 14:26:31', 'shijingshanqu', 's');
INSERT INTO `z_area` VALUES ('8', '海淀区', '北京 北京市 海淀区', '110100', '110108', '11', '01', '08', '3', '2017-05-11 01:45:12', '2018-08-17 14:26:32', 'haidianqu', 'h');
INSERT INTO `z_area` VALUES ('9', '门头沟区', '北京 北京市 门头沟区', '110100', '110109', '11', '01', '09', '3', '2017-05-11 01:45:12', '2018-08-17 14:26:32', 'mentougouqu', 'm');
INSERT INTO `z_area` VALUES ('10', '房山区', '北京 北京市 房山区', '110100', '110111', '11', '01', '11', '3', '2017-05-11 01:45:13', '2018-08-17 14:26:32', 'fangshanqu', 'f');
INSERT INTO `z_area` VALUES ('11', '通州区', '北京 北京市 通州区', '110100', '110112', '11', '01', '12', '3', '2017-05-11 01:45:13', '2018-08-17 14:26:32', 'tongzhouqu', 't');
INSERT INTO `z_area` VALUES ('12', '顺义区', '北京 北京市 顺义区', '110100', '110113', '11', '01', '13', '3', '2017-05-11 01:45:13', '2018-08-17 14:26:32', 'shunyiqu', 's');
INSERT INTO `z_area` VALUES ('13', '昌平区', '北京 北京市 昌平区', '110100', '110114', '11', '01', '14', '3', '2017-05-11 01:45:13', '2018-08-17 14:26:32', 'changpingqu', 'c');
INSERT INTO `z_area` VALUES ('14', '大兴区', '北京 北京市 大兴区', '110100', '110115', '11', '01', '15', '3', '2017-05-11 01:45:13', '2018-08-17 14:26:32', 'daxingqu', 'd');
INSERT INTO `z_area` VALUES ('15', '怀柔区', '北京 北京市 怀柔区', '110100', '110116', '11', '01', '16', '3', '2017-05-11 01:45:13', '2018-08-17 14:26:32', 'huairouqu', 'h');
INSERT INTO `z_area` VALUES ('16', '平谷区', '北京 北京市 平谷区', '110100', '110117', '11', '01', '17', '3', '2017-05-11 01:45:14', '2018-08-17 14:26:33', 'pingguqu', 'p');
INSERT INTO `z_area` VALUES ('17', '密云县', '北京 北京市 密云县', '110100', '110128', '11', '01', '28', '3', '2017-05-11 01:45:14', '2018-08-17 14:26:33', 'miyunxian', 'm');
INSERT INTO `z_area` VALUES ('18', '延庆县', '北京 北京市 延庆县', '110100', '110129', '11', '01', '29', '3', '2017-05-11 01:45:14', '2018-08-17 14:26:33', 'yanqingxian', 'y');
INSERT INTO `z_area` VALUES ('19', '天津', '天津', '', '120000', '12', '00', '00', '1', '2017-05-11 01:45:14', '2017-08-28 14:21:30', 'tianjin', 't');
INSERT INTO `z_area` VALUES ('20', '天津市', '天津 天津市', '120000', '120100', '12', '01', '00', '2', '2017-05-11 01:45:14', '2018-08-16 14:17:43', 'tianjinshi', 't');
INSERT INTO `z_area` VALUES ('21', '和平区', '天津 天津市 和平区', '120100', '120101', '12', '01', '01', '3', '2017-05-11 01:45:14', '2018-08-17 14:26:33', 'hepingqu', 'h');
INSERT INTO `z_area` VALUES ('22', '河东区', '天津 天津市 河东区', '120100', '120102', '12', '01', '02', '3', '2017-05-11 01:45:14', '2018-08-17 14:26:33', 'hedongqu', 'h');
INSERT INTO `z_area` VALUES ('23', '河西区', '天津 天津市 河西区', '120100', '120103', '12', '01', '03', '3', '2017-05-11 01:45:14', '2018-08-17 14:26:33', 'hexiqu', 'h');
INSERT INTO `z_area` VALUES ('24', '南开区', '天津 天津市 南开区', '120100', '120104', '12', '01', '04', '3', '2017-05-11 01:45:15', '2018-08-17 14:26:33', 'nankaiqu', 'n');
INSERT INTO `z_area` VALUES ('25', '河北区', '天津 天津市 河北区', '120100', '120105', '12', '01', '05', '3', '2017-05-11 01:45:15', '2018-08-17 14:26:34', 'hebeiqu', 'h');
INSERT INTO `z_area` VALUES ('26', '红桥区', '天津 天津市 红桥区', '120100', '120106', '12', '01', '06', '3', '2017-05-11 01:45:15', '2018-08-17 14:26:34', 'hongqiaoqu', 'h');
INSERT INTO `z_area` VALUES ('27', '东丽区', '天津 天津市 东丽区', '120100', '120110', '12', '01', '10', '3', '2017-05-11 01:45:15', '2018-08-17 14:26:34', 'dongliqu', 'd');
INSERT INTO `z_area` VALUES ('28', '西青区', '天津 天津市 西青区', '120100', '120111', '12', '01', '11', '3', '2017-05-11 01:45:15', '2018-08-17 14:26:34', 'xiqingqu', 'x');
INSERT INTO `z_area` VALUES ('29', '津南区', '天津 天津市 津南区', '120100', '120112', '12', '01', '12', '3', '2017-05-11 01:45:15', '2018-08-17 14:26:34', 'jinnanqu', 'j');
INSERT INTO `z_area` VALUES ('30', '北辰区', '天津 天津市 北辰区', '120100', '120113', '12', '01', '13', '3', '2017-05-11 01:45:16', '2018-08-17 14:26:34', 'beichenqu', 'b');
INSERT INTO `z_area` VALUES ('31', '武清区', '天津 天津市 武清区', '120100', '120114', '12', '01', '14', '3', '2017-05-11 01:45:16', '2018-08-17 14:26:35', 'wuqingqu', 'w');
INSERT INTO `z_area` VALUES ('32', '宝坻区', '天津 天津市 宝坻区', '120100', '120115', '12', '01', '15', '3', '2017-05-11 01:45:16', '2018-08-17 14:26:35', 'baodiqu', 'b');
INSERT INTO `z_area` VALUES ('33', '滨海新区', '天津 天津市 滨海新区', '120100', '120116', '12', '01', '16', '3', '2017-05-11 01:45:16', '2018-08-17 14:26:35', 'binhaixinqu', 'b');
INSERT INTO `z_area` VALUES ('34', '宁河区', '天津 天津市 宁河区', '120100', '120117', '12', '01', '17', '3', '2017-05-11 01:45:16', '2018-08-17 14:26:35', 'ninghequ', 'n');
INSERT INTO `z_area` VALUES ('35', '静海区', '天津 天津市 静海区', '120100', '120118', '12', '01', '18', '3', '2017-05-11 01:45:16', '2018-08-17 14:26:35', 'jinghaiqu', 'j');
INSERT INTO `z_area` VALUES ('36', '蓟县', '天津 天津市 蓟县', '120100', '120125', '12', '01', '25', '3', '2017-05-11 01:45:17', '2018-08-17 14:26:35', 'jixian', 'j');
INSERT INTO `z_area` VALUES ('37', '河北省', '河北省', '', '130000', '13', '00', '00', '1', '2017-05-11 01:45:17', '2017-08-28 14:21:32', 'hebeisheng', 'h');
INSERT INTO `z_area` VALUES ('38', '石家庄', '河北省 石家庄', '130000', '130100', '13', '01', '00', '2', '2017-05-11 01:45:17', '2018-08-16 14:17:45', 'shijiazhuang', 's');
INSERT INTO `z_area` VALUES ('39', '石家庄市', '河北省 石家庄 石家庄市', '130100', '130101', '13', '01', '01', '3', '2017-05-11 01:45:17', '2018-08-17 14:26:35', 'shijiazhuangshi', 's');
INSERT INTO `z_area` VALUES ('40', '长安区', '河北省 石家庄 长安区', '130100', '130102', '13', '01', '02', '3', '2017-05-11 01:45:17', '2018-08-17 14:26:35', 'changanqu', 'c');
INSERT INTO `z_area` VALUES ('41', '桥西区', '河北省 石家庄 桥西区', '130100', '130104', '13', '01', '04', '3', '2017-05-11 01:45:17', '2018-08-17 14:26:36', 'qiaoxiqu', 'q');
INSERT INTO `z_area` VALUES ('42', '新华区', '河北省 石家庄 新华区', '130100', '130105', '13', '01', '05', '3', '2017-05-11 01:45:17', '2018-08-17 14:26:36', 'xinhuaqu', 'x');
INSERT INTO `z_area` VALUES ('43', '井陉矿区', '河北省 石家庄 井陉矿区', '130100', '130107', '13', '01', '07', '3', '2017-05-11 01:45:17', '2018-08-17 14:26:36', 'jingxingkuangqu', 'j');
INSERT INTO `z_area` VALUES ('44', '裕华区', '河北省 石家庄 裕华区', '130100', '130108', '13', '01', '08', '3', '2017-05-11 01:45:18', '2018-08-17 14:26:36', 'yuhuaqu', 'y');
INSERT INTO `z_area` VALUES ('45', '藁城区', '河北省 石家庄 藁城区', '130100', '130109', '13', '01', '09', '3', '2017-05-11 01:45:18', '2018-08-17 14:26:36', 'gaochengqu', 'g');
INSERT INTO `z_area` VALUES ('46', '鹿泉区', '河北省 石家庄 鹿泉区', '130100', '130110', '13', '01', '10', '3', '2017-05-11 01:45:18', '2018-08-17 14:26:36', 'luquanqu', 'l');
INSERT INTO `z_area` VALUES ('47', '栾城区', '河北省 石家庄 栾城区', '130100', '130111', '13', '01', '11', '3', '2017-05-11 01:45:18', '2018-08-17 14:26:36', 'luanchengqu', 'l');
INSERT INTO `z_area` VALUES ('48', '井陉县', '河北省 石家庄 井陉县', '130100', '130121', '13', '01', '21', '3', '2017-05-11 01:45:18', '2018-08-17 14:26:37', 'jingxingxian', 'j');
INSERT INTO `z_area` VALUES ('49', '正定县', '河北省 石家庄 正定县', '130100', '130123', '13', '01', '23', '3', '2017-05-11 01:45:18', '2018-08-17 14:26:37', 'zhengdingxian', 'z');
INSERT INTO `z_area` VALUES ('50', '行唐县', '河北省 石家庄 行唐县', '130100', '130125', '13', '01', '25', '3', '2017-05-11 01:45:18', '2018-08-17 14:26:37', 'xingtangxian', 'x');
INSERT INTO `z_area` VALUES ('51', '灵寿县', '河北省 石家庄 灵寿县', '130100', '130126', '13', '01', '26', '3', '2017-05-11 01:45:19', '2018-08-17 14:26:37', 'lingshouxian', 'l');
INSERT INTO `z_area` VALUES ('52', '高邑县', '河北省 石家庄 高邑县', '130100', '130127', '13', '01', '27', '3', '2017-05-11 01:45:19', '2018-08-17 14:26:37', 'gaoyixian', 'g');
INSERT INTO `z_area` VALUES ('53', '深泽县', '河北省 石家庄 深泽县', '130100', '130128', '13', '01', '28', '3', '2017-05-11 01:45:19', '2018-08-17 14:26:37', 'shenzexian', 's');
INSERT INTO `z_area` VALUES ('54', '赞皇县', '河北省 石家庄 赞皇县', '130100', '130129', '13', '01', '29', '3', '2017-05-11 01:45:19', '2018-08-17 14:26:38', 'zanhuangxian', 'z');
INSERT INTO `z_area` VALUES ('55', '无极县', '河北省 石家庄 无极县', '130100', '130130', '13', '01', '30', '3', '2017-05-11 01:45:19', '2018-08-17 14:26:38', 'wujixian', 'w');
INSERT INTO `z_area` VALUES ('56', '平山县', '河北省 石家庄 平山县', '130100', '130131', '13', '01', '31', '3', '2017-05-11 01:45:19', '2018-08-17 14:26:38', 'pingshanxian', 'p');
INSERT INTO `z_area` VALUES ('57', '元氏县', '河北省 石家庄 元氏县', '130100', '130132', '13', '01', '32', '3', '2017-05-11 01:45:20', '2018-08-17 14:26:38', 'yuanshixian', 'y');
INSERT INTO `z_area` VALUES ('58', '赵县', '河北省 石家庄 赵县', '130100', '130133', '13', '01', '33', '3', '2017-05-11 01:45:20', '2018-08-17 14:26:38', 'zhaoxian', 'z');
INSERT INTO `z_area` VALUES ('59', '晋州市', '河北省 石家庄 晋州市', '130100', '130183', '13', '01', '83', '3', '2017-05-11 01:45:20', '2018-08-17 14:26:38', 'jinzhoushi', 'j');
INSERT INTO `z_area` VALUES ('60', '新乐市', '河北省 石家庄 新乐市', '130100', '130184', '13', '01', '84', '3', '2017-05-11 01:45:20', '2018-08-17 14:26:38', 'xinleshi', 'x');
INSERT INTO `z_area` VALUES ('61', '唐山', '河北省 唐山', '130000', '130200', '13', '02', '00', '2', '2017-05-11 01:45:20', '2018-08-16 14:17:48', 'tangshan', 't');
INSERT INTO `z_area` VALUES ('62', '唐山市', '河北省 唐山 唐山市', '130200', '130201', '13', '02', '01', '3', '2017-05-11 01:45:20', '2018-08-17 14:26:39', 'tangshanshi', 't');
INSERT INTO `z_area` VALUES ('63', '路南区', '河北省 唐山 路南区', '130200', '130202', '13', '02', '02', '3', '2017-05-11 01:45:20', '2018-08-17 14:26:39', 'lunanqu', 'l');
INSERT INTO `z_area` VALUES ('64', '路北区', '河北省 唐山 路北区', '130200', '130203', '13', '02', '03', '3', '2017-05-11 01:45:21', '2018-08-17 14:26:39', 'lubeiqu', 'l');
INSERT INTO `z_area` VALUES ('65', '古冶区', '河北省 唐山 古冶区', '130200', '130204', '13', '02', '04', '3', '2017-05-11 01:45:21', '2018-08-17 14:26:39', 'guyequ', 'g');
INSERT INTO `z_area` VALUES ('66', '开平区', '河北省 唐山 开平区', '130200', '130205', '13', '02', '05', '3', '2017-05-11 01:45:21', '2018-08-17 14:26:39', 'kaipingqu', 'k');
INSERT INTO `z_area` VALUES ('67', '丰南区', '河北省 唐山 丰南区', '130200', '130207', '13', '02', '07', '3', '2017-05-11 01:45:21', '2018-08-17 14:26:39', 'fengnanqu', 'f');
INSERT INTO `z_area` VALUES ('68', '丰润区', '河北省 唐山 丰润区', '130200', '130208', '13', '02', '08', '3', '2017-05-11 01:45:21', '2018-08-17 14:26:39', 'fengrunqu', 'f');
INSERT INTO `z_area` VALUES ('69', '曹妃甸区', '河北省 唐山 曹妃甸区', '130200', '130209', '13', '02', '09', '3', '2017-05-11 01:45:21', '2018-08-17 14:26:40', 'caofeidianqu', 'c');
INSERT INTO `z_area` VALUES ('70', '滦县', '河北省 唐山 滦县', '130200', '130223', '13', '02', '23', '3', '2017-05-11 01:45:22', '2018-08-17 14:26:40', 'luanxian', 'l');
INSERT INTO `z_area` VALUES ('71', '滦南县', '河北省 唐山 滦南县', '130200', '130224', '13', '02', '24', '3', '2017-05-11 01:45:22', '2018-08-17 14:26:40', 'luannanxian', 'l');
INSERT INTO `z_area` VALUES ('72', '乐亭县', '河北省 唐山 乐亭县', '130200', '130225', '13', '02', '25', '3', '2017-05-11 01:45:22', '2018-08-17 14:26:40', 'letingxian', 'l');
INSERT INTO `z_area` VALUES ('73', '迁西县', '河北省 唐山 迁西县', '130200', '130227', '13', '02', '27', '3', '2017-05-11 01:45:22', '2018-08-17 14:26:40', 'qianxixian', 'q');
INSERT INTO `z_area` VALUES ('74', '玉田县', '河北省 唐山 玉田县', '130200', '130229', '13', '02', '29', '3', '2017-05-11 01:45:22', '2018-08-17 14:26:40', 'yutianxian', 'y');
INSERT INTO `z_area` VALUES ('75', '遵化市', '河北省 唐山 遵化市', '130200', '130281', '13', '02', '81', '3', '2017-05-11 01:45:22', '2018-08-17 14:26:40', 'zunhuashi', 'z');
INSERT INTO `z_area` VALUES ('76', '迁安市', '河北省 唐山 迁安市', '130200', '130283', '13', '02', '83', '3', '2017-05-11 01:45:22', '2018-08-17 14:26:41', 'qiananshi', 'q');
INSERT INTO `z_area` VALUES ('77', '秦皇岛', '河北省 秦皇岛', '130000', '130300', '13', '03', '00', '2', '2017-05-11 01:45:23', '2018-08-16 14:17:50', 'qinhuangdao', 'q');
INSERT INTO `z_area` VALUES ('78', '秦皇岛市', '河北省 秦皇岛 秦皇岛市', '130300', '130301', '13', '03', '01', '3', '2017-05-11 01:45:23', '2018-08-17 14:26:41', 'qinhuangdaoshi', 'q');
INSERT INTO `z_area` VALUES ('79', '海港区', '河北省 秦皇岛 海港区', '130300', '130302', '13', '03', '02', '3', '2017-05-11 01:45:23', '2018-08-17 14:26:41', 'haigangqu', 'h');
INSERT INTO `z_area` VALUES ('80', '山海关区', '河北省 秦皇岛 山海关区', '130300', '130303', '13', '03', '03', '3', '2017-05-11 01:45:23', '2018-08-17 14:26:41', 'shanhaiguanqu', 's');
INSERT INTO `z_area` VALUES ('81', '北戴河区', '河北省 秦皇岛 北戴河区', '130300', '130304', '13', '03', '04', '3', '2017-05-11 01:45:23', '2018-08-17 14:26:41', 'beidaihequ', 'b');
INSERT INTO `z_area` VALUES ('82', '抚宁区', '河北省 秦皇岛 抚宁区', '130300', '130306', '13', '03', '06', '3', '2017-05-11 01:45:23', '2018-08-17 14:26:41', 'funingqu', 'f');
INSERT INTO `z_area` VALUES ('83', '青龙满族自治县', '河北省 秦皇岛 青龙满族自治县', '130300', '130321', '13', '03', '21', '3', '2017-05-11 01:45:24', '2018-08-17 14:26:41', 'qinglongmanzuzizhixian', 'q');
INSERT INTO `z_area` VALUES ('84', '昌黎县', '河北省 秦皇岛 昌黎县', '130300', '130322', '13', '03', '22', '3', '2017-05-11 01:45:24', '2018-08-17 14:26:42', 'changlixian', 'c');
INSERT INTO `z_area` VALUES ('85', '卢龙县', '河北省 秦皇岛 卢龙县', '130300', '130324', '13', '03', '24', '3', '2017-05-11 01:45:24', '2018-08-17 14:26:42', 'lulongxian', 'l');
INSERT INTO `z_area` VALUES ('86', '邯郸', '河北省 邯郸', '130000', '130400', '13', '04', '00', '2', '2017-05-11 01:45:24', '2018-08-16 14:17:51', 'handan', 'h');
INSERT INTO `z_area` VALUES ('87', '邯郸市', '河北省 邯郸 邯郸市', '130400', '130401', '13', '04', '01', '3', '2017-05-11 01:45:24', '2018-08-17 14:26:42', 'handanshi', 'h');
INSERT INTO `z_area` VALUES ('88', '邯山区', '河北省 邯郸 邯山区', '130400', '130402', '13', '04', '02', '3', '2017-05-11 01:45:24', '2018-08-17 14:26:42', 'hanshanqu', 'h');
INSERT INTO `z_area` VALUES ('89', '丛台区', '河北省 邯郸 丛台区', '130400', '130403', '13', '04', '03', '3', '2017-05-11 01:45:24', '2018-08-17 14:26:42', 'congtaiqu', 'c');
INSERT INTO `z_area` VALUES ('90', '复兴区', '河北省 邯郸 复兴区', '130400', '130404', '13', '04', '04', '3', '2017-05-11 01:45:25', '2018-08-17 14:26:42', 'fuxingqu', 'f');
INSERT INTO `z_area` VALUES ('91', '峰峰矿区', '河北省 邯郸 峰峰矿区', '130400', '130406', '13', '04', '06', '3', '2017-05-11 01:45:25', '2018-08-17 14:26:42', 'fengfengkuangqu', 'f');
INSERT INTO `z_area` VALUES ('92', '邯郸县', '河北省 邯郸 邯郸县', '130400', '130421', '13', '04', '21', '3', '2017-05-11 01:45:25', '2018-08-17 14:26:42', 'handanxian', 'h');
INSERT INTO `z_area` VALUES ('93', '临漳县', '河北省 邯郸 临漳县', '130400', '130423', '13', '04', '23', '3', '2017-05-11 01:45:25', '2018-08-17 14:26:43', 'linzhangxian', 'l');
INSERT INTO `z_area` VALUES ('94', '成安县', '河北省 邯郸 成安县', '130400', '130424', '13', '04', '24', '3', '2017-05-11 01:45:25', '2018-08-17 14:26:43', 'chenganxian', 'c');
INSERT INTO `z_area` VALUES ('95', '大名县', '河北省 邯郸 大名县', '130400', '130425', '13', '04', '25', '3', '2017-05-11 01:45:25', '2018-08-17 14:26:43', 'damingxian', 'd');
INSERT INTO `z_area` VALUES ('96', '涉县', '河北省 邯郸 涉县', '130400', '130426', '13', '04', '26', '3', '2017-05-11 01:45:26', '2018-08-17 14:26:43', 'shexian', 's');
INSERT INTO `z_area` VALUES ('97', '磁县', '河北省 邯郸 磁县', '130400', '130427', '13', '04', '27', '3', '2017-05-11 01:45:26', '2018-08-17 14:26:43', 'cixian', 'c');
INSERT INTO `z_area` VALUES ('98', '肥乡县', '河北省 邯郸 肥乡县', '130400', '130428', '13', '04', '28', '3', '2017-05-11 01:45:26', '2018-08-17 14:26:43', 'feixiangxian', 'f');
INSERT INTO `z_area` VALUES ('99', '永年县', '河北省 邯郸 永年县', '130400', '130429', '13', '04', '29', '3', '2017-05-11 01:45:26', '2018-08-17 14:26:43', 'yongnianxian', 'y');
INSERT INTO `z_area` VALUES ('100', '邱县', '河北省 邯郸 邱县', '130400', '130430', '13', '04', '30', '3', '2017-05-11 01:45:26', '2018-08-17 14:26:44', 'qiuxian', 'q');
INSERT INTO `z_area` VALUES ('101', '鸡泽县', '河北省 邯郸 鸡泽县', '130400', '130431', '13', '04', '31', '3', '2017-05-11 01:45:26', '2018-08-17 14:26:44', 'jizexian', 'j');
INSERT INTO `z_area` VALUES ('102', '广平县', '河北省 邯郸 广平县', '130400', '130432', '13', '04', '32', '3', '2017-05-11 01:45:26', '2018-08-17 14:26:44', 'guangpingxian', 'g');
INSERT INTO `z_area` VALUES ('103', '馆陶县', '河北省 邯郸 馆陶县', '130400', '130433', '13', '04', '33', '3', '2017-05-11 01:45:27', '2018-08-17 14:26:44', 'guantaoxian', 'g');
INSERT INTO `z_area` VALUES ('104', '魏县', '河北省 邯郸 魏县', '130400', '130434', '13', '04', '34', '3', '2017-05-11 01:45:27', '2018-08-17 14:26:44', 'weixian', 'w');
INSERT INTO `z_area` VALUES ('105', '曲周县', '河北省 邯郸 曲周县', '130400', '130435', '13', '04', '35', '3', '2017-05-11 01:45:27', '2018-08-17 14:26:44', 'quzhouxian', 'q');
INSERT INTO `z_area` VALUES ('106', '武安市', '河北省 邯郸 武安市', '130400', '130481', '13', '04', '81', '3', '2017-05-11 01:45:27', '2018-08-17 14:26:44', 'wuanshi', 'w');
INSERT INTO `z_area` VALUES ('107', '邢台', '河北省 邢台', '130000', '130500', '13', '05', '00', '2', '2017-05-11 01:45:27', '2018-08-16 14:17:54', 'xingtai', 'x');
INSERT INTO `z_area` VALUES ('108', '邢台市', '河北省 邢台 邢台市', '130500', '130501', '13', '05', '01', '3', '2017-05-11 01:45:27', '2018-08-17 14:26:44', 'xingtaishi', 'x');
INSERT INTO `z_area` VALUES ('109', '桥东区', '河北省 邢台 桥东区', '130500', '130502', '13', '05', '02', '3', '2017-05-11 01:45:27', '2018-08-17 14:26:45', 'qiaodongqu', 'q');
INSERT INTO `z_area` VALUES ('110', '桥西区', '河北省 邢台 桥西区', '130500', '130503', '13', '05', '03', '3', '2017-05-11 01:45:28', '2018-08-17 14:26:45', 'qiaoxiqu', 'q');
INSERT INTO `z_area` VALUES ('111', '邢台县', '河北省 邢台 邢台县', '130500', '130521', '13', '05', '21', '3', '2017-05-11 01:45:28', '2018-08-17 14:26:45', 'xingtaixian', 'x');
INSERT INTO `z_area` VALUES ('112', '临城县', '河北省 邢台 临城县', '130500', '130522', '13', '05', '22', '3', '2017-05-11 01:45:28', '2018-08-17 14:26:45', 'linchengxian', 'l');
INSERT INTO `z_area` VALUES ('113', '内丘县', '河北省 邢台 内丘县', '130500', '130523', '13', '05', '23', '3', '2017-05-11 01:45:28', '2018-08-17 14:26:45', 'naqiuxian', 'n');
INSERT INTO `z_area` VALUES ('114', '柏乡县', '河北省 邢台 柏乡县', '130500', '130524', '13', '05', '24', '3', '2017-05-11 01:45:28', '2018-08-17 14:26:45', 'baixiangxian', 'b');
INSERT INTO `z_area` VALUES ('115', '隆尧县', '河北省 邢台 隆尧县', '130500', '130525', '13', '05', '25', '3', '2017-05-11 01:45:28', '2018-08-17 14:26:45', 'longyaoxian', 'l');
INSERT INTO `z_area` VALUES ('116', '任县', '河北省 邢台 任县', '130500', '130526', '13', '05', '26', '3', '2017-05-11 01:45:29', '2018-08-17 14:26:45', 'renxian', 'r');
INSERT INTO `z_area` VALUES ('117', '南和县', '河北省 邢台 南和县', '130500', '130527', '13', '05', '27', '3', '2017-05-11 01:45:29', '2018-08-17 14:26:46', 'nanhexian', 'n');
INSERT INTO `z_area` VALUES ('118', '宁晋县', '河北省 邢台 宁晋县', '130500', '130528', '13', '05', '28', '3', '2017-05-11 01:45:29', '2018-08-17 14:26:46', 'ningjinxian', 'n');
INSERT INTO `z_area` VALUES ('119', '巨鹿县', '河北省 邢台 巨鹿县', '130500', '130529', '13', '05', '29', '3', '2017-05-11 01:45:29', '2018-08-17 14:26:46', 'juluxian', 'j');
INSERT INTO `z_area` VALUES ('120', '新河县', '河北省 邢台 新河县', '130500', '130530', '13', '05', '30', '3', '2017-05-11 01:45:29', '2018-08-17 14:26:46', 'xinhexian', 'x');
INSERT INTO `z_area` VALUES ('121', '广宗县', '河北省 邢台 广宗县', '130500', '130531', '13', '05', '31', '3', '2017-05-11 01:45:29', '2018-08-17 14:26:46', 'guangzongxian', 'g');
INSERT INTO `z_area` VALUES ('122', '平乡县', '河北省 邢台 平乡县', '130500', '130532', '13', '05', '32', '3', '2017-05-11 01:45:30', '2018-08-17 14:26:46', 'pingxiangxian', 'p');
INSERT INTO `z_area` VALUES ('123', '威县', '河北省 邢台 威县', '130500', '130533', '13', '05', '33', '3', '2017-05-11 01:45:30', '2018-08-17 14:26:46', 'weixian', 'w');
INSERT INTO `z_area` VALUES ('124', '清河县', '河北省 邢台 清河县', '130500', '130534', '13', '05', '34', '3', '2017-05-11 01:45:30', '2018-08-17 14:26:47', 'qinghexian', 'q');
INSERT INTO `z_area` VALUES ('125', '临西县', '河北省 邢台 临西县', '130500', '130535', '13', '05', '35', '3', '2017-05-11 01:45:30', '2018-08-17 14:26:47', 'linxixian', 'l');
INSERT INTO `z_area` VALUES ('126', '南宫市', '河北省 邢台 南宫市', '130500', '130581', '13', '05', '81', '3', '2017-05-11 01:45:30', '2018-08-17 14:26:47', 'nangongshi', 'n');
INSERT INTO `z_area` VALUES ('127', '沙河市', '河北省 邢台 沙河市', '130500', '130582', '13', '05', '82', '3', '2017-05-11 01:45:30', '2018-08-17 14:26:47', 'shaheshi', 's');
INSERT INTO `z_area` VALUES ('128', '保定', '河北省 保定', '130000', '130600', '13', '06', '00', '2', '2017-05-11 01:45:30', '2018-08-16 14:17:57', 'baoding', 'b');
INSERT INTO `z_area` VALUES ('129', '保定市', '河北省 保定 保定市', '130600', '130601', '13', '06', '01', '3', '2017-05-11 01:45:31', '2018-08-17 14:26:47', 'baodingshi', 'b');
INSERT INTO `z_area` VALUES ('130', '竞秀区', '河北省 保定 竞秀区', '130600', '130602', '13', '06', '02', '3', '2017-05-11 01:45:31', '2018-08-17 14:26:47', 'jingxiuqu', 'j');
INSERT INTO `z_area` VALUES ('131', '莲池区', '河北省 保定 莲池区', '130600', '130606', '13', '06', '06', '3', '2017-05-11 01:45:31', '2018-08-17 14:26:48', 'lianchiqu', 'l');
INSERT INTO `z_area` VALUES ('132', '满城区', '河北省 保定 满城区', '130600', '130607', '13', '06', '07', '3', '2017-05-11 01:45:31', '2018-08-17 14:26:48', 'manchengqu', 'm');
INSERT INTO `z_area` VALUES ('133', '清苑区', '河北省 保定 清苑区', '130600', '130608', '13', '06', '08', '3', '2017-05-11 01:45:31', '2018-08-17 14:26:48', 'qingyuanqu', 'q');
INSERT INTO `z_area` VALUES ('134', '徐水区', '河北省 保定 徐水区', '130600', '130609', '13', '06', '09', '3', '2017-05-11 01:45:31', '2018-08-17 14:26:48', 'xushuiqu', 'x');
INSERT INTO `z_area` VALUES ('135', '涞水县', '河北省 保定 涞水县', '130600', '130623', '13', '06', '23', '3', '2017-05-11 01:45:31', '2018-08-17 14:26:48', 'laishuixian', 'l');
INSERT INTO `z_area` VALUES ('136', '阜平县', '河北省 保定 阜平县', '130600', '130624', '13', '06', '24', '3', '2017-05-11 01:45:32', '2018-08-17 14:26:48', 'fupingxian', 'f');
INSERT INTO `z_area` VALUES ('137', '定兴县', '河北省 保定 定兴县', '130600', '130626', '13', '06', '26', '3', '2017-05-11 01:45:32', '2018-08-17 14:26:49', 'dingxingxian', 'd');
INSERT INTO `z_area` VALUES ('138', '唐县', '河北省 保定 唐县', '130600', '130627', '13', '06', '27', '3', '2017-05-11 01:45:32', '2018-08-17 14:26:49', 'tangxian', 't');
INSERT INTO `z_area` VALUES ('139', '高阳县', '河北省 保定 高阳县', '130600', '130628', '13', '06', '28', '3', '2017-05-11 01:45:32', '2018-08-17 14:26:49', 'gaoyangxian', 'g');
INSERT INTO `z_area` VALUES ('140', '容城县', '河北省 保定 容城县', '130600', '130629', '13', '06', '29', '3', '2017-05-11 01:45:32', '2018-08-17 14:26:49', 'rongchengxian', 'r');
INSERT INTO `z_area` VALUES ('141', '涞源县', '河北省 保定 涞源县', '130600', '130630', '13', '06', '30', '3', '2017-05-11 01:45:32', '2018-08-17 14:26:49', 'laiyuanxian', 'l');
INSERT INTO `z_area` VALUES ('142', '望都县', '河北省 保定 望都县', '130600', '130631', '13', '06', '31', '3', '2017-05-11 01:45:33', '2018-08-17 14:26:49', 'wangdouxian', 'w');
INSERT INTO `z_area` VALUES ('143', '安新县', '河北省 保定 安新县', '130600', '130632', '13', '06', '32', '3', '2017-05-11 01:45:33', '2018-08-17 14:26:49', 'anxinxian', 'a');
INSERT INTO `z_area` VALUES ('144', '易县', '河北省 保定 易县', '130600', '130633', '13', '06', '33', '3', '2017-05-11 01:45:33', '2018-08-17 14:26:50', 'yixian', 'y');
INSERT INTO `z_area` VALUES ('145', '曲阳县', '河北省 保定 曲阳县', '130600', '130634', '13', '06', '34', '3', '2017-05-11 01:45:33', '2018-08-17 14:26:50', 'quyangxian', 'q');
INSERT INTO `z_area` VALUES ('146', '蠡县', '河北省 保定 蠡县', '130600', '130635', '13', '06', '35', '3', '2017-05-11 01:45:33', '2018-08-17 14:26:50', 'lixian', 'l');
INSERT INTO `z_area` VALUES ('147', '顺平县', '河北省 保定 顺平县', '130600', '130636', '13', '06', '36', '3', '2017-05-11 01:45:33', '2018-08-17 14:26:50', 'shunpingxian', 's');
INSERT INTO `z_area` VALUES ('148', '博野县', '河北省 保定 博野县', '130600', '130637', '13', '06', '37', '3', '2017-05-11 01:45:33', '2018-08-17 14:26:50', 'boyexian', 'b');
INSERT INTO `z_area` VALUES ('149', '雄县', '河北省 保定 雄县', '130600', '130638', '13', '06', '38', '3', '2017-05-11 01:45:34', '2018-08-17 14:26:50', 'xiongxian', 'x');
INSERT INTO `z_area` VALUES ('150', '涿州市', '河北省 保定 涿州市', '130600', '130681', '13', '06', '81', '3', '2017-05-11 01:45:34', '2018-08-17 14:26:51', 'zhuozhoushi', 'z');
INSERT INTO `z_area` VALUES ('151', '安国市', '河北省 保定 安国市', '130600', '130683', '13', '06', '83', '3', '2017-05-11 01:45:34', '2018-08-17 14:26:51', 'anguoshi', 'a');
INSERT INTO `z_area` VALUES ('152', '高碑店市', '河北省 保定 高碑店市', '130600', '130684', '13', '06', '84', '3', '2017-05-11 01:45:34', '2018-08-17 14:26:51', 'gaobeidianshi', 'g');
INSERT INTO `z_area` VALUES ('153', '张家口', '河北省 张家口', '130000', '130700', '13', '07', '00', '2', '2017-05-11 01:45:34', '2018-08-16 14:18:00', 'zhangjiakou', 'z');
INSERT INTO `z_area` VALUES ('154', '张家口市', '河北省 张家口 张家口市', '130700', '130701', '13', '07', '01', '3', '2017-05-11 01:45:34', '2018-08-17 14:26:51', 'zhangjiakoushi', 'z');
INSERT INTO `z_area` VALUES ('155', '桥东区', '河北省 张家口 桥东区', '130700', '130702', '13', '07', '02', '3', '2017-05-11 01:45:34', '2018-08-17 14:26:51', 'qiaodongqu', 'q');
INSERT INTO `z_area` VALUES ('156', '桥西区', '河北省 张家口 桥西区', '130700', '130703', '13', '07', '03', '3', '2017-05-11 01:45:35', '2018-08-17 14:26:51', 'qiaoxiqu', 'q');
INSERT INTO `z_area` VALUES ('157', '宣化区', '河北省 张家口 宣化区', '130700', '130705', '13', '07', '05', '3', '2017-05-11 01:45:35', '2018-08-17 14:26:51', 'xuanhuaqu', 'x');
INSERT INTO `z_area` VALUES ('158', '下花园区', '河北省 张家口 下花园区', '130700', '130706', '13', '07', '06', '3', '2017-05-11 01:45:35', '2018-08-17 14:26:51', 'xiahuayuanqu', 'x');
INSERT INTO `z_area` VALUES ('159', '宣化县', '河北省 张家口 宣化县', '130700', '130721', '13', '07', '21', '3', '2017-05-11 01:45:35', '2018-08-17 14:26:52', 'xuanhuaxian', 'x');
INSERT INTO `z_area` VALUES ('160', '张北县', '河北省 张家口 张北县', '130700', '130722', '13', '07', '22', '3', '2017-05-11 01:45:35', '2018-08-17 14:26:52', 'zhangbeixian', 'z');
INSERT INTO `z_area` VALUES ('161', '康保县', '河北省 张家口 康保县', '130700', '130723', '13', '07', '23', '3', '2017-05-11 01:45:36', '2018-08-17 14:26:52', 'kangbaoxian', 'k');
INSERT INTO `z_area` VALUES ('162', '沽源县', '河北省 张家口 沽源县', '130700', '130724', '13', '07', '24', '3', '2017-05-11 01:45:36', '2018-08-17 14:26:52', 'guyuanxian', 'g');
INSERT INTO `z_area` VALUES ('163', '尚义县', '河北省 张家口 尚义县', '130700', '130725', '13', '07', '25', '3', '2017-05-11 01:45:36', '2018-08-17 14:26:52', 'shangyixian', 's');
INSERT INTO `z_area` VALUES ('164', '蔚县', '河北省 张家口 蔚县', '130700', '130726', '13', '07', '26', '3', '2017-05-11 01:45:36', '2018-08-17 14:26:52', 'weixian', 'w');
INSERT INTO `z_area` VALUES ('165', '阳原县', '河北省 张家口 阳原县', '130700', '130727', '13', '07', '27', '3', '2017-05-11 01:45:36', '2018-08-17 14:26:52', 'yangyuanxian', 'y');
INSERT INTO `z_area` VALUES ('166', '怀安县', '河北省 张家口 怀安县', '130700', '130728', '13', '07', '28', '3', '2017-05-11 01:45:37', '2018-08-17 14:26:53', 'huaianxian', 'h');
INSERT INTO `z_area` VALUES ('167', '万全县', '河北省 张家口 万全县', '130700', '130729', '13', '07', '29', '3', '2017-05-11 01:45:37', '2018-08-17 14:26:53', 'wanquanxian', 'w');
INSERT INTO `z_area` VALUES ('168', '怀来县', '河北省 张家口 怀来县', '130700', '130730', '13', '07', '30', '3', '2017-05-11 01:45:37', '2018-08-17 14:26:53', 'huailaixian', 'h');
INSERT INTO `z_area` VALUES ('169', '涿鹿县', '河北省 张家口 涿鹿县', '130700', '130731', '13', '07', '31', '3', '2017-05-11 01:45:37', '2018-08-17 14:26:53', 'zhuoluxian', 'z');
INSERT INTO `z_area` VALUES ('170', '赤城县', '河北省 张家口 赤城县', '130700', '130732', '13', '07', '32', '3', '2017-05-11 01:45:37', '2018-08-17 14:26:53', 'chichengxian', 'c');
INSERT INTO `z_area` VALUES ('171', '崇礼县', '河北省 张家口 崇礼县', '130700', '130733', '13', '07', '33', '3', '2017-05-11 01:45:37', '2018-08-17 14:26:53', 'chonglixian', 'c');
INSERT INTO `z_area` VALUES ('172', '承德', '河北省 承德', '130000', '130800', '13', '08', '00', '2', '2017-05-11 01:45:37', '2018-08-16 14:18:03', 'chengde', 'c');
INSERT INTO `z_area` VALUES ('173', '承德市', '河北省 承德 承德市', '130800', '130801', '13', '08', '01', '3', '2017-05-11 01:45:38', '2018-08-17 14:26:53', 'chengdeshi', 'c');
INSERT INTO `z_area` VALUES ('174', '双桥区', '河北省 承德 双桥区', '130800', '130802', '13', '08', '02', '3', '2017-05-11 01:45:38', '2018-08-17 14:26:53', 'shuangqiaoqu', 's');
INSERT INTO `z_area` VALUES ('175', '双滦区', '河北省 承德 双滦区', '130800', '130803', '13', '08', '03', '3', '2017-05-11 01:45:38', '2018-08-17 14:26:54', 'shuangluanqu', 's');
INSERT INTO `z_area` VALUES ('176', '鹰手营子矿区', '河北省 承德 鹰手营子矿区', '130800', '130804', '13', '08', '04', '3', '2017-05-11 01:45:38', '2018-08-17 14:26:54', 'yingshouyingzikuangqu', 'y');
INSERT INTO `z_area` VALUES ('177', '承德县', '河北省 承德 承德县', '130800', '130821', '13', '08', '21', '3', '2017-05-11 01:45:38', '2018-08-17 14:26:54', 'chengdexian', 'c');
INSERT INTO `z_area` VALUES ('178', '兴隆县', '河北省 承德 兴隆县', '130800', '130822', '13', '08', '22', '3', '2017-05-11 01:45:38', '2018-08-17 14:26:54', 'xinglongxian', 'x');
INSERT INTO `z_area` VALUES ('179', '平泉县', '河北省 承德 平泉县', '130800', '130823', '13', '08', '23', '3', '2017-05-11 01:45:39', '2018-08-17 14:26:54', 'pingquanxian', 'p');
INSERT INTO `z_area` VALUES ('180', '滦平县', '河北省 承德 滦平县', '130800', '130824', '13', '08', '24', '3', '2017-05-11 01:45:39', '2018-08-17 14:26:54', 'luanpingxian', 'l');
INSERT INTO `z_area` VALUES ('181', '隆化县', '河北省 承德 隆化县', '130800', '130825', '13', '08', '25', '3', '2017-05-11 01:45:39', '2018-08-17 14:26:54', 'longhuaxian', 'l');
INSERT INTO `z_area` VALUES ('182', '丰宁满族自治县', '河北省 承德 丰宁满族自治县', '130800', '130826', '13', '08', '26', '3', '2017-05-11 01:45:39', '2018-08-17 14:26:55', 'fengningmanzuzizhixian', 'f');
INSERT INTO `z_area` VALUES ('183', '宽城满族自治县', '河北省 承德 宽城满族自治县', '130800', '130827', '13', '08', '27', '3', '2017-05-11 01:45:39', '2018-08-17 14:26:55', 'kuanchengmanzuzizhixian', 'k');
INSERT INTO `z_area` VALUES ('184', '围场满族蒙古族自治县', '河北省 承德 围场满族蒙古族自治县', '130800', '130828', '13', '08', '28', '3', '2017-05-11 01:45:39', '2018-08-17 14:26:55', 'weichangmanzumengguzuzizhixian', 'w');
INSERT INTO `z_area` VALUES ('185', '沧州', '河北省 沧州', '130000', '130900', '13', '09', '00', '2', '2017-05-11 01:45:39', '2018-08-16 14:18:04', 'cangzhou', 'c');
INSERT INTO `z_area` VALUES ('186', '沧州市', '河北省 沧州 沧州市', '130900', '130901', '13', '09', '01', '3', '2017-05-11 01:45:40', '2018-08-17 14:26:55', 'cangzhoushi', 'c');
INSERT INTO `z_area` VALUES ('187', '新华区', '河北省 沧州 新华区', '130900', '130902', '13', '09', '02', '3', '2017-05-11 01:45:40', '2018-08-17 14:26:55', 'xinhuaqu', 'x');
INSERT INTO `z_area` VALUES ('188', '运河区', '河北省 沧州 运河区', '130900', '130903', '13', '09', '03', '3', '2017-05-11 01:45:40', '2018-08-17 14:26:55', 'yunhequ', 'y');
INSERT INTO `z_area` VALUES ('189', '沧县', '河北省 沧州 沧县', '130900', '130921', '13', '09', '21', '3', '2017-05-11 01:45:40', '2018-08-17 14:26:55', 'cangxian', 'c');
INSERT INTO `z_area` VALUES ('190', '青县', '河北省 沧州 青县', '130900', '130922', '13', '09', '22', '3', '2017-05-11 01:45:40', '2018-08-17 14:26:55', 'qingxian', 'q');
INSERT INTO `z_area` VALUES ('191', '东光县', '河北省 沧州 东光县', '130900', '130923', '13', '09', '23', '3', '2017-05-11 01:45:40', '2018-08-17 14:26:56', 'dongguangxian', 'd');
INSERT INTO `z_area` VALUES ('192', '海兴县', '河北省 沧州 海兴县', '130900', '130924', '13', '09', '24', '3', '2017-05-11 01:45:41', '2018-08-17 14:26:56', 'haixingxian', 'h');
INSERT INTO `z_area` VALUES ('193', '盐山县', '河北省 沧州 盐山县', '130900', '130925', '13', '09', '25', '3', '2017-05-11 01:45:41', '2018-08-17 14:26:56', 'yanshanxian', 'y');
INSERT INTO `z_area` VALUES ('194', '肃宁县', '河北省 沧州 肃宁县', '130900', '130926', '13', '09', '26', '3', '2017-05-11 01:45:41', '2018-08-17 14:26:56', 'suningxian', 's');
INSERT INTO `z_area` VALUES ('195', '南皮县', '河北省 沧州 南皮县', '130900', '130927', '13', '09', '27', '3', '2017-05-11 01:45:41', '2018-08-17 14:26:56', 'nanpixian', 'n');
INSERT INTO `z_area` VALUES ('196', '吴桥县', '河北省 沧州 吴桥县', '130900', '130928', '13', '09', '28', '3', '2017-05-11 01:45:41', '2018-08-17 14:26:56', 'wuqiaoxian', 'w');
INSERT INTO `z_area` VALUES ('197', '献县', '河北省 沧州 献县', '130900', '130929', '13', '09', '29', '3', '2017-05-11 01:45:41', '2018-08-17 14:26:56', 'xianxian', 'x');
INSERT INTO `z_area` VALUES ('198', '孟村回族自治县', '河北省 沧州 孟村回族自治县', '130900', '130930', '13', '09', '30', '3', '2017-05-11 01:45:41', '2018-08-17 14:26:57', 'mengcunhuizuzizhixian', 'm');
INSERT INTO `z_area` VALUES ('199', '泊头市', '河北省 沧州 泊头市', '130900', '130981', '13', '09', '81', '3', '2017-05-11 01:45:42', '2018-08-17 14:26:57', 'botoushi', 'b');
INSERT INTO `z_area` VALUES ('200', '任丘市', '河北省 沧州 任丘市', '130900', '130982', '13', '09', '82', '3', '2017-05-11 01:45:42', '2018-08-17 14:26:57', 'renqiushi', 'r');
INSERT INTO `z_area` VALUES ('201', '黄骅市', '河北省 沧州 黄骅市', '130900', '130983', '13', '09', '83', '3', '2017-05-11 01:45:42', '2018-08-17 14:26:57', 'huanghuashi', 'h');
INSERT INTO `z_area` VALUES ('202', '河间市', '河北省 沧州 河间市', '130900', '130984', '13', '09', '84', '3', '2017-05-11 01:45:42', '2018-08-17 14:26:57', 'hejianshi', 'h');
INSERT INTO `z_area` VALUES ('203', '廊坊', '河北省 廊坊', '130000', '131000', '13', '10', '00', '2', '2017-05-11 01:45:42', '2018-08-16 14:18:07', 'langfang', 'l');
INSERT INTO `z_area` VALUES ('204', '廊坊市', '河北省 廊坊 廊坊市', '131000', '131001', '13', '10', '01', '3', '2017-05-11 01:45:42', '2018-08-17 14:26:57', 'langfangshi', 'l');
INSERT INTO `z_area` VALUES ('205', '安次区', '河北省 廊坊 安次区', '131000', '131002', '13', '10', '02', '3', '2017-05-11 01:45:43', '2018-08-17 14:26:58', 'anciqu', 'a');
INSERT INTO `z_area` VALUES ('206', '广阳区', '河北省 廊坊 广阳区', '131000', '131003', '13', '10', '03', '3', '2017-05-11 01:45:43', '2018-08-17 14:26:58', 'guangyangqu', 'g');
INSERT INTO `z_area` VALUES ('207', '固安县', '河北省 廊坊 固安县', '131000', '131022', '13', '10', '22', '3', '2017-05-11 01:45:43', '2018-08-17 14:26:58', 'guanxian', 'g');
INSERT INTO `z_area` VALUES ('208', '永清县', '河北省 廊坊 永清县', '131000', '131023', '13', '10', '23', '3', '2017-05-11 01:45:43', '2018-08-17 14:26:58', 'yongqingxian', 'y');
INSERT INTO `z_area` VALUES ('209', '香河县', '河北省 廊坊 香河县', '131000', '131024', '13', '10', '24', '3', '2017-05-11 01:45:43', '2018-08-17 14:26:58', 'xianghexian', 'x');
INSERT INTO `z_area` VALUES ('210', '大城县', '河北省 廊坊 大城县', '131000', '131025', '13', '10', '25', '3', '2017-05-11 01:45:43', '2018-08-17 14:26:58', 'dachengxian', 'd');
INSERT INTO `z_area` VALUES ('211', '文安县', '河北省 廊坊 文安县', '131000', '131026', '13', '10', '26', '3', '2017-05-11 01:45:44', '2018-08-17 14:26:58', 'wenanxian', 'w');
INSERT INTO `z_area` VALUES ('212', '大厂回族自治县', '河北省 廊坊 大厂回族自治县', '131000', '131028', '13', '10', '28', '3', '2017-05-11 01:45:44', '2018-08-17 14:26:59', 'dachanghuizuzizhixian', 'd');
INSERT INTO `z_area` VALUES ('213', '霸州市', '河北省 廊坊 霸州市', '131000', '131081', '13', '10', '81', '3', '2017-05-11 01:45:44', '2018-08-17 14:26:59', 'bazhoushi', 'b');
INSERT INTO `z_area` VALUES ('214', '三河市', '河北省 廊坊 三河市', '131000', '131082', '13', '10', '82', '3', '2017-05-11 01:45:44', '2018-08-17 14:26:59', 'sanheshi', 's');
INSERT INTO `z_area` VALUES ('215', '衡水', '河北省 衡水', '130000', '131100', '13', '11', '00', '2', '2017-05-11 01:45:44', '2018-08-16 14:18:08', 'hengshui', 'h');
INSERT INTO `z_area` VALUES ('216', '衡水市', '河北省 衡水 衡水市', '131100', '131101', '13', '11', '01', '3', '2017-05-11 01:45:44', '2018-08-17 14:26:59', 'hengshuishi', 'h');
INSERT INTO `z_area` VALUES ('217', '桃城区', '河北省 衡水 桃城区', '131100', '131102', '13', '11', '02', '3', '2017-05-11 01:45:44', '2018-08-17 14:26:59', 'taochengqu', 't');
INSERT INTO `z_area` VALUES ('218', '枣强县', '河北省 衡水 枣强县', '131100', '131121', '13', '11', '21', '3', '2017-05-11 01:45:45', '2018-08-17 14:26:59', 'zaoqiangxian', 'z');
INSERT INTO `z_area` VALUES ('219', '武邑县', '河北省 衡水 武邑县', '131100', '131122', '13', '11', '22', '3', '2017-05-11 01:45:45', '2018-08-17 14:27:00', 'wuyixian', 'w');
INSERT INTO `z_area` VALUES ('220', '武强县', '河北省 衡水 武强县', '131100', '131123', '13', '11', '23', '3', '2017-05-11 01:45:45', '2018-08-17 14:27:00', 'wuqiangxian', 'w');
INSERT INTO `z_area` VALUES ('221', '饶阳县', '河北省 衡水 饶阳县', '131100', '131124', '13', '11', '24', '3', '2017-05-11 01:45:45', '2018-08-17 14:27:00', 'raoyangxian', 'r');
INSERT INTO `z_area` VALUES ('222', '安平县', '河北省 衡水 安平县', '131100', '131125', '13', '11', '25', '3', '2017-05-11 01:45:45', '2018-08-17 14:27:00', 'anpingxian', 'a');
INSERT INTO `z_area` VALUES ('223', '故城县', '河北省 衡水 故城县', '131100', '131126', '13', '11', '26', '3', '2017-05-11 01:45:45', '2018-08-17 14:27:00', 'guchengxian', 'g');
INSERT INTO `z_area` VALUES ('224', '景县', '河北省 衡水 景县', '131100', '131127', '13', '11', '27', '3', '2017-05-11 01:45:46', '2018-08-17 14:27:00', 'jingxian', 'j');
INSERT INTO `z_area` VALUES ('225', '阜城县', '河北省 衡水 阜城县', '131100', '131128', '13', '11', '28', '3', '2017-05-11 01:45:46', '2018-08-17 14:27:00', 'fuchengxian', 'f');
INSERT INTO `z_area` VALUES ('226', '冀州市', '河北省 衡水 冀州市', '131100', '131181', '13', '11', '81', '3', '2017-05-11 01:45:46', '2018-08-17 14:27:01', 'jizhoushi', 'j');
INSERT INTO `z_area` VALUES ('227', '深州市', '河北省 衡水 深州市', '131100', '131182', '13', '11', '82', '3', '2017-05-11 01:45:46', '2018-08-17 14:27:01', 'shenzhoushi', 's');
INSERT INTO `z_area` VALUES ('228', '省直辖县级行政区划', '河北省 省直辖县级行政区划', '130000', '139000', '13', '90', '00', '2', '2017-05-11 01:45:46', '2018-08-16 14:18:10', 'shengzhixiaxianjixingzhengquhua', 's');
INSERT INTO `z_area` VALUES ('229', '定州市', '河北省 省直辖县级行政区划 定州市', '139000', '139001', '13', '90', '01', '3', '2017-05-11 01:45:46', '2018-08-17 14:27:01', 'dingzhoushi', 'd');
INSERT INTO `z_area` VALUES ('230', '辛集市', '河北省 省直辖县级行政区划 辛集市', '139000', '139002', '13', '90', '02', '3', '2017-05-11 01:45:46', '2018-08-17 14:27:01', 'xinjishi', 'x');
INSERT INTO `z_area` VALUES ('231', '山西省', '山西省', '', '140000', '14', '00', '00', '1', '2017-05-11 01:45:46', '2017-08-28 14:21:45', 'shanxisheng', 's');
INSERT INTO `z_area` VALUES ('232', '太原', '山西省 太原', '140000', '140100', '14', '01', '00', '2', '2017-05-11 01:45:47', '2018-08-16 14:18:10', 'taiyuan', 't');
INSERT INTO `z_area` VALUES ('233', '太原市', '山西省 太原 太原市', '140100', '140101', '14', '01', '01', '3', '2017-05-11 01:45:47', '2018-08-17 14:27:01', 'taiyuanshi', 't');
INSERT INTO `z_area` VALUES ('234', '小店区', '山西省 太原 小店区', '140100', '140105', '14', '01', '05', '3', '2017-05-11 01:45:47', '2018-08-17 14:27:01', 'xiaodianqu', 'x');
INSERT INTO `z_area` VALUES ('235', '迎泽区', '山西省 太原 迎泽区', '140100', '140106', '14', '01', '06', '3', '2017-05-11 01:45:47', '2018-08-17 14:27:01', 'yingzequ', 'y');
INSERT INTO `z_area` VALUES ('236', '杏花岭区', '山西省 太原 杏花岭区', '140100', '140107', '14', '01', '07', '3', '2017-05-11 01:45:47', '2018-08-17 14:27:02', 'xinghualingqu', 'x');
INSERT INTO `z_area` VALUES ('237', '尖草坪区', '山西省 太原 尖草坪区', '140100', '140108', '14', '01', '08', '3', '2017-05-11 01:45:47', '2018-08-17 14:27:02', 'jiancaopingqu', 'j');
INSERT INTO `z_area` VALUES ('238', '万柏林区', '山西省 太原 万柏林区', '140100', '140109', '14', '01', '09', '3', '2017-05-11 01:45:48', '2018-08-17 14:27:02', 'wanbailinqu', 'w');
INSERT INTO `z_area` VALUES ('239', '晋源区', '山西省 太原 晋源区', '140100', '140110', '14', '01', '10', '3', '2017-05-11 01:45:48', '2018-08-17 14:27:02', 'jinyuanqu', 'j');
INSERT INTO `z_area` VALUES ('240', '清徐县', '山西省 太原 清徐县', '140100', '140121', '14', '01', '21', '3', '2017-05-11 01:45:48', '2018-08-17 14:27:02', 'qingxuxian', 'q');
INSERT INTO `z_area` VALUES ('241', '阳曲县', '山西省 太原 阳曲县', '140100', '140122', '14', '01', '22', '3', '2017-05-11 01:45:48', '2018-08-17 14:27:02', 'yangquxian', 'y');
INSERT INTO `z_area` VALUES ('242', '娄烦县', '山西省 太原 娄烦县', '140100', '140123', '14', '01', '23', '3', '2017-05-11 01:45:48', '2018-08-17 14:27:02', 'loufanxian', 'l');
INSERT INTO `z_area` VALUES ('243', '古交市', '山西省 太原 古交市', '140100', '140181', '14', '01', '81', '3', '2017-05-11 01:45:48', '2018-08-17 14:27:02', 'gujiaoshi', 'g');
INSERT INTO `z_area` VALUES ('244', '大同', '山西省 大同', '140000', '140200', '14', '02', '00', '2', '2017-05-11 01:45:48', '2018-08-16 14:18:12', 'datong', 'd');
INSERT INTO `z_area` VALUES ('245', '大同市', '山西省 大同 大同市', '140200', '140201', '14', '02', '01', '3', '2017-05-11 01:45:49', '2018-08-17 14:27:03', 'datongshi', 'd');
INSERT INTO `z_area` VALUES ('246', '城区', '山西省 大同 城区', '140200', '140202', '14', '02', '02', '3', '2017-05-11 01:45:49', '2018-08-17 14:27:03', 'chengqu', 'c');
INSERT INTO `z_area` VALUES ('247', '矿区', '山西省 大同 矿区', '140200', '140203', '14', '02', '03', '3', '2017-05-11 01:45:49', '2018-08-17 14:27:03', 'kuangqu', 'k');
INSERT INTO `z_area` VALUES ('248', '南郊区', '山西省 大同 南郊区', '140200', '140211', '14', '02', '11', '3', '2017-05-11 01:45:49', '2018-08-17 14:27:03', 'nanjiaoqu', 'n');
INSERT INTO `z_area` VALUES ('249', '新荣区', '山西省 大同 新荣区', '140200', '140212', '14', '02', '12', '3', '2017-05-11 01:45:49', '2018-08-17 14:27:03', 'xinrongqu', 'x');
INSERT INTO `z_area` VALUES ('250', '阳高县', '山西省 大同 阳高县', '140200', '140221', '14', '02', '21', '3', '2017-05-11 01:45:49', '2018-08-17 14:27:03', 'yanggaoxian', 'y');
INSERT INTO `z_area` VALUES ('251', '天镇县', '山西省 大同 天镇县', '140200', '140222', '14', '02', '22', '3', '2017-05-11 01:45:50', '2018-08-17 14:27:04', 'tianzhenxian', 't');
INSERT INTO `z_area` VALUES ('252', '广灵县', '山西省 大同 广灵县', '140200', '140223', '14', '02', '23', '3', '2017-05-11 01:45:50', '2018-08-17 14:27:04', 'guanglingxian', 'g');
INSERT INTO `z_area` VALUES ('253', '灵丘县', '山西省 大同 灵丘县', '140200', '140224', '14', '02', '24', '3', '2017-05-11 01:45:50', '2018-08-17 14:27:05', 'lingqiuxian', 'l');
INSERT INTO `z_area` VALUES ('254', '浑源县', '山西省 大同 浑源县', '140200', '140225', '14', '02', '25', '3', '2017-05-11 01:45:50', '2018-08-17 14:27:05', 'hunyuanxian', 'h');
INSERT INTO `z_area` VALUES ('255', '左云县', '山西省 大同 左云县', '140200', '140226', '14', '02', '26', '3', '2017-05-11 01:45:50', '2018-08-17 14:27:05', 'zuoyunxian', 'z');
INSERT INTO `z_area` VALUES ('256', '大同县', '山西省 大同 大同县', '140200', '140227', '14', '02', '27', '3', '2017-05-11 01:45:50', '2018-08-17 14:27:05', 'datongxian', 'd');
INSERT INTO `z_area` VALUES ('257', '阳泉', '山西省 阳泉', '140000', '140300', '14', '03', '00', '2', '2017-05-11 01:45:51', '2018-08-16 14:18:14', 'yangquan', 'y');
INSERT INTO `z_area` VALUES ('258', '阳泉市', '山西省 阳泉 阳泉市', '140300', '140301', '14', '03', '01', '3', '2017-05-11 01:45:51', '2018-08-17 14:27:05', 'yangquanshi', 'y');
INSERT INTO `z_area` VALUES ('259', '城区', '山西省 阳泉 城区', '140300', '140302', '14', '03', '02', '3', '2017-05-11 01:45:51', '2018-08-17 14:27:05', 'chengqu', 'c');
INSERT INTO `z_area` VALUES ('260', '矿区', '山西省 阳泉 矿区', '140300', '140303', '14', '03', '03', '3', '2017-05-11 01:45:51', '2018-08-17 14:27:05', 'kuangqu', 'k');
INSERT INTO `z_area` VALUES ('261', '郊区', '山西省 阳泉 郊区', '140300', '140311', '14', '03', '11', '3', '2017-05-11 01:45:51', '2018-08-17 14:27:06', 'jiaoqu', 'j');
INSERT INTO `z_area` VALUES ('262', '平定县', '山西省 阳泉 平定县', '140300', '140321', '14', '03', '21', '3', '2017-05-11 01:45:51', '2018-08-17 14:27:06', 'pingdingxian', 'p');
INSERT INTO `z_area` VALUES ('263', '盂县', '山西省 阳泉 盂县', '140300', '140322', '14', '03', '22', '3', '2017-05-11 01:45:51', '2018-08-17 14:27:06', 'yuxian', 'y');
INSERT INTO `z_area` VALUES ('264', '长治', '山西省 长治', '140000', '140400', '14', '04', '00', '2', '2017-05-11 01:45:52', '2018-08-16 14:18:15', 'changzhi', 'c');
INSERT INTO `z_area` VALUES ('265', '长治市', '山西省 长治 长治市', '140400', '140401', '14', '04', '01', '3', '2017-05-11 01:45:52', '2018-08-17 14:27:06', 'changzhishi', 'c');
INSERT INTO `z_area` VALUES ('266', '城区', '山西省 长治 城区', '140400', '140402', '14', '04', '02', '3', '2017-05-11 01:45:52', '2018-08-17 14:27:06', 'chengqu', 'c');
INSERT INTO `z_area` VALUES ('267', '郊区', '山西省 长治 郊区', '140400', '140411', '14', '04', '11', '3', '2017-05-11 01:45:52', '2018-08-17 14:27:06', 'jiaoqu', 'j');
INSERT INTO `z_area` VALUES ('268', '长治县', '山西省 长治 长治县', '140400', '140421', '14', '04', '21', '3', '2017-05-11 01:45:52', '2018-08-17 14:27:06', 'changzhixian', 'c');
INSERT INTO `z_area` VALUES ('269', '襄垣县', '山西省 长治 襄垣县', '140400', '140423', '14', '04', '23', '3', '2017-05-11 01:45:52', '2018-08-17 14:27:07', 'xiangyuanxian', 'x');
INSERT INTO `z_area` VALUES ('270', '屯留县', '山西省 长治 屯留县', '140400', '140424', '14', '04', '24', '3', '2017-05-11 01:45:53', '2018-08-17 14:27:07', 'tunliuxian', 't');
INSERT INTO `z_area` VALUES ('271', '平顺县', '山西省 长治 平顺县', '140400', '140425', '14', '04', '25', '3', '2017-05-11 01:45:53', '2018-08-17 14:27:07', 'pingshunxian', 'p');
INSERT INTO `z_area` VALUES ('272', '黎城县', '山西省 长治 黎城县', '140400', '140426', '14', '04', '26', '3', '2017-05-11 01:45:53', '2018-08-17 14:27:07', 'lichengxian', 'l');
INSERT INTO `z_area` VALUES ('273', '壶关县', '山西省 长治 壶关县', '140400', '140427', '14', '04', '27', '3', '2017-05-11 01:45:53', '2018-08-17 14:27:07', 'huguanxian', 'h');
INSERT INTO `z_area` VALUES ('274', '长子县', '山西省 长治 长子县', '140400', '140428', '14', '04', '28', '3', '2017-05-11 01:45:53', '2018-08-17 14:27:07', 'changzixian', 'c');
INSERT INTO `z_area` VALUES ('275', '武乡县', '山西省 长治 武乡县', '140400', '140429', '14', '04', '29', '3', '2017-05-11 01:45:53', '2018-08-17 14:27:07', 'wuxiangxian', 'w');
INSERT INTO `z_area` VALUES ('276', '沁县', '山西省 长治 沁县', '140400', '140430', '14', '04', '30', '3', '2017-05-11 01:45:53', '2018-08-17 14:27:08', 'qinxian', 'q');
INSERT INTO `z_area` VALUES ('277', '沁源县', '山西省 长治 沁源县', '140400', '140431', '14', '04', '31', '3', '2017-05-11 01:45:54', '2018-08-17 14:27:08', 'qinyuanxian', 'q');
INSERT INTO `z_area` VALUES ('278', '潞城市', '山西省 长治 潞城市', '140400', '140481', '14', '04', '81', '3', '2017-05-11 01:45:54', '2018-08-17 14:27:08', 'luchengshi', 'l');
INSERT INTO `z_area` VALUES ('279', '晋城', '山西省 晋城', '140000', '140500', '14', '05', '00', '2', '2017-05-11 01:45:54', '2018-08-16 14:18:17', 'jincheng', 'j');
INSERT INTO `z_area` VALUES ('280', '晋城市', '山西省 晋城 晋城市', '140500', '140501', '14', '05', '01', '3', '2017-05-11 01:45:54', '2018-08-17 14:27:08', 'jinchengshi', 'j');
INSERT INTO `z_area` VALUES ('281', '城区', '山西省 晋城 城区', '140500', '140502', '14', '05', '02', '3', '2017-05-11 01:45:54', '2018-08-17 14:27:08', 'chengqu', 'c');
INSERT INTO `z_area` VALUES ('282', '沁水县', '山西省 晋城 沁水县', '140500', '140521', '14', '05', '21', '3', '2017-05-11 01:45:54', '2018-08-17 14:27:08', 'qinshuixian', 'q');
INSERT INTO `z_area` VALUES ('283', '阳城县', '山西省 晋城 阳城县', '140500', '140522', '14', '05', '22', '3', '2017-05-11 01:45:55', '2018-08-17 14:27:09', 'yangchengxian', 'y');
INSERT INTO `z_area` VALUES ('284', '陵川县', '山西省 晋城 陵川县', '140500', '140524', '14', '05', '24', '3', '2017-05-11 01:45:55', '2018-08-17 14:27:09', 'lingchuanxian', 'l');
INSERT INTO `z_area` VALUES ('285', '泽州县', '山西省 晋城 泽州县', '140500', '140525', '14', '05', '25', '3', '2017-05-11 01:45:55', '2018-08-17 14:27:09', 'zezhouxian', 'z');
INSERT INTO `z_area` VALUES ('286', '高平市', '山西省 晋城 高平市', '140500', '140581', '14', '05', '81', '3', '2017-05-11 01:45:55', '2018-08-17 14:27:09', 'gaopingshi', 'g');
INSERT INTO `z_area` VALUES ('287', '朔州', '山西省 朔州', '140000', '140600', '14', '06', '00', '2', '2017-05-11 01:45:55', '2018-08-16 14:18:18', 'shuozhou', 's');
INSERT INTO `z_area` VALUES ('288', '朔州市', '山西省 朔州 朔州市', '140600', '140601', '14', '06', '01', '3', '2017-05-11 01:45:55', '2018-08-17 14:27:09', 'shuozhoushi', 's');
INSERT INTO `z_area` VALUES ('289', '朔城区', '山西省 朔州 朔城区', '140600', '140602', '14', '06', '02', '3', '2017-05-11 01:45:55', '2018-08-17 14:27:09', 'shuochengqu', 's');
INSERT INTO `z_area` VALUES ('290', '平鲁区', '山西省 朔州 平鲁区', '140600', '140603', '14', '06', '03', '3', '2017-05-11 01:45:56', '2018-08-17 14:27:09', 'pingluqu', 'p');
INSERT INTO `z_area` VALUES ('291', '山阴县', '山西省 朔州 山阴县', '140600', '140621', '14', '06', '21', '3', '2017-05-11 01:45:56', '2018-08-17 14:27:09', 'shanyinxian', 's');
INSERT INTO `z_area` VALUES ('292', '应县', '山西省 朔州 应县', '140600', '140622', '14', '06', '22', '3', '2017-05-11 01:45:56', '2018-08-17 14:27:10', 'yingxian', 'y');
INSERT INTO `z_area` VALUES ('293', '右玉县', '山西省 朔州 右玉县', '140600', '140623', '14', '06', '23', '3', '2017-05-11 01:45:56', '2018-08-17 14:27:10', 'youyuxian', 'y');
INSERT INTO `z_area` VALUES ('294', '怀仁县', '山西省 朔州 怀仁县', '140600', '140624', '14', '06', '24', '3', '2017-05-11 01:45:56', '2018-08-17 14:27:10', 'huairenxian', 'h');
INSERT INTO `z_area` VALUES ('295', '晋中', '山西省 晋中', '140000', '140700', '14', '07', '00', '2', '2017-05-11 01:45:56', '2018-08-16 14:18:19', 'jinzhong', 'j');
INSERT INTO `z_area` VALUES ('296', '晋中市', '山西省 晋中 晋中市', '140700', '140701', '14', '07', '01', '3', '2017-05-11 01:45:57', '2018-08-17 14:27:10', 'jinzhongshi', 'j');
INSERT INTO `z_area` VALUES ('297', '榆次区', '山西省 晋中 榆次区', '140700', '140702', '14', '07', '02', '3', '2017-05-11 01:45:57', '2018-08-17 14:27:10', 'yuciqu', 'y');
INSERT INTO `z_area` VALUES ('298', '榆社县', '山西省 晋中 榆社县', '140700', '140721', '14', '07', '21', '3', '2017-05-11 01:45:57', '2018-08-17 14:27:11', 'yushexian', 'y');
INSERT INTO `z_area` VALUES ('299', '左权县', '山西省 晋中 左权县', '140700', '140722', '14', '07', '22', '3', '2017-05-11 01:45:57', '2018-08-17 14:27:11', 'zuoquanxian', 'z');
INSERT INTO `z_area` VALUES ('300', '和顺县', '山西省 晋中 和顺县', '140700', '140723', '14', '07', '23', '3', '2017-05-11 01:45:57', '2018-08-17 14:27:11', 'heshunxian', 'h');
INSERT INTO `z_area` VALUES ('301', '昔阳县', '山西省 晋中 昔阳县', '140700', '140724', '14', '07', '24', '3', '2017-05-11 01:45:57', '2018-08-17 14:27:11', 'xiyangxian', 'x');
INSERT INTO `z_area` VALUES ('302', '寿阳县', '山西省 晋中 寿阳县', '140700', '140725', '14', '07', '25', '3', '2017-05-11 01:45:57', '2018-08-17 14:27:11', 'shouyangxian', 's');
INSERT INTO `z_area` VALUES ('303', '太谷县', '山西省 晋中 太谷县', '140700', '140726', '14', '07', '26', '3', '2017-05-11 01:45:58', '2018-08-17 14:27:11', 'taiguxian', 't');
INSERT INTO `z_area` VALUES ('304', '祁县', '山西省 晋中 祁县', '140700', '140727', '14', '07', '27', '3', '2017-05-11 01:45:58', '2018-08-17 14:27:11', 'qixian', 'q');
INSERT INTO `z_area` VALUES ('305', '平遥县', '山西省 晋中 平遥县', '140700', '140728', '14', '07', '28', '3', '2017-05-11 01:45:58', '2018-08-17 14:27:12', 'pingyaoxian', 'p');
INSERT INTO `z_area` VALUES ('306', '灵石县', '山西省 晋中 灵石县', '140700', '140729', '14', '07', '29', '3', '2017-05-11 01:45:58', '2018-08-17 14:27:12', 'lingshixian', 'l');
INSERT INTO `z_area` VALUES ('307', '介休市', '山西省 晋中 介休市', '140700', '140781', '14', '07', '81', '3', '2017-05-11 01:45:58', '2018-08-17 14:27:12', 'jiexiushi', 'j');
INSERT INTO `z_area` VALUES ('308', '运城', '山西省 运城', '140000', '140800', '14', '08', '00', '2', '2017-05-11 01:45:58', '2018-08-16 14:18:20', 'yuncheng', 'y');
INSERT INTO `z_area` VALUES ('309', '运城市', '山西省 运城 运城市', '140800', '140801', '14', '08', '01', '3', '2017-05-11 01:45:59', '2018-08-17 14:27:12', 'yunchengshi', 'y');
INSERT INTO `z_area` VALUES ('310', '盐湖区', '山西省 运城 盐湖区', '140800', '140802', '14', '08', '02', '3', '2017-05-11 01:45:59', '2018-08-17 14:27:12', 'yanhuqu', 'y');
INSERT INTO `z_area` VALUES ('311', '临猗县', '山西省 运城 临猗县', '140800', '140821', '14', '08', '21', '3', '2017-05-11 01:45:59', '2018-08-17 14:27:12', 'linyixian', 'l');
INSERT INTO `z_area` VALUES ('312', '万荣县', '山西省 运城 万荣县', '140800', '140822', '14', '08', '22', '3', '2017-05-11 01:45:59', '2018-08-17 14:27:12', 'wanrongxian', 'w');
INSERT INTO `z_area` VALUES ('313', '闻喜县', '山西省 运城 闻喜县', '140800', '140823', '14', '08', '23', '3', '2017-05-11 01:45:59', '2018-08-17 14:27:13', 'wenxixian', 'w');
INSERT INTO `z_area` VALUES ('314', '稷山县', '山西省 运城 稷山县', '140800', '140824', '14', '08', '24', '3', '2017-05-11 01:45:59', '2018-08-17 14:27:13', 'jishanxian', 'j');
INSERT INTO `z_area` VALUES ('315', '新绛县', '山西省 运城 新绛县', '140800', '140825', '14', '08', '25', '3', '2017-05-11 01:46:00', '2018-08-17 14:27:13', 'xinjiangxian', 'x');
INSERT INTO `z_area` VALUES ('316', '绛县', '山西省 运城 绛县', '140800', '140826', '14', '08', '26', '3', '2017-05-11 01:46:00', '2018-08-17 14:27:13', 'jiangxian', 'j');
INSERT INTO `z_area` VALUES ('317', '垣曲县', '山西省 运城 垣曲县', '140800', '140827', '14', '08', '27', '3', '2017-05-11 01:46:00', '2018-08-17 14:27:13', 'yuanquxian', 'y');
INSERT INTO `z_area` VALUES ('318', '夏县', '山西省 运城 夏县', '140800', '140828', '14', '08', '28', '3', '2017-05-11 01:46:00', '2018-08-17 14:27:13', 'xiaxian', 'x');
INSERT INTO `z_area` VALUES ('319', '平陆县', '山西省 运城 平陆县', '140800', '140829', '14', '08', '29', '3', '2017-05-11 01:46:00', '2018-08-17 14:27:13', 'pingluxian', 'p');
INSERT INTO `z_area` VALUES ('320', '芮城县', '山西省 运城 芮城县', '140800', '140830', '14', '08', '30', '3', '2017-05-11 01:46:00', '2018-08-17 14:27:13', 'ruichengxian', 'r');
INSERT INTO `z_area` VALUES ('321', '永济市', '山西省 运城 永济市', '140800', '140881', '14', '08', '81', '3', '2017-05-11 01:46:00', '2018-08-17 14:27:14', 'yongjishi', 'y');
INSERT INTO `z_area` VALUES ('322', '河津市', '山西省 运城 河津市', '140800', '140882', '14', '08', '82', '3', '2017-05-11 01:46:01', '2018-08-17 14:27:14', 'hejinshi', 'h');
INSERT INTO `z_area` VALUES ('323', '忻州', '山西省 忻州', '140000', '140900', '14', '09', '00', '2', '2017-05-11 01:46:01', '2018-08-16 14:18:22', 'xinzhou', 'x');
INSERT INTO `z_area` VALUES ('324', '忻州市', '山西省 忻州 忻州市', '140900', '140901', '14', '09', '01', '3', '2017-05-11 01:46:01', '2018-08-17 14:27:14', 'xinzhoushi', 'x');
INSERT INTO `z_area` VALUES ('325', '忻府区', '山西省 忻州 忻府区', '140900', '140902', '14', '09', '02', '3', '2017-05-11 01:46:01', '2018-08-17 14:27:14', 'xinfuqu', 'x');
INSERT INTO `z_area` VALUES ('326', '定襄县', '山西省 忻州 定襄县', '140900', '140921', '14', '09', '21', '3', '2017-05-11 01:46:01', '2018-08-17 14:27:14', 'dingxiangxian', 'd');
INSERT INTO `z_area` VALUES ('327', '五台县', '山西省 忻州 五台县', '140900', '140922', '14', '09', '22', '3', '2017-05-11 01:46:01', '2018-08-17 14:27:14', 'wutaixian', 'w');
INSERT INTO `z_area` VALUES ('328', '代县', '山西省 忻州 代县', '140900', '140923', '14', '09', '23', '3', '2017-05-11 01:46:01', '2018-08-17 14:27:14', 'daixian', 'd');
INSERT INTO `z_area` VALUES ('329', '繁峙县', '山西省 忻州 繁峙县', '140900', '140924', '14', '09', '24', '3', '2017-05-11 01:46:02', '2018-08-17 14:27:15', 'fanzhixian', 'f');
INSERT INTO `z_area` VALUES ('330', '宁武县', '山西省 忻州 宁武县', '140900', '140925', '14', '09', '25', '3', '2017-05-11 01:46:02', '2018-08-17 14:27:15', 'ningwuxian', 'n');
INSERT INTO `z_area` VALUES ('331', '静乐县', '山西省 忻州 静乐县', '140900', '140926', '14', '09', '26', '3', '2017-05-11 01:46:02', '2018-08-17 14:27:15', 'jinglexian', 'j');
INSERT INTO `z_area` VALUES ('332', '神池县', '山西省 忻州 神池县', '140900', '140927', '14', '09', '27', '3', '2017-05-11 01:46:02', '2018-08-17 14:27:15', 'shenchixian', 's');
INSERT INTO `z_area` VALUES ('333', '五寨县', '山西省 忻州 五寨县', '140900', '140928', '14', '09', '28', '3', '2017-05-11 01:46:02', '2018-08-17 14:27:15', 'wuzhaixian', 'w');
INSERT INTO `z_area` VALUES ('334', '岢岚县', '山西省 忻州 岢岚县', '140900', '140929', '14', '09', '29', '3', '2017-05-11 01:46:03', '2018-08-17 14:27:15', 'kelanxian', 'k');
INSERT INTO `z_area` VALUES ('335', '河曲县', '山西省 忻州 河曲县', '140900', '140930', '14', '09', '30', '3', '2017-05-11 01:46:03', '2018-08-17 14:27:15', 'hequxian', 'h');
INSERT INTO `z_area` VALUES ('336', '保德县', '山西省 忻州 保德县', '140900', '140931', '14', '09', '31', '3', '2017-05-11 01:46:03', '2018-08-17 14:27:15', 'baodexian', 'b');
INSERT INTO `z_area` VALUES ('337', '偏关县', '山西省 忻州 偏关县', '140900', '140932', '14', '09', '32', '3', '2017-05-11 01:46:03', '2018-08-17 14:27:16', 'pianguanxian', 'p');
INSERT INTO `z_area` VALUES ('338', '原平市', '山西省 忻州 原平市', '140900', '140981', '14', '09', '81', '3', '2017-05-11 01:46:03', '2018-08-17 14:27:16', 'yuanpingshi', 'y');
INSERT INTO `z_area` VALUES ('339', '临汾', '山西省 临汾', '140000', '141000', '14', '10', '00', '2', '2017-05-11 01:46:03', '2018-08-16 14:18:25', 'linfen', 'l');
INSERT INTO `z_area` VALUES ('340', '临汾市', '山西省 临汾 临汾市', '141000', '141001', '14', '10', '01', '3', '2017-05-11 01:46:03', '2018-08-17 14:27:16', 'linfenshi', 'l');
INSERT INTO `z_area` VALUES ('341', '尧都区', '山西省 临汾 尧都区', '141000', '141002', '14', '10', '02', '3', '2017-05-11 01:46:04', '2018-08-17 14:27:16', 'yaodouqu', 'y');
INSERT INTO `z_area` VALUES ('342', '曲沃县', '山西省 临汾 曲沃县', '141000', '141021', '14', '10', '21', '3', '2017-05-11 01:46:04', '2018-08-17 14:27:16', 'quwoxian', 'q');
INSERT INTO `z_area` VALUES ('343', '翼城县', '山西省 临汾 翼城县', '141000', '141022', '14', '10', '22', '3', '2017-05-11 01:46:04', '2018-08-17 14:27:16', 'yichengxian', 'y');
INSERT INTO `z_area` VALUES ('344', '襄汾县', '山西省 临汾 襄汾县', '141000', '141023', '14', '10', '23', '3', '2017-05-11 01:46:04', '2018-08-17 14:27:16', 'xiangfenxian', 'x');
INSERT INTO `z_area` VALUES ('345', '洪洞县', '山西省 临汾 洪洞县', '141000', '141024', '14', '10', '24', '3', '2017-05-11 01:46:04', '2018-08-17 14:27:17', 'hongdongxian', 'h');
INSERT INTO `z_area` VALUES ('346', '古县', '山西省 临汾 古县', '141000', '141025', '14', '10', '25', '3', '2017-05-11 01:46:04', '2018-08-17 14:27:17', 'guxian', 'g');
INSERT INTO `z_area` VALUES ('347', '安泽县', '山西省 临汾 安泽县', '141000', '141026', '14', '10', '26', '3', '2017-05-11 01:46:05', '2018-08-17 14:27:17', 'anzexian', 'a');
INSERT INTO `z_area` VALUES ('348', '浮山县', '山西省 临汾 浮山县', '141000', '141027', '14', '10', '27', '3', '2017-05-11 01:46:05', '2018-08-17 14:27:17', 'fushanxian', 'f');
INSERT INTO `z_area` VALUES ('349', '吉县', '山西省 临汾 吉县', '141000', '141028', '14', '10', '28', '3', '2017-05-11 01:46:05', '2018-08-17 14:27:17', 'jixian', 'j');
INSERT INTO `z_area` VALUES ('350', '乡宁县', '山西省 临汾 乡宁县', '141000', '141029', '14', '10', '29', '3', '2017-05-11 01:46:05', '2018-08-17 14:27:17', 'xiangningxian', 'x');
INSERT INTO `z_area` VALUES ('351', '大宁县', '山西省 临汾 大宁县', '141000', '141030', '14', '10', '30', '3', '2017-05-11 01:46:05', '2018-08-17 14:27:17', 'daningxian', 'd');
INSERT INTO `z_area` VALUES ('352', '隰县', '山西省 临汾 隰县', '141000', '141031', '14', '10', '31', '3', '2017-05-11 01:46:05', '2018-08-17 14:27:18', 'xixian', 'x');
INSERT INTO `z_area` VALUES ('353', '永和县', '山西省 临汾 永和县', '141000', '141032', '14', '10', '32', '3', '2017-05-11 01:46:05', '2018-08-17 14:27:18', 'yonghexian', 'y');
INSERT INTO `z_area` VALUES ('354', '蒲县', '山西省 临汾 蒲县', '141000', '141033', '14', '10', '33', '3', '2017-05-11 01:46:06', '2018-08-17 14:27:18', 'puxian', 'p');
INSERT INTO `z_area` VALUES ('355', '汾西县', '山西省 临汾 汾西县', '141000', '141034', '14', '10', '34', '3', '2017-05-11 01:46:06', '2018-08-17 14:27:18', 'fenxixian', 'f');
INSERT INTO `z_area` VALUES ('356', '侯马市', '山西省 临汾 侯马市', '141000', '141081', '14', '10', '81', '3', '2017-05-11 01:46:06', '2018-08-17 14:27:18', 'houmashi', 'h');
INSERT INTO `z_area` VALUES ('357', '霍州市', '山西省 临汾 霍州市', '141000', '141082', '14', '10', '82', '3', '2017-05-11 01:46:06', '2018-08-17 14:27:18', 'huozhoushi', 'h');
INSERT INTO `z_area` VALUES ('358', '吕梁', '山西省 吕梁', '140000', '141100', '14', '11', '00', '2', '2017-05-11 01:46:06', '2018-08-16 14:18:27', 'lvliang', 'l');
INSERT INTO `z_area` VALUES ('359', '吕梁市', '山西省 吕梁 吕梁市', '141100', '141101', '14', '11', '01', '3', '2017-05-11 01:46:06', '2018-08-17 14:27:18', 'lvliangshi', 'l');
INSERT INTO `z_area` VALUES ('360', '离石区', '山西省 吕梁 离石区', '141100', '141102', '14', '11', '02', '3', '2017-05-11 01:46:07', '2018-08-17 14:27:19', 'lishiqu', 'l');
INSERT INTO `z_area` VALUES ('361', '文水县', '山西省 吕梁 文水县', '141100', '141121', '14', '11', '21', '3', '2017-05-11 01:46:07', '2018-08-17 14:27:19', 'wenshuixian', 'w');
INSERT INTO `z_area` VALUES ('362', '交城县', '山西省 吕梁 交城县', '141100', '141122', '14', '11', '22', '3', '2017-05-11 01:46:07', '2018-08-17 14:27:19', 'jiaochengxian', 'j');
INSERT INTO `z_area` VALUES ('363', '兴县', '山西省 吕梁 兴县', '141100', '141123', '14', '11', '23', '3', '2017-05-11 01:46:07', '2018-08-17 14:27:19', 'xingxian', 'x');
INSERT INTO `z_area` VALUES ('364', '临县', '山西省 吕梁 临县', '141100', '141124', '14', '11', '24', '3', '2017-05-11 01:46:07', '2018-08-17 14:27:19', 'linxian', 'l');
INSERT INTO `z_area` VALUES ('365', '柳林县', '山西省 吕梁 柳林县', '141100', '141125', '14', '11', '25', '3', '2017-05-11 01:46:07', '2018-08-17 14:27:19', 'liulinxian', 'l');
INSERT INTO `z_area` VALUES ('366', '石楼县', '山西省 吕梁 石楼县', '141100', '141126', '14', '11', '26', '3', '2017-05-11 01:46:07', '2018-08-17 14:27:19', 'shilouxian', 's');
INSERT INTO `z_area` VALUES ('367', '岚县', '山西省 吕梁 岚县', '141100', '141127', '14', '11', '27', '3', '2017-05-11 01:46:08', '2018-08-17 14:27:20', 'lanxian', 'l');
INSERT INTO `z_area` VALUES ('368', '方山县', '山西省 吕梁 方山县', '141100', '141128', '14', '11', '28', '3', '2017-05-11 01:46:08', '2018-08-17 14:27:20', 'fangshanxian', 'f');
INSERT INTO `z_area` VALUES ('369', '中阳县', '山西省 吕梁 中阳县', '141100', '141129', '14', '11', '29', '3', '2017-05-11 01:46:08', '2018-08-17 14:27:20', 'zhongyangxian', 'z');
INSERT INTO `z_area` VALUES ('370', '交口县', '山西省 吕梁 交口县', '141100', '141130', '14', '11', '30', '3', '2017-05-11 01:46:08', '2018-08-17 14:27:20', 'jiaokouxian', 'j');
INSERT INTO `z_area` VALUES ('371', '孝义市', '山西省 吕梁 孝义市', '141100', '141181', '14', '11', '81', '3', '2017-05-11 01:46:08', '2018-08-17 14:27:20', 'xiaoyishi', 'x');
INSERT INTO `z_area` VALUES ('372', '汾阳市', '山西省 吕梁 汾阳市', '141100', '141182', '14', '11', '82', '3', '2017-05-11 01:46:08', '2018-08-17 14:27:20', 'fenyangshi', 'f');
INSERT INTO `z_area` VALUES ('373', '内蒙古自治区', '内蒙古自治区', '', '150000', '15', '00', '00', '1', '2017-05-11 01:46:08', '2017-08-28 14:21:56', 'namengguzizhiqu', 'n');
INSERT INTO `z_area` VALUES ('374', '呼和浩特', '内蒙古自治区 呼和浩特', '150000', '150100', '15', '01', '00', '2', '2017-05-11 01:46:09', '2018-08-16 14:18:29', 'huhehaote', 'h');
INSERT INTO `z_area` VALUES ('375', '呼和浩特市', '内蒙古自治区 呼和浩特 呼和浩特市', '150100', '150101', '15', '01', '01', '3', '2017-05-11 01:46:09', '2018-08-17 14:27:21', 'huhehaoteshi', 'h');
INSERT INTO `z_area` VALUES ('376', '新城区', '内蒙古自治区 呼和浩特 新城区', '150100', '150102', '15', '01', '02', '3', '2017-05-11 01:46:09', '2018-08-17 14:27:21', 'xinchengqu', 'x');
INSERT INTO `z_area` VALUES ('377', '回民区', '内蒙古自治区 呼和浩特 回民区', '150100', '150103', '15', '01', '03', '3', '2017-05-11 01:46:09', '2018-08-17 14:27:21', 'huiminqu', 'h');
INSERT INTO `z_area` VALUES ('378', '玉泉区', '内蒙古自治区 呼和浩特 玉泉区', '150100', '150104', '15', '01', '04', '3', '2017-05-11 01:46:09', '2018-08-17 14:27:21', 'yuquanqu', 'y');
INSERT INTO `z_area` VALUES ('379', '赛罕区', '内蒙古自治区 呼和浩特 赛罕区', '150100', '150105', '15', '01', '05', '3', '2017-05-11 01:46:09', '2018-08-17 14:27:21', 'saihanqu', 's');
INSERT INTO `z_area` VALUES ('380', '土默特左旗', '内蒙古自治区 呼和浩特 土默特左旗', '150100', '150121', '15', '01', '21', '3', '2017-05-11 01:46:09', '2018-08-17 14:27:21', 'tumotezuoqi', 't');
INSERT INTO `z_area` VALUES ('381', '托克托县', '内蒙古自治区 呼和浩特 托克托县', '150100', '150122', '15', '01', '22', '3', '2017-05-11 01:46:10', '2018-08-17 14:27:21', 'tuoketuoxian', 't');
INSERT INTO `z_area` VALUES ('382', '和林格尔县', '内蒙古自治区 呼和浩特 和林格尔县', '150100', '150123', '15', '01', '23', '3', '2017-05-11 01:46:10', '2018-08-17 14:27:21', 'helingeerxian', 'h');
INSERT INTO `z_area` VALUES ('383', '清水河县', '内蒙古自治区 呼和浩特 清水河县', '150100', '150124', '15', '01', '24', '3', '2017-05-11 01:46:10', '2018-08-17 14:27:22', 'qingshuihexian', 'q');
INSERT INTO `z_area` VALUES ('384', '武川县', '内蒙古自治区 呼和浩特 武川县', '150100', '150125', '15', '01', '25', '3', '2017-05-11 01:46:10', '2018-08-17 14:27:22', 'wuchuanxian', 'w');
INSERT INTO `z_area` VALUES ('385', '包头', '内蒙古自治区 包头', '150000', '150200', '15', '02', '00', '2', '2017-05-11 01:46:10', '2018-08-16 14:18:30', 'baotou', 'b');
INSERT INTO `z_area` VALUES ('386', '包头市', '内蒙古自治区 包头 包头市', '150200', '150201', '15', '02', '01', '3', '2017-05-11 01:46:10', '2018-08-17 14:27:22', 'baotoushi', 'b');
INSERT INTO `z_area` VALUES ('387', '东河区', '内蒙古自治区 包头 东河区', '150200', '150202', '15', '02', '02', '3', '2017-05-11 01:46:11', '2018-08-17 14:27:22', 'donghequ', 'd');
INSERT INTO `z_area` VALUES ('388', '昆都仑区', '内蒙古自治区 包头 昆都仑区', '150200', '150203', '15', '02', '03', '3', '2017-05-11 01:46:11', '2018-08-17 14:27:22', 'kundoulunqu', 'k');
INSERT INTO `z_area` VALUES ('389', '青山区', '内蒙古自治区 包头 青山区', '150200', '150204', '15', '02', '04', '3', '2017-05-11 01:46:11', '2018-08-17 14:27:22', 'qingshanqu', 'q');
INSERT INTO `z_area` VALUES ('390', '石拐区', '内蒙古自治区 包头 石拐区', '150200', '150205', '15', '02', '05', '3', '2017-05-11 01:46:11', '2018-08-17 14:27:22', 'shiguaiqu', 's');
INSERT INTO `z_area` VALUES ('391', '白云鄂博矿区', '内蒙古自治区 包头 白云鄂博矿区', '150200', '150206', '15', '02', '06', '3', '2017-05-11 01:46:11', '2018-08-17 14:27:23', 'baiyunebokuangqu', 'b');
INSERT INTO `z_area` VALUES ('392', '九原区', '内蒙古自治区 包头 九原区', '150200', '150207', '15', '02', '07', '3', '2017-05-11 01:46:11', '2018-08-17 14:27:23', 'jiuyuanqu', 'j');
INSERT INTO `z_area` VALUES ('393', '土默特右旗', '内蒙古自治区 包头 土默特右旗', '150200', '150221', '15', '02', '21', '3', '2017-05-11 01:46:12', '2018-08-17 14:27:23', 'tumoteyouqi', 't');
INSERT INTO `z_area` VALUES ('394', '固阳县', '内蒙古自治区 包头 固阳县', '150200', '150222', '15', '02', '22', '3', '2017-05-11 01:46:12', '2018-08-17 14:27:23', 'guyangxian', 'g');
INSERT INTO `z_area` VALUES ('395', '达尔罕茂明安联合旗', '内蒙古自治区 包头 达尔罕茂明安联合旗', '150200', '150223', '15', '02', '23', '3', '2017-05-11 01:46:12', '2018-08-17 14:27:23', 'daerhanmaominganlianheqi', 'd');
INSERT INTO `z_area` VALUES ('396', '乌海', '内蒙古自治区 乌海', '150000', '150300', '15', '03', '00', '2', '2017-05-11 01:46:12', '2018-08-16 14:18:32', 'wuhai', 'w');
INSERT INTO `z_area` VALUES ('397', '乌海市', '内蒙古自治区 乌海 乌海市', '150300', '150301', '15', '03', '01', '3', '2017-05-11 01:46:12', '2018-08-17 14:27:23', 'wuhaishi', 'w');
INSERT INTO `z_area` VALUES ('398', '海勃湾区', '内蒙古自治区 乌海 海勃湾区', '150300', '150302', '15', '03', '02', '3', '2017-05-11 01:46:12', '2018-08-17 14:27:23', 'haibowanqu', 'h');
INSERT INTO `z_area` VALUES ('399', '海南区', '内蒙古自治区 乌海 海南区', '150300', '150303', '15', '03', '03', '3', '2017-05-11 01:46:13', '2018-08-17 14:27:24', 'hainanqu', 'h');
INSERT INTO `z_area` VALUES ('400', '乌达区', '内蒙古自治区 乌海 乌达区', '150300', '150304', '15', '03', '04', '3', '2017-05-11 01:46:13', '2018-08-17 14:27:24', 'wudaqu', 'w');
INSERT INTO `z_area` VALUES ('401', '赤峰', '内蒙古自治区 赤峰', '150000', '150400', '15', '04', '00', '2', '2017-05-11 01:46:13', '2018-08-16 14:18:32', 'chifeng', 'c');
INSERT INTO `z_area` VALUES ('402', '赤峰市', '内蒙古自治区 赤峰 赤峰市', '150400', '150401', '15', '04', '01', '3', '2017-05-11 01:46:13', '2018-08-17 14:27:24', 'chifengshi', 'c');
INSERT INTO `z_area` VALUES ('403', '红山区', '内蒙古自治区 赤峰 红山区', '150400', '150402', '15', '04', '02', '3', '2017-05-11 01:46:13', '2018-08-17 14:27:24', 'hongshanqu', 'h');
INSERT INTO `z_area` VALUES ('404', '元宝山区', '内蒙古自治区 赤峰 元宝山区', '150400', '150403', '15', '04', '03', '3', '2017-05-11 01:46:13', '2018-08-17 14:27:24', 'yuanbaoshanqu', 'y');
INSERT INTO `z_area` VALUES ('405', '松山区', '内蒙古自治区 赤峰 松山区', '150400', '150404', '15', '04', '04', '3', '2017-05-11 01:46:13', '2018-08-17 14:27:24', 'songshanqu', 's');
INSERT INTO `z_area` VALUES ('406', '阿鲁科尔沁旗', '内蒙古自治区 赤峰 阿鲁科尔沁旗', '150400', '150421', '15', '04', '21', '3', '2017-05-11 01:46:14', '2018-08-17 14:27:24', 'alukeerqinqi', 'a');
INSERT INTO `z_area` VALUES ('407', '巴林左旗', '内蒙古自治区 赤峰 巴林左旗', '150400', '150422', '15', '04', '22', '3', '2017-05-11 01:46:14', '2018-08-17 14:27:24', 'balinzuoqi', 'b');
INSERT INTO `z_area` VALUES ('408', '巴林右旗', '内蒙古自治区 赤峰 巴林右旗', '150400', '150423', '15', '04', '23', '3', '2017-05-11 01:46:14', '2018-08-17 14:27:25', 'balinyouqi', 'b');
INSERT INTO `z_area` VALUES ('409', '林西县', '内蒙古自治区 赤峰 林西县', '150400', '150424', '15', '04', '24', '3', '2017-05-11 01:46:14', '2018-08-17 14:27:25', 'linxixian', 'l');
INSERT INTO `z_area` VALUES ('410', '克什克腾旗', '内蒙古自治区 赤峰 克什克腾旗', '150400', '150425', '15', '04', '25', '3', '2017-05-11 01:46:14', '2018-08-17 14:27:25', 'keshiketengqi', 'k');
INSERT INTO `z_area` VALUES ('411', '翁牛特旗', '内蒙古自治区 赤峰 翁牛特旗', '150400', '150426', '15', '04', '26', '3', '2017-05-11 01:46:14', '2018-08-17 14:27:25', 'wengniuteqi', 'w');
INSERT INTO `z_area` VALUES ('412', '喀喇沁旗', '内蒙古自治区 赤峰 喀喇沁旗', '150400', '150428', '15', '04', '28', '3', '2017-05-11 01:46:15', '2018-08-17 14:27:25', 'kalaqinqi', 'k');
INSERT INTO `z_area` VALUES ('413', '宁城县', '内蒙古自治区 赤峰 宁城县', '150400', '150429', '15', '04', '29', '3', '2017-05-11 01:46:15', '2018-08-17 14:27:25', 'ningchengxian', 'n');
INSERT INTO `z_area` VALUES ('414', '敖汉旗', '内蒙古自治区 赤峰 敖汉旗', '150400', '150430', '15', '04', '30', '3', '2017-05-11 01:46:15', '2018-08-17 14:27:25', 'aohanqi', 'a');
INSERT INTO `z_area` VALUES ('415', '通辽', '内蒙古自治区 通辽', '150000', '150500', '15', '05', '00', '2', '2017-05-11 01:46:15', '2018-08-16 14:18:38', 'tongliao', 't');
INSERT INTO `z_area` VALUES ('416', '通辽市', '内蒙古自治区 通辽 通辽市', '150500', '150501', '15', '05', '01', '3', '2017-05-11 01:46:15', '2018-08-17 14:27:26', 'tongliaoshi', 't');
INSERT INTO `z_area` VALUES ('417', '科尔沁区', '内蒙古自治区 通辽 科尔沁区', '150500', '150502', '15', '05', '02', '3', '2017-05-11 01:46:15', '2018-08-17 14:27:26', 'keerqinqu', 'k');
INSERT INTO `z_area` VALUES ('418', '科尔沁左翼中旗', '内蒙古自治区 通辽 科尔沁左翼中旗', '150500', '150521', '15', '05', '21', '3', '2017-05-11 01:46:15', '2018-08-17 14:27:26', 'keerqinzuoyizhongqi', 'k');
INSERT INTO `z_area` VALUES ('419', '科尔沁左翼后旗', '内蒙古自治区 通辽 科尔沁左翼后旗', '150500', '150522', '15', '05', '22', '3', '2017-05-11 01:46:16', '2018-08-17 14:27:26', 'keerqinzuoyihouqi', 'k');
INSERT INTO `z_area` VALUES ('420', '开鲁县', '内蒙古自治区 通辽 开鲁县', '150500', '150523', '15', '05', '23', '3', '2017-05-11 01:46:16', '2018-08-17 14:27:26', 'kailuxian', 'k');
INSERT INTO `z_area` VALUES ('421', '库伦旗', '内蒙古自治区 通辽 库伦旗', '150500', '150524', '15', '05', '24', '3', '2017-05-11 01:46:16', '2018-08-17 14:27:26', 'kulunqi', 'k');
INSERT INTO `z_area` VALUES ('422', '奈曼旗', '内蒙古自治区 通辽 奈曼旗', '150500', '150525', '15', '05', '25', '3', '2017-05-11 01:46:16', '2018-08-17 14:27:26', 'naimanqi', 'n');
INSERT INTO `z_area` VALUES ('423', '扎鲁特旗', '内蒙古自治区 通辽 扎鲁特旗', '150500', '150526', '15', '05', '26', '3', '2017-05-11 01:46:16', '2018-08-17 14:27:26', 'zhaluteqi', 'z');
INSERT INTO `z_area` VALUES ('424', '霍林郭勒市', '内蒙古自治区 通辽 霍林郭勒市', '150500', '150581', '15', '05', '81', '3', '2017-05-11 01:46:17', '2018-08-17 14:27:27', 'huolinguoleshi', 'h');
INSERT INTO `z_area` VALUES ('425', '鄂尔多斯', '内蒙古自治区 鄂尔多斯', '150000', '150600', '15', '06', '00', '2', '2017-05-11 01:46:17', '2018-08-16 14:18:39', 'eerduosi', 'e');
INSERT INTO `z_area` VALUES ('426', '鄂尔多斯市', '内蒙古自治区 鄂尔多斯 鄂尔多斯市', '150600', '150601', '15', '06', '01', '3', '2017-05-11 01:46:17', '2018-08-17 14:27:27', 'eerduosishi', 'e');
INSERT INTO `z_area` VALUES ('427', '东胜区', '内蒙古自治区 鄂尔多斯 东胜区', '150600', '150602', '15', '06', '02', '3', '2017-05-11 01:46:17', '2018-08-17 14:27:27', 'dongshengqu', 'd');
INSERT INTO `z_area` VALUES ('428', '达拉特旗', '内蒙古自治区 鄂尔多斯 达拉特旗', '150600', '150621', '15', '06', '21', '3', '2017-05-11 01:46:17', '2018-08-17 14:27:27', 'dalateqi', 'd');
INSERT INTO `z_area` VALUES ('429', '准格尔旗', '内蒙古自治区 鄂尔多斯 准格尔旗', '150600', '150622', '15', '06', '22', '3', '2017-05-11 01:46:17', '2018-08-17 14:27:27', 'zhungeerqi', 'z');
INSERT INTO `z_area` VALUES ('430', '鄂托克前旗', '内蒙古自治区 鄂尔多斯 鄂托克前旗', '150600', '150623', '15', '06', '23', '3', '2017-05-11 01:46:17', '2018-08-17 14:27:28', 'etuokeqianqi', 'e');
INSERT INTO `z_area` VALUES ('431', '鄂托克旗', '内蒙古自治区 鄂尔多斯 鄂托克旗', '150600', '150624', '15', '06', '24', '3', '2017-05-11 01:46:18', '2018-08-17 14:27:28', 'etuokeqi', 'e');
INSERT INTO `z_area` VALUES ('432', '杭锦旗', '内蒙古自治区 鄂尔多斯 杭锦旗', '150600', '150625', '15', '06', '25', '3', '2017-05-11 01:46:18', '2018-08-17 14:27:28', 'hangjinqi', 'h');
INSERT INTO `z_area` VALUES ('433', '乌审旗', '内蒙古自治区 鄂尔多斯 乌审旗', '150600', '150626', '15', '06', '26', '3', '2017-05-11 01:46:18', '2018-08-17 14:27:28', 'wushenqi', 'w');
INSERT INTO `z_area` VALUES ('434', '伊金霍洛旗', '内蒙古自治区 鄂尔多斯 伊金霍洛旗', '150600', '150627', '15', '06', '27', '3', '2017-05-11 01:46:18', '2018-08-17 14:27:28', 'yijinhuoluoqi', 'y');
INSERT INTO `z_area` VALUES ('435', '呼伦贝尔', '内蒙古自治区 呼伦贝尔', '150000', '150700', '15', '07', '00', '2', '2017-05-11 01:46:18', '2018-08-16 14:18:41', 'hulunbeier', 'h');
INSERT INTO `z_area` VALUES ('436', '呼伦贝尔市', '内蒙古自治区 呼伦贝尔 呼伦贝尔市', '150700', '150701', '15', '07', '01', '3', '2017-05-11 01:46:18', '2018-08-17 14:27:28', 'hulunbeiershi', 'h');
INSERT INTO `z_area` VALUES ('437', '海拉尔区', '内蒙古自治区 呼伦贝尔 海拉尔区', '150700', '150702', '15', '07', '02', '3', '2017-05-11 01:46:18', '2018-08-17 14:27:28', 'hailaerqu', 'h');
INSERT INTO `z_area` VALUES ('438', '扎赉诺尔区', '内蒙古自治区 呼伦贝尔 扎赉诺尔区', '150700', '150703', '15', '07', '03', '3', '2017-05-11 01:46:19', '2018-08-17 14:27:29', 'zhalainuoerqu', 'z');
INSERT INTO `z_area` VALUES ('439', '阿荣旗', '内蒙古自治区 呼伦贝尔 阿荣旗', '150700', '150721', '15', '07', '21', '3', '2017-05-11 01:46:19', '2018-08-17 14:27:29', 'arongqi', 'a');
INSERT INTO `z_area` VALUES ('440', '莫力达瓦达斡尔族自治旗', '内蒙古自治区 呼伦贝尔 莫力达瓦达斡尔族自治旗', '150700', '150722', '15', '07', '22', '3', '2017-05-11 01:46:19', '2018-08-17 14:27:29', 'molidawadawoerzuzizhiqi', 'm');
INSERT INTO `z_area` VALUES ('441', '鄂伦春自治旗', '内蒙古自治区 呼伦贝尔 鄂伦春自治旗', '150700', '150723', '15', '07', '23', '3', '2017-05-11 01:46:19', '2018-08-17 14:27:29', 'elunchunzizhiqi', 'e');
INSERT INTO `z_area` VALUES ('442', '鄂温克族自治旗', '内蒙古自治区 呼伦贝尔 鄂温克族自治旗', '150700', '150724', '15', '07', '24', '3', '2017-05-11 01:46:19', '2018-08-17 14:27:29', 'ewenkezuzizhiqi', 'e');
INSERT INTO `z_area` VALUES ('443', '陈巴尔虎旗', '内蒙古自治区 呼伦贝尔 陈巴尔虎旗', '150700', '150725', '15', '07', '25', '3', '2017-05-11 01:46:19', '2018-08-17 14:27:29', 'chenbaerhuqi', 'c');
INSERT INTO `z_area` VALUES ('444', '新巴尔虎左旗', '内蒙古自治区 呼伦贝尔 新巴尔虎左旗', '150700', '150726', '15', '07', '26', '3', '2017-05-11 01:46:20', '2018-08-17 14:27:29', 'xinbaerhuzuoqi', 'x');
INSERT INTO `z_area` VALUES ('445', '新巴尔虎右旗', '内蒙古自治区 呼伦贝尔 新巴尔虎右旗', '150700', '150727', '15', '07', '27', '3', '2017-05-11 01:46:20', '2018-08-17 14:27:30', 'xinbaerhuyouqi', 'x');
INSERT INTO `z_area` VALUES ('446', '满洲里市', '内蒙古自治区 呼伦贝尔 满洲里市', '150700', '150781', '15', '07', '81', '3', '2017-05-11 01:46:20', '2018-08-17 14:27:30', 'manzhoulishi', 'm');
INSERT INTO `z_area` VALUES ('447', '牙克石市', '内蒙古自治区 呼伦贝尔 牙克石市', '150700', '150782', '15', '07', '82', '3', '2017-05-11 01:46:20', '2018-08-17 14:27:30', 'yakeshishi', 'y');
INSERT INTO `z_area` VALUES ('448', '扎兰屯市', '内蒙古自治区 呼伦贝尔 扎兰屯市', '150700', '150783', '15', '07', '83', '3', '2017-05-11 01:46:20', '2018-08-17 14:27:30', 'zhalantunshi', 'z');
INSERT INTO `z_area` VALUES ('449', '额尔古纳市', '内蒙古自治区 呼伦贝尔 额尔古纳市', '150700', '150784', '15', '07', '84', '3', '2017-05-11 01:46:20', '2018-08-17 14:27:30', 'eergunashi', 'e');
INSERT INTO `z_area` VALUES ('450', '根河市', '内蒙古自治区 呼伦贝尔 根河市', '150700', '150785', '15', '07', '85', '3', '2017-05-11 01:46:20', '2018-08-17 14:27:30', 'genheshi', 'g');
INSERT INTO `z_area` VALUES ('451', '巴彦淖尔', '内蒙古自治区 巴彦淖尔', '150000', '150800', '15', '08', '00', '2', '2017-05-11 01:46:21', '2018-08-16 14:18:43', 'bayannaoer', 'b');
INSERT INTO `z_area` VALUES ('452', '巴彦淖尔市', '内蒙古自治区 巴彦淖尔 巴彦淖尔市', '150800', '150801', '15', '08', '01', '3', '2017-05-11 01:46:21', '2018-08-17 14:27:30', 'bayannaoershi', 'b');
INSERT INTO `z_area` VALUES ('453', '临河区', '内蒙古自治区 巴彦淖尔 临河区', '150800', '150802', '15', '08', '02', '3', '2017-05-11 01:46:21', '2018-08-17 14:27:31', 'linhequ', 'l');
INSERT INTO `z_area` VALUES ('454', '五原县', '内蒙古自治区 巴彦淖尔 五原县', '150800', '150821', '15', '08', '21', '3', '2017-05-11 01:46:21', '2018-08-17 14:27:31', 'wuyuanxian', 'w');
INSERT INTO `z_area` VALUES ('455', '磴口县', '内蒙古自治区 巴彦淖尔 磴口县', '150800', '150822', '15', '08', '22', '3', '2017-05-11 01:46:21', '2018-08-17 14:27:31', 'dengkouxian', 'd');
INSERT INTO `z_area` VALUES ('456', '乌拉特前旗', '内蒙古自治区 巴彦淖尔 乌拉特前旗', '150800', '150823', '15', '08', '23', '3', '2017-05-11 01:46:21', '2018-08-17 14:27:31', 'wulateqianqi', 'w');
INSERT INTO `z_area` VALUES ('457', '乌拉特中旗', '内蒙古自治区 巴彦淖尔 乌拉特中旗', '150800', '150824', '15', '08', '24', '3', '2017-05-11 01:46:21', '2018-08-17 14:27:31', 'wulatezhongqi', 'w');
INSERT INTO `z_area` VALUES ('458', '乌拉特后旗', '内蒙古自治区 巴彦淖尔 乌拉特后旗', '150800', '150825', '15', '08', '25', '3', '2017-05-11 01:46:22', '2018-08-17 14:27:31', 'wulatehouqi', 'w');
INSERT INTO `z_area` VALUES ('459', '杭锦后旗', '内蒙古自治区 巴彦淖尔 杭锦后旗', '150800', '150826', '15', '08', '26', '3', '2017-05-11 01:46:22', '2018-08-17 14:27:31', 'hangjinhouqi', 'h');
INSERT INTO `z_area` VALUES ('460', '乌兰察布', '内蒙古自治区 乌兰察布', '150000', '150900', '15', '09', '00', '2', '2017-05-11 01:46:22', '2018-08-16 14:18:44', 'wulanchabu', 'w');
INSERT INTO `z_area` VALUES ('461', '乌兰察布市', '内蒙古自治区 乌兰察布 乌兰察布市', '150900', '150901', '15', '09', '01', '3', '2017-05-11 01:46:22', '2018-08-17 14:27:32', 'wulanchabushi', 'w');
INSERT INTO `z_area` VALUES ('462', '集宁区', '内蒙古自治区 乌兰察布 集宁区', '150900', '150902', '15', '09', '02', '3', '2017-05-11 01:46:22', '2018-08-17 14:27:32', 'jiningqu', 'j');
INSERT INTO `z_area` VALUES ('463', '卓资县', '内蒙古自治区 乌兰察布 卓资县', '150900', '150921', '15', '09', '21', '3', '2017-05-11 01:46:22', '2018-08-17 14:27:32', 'zhuozixian', 'z');
INSERT INTO `z_area` VALUES ('464', '化德县', '内蒙古自治区 乌兰察布 化德县', '150900', '150922', '15', '09', '22', '3', '2017-05-11 01:46:23', '2018-08-17 14:27:32', 'huadexian', 'h');
INSERT INTO `z_area` VALUES ('465', '商都县', '内蒙古自治区 乌兰察布 商都县', '150900', '150923', '15', '09', '23', '3', '2017-05-11 01:46:23', '2018-08-17 14:27:32', 'shangdouxian', 's');
INSERT INTO `z_area` VALUES ('466', '兴和县', '内蒙古自治区 乌兰察布 兴和县', '150900', '150924', '15', '09', '24', '3', '2017-05-11 01:46:23', '2018-08-17 14:27:32', 'xinghexian', 'x');
INSERT INTO `z_area` VALUES ('467', '凉城县', '内蒙古自治区 乌兰察布 凉城县', '150900', '150925', '15', '09', '25', '3', '2017-05-11 01:46:23', '2018-08-17 14:27:33', 'liangchengxian', 'l');
INSERT INTO `z_area` VALUES ('468', '察哈尔右翼前旗', '内蒙古自治区 乌兰察布 察哈尔右翼前旗', '150900', '150926', '15', '09', '26', '3', '2017-05-11 01:46:23', '2018-08-17 14:27:33', 'chahaeryouyiqianqi', 'c');
INSERT INTO `z_area` VALUES ('469', '察哈尔右翼中旗', '内蒙古自治区 乌兰察布 察哈尔右翼中旗', '150900', '150927', '15', '09', '27', '3', '2017-05-11 01:46:23', '2018-08-17 14:27:33', 'chahaeryouyizhongqi', 'c');
INSERT INTO `z_area` VALUES ('470', '察哈尔右翼后旗', '内蒙古自治区 乌兰察布 察哈尔右翼后旗', '150900', '150928', '15', '09', '28', '3', '2017-05-11 01:46:23', '2018-08-17 14:27:33', 'chahaeryouyihouqi', 'c');
INSERT INTO `z_area` VALUES ('471', '四子王旗', '内蒙古自治区 乌兰察布 四子王旗', '150900', '150929', '15', '09', '29', '3', '2017-05-11 01:46:24', '2018-08-17 14:27:33', 'siziwangqi', 's');
INSERT INTO `z_area` VALUES ('472', '丰镇市', '内蒙古自治区 乌兰察布 丰镇市', '150900', '150981', '15', '09', '81', '3', '2017-05-11 01:46:24', '2018-08-17 14:27:33', 'fengzhenshi', 'f');
INSERT INTO `z_area` VALUES ('473', '兴安盟', '内蒙古自治区 兴安盟', '150000', '152200', '15', '22', '00', '2', '2017-05-11 01:46:24', '2018-08-16 14:18:45', 'xinganmeng', 'x');
INSERT INTO `z_area` VALUES ('474', '乌兰浩特市', '内蒙古自治区 兴安盟 乌兰浩特市', '152200', '152201', '15', '22', '01', '3', '2017-05-11 01:46:24', '2018-08-17 14:27:33', 'wulanhaoteshi', 'w');
INSERT INTO `z_area` VALUES ('475', '阿尔山市', '内蒙古自治区 兴安盟 阿尔山市', '152200', '152202', '15', '22', '02', '3', '2017-05-11 01:46:24', '2018-08-17 14:27:33', 'aershanshi', 'a');
INSERT INTO `z_area` VALUES ('476', '科尔沁右翼前旗', '内蒙古自治区 兴安盟 科尔沁右翼前旗', '152200', '152221', '15', '22', '21', '3', '2017-05-11 01:46:24', '2018-08-17 14:27:34', 'keerqinyouyiqianqi', 'k');
INSERT INTO `z_area` VALUES ('477', '科尔沁右翼中旗', '内蒙古自治区 兴安盟 科尔沁右翼中旗', '152200', '152222', '15', '22', '22', '3', '2017-05-11 01:46:24', '2018-08-17 14:27:34', 'keerqinyouyizhongqi', 'k');
INSERT INTO `z_area` VALUES ('478', '扎赉特旗', '内蒙古自治区 兴安盟 扎赉特旗', '152200', '152223', '15', '22', '23', '3', '2017-05-11 01:46:25', '2018-08-17 14:27:34', 'zhalaiteqi', 'z');
INSERT INTO `z_area` VALUES ('479', '突泉县', '内蒙古自治区 兴安盟 突泉县', '152200', '152224', '15', '22', '24', '3', '2017-05-11 01:46:25', '2018-08-17 14:27:34', 'tuquanxian', 't');
INSERT INTO `z_area` VALUES ('480', '锡林郭勒盟', '内蒙古自治区 锡林郭勒盟', '150000', '152500', '15', '25', '00', '2', '2017-05-11 01:46:25', '2018-08-16 14:18:46', 'xilinguolemeng', 'x');
INSERT INTO `z_area` VALUES ('481', '二连浩特市', '内蒙古自治区 锡林郭勒盟 二连浩特市', '152500', '152501', '15', '25', '01', '3', '2017-05-11 01:46:25', '2018-08-17 14:27:34', 'erlianhaoteshi', 'e');
INSERT INTO `z_area` VALUES ('482', '锡林浩特市', '内蒙古自治区 锡林郭勒盟 锡林浩特市', '152500', '152502', '15', '25', '02', '3', '2017-05-11 01:46:25', '2018-08-17 14:27:34', 'xilinhaoteshi', 'x');
INSERT INTO `z_area` VALUES ('483', '阿巴嘎旗', '内蒙古自治区 锡林郭勒盟 阿巴嘎旗', '152500', '152522', '15', '25', '22', '3', '2017-05-11 01:46:25', '2018-08-17 14:27:34', 'abagaqi', 'a');
INSERT INTO `z_area` VALUES ('484', '苏尼特左旗', '内蒙古自治区 锡林郭勒盟 苏尼特左旗', '152500', '152523', '15', '25', '23', '3', '2017-05-11 01:46:25', '2018-08-17 14:27:35', 'sunitezuoqi', 's');
INSERT INTO `z_area` VALUES ('485', '苏尼特右旗', '内蒙古自治区 锡林郭勒盟 苏尼特右旗', '152500', '152524', '15', '25', '24', '3', '2017-05-11 01:46:26', '2018-08-17 14:27:35', 'suniteyouqi', 's');
INSERT INTO `z_area` VALUES ('486', '东乌珠穆沁旗', '内蒙古自治区 锡林郭勒盟 东乌珠穆沁旗', '152500', '152525', '15', '25', '25', '3', '2017-05-11 01:46:26', '2018-08-17 14:27:35', 'dongwuzhumuqinqi', 'd');
INSERT INTO `z_area` VALUES ('487', '西乌珠穆沁旗', '内蒙古自治区 锡林郭勒盟 西乌珠穆沁旗', '152500', '152526', '15', '25', '26', '3', '2017-05-11 01:46:26', '2018-08-17 14:27:35', 'xiwuzhumuqinqi', 'x');
INSERT INTO `z_area` VALUES ('488', '太仆寺旗', '内蒙古自治区 锡林郭勒盟 太仆寺旗', '152500', '152527', '15', '25', '27', '3', '2017-05-11 01:46:26', '2018-08-17 14:27:35', 'taipusiqi', 't');
INSERT INTO `z_area` VALUES ('489', '镶黄旗', '内蒙古自治区 锡林郭勒盟 镶黄旗', '152500', '152528', '15', '25', '28', '3', '2017-05-11 01:46:26', '2018-08-17 14:27:35', 'xianghuangqi', 'x');
INSERT INTO `z_area` VALUES ('490', '正镶白旗', '内蒙古自治区 锡林郭勒盟 正镶白旗', '152500', '152529', '15', '25', '29', '3', '2017-05-11 01:46:26', '2018-08-17 14:27:35', 'zhengxiangbaiqi', 'z');
INSERT INTO `z_area` VALUES ('491', '正蓝旗', '内蒙古自治区 锡林郭勒盟 正蓝旗', '152500', '152530', '15', '25', '30', '3', '2017-05-11 01:46:27', '2018-08-17 14:27:35', 'zhenglanqi', 'z');
INSERT INTO `z_area` VALUES ('492', '多伦县', '内蒙古自治区 锡林郭勒盟 多伦县', '152500', '152531', '15', '25', '31', '3', '2017-05-11 01:46:27', '2018-08-17 14:27:36', 'duolunxian', 'd');
INSERT INTO `z_area` VALUES ('493', '阿拉善盟', '内蒙古自治区 阿拉善盟', '150000', '152900', '15', '29', '00', '2', '2017-05-11 01:46:27', '2018-08-16 14:18:48', 'alashanmeng', 'a');
INSERT INTO `z_area` VALUES ('494', '阿拉善左旗', '内蒙古自治区 阿拉善盟 阿拉善左旗', '152900', '152921', '15', '29', '21', '3', '2017-05-11 01:46:27', '2018-08-17 14:27:36', 'alashanzuoqi', 'a');
INSERT INTO `z_area` VALUES ('495', '阿拉善右旗', '内蒙古自治区 阿拉善盟 阿拉善右旗', '152900', '152922', '15', '29', '22', '3', '2017-05-11 01:46:27', '2018-08-17 14:27:36', 'alashanyouqi', 'a');
INSERT INTO `z_area` VALUES ('496', '额济纳旗', '内蒙古自治区 阿拉善盟 额济纳旗', '152900', '152923', '15', '29', '23', '3', '2017-05-11 01:46:27', '2018-08-17 14:27:36', 'ejinaqi', 'e');
INSERT INTO `z_area` VALUES ('497', '辽宁省', '辽宁省', '', '210000', '21', '00', '00', '1', '2017-05-11 01:46:27', '2017-08-28 14:22:04', 'liaoningsheng', 'l');
INSERT INTO `z_area` VALUES ('498', '沈阳', '辽宁省 沈阳', '210000', '210100', '21', '01', '00', '2', '2017-05-11 01:46:27', '2018-08-16 14:18:48', 'shenyang', 's');
INSERT INTO `z_area` VALUES ('499', '沈阳市', '辽宁省 沈阳 沈阳市', '210100', '210101', '21', '01', '01', '3', '2017-05-11 01:46:28', '2018-08-17 14:27:36', 'shenyangshi', 's');
INSERT INTO `z_area` VALUES ('500', '和平区', '辽宁省 沈阳 和平区', '210100', '210102', '21', '01', '02', '3', '2017-05-11 01:46:28', '2018-08-17 14:27:36', 'hepingqu', 'h');
INSERT INTO `z_area` VALUES ('501', '沈河区', '辽宁省 沈阳 沈河区', '210100', '210103', '21', '01', '03', '3', '2017-05-11 01:46:28', '2018-08-17 14:27:37', 'shenhequ', 's');
INSERT INTO `z_area` VALUES ('502', '大东区', '辽宁省 沈阳 大东区', '210100', '210104', '21', '01', '04', '3', '2017-05-11 01:46:28', '2018-08-17 14:27:37', 'dadongqu', 'd');
INSERT INTO `z_area` VALUES ('503', '皇姑区', '辽宁省 沈阳 皇姑区', '210100', '210105', '21', '01', '05', '3', '2017-05-11 01:46:28', '2018-08-17 14:27:37', 'huangguqu', 'h');
INSERT INTO `z_area` VALUES ('504', '铁西区', '辽宁省 沈阳 铁西区', '210100', '210106', '21', '01', '06', '3', '2017-05-11 01:46:28', '2018-08-17 14:27:37', 'tiexiqu', 't');
INSERT INTO `z_area` VALUES ('505', '苏家屯区', '辽宁省 沈阳 苏家屯区', '210100', '210111', '21', '01', '11', '3', '2017-05-11 01:46:28', '2018-08-17 14:27:37', 'sujiatunqu', 's');
INSERT INTO `z_area` VALUES ('506', '浑南区', '辽宁省 沈阳 浑南区', '210100', '210112', '21', '01', '12', '3', '2017-05-11 01:46:29', '2018-08-17 14:27:37', 'hunnanqu', 'h');
INSERT INTO `z_area` VALUES ('507', '沈北新区', '辽宁省 沈阳 沈北新区', '210100', '210113', '21', '01', '13', '3', '2017-05-11 01:46:29', '2018-08-17 14:27:37', 'shenbeixinqu', 's');
INSERT INTO `z_area` VALUES ('508', '于洪区', '辽宁省 沈阳 于洪区', '210100', '210114', '21', '01', '14', '3', '2017-05-11 01:46:29', '2018-08-17 14:27:38', 'yuhongqu', 'y');
INSERT INTO `z_area` VALUES ('509', '辽中县', '辽宁省 沈阳 辽中县', '210100', '210122', '21', '01', '22', '3', '2017-05-11 01:46:29', '2018-08-17 14:27:38', 'liaozhongxian', 'l');
INSERT INTO `z_area` VALUES ('510', '康平县', '辽宁省 沈阳 康平县', '210100', '210123', '21', '01', '23', '3', '2017-05-11 01:46:29', '2018-08-17 14:27:38', 'kangpingxian', 'k');
INSERT INTO `z_area` VALUES ('511', '法库县', '辽宁省 沈阳 法库县', '210100', '210124', '21', '01', '24', '3', '2017-05-11 01:46:29', '2018-08-17 14:27:38', 'fakuxian', 'f');
INSERT INTO `z_area` VALUES ('512', '新民市', '辽宁省 沈阳 新民市', '210100', '210181', '21', '01', '81', '3', '2017-05-11 01:46:30', '2018-08-17 14:27:38', 'xinminshi', 'x');
INSERT INTO `z_area` VALUES ('513', '大连', '辽宁省 大连', '210000', '210200', '21', '02', '00', '2', '2017-05-11 01:46:30', '2018-08-16 14:18:50', 'dalian', 'd');
INSERT INTO `z_area` VALUES ('514', '大连市', '辽宁省 大连 大连市', '210200', '210201', '21', '02', '01', '3', '2017-05-11 01:46:30', '2018-08-17 14:27:38', 'dalianshi', 'd');
INSERT INTO `z_area` VALUES ('515', '中山区', '辽宁省 大连 中山区', '210200', '210202', '21', '02', '02', '3', '2017-05-11 01:46:30', '2018-08-17 14:27:38', 'zhongshanqu', 'z');
INSERT INTO `z_area` VALUES ('516', '西岗区', '辽宁省 大连 西岗区', '210200', '210203', '21', '02', '03', '3', '2017-05-11 01:46:30', '2018-08-17 14:27:39', 'xigangqu', 'x');
INSERT INTO `z_area` VALUES ('517', '沙河口区', '辽宁省 大连 沙河口区', '210200', '210204', '21', '02', '04', '3', '2017-05-11 01:46:30', '2018-08-17 14:27:39', 'shahekouqu', 's');
INSERT INTO `z_area` VALUES ('518', '甘井子区', '辽宁省 大连 甘井子区', '210200', '210211', '21', '02', '11', '3', '2017-05-11 01:46:30', '2018-08-17 14:27:39', 'ganjingziqu', 'g');
INSERT INTO `z_area` VALUES ('519', '旅顺口区', '辽宁省 大连 旅顺口区', '210200', '210212', '21', '02', '12', '3', '2017-05-11 01:46:31', '2018-08-17 14:27:39', 'lvshunkouqu', 'l');
INSERT INTO `z_area` VALUES ('520', '金州区', '辽宁省 大连 金州区', '210200', '210213', '21', '02', '13', '3', '2017-05-11 01:46:31', '2018-08-17 14:27:39', 'jinzhouqu', 'j');
INSERT INTO `z_area` VALUES ('521', '长海县', '辽宁省 大连 长海县', '210200', '210224', '21', '02', '24', '3', '2017-05-11 01:46:31', '2018-08-17 14:27:39', 'changhaixian', 'c');
INSERT INTO `z_area` VALUES ('522', '瓦房店市', '辽宁省 大连 瓦房店市', '210200', '210281', '21', '02', '81', '3', '2017-05-11 01:46:31', '2018-08-17 14:27:39', 'wafangdianshi', 'w');
INSERT INTO `z_area` VALUES ('523', '普兰店市', '辽宁省 大连 普兰店市', '210200', '210282', '21', '02', '82', '3', '2017-05-11 01:46:31', '2018-08-17 14:27:39', 'pulandianshi', 'p');
INSERT INTO `z_area` VALUES ('524', '庄河市', '辽宁省 大连 庄河市', '210200', '210283', '21', '02', '83', '3', '2017-05-11 01:46:31', '2018-08-17 14:27:40', 'zhuangheshi', 'z');
INSERT INTO `z_area` VALUES ('525', '鞍山', '辽宁省 鞍山', '210000', '210300', '21', '03', '00', '2', '2017-05-11 01:46:31', '2018-08-16 14:18:52', 'anshan', 'a');
INSERT INTO `z_area` VALUES ('526', '鞍山市', '辽宁省 鞍山 鞍山市', '210300', '210301', '21', '03', '01', '3', '2017-05-11 01:46:32', '2018-08-17 14:27:40', 'anshanshi', 'a');
INSERT INTO `z_area` VALUES ('527', '铁东区', '辽宁省 鞍山 铁东区', '210300', '210302', '21', '03', '02', '3', '2017-05-11 01:46:32', '2018-08-17 14:27:40', 'tiedongqu', 't');
INSERT INTO `z_area` VALUES ('528', '铁西区', '辽宁省 鞍山 铁西区', '210300', '210303', '21', '03', '03', '3', '2017-05-11 01:46:32', '2018-08-17 14:27:40', 'tiexiqu', 't');
INSERT INTO `z_area` VALUES ('529', '立山区', '辽宁省 鞍山 立山区', '210300', '210304', '21', '03', '04', '3', '2017-05-11 01:46:32', '2018-08-17 14:27:40', 'lishanqu', 'l');
INSERT INTO `z_area` VALUES ('530', '千山区', '辽宁省 鞍山 千山区', '210300', '210311', '21', '03', '11', '3', '2017-05-11 01:46:32', '2018-08-17 14:27:40', 'qianshanqu', 'q');
INSERT INTO `z_area` VALUES ('531', '台安县', '辽宁省 鞍山 台安县', '210300', '210321', '21', '03', '21', '3', '2017-05-11 01:46:32', '2018-08-17 14:27:41', 'taianxian', 't');
INSERT INTO `z_area` VALUES ('532', '岫岩满族自治县', '辽宁省 鞍山 岫岩满族自治县', '210300', '210323', '21', '03', '23', '3', '2017-05-11 01:46:32', '2018-08-17 14:27:41', 'xiuyanmanzuzizhixian', 'x');
INSERT INTO `z_area` VALUES ('533', '海城市', '辽宁省 鞍山 海城市', '210300', '210381', '21', '03', '81', '3', '2017-05-11 01:46:33', '2018-08-17 14:27:41', 'haichengshi', 'h');
INSERT INTO `z_area` VALUES ('534', '抚顺', '辽宁省 抚顺', '210000', '210400', '21', '04', '00', '2', '2017-05-11 01:46:33', '2018-08-16 14:18:53', 'fushun', 'f');
INSERT INTO `z_area` VALUES ('535', '抚顺市', '辽宁省 抚顺 抚顺市', '210400', '210401', '21', '04', '01', '3', '2017-05-11 01:46:33', '2018-08-17 14:27:41', 'fushunshi', 'f');
INSERT INTO `z_area` VALUES ('536', '新抚区', '辽宁省 抚顺 新抚区', '210400', '210402', '21', '04', '02', '3', '2017-05-11 01:46:33', '2018-08-17 14:27:41', 'xinfuqu', 'x');
INSERT INTO `z_area` VALUES ('537', '东洲区', '辽宁省 抚顺 东洲区', '210400', '210403', '21', '04', '03', '3', '2017-05-11 01:46:33', '2018-08-17 14:27:41', 'dongzhouqu', 'd');
INSERT INTO `z_area` VALUES ('538', '望花区', '辽宁省 抚顺 望花区', '210400', '210404', '21', '04', '04', '3', '2017-05-11 01:46:33', '2018-08-17 14:27:41', 'wanghuaqu', 'w');
INSERT INTO `z_area` VALUES ('539', '顺城区', '辽宁省 抚顺 顺城区', '210400', '210411', '21', '04', '11', '3', '2017-05-11 01:46:34', '2018-08-17 14:27:42', 'shunchengqu', 's');
INSERT INTO `z_area` VALUES ('540', '抚顺县', '辽宁省 抚顺 抚顺县', '210400', '210421', '21', '04', '21', '3', '2017-05-11 01:46:34', '2018-08-17 14:27:42', 'fushunxian', 'f');
INSERT INTO `z_area` VALUES ('541', '新宾满族自治县', '辽宁省 抚顺 新宾满族自治县', '210400', '210422', '21', '04', '22', '3', '2017-05-11 01:46:34', '2018-08-17 14:27:42', 'xinbinmanzuzizhixian', 'x');
INSERT INTO `z_area` VALUES ('542', '清原满族自治县', '辽宁省 抚顺 清原满族自治县', '210400', '210423', '21', '04', '23', '3', '2017-05-11 01:46:34', '2018-08-17 14:27:42', 'qingyuanmanzuzizhixian', 'q');
INSERT INTO `z_area` VALUES ('543', '本溪', '辽宁省 本溪', '210000', '210500', '21', '05', '00', '2', '2017-05-11 01:46:34', '2018-08-16 14:18:54', 'benxi', 'b');
INSERT INTO `z_area` VALUES ('544', '本溪市', '辽宁省 本溪 本溪市', '210500', '210501', '21', '05', '01', '3', '2017-05-11 01:46:34', '2018-08-17 14:27:42', 'benxishi', 'b');
INSERT INTO `z_area` VALUES ('545', '平山区', '辽宁省 本溪 平山区', '210500', '210502', '21', '05', '02', '3', '2017-05-11 01:46:34', '2018-08-17 14:27:42', 'pingshanqu', 'p');
INSERT INTO `z_area` VALUES ('546', '溪湖区', '辽宁省 本溪 溪湖区', '210500', '210503', '21', '05', '03', '3', '2017-05-11 01:46:35', '2018-08-17 14:27:42', 'xihuqu', 'x');
INSERT INTO `z_area` VALUES ('547', '明山区', '辽宁省 本溪 明山区', '210500', '210504', '21', '05', '04', '3', '2017-05-11 01:46:35', '2018-08-17 14:27:43', 'mingshanqu', 'm');
INSERT INTO `z_area` VALUES ('548', '南芬区', '辽宁省 本溪 南芬区', '210500', '210505', '21', '05', '05', '3', '2017-05-11 01:46:35', '2018-08-17 14:27:43', 'nanfenqu', 'n');
INSERT INTO `z_area` VALUES ('549', '本溪满族自治县', '辽宁省 本溪 本溪满族自治县', '210500', '210521', '21', '05', '21', '3', '2017-05-11 01:46:35', '2018-08-17 14:27:43', 'benximanzuzizhixian', 'b');
INSERT INTO `z_area` VALUES ('550', '桓仁满族自治县', '辽宁省 本溪 桓仁满族自治县', '210500', '210522', '21', '05', '22', '3', '2017-05-11 01:46:35', '2018-08-17 14:27:43', 'huanrenmanzuzizhixian', 'h');
INSERT INTO `z_area` VALUES ('551', '丹东', '辽宁省 丹东', '210000', '210600', '21', '06', '00', '2', '2017-05-11 01:46:35', '2018-08-16 14:18:55', 'dandong', 'd');
INSERT INTO `z_area` VALUES ('552', '丹东市', '辽宁省 丹东 丹东市', '210600', '210601', '21', '06', '01', '3', '2017-05-11 01:46:35', '2018-08-17 14:27:43', 'dandongshi', 'd');
INSERT INTO `z_area` VALUES ('553', '元宝区', '辽宁省 丹东 元宝区', '210600', '210602', '21', '06', '02', '3', '2017-05-11 01:46:36', '2018-08-17 14:27:43', 'yuanbaoqu', 'y');
INSERT INTO `z_area` VALUES ('554', '振兴区', '辽宁省 丹东 振兴区', '210600', '210603', '21', '06', '03', '3', '2017-05-11 01:46:36', '2018-08-17 14:27:43', 'zhenxingqu', 'z');
INSERT INTO `z_area` VALUES ('555', '振安区', '辽宁省 丹东 振安区', '210600', '210604', '21', '06', '04', '3', '2017-05-11 01:46:36', '2018-08-17 14:27:44', 'zhenanqu', 'z');
INSERT INTO `z_area` VALUES ('556', '宽甸满族自治县', '辽宁省 丹东 宽甸满族自治县', '210600', '210624', '21', '06', '24', '3', '2017-05-11 01:46:36', '2018-08-17 14:27:44', 'kuandianmanzuzizhixian', 'k');
INSERT INTO `z_area` VALUES ('557', '东港市', '辽宁省 丹东 东港市', '210600', '210681', '21', '06', '81', '3', '2017-05-11 01:46:36', '2018-08-17 14:27:44', 'donggangshi', 'd');
INSERT INTO `z_area` VALUES ('558', '凤城市', '辽宁省 丹东 凤城市', '210600', '210682', '21', '06', '82', '3', '2017-05-11 01:46:36', '2018-08-17 14:27:44', 'fengchengshi', 'f');
INSERT INTO `z_area` VALUES ('559', '锦州', '辽宁省 锦州', '210000', '210700', '21', '07', '00', '2', '2017-05-11 01:46:36', '2018-08-16 14:18:56', 'jinzhou', 'j');
INSERT INTO `z_area` VALUES ('560', '锦州市', '辽宁省 锦州 锦州市', '210700', '210701', '21', '07', '01', '3', '2017-05-11 01:46:37', '2018-08-17 14:27:44', 'jinzhoushi', 'j');
INSERT INTO `z_area` VALUES ('561', '古塔区', '辽宁省 锦州 古塔区', '210700', '210702', '21', '07', '02', '3', '2017-05-11 01:46:37', '2018-08-17 14:27:44', 'gutaqu', 'g');
INSERT INTO `z_area` VALUES ('562', '凌河区', '辽宁省 锦州 凌河区', '210700', '210703', '21', '07', '03', '3', '2017-05-11 01:46:37', '2018-08-17 14:27:44', 'linghequ', 'l');
INSERT INTO `z_area` VALUES ('563', '太和区', '辽宁省 锦州 太和区', '210700', '210711', '21', '07', '11', '3', '2017-05-11 01:46:37', '2018-08-17 14:27:45', 'taihequ', 't');
INSERT INTO `z_area` VALUES ('564', '黑山县', '辽宁省 锦州 黑山县', '210700', '210726', '21', '07', '26', '3', '2017-05-11 01:46:37', '2018-08-17 14:27:45', 'heishanxian', 'h');
INSERT INTO `z_area` VALUES ('565', '义县', '辽宁省 锦州 义县', '210700', '210727', '21', '07', '27', '3', '2017-05-11 01:46:37', '2018-08-17 14:27:45', 'yixian', 'y');
INSERT INTO `z_area` VALUES ('566', '凌海市', '辽宁省 锦州 凌海市', '210700', '210781', '21', '07', '81', '3', '2017-05-11 01:46:37', '2018-08-17 14:27:45', 'linghaishi', 'l');
INSERT INTO `z_area` VALUES ('567', '北镇市', '辽宁省 锦州 北镇市', '210700', '210782', '21', '07', '82', '3', '2017-05-11 01:46:38', '2018-08-17 14:27:45', 'beizhenshi', 'b');
INSERT INTO `z_area` VALUES ('568', '营口', '辽宁省 营口', '210000', '210800', '21', '08', '00', '2', '2017-05-11 01:46:38', '2018-08-16 14:18:57', 'yingkou', 'y');
INSERT INTO `z_area` VALUES ('569', '营口市', '辽宁省 营口 营口市', '210800', '210801', '21', '08', '01', '3', '2017-05-11 01:46:38', '2018-08-17 14:27:45', 'yingkoushi', 'y');
INSERT INTO `z_area` VALUES ('570', '站前区', '辽宁省 营口 站前区', '210800', '210802', '21', '08', '02', '3', '2017-05-11 01:46:38', '2018-08-17 14:27:45', 'zhanqianqu', 'z');
INSERT INTO `z_area` VALUES ('571', '西市区', '辽宁省 营口 西市区', '210800', '210803', '21', '08', '03', '3', '2017-05-11 01:46:38', '2018-08-17 14:27:45', 'xishiqu', 'x');
INSERT INTO `z_area` VALUES ('572', '鲅鱼圈区', '辽宁省 营口 鲅鱼圈区', '210800', '210804', '21', '08', '04', '3', '2017-05-11 01:46:38', '2018-08-17 14:27:46', 'bayuquanqu', 'b');
INSERT INTO `z_area` VALUES ('573', '老边区', '辽宁省 营口 老边区', '210800', '210811', '21', '08', '11', '3', '2017-05-11 01:46:38', '2018-08-17 14:27:46', 'laobianqu', 'l');
INSERT INTO `z_area` VALUES ('574', '盖州市', '辽宁省 营口 盖州市', '210800', '210881', '21', '08', '81', '3', '2017-05-11 01:46:39', '2018-08-17 14:27:46', 'gaizhoushi', 'g');
INSERT INTO `z_area` VALUES ('575', '大石桥市', '辽宁省 营口 大石桥市', '210800', '210882', '21', '08', '82', '3', '2017-05-11 01:46:39', '2018-08-17 14:27:46', 'dashiqiaoshi', 'd');
INSERT INTO `z_area` VALUES ('576', '阜新', '辽宁省 阜新', '210000', '210900', '21', '09', '00', '2', '2017-05-11 01:46:39', '2018-08-16 14:18:58', 'fuxin', 'f');
INSERT INTO `z_area` VALUES ('577', '阜新市', '辽宁省 阜新 阜新市', '210900', '210901', '21', '09', '01', '3', '2017-05-11 01:46:39', '2018-08-17 14:27:46', 'fuxinshi', 'f');
INSERT INTO `z_area` VALUES ('578', '海州区', '辽宁省 阜新 海州区', '210900', '210902', '21', '09', '02', '3', '2017-05-11 01:46:39', '2018-08-17 14:27:46', 'haizhouqu', 'h');
INSERT INTO `z_area` VALUES ('579', '新邱区', '辽宁省 阜新 新邱区', '210900', '210903', '21', '09', '03', '3', '2017-05-11 01:46:39', '2018-08-17 14:27:46', 'xinqiuqu', 'x');
INSERT INTO `z_area` VALUES ('580', '太平区', '辽宁省 阜新 太平区', '210900', '210904', '21', '09', '04', '3', '2017-05-11 01:46:40', '2018-08-17 14:27:47', 'taipingqu', 't');
INSERT INTO `z_area` VALUES ('581', '清河门区', '辽宁省 阜新 清河门区', '210900', '210905', '21', '09', '05', '3', '2017-05-11 01:46:40', '2018-08-17 14:27:47', 'qinghemenqu', 'q');
INSERT INTO `z_area` VALUES ('582', '细河区', '辽宁省 阜新 细河区', '210900', '210911', '21', '09', '11', '3', '2017-05-11 01:46:40', '2018-08-17 14:27:47', 'xihequ', 'x');
INSERT INTO `z_area` VALUES ('583', '阜新蒙古族自治县', '辽宁省 阜新 阜新蒙古族自治县', '210900', '210921', '21', '09', '21', '3', '2017-05-11 01:46:40', '2018-08-17 14:27:47', 'fuxinmengguzuzizhixian', 'f');
INSERT INTO `z_area` VALUES ('584', '彰武县', '辽宁省 阜新 彰武县', '210900', '210922', '21', '09', '22', '3', '2017-05-11 01:46:40', '2018-08-17 14:27:47', 'zhangwuxian', 'z');
INSERT INTO `z_area` VALUES ('585', '辽阳', '辽宁省 辽阳', '210000', '211000', '21', '10', '00', '2', '2017-05-11 01:46:40', '2018-08-16 14:18:59', 'liaoyang', 'l');
INSERT INTO `z_area` VALUES ('586', '辽阳市', '辽宁省 辽阳 辽阳市', '211000', '211001', '21', '10', '01', '3', '2017-05-11 01:46:40', '2018-08-17 14:27:47', 'liaoyangshi', 'l');
INSERT INTO `z_area` VALUES ('587', '白塔区', '辽宁省 辽阳 白塔区', '211000', '211002', '21', '10', '02', '3', '2017-05-11 01:46:41', '2018-08-17 14:27:47', 'baitaqu', 'b');
INSERT INTO `z_area` VALUES ('588', '文圣区', '辽宁省 辽阳 文圣区', '211000', '211003', '21', '10', '03', '3', '2017-05-11 01:46:41', '2018-08-17 14:27:48', 'wenshengqu', 'w');
INSERT INTO `z_area` VALUES ('589', '宏伟区', '辽宁省 辽阳 宏伟区', '211000', '211004', '21', '10', '04', '3', '2017-05-11 01:46:41', '2018-08-17 14:27:48', 'hongweiqu', 'h');
INSERT INTO `z_area` VALUES ('590', '弓长岭区', '辽宁省 辽阳 弓长岭区', '211000', '211005', '21', '10', '05', '3', '2017-05-11 01:46:41', '2018-08-17 14:27:48', 'gongchanglingqu', 'g');
INSERT INTO `z_area` VALUES ('591', '太子河区', '辽宁省 辽阳 太子河区', '211000', '211011', '21', '10', '11', '3', '2017-05-11 01:46:41', '2018-08-17 14:27:48', 'taizihequ', 't');
INSERT INTO `z_area` VALUES ('592', '辽阳县', '辽宁省 辽阳 辽阳县', '211000', '211021', '21', '10', '21', '3', '2017-05-11 01:46:41', '2018-08-17 14:27:48', 'liaoyangxian', 'l');
INSERT INTO `z_area` VALUES ('593', '灯塔市', '辽宁省 辽阳 灯塔市', '211000', '211081', '21', '10', '81', '3', '2017-05-11 01:46:41', '2018-08-17 14:27:48', 'dengtashi', 'd');
INSERT INTO `z_area` VALUES ('594', '盘锦', '辽宁省 盘锦', '210000', '211100', '21', '11', '00', '2', '2017-05-11 01:46:42', '2018-08-16 14:19:00', 'panjin', 'p');
INSERT INTO `z_area` VALUES ('595', '盘锦市', '辽宁省 盘锦 盘锦市', '211100', '211101', '21', '11', '01', '3', '2017-05-11 01:46:42', '2018-08-17 14:27:48', 'panjinshi', 'p');
INSERT INTO `z_area` VALUES ('596', '双台子区', '辽宁省 盘锦 双台子区', '211100', '211102', '21', '11', '02', '3', '2017-05-11 01:46:42', '2018-08-17 14:27:49', 'shuangtaiziqu', 's');
INSERT INTO `z_area` VALUES ('597', '兴隆台区', '辽宁省 盘锦 兴隆台区', '211100', '211103', '21', '11', '03', '3', '2017-05-11 01:46:42', '2018-08-17 14:27:49', 'xinglongtaiqu', 'x');
INSERT INTO `z_area` VALUES ('598', '大洼县', '辽宁省 盘锦 大洼县', '211100', '211121', '21', '11', '21', '3', '2017-05-11 01:46:42', '2018-08-17 14:27:49', 'dawaxian', 'd');
INSERT INTO `z_area` VALUES ('599', '盘山县', '辽宁省 盘锦 盘山县', '211100', '211122', '21', '11', '22', '3', '2017-05-11 01:46:42', '2018-08-17 14:27:49', 'panshanxian', 'p');
INSERT INTO `z_area` VALUES ('600', '铁岭', '辽宁省 铁岭', '210000', '211200', '21', '12', '00', '2', '2017-05-11 01:46:42', '2018-08-16 14:19:01', 'tieling', 't');
INSERT INTO `z_area` VALUES ('601', '铁岭市', '辽宁省 铁岭 铁岭市', '211200', '211201', '21', '12', '01', '3', '2017-05-11 01:46:43', '2018-08-17 14:27:49', 'tielingshi', 't');
INSERT INTO `z_area` VALUES ('602', '银州区', '辽宁省 铁岭 银州区', '211200', '211202', '21', '12', '02', '3', '2017-05-11 01:46:43', '2018-08-17 14:27:49', 'yinzhouqu', 'y');
INSERT INTO `z_area` VALUES ('603', '清河区', '辽宁省 铁岭 清河区', '211200', '211204', '21', '12', '04', '3', '2017-05-11 01:46:43', '2018-08-17 14:27:49', 'qinghequ', 'q');
INSERT INTO `z_area` VALUES ('604', '铁岭县', '辽宁省 铁岭 铁岭县', '211200', '211221', '21', '12', '21', '3', '2017-05-11 01:46:43', '2018-08-17 14:27:50', 'tielingxian', 't');
INSERT INTO `z_area` VALUES ('605', '西丰县', '辽宁省 铁岭 西丰县', '211200', '211223', '21', '12', '23', '3', '2017-05-11 01:46:43', '2018-08-17 14:27:50', 'xifengxian', 'x');
INSERT INTO `z_area` VALUES ('606', '昌图县', '辽宁省 铁岭 昌图县', '211200', '211224', '21', '12', '24', '3', '2017-05-11 01:46:43', '2018-08-17 14:27:50', 'changtuxian', 'c');
INSERT INTO `z_area` VALUES ('607', '调兵山市', '辽宁省 铁岭 调兵山市', '211200', '211281', '21', '12', '81', '3', '2017-05-11 01:46:43', '2018-08-17 14:27:50', 'diaobingshanshi', 'd');
INSERT INTO `z_area` VALUES ('608', '开原市', '辽宁省 铁岭 开原市', '211200', '211282', '21', '12', '82', '3', '2017-05-11 01:46:44', '2018-08-17 14:27:50', 'kaiyuanshi', 'k');
INSERT INTO `z_area` VALUES ('609', '朝阳', '辽宁省 朝阳', '210000', '211300', '21', '13', '00', '2', '2017-05-11 01:46:44', '2018-08-16 14:19:02', 'chaoyang', 'c');
INSERT INTO `z_area` VALUES ('610', '朝阳市', '辽宁省 朝阳 朝阳市', '211300', '211301', '21', '13', '01', '3', '2017-05-11 01:46:44', '2018-08-17 14:27:50', 'chaoyangshi', 'c');
INSERT INTO `z_area` VALUES ('611', '双塔区', '辽宁省 朝阳 双塔区', '211300', '211302', '21', '13', '02', '3', '2017-05-11 01:46:44', '2018-08-17 14:27:50', 'shuangtaqu', 's');
INSERT INTO `z_area` VALUES ('612', '龙城区', '辽宁省 朝阳 龙城区', '211300', '211303', '21', '13', '03', '3', '2017-05-11 01:46:44', '2018-08-17 14:27:50', 'longchengqu', 'l');
INSERT INTO `z_area` VALUES ('613', '朝阳县', '辽宁省 朝阳 朝阳县', '211300', '211321', '21', '13', '21', '3', '2017-05-11 01:46:44', '2018-08-17 14:27:51', 'chaoyangxian', 'c');
INSERT INTO `z_area` VALUES ('614', '建平县', '辽宁省 朝阳 建平县', '211300', '211322', '21', '13', '22', '3', '2017-05-11 01:46:44', '2018-08-17 14:27:51', 'jianpingxian', 'j');
INSERT INTO `z_area` VALUES ('615', '喀喇沁左翼蒙古族自治县', '辽宁省 朝阳 喀喇沁左翼蒙古族自治县', '211300', '211324', '21', '13', '24', '3', '2017-05-11 01:46:45', '2018-08-17 14:27:51', 'kalaqinzuoyimengguzuzizhixian', 'k');
INSERT INTO `z_area` VALUES ('616', '北票市', '辽宁省 朝阳 北票市', '211300', '211381', '21', '13', '81', '3', '2017-05-11 01:46:45', '2018-08-17 14:27:51', 'beipiaoshi', 'b');
INSERT INTO `z_area` VALUES ('617', '凌源市', '辽宁省 朝阳 凌源市', '211300', '211382', '21', '13', '82', '3', '2017-05-11 01:46:45', '2018-08-17 14:27:51', 'lingyuanshi', 'l');
INSERT INTO `z_area` VALUES ('618', '葫芦岛', '辽宁省 葫芦岛', '210000', '211400', '21', '14', '00', '2', '2017-05-11 01:46:45', '2018-08-16 14:19:03', 'huludao', 'h');
INSERT INTO `z_area` VALUES ('619', '葫芦岛市', '辽宁省 葫芦岛 葫芦岛市', '211400', '211401', '21', '14', '01', '3', '2017-05-11 01:46:45', '2018-08-17 14:27:51', 'huludaoshi', 'h');
INSERT INTO `z_area` VALUES ('620', '连山区', '辽宁省 葫芦岛 连山区', '211400', '211402', '21', '14', '02', '3', '2017-05-11 01:46:45', '2018-08-17 14:27:52', 'lianshanqu', 'l');
INSERT INTO `z_area` VALUES ('621', '龙港区', '辽宁省 葫芦岛 龙港区', '211400', '211403', '21', '14', '03', '3', '2017-05-11 01:46:45', '2018-08-17 14:27:52', 'longgangqu', 'l');
INSERT INTO `z_area` VALUES ('622', '南票区', '辽宁省 葫芦岛 南票区', '211400', '211404', '21', '14', '04', '3', '2017-05-11 01:46:46', '2018-08-17 14:27:52', 'nanpiaoqu', 'n');
INSERT INTO `z_area` VALUES ('623', '绥中县', '辽宁省 葫芦岛 绥中县', '211400', '211421', '21', '14', '21', '3', '2017-05-11 01:46:46', '2018-08-17 14:27:52', 'suizhongxian', 's');
INSERT INTO `z_area` VALUES ('624', '建昌县', '辽宁省 葫芦岛 建昌县', '211400', '211422', '21', '14', '22', '3', '2017-05-11 01:46:46', '2018-08-17 14:27:52', 'jianchangxian', 'j');
INSERT INTO `z_area` VALUES ('625', '兴城市', '辽宁省 葫芦岛 兴城市', '211400', '211481', '21', '14', '81', '3', '2017-05-11 01:46:46', '2018-08-17 14:27:52', 'xingchengshi', 'x');
INSERT INTO `z_area` VALUES ('626', '吉林省', '吉林省', '', '220000', '22', '00', '00', '1', '2017-05-11 01:46:46', '2017-08-28 14:22:14', 'jilinsheng', 'j');
INSERT INTO `z_area` VALUES ('627', '长春', '吉林省 长春', '220000', '220100', '22', '01', '00', '2', '2017-05-11 01:46:46', '2018-08-16 14:19:04', 'changchun', 'c');
INSERT INTO `z_area` VALUES ('628', '长春市', '吉林省 长春 长春市', '220100', '220101', '22', '01', '01', '3', '2017-05-11 01:46:46', '2018-08-17 14:27:53', 'changchunshi', 'c');
INSERT INTO `z_area` VALUES ('629', '南关区', '吉林省 长春 南关区', '220100', '220102', '22', '01', '02', '3', '2017-05-11 01:46:47', '2018-08-17 14:27:53', 'nanguanqu', 'n');
INSERT INTO `z_area` VALUES ('630', '宽城区', '吉林省 长春 宽城区', '220100', '220103', '22', '01', '03', '3', '2017-05-11 01:46:47', '2018-08-17 14:27:53', 'kuanchengqu', 'k');
INSERT INTO `z_area` VALUES ('631', '朝阳区', '吉林省 长春 朝阳区', '220100', '220104', '22', '01', '04', '3', '2017-05-11 01:46:47', '2018-08-17 14:27:53', 'chaoyangqu', 'c');
INSERT INTO `z_area` VALUES ('632', '二道区', '吉林省 长春 二道区', '220100', '220105', '22', '01', '05', '3', '2017-05-11 01:46:47', '2018-08-17 14:27:53', 'erdaoqu', 'e');
INSERT INTO `z_area` VALUES ('633', '绿园区', '吉林省 长春 绿园区', '220100', '220106', '22', '01', '06', '3', '2017-05-11 01:46:47', '2018-08-17 14:27:53', 'lvyuanqu', 'l');
INSERT INTO `z_area` VALUES ('634', '双阳区', '吉林省 长春 双阳区', '220100', '220112', '22', '01', '12', '3', '2017-05-11 01:46:47', '2018-08-17 14:27:53', 'shuangyangqu', 's');
INSERT INTO `z_area` VALUES ('635', '九台区', '吉林省 长春 九台区', '220100', '220113', '22', '01', '13', '3', '2017-05-11 01:46:47', '2018-08-17 14:27:54', 'jiutaiqu', 'j');
INSERT INTO `z_area` VALUES ('636', '农安县', '吉林省 长春 农安县', '220100', '220122', '22', '01', '22', '3', '2017-05-11 01:46:48', '2018-08-17 14:27:54', 'nonganxian', 'n');
INSERT INTO `z_area` VALUES ('637', '榆树市', '吉林省 长春 榆树市', '220100', '220182', '22', '01', '82', '3', '2017-05-11 01:46:48', '2018-08-17 14:27:54', 'yushushi', 'y');
INSERT INTO `z_area` VALUES ('638', '德惠市', '吉林省 长春 德惠市', '220100', '220183', '22', '01', '83', '3', '2017-05-11 01:46:48', '2018-08-17 14:27:54', 'dehuishi', 'd');
INSERT INTO `z_area` VALUES ('639', '吉林', '吉林省 吉林', '220000', '220200', '22', '02', '00', '2', '2017-05-11 01:46:48', '2018-08-16 14:19:06', 'jilin', 'j');
INSERT INTO `z_area` VALUES ('640', '吉林市', '吉林省 吉林 吉林市', '220200', '220201', '22', '02', '01', '3', '2017-05-11 01:46:48', '2018-08-17 14:27:54', 'jilinshi', 'j');
INSERT INTO `z_area` VALUES ('641', '昌邑区', '吉林省 吉林 昌邑区', '220200', '220202', '22', '02', '02', '3', '2017-05-11 01:46:48', '2018-08-17 14:27:54', 'changyiqu', 'c');
INSERT INTO `z_area` VALUES ('642', '龙潭区', '吉林省 吉林 龙潭区', '220200', '220203', '22', '02', '03', '3', '2017-05-11 01:46:48', '2018-08-17 14:27:54', 'longtanqu', 'l');
INSERT INTO `z_area` VALUES ('643', '船营区', '吉林省 吉林 船营区', '220200', '220204', '22', '02', '04', '3', '2017-05-11 01:46:49', '2018-08-17 14:27:55', 'chuanyingqu', 'c');
INSERT INTO `z_area` VALUES ('644', '丰满区', '吉林省 吉林 丰满区', '220200', '220211', '22', '02', '11', '3', '2017-05-11 01:46:49', '2018-08-17 14:27:55', 'fengmanqu', 'f');
INSERT INTO `z_area` VALUES ('645', '永吉县', '吉林省 吉林 永吉县', '220200', '220221', '22', '02', '21', '3', '2017-05-11 01:46:49', '2018-08-17 14:27:55', 'yongjixian', 'y');
INSERT INTO `z_area` VALUES ('646', '蛟河市', '吉林省 吉林 蛟河市', '220200', '220281', '22', '02', '81', '3', '2017-05-11 01:46:49', '2018-08-17 14:27:55', 'jiaoheshi', 'j');
INSERT INTO `z_area` VALUES ('647', '桦甸市', '吉林省 吉林 桦甸市', '220200', '220282', '22', '02', '82', '3', '2017-05-11 01:46:49', '2018-08-17 14:27:55', 'huadianshi', 'h');
INSERT INTO `z_area` VALUES ('648', '舒兰市', '吉林省 吉林 舒兰市', '220200', '220283', '22', '02', '83', '3', '2017-05-11 01:46:49', '2018-08-17 14:27:55', 'shulanshi', 's');
INSERT INTO `z_area` VALUES ('649', '磐石市', '吉林省 吉林 磐石市', '220200', '220284', '22', '02', '84', '3', '2017-05-11 01:46:50', '2018-08-17 14:27:55', 'panshishi', 'p');
INSERT INTO `z_area` VALUES ('650', '四平', '吉林省 四平', '220000', '220300', '22', '03', '00', '2', '2017-05-11 01:46:50', '2018-08-16 14:19:07', 'siping', 's');
INSERT INTO `z_area` VALUES ('651', '四平市', '吉林省 四平 四平市', '220300', '220301', '22', '03', '01', '3', '2017-05-11 01:46:50', '2018-08-17 14:27:56', 'sipingshi', 's');
INSERT INTO `z_area` VALUES ('652', '铁西区', '吉林省 四平 铁西区', '220300', '220302', '22', '03', '02', '3', '2017-05-11 01:46:50', '2018-08-17 14:27:56', 'tiexiqu', 't');
INSERT INTO `z_area` VALUES ('653', '铁东区', '吉林省 四平 铁东区', '220300', '220303', '22', '03', '03', '3', '2017-05-11 01:46:50', '2018-08-17 14:27:56', 'tiedongqu', 't');
INSERT INTO `z_area` VALUES ('654', '梨树县', '吉林省 四平 梨树县', '220300', '220322', '22', '03', '22', '3', '2017-05-11 01:46:50', '2018-08-17 14:27:56', 'lishuxian', 'l');
INSERT INTO `z_area` VALUES ('655', '伊通满族自治县', '吉林省 四平 伊通满族自治县', '220300', '220323', '22', '03', '23', '3', '2017-05-11 01:46:50', '2018-08-17 14:27:56', 'yitongmanzuzizhixian', 'y');
INSERT INTO `z_area` VALUES ('656', '公主岭市', '吉林省 四平 公主岭市', '220300', '220381', '22', '03', '81', '3', '2017-05-11 01:46:51', '2018-08-17 14:27:56', 'gongzhulingshi', 'g');
INSERT INTO `z_area` VALUES ('657', '双辽市', '吉林省 四平 双辽市', '220300', '220382', '22', '03', '82', '3', '2017-05-11 01:46:51', '2018-08-17 14:27:56', 'shuangliaoshi', 's');
INSERT INTO `z_area` VALUES ('658', '辽源', '吉林省 辽源', '220000', '220400', '22', '04', '00', '2', '2017-05-11 01:46:51', '2018-08-16 14:19:08', 'liaoyuan', 'l');
INSERT INTO `z_area` VALUES ('659', '辽源市', '吉林省 辽源 辽源市', '220400', '220401', '22', '04', '01', '3', '2017-05-11 01:46:51', '2018-08-17 14:27:57', 'liaoyuanshi', 'l');
INSERT INTO `z_area` VALUES ('660', '龙山区', '吉林省 辽源 龙山区', '220400', '220402', '22', '04', '02', '3', '2017-05-11 01:46:51', '2018-08-17 14:27:57', 'longshanqu', 'l');
INSERT INTO `z_area` VALUES ('661', '西安区', '吉林省 辽源 西安区', '220400', '220403', '22', '04', '03', '3', '2017-05-11 01:46:51', '2018-08-17 14:27:57', 'xianqu', 'x');
INSERT INTO `z_area` VALUES ('662', '东丰县', '吉林省 辽源 东丰县', '220400', '220421', '22', '04', '21', '3', '2017-05-11 01:46:51', '2018-08-17 14:27:57', 'dongfengxian', 'd');
INSERT INTO `z_area` VALUES ('663', '东辽县', '吉林省 辽源 东辽县', '220400', '220422', '22', '04', '22', '3', '2017-05-11 01:46:52', '2018-08-17 14:27:57', 'dongliaoxian', 'd');
INSERT INTO `z_area` VALUES ('664', '通化', '吉林省 通化', '220000', '220500', '22', '05', '00', '2', '2017-05-11 01:46:52', '2018-08-16 14:19:09', 'tonghua', 't');
INSERT INTO `z_area` VALUES ('665', '通化市', '吉林省 通化 通化市', '220500', '220501', '22', '05', '01', '3', '2017-05-11 01:46:52', '2018-08-17 14:27:57', 'tonghuashi', 't');
INSERT INTO `z_area` VALUES ('666', '东昌区', '吉林省 通化 东昌区', '220500', '220502', '22', '05', '02', '3', '2017-05-11 01:46:52', '2018-08-17 14:27:57', 'dongchangqu', 'd');
INSERT INTO `z_area` VALUES ('667', '二道江区', '吉林省 通化 二道江区', '220500', '220503', '22', '05', '03', '3', '2017-05-11 01:46:52', '2018-08-17 14:27:57', 'erdaojiangqu', 'e');
INSERT INTO `z_area` VALUES ('668', '通化县', '吉林省 通化 通化县', '220500', '220521', '22', '05', '21', '3', '2017-05-11 01:46:52', '2018-08-17 14:27:58', 'tonghuaxian', 't');
INSERT INTO `z_area` VALUES ('669', '辉南县', '吉林省 通化 辉南县', '220500', '220523', '22', '05', '23', '3', '2017-05-11 01:46:52', '2018-08-17 14:27:58', 'huinanxian', 'h');
INSERT INTO `z_area` VALUES ('670', '柳河县', '吉林省 通化 柳河县', '220500', '220524', '22', '05', '24', '3', '2017-05-11 01:46:53', '2018-08-17 14:27:58', 'liuhexian', 'l');
INSERT INTO `z_area` VALUES ('671', '梅河口市', '吉林省 通化 梅河口市', '220500', '220581', '22', '05', '81', '3', '2017-05-11 01:46:53', '2018-08-17 14:27:58', 'meihekoushi', 'm');
INSERT INTO `z_area` VALUES ('672', '集安市', '吉林省 通化 集安市', '220500', '220582', '22', '05', '82', '3', '2017-05-11 01:46:53', '2018-08-17 14:27:58', 'jianshi', 'j');
INSERT INTO `z_area` VALUES ('673', '白山', '吉林省 白山', '220000', '220600', '22', '06', '00', '2', '2017-05-11 01:46:53', '2018-08-16 14:19:10', 'baishan', 'b');
INSERT INTO `z_area` VALUES ('674', '白山市', '吉林省 白山 白山市', '220600', '220601', '22', '06', '01', '3', '2017-05-11 01:46:53', '2018-08-17 14:27:58', 'baishanshi', 'b');
INSERT INTO `z_area` VALUES ('675', '浑江区', '吉林省 白山 浑江区', '220600', '220602', '22', '06', '02', '3', '2017-05-11 01:46:53', '2018-08-17 14:27:58', 'hunjiangqu', 'h');
INSERT INTO `z_area` VALUES ('676', '江源区', '吉林省 白山 江源区', '220600', '220605', '22', '06', '05', '3', '2017-05-11 01:46:53', '2018-08-17 14:27:59', 'jiangyuanqu', 'j');
INSERT INTO `z_area` VALUES ('677', '抚松县', '吉林省 白山 抚松县', '220600', '220621', '22', '06', '21', '3', '2017-05-11 01:46:54', '2018-08-17 14:27:59', 'fusongxian', 'f');
INSERT INTO `z_area` VALUES ('678', '靖宇县', '吉林省 白山 靖宇县', '220600', '220622', '22', '06', '22', '3', '2017-05-11 01:46:54', '2018-08-17 14:27:59', 'jingyuxian', 'j');
INSERT INTO `z_area` VALUES ('679', '长白朝鲜族自治县', '吉林省 白山 长白朝鲜族自治县', '220600', '220623', '22', '06', '23', '3', '2017-05-11 01:46:54', '2018-08-17 14:27:59', 'changbaichaoxianzuzizhixian', 'c');
INSERT INTO `z_area` VALUES ('680', '临江市', '吉林省 白山 临江市', '220600', '220681', '22', '06', '81', '3', '2017-05-11 01:46:54', '2018-08-17 14:27:59', 'linjiangshi', 'l');
INSERT INTO `z_area` VALUES ('681', '松原', '吉林省 松原', '220000', '220700', '22', '07', '00', '2', '2017-05-11 01:46:54', '2018-08-16 14:19:11', 'songyuan', 's');
INSERT INTO `z_area` VALUES ('682', '松原市', '吉林省 松原 松原市', '220700', '220701', '22', '07', '01', '3', '2017-05-11 01:46:54', '2018-08-17 14:27:59', 'songyuanshi', 's');
INSERT INTO `z_area` VALUES ('683', '宁江区', '吉林省 松原 宁江区', '220700', '220702', '22', '07', '02', '3', '2017-05-11 01:46:54', '2018-08-17 14:27:59', 'ningjiangqu', 'n');
INSERT INTO `z_area` VALUES ('684', '前郭尔罗斯蒙古族自治县', '吉林省 松原 前郭尔罗斯蒙古族自治县', '220700', '220721', '22', '07', '21', '3', '2017-05-11 01:46:55', '2018-08-17 14:27:59', 'qianguoerluosimengguzuzizhixian', 'q');
INSERT INTO `z_area` VALUES ('685', '长岭县', '吉林省 松原 长岭县', '220700', '220722', '22', '07', '22', '3', '2017-05-11 01:46:55', '2018-08-17 14:28:00', 'changlingxian', 'c');
INSERT INTO `z_area` VALUES ('686', '乾安县', '吉林省 松原 乾安县', '220700', '220723', '22', '07', '23', '3', '2017-05-11 01:46:55', '2018-08-17 14:28:00', 'qiananxian', 'q');
INSERT INTO `z_area` VALUES ('687', '扶余市', '吉林省 松原 扶余市', '220700', '220781', '22', '07', '81', '3', '2017-05-11 01:46:55', '2018-08-17 14:28:00', 'fuyushi', 'f');
INSERT INTO `z_area` VALUES ('688', '白城', '吉林省 白城', '220000', '220800', '22', '08', '00', '2', '2017-05-11 01:46:55', '2018-08-16 14:19:12', 'baicheng', 'b');
INSERT INTO `z_area` VALUES ('689', '白城市', '吉林省 白城 白城市', '220800', '220801', '22', '08', '01', '3', '2017-05-11 01:46:55', '2018-08-17 14:28:00', 'baichengshi', 'b');
INSERT INTO `z_area` VALUES ('690', '洮北区', '吉林省 白城 洮北区', '220800', '220802', '22', '08', '02', '3', '2017-05-11 01:46:56', '2018-08-17 14:28:00', 'taobeiqu', 't');
INSERT INTO `z_area` VALUES ('691', '镇赉县', '吉林省 白城 镇赉县', '220800', '220821', '22', '08', '21', '3', '2017-05-11 01:46:56', '2018-08-17 14:28:00', 'zhenlaixian', 'z');
INSERT INTO `z_area` VALUES ('692', '通榆县', '吉林省 白城 通榆县', '220800', '220822', '22', '08', '22', '3', '2017-05-11 01:46:56', '2018-08-17 14:28:01', 'tongyuxian', 't');
INSERT INTO `z_area` VALUES ('693', '洮南市', '吉林省 白城 洮南市', '220800', '220881', '22', '08', '81', '3', '2017-05-11 01:46:56', '2018-08-17 14:28:01', 'taonanshi', 't');
INSERT INTO `z_area` VALUES ('694', '大安市', '吉林省 白城 大安市', '220800', '220882', '22', '08', '82', '3', '2017-05-11 01:46:56', '2018-08-17 14:28:01', 'daanshi', 'd');
INSERT INTO `z_area` VALUES ('695', '延边朝鲜族自治州', '吉林省 延边朝鲜族自治州', '220000', '222400', '22', '24', '00', '2', '2017-05-11 01:46:56', '2018-08-16 14:19:13', 'yanbianchaoxianzuzizhizhou', 'y');
INSERT INTO `z_area` VALUES ('696', '延吉市', '吉林省 延边朝鲜族自治州 延吉市', '222400', '222401', '22', '24', '01', '3', '2017-05-11 01:46:56', '2018-08-17 14:28:01', 'yanjishi', 'y');
INSERT INTO `z_area` VALUES ('697', '图们市', '吉林省 延边朝鲜族自治州 图们市', '222400', '222402', '22', '24', '02', '3', '2017-05-11 01:46:57', '2018-08-17 14:28:01', 'tumenshi', 't');
INSERT INTO `z_area` VALUES ('698', '敦化市', '吉林省 延边朝鲜族自治州 敦化市', '222400', '222403', '22', '24', '03', '3', '2017-05-11 01:46:57', '2018-08-17 14:28:01', 'dunhuashi', 'd');
INSERT INTO `z_area` VALUES ('699', '珲春市', '吉林省 延边朝鲜族自治州 珲春市', '222400', '222404', '22', '24', '04', '3', '2017-05-11 01:46:57', '2018-08-17 14:28:02', 'huichunshi', 'h');
INSERT INTO `z_area` VALUES ('700', '龙井市', '吉林省 延边朝鲜族自治州 龙井市', '222400', '222405', '22', '24', '05', '3', '2017-05-11 01:46:57', '2018-08-17 14:28:02', 'longjingshi', 'l');
INSERT INTO `z_area` VALUES ('701', '和龙市', '吉林省 延边朝鲜族自治州 和龙市', '222400', '222406', '22', '24', '06', '3', '2017-05-11 01:46:57', '2018-08-17 14:28:02', 'helongshi', 'h');
INSERT INTO `z_area` VALUES ('702', '汪清县', '吉林省 延边朝鲜族自治州 汪清县', '222400', '222424', '22', '24', '24', '3', '2017-05-11 01:46:57', '2018-08-17 14:28:02', 'wangqingxian', 'w');
INSERT INTO `z_area` VALUES ('703', '安图县', '吉林省 延边朝鲜族自治州 安图县', '222400', '222426', '22', '24', '26', '3', '2017-05-11 01:46:57', '2018-08-17 14:28:02', 'antuxian', 'a');
INSERT INTO `z_area` VALUES ('704', '黑龙江省', '黑龙江省', '', '230000', '23', '00', '00', '1', '2017-05-11 01:46:57', '2017-08-28 14:22:19', 'heilongjiangsheng', 'h');
INSERT INTO `z_area` VALUES ('705', '哈尔滨', '黑龙江省 哈尔滨', '230000', '230100', '23', '01', '00', '2', '2017-05-11 01:46:58', '2018-08-16 14:19:14', 'haerbin', 'h');
INSERT INTO `z_area` VALUES ('706', '哈尔滨市', '黑龙江省 哈尔滨 哈尔滨市', '230100', '230101', '23', '01', '01', '3', '2017-05-11 01:46:58', '2018-08-17 14:28:02', 'haerbinshi', 'h');
INSERT INTO `z_area` VALUES ('707', '道里区', '黑龙江省 哈尔滨 道里区', '230100', '230102', '23', '01', '02', '3', '2017-05-11 01:46:58', '2018-08-17 14:28:02', 'daoliqu', 'd');
INSERT INTO `z_area` VALUES ('708', '南岗区', '黑龙江省 哈尔滨 南岗区', '230100', '230103', '23', '01', '03', '3', '2017-05-11 01:46:58', '2018-08-17 14:28:03', 'nangangqu', 'n');
INSERT INTO `z_area` VALUES ('709', '道外区', '黑龙江省 哈尔滨 道外区', '230100', '230104', '23', '01', '04', '3', '2017-05-11 01:46:58', '2018-08-17 14:28:03', 'daowaiqu', 'd');
INSERT INTO `z_area` VALUES ('710', '平房区', '黑龙江省 哈尔滨 平房区', '230100', '230108', '23', '01', '08', '3', '2017-05-11 01:46:58', '2018-08-17 14:28:03', 'pingfangqu', 'p');
INSERT INTO `z_area` VALUES ('711', '松北区', '黑龙江省 哈尔滨 松北区', '230100', '230109', '23', '01', '09', '3', '2017-05-11 01:46:58', '2018-08-17 14:28:03', 'songbeiqu', 's');
INSERT INTO `z_area` VALUES ('712', '香坊区', '黑龙江省 哈尔滨 香坊区', '230100', '230110', '23', '01', '10', '3', '2017-05-11 01:46:59', '2018-08-17 14:28:03', 'xiangfangqu', 'x');
INSERT INTO `z_area` VALUES ('713', '呼兰区', '黑龙江省 哈尔滨 呼兰区', '230100', '230111', '23', '01', '11', '3', '2017-05-11 01:46:59', '2018-08-17 14:28:03', 'hulanqu', 'h');
INSERT INTO `z_area` VALUES ('714', '阿城区', '黑龙江省 哈尔滨 阿城区', '230100', '230112', '23', '01', '12', '3', '2017-05-11 01:46:59', '2018-08-17 14:28:03', 'achengqu', 'a');
INSERT INTO `z_area` VALUES ('715', '双城区', '黑龙江省 哈尔滨 双城区', '230100', '230113', '23', '01', '13', '3', '2017-05-11 01:46:59', '2018-08-17 14:28:03', 'shuangchengqu', 's');
INSERT INTO `z_area` VALUES ('716', '依兰县', '黑龙江省 哈尔滨 依兰县', '230100', '230123', '23', '01', '23', '3', '2017-05-11 01:46:59', '2018-08-17 14:28:04', 'yilanxian', 'y');
INSERT INTO `z_area` VALUES ('717', '方正县', '黑龙江省 哈尔滨 方正县', '230100', '230124', '23', '01', '24', '3', '2017-05-11 01:46:59', '2018-08-17 14:28:04', 'fangzhengxian', 'f');
INSERT INTO `z_area` VALUES ('718', '宾县', '黑龙江省 哈尔滨 宾县', '230100', '230125', '23', '01', '25', '3', '2017-05-11 01:47:00', '2018-08-17 14:28:04', 'binxian', 'b');
INSERT INTO `z_area` VALUES ('719', '巴彦县', '黑龙江省 哈尔滨 巴彦县', '230100', '230126', '23', '01', '26', '3', '2017-05-11 01:47:00', '2018-08-17 14:28:04', 'bayanxian', 'b');
INSERT INTO `z_area` VALUES ('720', '木兰县', '黑龙江省 哈尔滨 木兰县', '230100', '230127', '23', '01', '27', '3', '2017-05-11 01:47:00', '2018-08-17 14:28:04', 'mulanxian', 'm');
INSERT INTO `z_area` VALUES ('721', '通河县', '黑龙江省 哈尔滨 通河县', '230100', '230128', '23', '01', '28', '3', '2017-05-11 01:47:00', '2018-08-17 14:28:04', 'tonghexian', 't');
INSERT INTO `z_area` VALUES ('722', '延寿县', '黑龙江省 哈尔滨 延寿县', '230100', '230129', '23', '01', '29', '3', '2017-05-11 01:47:00', '2018-08-17 14:28:05', 'yanshouxian', 'y');
INSERT INTO `z_area` VALUES ('723', '尚志市', '黑龙江省 哈尔滨 尚志市', '230100', '230183', '23', '01', '83', '3', '2017-05-11 01:47:00', '2018-08-17 14:28:05', 'shangzhishi', 's');
INSERT INTO `z_area` VALUES ('724', '五常市', '黑龙江省 哈尔滨 五常市', '230100', '230184', '23', '01', '84', '3', '2017-05-11 01:47:01', '2018-08-17 14:28:05', 'wuchangshi', 'w');
INSERT INTO `z_area` VALUES ('725', '齐齐哈尔', '黑龙江省 齐齐哈尔', '230000', '230200', '23', '02', '00', '2', '2017-05-11 01:47:01', '2018-08-16 14:19:16', 'qiqihaer', 'q');
INSERT INTO `z_area` VALUES ('726', '齐齐哈尔市', '黑龙江省 齐齐哈尔 齐齐哈尔市', '230200', '230201', '23', '02', '01', '3', '2017-05-11 01:47:01', '2018-08-17 14:28:05', 'qiqihaershi', 'q');
INSERT INTO `z_area` VALUES ('727', '龙沙区', '黑龙江省 齐齐哈尔 龙沙区', '230200', '230202', '23', '02', '02', '3', '2017-05-11 01:47:01', '2018-08-17 14:28:05', 'longshaqu', 'l');
INSERT INTO `z_area` VALUES ('728', '建华区', '黑龙江省 齐齐哈尔 建华区', '230200', '230203', '23', '02', '03', '3', '2017-05-11 01:47:01', '2018-08-17 14:28:05', 'jianhuaqu', 'j');
INSERT INTO `z_area` VALUES ('729', '铁锋区', '黑龙江省 齐齐哈尔 铁锋区', '230200', '230204', '23', '02', '04', '3', '2017-05-11 01:47:01', '2018-08-17 14:28:05', 'tiefengqu', 't');
INSERT INTO `z_area` VALUES ('730', '昂昂溪区', '黑龙江省 齐齐哈尔 昂昂溪区', '230200', '230205', '23', '02', '05', '3', '2017-05-11 01:47:01', '2018-08-17 14:28:06', 'angangxiqu', 'a');
INSERT INTO `z_area` VALUES ('731', '富拉尔基区', '黑龙江省 齐齐哈尔 富拉尔基区', '230200', '230206', '23', '02', '06', '3', '2017-05-11 01:47:02', '2018-08-17 14:28:06', 'fulaerjiqu', 'f');
INSERT INTO `z_area` VALUES ('732', '碾子山区', '黑龙江省 齐齐哈尔 碾子山区', '230200', '230207', '23', '02', '07', '3', '2017-05-11 01:47:02', '2018-08-17 14:28:06', 'nianzishanqu', 'n');
INSERT INTO `z_area` VALUES ('733', '梅里斯达斡尔族区', '黑龙江省 齐齐哈尔 梅里斯达斡尔族区', '230200', '230208', '23', '02', '08', '3', '2017-05-11 01:47:02', '2018-08-17 14:28:06', 'meilisidawoerzuqu', 'm');
INSERT INTO `z_area` VALUES ('734', '龙江县', '黑龙江省 齐齐哈尔 龙江县', '230200', '230221', '23', '02', '21', '3', '2017-05-11 01:47:02', '2018-08-17 14:28:06', 'longjiangxian', 'l');
INSERT INTO `z_area` VALUES ('735', '依安县', '黑龙江省 齐齐哈尔 依安县', '230200', '230223', '23', '02', '23', '3', '2017-05-11 01:47:02', '2018-08-17 14:28:06', 'yianxian', 'y');
INSERT INTO `z_area` VALUES ('736', '泰来县', '黑龙江省 齐齐哈尔 泰来县', '230200', '230224', '23', '02', '24', '3', '2017-05-11 01:47:02', '2018-08-17 14:28:06', 'tailaixian', 't');
INSERT INTO `z_area` VALUES ('737', '甘南县', '黑龙江省 齐齐哈尔 甘南县', '230200', '230225', '23', '02', '25', '3', '2017-05-11 01:47:02', '2018-08-17 14:28:06', 'gannanxian', 'g');
INSERT INTO `z_area` VALUES ('738', '富裕县', '黑龙江省 齐齐哈尔 富裕县', '230200', '230227', '23', '02', '27', '3', '2017-05-11 01:47:03', '2018-08-17 14:28:07', 'fuyuxian', 'f');
INSERT INTO `z_area` VALUES ('739', '克山县', '黑龙江省 齐齐哈尔 克山县', '230200', '230229', '23', '02', '29', '3', '2017-05-11 01:47:03', '2018-08-17 14:28:07', 'keshanxian', 'k');
INSERT INTO `z_area` VALUES ('740', '克东县', '黑龙江省 齐齐哈尔 克东县', '230200', '230230', '23', '02', '30', '3', '2017-05-11 01:47:03', '2018-08-17 14:28:07', 'kedongxian', 'k');
INSERT INTO `z_area` VALUES ('741', '拜泉县', '黑龙江省 齐齐哈尔 拜泉县', '230200', '230231', '23', '02', '31', '3', '2017-05-11 01:47:03', '2018-08-17 14:28:07', 'baiquanxian', 'b');
INSERT INTO `z_area` VALUES ('742', '讷河市', '黑龙江省 齐齐哈尔 讷河市', '230200', '230281', '23', '02', '81', '3', '2017-05-11 01:47:03', '2018-08-17 14:28:07', 'neheshi', 'n');
INSERT INTO `z_area` VALUES ('743', '鸡西', '黑龙江省 鸡西', '230000', '230300', '23', '03', '00', '2', '2017-05-11 01:47:03', '2018-08-16 14:19:19', 'jixi', 'j');
INSERT INTO `z_area` VALUES ('744', '鸡西市', '黑龙江省 鸡西 鸡西市', '230300', '230301', '23', '03', '01', '3', '2017-05-11 01:47:03', '2018-08-17 14:28:07', 'jixishi', 'j');
INSERT INTO `z_area` VALUES ('745', '鸡冠区', '黑龙江省 鸡西 鸡冠区', '230300', '230302', '23', '03', '02', '3', '2017-05-11 01:47:04', '2018-08-17 14:28:07', 'jiguanqu', 'j');
INSERT INTO `z_area` VALUES ('746', '恒山区', '黑龙江省 鸡西 恒山区', '230300', '230303', '23', '03', '03', '3', '2017-05-11 01:47:04', '2018-08-17 14:28:08', 'hengshanqu', 'h');
INSERT INTO `z_area` VALUES ('747', '滴道区', '黑龙江省 鸡西 滴道区', '230300', '230304', '23', '03', '04', '3', '2017-05-11 01:47:04', '2018-08-17 14:28:08', 'didaoqu', 'd');
INSERT INTO `z_area` VALUES ('748', '梨树区', '黑龙江省 鸡西 梨树区', '230300', '230305', '23', '03', '05', '3', '2017-05-11 01:47:04', '2018-08-17 14:28:08', 'lishuqu', 'l');
INSERT INTO `z_area` VALUES ('749', '城子河区', '黑龙江省 鸡西 城子河区', '230300', '230306', '23', '03', '06', '3', '2017-05-11 01:47:04', '2018-08-17 14:28:08', 'chengzihequ', 'c');
INSERT INTO `z_area` VALUES ('750', '麻山区', '黑龙江省 鸡西 麻山区', '230300', '230307', '23', '03', '07', '3', '2017-05-11 01:47:04', '2018-08-17 14:28:08', 'mashanqu', 'm');
INSERT INTO `z_area` VALUES ('751', '鸡东县', '黑龙江省 鸡西 鸡东县', '230300', '230321', '23', '03', '21', '3', '2017-05-11 01:47:05', '2018-08-17 14:28:08', 'jidongxian', 'j');
INSERT INTO `z_area` VALUES ('752', '虎林市', '黑龙江省 鸡西 虎林市', '230300', '230381', '23', '03', '81', '3', '2017-05-11 01:47:05', '2018-08-17 14:28:08', 'hulinshi', 'h');
INSERT INTO `z_area` VALUES ('753', '密山市', '黑龙江省 鸡西 密山市', '230300', '230382', '23', '03', '82', '3', '2017-05-11 01:47:05', '2018-08-17 14:28:09', 'mishanshi', 'm');
INSERT INTO `z_area` VALUES ('754', '鹤岗', '黑龙江省 鹤岗', '230000', '230400', '23', '04', '00', '2', '2017-05-11 01:47:05', '2018-08-16 14:19:20', 'hegang', 'h');
INSERT INTO `z_area` VALUES ('755', '鹤岗市', '黑龙江省 鹤岗 鹤岗市', '230400', '230401', '23', '04', '01', '3', '2017-05-11 01:47:05', '2018-08-17 14:28:09', 'hegangshi', 'h');
INSERT INTO `z_area` VALUES ('756', '向阳区', '黑龙江省 鹤岗 向阳区', '230400', '230402', '23', '04', '02', '3', '2017-05-11 01:47:05', '2018-08-17 14:28:09', 'xiangyangqu', 'x');
INSERT INTO `z_area` VALUES ('757', '工农区', '黑龙江省 鹤岗 工农区', '230400', '230403', '23', '04', '03', '3', '2017-05-11 01:47:05', '2018-08-17 14:28:09', 'gongnongqu', 'g');
INSERT INTO `z_area` VALUES ('758', '南山区', '黑龙江省 鹤岗 南山区', '230400', '230404', '23', '04', '04', '3', '2017-05-11 01:47:06', '2018-08-17 14:28:09', 'nanshanqu', 'n');
INSERT INTO `z_area` VALUES ('759', '兴安区', '黑龙江省 鹤岗 兴安区', '230400', '230405', '23', '04', '05', '3', '2017-05-11 01:47:06', '2018-08-17 14:28:09', 'xinganqu', 'x');
INSERT INTO `z_area` VALUES ('760', '东山区', '黑龙江省 鹤岗 东山区', '230400', '230406', '23', '04', '06', '3', '2017-05-11 01:47:06', '2018-08-17 14:28:09', 'dongshanqu', 'd');
INSERT INTO `z_area` VALUES ('761', '兴山区', '黑龙江省 鹤岗 兴山区', '230400', '230407', '23', '04', '07', '3', '2017-05-11 01:47:06', '2018-08-17 14:28:10', 'xingshanqu', 'x');
INSERT INTO `z_area` VALUES ('762', '萝北县', '黑龙江省 鹤岗 萝北县', '230400', '230421', '23', '04', '21', '3', '2017-05-11 01:47:06', '2018-08-17 14:28:10', 'luobeixian', 'l');
INSERT INTO `z_area` VALUES ('763', '绥滨县', '黑龙江省 鹤岗 绥滨县', '230400', '230422', '23', '04', '22', '3', '2017-05-11 01:47:06', '2018-08-17 14:28:10', 'suibinxian', 's');
INSERT INTO `z_area` VALUES ('764', '双鸭山', '黑龙江省 双鸭山', '230000', '230500', '23', '05', '00', '2', '2017-05-11 01:47:06', '2018-08-16 14:19:21', 'shuangyashan', 's');
INSERT INTO `z_area` VALUES ('765', '双鸭山市', '黑龙江省 双鸭山 双鸭山市', '230500', '230501', '23', '05', '01', '3', '2017-05-11 01:47:07', '2018-08-17 14:28:10', 'shuangyashanshi', 's');
INSERT INTO `z_area` VALUES ('766', '尖山区', '黑龙江省 双鸭山 尖山区', '230500', '230502', '23', '05', '02', '3', '2017-05-11 01:47:07', '2018-08-17 14:28:10', 'jianshanqu', 'j');
INSERT INTO `z_area` VALUES ('767', '岭东区', '黑龙江省 双鸭山 岭东区', '230500', '230503', '23', '05', '03', '3', '2017-05-11 01:47:07', '2018-08-17 14:28:10', 'lingdongqu', 'l');
INSERT INTO `z_area` VALUES ('768', '四方台区', '黑龙江省 双鸭山 四方台区', '230500', '230505', '23', '05', '05', '3', '2017-05-11 01:47:07', '2018-08-17 14:28:10', 'sifangtaiqu', 's');
INSERT INTO `z_area` VALUES ('769', '宝山区', '黑龙江省 双鸭山 宝山区', '230500', '230506', '23', '05', '06', '3', '2017-05-11 01:47:07', '2018-08-17 14:28:11', 'baoshanqu', 'b');
INSERT INTO `z_area` VALUES ('770', '集贤县', '黑龙江省 双鸭山 集贤县', '230500', '230521', '23', '05', '21', '3', '2017-05-11 01:47:07', '2018-08-17 14:28:11', 'jixianxian', 'j');
INSERT INTO `z_area` VALUES ('771', '友谊县', '黑龙江省 双鸭山 友谊县', '230500', '230522', '23', '05', '22', '3', '2017-05-11 01:47:08', '2018-08-17 14:28:11', 'youyixian', 'y');
INSERT INTO `z_area` VALUES ('772', '宝清县', '黑龙江省 双鸭山 宝清县', '230500', '230523', '23', '05', '23', '3', '2017-05-11 01:47:08', '2018-08-17 14:28:11', 'baoqingxian', 'b');
INSERT INTO `z_area` VALUES ('773', '饶河县', '黑龙江省 双鸭山 饶河县', '230500', '230524', '23', '05', '24', '3', '2017-05-11 01:47:08', '2018-08-17 14:28:11', 'raohexian', 'r');
INSERT INTO `z_area` VALUES ('774', '大庆', '黑龙江省 大庆', '230000', '230600', '23', '06', '00', '2', '2017-05-11 01:47:08', '2018-08-16 14:19:23', 'daqing', 'd');
INSERT INTO `z_area` VALUES ('775', '大庆市', '黑龙江省 大庆 大庆市', '230600', '230601', '23', '06', '01', '3', '2017-05-11 01:47:08', '2018-08-17 14:28:11', 'daqingshi', 'd');
INSERT INTO `z_area` VALUES ('776', '萨尔图区', '黑龙江省 大庆 萨尔图区', '230600', '230602', '23', '06', '02', '3', '2017-05-11 01:47:08', '2018-08-17 14:28:12', 'saertuqu', 's');
INSERT INTO `z_area` VALUES ('777', '龙凤区', '黑龙江省 大庆 龙凤区', '230600', '230603', '23', '06', '03', '3', '2017-05-11 01:47:08', '2018-08-17 14:28:12', 'longfengqu', 'l');
INSERT INTO `z_area` VALUES ('778', '让胡路区', '黑龙江省 大庆 让胡路区', '230600', '230604', '23', '06', '04', '3', '2017-05-11 01:47:09', '2018-08-17 14:28:12', 'ranghuluqu', 'r');
INSERT INTO `z_area` VALUES ('779', '红岗区', '黑龙江省 大庆 红岗区', '230600', '230605', '23', '06', '05', '3', '2017-05-11 01:47:09', '2018-08-17 14:28:12', 'honggangqu', 'h');
INSERT INTO `z_area` VALUES ('780', '大同区', '黑龙江省 大庆 大同区', '230600', '230606', '23', '06', '06', '3', '2017-05-11 01:47:09', '2018-08-17 14:28:12', 'datongqu', 'd');
INSERT INTO `z_area` VALUES ('781', '肇州县', '黑龙江省 大庆 肇州县', '230600', '230621', '23', '06', '21', '3', '2017-05-11 01:47:09', '2018-08-17 14:28:12', 'zhaozhouxian', 'z');
INSERT INTO `z_area` VALUES ('782', '肇源县', '黑龙江省 大庆 肇源县', '230600', '230622', '23', '06', '22', '3', '2017-05-11 01:47:09', '2018-08-17 14:28:12', 'zhaoyuanxian', 'z');
INSERT INTO `z_area` VALUES ('783', '林甸县', '黑龙江省 大庆 林甸县', '230600', '230623', '23', '06', '23', '3', '2017-05-11 01:47:09', '2018-08-17 14:28:12', 'lindianxian', 'l');
INSERT INTO `z_area` VALUES ('784', '杜尔伯特蒙古族自治县', '黑龙江省 大庆 杜尔伯特蒙古族自治县', '230600', '230624', '23', '06', '24', '3', '2017-05-11 01:47:09', '2018-08-17 14:28:13', 'duerbotemengguzuzizhixian', 'd');
INSERT INTO `z_area` VALUES ('785', '伊春', '黑龙江省 伊春', '230000', '230700', '23', '07', '00', '2', '2017-05-11 01:47:10', '2018-08-16 14:19:24', 'yichun', 'y');
INSERT INTO `z_area` VALUES ('786', '伊春市', '黑龙江省 伊春 伊春市', '230700', '230701', '23', '07', '01', '3', '2017-05-11 01:47:10', '2018-08-17 14:28:13', 'yichunshi', 'y');
INSERT INTO `z_area` VALUES ('787', '伊春区', '黑龙江省 伊春 伊春区', '230700', '230702', '23', '07', '02', '3', '2017-05-11 01:47:10', '2018-08-17 14:28:13', 'yichunqu', 'y');
INSERT INTO `z_area` VALUES ('788', '南岔区', '黑龙江省 伊春 南岔区', '230700', '230703', '23', '07', '03', '3', '2017-05-11 01:47:10', '2018-08-17 14:28:13', 'nanchaqu', 'n');
INSERT INTO `z_area` VALUES ('789', '友好区', '黑龙江省 伊春 友好区', '230700', '230704', '23', '07', '04', '3', '2017-05-11 01:47:10', '2018-08-17 14:28:13', 'youhaoqu', 'y');
INSERT INTO `z_area` VALUES ('790', '西林区', '黑龙江省 伊春 西林区', '230700', '230705', '23', '07', '05', '3', '2017-05-11 01:47:10', '2018-08-17 14:28:13', 'xilinqu', 'x');
INSERT INTO `z_area` VALUES ('791', '翠峦区', '黑龙江省 伊春 翠峦区', '230700', '230706', '23', '07', '06', '3', '2017-05-11 01:47:11', '2018-08-17 14:28:14', 'cuiluanqu', 'c');
INSERT INTO `z_area` VALUES ('792', '新青区', '黑龙江省 伊春 新青区', '230700', '230707', '23', '07', '07', '3', '2017-05-11 01:47:11', '2018-08-17 14:28:14', 'xinqingqu', 'x');
INSERT INTO `z_area` VALUES ('793', '美溪区', '黑龙江省 伊春 美溪区', '230700', '230708', '23', '07', '08', '3', '2017-05-11 01:47:11', '2018-08-17 14:28:14', 'meixiqu', 'm');
INSERT INTO `z_area` VALUES ('794', '金山屯区', '黑龙江省 伊春 金山屯区', '230700', '230709', '23', '07', '09', '3', '2017-05-11 01:47:11', '2018-08-17 14:28:14', 'jinshantunqu', 'j');
INSERT INTO `z_area` VALUES ('795', '五营区', '黑龙江省 伊春 五营区', '230700', '230710', '23', '07', '10', '3', '2017-05-11 01:47:11', '2018-08-17 14:28:14', 'wuyingqu', 'w');
INSERT INTO `z_area` VALUES ('796', '乌马河区', '黑龙江省 伊春 乌马河区', '230700', '230711', '23', '07', '11', '3', '2017-05-11 01:47:11', '2018-08-17 14:28:14', 'wumahequ', 'w');
INSERT INTO `z_area` VALUES ('797', '汤旺河区', '黑龙江省 伊春 汤旺河区', '230700', '230712', '23', '07', '12', '3', '2017-05-11 01:47:11', '2018-08-17 14:28:14', 'tangwanghequ', 't');
INSERT INTO `z_area` VALUES ('798', '带岭区', '黑龙江省 伊春 带岭区', '230700', '230713', '23', '07', '13', '3', '2017-05-11 01:47:12', '2018-08-17 14:28:15', 'dailingqu', 'd');
INSERT INTO `z_area` VALUES ('799', '乌伊岭区', '黑龙江省 伊春 乌伊岭区', '230700', '230714', '23', '07', '14', '3', '2017-05-11 01:47:12', '2018-08-17 14:28:15', 'wuyilingqu', 'w');
INSERT INTO `z_area` VALUES ('800', '红星区', '黑龙江省 伊春 红星区', '230700', '230715', '23', '07', '15', '3', '2017-05-11 01:47:12', '2018-08-17 14:28:15', 'hongxingqu', 'h');
INSERT INTO `z_area` VALUES ('801', '上甘岭区', '黑龙江省 伊春 上甘岭区', '230700', '230716', '23', '07', '16', '3', '2017-05-11 01:47:12', '2018-08-17 14:28:15', 'shangganlingqu', 's');
INSERT INTO `z_area` VALUES ('802', '嘉荫县', '黑龙江省 伊春 嘉荫县', '230700', '230722', '23', '07', '22', '3', '2017-05-11 01:47:12', '2018-08-17 14:28:15', 'jiayinxian', 'j');
INSERT INTO `z_area` VALUES ('803', '铁力市', '黑龙江省 伊春 铁力市', '230700', '230781', '23', '07', '81', '3', '2017-05-11 01:47:12', '2018-08-17 14:28:15', 'tielishi', 't');
INSERT INTO `z_area` VALUES ('804', '佳木斯', '黑龙江省 佳木斯', '230000', '230800', '23', '08', '00', '2', '2017-05-11 01:47:13', '2018-08-16 14:19:27', 'jiamusi', 'j');
INSERT INTO `z_area` VALUES ('805', '佳木斯市', '黑龙江省 佳木斯 佳木斯市', '230800', '230801', '23', '08', '01', '3', '2017-05-11 01:47:13', '2018-08-17 14:28:15', 'jiamusishi', 'j');
INSERT INTO `z_area` VALUES ('806', '向阳区', '黑龙江省 佳木斯 向阳区', '230800', '230803', '23', '08', '03', '3', '2017-05-11 01:47:13', '2018-08-17 14:28:15', 'xiangyangqu', 'x');
INSERT INTO `z_area` VALUES ('807', '前进区', '黑龙江省 佳木斯 前进区', '230800', '230804', '23', '08', '04', '3', '2017-05-11 01:47:13', '2018-08-17 14:28:16', 'qianjinqu', 'q');
INSERT INTO `z_area` VALUES ('808', '东风区', '黑龙江省 佳木斯 东风区', '230800', '230805', '23', '08', '05', '3', '2017-05-11 01:47:13', '2018-08-17 14:28:16', 'dongfengqu', 'd');
INSERT INTO `z_area` VALUES ('809', '郊区', '黑龙江省 佳木斯 郊区', '230800', '230811', '23', '08', '11', '3', '2017-05-11 01:47:13', '2018-08-17 14:28:16', 'jiaoqu', 'j');
INSERT INTO `z_area` VALUES ('810', '桦南县', '黑龙江省 佳木斯 桦南县', '230800', '230822', '23', '08', '22', '3', '2017-05-11 01:47:13', '2018-08-17 14:28:16', 'huananxian', 'h');
INSERT INTO `z_area` VALUES ('811', '桦川县', '黑龙江省 佳木斯 桦川县', '230800', '230826', '23', '08', '26', '3', '2017-05-11 01:47:14', '2018-08-17 14:28:16', 'huachuanxian', 'h');
INSERT INTO `z_area` VALUES ('812', '汤原县', '黑龙江省 佳木斯 汤原县', '230800', '230828', '23', '08', '28', '3', '2017-05-11 01:47:14', '2018-08-17 14:28:16', 'tangyuanxian', 't');
INSERT INTO `z_area` VALUES ('813', '抚远县', '黑龙江省 佳木斯 抚远县', '230800', '230833', '23', '08', '33', '3', '2017-05-11 01:47:14', '2018-08-17 14:28:16', 'fuyuanxian', 'f');
INSERT INTO `z_area` VALUES ('814', '同江市', '黑龙江省 佳木斯 同江市', '230800', '230881', '23', '08', '81', '3', '2017-05-11 01:47:14', '2018-08-17 14:28:17', 'tongjiangshi', 't');
INSERT INTO `z_area` VALUES ('815', '富锦市', '黑龙江省 佳木斯 富锦市', '230800', '230882', '23', '08', '82', '3', '2017-05-11 01:47:14', '2018-08-17 14:28:17', 'fujinshi', 'f');
INSERT INTO `z_area` VALUES ('816', '七台河', '黑龙江省 七台河', '230000', '230900', '23', '09', '00', '2', '2017-05-11 01:47:14', '2018-08-16 14:19:28', 'qitaihe', 'q');
INSERT INTO `z_area` VALUES ('817', '七台河市', '黑龙江省 七台河 七台河市', '230900', '230901', '23', '09', '01', '3', '2017-05-11 01:47:14', '2018-08-17 14:28:17', 'qitaiheshi', 'q');
INSERT INTO `z_area` VALUES ('818', '新兴区', '黑龙江省 七台河 新兴区', '230900', '230902', '23', '09', '02', '3', '2017-05-11 01:47:15', '2018-08-17 14:28:17', 'xinxingqu', 'x');
INSERT INTO `z_area` VALUES ('819', '桃山区', '黑龙江省 七台河 桃山区', '230900', '230903', '23', '09', '03', '3', '2017-05-11 01:47:15', '2018-08-17 14:28:17', 'taoshanqu', 't');
INSERT INTO `z_area` VALUES ('820', '茄子河区', '黑龙江省 七台河 茄子河区', '230900', '230904', '23', '09', '04', '3', '2017-05-11 01:47:15', '2018-08-17 14:28:17', 'qiezihequ', 'q');
INSERT INTO `z_area` VALUES ('821', '勃利县', '黑龙江省 七台河 勃利县', '230900', '230921', '23', '09', '21', '3', '2017-05-11 01:47:15', '2018-08-17 14:28:17', 'bolixian', 'b');
INSERT INTO `z_area` VALUES ('822', '牡丹江', '黑龙江省 牡丹江', '230000', '231000', '23', '10', '00', '2', '2017-05-11 01:47:15', '2018-08-16 14:19:29', 'mudanjiang', 'm');
INSERT INTO `z_area` VALUES ('823', '牡丹江市', '黑龙江省 牡丹江 牡丹江市', '231000', '231001', '23', '10', '01', '3', '2017-05-11 01:47:15', '2018-08-17 14:28:18', 'mudanjiangshi', 'm');
INSERT INTO `z_area` VALUES ('824', '东安区', '黑龙江省 牡丹江 东安区', '231000', '231002', '23', '10', '02', '3', '2017-05-11 01:47:16', '2018-08-17 14:28:18', 'donganqu', 'd');
INSERT INTO `z_area` VALUES ('825', '阳明区', '黑龙江省 牡丹江 阳明区', '231000', '231003', '23', '10', '03', '3', '2017-05-11 01:47:16', '2018-08-17 14:28:18', 'yangmingqu', 'y');
INSERT INTO `z_area` VALUES ('826', '爱民区', '黑龙江省 牡丹江 爱民区', '231000', '231004', '23', '10', '04', '3', '2017-05-11 01:47:16', '2018-08-17 14:28:18', 'aiminqu', 'a');
INSERT INTO `z_area` VALUES ('827', '西安区', '黑龙江省 牡丹江 西安区', '231000', '231005', '23', '10', '05', '3', '2017-05-11 01:47:16', '2018-08-17 14:28:18', 'xianqu', 'x');
INSERT INTO `z_area` VALUES ('828', '东宁县', '黑龙江省 牡丹江 东宁县', '231000', '231024', '23', '10', '24', '3', '2017-05-11 01:47:16', '2018-08-17 14:28:18', 'dongningxian', 'd');
INSERT INTO `z_area` VALUES ('829', '林口县', '黑龙江省 牡丹江 林口县', '231000', '231025', '23', '10', '25', '3', '2017-05-11 01:47:16', '2018-08-17 14:28:18', 'linkouxian', 'l');
INSERT INTO `z_area` VALUES ('830', '绥芬河市', '黑龙江省 牡丹江 绥芬河市', '231000', '231081', '23', '10', '81', '3', '2017-05-11 01:47:16', '2018-08-17 14:28:18', 'suifenheshi', 's');
INSERT INTO `z_area` VALUES ('831', '海林市', '黑龙江省 牡丹江 海林市', '231000', '231083', '23', '10', '83', '3', '2017-05-11 01:47:17', '2018-08-17 14:28:19', 'hailinshi', 'h');
INSERT INTO `z_area` VALUES ('832', '宁安市', '黑龙江省 牡丹江 宁安市', '231000', '231084', '23', '10', '84', '3', '2017-05-11 01:47:17', '2018-08-17 14:28:19', 'ninganshi', 'n');
INSERT INTO `z_area` VALUES ('833', '穆棱市', '黑龙江省 牡丹江 穆棱市', '231000', '231085', '23', '10', '85', '3', '2017-05-11 01:47:17', '2018-08-17 14:28:19', 'mulengshi', 'm');
INSERT INTO `z_area` VALUES ('834', '黑河', '黑龙江省 黑河', '230000', '231100', '23', '11', '00', '2', '2017-05-11 01:47:17', '2018-08-16 14:19:30', 'heihe', 'h');
INSERT INTO `z_area` VALUES ('835', '黑河市', '黑龙江省 黑河 黑河市', '231100', '231101', '23', '11', '01', '3', '2017-05-11 01:47:17', '2018-08-17 14:28:19', 'heiheshi', 'h');
INSERT INTO `z_area` VALUES ('836', '爱辉区', '黑龙江省 黑河 爱辉区', '231100', '231102', '23', '11', '02', '3', '2017-05-11 01:47:17', '2018-08-17 14:28:19', 'aihuiqu', 'a');
INSERT INTO `z_area` VALUES ('837', '嫩江县', '黑龙江省 黑河 嫩江县', '231100', '231121', '23', '11', '21', '3', '2017-05-11 01:47:17', '2018-08-17 14:28:19', 'nenjiangxian', 'n');
INSERT INTO `z_area` VALUES ('838', '逊克县', '黑龙江省 黑河 逊克县', '231100', '231123', '23', '11', '23', '3', '2017-05-11 01:47:18', '2018-08-17 14:28:19', 'xunkexian', 'x');
INSERT INTO `z_area` VALUES ('839', '孙吴县', '黑龙江省 黑河 孙吴县', '231100', '231124', '23', '11', '24', '3', '2017-05-11 01:47:18', '2018-08-17 14:28:20', 'sunwuxian', 's');
INSERT INTO `z_area` VALUES ('840', '北安市', '黑龙江省 黑河 北安市', '231100', '231181', '23', '11', '81', '3', '2017-05-11 01:47:18', '2018-08-17 14:28:20', 'beianshi', 'b');
INSERT INTO `z_area` VALUES ('841', '五大连池市', '黑龙江省 黑河 五大连池市', '231100', '231182', '23', '11', '82', '3', '2017-05-11 01:47:18', '2018-08-17 14:28:20', 'wudalianchishi', 'w');
INSERT INTO `z_area` VALUES ('842', '绥化', '黑龙江省 绥化', '230000', '231200', '23', '12', '00', '2', '2017-05-11 01:47:18', '2018-08-16 14:19:31', 'suihua', 's');
INSERT INTO `z_area` VALUES ('843', '绥化市', '黑龙江省 绥化 绥化市', '231200', '231201', '23', '12', '01', '3', '2017-05-11 01:47:18', '2018-08-17 14:28:20', 'suihuashi', 's');
INSERT INTO `z_area` VALUES ('844', '北林区', '黑龙江省 绥化 北林区', '231200', '231202', '23', '12', '02', '3', '2017-05-11 01:47:19', '2018-08-17 14:28:20', 'beilinqu', 'b');
INSERT INTO `z_area` VALUES ('845', '望奎县', '黑龙江省 绥化 望奎县', '231200', '231221', '23', '12', '21', '3', '2017-05-11 01:47:19', '2018-08-17 14:28:20', 'wangkuixian', 'w');
INSERT INTO `z_area` VALUES ('846', '兰西县', '黑龙江省 绥化 兰西县', '231200', '231222', '23', '12', '22', '3', '2017-05-11 01:47:19', '2018-08-17 14:28:21', 'lanxixian', 'l');
INSERT INTO `z_area` VALUES ('847', '青冈县', '黑龙江省 绥化 青冈县', '231200', '231223', '23', '12', '23', '3', '2017-05-11 01:47:19', '2018-08-17 14:28:21', 'qinggangxian', 'q');
INSERT INTO `z_area` VALUES ('848', '庆安县', '黑龙江省 绥化 庆安县', '231200', '231224', '23', '12', '24', '3', '2017-05-11 01:47:19', '2018-08-17 14:28:21', 'qinganxian', 'q');
INSERT INTO `z_area` VALUES ('849', '明水县', '黑龙江省 绥化 明水县', '231200', '231225', '23', '12', '25', '3', '2017-05-11 01:47:19', '2018-08-17 14:28:21', 'mingshuixian', 'm');
INSERT INTO `z_area` VALUES ('850', '绥棱县', '黑龙江省 绥化 绥棱县', '231200', '231226', '23', '12', '26', '3', '2017-05-11 01:47:19', '2018-08-17 14:28:21', 'suilengxian', 's');
INSERT INTO `z_area` VALUES ('851', '安达市', '黑龙江省 绥化 安达市', '231200', '231281', '23', '12', '81', '3', '2017-05-11 01:47:20', '2018-08-17 14:28:21', 'andashi', 'a');
INSERT INTO `z_area` VALUES ('852', '肇东市', '黑龙江省 绥化 肇东市', '231200', '231282', '23', '12', '82', '3', '2017-05-11 01:47:20', '2018-08-17 14:28:21', 'zhaodongshi', 'z');
INSERT INTO `z_area` VALUES ('853', '海伦市', '黑龙江省 绥化 海伦市', '231200', '231283', '23', '12', '83', '3', '2017-05-11 01:47:20', '2018-08-17 14:28:22', 'hailunshi', 'h');
INSERT INTO `z_area` VALUES ('854', '大兴安岭地区', '黑龙江省 大兴安岭地区', '230000', '232700', '23', '27', '00', '2', '2017-05-11 01:47:20', '2018-08-16 14:19:33', 'daxinganlingdiqu', 'd');
INSERT INTO `z_area` VALUES ('855', '呼玛县', '黑龙江省 大兴安岭地区 呼玛县', '232700', '232721', '23', '27', '21', '3', '2017-05-11 01:47:20', '2018-08-17 14:28:22', 'humaxian', 'h');
INSERT INTO `z_area` VALUES ('856', '塔河县', '黑龙江省 大兴安岭地区 塔河县', '232700', '232722', '23', '27', '22', '3', '2017-05-11 01:47:20', '2018-08-17 14:28:22', 'tahexian', 't');
INSERT INTO `z_area` VALUES ('857', '漠河县', '黑龙江省 大兴安岭地区 漠河县', '232700', '232723', '23', '27', '23', '3', '2017-05-11 01:47:20', '2018-08-17 14:28:22', 'mohexian', 'm');
INSERT INTO `z_area` VALUES ('858', '上海', '上海', '', '310000', '31', '00', '00', '1', '2017-05-11 01:47:20', '2017-08-28 14:22:30', 'shanghai', 's');
INSERT INTO `z_area` VALUES ('859', '上海市', '上海 上海市', '310000', '310100', '31', '01', '00', '2', '2017-05-11 01:47:21', '2018-08-16 14:19:33', 'shanghaishi', 's');
INSERT INTO `z_area` VALUES ('860', '黄浦区', '上海 上海市 黄浦区', '310100', '310101', '31', '01', '01', '3', '2017-05-11 01:47:21', '2018-08-17 14:28:22', 'huangpuqu', 'h');
INSERT INTO `z_area` VALUES ('861', '徐汇区', '上海 上海市 徐汇区', '310100', '310104', '31', '01', '04', '3', '2017-05-11 01:47:21', '2018-08-17 14:28:22', 'xuhuiqu', 'x');
INSERT INTO `z_area` VALUES ('862', '长宁区', '上海 上海市 长宁区', '310100', '310105', '31', '01', '05', '3', '2017-05-11 01:47:21', '2018-08-17 14:28:23', 'changningqu', 'c');
INSERT INTO `z_area` VALUES ('863', '静安区', '上海 上海市 静安区', '310100', '310106', '31', '01', '06', '3', '2017-05-11 01:47:21', '2018-08-17 14:28:23', 'jinganqu', 'j');
INSERT INTO `z_area` VALUES ('864', '普陀区', '上海 上海市 普陀区', '310100', '310107', '31', '01', '07', '3', '2017-05-11 01:47:21', '2018-08-17 14:28:23', 'putuoqu', 'p');
INSERT INTO `z_area` VALUES ('865', '闸北区', '上海 上海市 闸北区', '310100', '310108', '31', '01', '08', '3', '2017-05-11 01:47:21', '2018-08-17 14:28:23', 'zhabeiqu', 'z');
INSERT INTO `z_area` VALUES ('866', '虹口区', '上海 上海市 虹口区', '310100', '310109', '31', '01', '09', '3', '2017-05-11 01:47:22', '2018-08-17 14:28:23', 'hongkouqu', 'h');
INSERT INTO `z_area` VALUES ('867', '杨浦区', '上海 上海市 杨浦区', '310100', '310110', '31', '01', '10', '3', '2017-05-11 01:47:22', '2018-08-17 14:28:23', 'yangpuqu', 'y');
INSERT INTO `z_area` VALUES ('868', '闵行区', '上海 上海市 闵行区', '310100', '310112', '31', '01', '12', '3', '2017-05-11 01:47:22', '2018-08-17 14:28:24', 'minxingqu', 'm');
INSERT INTO `z_area` VALUES ('869', '宝山区', '上海 上海市 宝山区', '310100', '310113', '31', '01', '13', '3', '2017-05-11 01:47:22', '2018-08-17 14:28:24', 'baoshanqu', 'b');
INSERT INTO `z_area` VALUES ('870', '嘉定区', '上海 上海市 嘉定区', '310100', '310114', '31', '01', '14', '3', '2017-05-11 01:47:22', '2018-08-17 14:28:24', 'jiadingqu', 'j');
INSERT INTO `z_area` VALUES ('871', '浦东新区', '上海 上海市 浦东新区', '310100', '310115', '31', '01', '15', '3', '2017-05-11 01:47:22', '2018-08-17 14:28:24', 'pudongxinqu', 'p');
INSERT INTO `z_area` VALUES ('872', '金山区', '上海 上海市 金山区', '310100', '310116', '31', '01', '16', '3', '2017-05-11 01:47:23', '2018-08-17 14:28:24', 'jinshanqu', 'j');
INSERT INTO `z_area` VALUES ('873', '松江区', '上海 上海市 松江区', '310100', '310117', '31', '01', '17', '3', '2017-05-11 01:47:23', '2018-08-17 14:28:24', 'songjiangqu', 's');
INSERT INTO `z_area` VALUES ('874', '青浦区', '上海 上海市 青浦区', '310100', '310118', '31', '01', '18', '3', '2017-05-11 01:47:23', '2018-08-17 14:28:24', 'qingpuqu', 'q');
INSERT INTO `z_area` VALUES ('875', '奉贤区', '上海 上海市 奉贤区', '310100', '310120', '31', '01', '20', '3', '2017-05-11 01:47:23', '2018-08-17 14:28:25', 'fengxianqu', 'f');
INSERT INTO `z_area` VALUES ('876', '崇明县', '上海 上海市 崇明县', '310100', '310130', '31', '01', '30', '3', '2017-05-11 01:47:23', '2018-08-17 14:28:25', 'chongmingxian', 'c');
INSERT INTO `z_area` VALUES ('877', '江苏省', '江苏省', '', '320000', '32', '00', '00', '1', '2017-05-11 01:47:23', '2017-08-28 14:22:32', 'jiangsusheng', 'j');
INSERT INTO `z_area` VALUES ('878', '南京', '江苏省 南京', '320000', '320100', '32', '01', '00', '2', '2017-05-11 01:47:23', '2018-08-16 14:19:36', 'nanjing', 'n');
INSERT INTO `z_area` VALUES ('879', '南京市', '江苏省 南京 南京市', '320100', '320101', '32', '01', '01', '3', '2017-05-11 01:47:23', '2018-08-17 14:28:25', 'nanjingshi', 'n');
INSERT INTO `z_area` VALUES ('880', '玄武区', '江苏省 南京 玄武区', '320100', '320102', '32', '01', '02', '3', '2017-05-11 01:47:24', '2018-08-17 14:28:25', 'xuanwuqu', 'x');
INSERT INTO `z_area` VALUES ('881', '秦淮区', '江苏省 南京 秦淮区', '320100', '320104', '32', '01', '04', '3', '2017-05-11 01:47:24', '2018-08-17 14:28:25', 'qinhuaiqu', 'q');
INSERT INTO `z_area` VALUES ('882', '建邺区', '江苏省 南京 建邺区', '320100', '320105', '32', '01', '05', '3', '2017-05-11 01:47:24', '2018-08-17 14:28:25', 'jianyequ', 'j');
INSERT INTO `z_area` VALUES ('883', '鼓楼区', '江苏省 南京 鼓楼区', '320100', '320106', '32', '01', '06', '3', '2017-05-11 01:47:24', '2018-08-17 14:28:25', 'gulouqu', 'g');
INSERT INTO `z_area` VALUES ('884', '浦口区', '江苏省 南京 浦口区', '320100', '320111', '32', '01', '11', '3', '2017-05-11 01:47:24', '2018-08-17 14:28:26', 'pukouqu', 'p');
INSERT INTO `z_area` VALUES ('885', '栖霞区', '江苏省 南京 栖霞区', '320100', '320113', '32', '01', '13', '3', '2017-05-11 01:47:24', '2018-08-17 14:28:26', 'qixiaqu', 'q');
INSERT INTO `z_area` VALUES ('886', '雨花台区', '江苏省 南京 雨花台区', '320100', '320114', '32', '01', '14', '3', '2017-05-11 01:47:25', '2018-08-17 14:28:26', 'yuhuataiqu', 'y');
INSERT INTO `z_area` VALUES ('887', '江宁区', '江苏省 南京 江宁区', '320100', '320115', '32', '01', '15', '3', '2017-05-11 01:47:25', '2018-08-17 14:28:26', 'jiangningqu', 'j');
INSERT INTO `z_area` VALUES ('888', '六合区', '江苏省 南京 六合区', '320100', '320116', '32', '01', '16', '3', '2017-05-11 01:47:25', '2018-08-17 14:28:26', 'liuhequ', 'l');
INSERT INTO `z_area` VALUES ('889', '溧水区', '江苏省 南京 溧水区', '320100', '320117', '32', '01', '17', '3', '2017-05-11 01:47:25', '2018-08-17 14:28:26', 'lishuiqu', 'l');
INSERT INTO `z_area` VALUES ('890', '高淳区', '江苏省 南京 高淳区', '320100', '320118', '32', '01', '18', '3', '2017-05-11 01:47:25', '2018-08-17 14:28:26', 'gaochunqu', 'g');
INSERT INTO `z_area` VALUES ('891', '无锡', '江苏省 无锡', '320000', '320200', '32', '02', '00', '2', '2017-05-11 01:47:25', '2018-08-16 14:19:37', 'wuxi', 'w');
INSERT INTO `z_area` VALUES ('892', '无锡市', '江苏省 无锡 无锡市', '320200', '320201', '32', '02', '01', '3', '2017-05-11 01:47:25', '2018-08-17 14:28:27', 'wuxishi', 'w');
INSERT INTO `z_area` VALUES ('893', '崇安区', '江苏省 无锡 崇安区', '320200', '320202', '32', '02', '02', '3', '2017-05-11 01:47:26', '2018-08-17 14:28:27', 'chonganqu', 'c');
INSERT INTO `z_area` VALUES ('894', '南长区', '江苏省 无锡 南长区', '320200', '320203', '32', '02', '03', '3', '2017-05-11 01:47:26', '2018-08-17 14:28:27', 'nanchangqu', 'n');
INSERT INTO `z_area` VALUES ('895', '北塘区', '江苏省 无锡 北塘区', '320200', '320204', '32', '02', '04', '3', '2017-05-11 01:47:26', '2018-08-17 14:28:27', 'beitangqu', 'b');
INSERT INTO `z_area` VALUES ('896', '锡山区', '江苏省 无锡 锡山区', '320200', '320205', '32', '02', '05', '3', '2017-05-11 01:47:26', '2018-08-17 14:28:27', 'xishanqu', 'x');
INSERT INTO `z_area` VALUES ('897', '惠山区', '江苏省 无锡 惠山区', '320200', '320206', '32', '02', '06', '3', '2017-05-11 01:47:26', '2018-08-17 14:28:27', 'huishanqu', 'h');
INSERT INTO `z_area` VALUES ('898', '滨湖区', '江苏省 无锡 滨湖区', '320200', '320211', '32', '02', '11', '3', '2017-05-11 01:47:26', '2018-08-17 14:28:27', 'binhuqu', 'b');
INSERT INTO `z_area` VALUES ('899', '江阴市', '江苏省 无锡 江阴市', '320200', '320281', '32', '02', '81', '3', '2017-05-11 01:47:27', '2018-08-17 14:28:27', 'jiangyinshi', 'j');
INSERT INTO `z_area` VALUES ('900', '宜兴市', '江苏省 无锡 宜兴市', '320200', '320282', '32', '02', '82', '3', '2017-05-11 01:47:27', '2018-08-17 14:28:28', 'yixingshi', 'y');
INSERT INTO `z_area` VALUES ('901', '徐州', '江苏省 徐州', '320000', '320300', '32', '03', '00', '2', '2017-05-11 01:47:27', '2018-08-16 14:19:39', 'xuzhou', 'x');
INSERT INTO `z_area` VALUES ('902', '徐州市', '江苏省 徐州 徐州市', '320300', '320301', '32', '03', '01', '3', '2017-05-11 01:47:27', '2018-08-17 14:28:28', 'xuzhoushi', 'x');
INSERT INTO `z_area` VALUES ('903', '鼓楼区', '江苏省 徐州 鼓楼区', '320300', '320302', '32', '03', '02', '3', '2017-05-11 01:47:27', '2018-08-17 14:28:28', 'gulouqu', 'g');
INSERT INTO `z_area` VALUES ('904', '云龙区', '江苏省 徐州 云龙区', '320300', '320303', '32', '03', '03', '3', '2017-05-11 01:47:27', '2018-08-17 14:28:28', 'yunlongqu', 'y');
INSERT INTO `z_area` VALUES ('905', '贾汪区', '江苏省 徐州 贾汪区', '320300', '320305', '32', '03', '05', '3', '2017-05-11 01:47:27', '2018-08-17 14:28:28', 'jiawangqu', 'j');
INSERT INTO `z_area` VALUES ('906', '泉山区', '江苏省 徐州 泉山区', '320300', '320311', '32', '03', '11', '3', '2017-05-11 01:47:28', '2018-08-17 14:28:28', 'quanshanqu', 'q');
INSERT INTO `z_area` VALUES ('907', '铜山区', '江苏省 徐州 铜山区', '320300', '320312', '32', '03', '12', '3', '2017-05-11 01:47:28', '2018-08-17 14:28:29', 'tongshanqu', 't');
INSERT INTO `z_area` VALUES ('908', '丰县', '江苏省 徐州 丰县', '320300', '320321', '32', '03', '21', '3', '2017-05-11 01:47:28', '2018-08-17 14:28:29', 'fengxian', 'f');
INSERT INTO `z_area` VALUES ('909', '沛县', '江苏省 徐州 沛县', '320300', '320322', '32', '03', '22', '3', '2017-05-11 01:47:28', '2018-08-17 14:28:29', 'peixian', 'p');
INSERT INTO `z_area` VALUES ('910', '睢宁县', '江苏省 徐州 睢宁县', '320300', '320324', '32', '03', '24', '3', '2017-05-11 01:47:28', '2018-08-17 14:28:29', 'suiningxian', 's');
INSERT INTO `z_area` VALUES ('911', '新沂市', '江苏省 徐州 新沂市', '320300', '320381', '32', '03', '81', '3', '2017-05-11 01:47:28', '2018-08-17 14:28:29', 'xinyishi', 'x');
INSERT INTO `z_area` VALUES ('912', '邳州市', '江苏省 徐州 邳州市', '320300', '320382', '32', '03', '82', '3', '2017-05-11 01:47:28', '2018-08-17 14:28:29', 'pizhoushi', 'p');
INSERT INTO `z_area` VALUES ('913', '常州', '江苏省 常州', '320000', '320400', '32', '04', '00', '2', '2017-05-11 01:47:29', '2018-08-16 14:19:40', 'changzhou', 'c');
INSERT INTO `z_area` VALUES ('914', '常州市', '江苏省 常州 常州市', '320400', '320401', '32', '04', '01', '3', '2017-05-11 01:47:29', '2018-08-17 14:28:29', 'changzhoushi', 'c');
INSERT INTO `z_area` VALUES ('915', '天宁区', '江苏省 常州 天宁区', '320400', '320402', '32', '04', '02', '3', '2017-05-11 01:47:29', '2018-08-17 14:28:29', 'tianningqu', 't');
INSERT INTO `z_area` VALUES ('916', '钟楼区', '江苏省 常州 钟楼区', '320400', '320404', '32', '04', '04', '3', '2017-05-11 01:47:29', '2018-08-17 14:28:30', 'zhonglouqu', 'z');
INSERT INTO `z_area` VALUES ('917', '新北区', '江苏省 常州 新北区', '320400', '320411', '32', '04', '11', '3', '2017-05-11 01:47:29', '2018-08-17 14:28:30', 'xinbeiqu', 'x');
INSERT INTO `z_area` VALUES ('918', '武进区', '江苏省 常州 武进区', '320400', '320412', '32', '04', '12', '3', '2017-05-11 01:47:29', '2018-08-17 14:28:30', 'wujinqu', 'w');
INSERT INTO `z_area` VALUES ('919', '金坛区', '江苏省 常州 金坛区', '320400', '320413', '32', '04', '13', '3', '2017-05-11 01:47:29', '2018-08-17 14:28:30', 'jintanqu', 'j');
INSERT INTO `z_area` VALUES ('920', '溧阳市', '江苏省 常州 溧阳市', '320400', '320481', '32', '04', '81', '3', '2017-05-11 01:47:30', '2018-08-17 14:28:30', 'liyangshi', 'l');
INSERT INTO `z_area` VALUES ('921', '苏州', '江苏省 苏州', '320000', '320500', '32', '05', '00', '2', '2017-05-11 01:47:30', '2018-08-16 14:19:41', 'suzhou', 's');
INSERT INTO `z_area` VALUES ('922', '苏州市', '江苏省 苏州 苏州市', '320500', '320501', '32', '05', '01', '3', '2017-05-11 01:47:30', '2018-08-17 14:28:30', 'suzhoushi', 's');
INSERT INTO `z_area` VALUES ('923', '虎丘区', '江苏省 苏州 虎丘区', '320500', '320505', '32', '05', '05', '3', '2017-05-11 01:47:30', '2018-08-17 14:28:31', 'huqiuqu', 'h');
INSERT INTO `z_area` VALUES ('924', '吴中区', '江苏省 苏州 吴中区', '320500', '320506', '32', '05', '06', '3', '2017-05-11 01:47:30', '2018-08-17 14:28:31', 'wuzhongqu', 'w');
INSERT INTO `z_area` VALUES ('925', '相城区', '江苏省 苏州 相城区', '320500', '320507', '32', '05', '07', '3', '2017-05-11 01:47:30', '2018-08-17 14:28:31', 'xiangchengqu', 'x');
INSERT INTO `z_area` VALUES ('926', '姑苏区', '江苏省 苏州 姑苏区', '320500', '320508', '32', '05', '08', '3', '2017-05-11 01:47:31', '2018-08-17 14:28:31', 'gusuqu', 'g');
INSERT INTO `z_area` VALUES ('927', '吴江区', '江苏省 苏州 吴江区', '320500', '320509', '32', '05', '09', '3', '2017-05-11 01:47:31', '2018-08-17 14:28:31', 'wujiangqu', 'w');
INSERT INTO `z_area` VALUES ('928', '常熟市', '江苏省 苏州 常熟市', '320500', '320581', '32', '05', '81', '3', '2017-05-11 01:47:31', '2018-08-17 14:28:31', 'changshushi', 'c');
INSERT INTO `z_area` VALUES ('929', '张家港市', '江苏省 苏州 张家港市', '320500', '320582', '32', '05', '82', '3', '2017-05-11 01:47:31', '2018-08-17 14:28:31', 'zhangjiagangshi', 'z');
INSERT INTO `z_area` VALUES ('930', '昆山市', '江苏省 苏州 昆山市', '320500', '320583', '32', '05', '83', '3', '2017-05-11 01:47:31', '2018-08-17 14:28:31', 'kunshanshi', 'k');
INSERT INTO `z_area` VALUES ('931', '太仓市', '江苏省 苏州 太仓市', '320500', '320585', '32', '05', '85', '3', '2017-05-11 01:47:31', '2018-08-17 14:28:32', 'taicangshi', 't');
INSERT INTO `z_area` VALUES ('932', '南通', '江苏省 南通', '320000', '320600', '32', '06', '00', '2', '2017-05-11 01:47:31', '2018-08-16 14:19:43', 'nantong', 'n');
INSERT INTO `z_area` VALUES ('933', '南通市', '江苏省 南通 南通市', '320600', '320601', '32', '06', '01', '3', '2017-05-11 01:47:32', '2018-08-17 14:28:32', 'nantongshi', 'n');
INSERT INTO `z_area` VALUES ('934', '崇川区', '江苏省 南通 崇川区', '320600', '320602', '32', '06', '02', '3', '2017-05-11 01:47:32', '2018-08-17 14:28:32', 'chongchuanqu', 'c');
INSERT INTO `z_area` VALUES ('935', '港闸区', '江苏省 南通 港闸区', '320600', '320611', '32', '06', '11', '3', '2017-05-11 01:47:32', '2018-08-17 14:28:32', 'gangzhaqu', 'g');
INSERT INTO `z_area` VALUES ('936', '通州区', '江苏省 南通 通州区', '320600', '320612', '32', '06', '12', '3', '2017-05-11 01:47:32', '2018-08-17 14:28:32', 'tongzhouqu', 't');
INSERT INTO `z_area` VALUES ('937', '海安县', '江苏省 南通 海安县', '320600', '320621', '32', '06', '21', '3', '2017-05-11 01:47:32', '2018-08-17 14:28:33', 'haianxian', 'h');
INSERT INTO `z_area` VALUES ('938', '如东县', '江苏省 南通 如东县', '320600', '320623', '32', '06', '23', '3', '2017-05-11 01:47:32', '2018-08-17 14:28:33', 'rudongxian', 'r');
INSERT INTO `z_area` VALUES ('939', '启东市', '江苏省 南通 启东市', '320600', '320681', '32', '06', '81', '3', '2017-05-11 01:47:32', '2018-08-17 14:28:33', 'qidongshi', 'q');
INSERT INTO `z_area` VALUES ('940', '如皋市', '江苏省 南通 如皋市', '320600', '320682', '32', '06', '82', '3', '2017-05-11 01:47:33', '2018-08-17 14:28:33', 'rugaoshi', 'r');
INSERT INTO `z_area` VALUES ('941', '海门市', '江苏省 南通 海门市', '320600', '320684', '32', '06', '84', '3', '2017-05-11 01:47:33', '2018-08-17 14:28:33', 'haimenshi', 'h');
INSERT INTO `z_area` VALUES ('942', '连云港', '江苏省 连云港', '320000', '320700', '32', '07', '00', '2', '2017-05-11 01:47:33', '2018-08-16 14:19:44', 'lianyungang', 'l');
INSERT INTO `z_area` VALUES ('943', '连云港市', '江苏省 连云港 连云港市', '320700', '320701', '32', '07', '01', '3', '2017-05-11 01:47:33', '2018-08-17 14:28:33', 'lianyungangshi', 'l');
INSERT INTO `z_area` VALUES ('944', '连云区', '江苏省 连云港 连云区', '320700', '320703', '32', '07', '03', '3', '2017-05-11 01:47:33', '2018-08-17 14:28:33', 'lianyunqu', 'l');
INSERT INTO `z_area` VALUES ('945', '海州区', '江苏省 连云港 海州区', '320700', '320706', '32', '07', '06', '3', '2017-05-11 01:47:33', '2018-08-17 14:28:34', 'haizhouqu', 'h');
INSERT INTO `z_area` VALUES ('946', '赣榆区', '江苏省 连云港 赣榆区', '320700', '320707', '32', '07', '07', '3', '2017-05-11 01:47:33', '2018-08-17 14:28:34', 'ganyuqu', 'g');
INSERT INTO `z_area` VALUES ('947', '东海县', '江苏省 连云港 东海县', '320700', '320722', '32', '07', '22', '3', '2017-05-11 01:47:34', '2018-08-17 14:28:34', 'donghaixian', 'd');
INSERT INTO `z_area` VALUES ('948', '灌云县', '江苏省 连云港 灌云县', '320700', '320723', '32', '07', '23', '3', '2017-05-11 01:47:34', '2018-08-17 14:28:34', 'guanyunxian', 'g');
INSERT INTO `z_area` VALUES ('949', '灌南县', '江苏省 连云港 灌南县', '320700', '320724', '32', '07', '24', '3', '2017-05-11 01:47:34', '2018-08-17 14:28:34', 'guannanxian', 'g');
INSERT INTO `z_area` VALUES ('950', '淮安', '江苏省 淮安', '320000', '320800', '32', '08', '00', '2', '2017-05-11 01:47:34', '2018-08-16 14:19:45', 'huaian', 'h');
INSERT INTO `z_area` VALUES ('951', '淮安市', '江苏省 淮安 淮安市', '320800', '320801', '32', '08', '01', '3', '2017-05-11 01:47:34', '2018-08-17 14:28:34', 'huaianshi', 'h');
INSERT INTO `z_area` VALUES ('952', '清河区', '江苏省 淮安 清河区', '320800', '320802', '32', '08', '02', '3', '2017-05-11 01:47:34', '2018-08-17 14:28:34', 'qinghequ', 'q');
INSERT INTO `z_area` VALUES ('953', '淮安区', '江苏省 淮安 淮安区', '320800', '320803', '32', '08', '03', '3', '2017-05-11 01:47:34', '2018-08-17 14:28:35', 'huaianqu', 'h');
INSERT INTO `z_area` VALUES ('954', '淮阴区', '江苏省 淮安 淮阴区', '320800', '320804', '32', '08', '04', '3', '2017-05-11 01:47:35', '2018-08-17 14:28:35', 'huaiyinqu', 'h');
INSERT INTO `z_area` VALUES ('955', '清浦区', '江苏省 淮安 清浦区', '320800', '320811', '32', '08', '11', '3', '2017-05-11 01:47:35', '2018-08-17 14:28:35', 'qingpuqu', 'q');
INSERT INTO `z_area` VALUES ('956', '涟水县', '江苏省 淮安 涟水县', '320800', '320826', '32', '08', '26', '3', '2017-05-11 01:47:35', '2018-08-17 14:28:35', 'lianshuixian', 'l');
INSERT INTO `z_area` VALUES ('957', '洪泽县', '江苏省 淮安 洪泽县', '320800', '320829', '32', '08', '29', '3', '2017-05-11 01:47:35', '2018-08-17 14:28:35', 'hongzexian', 'h');
INSERT INTO `z_area` VALUES ('958', '盱眙县', '江苏省 淮安 盱眙县', '320800', '320830', '32', '08', '30', '3', '2017-05-11 01:47:35', '2018-08-17 14:28:35', 'xuyixian', 'x');
INSERT INTO `z_area` VALUES ('959', '金湖县', '江苏省 淮安 金湖县', '320800', '320831', '32', '08', '31', '3', '2017-05-11 01:47:35', '2018-08-17 14:28:35', 'jinhuxian', 'j');
INSERT INTO `z_area` VALUES ('960', '盐城', '江苏省 盐城', '320000', '320900', '32', '09', '00', '2', '2017-05-11 01:47:35', '2018-08-16 14:19:46', 'yancheng', 'y');
INSERT INTO `z_area` VALUES ('961', '盐城市', '江苏省 盐城 盐城市', '320900', '320901', '32', '09', '01', '3', '2017-05-11 01:47:36', '2018-08-17 14:28:36', 'yanchengshi', 'y');
INSERT INTO `z_area` VALUES ('962', '亭湖区', '江苏省 盐城 亭湖区', '320900', '320902', '32', '09', '02', '3', '2017-05-11 01:47:36', '2018-08-17 14:28:36', 'tinghuqu', 't');
INSERT INTO `z_area` VALUES ('963', '盐都区', '江苏省 盐城 盐都区', '320900', '320903', '32', '09', '03', '3', '2017-05-11 01:47:36', '2018-08-17 14:28:36', 'yandouqu', 'y');
INSERT INTO `z_area` VALUES ('964', '大丰区', '江苏省 盐城 大丰区', '320900', '320904', '32', '09', '04', '3', '2017-05-11 01:47:36', '2018-08-17 14:28:36', 'dafengqu', 'd');
INSERT INTO `z_area` VALUES ('965', '响水县', '江苏省 盐城 响水县', '320900', '320921', '32', '09', '21', '3', '2017-05-11 01:47:36', '2018-08-17 14:28:36', 'xiangshuixian', 'x');
INSERT INTO `z_area` VALUES ('966', '滨海县', '江苏省 盐城 滨海县', '320900', '320922', '32', '09', '22', '3', '2017-05-11 01:47:36', '2018-08-17 14:28:36', 'binhaixian', 'b');
INSERT INTO `z_area` VALUES ('967', '阜宁县', '江苏省 盐城 阜宁县', '320900', '320923', '32', '09', '23', '3', '2017-05-11 01:47:37', '2018-08-17 14:28:36', 'funingxian', 'f');
INSERT INTO `z_area` VALUES ('968', '射阳县', '江苏省 盐城 射阳县', '320900', '320924', '32', '09', '24', '3', '2017-05-11 01:47:37', '2018-08-17 14:28:36', 'sheyangxian', 's');
INSERT INTO `z_area` VALUES ('969', '建湖县', '江苏省 盐城 建湖县', '320900', '320925', '32', '09', '25', '3', '2017-05-11 01:47:37', '2018-08-17 14:28:37', 'jianhuxian', 'j');
INSERT INTO `z_area` VALUES ('970', '东台市', '江苏省 盐城 东台市', '320900', '320981', '32', '09', '81', '3', '2017-05-11 01:47:37', '2018-08-17 14:28:37', 'dongtaishi', 'd');
INSERT INTO `z_area` VALUES ('971', '扬州', '江苏省 扬州', '320000', '321000', '32', '10', '00', '2', '2017-05-11 01:47:37', '2018-08-16 14:19:47', 'yangzhou', 'y');
INSERT INTO `z_area` VALUES ('972', '扬州市', '江苏省 扬州 扬州市', '321000', '321001', '32', '10', '01', '3', '2017-05-11 01:47:37', '2018-08-17 14:28:37', 'yangzhoushi', 'y');
INSERT INTO `z_area` VALUES ('973', '广陵区', '江苏省 扬州 广陵区', '321000', '321002', '32', '10', '02', '3', '2017-05-11 01:47:37', '2018-08-17 14:28:37', 'guanglingqu', 'g');
INSERT INTO `z_area` VALUES ('974', '邗江区', '江苏省 扬州 邗江区', '321000', '321003', '32', '10', '03', '3', '2017-05-11 01:47:38', '2018-08-17 14:28:37', 'hanjiangqu', 'h');
INSERT INTO `z_area` VALUES ('975', '江都区', '江苏省 扬州 江都区', '321000', '321012', '32', '10', '12', '3', '2017-05-11 01:47:38', '2018-08-17 14:28:37', 'jiangdouqu', 'j');
INSERT INTO `z_area` VALUES ('976', '宝应县', '江苏省 扬州 宝应县', '321000', '321023', '32', '10', '23', '3', '2017-05-11 01:47:38', '2018-08-17 14:28:37', 'baoyingxian', 'b');
INSERT INTO `z_area` VALUES ('977', '仪征市', '江苏省 扬州 仪征市', '321000', '321081', '32', '10', '81', '3', '2017-05-11 01:47:38', '2018-08-17 14:28:38', 'yizhengshi', 'y');
INSERT INTO `z_area` VALUES ('978', '高邮市', '江苏省 扬州 高邮市', '321000', '321084', '32', '10', '84', '3', '2017-05-11 01:47:38', '2018-08-17 14:28:38', 'gaoyoushi', 'g');
INSERT INTO `z_area` VALUES ('979', '镇江', '江苏省 镇江', '320000', '321100', '32', '11', '00', '2', '2017-05-11 01:47:38', '2018-08-16 14:19:48', 'zhenjiang', 'z');
INSERT INTO `z_area` VALUES ('980', '镇江市', '江苏省 镇江 镇江市', '321100', '321101', '32', '11', '01', '3', '2017-05-11 01:47:38', '2018-08-17 14:28:38', 'zhenjiangshi', 'z');
INSERT INTO `z_area` VALUES ('981', '京口区', '江苏省 镇江 京口区', '321100', '321102', '32', '11', '02', '3', '2017-05-11 01:47:39', '2018-08-17 14:28:38', 'jingkouqu', 'j');
INSERT INTO `z_area` VALUES ('982', '润州区', '江苏省 镇江 润州区', '321100', '321111', '32', '11', '11', '3', '2017-05-11 01:47:39', '2018-08-17 14:28:38', 'runzhouqu', 'r');
INSERT INTO `z_area` VALUES ('983', '丹徒区', '江苏省 镇江 丹徒区', '321100', '321112', '32', '11', '12', '3', '2017-05-11 01:47:39', '2018-08-17 14:28:38', 'dantuqu', 'd');
INSERT INTO `z_area` VALUES ('984', '丹阳市', '江苏省 镇江 丹阳市', '321100', '321181', '32', '11', '81', '3', '2017-05-11 01:47:39', '2018-08-17 14:28:38', 'danyangshi', 'd');
INSERT INTO `z_area` VALUES ('985', '扬中市', '江苏省 镇江 扬中市', '321100', '321182', '32', '11', '82', '3', '2017-05-11 01:47:39', '2018-08-17 14:28:39', 'yangzhongshi', 'y');
INSERT INTO `z_area` VALUES ('986', '句容市', '江苏省 镇江 句容市', '321100', '321183', '32', '11', '83', '3', '2017-05-11 01:47:39', '2018-08-17 14:28:39', 'jurongshi', 'j');
INSERT INTO `z_area` VALUES ('987', '泰州', '江苏省 泰州', '320000', '321200', '32', '12', '00', '2', '2017-05-11 01:47:39', '2018-08-16 14:19:49', 'taizhou', 't');
INSERT INTO `z_area` VALUES ('988', '泰州市', '江苏省 泰州 泰州市', '321200', '321201', '32', '12', '01', '3', '2017-05-11 01:47:40', '2018-08-17 14:28:39', 'taizhoushi', 't');
INSERT INTO `z_area` VALUES ('989', '海陵区', '江苏省 泰州 海陵区', '321200', '321202', '32', '12', '02', '3', '2017-05-11 01:47:40', '2018-08-17 14:28:39', 'hailingqu', 'h');
INSERT INTO `z_area` VALUES ('990', '高港区', '江苏省 泰州 高港区', '321200', '321203', '32', '12', '03', '3', '2017-05-11 01:47:40', '2018-08-17 14:28:39', 'gaogangqu', 'g');
INSERT INTO `z_area` VALUES ('991', '姜堰区', '江苏省 泰州 姜堰区', '321200', '321204', '32', '12', '04', '3', '2017-05-11 01:47:40', '2018-08-17 14:28:39', 'jiangyanqu', 'j');
INSERT INTO `z_area` VALUES ('992', '兴化市', '江苏省 泰州 兴化市', '321200', '321281', '32', '12', '81', '3', '2017-05-11 01:47:40', '2018-08-17 14:28:39', 'xinghuashi', 'x');
INSERT INTO `z_area` VALUES ('993', '靖江市', '江苏省 泰州 靖江市', '321200', '321282', '32', '12', '82', '3', '2017-05-11 01:47:40', '2018-08-17 14:28:40', 'jingjiangshi', 'j');
INSERT INTO `z_area` VALUES ('994', '泰兴市', '江苏省 泰州 泰兴市', '321200', '321283', '32', '12', '83', '3', '2017-05-11 01:47:41', '2018-08-17 14:28:40', 'taixingshi', 't');
INSERT INTO `z_area` VALUES ('995', '宿迁', '江苏省 宿迁', '320000', '321300', '32', '13', '00', '2', '2017-05-11 01:47:41', '2018-08-16 14:19:50', 'suqian', 's');
INSERT INTO `z_area` VALUES ('996', '宿迁市', '江苏省 宿迁 宿迁市', '321300', '321301', '32', '13', '01', '3', '2017-05-11 01:47:41', '2018-08-17 14:28:40', 'suqianshi', 's');
INSERT INTO `z_area` VALUES ('997', '宿城区', '江苏省 宿迁 宿城区', '321300', '321302', '32', '13', '02', '3', '2017-05-11 01:47:41', '2018-08-17 14:28:40', 'suchengqu', 's');
INSERT INTO `z_area` VALUES ('998', '宿豫区', '江苏省 宿迁 宿豫区', '321300', '321311', '32', '13', '11', '3', '2017-05-11 01:47:41', '2018-08-17 14:28:40', 'suyuqu', 's');
INSERT INTO `z_area` VALUES ('999', '沭阳县', '江苏省 宿迁 沭阳县', '321300', '321322', '32', '13', '22', '3', '2017-05-11 01:47:41', '2018-08-17 14:28:40', 'shuyangxian', 's');
INSERT INTO `z_area` VALUES ('1000', '泗阳县', '江苏省 宿迁 泗阳县', '321300', '321323', '32', '13', '23', '3', '2017-05-11 01:47:41', '2018-08-17 14:28:40', 'siyangxian', 's');
INSERT INTO `z_area` VALUES ('1001', '泗洪县', '江苏省 宿迁 泗洪县', '321300', '321324', '32', '13', '24', '3', '2017-05-11 01:47:42', '2018-08-17 14:28:41', 'sihongxian', 's');
INSERT INTO `z_area` VALUES ('1002', '浙江省', '浙江省', '', '330000', '33', '00', '00', '1', '2017-05-11 01:47:42', '2017-08-28 14:22:41', 'zhejiangsheng', 'z');
INSERT INTO `z_area` VALUES ('1003', '杭州', '浙江省 杭州', '330000', '330100', '33', '01', '00', '2', '2017-05-11 01:47:42', '2018-08-16 14:19:51', 'hangzhou', 'h');
INSERT INTO `z_area` VALUES ('1004', '杭州市', '浙江省 杭州 杭州市', '330100', '330101', '33', '01', '01', '3', '2017-05-11 01:47:42', '2018-08-17 14:28:41', 'hangzhoushi', 'h');
INSERT INTO `z_area` VALUES ('1005', '上城区', '浙江省 杭州 上城区', '330100', '330102', '33', '01', '02', '3', '2017-05-11 01:47:42', '2018-08-17 14:28:41', 'shangchengqu', 's');
INSERT INTO `z_area` VALUES ('1006', '下城区', '浙江省 杭州 下城区', '330100', '330103', '33', '01', '03', '3', '2017-05-11 01:47:42', '2018-08-17 14:28:41', 'xiachengqu', 'x');
INSERT INTO `z_area` VALUES ('1007', '江干区', '浙江省 杭州 江干区', '330100', '330104', '33', '01', '04', '3', '2017-05-11 01:47:42', '2018-08-17 14:28:41', 'jiangganqu', 'j');
INSERT INTO `z_area` VALUES ('1008', '拱墅区', '浙江省 杭州 拱墅区', '330100', '330105', '33', '01', '05', '3', '2017-05-11 01:47:42', '2018-08-17 14:28:41', 'gongshuqu', 'g');
INSERT INTO `z_area` VALUES ('1009', '西湖区', '浙江省 杭州 西湖区', '330100', '330106', '33', '01', '06', '3', '2017-05-11 01:47:43', '2018-08-17 14:28:42', 'xihuqu', 'x');
INSERT INTO `z_area` VALUES ('1010', '滨江区', '浙江省 杭州 滨江区', '330100', '330108', '33', '01', '08', '3', '2017-05-11 01:47:43', '2018-08-17 14:28:42', 'binjiangqu', 'b');
INSERT INTO `z_area` VALUES ('1011', '萧山区', '浙江省 杭州 萧山区', '330100', '330109', '33', '01', '09', '3', '2017-05-11 01:47:43', '2018-08-17 14:28:42', 'xiaoshanqu', 'x');
INSERT INTO `z_area` VALUES ('1012', '余杭区', '浙江省 杭州 余杭区', '330100', '330110', '33', '01', '10', '3', '2017-05-11 01:47:43', '2018-08-17 14:28:42', 'yuhangqu', 'y');
INSERT INTO `z_area` VALUES ('1013', '富阳区', '浙江省 杭州 富阳区', '330100', '330111', '33', '01', '11', '3', '2017-05-11 01:47:43', '2018-08-17 14:28:42', 'fuyangqu', 'f');
INSERT INTO `z_area` VALUES ('1014', '桐庐县', '浙江省 杭州 桐庐县', '330100', '330122', '33', '01', '22', '3', '2017-05-11 01:47:43', '2018-08-17 14:28:42', 'tongluxian', 't');
INSERT INTO `z_area` VALUES ('1015', '淳安县', '浙江省 杭州 淳安县', '330100', '330127', '33', '01', '27', '3', '2017-05-11 01:47:44', '2018-08-17 14:28:42', 'chunanxian', 'c');
INSERT INTO `z_area` VALUES ('1016', '建德市', '浙江省 杭州 建德市', '330100', '330182', '33', '01', '82', '3', '2017-05-11 01:47:44', '2018-08-17 14:28:43', 'jiandeshi', 'j');
INSERT INTO `z_area` VALUES ('1017', '临安市', '浙江省 杭州 临安市', '330100', '330185', '33', '01', '85', '3', '2017-05-11 01:47:44', '2018-08-17 14:28:43', 'linanshi', 'l');
INSERT INTO `z_area` VALUES ('1018', '宁波', '浙江省 宁波', '330000', '330200', '33', '02', '00', '2', '2017-05-11 01:47:44', '2018-08-16 14:19:53', 'ningbo', 'n');
INSERT INTO `z_area` VALUES ('1019', '宁波市', '浙江省 宁波 宁波市', '330200', '330201', '33', '02', '01', '3', '2017-05-11 01:47:44', '2018-08-17 14:28:43', 'ningboshi', 'n');
INSERT INTO `z_area` VALUES ('1020', '海曙区', '浙江省 宁波 海曙区', '330200', '330203', '33', '02', '03', '3', '2017-05-11 01:47:44', '2018-08-17 14:28:43', 'haishuqu', 'h');
INSERT INTO `z_area` VALUES ('1021', '江东区', '浙江省 宁波 江东区', '330200', '330204', '33', '02', '04', '3', '2017-05-11 01:47:44', '2018-08-17 14:28:43', 'jiangdongqu', 'j');
INSERT INTO `z_area` VALUES ('1022', '江北区', '浙江省 宁波 江北区', '330200', '330205', '33', '02', '05', '3', '2017-05-11 01:47:45', '2018-08-17 14:28:43', 'jiangbeiqu', 'j');
INSERT INTO `z_area` VALUES ('1023', '北仑区', '浙江省 宁波 北仑区', '330200', '330206', '33', '02', '06', '3', '2017-05-11 01:47:45', '2018-08-17 14:28:44', 'beilunqu', 'b');
INSERT INTO `z_area` VALUES ('1024', '镇海区', '浙江省 宁波 镇海区', '330200', '330211', '33', '02', '11', '3', '2017-05-11 01:47:45', '2018-08-17 14:28:44', 'zhenhaiqu', 'z');
INSERT INTO `z_area` VALUES ('1025', '鄞州区', '浙江省 宁波 鄞州区', '330200', '330212', '33', '02', '12', '3', '2017-05-11 01:47:45', '2018-08-17 14:28:44', 'yinzhouqu', 'y');
INSERT INTO `z_area` VALUES ('1026', '象山县', '浙江省 宁波 象山县', '330200', '330225', '33', '02', '25', '3', '2017-05-11 01:47:45', '2018-08-17 14:28:44', 'xiangshanxian', 'x');
INSERT INTO `z_area` VALUES ('1027', '宁海县', '浙江省 宁波 宁海县', '330200', '330226', '33', '02', '26', '3', '2017-05-11 01:47:45', '2018-08-17 14:28:44', 'ninghaixian', 'n');
INSERT INTO `z_area` VALUES ('1028', '余姚市', '浙江省 宁波 余姚市', '330200', '330281', '33', '02', '81', '3', '2017-05-11 01:47:46', '2018-08-17 14:28:44', 'yuyaoshi', 'y');
INSERT INTO `z_area` VALUES ('1029', '慈溪市', '浙江省 宁波 慈溪市', '330200', '330282', '33', '02', '82', '3', '2017-05-11 01:47:46', '2018-08-17 14:28:44', 'cixishi', 'c');
INSERT INTO `z_area` VALUES ('1030', '奉化市', '浙江省 宁波 奉化市', '330200', '330283', '33', '02', '83', '3', '2017-05-11 01:47:46', '2018-08-17 14:28:45', 'fenghuashi', 'f');
INSERT INTO `z_area` VALUES ('1031', '温州', '浙江省 温州', '330000', '330300', '33', '03', '00', '2', '2017-05-11 01:47:46', '2018-08-16 14:19:55', 'wenzhou', 'w');
INSERT INTO `z_area` VALUES ('1032', '温州市', '浙江省 温州 温州市', '330300', '330301', '33', '03', '01', '3', '2017-05-11 01:47:46', '2018-08-17 14:28:45', 'wenzhoushi', 'w');
INSERT INTO `z_area` VALUES ('1033', '鹿城区', '浙江省 温州 鹿城区', '330300', '330302', '33', '03', '02', '3', '2017-05-11 01:47:46', '2018-08-17 14:28:45', 'luchengqu', 'l');
INSERT INTO `z_area` VALUES ('1034', '龙湾区', '浙江省 温州 龙湾区', '330300', '330303', '33', '03', '03', '3', '2017-05-11 01:47:46', '2018-08-17 14:28:45', 'longwanqu', 'l');
INSERT INTO `z_area` VALUES ('1035', '瓯海区', '浙江省 温州 瓯海区', '330300', '330304', '33', '03', '04', '3', '2017-05-11 01:47:47', '2018-08-17 14:28:45', 'ouhaiqu', 'o');
INSERT INTO `z_area` VALUES ('1036', '洞头区', '浙江省 温州 洞头区', '330300', '330305', '33', '03', '05', '3', '2017-05-11 01:47:47', '2018-08-17 14:28:45', 'dongtouqu', 'd');
INSERT INTO `z_area` VALUES ('1037', '永嘉县', '浙江省 温州 永嘉县', '330300', '330324', '33', '03', '24', '3', '2017-05-11 01:47:47', '2018-08-17 14:28:45', 'yongjiaxian', 'y');
INSERT INTO `z_area` VALUES ('1038', '平阳县', '浙江省 温州 平阳县', '330300', '330326', '33', '03', '26', '3', '2017-05-11 01:47:47', '2018-08-17 14:28:46', 'pingyangxian', 'p');
INSERT INTO `z_area` VALUES ('1039', '苍南县', '浙江省 温州 苍南县', '330300', '330327', '33', '03', '27', '3', '2017-05-11 01:47:47', '2018-08-17 14:28:46', 'cangnanxian', 'c');
INSERT INTO `z_area` VALUES ('1040', '文成县', '浙江省 温州 文成县', '330300', '330328', '33', '03', '28', '3', '2017-05-11 01:47:47', '2018-08-17 14:28:46', 'wenchengxian', 'w');
INSERT INTO `z_area` VALUES ('1041', '泰顺县', '浙江省 温州 泰顺县', '330300', '330329', '33', '03', '29', '3', '2017-05-11 01:47:47', '2018-08-17 14:28:46', 'taishunxian', 't');
INSERT INTO `z_area` VALUES ('1042', '瑞安市', '浙江省 温州 瑞安市', '330300', '330381', '33', '03', '81', '3', '2017-05-11 01:47:48', '2018-08-17 14:28:46', 'ruianshi', 'r');
INSERT INTO `z_area` VALUES ('1043', '乐清市', '浙江省 温州 乐清市', '330300', '330382', '33', '03', '82', '3', '2017-05-11 01:47:48', '2018-08-17 14:28:46', 'leqingshi', 'l');
INSERT INTO `z_area` VALUES ('1044', '嘉兴', '浙江省 嘉兴', '330000', '330400', '33', '04', '00', '2', '2017-05-11 01:47:48', '2018-08-16 14:19:57', 'jiaxing', 'j');
INSERT INTO `z_area` VALUES ('1045', '嘉兴市', '浙江省 嘉兴 嘉兴市', '330400', '330401', '33', '04', '01', '3', '2017-05-11 01:47:48', '2018-08-17 14:28:46', 'jiaxingshi', 'j');
INSERT INTO `z_area` VALUES ('1046', '南湖区', '浙江省 嘉兴 南湖区', '330400', '330402', '33', '04', '02', '3', '2017-05-11 01:47:48', '2018-08-17 14:28:47', 'nanhuqu', 'n');
INSERT INTO `z_area` VALUES ('1047', '秀洲区', '浙江省 嘉兴 秀洲区', '330400', '330411', '33', '04', '11', '3', '2017-05-11 01:47:48', '2018-08-17 14:28:47', 'xiuzhouqu', 'x');
INSERT INTO `z_area` VALUES ('1048', '嘉善县', '浙江省 嘉兴 嘉善县', '330400', '330421', '33', '04', '21', '3', '2017-05-11 01:47:48', '2018-08-17 14:28:47', 'jiashanxian', 'j');
INSERT INTO `z_area` VALUES ('1049', '海盐县', '浙江省 嘉兴 海盐县', '330400', '330424', '33', '04', '24', '3', '2017-05-11 01:47:49', '2018-08-17 14:28:47', 'haiyanxian', 'h');
INSERT INTO `z_area` VALUES ('1050', '海宁市', '浙江省 嘉兴 海宁市', '330400', '330481', '33', '04', '81', '3', '2017-05-11 01:47:49', '2018-08-17 14:28:47', 'hainingshi', 'h');
INSERT INTO `z_area` VALUES ('1051', '平湖市', '浙江省 嘉兴 平湖市', '330400', '330482', '33', '04', '82', '3', '2017-05-11 01:47:49', '2018-08-17 14:28:47', 'pinghushi', 'p');
INSERT INTO `z_area` VALUES ('1052', '桐乡市', '浙江省 嘉兴 桐乡市', '330400', '330483', '33', '04', '83', '3', '2017-05-11 01:47:49', '2018-08-17 14:28:47', 'tongxiangshi', 't');
INSERT INTO `z_area` VALUES ('1053', '湖州', '浙江省 湖州', '330000', '330500', '33', '05', '00', '2', '2017-05-11 01:47:49', '2018-08-16 14:19:58', 'huzhou', 'h');
INSERT INTO `z_area` VALUES ('1054', '湖州市', '浙江省 湖州 湖州市', '330500', '330501', '33', '05', '01', '3', '2017-05-11 01:47:49', '2018-08-17 14:28:47', 'huzhoushi', 'h');
INSERT INTO `z_area` VALUES ('1055', '吴兴区', '浙江省 湖州 吴兴区', '330500', '330502', '33', '05', '02', '3', '2017-05-11 01:47:50', '2018-08-17 14:28:48', 'wuxingqu', 'w');
INSERT INTO `z_area` VALUES ('1056', '南浔区', '浙江省 湖州 南浔区', '330500', '330503', '33', '05', '03', '3', '2017-05-11 01:47:50', '2018-08-17 14:28:48', 'nanxunqu', 'n');
INSERT INTO `z_area` VALUES ('1057', '德清县', '浙江省 湖州 德清县', '330500', '330521', '33', '05', '21', '3', '2017-05-11 01:47:50', '2018-08-17 14:28:48', 'deqingxian', 'd');
INSERT INTO `z_area` VALUES ('1058', '长兴县', '浙江省 湖州 长兴县', '330500', '330522', '33', '05', '22', '3', '2017-05-11 01:47:50', '2018-08-17 14:28:48', 'changxingxian', 'c');
INSERT INTO `z_area` VALUES ('1059', '安吉县', '浙江省 湖州 安吉县', '330500', '330523', '33', '05', '23', '3', '2017-05-11 01:47:50', '2018-08-17 14:28:48', 'anjixian', 'a');
INSERT INTO `z_area` VALUES ('1060', '绍兴', '浙江省 绍兴', '330000', '330600', '33', '06', '00', '2', '2017-05-11 01:47:50', '2018-08-16 14:19:59', 'shaoxing', 's');
INSERT INTO `z_area` VALUES ('1061', '绍兴市', '浙江省 绍兴 绍兴市', '330600', '330601', '33', '06', '01', '3', '2017-05-11 01:47:50', '2018-08-17 14:28:48', 'shaoxingshi', 's');
INSERT INTO `z_area` VALUES ('1062', '越城区', '浙江省 绍兴 越城区', '330600', '330602', '33', '06', '02', '3', '2017-05-11 01:47:51', '2018-08-17 14:28:49', 'yuechengqu', 'y');
INSERT INTO `z_area` VALUES ('1063', '柯桥区', '浙江省 绍兴 柯桥区', '330600', '330603', '33', '06', '03', '3', '2017-05-11 01:47:51', '2018-08-17 14:28:49', 'keqiaoqu', 'k');
INSERT INTO `z_area` VALUES ('1064', '上虞区', '浙江省 绍兴 上虞区', '330600', '330604', '33', '06', '04', '3', '2017-05-11 01:47:51', '2018-08-17 14:28:49', 'shangyuqu', 's');
INSERT INTO `z_area` VALUES ('1065', '新昌县', '浙江省 绍兴 新昌县', '330600', '330624', '33', '06', '24', '3', '2017-05-11 01:47:51', '2018-08-17 14:28:49', 'xinchangxian', 'x');
INSERT INTO `z_area` VALUES ('1066', '诸暨市', '浙江省 绍兴 诸暨市', '330600', '330681', '33', '06', '81', '3', '2017-05-11 01:47:51', '2018-08-17 14:28:49', 'zhujishi', 'z');
INSERT INTO `z_area` VALUES ('1067', '嵊州市', '浙江省 绍兴 嵊州市', '330600', '330683', '33', '06', '83', '3', '2017-05-11 01:47:51', '2018-08-17 14:28:49', 'shengzhoushi', 's');
INSERT INTO `z_area` VALUES ('1068', '金华', '浙江省 金华', '330000', '330700', '33', '07', '00', '2', '2017-05-11 01:47:51', '2018-08-16 14:20:00', 'jinhua', 'j');
INSERT INTO `z_area` VALUES ('1069', '金华市', '浙江省 金华 金华市', '330700', '330701', '33', '07', '01', '3', '2017-05-11 01:47:52', '2018-08-17 14:28:49', 'jinhuashi', 'j');
INSERT INTO `z_area` VALUES ('1070', '婺城区', '浙江省 金华 婺城区', '330700', '330702', '33', '07', '02', '3', '2017-05-11 01:47:52', '2018-08-17 14:28:49', 'wuchengqu', 'w');
INSERT INTO `z_area` VALUES ('1071', '金东区', '浙江省 金华 金东区', '330700', '330703', '33', '07', '03', '3', '2017-05-11 01:47:52', '2018-08-17 14:28:50', 'jindongqu', 'j');
INSERT INTO `z_area` VALUES ('1072', '武义县', '浙江省 金华 武义县', '330700', '330723', '33', '07', '23', '3', '2017-05-11 01:47:52', '2018-08-17 14:28:50', 'wuyixian', 'w');
INSERT INTO `z_area` VALUES ('1073', '浦江县', '浙江省 金华 浦江县', '330700', '330726', '33', '07', '26', '3', '2017-05-11 01:47:52', '2018-08-17 14:28:50', 'pujiangxian', 'p');
INSERT INTO `z_area` VALUES ('1074', '磐安县', '浙江省 金华 磐安县', '330700', '330727', '33', '07', '27', '3', '2017-05-11 01:47:52', '2018-08-17 14:28:50', 'pananxian', 'p');
INSERT INTO `z_area` VALUES ('1075', '兰溪市', '浙江省 金华 兰溪市', '330700', '330781', '33', '07', '81', '3', '2017-05-11 01:47:53', '2018-08-17 14:28:50', 'lanxishi', 'l');
INSERT INTO `z_area` VALUES ('1076', '义乌市', '浙江省 金华 义乌市', '330700', '330782', '33', '07', '82', '3', '2017-05-11 01:47:53', '2018-08-17 14:28:50', 'yiwushi', 'y');
INSERT INTO `z_area` VALUES ('1077', '东阳市', '浙江省 金华 东阳市', '330700', '330783', '33', '07', '83', '3', '2017-05-11 01:47:53', '2018-08-17 14:28:50', 'dongyangshi', 'd');
INSERT INTO `z_area` VALUES ('1078', '永康市', '浙江省 金华 永康市', '330700', '330784', '33', '07', '84', '3', '2017-05-11 01:47:53', '2018-08-17 14:28:51', 'yongkangshi', 'y');
INSERT INTO `z_area` VALUES ('1079', '衢州', '浙江省 衢州', '330000', '330800', '33', '08', '00', '2', '2017-05-11 01:47:53', '2018-08-16 14:20:01', 'quzhou', 'q');
INSERT INTO `z_area` VALUES ('1080', '衢州市', '浙江省 衢州 衢州市', '330800', '330801', '33', '08', '01', '3', '2017-05-11 01:47:53', '2018-08-17 14:28:51', 'quzhoushi', 'q');
INSERT INTO `z_area` VALUES ('1081', '柯城区', '浙江省 衢州 柯城区', '330800', '330802', '33', '08', '02', '3', '2017-05-11 01:47:53', '2018-08-17 14:28:51', 'kechengqu', 'k');
INSERT INTO `z_area` VALUES ('1082', '衢江区', '浙江省 衢州 衢江区', '330800', '330803', '33', '08', '03', '3', '2017-05-11 01:47:54', '2018-08-17 14:28:51', 'qujiangqu', 'q');
INSERT INTO `z_area` VALUES ('1083', '常山县', '浙江省 衢州 常山县', '330800', '330822', '33', '08', '22', '3', '2017-05-11 01:47:54', '2018-08-17 14:28:51', 'changshanxian', 'c');
INSERT INTO `z_area` VALUES ('1084', '开化县', '浙江省 衢州 开化县', '330800', '330824', '33', '08', '24', '3', '2017-05-11 01:47:54', '2018-08-17 14:28:52', 'kaihuaxian', 'k');
INSERT INTO `z_area` VALUES ('1085', '龙游县', '浙江省 衢州 龙游县', '330800', '330825', '33', '08', '25', '3', '2017-05-11 01:47:54', '2018-08-17 14:28:52', 'longyouxian', 'l');
INSERT INTO `z_area` VALUES ('1086', '江山市', '浙江省 衢州 江山市', '330800', '330881', '33', '08', '81', '3', '2017-05-11 01:47:54', '2018-08-17 14:28:52', 'jiangshanshi', 'j');
INSERT INTO `z_area` VALUES ('1087', '舟山', '浙江省 舟山', '330000', '330900', '33', '09', '00', '2', '2017-05-11 01:47:54', '2018-08-16 14:20:02', 'zhoushan', 'z');
INSERT INTO `z_area` VALUES ('1088', '舟山市', '浙江省 舟山 舟山市', '330900', '330901', '33', '09', '01', '3', '2017-05-11 01:47:54', '2018-08-17 14:28:52', 'zhoushanshi', 'z');
INSERT INTO `z_area` VALUES ('1089', '定海区', '浙江省 舟山 定海区', '330900', '330902', '33', '09', '02', '3', '2017-05-11 01:47:55', '2018-08-17 14:28:52', 'dinghaiqu', 'd');
INSERT INTO `z_area` VALUES ('1090', '普陀区', '浙江省 舟山 普陀区', '330900', '330903', '33', '09', '03', '3', '2017-05-11 01:47:55', '2018-08-17 14:28:52', 'putuoqu', 'p');
INSERT INTO `z_area` VALUES ('1091', '岱山县', '浙江省 舟山 岱山县', '330900', '330921', '33', '09', '21', '3', '2017-05-11 01:47:55', '2018-08-17 14:28:52', 'daishanxian', 'd');
INSERT INTO `z_area` VALUES ('1092', '嵊泗县', '浙江省 舟山 嵊泗县', '330900', '330922', '33', '09', '22', '3', '2017-05-11 01:47:55', '2018-08-17 14:28:53', 'shengsixian', 's');
INSERT INTO `z_area` VALUES ('1093', '台州', '浙江省 台州', '330000', '331000', '33', '10', '00', '2', '2017-05-11 01:47:55', '2018-08-16 14:20:03', 'taizhou', 't');
INSERT INTO `z_area` VALUES ('1094', '台州市', '浙江省 台州 台州市', '331000', '331001', '33', '10', '01', '3', '2017-05-11 01:47:55', '2018-08-17 14:28:53', 'taizhoushi', 't');
INSERT INTO `z_area` VALUES ('1095', '椒江区', '浙江省 台州 椒江区', '331000', '331002', '33', '10', '02', '3', '2017-05-11 01:47:55', '2018-08-17 14:28:53', 'jiaojiangqu', 'j');
INSERT INTO `z_area` VALUES ('1096', '黄岩区', '浙江省 台州 黄岩区', '331000', '331003', '33', '10', '03', '3', '2017-05-11 01:47:56', '2018-08-17 14:28:53', 'huangyanqu', 'h');
INSERT INTO `z_area` VALUES ('1097', '路桥区', '浙江省 台州 路桥区', '331000', '331004', '33', '10', '04', '3', '2017-05-11 01:47:56', '2018-08-17 14:28:53', 'luqiaoqu', 'l');
INSERT INTO `z_area` VALUES ('1098', '玉环县', '浙江省 台州 玉环县', '331000', '331021', '33', '10', '21', '3', '2017-05-11 01:47:56', '2018-08-17 14:28:53', 'yuhuanxian', 'y');
INSERT INTO `z_area` VALUES ('1099', '三门县', '浙江省 台州 三门县', '331000', '331022', '33', '10', '22', '3', '2017-05-11 01:47:56', '2018-08-17 14:28:53', 'sanmenxian', 's');
INSERT INTO `z_area` VALUES ('1100', '天台县', '浙江省 台州 天台县', '331000', '331023', '33', '10', '23', '3', '2017-05-11 01:47:56', '2018-08-17 14:28:54', 'tiantaixian', 't');
INSERT INTO `z_area` VALUES ('1101', '仙居县', '浙江省 台州 仙居县', '331000', '331024', '33', '10', '24', '3', '2017-05-11 01:47:56', '2018-08-17 14:28:54', 'xianjuxian', 'x');
INSERT INTO `z_area` VALUES ('1102', '温岭市', '浙江省 台州 温岭市', '331000', '331081', '33', '10', '81', '3', '2017-05-11 01:47:57', '2018-08-17 14:28:54', 'wenlingshi', 'w');
INSERT INTO `z_area` VALUES ('1103', '临海市', '浙江省 台州 临海市', '331000', '331082', '33', '10', '82', '3', '2017-05-11 01:47:57', '2018-08-17 14:28:54', 'linhaishi', 'l');
INSERT INTO `z_area` VALUES ('1104', '丽水', '浙江省 丽水', '330000', '331100', '33', '11', '00', '2', '2017-05-11 01:47:57', '2018-08-16 14:20:04', 'lishui', 'l');
INSERT INTO `z_area` VALUES ('1105', '丽水市', '浙江省 丽水 丽水市', '331100', '331101', '33', '11', '01', '3', '2017-05-11 01:47:57', '2018-08-17 14:28:54', 'lishuishi', 'l');
INSERT INTO `z_area` VALUES ('1106', '莲都区', '浙江省 丽水 莲都区', '331100', '331102', '33', '11', '02', '3', '2017-05-11 01:47:57', '2018-08-17 14:28:54', 'liandouqu', 'l');
INSERT INTO `z_area` VALUES ('1107', '青田县', '浙江省 丽水 青田县', '331100', '331121', '33', '11', '21', '3', '2017-05-11 01:47:57', '2018-08-17 14:28:54', 'qingtianxian', 'q');
INSERT INTO `z_area` VALUES ('1108', '缙云县', '浙江省 丽水 缙云县', '331100', '331122', '33', '11', '22', '3', '2017-05-11 01:47:57', '2018-08-17 14:28:55', 'jinyunxian', 'j');
INSERT INTO `z_area` VALUES ('1109', '遂昌县', '浙江省 丽水 遂昌县', '331100', '331123', '33', '11', '23', '3', '2017-05-11 01:47:58', '2018-08-17 14:28:55', 'suichangxian', 's');
INSERT INTO `z_area` VALUES ('1110', '松阳县', '浙江省 丽水 松阳县', '331100', '331124', '33', '11', '24', '3', '2017-05-11 01:47:58', '2018-08-17 14:28:55', 'songyangxian', 's');
INSERT INTO `z_area` VALUES ('1111', '云和县', '浙江省 丽水 云和县', '331100', '331125', '33', '11', '25', '3', '2017-05-11 01:47:58', '2018-08-17 14:28:55', 'yunhexian', 'y');
INSERT INTO `z_area` VALUES ('1112', '庆元县', '浙江省 丽水 庆元县', '331100', '331126', '33', '11', '26', '3', '2017-05-11 01:47:58', '2018-08-17 14:28:55', 'qingyuanxian', 'q');
INSERT INTO `z_area` VALUES ('1113', '景宁畲族自治县', '浙江省 丽水 景宁畲族自治县', '331100', '331127', '33', '11', '27', '3', '2017-05-11 01:47:58', '2018-08-17 14:28:55', 'jingningshezuzizhixian', 'j');
INSERT INTO `z_area` VALUES ('1114', '龙泉市', '浙江省 丽水 龙泉市', '331100', '331181', '33', '11', '81', '3', '2017-05-11 01:47:58', '2018-08-17 14:28:55', 'longquanshi', 'l');
INSERT INTO `z_area` VALUES ('1115', '安徽省', '安徽省', '', '340000', '34', '00', '00', '1', '2017-05-11 01:47:58', '2017-08-28 14:22:49', 'anhuisheng', 'a');
INSERT INTO `z_area` VALUES ('1116', '合肥', '安徽省 合肥', '340000', '340100', '34', '01', '00', '2', '2017-05-11 01:47:59', '2018-08-16 14:20:06', 'hefei', 'h');
INSERT INTO `z_area` VALUES ('1117', '合肥市', '安徽省 合肥 合肥市', '340100', '340101', '34', '01', '01', '3', '2017-05-11 01:47:59', '2018-08-17 14:28:56', 'hefeishi', 'h');
INSERT INTO `z_area` VALUES ('1118', '瑶海区', '安徽省 合肥 瑶海区', '340100', '340102', '34', '01', '02', '3', '2017-05-11 01:47:59', '2018-08-17 14:28:56', 'yaohaiqu', 'y');
INSERT INTO `z_area` VALUES ('1119', '庐阳区', '安徽省 合肥 庐阳区', '340100', '340103', '34', '01', '03', '3', '2017-05-11 01:47:59', '2018-08-17 14:28:56', 'luyangqu', 'l');
INSERT INTO `z_area` VALUES ('1120', '蜀山区', '安徽省 合肥 蜀山区', '340100', '340104', '34', '01', '04', '3', '2017-05-11 01:48:00', '2018-08-17 14:28:56', 'shushanqu', 's');
INSERT INTO `z_area` VALUES ('1121', '包河区', '安徽省 合肥 包河区', '340100', '340111', '34', '01', '11', '3', '2017-05-11 01:48:00', '2018-08-17 14:28:56', 'baohequ', 'b');
INSERT INTO `z_area` VALUES ('1122', '长丰县', '安徽省 合肥 长丰县', '340100', '340121', '34', '01', '21', '3', '2017-05-11 01:48:00', '2018-08-17 14:28:56', 'changfengxian', 'c');
INSERT INTO `z_area` VALUES ('1123', '肥东县', '安徽省 合肥 肥东县', '340100', '340122', '34', '01', '22', '3', '2017-05-11 01:48:00', '2018-08-17 14:28:56', 'feidongxian', 'f');
INSERT INTO `z_area` VALUES ('1124', '肥西县', '安徽省 合肥 肥西县', '340100', '340123', '34', '01', '23', '3', '2017-05-11 01:48:00', '2018-08-17 14:28:57', 'feixixian', 'f');
INSERT INTO `z_area` VALUES ('1125', '庐江县', '安徽省 合肥 庐江县', '340100', '340124', '34', '01', '24', '3', '2017-05-11 01:48:00', '2018-08-17 14:28:57', 'lujiangxian', 'l');
INSERT INTO `z_area` VALUES ('1126', '巢湖市', '安徽省 合肥 巢湖市', '340100', '340181', '34', '01', '81', '3', '2017-05-11 01:48:01', '2018-08-17 14:28:57', 'chaohushi', 'c');
INSERT INTO `z_area` VALUES ('1127', '芜湖', '安徽省 芜湖', '340000', '340200', '34', '02', '00', '2', '2017-05-11 01:48:01', '2018-08-16 14:20:07', 'wuhu', 'w');
INSERT INTO `z_area` VALUES ('1128', '芜湖市', '安徽省 芜湖 芜湖市', '340200', '340201', '34', '02', '01', '3', '2017-05-11 01:48:01', '2018-08-17 14:28:57', 'wuhushi', 'w');
INSERT INTO `z_area` VALUES ('1129', '镜湖区', '安徽省 芜湖 镜湖区', '340200', '340202', '34', '02', '02', '3', '2017-05-11 01:48:01', '2018-08-17 14:28:57', 'jinghuqu', 'j');
INSERT INTO `z_area` VALUES ('1130', '弋江区', '安徽省 芜湖 弋江区', '340200', '340203', '34', '02', '03', '3', '2017-05-11 01:48:01', '2018-08-17 14:28:57', 'yijiangqu', 'y');
INSERT INTO `z_area` VALUES ('1131', '鸠江区', '安徽省 芜湖 鸠江区', '340200', '340207', '34', '02', '07', '3', '2017-05-11 01:48:01', '2018-08-17 14:28:57', 'jiujiangqu', 'j');
INSERT INTO `z_area` VALUES ('1132', '三山区', '安徽省 芜湖 三山区', '340200', '340208', '34', '02', '08', '3', '2017-05-11 01:48:01', '2018-08-17 14:28:58', 'sanshanqu', 's');
INSERT INTO `z_area` VALUES ('1133', '芜湖县', '安徽省 芜湖 芜湖县', '340200', '340221', '34', '02', '21', '3', '2017-05-11 01:48:02', '2018-08-17 14:28:58', 'wuhuxian', 'w');
INSERT INTO `z_area` VALUES ('1134', '繁昌县', '安徽省 芜湖 繁昌县', '340200', '340222', '34', '02', '22', '3', '2017-05-11 01:48:02', '2018-08-17 14:28:58', 'fanchangxian', 'f');
INSERT INTO `z_area` VALUES ('1135', '南陵县', '安徽省 芜湖 南陵县', '340200', '340223', '34', '02', '23', '3', '2017-05-11 01:48:02', '2018-08-17 14:28:58', 'nanlingxian', 'n');
INSERT INTO `z_area` VALUES ('1136', '无为县', '安徽省 芜湖 无为县', '340200', '340225', '34', '02', '25', '3', '2017-05-11 01:48:02', '2018-08-17 14:28:58', 'wuweixian', 'w');
INSERT INTO `z_area` VALUES ('1137', '蚌埠', '安徽省 蚌埠', '340000', '340300', '34', '03', '00', '2', '2017-05-11 01:48:02', '2018-08-16 14:20:08', 'bangbu', 'b');
INSERT INTO `z_area` VALUES ('1138', '蚌埠市', '安徽省 蚌埠 蚌埠市', '340300', '340301', '34', '03', '01', '3', '2017-05-11 01:48:02', '2018-08-17 14:28:58', 'bangbushi', 'b');
INSERT INTO `z_area` VALUES ('1139', '龙子湖区', '安徽省 蚌埠 龙子湖区', '340300', '340302', '34', '03', '02', '3', '2017-05-11 01:48:02', '2018-08-17 14:28:58', 'longzihuqu', 'l');
INSERT INTO `z_area` VALUES ('1140', '蚌山区', '安徽省 蚌埠 蚌山区', '340300', '340303', '34', '03', '03', '3', '2017-05-11 01:48:03', '2018-08-17 14:28:59', 'bangshanqu', 'b');
INSERT INTO `z_area` VALUES ('1141', '禹会区', '安徽省 蚌埠 禹会区', '340300', '340304', '34', '03', '04', '3', '2017-05-11 01:48:03', '2018-08-17 14:28:59', 'yuhuiqu', 'y');
INSERT INTO `z_area` VALUES ('1142', '淮上区', '安徽省 蚌埠 淮上区', '340300', '340311', '34', '03', '11', '3', '2017-05-11 01:48:03', '2018-08-17 14:28:59', 'huaishangqu', 'h');
INSERT INTO `z_area` VALUES ('1143', '怀远县', '安徽省 蚌埠 怀远县', '340300', '340321', '34', '03', '21', '3', '2017-05-11 01:48:03', '2018-08-17 14:28:59', 'huaiyuanxian', 'h');
INSERT INTO `z_area` VALUES ('1144', '五河县', '安徽省 蚌埠 五河县', '340300', '340322', '34', '03', '22', '3', '2017-05-11 01:48:03', '2018-08-17 14:28:59', 'wuhexian', 'w');
INSERT INTO `z_area` VALUES ('1145', '固镇县', '安徽省 蚌埠 固镇县', '340300', '340323', '34', '03', '23', '3', '2017-05-11 01:48:03', '2018-08-17 14:28:59', 'guzhenxian', 'g');
INSERT INTO `z_area` VALUES ('1146', '淮南', '安徽省 淮南', '340000', '340400', '34', '04', '00', '2', '2017-05-11 01:48:03', '2018-08-16 14:20:09', 'huainan', 'h');
INSERT INTO `z_area` VALUES ('1147', '淮南市', '安徽省 淮南 淮南市', '340400', '340401', '34', '04', '01', '3', '2017-05-11 01:48:04', '2018-08-17 14:28:59', 'huainanshi', 'h');
INSERT INTO `z_area` VALUES ('1148', '大通区', '安徽省 淮南 大通区', '340400', '340402', '34', '04', '02', '3', '2017-05-11 01:48:04', '2018-08-17 14:29:00', 'datongqu', 'd');
INSERT INTO `z_area` VALUES ('1149', '田家庵区', '安徽省 淮南 田家庵区', '340400', '340403', '34', '04', '03', '3', '2017-05-11 01:48:04', '2018-08-17 14:29:00', 'tianjiaanqu', 't');
INSERT INTO `z_area` VALUES ('1150', '谢家集区', '安徽省 淮南 谢家集区', '340400', '340404', '34', '04', '04', '3', '2017-05-11 01:48:04', '2018-08-17 14:29:00', 'xiejiajiqu', 'x');
INSERT INTO `z_area` VALUES ('1151', '八公山区', '安徽省 淮南 八公山区', '340400', '340405', '34', '04', '05', '3', '2017-05-11 01:48:04', '2018-08-17 14:29:00', 'bagongshanqu', 'b');
INSERT INTO `z_area` VALUES ('1152', '潘集区', '安徽省 淮南 潘集区', '340400', '340406', '34', '04', '06', '3', '2017-05-11 01:48:04', '2018-08-17 14:29:00', 'panjiqu', 'p');
INSERT INTO `z_area` VALUES ('1153', '凤台县', '安徽省 淮南 凤台县', '340400', '340421', '34', '04', '21', '3', '2017-05-11 01:48:05', '2018-08-17 14:29:00', 'fengtaixian', 'f');
INSERT INTO `z_area` VALUES ('1154', '马鞍山', '安徽省 马鞍山', '340000', '340500', '34', '05', '00', '2', '2017-05-11 01:48:05', '2018-08-16 14:20:10', 'maanshan', 'm');
INSERT INTO `z_area` VALUES ('1155', '马鞍山市', '安徽省 马鞍山 马鞍山市', '340500', '340501', '34', '05', '01', '3', '2017-05-11 01:48:05', '2018-08-17 14:29:00', 'maanshanshi', 'm');
INSERT INTO `z_area` VALUES ('1156', '花山区', '安徽省 马鞍山 花山区', '340500', '340503', '34', '05', '03', '3', '2017-05-11 01:48:05', '2018-08-17 14:29:01', 'huashanqu', 'h');
INSERT INTO `z_area` VALUES ('1157', '雨山区', '安徽省 马鞍山 雨山区', '340500', '340504', '34', '05', '04', '3', '2017-05-11 01:48:05', '2018-08-17 14:29:01', 'yushanqu', 'y');
INSERT INTO `z_area` VALUES ('1158', '博望区', '安徽省 马鞍山 博望区', '340500', '340506', '34', '05', '06', '3', '2017-05-11 01:48:05', '2018-08-17 14:29:01', 'bowangqu', 'b');
INSERT INTO `z_area` VALUES ('1159', '当涂县', '安徽省 马鞍山 当涂县', '340500', '340521', '34', '05', '21', '3', '2017-05-11 01:48:06', '2018-08-17 14:29:01', 'dangtuxian', 'd');
INSERT INTO `z_area` VALUES ('1160', '含山县', '安徽省 马鞍山 含山县', '340500', '340522', '34', '05', '22', '3', '2017-05-11 01:48:06', '2018-08-17 14:29:01', 'hanshanxian', 'h');
INSERT INTO `z_area` VALUES ('1161', '和县', '安徽省 马鞍山 和县', '340500', '340523', '34', '05', '23', '3', '2017-05-11 01:48:06', '2018-08-17 14:29:01', 'hexian', 'h');
INSERT INTO `z_area` VALUES ('1162', '淮北', '安徽省 淮北', '340000', '340600', '34', '06', '00', '2', '2017-05-11 01:48:06', '2018-08-16 14:20:11', 'huaibei', 'h');
INSERT INTO `z_area` VALUES ('1163', '淮北市', '安徽省 淮北 淮北市', '340600', '340601', '34', '06', '01', '3', '2017-05-11 01:48:06', '2018-08-17 14:29:01', 'huaibeishi', 'h');
INSERT INTO `z_area` VALUES ('1164', '杜集区', '安徽省 淮北 杜集区', '340600', '340602', '34', '06', '02', '3', '2017-05-11 01:48:07', '2018-08-17 14:29:02', 'dujiqu', 'd');
INSERT INTO `z_area` VALUES ('1165', '相山区', '安徽省 淮北 相山区', '340600', '340603', '34', '06', '03', '3', '2017-05-11 01:48:07', '2018-08-17 14:29:02', 'xiangshanqu', 'x');
INSERT INTO `z_area` VALUES ('1166', '烈山区', '安徽省 淮北 烈山区', '340600', '340604', '34', '06', '04', '3', '2017-05-11 01:48:07', '2018-08-17 14:29:02', 'lieshanqu', 'l');
INSERT INTO `z_area` VALUES ('1167', '濉溪县', '安徽省 淮北 濉溪县', '340600', '340621', '34', '06', '21', '3', '2017-05-11 01:48:07', '2018-08-17 14:29:02', 'suixixian', 's');
INSERT INTO `z_area` VALUES ('1168', '铜陵', '安徽省 铜陵', '340000', '340700', '34', '07', '00', '2', '2017-05-11 01:48:07', '2018-08-16 14:20:12', 'tongling', 't');
INSERT INTO `z_area` VALUES ('1169', '铜陵市', '安徽省 铜陵 铜陵市', '340700', '340701', '34', '07', '01', '3', '2017-05-11 01:48:07', '2018-08-17 14:29:02', 'tonglingshi', 't');
INSERT INTO `z_area` VALUES ('1170', '铜官山区', '安徽省 铜陵 铜官山区', '340700', '340702', '34', '07', '02', '3', '2017-05-11 01:48:08', '2018-08-17 14:29:02', 'tongguanshanqu', 't');
INSERT INTO `z_area` VALUES ('1171', '狮子山区', '安徽省 铜陵 狮子山区', '340700', '340703', '34', '07', '03', '3', '2017-05-11 01:48:08', '2018-08-17 14:29:02', 'shizishanqu', 's');
INSERT INTO `z_area` VALUES ('1172', '郊区', '安徽省 铜陵 郊区', '340700', '340711', '34', '07', '11', '3', '2017-05-11 01:48:08', '2018-08-17 14:29:03', 'jiaoqu', 'j');
INSERT INTO `z_area` VALUES ('1173', '铜陵县', '安徽省 铜陵 铜陵县', '340700', '340721', '34', '07', '21', '3', '2017-05-11 01:48:08', '2018-08-17 14:29:03', 'tonglingxian', 't');
INSERT INTO `z_area` VALUES ('1174', '安庆', '安徽省 安庆', '340000', '340800', '34', '08', '00', '2', '2017-05-11 01:48:09', '2018-08-16 14:20:13', 'anqing', 'a');
INSERT INTO `z_area` VALUES ('1175', '安庆市', '安徽省 安庆 安庆市', '340800', '340801', '34', '08', '01', '3', '2017-05-11 01:48:10', '2018-08-17 14:29:03', 'anqingshi', 'a');
INSERT INTO `z_area` VALUES ('1176', '迎江区', '安徽省 安庆 迎江区', '340800', '340802', '34', '08', '02', '3', '2017-05-11 01:48:10', '2018-08-17 14:29:03', 'yingjiangqu', 'y');
INSERT INTO `z_area` VALUES ('1177', '大观区', '安徽省 安庆 大观区', '340800', '340803', '34', '08', '03', '3', '2017-05-11 01:48:10', '2018-08-17 14:29:03', 'daguanqu', 'd');
INSERT INTO `z_area` VALUES ('1178', '宜秀区', '安徽省 安庆 宜秀区', '340800', '340811', '34', '08', '11', '3', '2017-05-11 01:48:10', '2018-08-17 14:29:03', 'yixiuqu', 'y');
INSERT INTO `z_area` VALUES ('1179', '怀宁县', '安徽省 安庆 怀宁县', '340800', '340822', '34', '08', '22', '3', '2017-05-11 01:48:10', '2018-08-17 14:29:04', 'huainingxian', 'h');
INSERT INTO `z_area` VALUES ('1180', '枞阳县', '安徽省 安庆 枞阳县', '340800', '340823', '34', '08', '23', '3', '2017-05-11 01:48:10', '2018-08-17 14:29:04', 'congyangxian', 'c');
INSERT INTO `z_area` VALUES ('1181', '潜山县', '安徽省 安庆 潜山县', '340800', '340824', '34', '08', '24', '3', '2017-05-11 01:48:10', '2018-08-17 14:29:04', 'qianshanxian', 'q');
INSERT INTO `z_area` VALUES ('1182', '太湖县', '安徽省 安庆 太湖县', '340800', '340825', '34', '08', '25', '3', '2017-05-11 01:48:11', '2018-08-17 14:29:04', 'taihuxian', 't');
INSERT INTO `z_area` VALUES ('1183', '宿松县', '安徽省 安庆 宿松县', '340800', '340826', '34', '08', '26', '3', '2017-05-11 01:48:11', '2018-08-17 14:29:04', 'susongxian', 's');
INSERT INTO `z_area` VALUES ('1184', '望江县', '安徽省 安庆 望江县', '340800', '340827', '34', '08', '27', '3', '2017-05-11 01:48:11', '2018-08-17 14:29:04', 'wangjiangxian', 'w');
INSERT INTO `z_area` VALUES ('1185', '岳西县', '安徽省 安庆 岳西县', '340800', '340828', '34', '08', '28', '3', '2017-05-11 01:48:11', '2018-08-17 14:29:04', 'yuexixian', 'y');
INSERT INTO `z_area` VALUES ('1186', '桐城市', '安徽省 安庆 桐城市', '340800', '340881', '34', '08', '81', '3', '2017-05-11 01:48:11', '2018-08-17 14:29:05', 'tongchengshi', 't');
INSERT INTO `z_area` VALUES ('1187', '黄山', '安徽省 黄山', '340000', '341000', '34', '10', '00', '2', '2017-05-11 01:48:11', '2018-08-16 14:20:15', 'huangshan', 'h');
INSERT INTO `z_area` VALUES ('1188', '黄山市', '安徽省 黄山 黄山市', '341000', '341001', '34', '10', '01', '3', '2017-05-11 01:48:12', '2018-08-17 14:29:05', 'huangshanshi', 'h');
INSERT INTO `z_area` VALUES ('1189', '屯溪区', '安徽省 黄山 屯溪区', '341000', '341002', '34', '10', '02', '3', '2017-05-11 01:48:12', '2018-08-17 14:29:05', 'tunxiqu', 't');
INSERT INTO `z_area` VALUES ('1190', '黄山区', '安徽省 黄山 黄山区', '341000', '341003', '34', '10', '03', '3', '2017-05-11 01:48:12', '2018-08-17 14:29:05', 'huangshanqu', 'h');
INSERT INTO `z_area` VALUES ('1191', '徽州区', '安徽省 黄山 徽州区', '341000', '341004', '34', '10', '04', '3', '2017-05-11 01:48:12', '2018-08-17 14:29:05', 'huizhouqu', 'h');
INSERT INTO `z_area` VALUES ('1192', '歙县', '安徽省 黄山 歙县', '341000', '341021', '34', '10', '21', '3', '2017-05-11 01:48:13', '2018-08-17 14:29:05', 'xixian', 'x');
INSERT INTO `z_area` VALUES ('1193', '休宁县', '安徽省 黄山 休宁县', '341000', '341022', '34', '10', '22', '3', '2017-05-11 01:48:13', '2018-08-17 14:29:05', 'xiuningxian', 'x');
INSERT INTO `z_area` VALUES ('1194', '黟县', '安徽省 黄山 黟县', '341000', '341023', '34', '10', '23', '3', '2017-05-11 01:48:13', '2018-08-17 14:29:06', 'yixian', 'y');
INSERT INTO `z_area` VALUES ('1195', '祁门县', '安徽省 黄山 祁门县', '341000', '341024', '34', '10', '24', '3', '2017-05-11 01:48:13', '2018-08-17 14:29:06', 'qimenxian', 'q');
INSERT INTO `z_area` VALUES ('1196', '滁州', '安徽省 滁州', '340000', '341100', '34', '11', '00', '2', '2017-05-11 01:48:13', '2018-08-16 14:20:16', 'chuzhou', 'c');
INSERT INTO `z_area` VALUES ('1197', '滁州市', '安徽省 滁州 滁州市', '341100', '341101', '34', '11', '01', '3', '2017-05-11 01:48:14', '2018-08-17 14:29:06', 'chuzhoushi', 'c');
INSERT INTO `z_area` VALUES ('1198', '琅琊区', '安徽省 滁州 琅琊区', '341100', '341102', '34', '11', '02', '3', '2017-05-11 01:48:14', '2018-08-17 14:29:06', 'langyaqu', 'l');
INSERT INTO `z_area` VALUES ('1199', '南谯区', '安徽省 滁州 南谯区', '341100', '341103', '34', '11', '03', '3', '2017-05-11 01:48:14', '2018-08-17 14:29:06', 'nanqiaoqu', 'n');
INSERT INTO `z_area` VALUES ('1200', '来安县', '安徽省 滁州 来安县', '341100', '341122', '34', '11', '22', '3', '2017-05-11 01:48:14', '2018-08-17 14:29:06', 'laianxian', 'l');
INSERT INTO `z_area` VALUES ('1201', '全椒县', '安徽省 滁州 全椒县', '341100', '341124', '34', '11', '24', '3', '2017-05-11 01:48:14', '2018-08-17 14:29:06', 'quanjiaoxian', 'q');
INSERT INTO `z_area` VALUES ('1202', '定远县', '安徽省 滁州 定远县', '341100', '341125', '34', '11', '25', '3', '2017-05-11 01:48:14', '2018-08-17 14:29:06', 'dingyuanxian', 'd');
INSERT INTO `z_area` VALUES ('1203', '凤阳县', '安徽省 滁州 凤阳县', '341100', '341126', '34', '11', '26', '3', '2017-05-11 01:48:14', '2018-08-17 14:29:07', 'fengyangxian', 'f');
INSERT INTO `z_area` VALUES ('1204', '天长市', '安徽省 滁州 天长市', '341100', '341181', '34', '11', '81', '3', '2017-05-11 01:48:15', '2018-08-17 14:29:07', 'tianchangshi', 't');
INSERT INTO `z_area` VALUES ('1205', '明光市', '安徽省 滁州 明光市', '341100', '341182', '34', '11', '82', '3', '2017-05-11 01:48:15', '2018-08-17 14:29:07', 'mingguangshi', 'm');
INSERT INTO `z_area` VALUES ('1206', '阜阳', '安徽省 阜阳', '340000', '341200', '34', '12', '00', '2', '2017-05-11 01:48:15', '2018-08-16 14:20:17', 'fuyang', 'f');
INSERT INTO `z_area` VALUES ('1207', '阜阳市', '安徽省 阜阳 阜阳市', '341200', '341201', '34', '12', '01', '3', '2017-05-11 01:48:15', '2018-08-17 14:29:07', 'fuyangshi', 'f');
INSERT INTO `z_area` VALUES ('1208', '颍州区', '安徽省 阜阳 颍州区', '341200', '341202', '34', '12', '02', '3', '2017-05-11 01:48:15', '2018-08-17 14:29:07', 'yingzhouqu', 'y');
INSERT INTO `z_area` VALUES ('1209', '颍东区', '安徽省 阜阳 颍东区', '341200', '341203', '34', '12', '03', '3', '2017-05-11 01:48:15', '2018-08-17 14:29:07', 'yingdongqu', 'y');
INSERT INTO `z_area` VALUES ('1210', '颍泉区', '安徽省 阜阳 颍泉区', '341200', '341204', '34', '12', '04', '3', '2017-05-11 01:48:16', '2018-08-17 14:29:07', 'yingquanqu', 'y');
INSERT INTO `z_area` VALUES ('1211', '临泉县', '安徽省 阜阳 临泉县', '341200', '341221', '34', '12', '21', '3', '2017-05-11 01:48:16', '2018-08-17 14:29:08', 'linquanxian', 'l');
INSERT INTO `z_area` VALUES ('1212', '太和县', '安徽省 阜阳 太和县', '341200', '341222', '34', '12', '22', '3', '2017-05-11 01:48:16', '2018-08-17 14:29:08', 'taihexian', 't');
INSERT INTO `z_area` VALUES ('1213', '阜南县', '安徽省 阜阳 阜南县', '341200', '341225', '34', '12', '25', '3', '2017-05-11 01:48:16', '2018-08-17 14:29:08', 'funanxian', 'f');
INSERT INTO `z_area` VALUES ('1214', '颍上县', '安徽省 阜阳 颍上县', '341200', '341226', '34', '12', '26', '3', '2017-05-11 01:48:16', '2018-08-17 14:29:08', 'yingshangxian', 'y');
INSERT INTO `z_area` VALUES ('1215', '界首市', '安徽省 阜阳 界首市', '341200', '341282', '34', '12', '82', '3', '2017-05-11 01:48:16', '2018-08-17 14:29:08', 'jieshoushi', 'j');
INSERT INTO `z_area` VALUES ('1216', '宿州', '安徽省 宿州', '340000', '341300', '34', '13', '00', '2', '2017-05-11 01:48:16', '2018-08-16 14:20:18', 'suzhou', 's');
INSERT INTO `z_area` VALUES ('1217', '宿州市', '安徽省 宿州 宿州市', '341300', '341301', '34', '13', '01', '3', '2017-05-11 01:48:17', '2018-08-17 14:29:08', 'suzhoushi', 's');
INSERT INTO `z_area` VALUES ('1218', '埇桥区', '安徽省 宿州 埇桥区', '341300', '341302', '34', '13', '02', '3', '2017-05-11 01:48:17', '2018-08-17 14:29:08', 'yongqiaoqu', 'y');
INSERT INTO `z_area` VALUES ('1219', '砀山县', '安徽省 宿州 砀山县', '341300', '341321', '34', '13', '21', '3', '2017-05-11 01:48:17', '2018-08-17 14:29:09', 'dangshanxian', 'd');
INSERT INTO `z_area` VALUES ('1220', '萧县', '安徽省 宿州 萧县', '341300', '341322', '34', '13', '22', '3', '2017-05-11 01:48:17', '2018-08-17 14:29:09', 'xiaoxian', 'x');
INSERT INTO `z_area` VALUES ('1221', '灵璧县', '安徽省 宿州 灵璧县', '341300', '341323', '34', '13', '23', '3', '2017-05-11 01:48:17', '2018-08-17 14:29:09', 'lingbixian', 'l');
INSERT INTO `z_area` VALUES ('1222', '泗县', '安徽省 宿州 泗县', '341300', '341324', '34', '13', '24', '3', '2017-05-11 01:48:17', '2018-08-17 14:29:09', 'sixian', 's');
INSERT INTO `z_area` VALUES ('1223', '六安', '安徽省 六安', '340000', '341500', '34', '15', '00', '2', '2017-05-11 01:48:17', '2018-08-16 14:20:19', 'liuan', 'l');
INSERT INTO `z_area` VALUES ('1224', '六安市', '安徽省 六安 六安市', '341500', '341501', '34', '15', '01', '3', '2017-05-11 01:48:18', '2018-08-17 14:29:09', 'liuanshi', 'l');
INSERT INTO `z_area` VALUES ('1225', '金安区', '安徽省 六安 金安区', '341500', '341502', '34', '15', '02', '3', '2017-05-11 01:48:18', '2018-08-17 14:29:09', 'jinanqu', 'j');
INSERT INTO `z_area` VALUES ('1226', '裕安区', '安徽省 六安 裕安区', '341500', '341503', '34', '15', '03', '3', '2017-05-11 01:48:18', '2018-08-17 14:29:09', 'yuanqu', 'y');
INSERT INTO `z_area` VALUES ('1227', '寿县', '安徽省 六安 寿县', '341500', '341521', '34', '15', '21', '3', '2017-05-11 01:48:18', '2018-08-17 14:29:10', 'shouxian', 's');
INSERT INTO `z_area` VALUES ('1228', '霍邱县', '安徽省 六安 霍邱县', '341500', '341522', '34', '15', '22', '3', '2017-05-11 01:48:18', '2018-08-17 14:29:10', 'huoqiuxian', 'h');
INSERT INTO `z_area` VALUES ('1229', '舒城县', '安徽省 六安 舒城县', '341500', '341523', '34', '15', '23', '3', '2017-05-11 01:48:18', '2018-08-17 14:29:10', 'shuchengxian', 's');
INSERT INTO `z_area` VALUES ('1230', '金寨县', '安徽省 六安 金寨县', '341500', '341524', '34', '15', '24', '3', '2017-05-11 01:48:18', '2018-08-17 14:29:10', 'jinzhaixian', 'j');
INSERT INTO `z_area` VALUES ('1231', '霍山县', '安徽省 六安 霍山县', '341500', '341525', '34', '15', '25', '3', '2017-05-11 01:48:19', '2018-08-17 14:29:10', 'huoshanxian', 'h');
INSERT INTO `z_area` VALUES ('1232', '亳州', '安徽省 亳州', '340000', '341600', '34', '16', '00', '2', '2017-05-11 01:48:19', '2018-08-16 14:20:20', 'bozhou', 'b');
INSERT INTO `z_area` VALUES ('1233', '亳州市', '安徽省 亳州 亳州市', '341600', '341601', '34', '16', '01', '3', '2017-05-11 01:48:19', '2018-08-17 14:29:10', 'bozhoushi', 'b');
INSERT INTO `z_area` VALUES ('1234', '谯城区', '安徽省 亳州 谯城区', '341600', '341602', '34', '16', '02', '3', '2017-05-11 01:48:19', '2018-08-17 14:29:10', 'qiaochengqu', 'q');
INSERT INTO `z_area` VALUES ('1235', '涡阳县', '安徽省 亳州 涡阳县', '341600', '341621', '34', '16', '21', '3', '2017-05-11 01:48:19', '2018-08-17 14:29:11', 'woyangxian', 'w');
INSERT INTO `z_area` VALUES ('1236', '蒙城县', '安徽省 亳州 蒙城县', '341600', '341622', '34', '16', '22', '3', '2017-05-11 01:48:19', '2018-08-17 14:29:11', 'mengchengxian', 'm');
INSERT INTO `z_area` VALUES ('1237', '利辛县', '安徽省 亳州 利辛县', '341600', '341623', '34', '16', '23', '3', '2017-05-11 01:48:20', '2018-08-17 14:29:11', 'lixinxian', 'l');
INSERT INTO `z_area` VALUES ('1238', '池州', '安徽省 池州', '340000', '341700', '34', '17', '00', '2', '2017-05-11 01:48:20', '2018-08-16 14:20:21', 'chizhou', 'c');
INSERT INTO `z_area` VALUES ('1239', '池州市', '安徽省 池州 池州市', '341700', '341701', '34', '17', '01', '3', '2017-05-11 01:48:20', '2018-08-17 14:29:11', 'chizhoushi', 'c');
INSERT INTO `z_area` VALUES ('1240', '贵池区', '安徽省 池州 贵池区', '341700', '341702', '34', '17', '02', '3', '2017-05-11 01:48:20', '2018-08-17 14:29:11', 'guichiqu', 'g');
INSERT INTO `z_area` VALUES ('1241', '东至县', '安徽省 池州 东至县', '341700', '341721', '34', '17', '21', '3', '2017-05-11 01:48:20', '2018-08-17 14:29:11', 'dongzhixian', 'd');
INSERT INTO `z_area` VALUES ('1242', '石台县', '安徽省 池州 石台县', '341700', '341722', '34', '17', '22', '3', '2017-05-11 01:48:20', '2018-08-17 14:29:11', 'shitaixian', 's');
INSERT INTO `z_area` VALUES ('1243', '青阳县', '安徽省 池州 青阳县', '341700', '341723', '34', '17', '23', '3', '2017-05-11 01:48:20', '2018-08-17 14:29:12', 'qingyangxian', 'q');
INSERT INTO `z_area` VALUES ('1244', '宣城', '安徽省 宣城', '340000', '341800', '34', '18', '00', '2', '2017-05-11 01:48:21', '2018-08-16 14:20:22', 'xuancheng', 'x');
INSERT INTO `z_area` VALUES ('1245', '宣城市', '安徽省 宣城 宣城市', '341800', '341801', '34', '18', '01', '3', '2017-05-11 01:48:21', '2018-08-17 14:29:12', 'xuanchengshi', 'x');
INSERT INTO `z_area` VALUES ('1246', '宣州区', '安徽省 宣城 宣州区', '341800', '341802', '34', '18', '02', '3', '2017-05-11 01:48:21', '2018-08-17 14:29:12', 'xuanzhouqu', 'x');
INSERT INTO `z_area` VALUES ('1247', '郎溪县', '安徽省 宣城 郎溪县', '341800', '341821', '34', '18', '21', '3', '2017-05-11 01:48:21', '2018-08-17 14:29:12', 'langxixian', 'l');
INSERT INTO `z_area` VALUES ('1248', '广德县', '安徽省 宣城 广德县', '341800', '341822', '34', '18', '22', '3', '2017-05-11 01:48:21', '2018-08-17 14:29:12', 'guangdexian', 'g');
INSERT INTO `z_area` VALUES ('1249', '泾县', '安徽省 宣城 泾县', '341800', '341823', '34', '18', '23', '3', '2017-05-11 01:48:21', '2018-08-17 14:29:12', 'jingxian', 'j');
INSERT INTO `z_area` VALUES ('1250', '绩溪县', '安徽省 宣城 绩溪县', '341800', '341824', '34', '18', '24', '3', '2017-05-11 01:48:21', '2018-08-17 14:29:12', 'jixixian', 'j');
INSERT INTO `z_area` VALUES ('1251', '旌德县', '安徽省 宣城 旌德县', '341800', '341825', '34', '18', '25', '3', '2017-05-11 01:48:22', '2018-08-17 14:29:13', 'jingdexian', 'j');
INSERT INTO `z_area` VALUES ('1252', '宁国市', '安徽省 宣城 宁国市', '341800', '341881', '34', '18', '81', '3', '2017-05-11 01:48:22', '2018-08-17 14:29:13', 'ningguoshi', 'n');
INSERT INTO `z_area` VALUES ('1253', '福建省', '福建省', '', '350000', '35', '00', '00', '1', '2017-05-11 01:48:22', '2017-08-28 14:22:59', 'fujiansheng', 'f');
INSERT INTO `z_area` VALUES ('1254', '福州', '福建省 福州', '350000', '350100', '35', '01', '00', '2', '2017-05-11 01:48:22', '2018-08-16 14:20:23', 'fuzhou', 'f');
INSERT INTO `z_area` VALUES ('1255', '福州市', '福建省 福州 福州市', '350100', '350101', '35', '01', '01', '3', '2017-05-11 01:48:22', '2018-08-17 14:29:13', 'fuzhoushi', 'f');
INSERT INTO `z_area` VALUES ('1256', '鼓楼区', '福建省 福州 鼓楼区', '350100', '350102', '35', '01', '02', '3', '2017-05-11 01:48:22', '2018-08-17 14:29:13', 'gulouqu', 'g');
INSERT INTO `z_area` VALUES ('1257', '台江区', '福建省 福州 台江区', '350100', '350103', '35', '01', '03', '3', '2017-05-11 01:48:22', '2018-08-17 14:29:13', 'taijiangqu', 't');
INSERT INTO `z_area` VALUES ('1258', '仓山区', '福建省 福州 仓山区', '350100', '350104', '35', '01', '04', '3', '2017-05-11 01:48:22', '2018-08-17 14:29:13', 'cangshanqu', 'c');
INSERT INTO `z_area` VALUES ('1259', '马尾区', '福建省 福州 马尾区', '350100', '350105', '35', '01', '05', '3', '2017-05-11 01:48:23', '2018-08-17 14:29:13', 'maweiqu', 'm');
INSERT INTO `z_area` VALUES ('1260', '晋安区', '福建省 福州 晋安区', '350100', '350111', '35', '01', '11', '3', '2017-05-11 01:48:23', '2018-08-17 14:29:14', 'jinanqu', 'j');
INSERT INTO `z_area` VALUES ('1261', '闽侯县', '福建省 福州 闽侯县', '350100', '350121', '35', '01', '21', '3', '2017-05-11 01:48:23', '2018-08-17 14:29:14', 'minhouxian', 'm');
INSERT INTO `z_area` VALUES ('1262', '连江县', '福建省 福州 连江县', '350100', '350122', '35', '01', '22', '3', '2017-05-11 01:48:23', '2018-08-17 14:29:14', 'lianjiangxian', 'l');
INSERT INTO `z_area` VALUES ('1263', '罗源县', '福建省 福州 罗源县', '350100', '350123', '35', '01', '23', '3', '2017-05-11 01:48:23', '2018-08-17 14:29:14', 'luoyuanxian', 'l');
INSERT INTO `z_area` VALUES ('1264', '闽清县', '福建省 福州 闽清县', '350100', '350124', '35', '01', '24', '3', '2017-05-11 01:48:23', '2018-08-17 14:29:14', 'minqingxian', 'm');
INSERT INTO `z_area` VALUES ('1265', '永泰县', '福建省 福州 永泰县', '350100', '350125', '35', '01', '25', '3', '2017-05-11 01:48:24', '2018-08-17 14:29:14', 'yongtaixian', 'y');
INSERT INTO `z_area` VALUES ('1266', '平潭县', '福建省 福州 平潭县', '350100', '350128', '35', '01', '28', '3', '2017-05-11 01:48:24', '2018-08-17 14:29:15', 'pingtanxian', 'p');
INSERT INTO `z_area` VALUES ('1267', '福清市', '福建省 福州 福清市', '350100', '350181', '35', '01', '81', '3', '2017-05-11 01:48:24', '2018-08-17 14:29:15', 'fuqingshi', 'f');
INSERT INTO `z_area` VALUES ('1268', '长乐市', '福建省 福州 长乐市', '350100', '350182', '35', '01', '82', '3', '2017-05-11 01:48:24', '2018-08-17 14:29:15', 'changleshi', 'c');
INSERT INTO `z_area` VALUES ('1269', '厦门', '福建省 厦门', '350000', '350200', '35', '02', '00', '2', '2017-05-11 01:48:24', '2018-08-16 14:20:25', 'xiamen', 'x');
INSERT INTO `z_area` VALUES ('1270', '厦门市', '福建省 厦门 厦门市', '350200', '350201', '35', '02', '01', '3', '2017-05-11 01:48:24', '2018-08-17 14:29:15', 'xiamenshi', 'x');
INSERT INTO `z_area` VALUES ('1271', '思明区', '福建省 厦门 思明区', '350200', '350203', '35', '02', '03', '3', '2017-05-11 01:48:24', '2018-08-17 14:29:15', 'simingqu', 's');
INSERT INTO `z_area` VALUES ('1272', '海沧区', '福建省 厦门 海沧区', '350200', '350205', '35', '02', '05', '3', '2017-05-11 01:48:25', '2018-08-17 14:29:15', 'haicangqu', 'h');
INSERT INTO `z_area` VALUES ('1273', '湖里区', '福建省 厦门 湖里区', '350200', '350206', '35', '02', '06', '3', '2017-05-11 01:48:25', '2018-08-17 14:29:15', 'huliqu', 'h');
INSERT INTO `z_area` VALUES ('1274', '集美区', '福建省 厦门 集美区', '350200', '350211', '35', '02', '11', '3', '2017-05-11 01:48:25', '2018-08-17 14:29:16', 'jimeiqu', 'j');
INSERT INTO `z_area` VALUES ('1275', '同安区', '福建省 厦门 同安区', '350200', '350212', '35', '02', '12', '3', '2017-05-11 01:48:25', '2018-08-17 14:29:16', 'tonganqu', 't');
INSERT INTO `z_area` VALUES ('1276', '翔安区', '福建省 厦门 翔安区', '350200', '350213', '35', '02', '13', '3', '2017-05-11 01:48:25', '2018-08-17 14:29:16', 'xianganqu', 'x');
INSERT INTO `z_area` VALUES ('1277', '莆田', '福建省 莆田', '350000', '350300', '35', '03', '00', '2', '2017-05-11 01:48:25', '2018-08-16 14:20:26', 'putian', 'p');
INSERT INTO `z_area` VALUES ('1278', '莆田市', '福建省 莆田 莆田市', '350300', '350301', '35', '03', '01', '3', '2017-05-11 01:48:25', '2018-08-17 14:29:16', 'putianshi', 'p');
INSERT INTO `z_area` VALUES ('1279', '城厢区', '福建省 莆田 城厢区', '350300', '350302', '35', '03', '02', '3', '2017-05-11 01:48:26', '2018-08-17 14:29:16', 'chengxiangqu', 'c');
INSERT INTO `z_area` VALUES ('1280', '涵江区', '福建省 莆田 涵江区', '350300', '350303', '35', '03', '03', '3', '2017-05-11 01:48:26', '2018-08-17 14:29:16', 'hanjiangqu', 'h');
INSERT INTO `z_area` VALUES ('1281', '荔城区', '福建省 莆田 荔城区', '350300', '350304', '35', '03', '04', '3', '2017-05-11 01:48:26', '2018-08-17 14:29:17', 'lichengqu', 'l');
INSERT INTO `z_area` VALUES ('1282', '秀屿区', '福建省 莆田 秀屿区', '350300', '350305', '35', '03', '05', '3', '2017-05-11 01:48:26', '2018-08-17 14:29:17', 'xiuyuqu', 'x');
INSERT INTO `z_area` VALUES ('1283', '仙游县', '福建省 莆田 仙游县', '350300', '350322', '35', '03', '22', '3', '2017-05-11 01:48:26', '2018-08-17 14:29:17', 'xianyouxian', 'x');
INSERT INTO `z_area` VALUES ('1284', '三明', '福建省 三明', '350000', '350400', '35', '04', '00', '2', '2017-05-11 01:48:26', '2018-08-16 14:20:27', 'sanming', 's');
INSERT INTO `z_area` VALUES ('1285', '三明市', '福建省 三明 三明市', '350400', '350401', '35', '04', '01', '3', '2017-05-11 01:48:26', '2018-08-17 14:29:17', 'sanmingshi', 's');
INSERT INTO `z_area` VALUES ('1286', '梅列区', '福建省 三明 梅列区', '350400', '350402', '35', '04', '02', '3', '2017-05-11 01:48:27', '2018-08-17 14:29:17', 'meiliequ', 'm');
INSERT INTO `z_area` VALUES ('1287', '三元区', '福建省 三明 三元区', '350400', '350403', '35', '04', '03', '3', '2017-05-11 01:48:27', '2018-08-17 14:29:17', 'sanyuanqu', 's');
INSERT INTO `z_area` VALUES ('1288', '明溪县', '福建省 三明 明溪县', '350400', '350421', '35', '04', '21', '3', '2017-05-11 01:48:27', '2018-08-17 14:29:17', 'mingxixian', 'm');
INSERT INTO `z_area` VALUES ('1289', '清流县', '福建省 三明 清流县', '350400', '350423', '35', '04', '23', '3', '2017-05-11 01:48:27', '2018-08-17 14:29:17', 'qingliuxian', 'q');
INSERT INTO `z_area` VALUES ('1290', '宁化县', '福建省 三明 宁化县', '350400', '350424', '35', '04', '24', '3', '2017-05-11 01:48:27', '2018-08-17 14:29:18', 'ninghuaxian', 'n');
INSERT INTO `z_area` VALUES ('1291', '大田县', '福建省 三明 大田县', '350400', '350425', '35', '04', '25', '3', '2017-05-11 01:48:27', '2018-08-17 14:29:18', 'datianxian', 'd');
INSERT INTO `z_area` VALUES ('1292', '尤溪县', '福建省 三明 尤溪县', '350400', '350426', '35', '04', '26', '3', '2017-05-11 01:48:28', '2018-08-17 14:29:18', 'youxixian', 'y');
INSERT INTO `z_area` VALUES ('1293', '沙县', '福建省 三明 沙县', '350400', '350427', '35', '04', '27', '3', '2017-05-11 01:48:28', '2018-08-17 14:29:18', 'shaxian', 's');
INSERT INTO `z_area` VALUES ('1294', '将乐县', '福建省 三明 将乐县', '350400', '350428', '35', '04', '28', '3', '2017-05-11 01:48:28', '2018-08-17 14:29:18', 'jianglexian', 'j');
INSERT INTO `z_area` VALUES ('1295', '泰宁县', '福建省 三明 泰宁县', '350400', '350429', '35', '04', '29', '3', '2017-05-11 01:48:28', '2018-08-17 14:29:18', 'tainingxian', 't');
INSERT INTO `z_area` VALUES ('1296', '建宁县', '福建省 三明 建宁县', '350400', '350430', '35', '04', '30', '3', '2017-05-11 01:48:28', '2018-08-17 14:29:18', 'jianningxian', 'j');
INSERT INTO `z_area` VALUES ('1297', '永安市', '福建省 三明 永安市', '350400', '350481', '35', '04', '81', '3', '2017-05-11 01:48:28', '2018-08-17 14:29:19', 'yonganshi', 'y');
INSERT INTO `z_area` VALUES ('1298', '泉州', '福建省 泉州', '350000', '350500', '35', '05', '00', '2', '2017-05-11 01:48:28', '2018-08-16 14:20:28', 'quanzhou', 'q');
INSERT INTO `z_area` VALUES ('1299', '泉州市', '福建省 泉州 泉州市', '350500', '350501', '35', '05', '01', '3', '2017-05-11 01:48:29', '2018-08-17 14:29:19', 'quanzhoushi', 'q');
INSERT INTO `z_area` VALUES ('1300', '鲤城区', '福建省 泉州 鲤城区', '350500', '350502', '35', '05', '02', '3', '2017-05-11 01:48:29', '2018-08-17 14:29:19', 'lichengqu', 'l');
INSERT INTO `z_area` VALUES ('1301', '丰泽区', '福建省 泉州 丰泽区', '350500', '350503', '35', '05', '03', '3', '2017-05-11 01:48:29', '2018-08-17 14:29:19', 'fengzequ', 'f');
INSERT INTO `z_area` VALUES ('1302', '洛江区', '福建省 泉州 洛江区', '350500', '350504', '35', '05', '04', '3', '2017-05-11 01:48:29', '2018-08-17 14:29:19', 'luojiangqu', 'l');
INSERT INTO `z_area` VALUES ('1303', '泉港区', '福建省 泉州 泉港区', '350500', '350505', '35', '05', '05', '3', '2017-05-11 01:48:29', '2018-08-17 14:29:19', 'quangangqu', 'q');
INSERT INTO `z_area` VALUES ('1304', '惠安县', '福建省 泉州 惠安县', '350500', '350521', '35', '05', '21', '3', '2017-05-11 01:48:29', '2018-08-17 14:29:19', 'huianxian', 'h');
INSERT INTO `z_area` VALUES ('1305', '安溪县', '福建省 泉州 安溪县', '350500', '350524', '35', '05', '24', '3', '2017-05-11 01:48:30', '2018-08-17 14:29:19', 'anxixian', 'a');
INSERT INTO `z_area` VALUES ('1306', '永春县', '福建省 泉州 永春县', '350500', '350525', '35', '05', '25', '3', '2017-05-11 01:48:30', '2018-08-17 14:29:20', 'yongchunxian', 'y');
INSERT INTO `z_area` VALUES ('1307', '德化县', '福建省 泉州 德化县', '350500', '350526', '35', '05', '26', '3', '2017-05-11 01:48:30', '2018-08-17 14:29:20', 'dehuaxian', 'd');
INSERT INTO `z_area` VALUES ('1308', '金门县', '福建省 泉州 金门县', '350500', '350527', '35', '05', '27', '3', '2017-05-11 01:48:30', '2018-08-17 14:29:20', 'jinmenxian', 'j');
INSERT INTO `z_area` VALUES ('1309', '石狮市', '福建省 泉州 石狮市', '350500', '350581', '35', '05', '81', '3', '2017-05-11 01:48:30', '2018-08-17 14:29:20', 'shishishi', 's');
INSERT INTO `z_area` VALUES ('1310', '晋江市', '福建省 泉州 晋江市', '350500', '350582', '35', '05', '82', '3', '2017-05-11 01:48:30', '2018-08-17 14:29:20', 'jinjiangshi', 'j');
INSERT INTO `z_area` VALUES ('1311', '南安市', '福建省 泉州 南安市', '350500', '350583', '35', '05', '83', '3', '2017-05-11 01:48:30', '2018-08-17 14:29:20', 'nananshi', 'n');
INSERT INTO `z_area` VALUES ('1312', '漳州', '福建省 漳州', '350000', '350600', '35', '06', '00', '2', '2017-05-11 01:48:31', '2018-08-16 14:20:30', 'zhangzhou', 'z');
INSERT INTO `z_area` VALUES ('1313', '漳州市', '福建省 漳州 漳州市', '350600', '350601', '35', '06', '01', '3', '2017-05-11 01:48:31', '2018-08-17 14:29:20', 'zhangzhoushi', 'z');
INSERT INTO `z_area` VALUES ('1314', '芗城区', '福建省 漳州 芗城区', '350600', '350602', '35', '06', '02', '3', '2017-05-11 01:48:31', '2018-08-17 14:29:21', 'xiangchengqu', 'x');
INSERT INTO `z_area` VALUES ('1315', '龙文区', '福建省 漳州 龙文区', '350600', '350603', '35', '06', '03', '3', '2017-05-11 01:48:31', '2018-08-17 14:29:21', 'longwenqu', 'l');
INSERT INTO `z_area` VALUES ('1316', '云霄县', '福建省 漳州 云霄县', '350600', '350622', '35', '06', '22', '3', '2017-05-11 01:48:31', '2018-08-17 14:29:21', 'yunxiaoxian', 'y');
INSERT INTO `z_area` VALUES ('1317', '漳浦县', '福建省 漳州 漳浦县', '350600', '350623', '35', '06', '23', '3', '2017-05-11 01:48:31', '2018-08-17 14:29:21', 'zhangpuxian', 'z');
INSERT INTO `z_area` VALUES ('1318', '诏安县', '福建省 漳州 诏安县', '350600', '350624', '35', '06', '24', '3', '2017-05-11 01:48:32', '2018-08-17 14:29:21', 'zhaoanxian', 'z');
INSERT INTO `z_area` VALUES ('1319', '长泰县', '福建省 漳州 长泰县', '350600', '350625', '35', '06', '25', '3', '2017-05-11 01:48:32', '2018-08-17 14:29:21', 'changtaixian', 'c');
INSERT INTO `z_area` VALUES ('1320', '东山县', '福建省 漳州 东山县', '350600', '350626', '35', '06', '26', '3', '2017-05-11 01:48:32', '2018-08-17 14:29:21', 'dongshanxian', 'd');
INSERT INTO `z_area` VALUES ('1321', '南靖县', '福建省 漳州 南靖县', '350600', '350627', '35', '06', '27', '3', '2017-05-11 01:48:32', '2018-08-17 14:29:21', 'nanjingxian', 'n');
INSERT INTO `z_area` VALUES ('1322', '平和县', '福建省 漳州 平和县', '350600', '350628', '35', '06', '28', '3', '2017-05-11 01:48:32', '2018-08-17 14:29:22', 'pinghexian', 'p');
INSERT INTO `z_area` VALUES ('1323', '华安县', '福建省 漳州 华安县', '350600', '350629', '35', '06', '29', '3', '2017-05-11 01:48:32', '2018-08-17 14:29:22', 'huaanxian', 'h');
INSERT INTO `z_area` VALUES ('1324', '龙海市', '福建省 漳州 龙海市', '350600', '350681', '35', '06', '81', '3', '2017-05-11 01:48:32', '2018-08-17 14:29:22', 'longhaishi', 'l');
INSERT INTO `z_area` VALUES ('1325', '南平', '福建省 南平', '350000', '350700', '35', '07', '00', '2', '2017-05-11 01:48:33', '2018-08-16 14:20:32', 'nanping', 'n');
INSERT INTO `z_area` VALUES ('1326', '南平市', '福建省 南平 南平市', '350700', '350701', '35', '07', '01', '3', '2017-05-11 01:48:33', '2018-08-17 14:29:22', 'nanpingshi', 'n');
INSERT INTO `z_area` VALUES ('1327', '延平区', '福建省 南平 延平区', '350700', '350702', '35', '07', '02', '3', '2017-05-11 01:48:33', '2018-08-17 14:29:22', 'yanpingqu', 'y');
INSERT INTO `z_area` VALUES ('1328', '建阳区', '福建省 南平 建阳区', '350700', '350703', '35', '07', '03', '3', '2017-05-11 01:48:33', '2018-08-17 14:29:22', 'jianyangqu', 'j');
INSERT INTO `z_area` VALUES ('1329', '顺昌县', '福建省 南平 顺昌县', '350700', '350721', '35', '07', '21', '3', '2017-05-11 01:48:33', '2018-08-17 14:29:23', 'shunchangxian', 's');
INSERT INTO `z_area` VALUES ('1330', '浦城县', '福建省 南平 浦城县', '350700', '350722', '35', '07', '22', '3', '2017-05-11 01:48:33', '2018-08-17 14:29:23', 'puchengxian', 'p');
INSERT INTO `z_area` VALUES ('1331', '光泽县', '福建省 南平 光泽县', '350700', '350723', '35', '07', '23', '3', '2017-05-11 01:48:33', '2018-08-17 14:29:23', 'guangzexian', 'g');
INSERT INTO `z_area` VALUES ('1332', '松溪县', '福建省 南平 松溪县', '350700', '350724', '35', '07', '24', '3', '2017-05-11 01:48:34', '2018-08-17 14:29:23', 'songxixian', 's');
INSERT INTO `z_area` VALUES ('1333', '政和县', '福建省 南平 政和县', '350700', '350725', '35', '07', '25', '3', '2017-05-11 01:48:34', '2018-08-17 14:29:23', 'zhenghexian', 'z');
INSERT INTO `z_area` VALUES ('1334', '邵武市', '福建省 南平 邵武市', '350700', '350781', '35', '07', '81', '3', '2017-05-11 01:48:34', '2018-08-17 14:29:23', 'shaowushi', 's');
INSERT INTO `z_area` VALUES ('1335', '武夷山市', '福建省 南平 武夷山市', '350700', '350782', '35', '07', '82', '3', '2017-05-11 01:48:34', '2018-08-17 14:29:23', 'wuyishanshi', 'w');
INSERT INTO `z_area` VALUES ('1336', '建瓯市', '福建省 南平 建瓯市', '350700', '350783', '35', '07', '83', '3', '2017-05-11 01:48:34', '2018-08-17 14:29:24', 'jianoushi', 'j');
INSERT INTO `z_area` VALUES ('1337', '龙岩', '福建省 龙岩', '350000', '350800', '35', '08', '00', '2', '2017-05-11 01:48:34', '2018-08-16 14:20:33', 'longyan', 'l');
INSERT INTO `z_area` VALUES ('1338', '龙岩市', '福建省 龙岩 龙岩市', '350800', '350801', '35', '08', '01', '3', '2017-05-11 01:48:34', '2018-08-17 14:29:24', 'longyanshi', 'l');
INSERT INTO `z_area` VALUES ('1339', '新罗区', '福建省 龙岩 新罗区', '350800', '350802', '35', '08', '02', '3', '2017-05-11 01:48:35', '2018-08-17 14:29:24', 'xinluoqu', 'x');
INSERT INTO `z_area` VALUES ('1340', '永定区', '福建省 龙岩 永定区', '350800', '350803', '35', '08', '03', '3', '2017-05-11 01:48:35', '2018-08-17 14:29:24', 'yongdingqu', 'y');
INSERT INTO `z_area` VALUES ('1341', '长汀县', '福建省 龙岩 长汀县', '350800', '350821', '35', '08', '21', '3', '2017-05-11 01:48:35', '2018-08-17 14:29:24', 'changtingxian', 'c');
INSERT INTO `z_area` VALUES ('1342', '上杭县', '福建省 龙岩 上杭县', '350800', '350823', '35', '08', '23', '3', '2017-05-11 01:48:35', '2018-08-17 14:29:24', 'shanghangxian', 's');
INSERT INTO `z_area` VALUES ('1343', '武平县', '福建省 龙岩 武平县', '350800', '350824', '35', '08', '24', '3', '2017-05-11 01:48:35', '2018-08-17 14:29:24', 'wupingxian', 'w');
INSERT INTO `z_area` VALUES ('1344', '连城县', '福建省 龙岩 连城县', '350800', '350825', '35', '08', '25', '3', '2017-05-11 01:48:35', '2018-08-17 14:29:25', 'lianchengxian', 'l');
INSERT INTO `z_area` VALUES ('1345', '漳平市', '福建省 龙岩 漳平市', '350800', '350881', '35', '08', '81', '3', '2017-05-11 01:48:36', '2018-08-17 14:29:25', 'zhangpingshi', 'z');
INSERT INTO `z_area` VALUES ('1346', '宁德', '福建省 宁德', '350000', '350900', '35', '09', '00', '2', '2017-05-11 01:48:36', '2018-08-16 14:20:34', 'ningde', 'n');
INSERT INTO `z_area` VALUES ('1347', '宁德市', '福建省 宁德 宁德市', '350900', '350901', '35', '09', '01', '3', '2017-05-11 01:48:36', '2018-08-17 14:29:25', 'ningdeshi', 'n');
INSERT INTO `z_area` VALUES ('1348', '蕉城区', '福建省 宁德 蕉城区', '350900', '350902', '35', '09', '02', '3', '2017-05-11 01:48:36', '2018-08-17 14:29:25', 'jiaochengqu', 'j');
INSERT INTO `z_area` VALUES ('1349', '霞浦县', '福建省 宁德 霞浦县', '350900', '350921', '35', '09', '21', '3', '2017-05-11 01:48:36', '2018-08-17 14:29:25', 'xiapuxian', 'x');
INSERT INTO `z_area` VALUES ('1350', '古田县', '福建省 宁德 古田县', '350900', '350922', '35', '09', '22', '3', '2017-05-11 01:48:36', '2018-08-17 14:29:25', 'gutianxian', 'g');
INSERT INTO `z_area` VALUES ('1351', '屏南县', '福建省 宁德 屏南县', '350900', '350923', '35', '09', '23', '3', '2017-05-11 01:48:36', '2018-08-17 14:29:25', 'pingnanxian', 'p');
INSERT INTO `z_area` VALUES ('1352', '寿宁县', '福建省 宁德 寿宁县', '350900', '350924', '35', '09', '24', '3', '2017-05-11 01:48:37', '2018-08-17 14:29:26', 'shouningxian', 's');
INSERT INTO `z_area` VALUES ('1353', '周宁县', '福建省 宁德 周宁县', '350900', '350925', '35', '09', '25', '3', '2017-05-11 01:48:37', '2018-08-17 14:29:26', 'zhouningxian', 'z');
INSERT INTO `z_area` VALUES ('1354', '柘荣县', '福建省 宁德 柘荣县', '350900', '350926', '35', '09', '26', '3', '2017-05-11 01:48:37', '2018-08-17 14:29:26', 'zherongxian', 'z');
INSERT INTO `z_area` VALUES ('1355', '福安市', '福建省 宁德 福安市', '350900', '350981', '35', '09', '81', '3', '2017-05-11 01:48:37', '2018-08-17 14:29:26', 'fuanshi', 'f');
INSERT INTO `z_area` VALUES ('1356', '福鼎市', '福建省 宁德 福鼎市', '350900', '350982', '35', '09', '82', '3', '2017-05-11 01:48:37', '2018-08-17 14:29:26', 'fudingshi', 'f');
INSERT INTO `z_area` VALUES ('1357', '江西省', '江西省', '', '360000', '36', '00', '00', '1', '2017-05-11 01:48:37', '2017-08-28 14:23:06', 'jiangxisheng', 'j');
INSERT INTO `z_area` VALUES ('1358', '南昌', '江西省 南昌', '360000', '360100', '36', '01', '00', '2', '2017-05-11 01:48:37', '2018-08-16 14:20:36', 'nanchang', 'n');
INSERT INTO `z_area` VALUES ('1359', '南昌市', '江西省 南昌 南昌市', '360100', '360101', '36', '01', '01', '3', '2017-05-11 01:48:37', '2018-08-17 14:29:26', 'nanchangshi', 'n');
INSERT INTO `z_area` VALUES ('1360', '东湖区', '江西省 南昌 东湖区', '360100', '360102', '36', '01', '02', '3', '2017-05-11 01:48:38', '2018-08-17 14:29:26', 'donghuqu', 'd');
INSERT INTO `z_area` VALUES ('1361', '西湖区', '江西省 南昌 西湖区', '360100', '360103', '36', '01', '03', '3', '2017-05-11 01:48:38', '2018-08-17 14:29:27', 'xihuqu', 'x');
INSERT INTO `z_area` VALUES ('1362', '青云谱区', '江西省 南昌 青云谱区', '360100', '360104', '36', '01', '04', '3', '2017-05-11 01:48:38', '2018-08-17 14:29:27', 'qingyunpuqu', 'q');
INSERT INTO `z_area` VALUES ('1363', '湾里区', '江西省 南昌 湾里区', '360100', '360105', '36', '01', '05', '3', '2017-05-11 01:48:38', '2018-08-17 14:29:27', 'wanliqu', 'w');
INSERT INTO `z_area` VALUES ('1364', '青山湖区', '江西省 南昌 青山湖区', '360100', '360111', '36', '01', '11', '3', '2017-05-11 01:48:38', '2018-08-17 14:29:27', 'qingshanhuqu', 'q');
INSERT INTO `z_area` VALUES ('1365', '新建区', '江西省 南昌 新建区', '360100', '360112', '36', '01', '12', '3', '2017-05-11 01:48:38', '2018-08-17 14:29:27', 'xinjianqu', 'x');
INSERT INTO `z_area` VALUES ('1366', '南昌县', '江西省 南昌 南昌县', '360100', '360121', '36', '01', '21', '3', '2017-05-11 01:48:39', '2018-08-17 14:29:27', 'nanchangxian', 'n');
INSERT INTO `z_area` VALUES ('1367', '安义县', '江西省 南昌 安义县', '360100', '360123', '36', '01', '23', '3', '2017-05-11 01:48:39', '2018-08-17 14:29:27', 'anyixian', 'a');
INSERT INTO `z_area` VALUES ('1368', '进贤县', '江西省 南昌 进贤县', '360100', '360124', '36', '01', '24', '3', '2017-05-11 01:48:39', '2018-08-17 14:29:27', 'jinxianxian', 'j');
INSERT INTO `z_area` VALUES ('1369', '景德镇', '江西省 景德镇', '360000', '360200', '36', '02', '00', '2', '2017-05-11 01:48:39', '2018-08-16 14:20:37', 'jingdezhen', 'j');
INSERT INTO `z_area` VALUES ('1370', '景德镇市', '江西省 景德镇 景德镇市', '360200', '360201', '36', '02', '01', '3', '2017-05-11 01:48:39', '2018-08-17 14:29:28', 'jingdezhenshi', 'j');
INSERT INTO `z_area` VALUES ('1371', '昌江区', '江西省 景德镇 昌江区', '360200', '360202', '36', '02', '02', '3', '2017-05-11 01:48:39', '2018-08-17 14:29:28', 'changjiangqu', 'c');
INSERT INTO `z_area` VALUES ('1372', '珠山区', '江西省 景德镇 珠山区', '360200', '360203', '36', '02', '03', '3', '2017-05-11 01:48:39', '2018-08-17 14:29:28', 'zhushanqu', 'z');
INSERT INTO `z_area` VALUES ('1373', '浮梁县', '江西省 景德镇 浮梁县', '360200', '360222', '36', '02', '22', '3', '2017-05-11 01:48:40', '2018-08-17 14:29:28', 'fuliangxian', 'f');
INSERT INTO `z_area` VALUES ('1374', '乐平市', '江西省 景德镇 乐平市', '360200', '360281', '36', '02', '81', '3', '2017-05-11 01:48:40', '2018-08-17 14:29:28', 'lepingshi', 'l');
INSERT INTO `z_area` VALUES ('1375', '萍乡', '江西省 萍乡', '360000', '360300', '36', '03', '00', '2', '2017-05-11 01:48:40', '2018-08-16 14:20:38', 'pingxiang', 'p');
INSERT INTO `z_area` VALUES ('1376', '萍乡市', '江西省 萍乡 萍乡市', '360300', '360301', '36', '03', '01', '3', '2017-05-11 01:48:40', '2018-08-17 14:29:28', 'pingxiangshi', 'p');
INSERT INTO `z_area` VALUES ('1377', '安源区', '江西省 萍乡 安源区', '360300', '360302', '36', '03', '02', '3', '2017-05-11 01:48:40', '2018-08-17 14:29:29', 'anyuanqu', 'a');
INSERT INTO `z_area` VALUES ('1378', '湘东区', '江西省 萍乡 湘东区', '360300', '360313', '36', '03', '13', '3', '2017-05-11 01:48:40', '2018-08-17 14:29:29', 'xiangdongqu', 'x');
INSERT INTO `z_area` VALUES ('1379', '莲花县', '江西省 萍乡 莲花县', '360300', '360321', '36', '03', '21', '3', '2017-05-11 01:48:40', '2018-08-17 14:29:29', 'lianhuaxian', 'l');
INSERT INTO `z_area` VALUES ('1380', '上栗县', '江西省 萍乡 上栗县', '360300', '360322', '36', '03', '22', '3', '2017-05-11 01:48:41', '2018-08-17 14:29:29', 'shanglixian', 's');
INSERT INTO `z_area` VALUES ('1381', '芦溪县', '江西省 萍乡 芦溪县', '360300', '360323', '36', '03', '23', '3', '2017-05-11 01:48:41', '2018-08-17 14:29:29', 'luxixian', 'l');
INSERT INTO `z_area` VALUES ('1382', '九江', '江西省 九江', '360000', '360400', '36', '04', '00', '2', '2017-05-11 01:48:41', '2018-08-16 14:20:39', 'jiujiang', 'j');
INSERT INTO `z_area` VALUES ('1383', '九江市', '江西省 九江 九江市', '360400', '360401', '36', '04', '01', '3', '2017-05-11 01:48:41', '2018-08-17 14:29:29', 'jiujiangshi', 'j');
INSERT INTO `z_area` VALUES ('1384', '庐山区', '江西省 九江 庐山区', '360400', '360402', '36', '04', '02', '3', '2017-05-11 01:48:41', '2018-08-17 14:29:30', 'lushanqu', 'l');
INSERT INTO `z_area` VALUES ('1385', '浔阳区', '江西省 九江 浔阳区', '360400', '360403', '36', '04', '03', '3', '2017-05-11 01:48:41', '2018-08-17 14:29:30', 'xunyangqu', 'x');
INSERT INTO `z_area` VALUES ('1386', '九江县', '江西省 九江 九江县', '360400', '360421', '36', '04', '21', '3', '2017-05-11 01:48:41', '2018-08-17 14:29:30', 'jiujiangxian', 'j');
INSERT INTO `z_area` VALUES ('1387', '武宁县', '江西省 九江 武宁县', '360400', '360423', '36', '04', '23', '3', '2017-05-11 01:48:42', '2018-08-17 14:29:30', 'wuningxian', 'w');
INSERT INTO `z_area` VALUES ('1388', '修水县', '江西省 九江 修水县', '360400', '360424', '36', '04', '24', '3', '2017-05-11 01:48:42', '2018-08-17 14:29:30', 'xiushuixian', 'x');
INSERT INTO `z_area` VALUES ('1389', '永修县', '江西省 九江 永修县', '360400', '360425', '36', '04', '25', '3', '2017-05-11 01:48:42', '2018-08-17 14:29:30', 'yongxiuxian', 'y');
INSERT INTO `z_area` VALUES ('1390', '德安县', '江西省 九江 德安县', '360400', '360426', '36', '04', '26', '3', '2017-05-11 01:48:42', '2018-08-17 14:29:30', 'deanxian', 'd');
INSERT INTO `z_area` VALUES ('1391', '星子县', '江西省 九江 星子县', '360400', '360427', '36', '04', '27', '3', '2017-05-11 01:48:42', '2018-08-17 14:29:31', 'xingzixian', 'x');
INSERT INTO `z_area` VALUES ('1392', '都昌县', '江西省 九江 都昌县', '360400', '360428', '36', '04', '28', '3', '2017-05-11 01:48:42', '2018-08-17 14:29:31', 'douchangxian', 'd');
INSERT INTO `z_area` VALUES ('1393', '湖口县', '江西省 九江 湖口县', '360400', '360429', '36', '04', '29', '3', '2017-05-11 01:48:43', '2018-08-17 14:29:31', 'hukouxian', 'h');
INSERT INTO `z_area` VALUES ('1394', '彭泽县', '江西省 九江 彭泽县', '360400', '360430', '36', '04', '30', '3', '2017-05-11 01:48:43', '2018-08-17 14:29:31', 'pengzexian', 'p');
INSERT INTO `z_area` VALUES ('1395', '瑞昌市', '江西省 九江 瑞昌市', '360400', '360481', '36', '04', '81', '3', '2017-05-11 01:48:43', '2018-08-17 14:29:31', 'ruichangshi', 'r');
INSERT INTO `z_area` VALUES ('1396', '共青城市', '江西省 九江 共青城市', '360400', '360482', '36', '04', '82', '3', '2017-05-11 01:48:43', '2018-08-17 14:29:31', 'gongqingchengshi', 'g');
INSERT INTO `z_area` VALUES ('1397', '新余', '江西省 新余', '360000', '360500', '36', '05', '00', '2', '2017-05-11 01:48:43', '2018-08-16 14:20:41', 'xinyu', 'x');
INSERT INTO `z_area` VALUES ('1398', '新余市', '江西省 新余 新余市', '360500', '360501', '36', '05', '01', '3', '2017-05-11 01:48:43', '2018-08-17 14:29:31', 'xinyushi', 'x');
INSERT INTO `z_area` VALUES ('1399', '渝水区', '江西省 新余 渝水区', '360500', '360502', '36', '05', '02', '3', '2017-05-11 01:48:43', '2018-08-17 14:29:32', 'yushuiqu', 'y');
INSERT INTO `z_area` VALUES ('1400', '分宜县', '江西省 新余 分宜县', '360500', '360521', '36', '05', '21', '3', '2017-05-11 01:48:44', '2018-08-17 14:29:32', 'fenyixian', 'f');
INSERT INTO `z_area` VALUES ('1401', '鹰潭', '江西省 鹰潭', '360000', '360600', '36', '06', '00', '2', '2017-05-11 01:48:44', '2018-08-16 14:20:41', 'yingtan', 'y');
INSERT INTO `z_area` VALUES ('1402', '鹰潭市', '江西省 鹰潭 鹰潭市', '360600', '360601', '36', '06', '01', '3', '2017-05-11 01:48:44', '2018-08-17 14:29:32', 'yingtanshi', 'y');
INSERT INTO `z_area` VALUES ('1403', '月湖区', '江西省 鹰潭 月湖区', '360600', '360602', '36', '06', '02', '3', '2017-05-11 01:48:44', '2018-08-17 14:29:32', 'yuehuqu', 'y');
INSERT INTO `z_area` VALUES ('1404', '余江县', '江西省 鹰潭 余江县', '360600', '360622', '36', '06', '22', '3', '2017-05-11 01:48:44', '2018-08-17 14:29:32', 'yujiangxian', 'y');
INSERT INTO `z_area` VALUES ('1405', '贵溪市', '江西省 鹰潭 贵溪市', '360600', '360681', '36', '06', '81', '3', '2017-05-11 01:48:44', '2018-08-17 14:29:32', 'guixishi', 'g');
INSERT INTO `z_area` VALUES ('1406', '赣州', '江西省 赣州', '360000', '360700', '36', '07', '00', '2', '2017-05-11 01:48:44', '2018-08-16 14:20:42', 'ganzhou', 'g');
INSERT INTO `z_area` VALUES ('1407', '赣州市', '江西省 赣州 赣州市', '360700', '360701', '36', '07', '01', '3', '2017-05-11 01:48:45', '2018-08-17 14:29:33', 'ganzhoushi', 'g');
INSERT INTO `z_area` VALUES ('1408', '章贡区', '江西省 赣州 章贡区', '360700', '360702', '36', '07', '02', '3', '2017-05-11 01:48:45', '2018-08-17 14:29:33', 'zhanggongqu', 'z');
INSERT INTO `z_area` VALUES ('1409', '南康区', '江西省 赣州 南康区', '360700', '360703', '36', '07', '03', '3', '2017-05-11 01:48:45', '2018-08-17 14:29:33', 'nankangqu', 'n');
INSERT INTO `z_area` VALUES ('1410', '赣县', '江西省 赣州 赣县', '360700', '360721', '36', '07', '21', '3', '2017-05-11 01:48:45', '2018-08-17 14:29:33', 'ganxian', 'g');
INSERT INTO `z_area` VALUES ('1411', '信丰县', '江西省 赣州 信丰县', '360700', '360722', '36', '07', '22', '3', '2017-05-11 01:48:45', '2018-08-17 14:29:33', 'xinfengxian', 'x');
INSERT INTO `z_area` VALUES ('1412', '大余县', '江西省 赣州 大余县', '360700', '360723', '36', '07', '23', '3', '2017-05-11 01:48:45', '2018-08-17 14:29:33', 'dayuxian', 'd');
INSERT INTO `z_area` VALUES ('1413', '上犹县', '江西省 赣州 上犹县', '360700', '360724', '36', '07', '24', '3', '2017-05-11 01:48:45', '2018-08-17 14:29:33', 'shangyouxian', 's');
INSERT INTO `z_area` VALUES ('1414', '崇义县', '江西省 赣州 崇义县', '360700', '360725', '36', '07', '25', '3', '2017-05-11 01:48:46', '2018-08-17 14:29:34', 'chongyixian', 'c');
INSERT INTO `z_area` VALUES ('1415', '安远县', '江西省 赣州 安远县', '360700', '360726', '36', '07', '26', '3', '2017-05-11 01:48:46', '2018-08-17 14:29:34', 'anyuanxian', 'a');
INSERT INTO `z_area` VALUES ('1416', '龙南县', '江西省 赣州 龙南县', '360700', '360727', '36', '07', '27', '3', '2017-05-11 01:48:46', '2018-08-17 14:29:34', 'longnanxian', 'l');
INSERT INTO `z_area` VALUES ('1417', '定南县', '江西省 赣州 定南县', '360700', '360728', '36', '07', '28', '3', '2017-05-11 01:48:46', '2018-08-17 14:29:34', 'dingnanxian', 'd');
INSERT INTO `z_area` VALUES ('1418', '全南县', '江西省 赣州 全南县', '360700', '360729', '36', '07', '29', '3', '2017-05-11 01:48:46', '2018-08-17 14:29:34', 'quannanxian', 'q');
INSERT INTO `z_area` VALUES ('1419', '宁都县', '江西省 赣州 宁都县', '360700', '360730', '36', '07', '30', '3', '2017-05-11 01:48:46', '2018-08-17 14:29:34', 'ningdouxian', 'n');
INSERT INTO `z_area` VALUES ('1420', '于都县', '江西省 赣州 于都县', '360700', '360731', '36', '07', '31', '3', '2017-05-11 01:48:47', '2018-08-17 14:29:34', 'yudouxian', 'y');
INSERT INTO `z_area` VALUES ('1421', '兴国县', '江西省 赣州 兴国县', '360700', '360732', '36', '07', '32', '3', '2017-05-11 01:48:47', '2018-08-17 14:29:35', 'xingguoxian', 'x');
INSERT INTO `z_area` VALUES ('1422', '会昌县', '江西省 赣州 会昌县', '360700', '360733', '36', '07', '33', '3', '2017-05-11 01:48:47', '2018-08-17 14:29:35', 'huichangxian', 'h');
INSERT INTO `z_area` VALUES ('1423', '寻乌县', '江西省 赣州 寻乌县', '360700', '360734', '36', '07', '34', '3', '2017-05-11 01:48:47', '2018-08-17 14:29:35', 'xunwuxian', 'x');
INSERT INTO `z_area` VALUES ('1424', '石城县', '江西省 赣州 石城县', '360700', '360735', '36', '07', '35', '3', '2017-05-11 01:48:47', '2018-08-17 14:29:35', 'shichengxian', 's');
INSERT INTO `z_area` VALUES ('1425', '瑞金市', '江西省 赣州 瑞金市', '360700', '360781', '36', '07', '81', '3', '2017-05-11 01:48:47', '2018-08-17 14:29:35', 'ruijinshi', 'r');
INSERT INTO `z_area` VALUES ('1426', '吉安', '江西省 吉安', '360000', '360800', '36', '08', '00', '2', '2017-05-11 01:48:47', '2018-08-16 14:20:45', 'jian', 'j');
INSERT INTO `z_area` VALUES ('1427', '吉安市', '江西省 吉安 吉安市', '360800', '360801', '36', '08', '01', '3', '2017-05-11 01:48:48', '2018-08-17 14:29:35', 'jianshi', 'j');
INSERT INTO `z_area` VALUES ('1428', '吉州区', '江西省 吉安 吉州区', '360800', '360802', '36', '08', '02', '3', '2017-05-11 01:48:48', '2018-08-17 14:29:35', 'jizhouqu', 'j');
INSERT INTO `z_area` VALUES ('1429', '青原区', '江西省 吉安 青原区', '360800', '360803', '36', '08', '03', '3', '2017-05-11 01:48:48', '2018-08-17 14:29:36', 'qingyuanqu', 'q');
INSERT INTO `z_area` VALUES ('1430', '吉安县', '江西省 吉安 吉安县', '360800', '360821', '36', '08', '21', '3', '2017-05-11 01:48:48', '2018-08-17 14:29:36', 'jianxian', 'j');
INSERT INTO `z_area` VALUES ('1431', '吉水县', '江西省 吉安 吉水县', '360800', '360822', '36', '08', '22', '3', '2017-05-11 01:48:48', '2018-08-17 14:29:36', 'jishuixian', 'j');
INSERT INTO `z_area` VALUES ('1432', '峡江县', '江西省 吉安 峡江县', '360800', '360823', '36', '08', '23', '3', '2017-05-11 01:48:48', '2018-08-17 14:29:36', 'xiajiangxian', 'x');
INSERT INTO `z_area` VALUES ('1433', '新干县', '江西省 吉安 新干县', '360800', '360824', '36', '08', '24', '3', '2017-05-11 01:48:49', '2018-08-17 14:29:36', 'xinganxian', 'x');
INSERT INTO `z_area` VALUES ('1434', '永丰县', '江西省 吉安 永丰县', '360800', '360825', '36', '08', '25', '3', '2017-05-11 01:48:49', '2018-08-17 14:29:36', 'yongfengxian', 'y');
INSERT INTO `z_area` VALUES ('1435', '泰和县', '江西省 吉安 泰和县', '360800', '360826', '36', '08', '26', '3', '2017-05-11 01:48:49', '2018-08-17 14:29:36', 'taihexian', 't');
INSERT INTO `z_area` VALUES ('1436', '遂川县', '江西省 吉安 遂川县', '360800', '360827', '36', '08', '27', '3', '2017-05-11 01:48:49', '2018-08-17 14:29:36', 'suichuanxian', 's');
INSERT INTO `z_area` VALUES ('1437', '万安县', '江西省 吉安 万安县', '360800', '360828', '36', '08', '28', '3', '2017-05-11 01:48:49', '2018-08-17 14:29:37', 'wananxian', 'w');
INSERT INTO `z_area` VALUES ('1438', '安福县', '江西省 吉安 安福县', '360800', '360829', '36', '08', '29', '3', '2017-05-11 01:48:49', '2018-08-17 14:29:37', 'anfuxian', 'a');
INSERT INTO `z_area` VALUES ('1439', '永新县', '江西省 吉安 永新县', '360800', '360830', '36', '08', '30', '3', '2017-05-11 01:48:49', '2018-08-17 14:29:37', 'yongxinxian', 'y');
INSERT INTO `z_area` VALUES ('1440', '井冈山市', '江西省 吉安 井冈山市', '360800', '360881', '36', '08', '81', '3', '2017-05-11 01:48:50', '2018-08-17 14:29:37', 'jinggangshanshi', 'j');
INSERT INTO `z_area` VALUES ('1441', '宜春', '江西省 宜春', '360000', '360900', '36', '09', '00', '2', '2017-05-11 01:48:50', '2018-08-16 14:20:46', 'yichun', 'y');
INSERT INTO `z_area` VALUES ('1442', '宜春市', '江西省 宜春 宜春市', '360900', '360901', '36', '09', '01', '3', '2017-05-11 01:48:50', '2018-08-17 14:29:37', 'yichunshi', 'y');
INSERT INTO `z_area` VALUES ('1443', '袁州区', '江西省 宜春 袁州区', '360900', '360902', '36', '09', '02', '3', '2017-05-11 01:48:50', '2018-08-17 14:29:37', 'yuanzhouqu', 'y');
INSERT INTO `z_area` VALUES ('1444', '奉新县', '江西省 宜春 奉新县', '360900', '360921', '36', '09', '21', '3', '2017-05-11 01:48:50', '2018-08-17 14:29:37', 'fengxinxian', 'f');
INSERT INTO `z_area` VALUES ('1445', '万载县', '江西省 宜春 万载县', '360900', '360922', '36', '09', '22', '3', '2017-05-11 01:48:50', '2018-08-17 14:29:38', 'wanzaixian', 'w');
INSERT INTO `z_area` VALUES ('1446', '上高县', '江西省 宜春 上高县', '360900', '360923', '36', '09', '23', '3', '2017-05-11 01:48:50', '2018-08-17 14:29:38', 'shanggaoxian', 's');
INSERT INTO `z_area` VALUES ('1447', '宜丰县', '江西省 宜春 宜丰县', '360900', '360924', '36', '09', '24', '3', '2017-05-11 01:48:51', '2018-08-17 14:29:38', 'yifengxian', 'y');
INSERT INTO `z_area` VALUES ('1448', '靖安县', '江西省 宜春 靖安县', '360900', '360925', '36', '09', '25', '3', '2017-05-11 01:48:51', '2018-08-17 14:29:38', 'jinganxian', 'j');
INSERT INTO `z_area` VALUES ('1449', '铜鼓县', '江西省 宜春 铜鼓县', '360900', '360926', '36', '09', '26', '3', '2017-05-11 01:48:51', '2018-08-17 14:29:38', 'tongguxian', 't');
INSERT INTO `z_area` VALUES ('1450', '丰城市', '江西省 宜春 丰城市', '360900', '360981', '36', '09', '81', '3', '2017-05-11 01:48:51', '2018-08-17 14:29:38', 'fengchengshi', 'f');
INSERT INTO `z_area` VALUES ('1451', '樟树市', '江西省 宜春 樟树市', '360900', '360982', '36', '09', '82', '3', '2017-05-11 01:48:51', '2018-08-17 14:29:38', 'zhangshushi', 'z');
INSERT INTO `z_area` VALUES ('1452', '高安市', '江西省 宜春 高安市', '360900', '360983', '36', '09', '83', '3', '2017-05-11 01:48:51', '2018-08-17 14:29:39', 'gaoanshi', 'g');
INSERT INTO `z_area` VALUES ('1453', '抚州', '江西省 抚州', '360000', '361000', '36', '10', '00', '2', '2017-05-11 01:48:52', '2018-08-16 14:20:48', 'fuzhou', 'f');
INSERT INTO `z_area` VALUES ('1454', '抚州市', '江西省 抚州 抚州市', '361000', '361001', '36', '10', '01', '3', '2017-05-11 01:48:52', '2018-08-17 14:29:39', 'fuzhoushi', 'f');
INSERT INTO `z_area` VALUES ('1455', '临川区', '江西省 抚州 临川区', '361000', '361002', '36', '10', '02', '3', '2017-05-11 01:48:52', '2018-08-17 14:29:39', 'linchuanqu', 'l');
INSERT INTO `z_area` VALUES ('1456', '南城县', '江西省 抚州 南城县', '361000', '361021', '36', '10', '21', '3', '2017-05-11 01:48:52', '2018-08-17 14:29:39', 'nanchengxian', 'n');
INSERT INTO `z_area` VALUES ('1457', '黎川县', '江西省 抚州 黎川县', '361000', '361022', '36', '10', '22', '3', '2017-05-11 01:48:52', '2018-08-17 14:29:39', 'lichuanxian', 'l');
INSERT INTO `z_area` VALUES ('1458', '南丰县', '江西省 抚州 南丰县', '361000', '361023', '36', '10', '23', '3', '2017-05-11 01:48:52', '2018-08-17 14:29:39', 'nanfengxian', 'n');
INSERT INTO `z_area` VALUES ('1459', '崇仁县', '江西省 抚州 崇仁县', '361000', '361024', '36', '10', '24', '3', '2017-05-11 01:48:52', '2018-08-17 14:29:39', 'chongrenxian', 'c');
INSERT INTO `z_area` VALUES ('1460', '乐安县', '江西省 抚州 乐安县', '361000', '361025', '36', '10', '25', '3', '2017-05-11 01:48:53', '2018-08-17 14:29:39', 'leanxian', 'l');
INSERT INTO `z_area` VALUES ('1461', '宜黄县', '江西省 抚州 宜黄县', '361000', '361026', '36', '10', '26', '3', '2017-05-11 01:48:53', '2018-08-17 14:29:40', 'yihuangxian', 'y');
INSERT INTO `z_area` VALUES ('1462', '金溪县', '江西省 抚州 金溪县', '361000', '361027', '36', '10', '27', '3', '2017-05-11 01:48:53', '2018-08-17 14:29:40', 'jinxixian', 'j');
INSERT INTO `z_area` VALUES ('1463', '资溪县', '江西省 抚州 资溪县', '361000', '361028', '36', '10', '28', '3', '2017-05-11 01:48:53', '2018-08-17 14:29:40', 'zixixian', 'z');
INSERT INTO `z_area` VALUES ('1464', '东乡县', '江西省 抚州 东乡县', '361000', '361029', '36', '10', '29', '3', '2017-05-11 01:48:53', '2018-08-17 14:29:40', 'dongxiangxian', 'd');
INSERT INTO `z_area` VALUES ('1465', '广昌县', '江西省 抚州 广昌县', '361000', '361030', '36', '10', '30', '3', '2017-05-11 01:48:53', '2018-08-17 14:29:40', 'guangchangxian', 'g');
INSERT INTO `z_area` VALUES ('1466', '上饶', '江西省 上饶', '360000', '361100', '36', '11', '00', '2', '2017-05-11 01:48:54', '2018-08-16 14:20:50', 'shangrao', 's');
INSERT INTO `z_area` VALUES ('1467', '上饶市', '江西省 上饶 上饶市', '361100', '361101', '36', '11', '01', '3', '2017-05-11 01:48:54', '2018-08-17 14:29:40', 'shangraoshi', 's');
INSERT INTO `z_area` VALUES ('1468', '信州区', '江西省 上饶 信州区', '361100', '361102', '36', '11', '02', '3', '2017-05-11 01:48:54', '2018-08-17 14:29:40', 'xinzhouqu', 'x');
INSERT INTO `z_area` VALUES ('1469', '广丰区', '江西省 上饶 广丰区', '361100', '361103', '36', '11', '03', '3', '2017-05-11 01:48:54', '2018-08-17 14:29:41', 'guangfengqu', 'g');
INSERT INTO `z_area` VALUES ('1470', '上饶县', '江西省 上饶 上饶县', '361100', '361121', '36', '11', '21', '3', '2017-05-11 01:48:54', '2018-08-17 14:29:41', 'shangraoxian', 's');
INSERT INTO `z_area` VALUES ('1471', '玉山县', '江西省 上饶 玉山县', '361100', '361123', '36', '11', '23', '3', '2017-05-11 01:48:54', '2018-08-17 14:29:41', 'yushanxian', 'y');
INSERT INTO `z_area` VALUES ('1472', '铅山县', '江西省 上饶 铅山县', '361100', '361124', '36', '11', '24', '3', '2017-05-11 01:48:54', '2018-08-17 14:29:41', 'qianshanxian', 'q');
INSERT INTO `z_area` VALUES ('1473', '横峰县', '江西省 上饶 横峰县', '361100', '361125', '36', '11', '25', '3', '2017-05-11 01:48:55', '2018-08-17 14:29:41', 'hengfengxian', 'h');
INSERT INTO `z_area` VALUES ('1474', '弋阳县', '江西省 上饶 弋阳县', '361100', '361126', '36', '11', '26', '3', '2017-05-11 01:48:55', '2018-08-17 14:29:41', 'yiyangxian', 'y');
INSERT INTO `z_area` VALUES ('1475', '余干县', '江西省 上饶 余干县', '361100', '361127', '36', '11', '27', '3', '2017-05-11 01:48:55', '2018-08-17 14:29:41', 'yuganxian', 'y');
INSERT INTO `z_area` VALUES ('1476', '鄱阳县', '江西省 上饶 鄱阳县', '361100', '361128', '36', '11', '28', '3', '2017-05-11 01:48:55', '2018-08-17 14:29:42', 'poyangxian', 'p');
INSERT INTO `z_area` VALUES ('1477', '万年县', '江西省 上饶 万年县', '361100', '361129', '36', '11', '29', '3', '2017-05-11 01:48:55', '2018-08-17 14:29:42', 'wannianxian', 'w');
INSERT INTO `z_area` VALUES ('1478', '婺源县', '江西省 上饶 婺源县', '361100', '361130', '36', '11', '30', '3', '2017-05-11 01:48:55', '2018-08-17 14:29:42', 'wuyuanxian', 'w');
INSERT INTO `z_area` VALUES ('1479', '德兴市', '江西省 上饶 德兴市', '361100', '361181', '36', '11', '81', '3', '2017-05-11 01:48:56', '2018-08-17 14:29:42', 'dexingshi', 'd');
INSERT INTO `z_area` VALUES ('1480', '山东省', '山东省', '', '370000', '37', '00', '00', '1', '2017-05-11 01:48:56', '2017-08-28 14:23:15', 'shandongsheng', 's');
INSERT INTO `z_area` VALUES ('1481', '济南', '山东省 济南', '370000', '370100', '37', '01', '00', '2', '2017-05-11 01:48:56', '2018-08-16 14:20:51', 'jinan', 'j');
INSERT INTO `z_area` VALUES ('1482', '济南市', '山东省 济南 济南市', '370100', '370101', '37', '01', '01', '3', '2017-05-11 01:48:56', '2018-08-17 14:29:42', 'jinanshi', 'j');
INSERT INTO `z_area` VALUES ('1483', '历下区', '山东省 济南 历下区', '370100', '370102', '37', '01', '02', '3', '2017-05-11 01:48:56', '2018-08-17 14:29:42', 'lixiaqu', 'l');
INSERT INTO `z_area` VALUES ('1484', '市中区', '山东省 济南 市中区', '370100', '370103', '37', '01', '03', '3', '2017-05-11 01:48:56', '2018-08-17 14:29:42', 'shizhongqu', 's');
INSERT INTO `z_area` VALUES ('1485', '槐荫区', '山东省 济南 槐荫区', '370100', '370104', '37', '01', '04', '3', '2017-05-11 01:48:56', '2018-08-17 14:29:42', 'huaiyinqu', 'h');
INSERT INTO `z_area` VALUES ('1486', '天桥区', '山东省 济南 天桥区', '370100', '370105', '37', '01', '05', '3', '2017-05-11 01:48:56', '2018-08-17 14:29:43', 'tianqiaoqu', 't');
INSERT INTO `z_area` VALUES ('1487', '历城区', '山东省 济南 历城区', '370100', '370112', '37', '01', '12', '3', '2017-05-11 01:48:57', '2018-08-17 14:29:43', 'lichengqu', 'l');
INSERT INTO `z_area` VALUES ('1488', '长清区', '山东省 济南 长清区', '370100', '370113', '37', '01', '13', '3', '2017-05-11 01:48:57', '2018-08-17 14:29:43', 'changqingqu', 'c');
INSERT INTO `z_area` VALUES ('1489', '平阴县', '山东省 济南 平阴县', '370100', '370124', '37', '01', '24', '3', '2017-05-11 01:48:57', '2018-08-17 14:29:43', 'pingyinxian', 'p');
INSERT INTO `z_area` VALUES ('1490', '济阳县', '山东省 济南 济阳县', '370100', '370125', '37', '01', '25', '3', '2017-05-11 01:48:57', '2018-08-17 14:29:44', 'jiyangxian', 'j');
INSERT INTO `z_area` VALUES ('1491', '商河县', '山东省 济南 商河县', '370100', '370126', '37', '01', '26', '3', '2017-05-11 01:48:57', '2018-08-17 14:29:44', 'shanghexian', 's');
INSERT INTO `z_area` VALUES ('1492', '章丘市', '山东省 济南 章丘市', '370100', '370181', '37', '01', '81', '3', '2017-05-11 01:48:57', '2018-08-17 14:29:44', 'zhangqiushi', 'z');
INSERT INTO `z_area` VALUES ('1493', '青岛', '山东省 青岛', '370000', '370200', '37', '02', '00', '2', '2017-05-11 01:48:58', '2018-08-16 14:20:53', 'qingdao', 'q');
INSERT INTO `z_area` VALUES ('1494', '青岛市', '山东省 青岛 青岛市', '370200', '370201', '37', '02', '01', '3', '2017-05-11 01:48:58', '2018-08-17 14:29:44', 'qingdaoshi', 'q');
INSERT INTO `z_area` VALUES ('1495', '市南区', '山东省 青岛 市南区', '370200', '370202', '37', '02', '02', '3', '2017-05-11 01:48:58', '2018-08-17 14:29:44', 'shinanqu', 's');
INSERT INTO `z_area` VALUES ('1496', '市北区', '山东省 青岛 市北区', '370200', '370203', '37', '02', '03', '3', '2017-05-11 01:48:58', '2018-08-17 14:29:44', 'shibeiqu', 's');
INSERT INTO `z_area` VALUES ('1497', '黄岛区', '山东省 青岛 黄岛区', '370200', '370211', '37', '02', '11', '3', '2017-05-11 01:48:58', '2018-08-17 14:29:44', 'huangdaoqu', 'h');
INSERT INTO `z_area` VALUES ('1498', '崂山区', '山东省 青岛 崂山区', '370200', '370212', '37', '02', '12', '3', '2017-05-11 01:48:58', '2018-08-17 14:29:45', 'laoshanqu', 'l');
INSERT INTO `z_area` VALUES ('1499', '李沧区', '山东省 青岛 李沧区', '370200', '370213', '37', '02', '13', '3', '2017-05-11 01:48:59', '2018-08-17 14:29:45', 'licangqu', 'l');
INSERT INTO `z_area` VALUES ('1500', '城阳区', '山东省 青岛 城阳区', '370200', '370214', '37', '02', '14', '3', '2017-05-11 01:48:59', '2018-08-17 14:29:45', 'chengyangqu', 'c');
INSERT INTO `z_area` VALUES ('1501', '胶州市', '山东省 青岛 胶州市', '370200', '370281', '37', '02', '81', '3', '2017-05-11 01:48:59', '2018-08-17 14:29:45', 'jiaozhoushi', 'j');
INSERT INTO `z_area` VALUES ('1502', '即墨市', '山东省 青岛 即墨市', '370200', '370282', '37', '02', '82', '3', '2017-05-11 01:48:59', '2018-08-17 14:29:45', 'jimoshi', 'j');
INSERT INTO `z_area` VALUES ('1503', '平度市', '山东省 青岛 平度市', '370200', '370283', '37', '02', '83', '3', '2017-05-11 01:48:59', '2018-08-17 14:29:45', 'pingdushi', 'p');
INSERT INTO `z_area` VALUES ('1504', '莱西市', '山东省 青岛 莱西市', '370200', '370285', '37', '02', '85', '3', '2017-05-11 01:48:59', '2018-08-17 14:29:45', 'laixishi', 'l');
INSERT INTO `z_area` VALUES ('1505', '淄博', '山东省 淄博', '370000', '370300', '37', '03', '00', '2', '2017-05-11 01:48:59', '2018-08-16 14:20:54', 'zibo', 'z');
INSERT INTO `z_area` VALUES ('1506', '淄博市', '山东省 淄博 淄博市', '370300', '370301', '37', '03', '01', '3', '2017-05-11 01:49:00', '2018-08-17 14:29:46', 'ziboshi', 'z');
INSERT INTO `z_area` VALUES ('1507', '淄川区', '山东省 淄博 淄川区', '370300', '370302', '37', '03', '02', '3', '2017-05-11 01:49:00', '2018-08-17 14:29:46', 'zichuanqu', 'z');
INSERT INTO `z_area` VALUES ('1508', '张店区', '山东省 淄博 张店区', '370300', '370303', '37', '03', '03', '3', '2017-05-11 01:49:00', '2018-08-17 14:29:46', 'zhangdianqu', 'z');
INSERT INTO `z_area` VALUES ('1509', '博山区', '山东省 淄博 博山区', '370300', '370304', '37', '03', '04', '3', '2017-05-11 01:49:00', '2018-08-17 14:29:46', 'boshanqu', 'b');
INSERT INTO `z_area` VALUES ('1510', '临淄区', '山东省 淄博 临淄区', '370300', '370305', '37', '03', '05', '3', '2017-05-11 01:49:00', '2018-08-17 14:29:46', 'linziqu', 'l');
INSERT INTO `z_area` VALUES ('1511', '周村区', '山东省 淄博 周村区', '370300', '370306', '37', '03', '06', '3', '2017-05-11 01:49:00', '2018-08-17 14:29:46', 'zhoucunqu', 'z');
INSERT INTO `z_area` VALUES ('1512', '桓台县', '山东省 淄博 桓台县', '370300', '370321', '37', '03', '21', '3', '2017-05-11 01:49:01', '2018-08-17 14:29:46', 'huantaixian', 'h');
INSERT INTO `z_area` VALUES ('1513', '高青县', '山东省 淄博 高青县', '370300', '370322', '37', '03', '22', '3', '2017-05-11 01:49:01', '2018-08-17 14:29:47', 'gaoqingxian', 'g');
INSERT INTO `z_area` VALUES ('1514', '沂源县', '山东省 淄博 沂源县', '370300', '370323', '37', '03', '23', '3', '2017-05-11 01:49:01', '2018-08-17 14:29:47', 'yiyuanxian', 'y');
INSERT INTO `z_area` VALUES ('1515', '枣庄', '山东省 枣庄', '370000', '370400', '37', '04', '00', '2', '2017-05-11 01:49:01', '2018-08-16 14:20:56', 'zaozhuang', 'z');
INSERT INTO `z_area` VALUES ('1516', '枣庄市', '山东省 枣庄 枣庄市', '370400', '370401', '37', '04', '01', '3', '2017-05-11 01:49:01', '2018-08-17 14:29:47', 'zaozhuangshi', 'z');
INSERT INTO `z_area` VALUES ('1517', '市中区', '山东省 枣庄 市中区', '370400', '370402', '37', '04', '02', '3', '2017-05-11 01:49:01', '2018-08-17 14:29:47', 'shizhongqu', 's');
INSERT INTO `z_area` VALUES ('1518', '薛城区', '山东省 枣庄 薛城区', '370400', '370403', '37', '04', '03', '3', '2017-05-11 01:49:01', '2018-08-17 14:29:47', 'xuechengqu', 'x');
INSERT INTO `z_area` VALUES ('1519', '峄城区', '山东省 枣庄 峄城区', '370400', '370404', '37', '04', '04', '3', '2017-05-11 01:49:02', '2018-08-17 14:29:47', 'yichengqu', 'y');
INSERT INTO `z_area` VALUES ('1520', '台儿庄区', '山东省 枣庄 台儿庄区', '370400', '370405', '37', '04', '05', '3', '2017-05-11 01:49:02', '2018-08-17 14:29:47', 'taierzhuangqu', 't');
INSERT INTO `z_area` VALUES ('1521', '山亭区', '山东省 枣庄 山亭区', '370400', '370406', '37', '04', '06', '3', '2017-05-11 01:49:02', '2018-08-17 14:29:48', 'shantingqu', 's');
INSERT INTO `z_area` VALUES ('1522', '滕州市', '山东省 枣庄 滕州市', '370400', '370481', '37', '04', '81', '3', '2017-05-11 01:49:02', '2018-08-17 14:29:48', 'tengzhoushi', 't');
INSERT INTO `z_area` VALUES ('1523', '东营', '山东省 东营', '370000', '370500', '37', '05', '00', '2', '2017-05-11 01:49:02', '2018-08-16 14:20:57', 'dongying', 'd');
INSERT INTO `z_area` VALUES ('1524', '东营市', '山东省 东营 东营市', '370500', '370501', '37', '05', '01', '3', '2017-05-11 01:49:02', '2018-08-17 14:29:48', 'dongyingshi', 'd');
INSERT INTO `z_area` VALUES ('1525', '东营区', '山东省 东营 东营区', '370500', '370502', '37', '05', '02', '3', '2017-05-11 01:49:03', '2018-08-17 14:29:48', 'dongyingqu', 'd');
INSERT INTO `z_area` VALUES ('1526', '河口区', '山东省 东营 河口区', '370500', '370503', '37', '05', '03', '3', '2017-05-11 01:49:03', '2018-08-17 14:29:48', 'hekouqu', 'h');
INSERT INTO `z_area` VALUES ('1527', '垦利县', '山东省 东营 垦利县', '370500', '370521', '37', '05', '21', '3', '2017-05-11 01:49:03', '2018-08-17 14:29:48', 'kenlixian', 'k');
INSERT INTO `z_area` VALUES ('1528', '利津县', '山东省 东营 利津县', '370500', '370522', '37', '05', '22', '3', '2017-05-11 01:49:03', '2018-08-17 14:29:48', 'lijinxian', 'l');
INSERT INTO `z_area` VALUES ('1529', '广饶县', '山东省 东营 广饶县', '370500', '370523', '37', '05', '23', '3', '2017-05-11 01:49:03', '2018-08-17 14:29:48', 'guangraoxian', 'g');
INSERT INTO `z_area` VALUES ('1530', '烟台', '山东省 烟台', '370000', '370600', '37', '06', '00', '2', '2017-05-11 01:49:03', '2018-08-16 14:20:58', 'yantai', 'y');
INSERT INTO `z_area` VALUES ('1531', '烟台市', '山东省 烟台 烟台市', '370600', '370601', '37', '06', '01', '3', '2017-05-11 01:49:03', '2018-08-17 14:29:49', 'yantaishi', 'y');
INSERT INTO `z_area` VALUES ('1532', '芝罘区', '山东省 烟台 芝罘区', '370600', '370602', '37', '06', '02', '3', '2017-05-11 01:49:04', '2018-08-17 14:29:49', 'zhifuqu', 'z');
INSERT INTO `z_area` VALUES ('1533', '福山区', '山东省 烟台 福山区', '370600', '370611', '37', '06', '11', '3', '2017-05-11 01:49:04', '2018-08-17 14:29:49', 'fushanqu', 'f');
INSERT INTO `z_area` VALUES ('1534', '牟平区', '山东省 烟台 牟平区', '370600', '370612', '37', '06', '12', '3', '2017-05-11 01:49:04', '2018-08-17 14:29:49', 'moupingqu', 'm');
INSERT INTO `z_area` VALUES ('1535', '莱山区', '山东省 烟台 莱山区', '370600', '370613', '37', '06', '13', '3', '2017-05-11 01:49:04', '2018-08-17 14:29:49', 'laishanqu', 'l');
INSERT INTO `z_area` VALUES ('1536', '长岛县', '山东省 烟台 长岛县', '370600', '370634', '37', '06', '34', '3', '2017-05-11 01:49:04', '2018-08-17 14:29:49', 'changdaoxian', 'c');
INSERT INTO `z_area` VALUES ('1537', '龙口市', '山东省 烟台 龙口市', '370600', '370681', '37', '06', '81', '3', '2017-05-11 01:49:04', '2018-08-17 14:29:49', 'longkoushi', 'l');
INSERT INTO `z_area` VALUES ('1538', '莱阳市', '山东省 烟台 莱阳市', '370600', '370682', '37', '06', '82', '3', '2017-05-11 01:49:05', '2018-08-17 14:29:50', 'laiyangshi', 'l');
INSERT INTO `z_area` VALUES ('1539', '莱州市', '山东省 烟台 莱州市', '370600', '370683', '37', '06', '83', '3', '2017-05-11 01:49:05', '2018-08-17 14:29:50', 'laizhoushi', 'l');
INSERT INTO `z_area` VALUES ('1540', '蓬莱市', '山东省 烟台 蓬莱市', '370600', '370684', '37', '06', '84', '3', '2017-05-11 01:49:05', '2018-08-17 14:29:50', 'penglaishi', 'p');
INSERT INTO `z_area` VALUES ('1541', '招远市', '山东省 烟台 招远市', '370600', '370685', '37', '06', '85', '3', '2017-05-11 01:49:05', '2018-08-17 14:29:50', 'zhaoyuanshi', 'z');
INSERT INTO `z_area` VALUES ('1542', '栖霞市', '山东省 烟台 栖霞市', '370600', '370686', '37', '06', '86', '3', '2017-05-11 01:49:05', '2018-08-17 14:29:50', 'qixiashi', 'q');
INSERT INTO `z_area` VALUES ('1543', '海阳市', '山东省 烟台 海阳市', '370600', '370687', '37', '06', '87', '3', '2017-05-11 01:49:05', '2018-08-17 14:29:50', 'haiyangshi', 'h');
INSERT INTO `z_area` VALUES ('1544', '潍坊', '山东省 潍坊', '370000', '370700', '37', '07', '00', '2', '2017-05-11 01:49:06', '2018-08-16 14:20:59', 'weifang', 'w');
INSERT INTO `z_area` VALUES ('1545', '潍坊市', '山东省 潍坊 潍坊市', '370700', '370701', '37', '07', '01', '3', '2017-05-11 01:49:06', '2018-08-17 14:29:50', 'weifangshi', 'w');
INSERT INTO `z_area` VALUES ('1546', '潍城区', '山东省 潍坊 潍城区', '370700', '370702', '37', '07', '02', '3', '2017-05-11 01:49:06', '2018-08-17 14:29:51', 'weichengqu', 'w');
INSERT INTO `z_area` VALUES ('1547', '寒亭区', '山东省 潍坊 寒亭区', '370700', '370703', '37', '07', '03', '3', '2017-05-11 01:49:06', '2018-08-17 14:29:51', 'hantingqu', 'h');
INSERT INTO `z_area` VALUES ('1548', '坊子区', '山东省 潍坊 坊子区', '370700', '370704', '37', '07', '04', '3', '2017-05-11 01:49:06', '2018-08-17 14:29:51', 'fangziqu', 'f');
INSERT INTO `z_area` VALUES ('1549', '奎文区', '山东省 潍坊 奎文区', '370700', '370705', '37', '07', '05', '3', '2017-05-11 01:49:06', '2018-08-17 14:29:51', 'kuiwenqu', 'k');
INSERT INTO `z_area` VALUES ('1550', '临朐县', '山东省 潍坊 临朐县', '370700', '370724', '37', '07', '24', '3', '2017-05-11 01:49:06', '2018-08-17 14:29:51', 'linquxian', 'l');
INSERT INTO `z_area` VALUES ('1551', '昌乐县', '山东省 潍坊 昌乐县', '370700', '370725', '37', '07', '25', '3', '2017-05-11 01:49:07', '2018-08-17 14:29:51', 'changlexian', 'c');
INSERT INTO `z_area` VALUES ('1552', '青州市', '山东省 潍坊 青州市', '370700', '370781', '37', '07', '81', '3', '2017-05-11 01:49:07', '2018-08-17 14:29:51', 'qingzhoushi', 'q');
INSERT INTO `z_area` VALUES ('1553', '诸城市', '山东省 潍坊 诸城市', '370700', '370782', '37', '07', '82', '3', '2017-05-11 01:49:07', '2018-08-17 14:29:51', 'zhuchengshi', 'z');
INSERT INTO `z_area` VALUES ('1554', '寿光市', '山东省 潍坊 寿光市', '370700', '370783', '37', '07', '83', '3', '2017-05-11 01:49:07', '2018-08-17 14:29:52', 'shouguangshi', 's');
INSERT INTO `z_area` VALUES ('1555', '安丘市', '山东省 潍坊 安丘市', '370700', '370784', '37', '07', '84', '3', '2017-05-11 01:49:07', '2018-08-17 14:29:52', 'anqiushi', 'a');
INSERT INTO `z_area` VALUES ('1556', '高密市', '山东省 潍坊 高密市', '370700', '370785', '37', '07', '85', '3', '2017-05-11 01:49:07', '2018-08-17 14:29:52', 'gaomishi', 'g');
INSERT INTO `z_area` VALUES ('1557', '昌邑市', '山东省 潍坊 昌邑市', '370700', '370786', '37', '07', '86', '3', '2017-05-11 01:49:08', '2018-08-17 14:29:52', 'changyishi', 'c');
INSERT INTO `z_area` VALUES ('1558', '济宁', '山东省 济宁', '370000', '370800', '37', '08', '00', '2', '2017-05-11 01:49:08', '2018-08-16 14:21:01', 'jining', 'j');
INSERT INTO `z_area` VALUES ('1559', '济宁市', '山东省 济宁 济宁市', '370800', '370801', '37', '08', '01', '3', '2017-05-11 01:49:08', '2018-08-17 14:29:52', 'jiningshi', 'j');
INSERT INTO `z_area` VALUES ('1560', '任城区', '山东省 济宁 任城区', '370800', '370811', '37', '08', '11', '3', '2017-05-11 01:49:08', '2018-08-17 14:29:52', 'renchengqu', 'r');
INSERT INTO `z_area` VALUES ('1561', '兖州区', '山东省 济宁 兖州区', '370800', '370812', '37', '08', '12', '3', '2017-05-11 01:49:08', '2018-08-17 14:29:52', 'yanzhouqu', 'y');
INSERT INTO `z_area` VALUES ('1562', '微山县', '山东省 济宁 微山县', '370800', '370826', '37', '08', '26', '3', '2017-05-11 01:49:08', '2018-08-17 14:29:53', 'weishanxian', 'w');
INSERT INTO `z_area` VALUES ('1563', '鱼台县', '山东省 济宁 鱼台县', '370800', '370827', '37', '08', '27', '3', '2017-05-11 01:49:08', '2018-08-17 14:29:53', 'yutaixian', 'y');
INSERT INTO `z_area` VALUES ('1564', '金乡县', '山东省 济宁 金乡县', '370800', '370828', '37', '08', '28', '3', '2017-05-11 01:49:09', '2018-08-17 14:29:53', 'jinxiangxian', 'j');
INSERT INTO `z_area` VALUES ('1565', '嘉祥县', '山东省 济宁 嘉祥县', '370800', '370829', '37', '08', '29', '3', '2017-05-11 01:49:09', '2018-08-17 14:29:53', 'jiaxiangxian', 'j');
INSERT INTO `z_area` VALUES ('1566', '汶上县', '山东省 济宁 汶上县', '370800', '370830', '37', '08', '30', '3', '2017-05-11 01:49:09', '2018-08-17 14:29:53', 'wenshangxian', 'w');
INSERT INTO `z_area` VALUES ('1567', '泗水县', '山东省 济宁 泗水县', '370800', '370831', '37', '08', '31', '3', '2017-05-11 01:49:09', '2018-08-17 14:29:53', 'sishuixian', 's');
INSERT INTO `z_area` VALUES ('1568', '梁山县', '山东省 济宁 梁山县', '370800', '370832', '37', '08', '32', '3', '2017-05-11 01:49:09', '2018-08-17 14:29:54', 'liangshanxian', 'l');
INSERT INTO `z_area` VALUES ('1569', '曲阜市', '山东省 济宁 曲阜市', '370800', '370881', '37', '08', '81', '3', '2017-05-11 01:49:09', '2018-08-17 14:29:54', 'qufushi', 'q');
INSERT INTO `z_area` VALUES ('1570', '邹城市', '山东省 济宁 邹城市', '370800', '370883', '37', '08', '83', '3', '2017-05-11 01:49:10', '2018-08-17 14:29:54', 'zouchengshi', 'z');
INSERT INTO `z_area` VALUES ('1571', '泰安', '山东省 泰安', '370000', '370900', '37', '09', '00', '2', '2017-05-11 01:49:10', '2018-08-16 14:21:03', 'taian', 't');
INSERT INTO `z_area` VALUES ('1572', '泰安市', '山东省 泰安 泰安市', '370900', '370901', '37', '09', '01', '3', '2017-05-11 01:49:10', '2018-08-17 14:29:54', 'taianshi', 't');
INSERT INTO `z_area` VALUES ('1573', '泰山区', '山东省 泰安 泰山区', '370900', '370902', '37', '09', '02', '3', '2017-05-11 01:49:10', '2018-08-17 14:29:54', 'taishanqu', 't');
INSERT INTO `z_area` VALUES ('1574', '岱岳区', '山东省 泰安 岱岳区', '370900', '370911', '37', '09', '11', '3', '2017-05-11 01:49:10', '2018-08-17 14:29:54', 'daiyuequ', 'd');
INSERT INTO `z_area` VALUES ('1575', '宁阳县', '山东省 泰安 宁阳县', '370900', '370921', '37', '09', '21', '3', '2017-05-11 01:49:10', '2018-08-17 14:29:54', 'ningyangxian', 'n');
INSERT INTO `z_area` VALUES ('1576', '东平县', '山东省 泰安 东平县', '370900', '370923', '37', '09', '23', '3', '2017-05-11 01:49:11', '2018-08-17 14:29:55', 'dongpingxian', 'd');
INSERT INTO `z_area` VALUES ('1577', '新泰市', '山东省 泰安 新泰市', '370900', '370982', '37', '09', '82', '3', '2017-05-11 01:49:11', '2018-08-17 14:29:55', 'xintaishi', 'x');
INSERT INTO `z_area` VALUES ('1578', '肥城市', '山东省 泰安 肥城市', '370900', '370983', '37', '09', '83', '3', '2017-05-11 01:49:11', '2018-08-17 14:29:55', 'feichengshi', 'f');
INSERT INTO `z_area` VALUES ('1579', '威海', '山东省 威海', '370000', '371000', '37', '10', '00', '2', '2017-05-11 01:49:11', '2018-08-16 14:21:04', 'weihai', 'w');
INSERT INTO `z_area` VALUES ('1580', '威海市', '山东省 威海 威海市', '371000', '371001', '37', '10', '01', '3', '2017-05-11 01:49:11', '2018-08-17 14:29:55', 'weihaishi', 'w');
INSERT INTO `z_area` VALUES ('1581', '环翠区', '山东省 威海 环翠区', '371000', '371002', '37', '10', '02', '3', '2017-05-11 01:49:11', '2018-08-17 14:29:55', 'huancuiqu', 'h');
INSERT INTO `z_area` VALUES ('1582', '文登区', '山东省 威海 文登区', '371000', '371003', '37', '10', '03', '3', '2017-05-11 01:49:11', '2018-08-17 14:29:55', 'wendengqu', 'w');
INSERT INTO `z_area` VALUES ('1583', '荣成市', '山东省 威海 荣成市', '371000', '371082', '37', '10', '82', '3', '2017-05-11 01:49:12', '2018-08-17 14:29:55', 'rongchengshi', 'r');
INSERT INTO `z_area` VALUES ('1584', '乳山市', '山东省 威海 乳山市', '371000', '371083', '37', '10', '83', '3', '2017-05-11 01:49:12', '2018-08-17 14:29:56', 'rushanshi', 'r');
INSERT INTO `z_area` VALUES ('1585', '日照', '山东省 日照', '370000', '371100', '37', '11', '00', '2', '2017-05-11 01:49:12', '2018-08-16 14:21:05', 'rizhao', 'r');
INSERT INTO `z_area` VALUES ('1586', '日照市', '山东省 日照 日照市', '371100', '371101', '37', '11', '01', '3', '2017-05-11 01:49:12', '2018-08-17 14:29:56', 'rizhaoshi', 'r');
INSERT INTO `z_area` VALUES ('1587', '东港区', '山东省 日照 东港区', '371100', '371102', '37', '11', '02', '3', '2017-05-11 01:49:12', '2018-08-17 14:29:56', 'donggangqu', 'd');
INSERT INTO `z_area` VALUES ('1588', '岚山区', '山东省 日照 岚山区', '371100', '371103', '37', '11', '03', '3', '2017-05-11 01:49:12', '2018-08-17 14:29:56', 'lanshanqu', 'l');
INSERT INTO `z_area` VALUES ('1589', '五莲县', '山东省 日照 五莲县', '371100', '371121', '37', '11', '21', '3', '2017-05-11 01:49:12', '2018-08-17 14:29:56', 'wulianxian', 'w');
INSERT INTO `z_area` VALUES ('1590', '莒县', '山东省 日照 莒县', '371100', '371122', '37', '11', '22', '3', '2017-05-11 01:49:13', '2018-08-17 14:29:56', 'juxian', 'j');
INSERT INTO `z_area` VALUES ('1591', '莱芜', '山东省 莱芜', '370000', '371200', '37', '12', '00', '2', '2017-05-11 01:49:13', '2018-08-16 14:21:05', 'laiwu', 'l');
INSERT INTO `z_area` VALUES ('1592', '莱芜市', '山东省 莱芜 莱芜市', '371200', '371201', '37', '12', '01', '3', '2017-05-11 01:49:13', '2018-08-17 14:29:57', 'laiwushi', 'l');
INSERT INTO `z_area` VALUES ('1593', '莱城区', '山东省 莱芜 莱城区', '371200', '371202', '37', '12', '02', '3', '2017-05-11 01:49:13', '2018-08-17 14:29:57', 'laichengqu', 'l');
INSERT INTO `z_area` VALUES ('1594', '钢城区', '山东省 莱芜 钢城区', '371200', '371203', '37', '12', '03', '3', '2017-05-11 01:49:13', '2018-08-17 14:29:57', 'gangchengqu', 'g');
INSERT INTO `z_area` VALUES ('1595', '临沂', '山东省 临沂', '370000', '371300', '37', '13', '00', '2', '2017-05-11 01:49:13', '2018-08-16 14:21:06', 'linyi', 'l');
INSERT INTO `z_area` VALUES ('1596', '临沂市', '山东省 临沂 临沂市', '371300', '371301', '37', '13', '01', '3', '2017-05-11 01:49:13', '2018-08-17 14:29:57', 'linyishi', 'l');
INSERT INTO `z_area` VALUES ('1597', '兰山区', '山东省 临沂 兰山区', '371300', '371302', '37', '13', '02', '3', '2017-05-11 01:49:14', '2018-08-17 14:29:57', 'lanshanqu', 'l');
INSERT INTO `z_area` VALUES ('1598', '罗庄区', '山东省 临沂 罗庄区', '371300', '371311', '37', '13', '11', '3', '2017-05-11 01:49:14', '2018-08-17 14:29:57', 'luozhuangqu', 'l');
INSERT INTO `z_area` VALUES ('1599', '河东区', '山东省 临沂 河东区', '371300', '371312', '37', '13', '12', '3', '2017-05-11 01:49:14', '2018-08-17 14:29:58', 'hedongqu', 'h');
INSERT INTO `z_area` VALUES ('1600', '沂南县', '山东省 临沂 沂南县', '371300', '371321', '37', '13', '21', '3', '2017-05-11 01:49:14', '2018-08-17 14:29:58', 'yinanxian', 'y');
INSERT INTO `z_area` VALUES ('1601', '郯城县', '山东省 临沂 郯城县', '371300', '371322', '37', '13', '22', '3', '2017-05-11 01:49:14', '2018-08-17 14:29:58', 'tanchengxian', 't');
INSERT INTO `z_area` VALUES ('1602', '沂水县', '山东省 临沂 沂水县', '371300', '371323', '37', '13', '23', '3', '2017-05-11 01:49:14', '2018-08-17 14:29:58', 'yishuixian', 'y');
INSERT INTO `z_area` VALUES ('1603', '兰陵县', '山东省 临沂 兰陵县', '371300', '371324', '37', '13', '24', '3', '2017-05-11 01:49:15', '2018-08-17 14:29:58', 'lanlingxian', 'l');
INSERT INTO `z_area` VALUES ('1604', '费县', '山东省 临沂 费县', '371300', '371325', '37', '13', '25', '3', '2017-05-11 01:49:15', '2018-08-17 14:29:58', 'feixian', 'f');
INSERT INTO `z_area` VALUES ('1605', '平邑县', '山东省 临沂 平邑县', '371300', '371326', '37', '13', '26', '3', '2017-05-11 01:49:15', '2018-08-17 14:29:58', 'pingyixian', 'p');
INSERT INTO `z_area` VALUES ('1606', '莒南县', '山东省 临沂 莒南县', '371300', '371327', '37', '13', '27', '3', '2017-05-11 01:49:15', '2018-08-17 14:29:58', 'junanxian', 'j');
INSERT INTO `z_area` VALUES ('1607', '蒙阴县', '山东省 临沂 蒙阴县', '371300', '371328', '37', '13', '28', '3', '2017-05-11 01:49:15', '2018-08-17 14:29:59', 'mengyinxian', 'm');
INSERT INTO `z_area` VALUES ('1608', '临沭县', '山东省 临沂 临沭县', '371300', '371329', '37', '13', '29', '3', '2017-05-11 01:49:15', '2018-08-17 14:29:59', 'linshuxian', 'l');
INSERT INTO `z_area` VALUES ('1609', '德州', '山东省 德州', '370000', '371400', '37', '14', '00', '2', '2017-05-11 01:49:15', '2018-08-16 14:21:08', 'dezhou', 'd');
INSERT INTO `z_area` VALUES ('1610', '德州市', '山东省 德州 德州市', '371400', '371401', '37', '14', '01', '3', '2017-05-11 01:49:16', '2018-08-17 14:29:59', 'dezhoushi', 'd');
INSERT INTO `z_area` VALUES ('1611', '德城区', '山东省 德州 德城区', '371400', '371402', '37', '14', '02', '3', '2017-05-11 01:49:16', '2018-08-17 14:29:59', 'dechengqu', 'd');
INSERT INTO `z_area` VALUES ('1612', '陵城区', '山东省 德州 陵城区', '371400', '371403', '37', '14', '03', '3', '2017-05-11 01:49:16', '2018-08-17 14:29:59', 'lingchengqu', 'l');
INSERT INTO `z_area` VALUES ('1613', '宁津县', '山东省 德州 宁津县', '371400', '371422', '37', '14', '22', '3', '2017-05-11 01:49:16', '2018-08-17 14:29:59', 'ningjinxian', 'n');
INSERT INTO `z_area` VALUES ('1614', '庆云县', '山东省 德州 庆云县', '371400', '371423', '37', '14', '23', '3', '2017-05-11 01:49:16', '2018-08-17 14:29:59', 'qingyunxian', 'q');
INSERT INTO `z_area` VALUES ('1615', '临邑县', '山东省 德州 临邑县', '371400', '371424', '37', '14', '24', '3', '2017-05-11 01:49:16', '2018-08-17 14:30:00', 'linyixian', 'l');
INSERT INTO `z_area` VALUES ('1616', '齐河县', '山东省 德州 齐河县', '371400', '371425', '37', '14', '25', '3', '2017-05-11 01:49:17', '2018-08-17 14:30:00', 'qihexian', 'q');
INSERT INTO `z_area` VALUES ('1617', '平原县', '山东省 德州 平原县', '371400', '371426', '37', '14', '26', '3', '2017-05-11 01:49:17', '2018-08-17 14:30:00', 'pingyuanxian', 'p');
INSERT INTO `z_area` VALUES ('1618', '夏津县', '山东省 德州 夏津县', '371400', '371427', '37', '14', '27', '3', '2017-05-11 01:49:17', '2018-08-17 14:30:00', 'xiajinxian', 'x');
INSERT INTO `z_area` VALUES ('1619', '武城县', '山东省 德州 武城县', '371400', '371428', '37', '14', '28', '3', '2017-05-11 01:49:17', '2018-08-17 14:30:00', 'wuchengxian', 'w');
INSERT INTO `z_area` VALUES ('1620', '乐陵市', '山东省 德州 乐陵市', '371400', '371481', '37', '14', '81', '3', '2017-05-11 01:49:17', '2018-08-17 14:30:00', 'lelingshi', 'l');
INSERT INTO `z_area` VALUES ('1621', '禹城市', '山东省 德州 禹城市', '371400', '371482', '37', '14', '82', '3', '2017-05-11 01:49:17', '2018-08-17 14:30:01', 'yuchengshi', 'y');
INSERT INTO `z_area` VALUES ('1622', '聊城', '山东省 聊城', '370000', '371500', '37', '15', '00', '2', '2017-05-11 01:49:17', '2018-08-16 14:21:09', 'liaocheng', 'l');
INSERT INTO `z_area` VALUES ('1623', '聊城市', '山东省 聊城 聊城市', '371500', '371501', '37', '15', '01', '3', '2017-05-11 01:49:18', '2018-08-17 14:30:01', 'liaochengshi', 'l');
INSERT INTO `z_area` VALUES ('1624', '东昌府区', '山东省 聊城 东昌府区', '371500', '371502', '37', '15', '02', '3', '2017-05-11 01:49:18', '2018-08-17 14:30:01', 'dongchangfuqu', 'd');
INSERT INTO `z_area` VALUES ('1625', '阳谷县', '山东省 聊城 阳谷县', '371500', '371521', '37', '15', '21', '3', '2017-05-11 01:49:18', '2018-08-17 14:30:01', 'yangguxian', 'y');
INSERT INTO `z_area` VALUES ('1626', '莘县', '山东省 聊城 莘县', '371500', '371522', '37', '15', '22', '3', '2017-05-11 01:49:18', '2018-08-17 14:30:01', 'xinxian', 'x');
INSERT INTO `z_area` VALUES ('1627', '茌平县', '山东省 聊城 茌平县', '371500', '371523', '37', '15', '23', '3', '2017-05-11 01:49:18', '2018-08-17 14:30:01', 'chipingxian', 'c');
INSERT INTO `z_area` VALUES ('1628', '东阿县', '山东省 聊城 东阿县', '371500', '371524', '37', '15', '24', '3', '2017-05-11 01:49:18', '2018-08-17 14:30:01', 'dongaxian', 'd');
INSERT INTO `z_area` VALUES ('1629', '冠县', '山东省 聊城 冠县', '371500', '371525', '37', '15', '25', '3', '2017-05-11 01:49:18', '2018-08-17 14:30:02', 'guanxian', 'g');
INSERT INTO `z_area` VALUES ('1630', '高唐县', '山东省 聊城 高唐县', '371500', '371526', '37', '15', '26', '3', '2017-05-11 01:49:19', '2018-08-17 14:30:02', 'gaotangxian', 'g');
INSERT INTO `z_area` VALUES ('1631', '临清市', '山东省 聊城 临清市', '371500', '371581', '37', '15', '81', '3', '2017-05-11 01:49:19', '2018-08-17 14:30:02', 'linqingshi', 'l');
INSERT INTO `z_area` VALUES ('1632', '滨州', '山东省 滨州', '370000', '371600', '37', '16', '00', '2', '2017-05-11 01:49:19', '2018-08-16 14:21:11', 'binzhou', 'b');
INSERT INTO `z_area` VALUES ('1633', '滨州市', '山东省 滨州 滨州市', '371600', '371601', '37', '16', '01', '3', '2017-05-11 01:49:19', '2018-08-17 14:30:02', 'binzhoushi', 'b');
INSERT INTO `z_area` VALUES ('1634', '滨城区', '山东省 滨州 滨城区', '371600', '371602', '37', '16', '02', '3', '2017-05-11 01:49:19', '2018-08-17 14:30:02', 'binchengqu', 'b');
INSERT INTO `z_area` VALUES ('1635', '沾化区', '山东省 滨州 沾化区', '371600', '371603', '37', '16', '03', '3', '2017-05-11 01:49:19', '2018-08-17 14:30:02', 'zhanhuaqu', 'z');
INSERT INTO `z_area` VALUES ('1636', '惠民县', '山东省 滨州 惠民县', '371600', '371621', '37', '16', '21', '3', '2017-05-11 01:49:20', '2018-08-17 14:30:02', 'huiminxian', 'h');
INSERT INTO `z_area` VALUES ('1637', '阳信县', '山东省 滨州 阳信县', '371600', '371622', '37', '16', '22', '3', '2017-05-11 01:49:20', '2018-08-17 14:30:03', 'yangxinxian', 'y');
INSERT INTO `z_area` VALUES ('1638', '无棣县', '山东省 滨州 无棣县', '371600', '371623', '37', '16', '23', '3', '2017-05-11 01:49:20', '2018-08-17 14:30:03', 'wudixian', 'w');
INSERT INTO `z_area` VALUES ('1639', '博兴县', '山东省 滨州 博兴县', '371600', '371625', '37', '16', '25', '3', '2017-05-11 01:49:20', '2018-08-17 14:30:03', 'boxingxian', 'b');
INSERT INTO `z_area` VALUES ('1640', '邹平县', '山东省 滨州 邹平县', '371600', '371626', '37', '16', '26', '3', '2017-05-11 01:49:20', '2018-08-17 14:30:03', 'zoupingxian', 'z');
INSERT INTO `z_area` VALUES ('1641', '菏泽', '山东省 菏泽', '370000', '371700', '37', '17', '00', '2', '2017-05-11 01:49:20', '2018-08-16 14:21:12', 'heze', 'h');
INSERT INTO `z_area` VALUES ('1642', '菏泽市', '山东省 菏泽 菏泽市', '371700', '371701', '37', '17', '01', '3', '2017-05-11 01:49:20', '2018-08-17 14:30:03', 'hezeshi', 'h');
INSERT INTO `z_area` VALUES ('1643', '牡丹区', '山东省 菏泽 牡丹区', '371700', '371702', '37', '17', '02', '3', '2017-05-11 01:49:21', '2018-08-17 14:30:03', 'mudanqu', 'm');
INSERT INTO `z_area` VALUES ('1644', '曹县', '山东省 菏泽 曹县', '371700', '371721', '37', '17', '21', '3', '2017-05-11 01:49:21', '2018-08-17 14:30:03', 'caoxian', 'c');
INSERT INTO `z_area` VALUES ('1645', '单县', '山东省 菏泽 单县', '371700', '371722', '37', '17', '22', '3', '2017-05-11 01:49:21', '2018-08-17 14:30:04', 'danxian', 'd');
INSERT INTO `z_area` VALUES ('1646', '成武县', '山东省 菏泽 成武县', '371700', '371723', '37', '17', '23', '3', '2017-05-11 01:49:21', '2018-08-17 14:30:04', 'chengwuxian', 'c');
INSERT INTO `z_area` VALUES ('1647', '巨野县', '山东省 菏泽 巨野县', '371700', '371724', '37', '17', '24', '3', '2017-05-11 01:49:21', '2018-08-17 14:30:04', 'juyexian', 'j');
INSERT INTO `z_area` VALUES ('1648', '郓城县', '山东省 菏泽 郓城县', '371700', '371725', '37', '17', '25', '3', '2017-05-11 01:49:21', '2018-08-17 14:30:04', 'yunchengxian', 'y');
INSERT INTO `z_area` VALUES ('1649', '鄄城县', '山东省 菏泽 鄄城县', '371700', '371726', '37', '17', '26', '3', '2017-05-11 01:49:21', '2018-08-17 14:30:04', 'juanchengxian', 'j');
INSERT INTO `z_area` VALUES ('1650', '定陶县', '山东省 菏泽 定陶县', '371700', '371727', '37', '17', '27', '3', '2017-05-11 01:49:22', '2018-08-17 14:30:04', 'dingtaoxian', 'd');
INSERT INTO `z_area` VALUES ('1651', '东明县', '山东省 菏泽 东明县', '371700', '371728', '37', '17', '28', '3', '2017-05-11 01:49:22', '2018-08-17 14:30:04', 'dongmingxian', 'd');
INSERT INTO `z_area` VALUES ('1652', '河南省', '河南省', '', '410000', '41', '00', '00', '1', '2017-05-11 01:49:22', '2017-08-28 14:23:27', 'henansheng', 'h');
INSERT INTO `z_area` VALUES ('1653', '郑州', '河南省 郑州', '410000', '410100', '41', '01', '00', '2', '2017-05-11 01:49:22', '2018-08-16 14:21:13', 'zhengzhou', 'z');
INSERT INTO `z_area` VALUES ('1654', '郑州市', '河南省 郑州 郑州市', '410100', '410101', '41', '01', '01', '3', '2017-05-11 01:49:22', '2018-08-17 14:30:05', 'zhengzhoushi', 'z');
INSERT INTO `z_area` VALUES ('1655', '中原区', '河南省 郑州 中原区', '410100', '410102', '41', '01', '02', '3', '2017-05-11 01:49:22', '2018-08-17 14:30:05', 'zhongyuanqu', 'z');
INSERT INTO `z_area` VALUES ('1656', '二七区', '河南省 郑州 二七区', '410100', '410103', '41', '01', '03', '3', '2017-05-11 01:49:22', '2018-08-17 14:30:05', 'erqiqu', 'e');
INSERT INTO `z_area` VALUES ('1657', '管城回族区', '河南省 郑州 管城回族区', '410100', '410104', '41', '01', '04', '3', '2017-05-11 01:49:22', '2018-08-17 14:30:05', 'guanchenghuizuqu', 'g');
INSERT INTO `z_area` VALUES ('1658', '金水区', '河南省 郑州 金水区', '410100', '410105', '41', '01', '05', '3', '2017-05-11 01:49:23', '2018-08-17 14:30:05', 'jinshuiqu', 'j');
INSERT INTO `z_area` VALUES ('1659', '上街区', '河南省 郑州 上街区', '410100', '410106', '41', '01', '06', '3', '2017-05-11 01:49:23', '2018-08-17 14:30:05', 'shangjiequ', 's');
INSERT INTO `z_area` VALUES ('1660', '惠济区', '河南省 郑州 惠济区', '410100', '410108', '41', '01', '08', '3', '2017-05-11 01:49:23', '2018-08-17 14:30:05', 'huijiqu', 'h');
INSERT INTO `z_area` VALUES ('1661', '中牟县', '河南省 郑州 中牟县', '410100', '410122', '41', '01', '22', '3', '2017-05-11 01:49:23', '2018-08-17 14:30:06', 'zhongmouxian', 'z');
INSERT INTO `z_area` VALUES ('1662', '巩义市', '河南省 郑州 巩义市', '410100', '410181', '41', '01', '81', '3', '2017-05-11 01:49:23', '2018-08-17 14:30:06', 'gongyishi', 'g');
INSERT INTO `z_area` VALUES ('1663', '荥阳市', '河南省 郑州 荥阳市', '410100', '410182', '41', '01', '82', '3', '2017-05-11 01:49:23', '2018-08-17 14:30:06', 'yingyangshi', 'y');
INSERT INTO `z_area` VALUES ('1664', '新密市', '河南省 郑州 新密市', '410100', '410183', '41', '01', '83', '3', '2017-05-11 01:49:24', '2018-08-17 14:30:06', 'xinmishi', 'x');
INSERT INTO `z_area` VALUES ('1665', '新郑市', '河南省 郑州 新郑市', '410100', '410184', '41', '01', '84', '3', '2017-05-11 01:49:24', '2018-08-17 14:30:06', 'xinzhengshi', 'x');
INSERT INTO `z_area` VALUES ('1666', '登封市', '河南省 郑州 登封市', '410100', '410185', '41', '01', '85', '3', '2017-05-11 01:49:24', '2018-08-17 14:30:06', 'dengfengshi', 'd');
INSERT INTO `z_area` VALUES ('1667', '开封', '河南省 开封', '410000', '410200', '41', '02', '00', '2', '2017-05-11 01:49:24', '2018-08-16 14:21:15', 'kaifeng', 'k');
INSERT INTO `z_area` VALUES ('1668', '开封市', '河南省 开封 开封市', '410200', '410201', '41', '02', '01', '3', '2017-05-11 01:49:24', '2018-08-17 14:30:06', 'kaifengshi', 'k');
INSERT INTO `z_area` VALUES ('1669', '龙亭区', '河南省 开封 龙亭区', '410200', '410202', '41', '02', '02', '3', '2017-05-11 01:49:24', '2018-08-17 14:30:06', 'longtingqu', 'l');
INSERT INTO `z_area` VALUES ('1670', '顺河回族区', '河南省 开封 顺河回族区', '410200', '410203', '41', '02', '03', '3', '2017-05-11 01:49:24', '2018-08-17 14:30:07', 'shunhehuizuqu', 's');
INSERT INTO `z_area` VALUES ('1671', '鼓楼区', '河南省 开封 鼓楼区', '410200', '410204', '41', '02', '04', '3', '2017-05-11 01:49:25', '2018-08-17 14:30:07', 'gulouqu', 'g');
INSERT INTO `z_area` VALUES ('1672', '禹王台区', '河南省 开封 禹王台区', '410200', '410205', '41', '02', '05', '3', '2017-05-11 01:49:25', '2018-08-17 14:30:07', 'yuwangtaiqu', 'y');
INSERT INTO `z_area` VALUES ('1673', '金明区', '河南省 开封 金明区', '410200', '410211', '41', '02', '11', '3', '2017-05-11 01:49:25', '2018-08-17 14:30:07', 'jinmingqu', 'j');
INSERT INTO `z_area` VALUES ('1674', '祥符区', '河南省 开封 祥符区', '410200', '410212', '41', '02', '12', '3', '2017-05-11 01:49:25', '2018-08-17 14:30:07', 'xiangfuqu', 'x');
INSERT INTO `z_area` VALUES ('1675', '杞县', '河南省 开封 杞县', '410200', '410221', '41', '02', '21', '3', '2017-05-11 01:49:25', '2018-08-17 14:30:07', 'qixian', 'q');
INSERT INTO `z_area` VALUES ('1676', '通许县', '河南省 开封 通许县', '410200', '410222', '41', '02', '22', '3', '2017-05-11 01:49:25', '2018-08-17 14:30:07', 'tongxuxian', 't');
INSERT INTO `z_area` VALUES ('1677', '尉氏县', '河南省 开封 尉氏县', '410200', '410223', '41', '02', '23', '3', '2017-05-11 01:49:26', '2018-08-17 14:30:08', 'weishixian', 'w');
INSERT INTO `z_area` VALUES ('1678', '兰考县', '河南省 开封 兰考县', '410200', '410225', '41', '02', '25', '3', '2017-05-11 01:49:26', '2018-08-17 14:30:08', 'lankaoxian', 'l');
INSERT INTO `z_area` VALUES ('1679', '洛阳', '河南省 洛阳', '410000', '410300', '41', '03', '00', '2', '2017-05-11 01:49:26', '2018-08-16 14:21:16', 'luoyang', 'l');
INSERT INTO `z_area` VALUES ('1680', '洛阳市', '河南省 洛阳 洛阳市', '410300', '410301', '41', '03', '01', '3', '2017-05-11 01:49:26', '2018-08-17 14:30:08', 'luoyangshi', 'l');
INSERT INTO `z_area` VALUES ('1681', '老城区', '河南省 洛阳 老城区', '410300', '410302', '41', '03', '02', '3', '2017-05-11 01:49:26', '2018-08-17 14:30:08', 'laochengqu', 'l');
INSERT INTO `z_area` VALUES ('1682', '西工区', '河南省 洛阳 西工区', '410300', '410303', '41', '03', '03', '3', '2017-05-11 01:49:26', '2018-08-17 14:30:08', 'xigongqu', 'x');
INSERT INTO `z_area` VALUES ('1683', '瀍河回族区', '河南省 洛阳 瀍河回族区', '410300', '410304', '41', '03', '04', '3', '2017-05-11 01:49:26', '2018-08-17 14:30:08', 'chanhehuizuqu', 'c');
INSERT INTO `z_area` VALUES ('1684', '涧西区', '河南省 洛阳 涧西区', '410300', '410305', '41', '03', '05', '3', '2017-05-11 01:49:27', '2018-08-17 14:30:08', 'jianxiqu', 'j');
INSERT INTO `z_area` VALUES ('1685', '吉利区', '河南省 洛阳 吉利区', '410300', '410306', '41', '03', '06', '3', '2017-05-11 01:49:27', '2018-08-17 14:30:09', 'jiliqu', 'j');
INSERT INTO `z_area` VALUES ('1686', '洛龙区', '河南省 洛阳 洛龙区', '410300', '410311', '41', '03', '11', '3', '2017-05-11 01:49:27', '2018-08-17 14:30:09', 'luolongqu', 'l');
INSERT INTO `z_area` VALUES ('1687', '孟津县', '河南省 洛阳 孟津县', '410300', '410322', '41', '03', '22', '3', '2017-05-11 01:49:27', '2018-08-17 14:30:09', 'mengjinxian', 'm');
INSERT INTO `z_area` VALUES ('1688', '新安县', '河南省 洛阳 新安县', '410300', '410323', '41', '03', '23', '3', '2017-05-11 01:49:27', '2018-08-17 14:30:09', 'xinanxian', 'x');
INSERT INTO `z_area` VALUES ('1689', '栾川县', '河南省 洛阳 栾川县', '410300', '410324', '41', '03', '24', '3', '2017-05-11 01:49:27', '2018-08-17 14:30:09', 'luanchuanxian', 'l');
INSERT INTO `z_area` VALUES ('1690', '嵩县', '河南省 洛阳 嵩县', '410300', '410325', '41', '03', '25', '3', '2017-05-11 01:49:28', '2018-08-17 14:30:09', 'songxian', 's');
INSERT INTO `z_area` VALUES ('1691', '汝阳县', '河南省 洛阳 汝阳县', '410300', '410326', '41', '03', '26', '3', '2017-05-11 01:49:28', '2018-08-17 14:30:09', 'ruyangxian', 'r');
INSERT INTO `z_area` VALUES ('1692', '宜阳县', '河南省 洛阳 宜阳县', '410300', '410327', '41', '03', '27', '3', '2017-05-11 01:49:28', '2018-08-17 14:30:10', 'yiyangxian', 'y');
INSERT INTO `z_area` VALUES ('1693', '洛宁县', '河南省 洛阳 洛宁县', '410300', '410328', '41', '03', '28', '3', '2017-05-11 01:49:28', '2018-08-17 14:30:10', 'luoningxian', 'l');
INSERT INTO `z_area` VALUES ('1694', '伊川县', '河南省 洛阳 伊川县', '410300', '410329', '41', '03', '29', '3', '2017-05-11 01:49:28', '2018-08-17 14:30:10', 'yichuanxian', 'y');
INSERT INTO `z_area` VALUES ('1695', '偃师市', '河南省 洛阳 偃师市', '410300', '410381', '41', '03', '81', '3', '2017-05-11 01:49:28', '2018-08-17 14:30:10', 'yanshishi', 'y');
INSERT INTO `z_area` VALUES ('1696', '平顶山', '河南省 平顶山', '410000', '410400', '41', '04', '00', '2', '2017-05-11 01:49:28', '2018-08-16 14:21:19', 'pingdingshan', 'p');
INSERT INTO `z_area` VALUES ('1697', '平顶山市', '河南省 平顶山 平顶山市', '410400', '410401', '41', '04', '01', '3', '2017-05-11 01:49:29', '2018-08-17 14:30:10', 'pingdingshanshi', 'p');
INSERT INTO `z_area` VALUES ('1698', '新华区', '河南省 平顶山 新华区', '410400', '410402', '41', '04', '02', '3', '2017-05-11 01:49:29', '2018-08-17 14:30:11', 'xinhuaqu', 'x');
INSERT INTO `z_area` VALUES ('1699', '卫东区', '河南省 平顶山 卫东区', '410400', '410403', '41', '04', '03', '3', '2017-05-11 01:49:29', '2018-08-17 14:30:11', 'weidongqu', 'w');
INSERT INTO `z_area` VALUES ('1700', '石龙区', '河南省 平顶山 石龙区', '410400', '410404', '41', '04', '04', '3', '2017-05-11 01:49:29', '2018-08-17 14:30:11', 'shilongqu', 's');
INSERT INTO `z_area` VALUES ('1701', '湛河区', '河南省 平顶山 湛河区', '410400', '410411', '41', '04', '11', '3', '2017-05-11 01:49:29', '2018-08-17 14:30:11', 'zhanhequ', 'z');
INSERT INTO `z_area` VALUES ('1702', '宝丰县', '河南省 平顶山 宝丰县', '410400', '410421', '41', '04', '21', '3', '2017-05-11 01:49:29', '2018-08-17 14:30:11', 'baofengxian', 'b');
INSERT INTO `z_area` VALUES ('1703', '叶县', '河南省 平顶山 叶县', '410400', '410422', '41', '04', '22', '3', '2017-05-11 01:49:30', '2018-08-17 14:30:11', 'yexian', 'y');
INSERT INTO `z_area` VALUES ('1704', '鲁山县', '河南省 平顶山 鲁山县', '410400', '410423', '41', '04', '23', '3', '2017-05-11 01:49:30', '2018-08-17 14:30:11', 'lushanxian', 'l');
INSERT INTO `z_area` VALUES ('1705', '郏县', '河南省 平顶山 郏县', '410400', '410425', '41', '04', '25', '3', '2017-05-11 01:49:30', '2018-08-17 14:30:11', 'jiaxian', 'j');
INSERT INTO `z_area` VALUES ('1706', '舞钢市', '河南省 平顶山 舞钢市', '410400', '410481', '41', '04', '81', '3', '2017-05-11 01:49:30', '2018-08-17 14:30:12', 'wugangshi', 'w');
INSERT INTO `z_area` VALUES ('1707', '汝州市', '河南省 平顶山 汝州市', '410400', '410482', '41', '04', '82', '3', '2017-05-11 01:49:30', '2018-08-17 14:30:12', 'ruzhoushi', 'r');
INSERT INTO `z_area` VALUES ('1708', '安阳', '河南省 安阳', '410000', '410500', '41', '05', '00', '2', '2017-05-11 01:49:30', '2018-08-16 14:21:20', 'anyang', 'a');
INSERT INTO `z_area` VALUES ('1709', '安阳市', '河南省 安阳 安阳市', '410500', '410501', '41', '05', '01', '3', '2017-05-11 01:49:30', '2018-08-17 14:30:12', 'anyangshi', 'a');
INSERT INTO `z_area` VALUES ('1710', '文峰区', '河南省 安阳 文峰区', '410500', '410502', '41', '05', '02', '3', '2017-05-11 01:49:31', '2018-08-17 14:30:12', 'wenfengqu', 'w');
INSERT INTO `z_area` VALUES ('1711', '北关区', '河南省 安阳 北关区', '410500', '410503', '41', '05', '03', '3', '2017-05-11 01:49:31', '2018-08-17 14:30:12', 'beiguanqu', 'b');
INSERT INTO `z_area` VALUES ('1712', '殷都区', '河南省 安阳 殷都区', '410500', '410505', '41', '05', '05', '3', '2017-05-11 01:49:31', '2018-08-17 14:30:12', 'yindouqu', 'y');
INSERT INTO `z_area` VALUES ('1713', '龙安区', '河南省 安阳 龙安区', '410500', '410506', '41', '05', '06', '3', '2017-05-11 01:49:31', '2018-08-17 14:30:13', 'longanqu', 'l');
INSERT INTO `z_area` VALUES ('1714', '安阳县', '河南省 安阳 安阳县', '410500', '410522', '41', '05', '22', '3', '2017-05-11 01:49:31', '2018-08-17 14:30:13', 'anyangxian', 'a');
INSERT INTO `z_area` VALUES ('1715', '汤阴县', '河南省 安阳 汤阴县', '410500', '410523', '41', '05', '23', '3', '2017-05-11 01:49:31', '2018-08-17 14:30:13', 'tangyinxian', 't');
INSERT INTO `z_area` VALUES ('1716', '滑县', '河南省 安阳 滑县', '410500', '410526', '41', '05', '26', '3', '2017-05-11 01:49:32', '2018-08-17 14:30:13', 'huaxian', 'h');
INSERT INTO `z_area` VALUES ('1717', '内黄县', '河南省 安阳 内黄县', '410500', '410527', '41', '05', '27', '3', '2017-05-11 01:49:32', '2018-08-17 14:30:13', 'nahuangxian', 'n');
INSERT INTO `z_area` VALUES ('1718', '林州市', '河南省 安阳 林州市', '410500', '410581', '41', '05', '81', '3', '2017-05-11 01:49:32', '2018-08-17 14:30:13', 'linzhoushi', 'l');
INSERT INTO `z_area` VALUES ('1719', '鹤壁', '河南省 鹤壁', '410000', '410600', '41', '06', '00', '2', '2017-05-11 01:49:32', '2018-08-16 14:21:21', 'hebi', 'h');
INSERT INTO `z_area` VALUES ('1720', '鹤壁市', '河南省 鹤壁 鹤壁市', '410600', '410601', '41', '06', '01', '3', '2017-05-11 01:49:32', '2018-08-17 14:30:13', 'hebishi', 'h');
INSERT INTO `z_area` VALUES ('1721', '鹤山区', '河南省 鹤壁 鹤山区', '410600', '410602', '41', '06', '02', '3', '2017-05-11 01:49:32', '2018-08-17 14:30:14', 'heshanqu', 'h');
INSERT INTO `z_area` VALUES ('1722', '山城区', '河南省 鹤壁 山城区', '410600', '410603', '41', '06', '03', '3', '2017-05-11 01:49:32', '2018-08-17 14:30:14', 'shanchengqu', 's');
INSERT INTO `z_area` VALUES ('1723', '淇滨区', '河南省 鹤壁 淇滨区', '410600', '410611', '41', '06', '11', '3', '2017-05-11 01:49:33', '2018-08-17 14:30:14', 'qibinqu', 'q');
INSERT INTO `z_area` VALUES ('1724', '浚县', '河南省 鹤壁 浚县', '410600', '410621', '41', '06', '21', '3', '2017-05-11 01:49:33', '2018-08-17 14:30:14', 'junxian', 'j');
INSERT INTO `z_area` VALUES ('1725', '淇县', '河南省 鹤壁 淇县', '410600', '410622', '41', '06', '22', '3', '2017-05-11 01:49:33', '2018-08-17 14:30:14', 'qixian', 'q');
INSERT INTO `z_area` VALUES ('1726', '新乡', '河南省 新乡', '410000', '410700', '41', '07', '00', '2', '2017-05-11 01:49:33', '2018-08-16 14:21:22', 'xinxiang', 'x');
INSERT INTO `z_area` VALUES ('1727', '新乡市', '河南省 新乡 新乡市', '410700', '410701', '41', '07', '01', '3', '2017-05-11 01:49:33', '2018-08-17 14:30:14', 'xinxiangshi', 'x');
INSERT INTO `z_area` VALUES ('1728', '红旗区', '河南省 新乡 红旗区', '410700', '410702', '41', '07', '02', '3', '2017-05-11 01:49:33', '2018-08-17 14:30:14', 'hongqiqu', 'h');
INSERT INTO `z_area` VALUES ('1729', '卫滨区', '河南省 新乡 卫滨区', '410700', '410703', '41', '07', '03', '3', '2017-05-11 01:49:33', '2018-08-17 14:30:15', 'weibinqu', 'w');
INSERT INTO `z_area` VALUES ('1730', '凤泉区', '河南省 新乡 凤泉区', '410700', '410704', '41', '07', '04', '3', '2017-05-11 01:49:34', '2018-08-17 14:30:15', 'fengquanqu', 'f');
INSERT INTO `z_area` VALUES ('1731', '牧野区', '河南省 新乡 牧野区', '410700', '410711', '41', '07', '11', '3', '2017-05-11 01:49:34', '2018-08-17 14:30:15', 'muyequ', 'm');
INSERT INTO `z_area` VALUES ('1732', '新乡县', '河南省 新乡 新乡县', '410700', '410721', '41', '07', '21', '3', '2017-05-11 01:49:34', '2018-08-17 14:30:15', 'xinxiangxian', 'x');
INSERT INTO `z_area` VALUES ('1733', '获嘉县', '河南省 新乡 获嘉县', '410700', '410724', '41', '07', '24', '3', '2017-05-11 01:49:34', '2018-08-17 14:30:15', 'huojiaxian', 'h');
INSERT INTO `z_area` VALUES ('1734', '原阳县', '河南省 新乡 原阳县', '410700', '410725', '41', '07', '25', '3', '2017-05-11 01:49:34', '2018-08-17 14:30:15', 'yuanyangxian', 'y');
INSERT INTO `z_area` VALUES ('1735', '延津县', '河南省 新乡 延津县', '410700', '410726', '41', '07', '26', '3', '2017-05-11 01:49:34', '2018-08-17 14:30:15', 'yanjinxian', 'y');
INSERT INTO `z_area` VALUES ('1736', '封丘县', '河南省 新乡 封丘县', '410700', '410727', '41', '07', '27', '3', '2017-05-11 01:49:35', '2018-08-17 14:30:15', 'fengqiuxian', 'f');
INSERT INTO `z_area` VALUES ('1737', '长垣县', '河南省 新乡 长垣县', '410700', '410728', '41', '07', '28', '3', '2017-05-11 01:49:35', '2018-08-17 14:30:16', 'changyuanxian', 'c');
INSERT INTO `z_area` VALUES ('1738', '卫辉市', '河南省 新乡 卫辉市', '410700', '410781', '41', '07', '81', '3', '2017-05-11 01:49:35', '2018-08-17 14:30:16', 'weihuishi', 'w');
INSERT INTO `z_area` VALUES ('1739', '辉县市', '河南省 新乡 辉县市', '410700', '410782', '41', '07', '82', '3', '2017-05-11 01:49:35', '2018-08-17 14:30:16', 'huixianshi', 'h');
INSERT INTO `z_area` VALUES ('1740', '焦作', '河南省 焦作', '410000', '410800', '41', '08', '00', '2', '2017-05-11 01:49:35', '2018-08-16 14:21:24', 'jiaozuo', 'j');
INSERT INTO `z_area` VALUES ('1741', '焦作市', '河南省 焦作 焦作市', '410800', '410801', '41', '08', '01', '3', '2017-05-11 01:49:35', '2018-08-17 14:30:16', 'jiaozuoshi', 'j');
INSERT INTO `z_area` VALUES ('1742', '解放区', '河南省 焦作 解放区', '410800', '410802', '41', '08', '02', '3', '2017-05-11 01:49:35', '2018-08-17 14:30:16', 'jiefangqu', 'j');
INSERT INTO `z_area` VALUES ('1743', '中站区', '河南省 焦作 中站区', '410800', '410803', '41', '08', '03', '3', '2017-05-11 01:49:36', '2018-08-17 14:30:16', 'zhongzhanqu', 'z');
INSERT INTO `z_area` VALUES ('1744', '马村区', '河南省 焦作 马村区', '410800', '410804', '41', '08', '04', '3', '2017-05-11 01:49:36', '2018-08-17 14:30:16', 'macunqu', 'm');
INSERT INTO `z_area` VALUES ('1745', '山阳区', '河南省 焦作 山阳区', '410800', '410811', '41', '08', '11', '3', '2017-05-11 01:49:36', '2018-08-17 14:30:17', 'shanyangqu', 's');
INSERT INTO `z_area` VALUES ('1746', '修武县', '河南省 焦作 修武县', '410800', '410821', '41', '08', '21', '3', '2017-05-11 01:49:36', '2018-08-17 14:30:17', 'xiuwuxian', 'x');
INSERT INTO `z_area` VALUES ('1747', '博爱县', '河南省 焦作 博爱县', '410800', '410822', '41', '08', '22', '3', '2017-05-11 01:49:36', '2018-08-17 14:30:17', 'boaixian', 'b');
INSERT INTO `z_area` VALUES ('1748', '武陟县', '河南省 焦作 武陟县', '410800', '410823', '41', '08', '23', '3', '2017-05-11 01:49:36', '2018-08-17 14:30:17', 'wuzhixian', 'w');
INSERT INTO `z_area` VALUES ('1749', '温县', '河南省 焦作 温县', '410800', '410825', '41', '08', '25', '3', '2017-05-11 01:49:37', '2018-08-17 14:30:17', 'wenxian', 'w');
INSERT INTO `z_area` VALUES ('1750', '沁阳市', '河南省 焦作 沁阳市', '410800', '410882', '41', '08', '82', '3', '2017-05-11 01:49:37', '2018-08-17 14:30:17', 'qinyangshi', 'q');
INSERT INTO `z_area` VALUES ('1751', '孟州市', '河南省 焦作 孟州市', '410800', '410883', '41', '08', '83', '3', '2017-05-11 01:49:37', '2018-08-17 14:30:17', 'mengzhoushi', 'm');
INSERT INTO `z_area` VALUES ('1752', '濮阳', '河南省 濮阳', '410000', '410900', '41', '09', '00', '2', '2017-05-11 01:49:37', '2018-08-16 14:21:26', 'puyang', 'p');
INSERT INTO `z_area` VALUES ('1753', '濮阳市', '河南省 濮阳 濮阳市', '410900', '410901', '41', '09', '01', '3', '2017-05-11 01:49:37', '2018-08-17 14:30:18', 'puyangshi', 'p');
INSERT INTO `z_area` VALUES ('1754', '华龙区', '河南省 濮阳 华龙区', '410900', '410902', '41', '09', '02', '3', '2017-05-11 01:49:37', '2018-08-17 14:30:18', 'hualongqu', 'h');
INSERT INTO `z_area` VALUES ('1755', '清丰县', '河南省 濮阳 清丰县', '410900', '410922', '41', '09', '22', '3', '2017-05-11 01:49:37', '2018-08-17 14:30:18', 'qingfengxian', 'q');
INSERT INTO `z_area` VALUES ('1756', '南乐县', '河南省 濮阳 南乐县', '410900', '410923', '41', '09', '23', '3', '2017-05-11 01:49:38', '2018-08-17 14:30:18', 'nanlexian', 'n');
INSERT INTO `z_area` VALUES ('1757', '范县', '河南省 濮阳 范县', '410900', '410926', '41', '09', '26', '3', '2017-05-11 01:49:38', '2018-08-17 14:30:18', 'fanxian', 'f');
INSERT INTO `z_area` VALUES ('1758', '台前县', '河南省 濮阳 台前县', '410900', '410927', '41', '09', '27', '3', '2017-05-11 01:49:38', '2018-08-17 14:30:18', 'taiqianxian', 't');
INSERT INTO `z_area` VALUES ('1759', '濮阳县', '河南省 濮阳 濮阳县', '410900', '410928', '41', '09', '28', '3', '2017-05-11 01:49:38', '2018-08-17 14:30:18', 'puyangxian', 'p');
INSERT INTO `z_area` VALUES ('1760', '许昌', '河南省 许昌', '410000', '411000', '41', '10', '00', '2', '2017-05-11 01:49:38', '2018-08-16 14:21:27', 'xuchang', 'x');
INSERT INTO `z_area` VALUES ('1761', '许昌市', '河南省 许昌 许昌市', '411000', '411001', '41', '10', '01', '3', '2017-05-11 01:49:38', '2018-08-17 14:30:19', 'xuchangshi', 'x');
INSERT INTO `z_area` VALUES ('1762', '魏都区', '河南省 许昌 魏都区', '411000', '411002', '41', '10', '02', '3', '2017-05-11 01:49:39', '2018-08-17 14:30:19', 'weidouqu', 'w');
INSERT INTO `z_area` VALUES ('1763', '许昌县', '河南省 许昌 许昌县', '411000', '411023', '41', '10', '23', '3', '2017-05-11 01:49:39', '2018-08-17 14:30:19', 'xuchangxian', 'x');
INSERT INTO `z_area` VALUES ('1764', '鄢陵县', '河南省 许昌 鄢陵县', '411000', '411024', '41', '10', '24', '3', '2017-05-11 01:49:39', '2018-08-17 14:30:19', 'yanlingxian', 'y');
INSERT INTO `z_area` VALUES ('1765', '襄城县', '河南省 许昌 襄城县', '411000', '411025', '41', '10', '25', '3', '2017-05-11 01:49:39', '2018-08-17 14:30:19', 'xiangchengxian', 'x');
INSERT INTO `z_area` VALUES ('1766', '禹州市', '河南省 许昌 禹州市', '411000', '411081', '41', '10', '81', '3', '2017-05-11 01:49:39', '2018-08-17 14:30:19', 'yuzhoushi', 'y');
INSERT INTO `z_area` VALUES ('1767', '长葛市', '河南省 许昌 长葛市', '411000', '411082', '41', '10', '82', '3', '2017-05-11 01:49:39', '2018-08-17 14:30:19', 'changgeshi', 'c');
INSERT INTO `z_area` VALUES ('1768', '漯河', '河南省 漯河', '410000', '411100', '41', '11', '00', '2', '2017-05-11 01:49:39', '2018-08-16 14:21:28', 'luohe', 'l');
INSERT INTO `z_area` VALUES ('1769', '漯河市', '河南省 漯河 漯河市', '411100', '411101', '41', '11', '01', '3', '2017-05-11 01:49:40', '2018-08-17 14:30:20', 'luoheshi', 'l');
INSERT INTO `z_area` VALUES ('1770', '源汇区', '河南省 漯河 源汇区', '411100', '411102', '41', '11', '02', '3', '2017-05-11 01:49:40', '2018-08-17 14:30:20', 'yuanhuiqu', 'y');
INSERT INTO `z_area` VALUES ('1771', '郾城区', '河南省 漯河 郾城区', '411100', '411103', '41', '11', '03', '3', '2017-05-11 01:49:40', '2018-08-17 14:30:20', 'yanchengqu', 'y');
INSERT INTO `z_area` VALUES ('1772', '召陵区', '河南省 漯河 召陵区', '411100', '411104', '41', '11', '04', '3', '2017-05-11 01:49:40', '2018-08-17 14:30:20', 'zhaolingqu', 'z');
INSERT INTO `z_area` VALUES ('1773', '舞阳县', '河南省 漯河 舞阳县', '411100', '411121', '41', '11', '21', '3', '2017-05-11 01:49:40', '2018-08-17 14:30:20', 'wuyangxian', 'w');
INSERT INTO `z_area` VALUES ('1774', '临颍县', '河南省 漯河 临颍县', '411100', '411122', '41', '11', '22', '3', '2017-05-11 01:49:40', '2018-08-17 14:30:20', 'linyingxian', 'l');
INSERT INTO `z_area` VALUES ('1775', '三门峡', '河南省 三门峡', '410000', '411200', '41', '12', '00', '2', '2017-05-11 01:49:41', '2018-08-16 14:21:29', 'sanmenxia', 's');
INSERT INTO `z_area` VALUES ('1776', '三门峡市', '河南省 三门峡 三门峡市', '411200', '411201', '41', '12', '01', '3', '2017-05-11 01:49:41', '2018-08-17 14:30:20', 'sanmenxiashi', 's');
INSERT INTO `z_area` VALUES ('1777', '湖滨区', '河南省 三门峡 湖滨区', '411200', '411202', '41', '12', '02', '3', '2017-05-11 01:49:41', '2018-08-17 14:30:21', 'hubinqu', 'h');
INSERT INTO `z_area` VALUES ('1778', '渑池县', '河南省 三门峡 渑池县', '411200', '411221', '41', '12', '21', '3', '2017-05-11 01:49:41', '2018-08-17 14:30:21', 'shengchixian', 's');
INSERT INTO `z_area` VALUES ('1779', '陕县', '河南省 三门峡 陕县', '411200', '411222', '41', '12', '22', '3', '2017-05-11 01:49:41', '2018-08-17 14:30:21', 'shanxian', 's');
INSERT INTO `z_area` VALUES ('1780', '卢氏县', '河南省 三门峡 卢氏县', '411200', '411224', '41', '12', '24', '3', '2017-05-11 01:49:41', '2018-08-17 14:30:21', 'lushixian', 'l');
INSERT INTO `z_area` VALUES ('1781', '义马市', '河南省 三门峡 义马市', '411200', '411281', '41', '12', '81', '3', '2017-05-11 01:49:42', '2018-08-17 14:30:21', 'yimashi', 'y');
INSERT INTO `z_area` VALUES ('1782', '灵宝市', '河南省 三门峡 灵宝市', '411200', '411282', '41', '12', '82', '3', '2017-05-11 01:49:42', '2018-08-17 14:30:21', 'lingbaoshi', 'l');
INSERT INTO `z_area` VALUES ('1783', '南阳', '河南省 南阳', '410000', '411300', '41', '13', '00', '2', '2017-05-11 01:49:42', '2018-08-16 14:21:30', 'nanyang', 'n');
INSERT INTO `z_area` VALUES ('1784', '南阳市', '河南省 南阳 南阳市', '411300', '411301', '41', '13', '01', '3', '2017-05-11 01:49:42', '2018-08-17 14:30:22', 'nanyangshi', 'n');
INSERT INTO `z_area` VALUES ('1785', '宛城区', '河南省 南阳 宛城区', '411300', '411302', '41', '13', '02', '3', '2017-05-11 01:49:42', '2018-08-17 14:30:22', 'wanchengqu', 'w');
INSERT INTO `z_area` VALUES ('1786', '卧龙区', '河南省 南阳 卧龙区', '411300', '411303', '41', '13', '03', '3', '2017-05-11 01:49:42', '2018-08-17 14:30:22', 'wolongqu', 'w');
INSERT INTO `z_area` VALUES ('1787', '南召县', '河南省 南阳 南召县', '411300', '411321', '41', '13', '21', '3', '2017-05-11 01:49:42', '2018-08-17 14:30:22', 'nanzhaoxian', 'n');
INSERT INTO `z_area` VALUES ('1788', '方城县', '河南省 南阳 方城县', '411300', '411322', '41', '13', '22', '3', '2017-05-11 01:49:43', '2018-08-17 14:30:22', 'fangchengxian', 'f');
INSERT INTO `z_area` VALUES ('1789', '西峡县', '河南省 南阳 西峡县', '411300', '411323', '41', '13', '23', '3', '2017-05-11 01:49:43', '2018-08-17 14:30:22', 'xixiaxian', 'x');
INSERT INTO `z_area` VALUES ('1790', '镇平县', '河南省 南阳 镇平县', '411300', '411324', '41', '13', '24', '3', '2017-05-11 01:49:43', '2018-08-17 14:30:22', 'zhenpingxian', 'z');
INSERT INTO `z_area` VALUES ('1791', '内乡县', '河南省 南阳 内乡县', '411300', '411325', '41', '13', '25', '3', '2017-05-11 01:49:43', '2018-08-17 14:30:23', 'naxiangxian', 'n');
INSERT INTO `z_area` VALUES ('1792', '淅川县', '河南省 南阳 淅川县', '411300', '411326', '41', '13', '26', '3', '2017-05-11 01:49:43', '2018-08-17 14:30:23', 'xichuanxian', 'x');
INSERT INTO `z_area` VALUES ('1793', '社旗县', '河南省 南阳 社旗县', '411300', '411327', '41', '13', '27', '3', '2017-05-11 01:49:43', '2018-08-17 14:30:23', 'sheqixian', 's');
INSERT INTO `z_area` VALUES ('1794', '唐河县', '河南省 南阳 唐河县', '411300', '411328', '41', '13', '28', '3', '2017-05-11 01:49:43', '2018-08-17 14:30:23', 'tanghexian', 't');
INSERT INTO `z_area` VALUES ('1795', '新野县', '河南省 南阳 新野县', '411300', '411329', '41', '13', '29', '3', '2017-05-11 01:49:44', '2018-08-17 14:30:23', 'xinyexian', 'x');
INSERT INTO `z_area` VALUES ('1796', '桐柏县', '河南省 南阳 桐柏县', '411300', '411330', '41', '13', '30', '3', '2017-05-11 01:49:44', '2018-08-17 14:30:23', 'tongbaixian', 't');
INSERT INTO `z_area` VALUES ('1797', '邓州市', '河南省 南阳 邓州市', '411300', '411381', '41', '13', '81', '3', '2017-05-11 01:49:44', '2018-08-17 14:30:24', 'dengzhoushi', 'd');
INSERT INTO `z_area` VALUES ('1798', '商丘', '河南省 商丘', '410000', '411400', '41', '14', '00', '2', '2017-05-11 01:49:44', '2018-08-16 14:21:31', 'shangqiu', 's');
INSERT INTO `z_area` VALUES ('1799', '商丘市', '河南省 商丘 商丘市', '411400', '411401', '41', '14', '01', '3', '2017-05-11 01:49:44', '2018-08-17 14:30:24', 'shangqiushi', 's');
INSERT INTO `z_area` VALUES ('1800', '梁园区', '河南省 商丘 梁园区', '411400', '411402', '41', '14', '02', '3', '2017-05-11 01:49:44', '2018-08-17 14:30:24', 'liangyuanqu', 'l');
INSERT INTO `z_area` VALUES ('1801', '睢阳区', '河南省 商丘 睢阳区', '411400', '411403', '41', '14', '03', '3', '2017-05-11 01:49:45', '2018-08-17 14:30:24', 'suiyangqu', 's');
INSERT INTO `z_area` VALUES ('1802', '民权县', '河南省 商丘 民权县', '411400', '411421', '41', '14', '21', '3', '2017-05-11 01:49:45', '2018-08-17 14:30:24', 'minquanxian', 'm');
INSERT INTO `z_area` VALUES ('1803', '睢县', '河南省 商丘 睢县', '411400', '411422', '41', '14', '22', '3', '2017-05-11 01:49:45', '2018-08-17 14:30:24', 'suixian', 's');
INSERT INTO `z_area` VALUES ('1804', '宁陵县', '河南省 商丘 宁陵县', '411400', '411423', '41', '14', '23', '3', '2017-05-11 01:49:45', '2018-08-17 14:30:24', 'ninglingxian', 'n');
INSERT INTO `z_area` VALUES ('1805', '柘城县', '河南省 商丘 柘城县', '411400', '411424', '41', '14', '24', '3', '2017-05-11 01:49:45', '2018-08-17 14:30:24', 'zhechengxian', 'z');
INSERT INTO `z_area` VALUES ('1806', '虞城县', '河南省 商丘 虞城县', '411400', '411425', '41', '14', '25', '3', '2017-05-11 01:49:45', '2018-08-17 14:30:25', 'yuchengxian', 'y');
INSERT INTO `z_area` VALUES ('1807', '夏邑县', '河南省 商丘 夏邑县', '411400', '411426', '41', '14', '26', '3', '2017-05-11 01:49:45', '2018-08-17 14:30:25', 'xiayixian', 'x');
INSERT INTO `z_area` VALUES ('1808', '永城市', '河南省 商丘 永城市', '411400', '411481', '41', '14', '81', '3', '2017-05-11 01:49:46', '2018-08-17 14:30:25', 'yongchengshi', 'y');
INSERT INTO `z_area` VALUES ('1809', '信阳', '河南省 信阳', '410000', '411500', '41', '15', '00', '2', '2017-05-11 01:49:46', '2018-08-16 14:21:33', 'xinyang', 'x');
INSERT INTO `z_area` VALUES ('1810', '信阳市', '河南省 信阳 信阳市', '411500', '411501', '41', '15', '01', '3', '2017-05-11 01:49:46', '2018-08-17 14:30:25', 'xinyangshi', 'x');
INSERT INTO `z_area` VALUES ('1811', '浉河区', '河南省 信阳 浉河区', '411500', '411502', '41', '15', '02', '3', '2017-05-11 01:49:46', '2018-08-17 14:30:25', 'shihequ', 's');
INSERT INTO `z_area` VALUES ('1812', '平桥区', '河南省 信阳 平桥区', '411500', '411503', '41', '15', '03', '3', '2017-05-11 01:49:46', '2018-08-17 14:30:25', 'pingqiaoqu', 'p');
INSERT INTO `z_area` VALUES ('1813', '罗山县', '河南省 信阳 罗山县', '411500', '411521', '41', '15', '21', '3', '2017-05-11 01:49:46', '2018-08-17 14:30:25', 'luoshanxian', 'l');
INSERT INTO `z_area` VALUES ('1814', '光山县', '河南省 信阳 光山县', '411500', '411522', '41', '15', '22', '3', '2017-05-11 01:49:47', '2018-08-17 14:30:26', 'guangshanxian', 'g');
INSERT INTO `z_area` VALUES ('1815', '新县', '河南省 信阳 新县', '411500', '411523', '41', '15', '23', '3', '2017-05-11 01:49:47', '2018-08-17 14:30:26', 'xinxian', 'x');
INSERT INTO `z_area` VALUES ('1816', '商城县', '河南省 信阳 商城县', '411500', '411524', '41', '15', '24', '3', '2017-05-11 01:49:47', '2018-08-17 14:30:26', 'shangchengxian', 's');
INSERT INTO `z_area` VALUES ('1817', '固始县', '河南省 信阳 固始县', '411500', '411525', '41', '15', '25', '3', '2017-05-11 01:49:47', '2018-08-17 14:30:26', 'gushixian', 'g');
INSERT INTO `z_area` VALUES ('1818', '潢川县', '河南省 信阳 潢川县', '411500', '411526', '41', '15', '26', '3', '2017-05-11 01:49:47', '2018-08-17 14:30:26', 'huangchuanxian', 'h');
INSERT INTO `z_area` VALUES ('1819', '淮滨县', '河南省 信阳 淮滨县', '411500', '411527', '41', '15', '27', '3', '2017-05-11 01:49:47', '2018-08-17 14:30:26', 'huaibinxian', 'h');
INSERT INTO `z_area` VALUES ('1820', '息县', '河南省 信阳 息县', '411500', '411528', '41', '15', '28', '3', '2017-05-11 01:49:47', '2018-08-17 14:30:26', 'xixian', 'x');
INSERT INTO `z_area` VALUES ('1821', '周口', '河南省 周口', '410000', '411600', '41', '16', '00', '2', '2017-05-11 01:49:48', '2018-08-16 14:21:34', 'zhoukou', 'z');
INSERT INTO `z_area` VALUES ('1822', '周口市', '河南省 周口 周口市', '411600', '411601', '41', '16', '01', '3', '2017-05-11 01:49:48', '2018-08-17 14:30:27', 'zhoukoushi', 'z');
INSERT INTO `z_area` VALUES ('1823', '川汇区', '河南省 周口 川汇区', '411600', '411602', '41', '16', '02', '3', '2017-05-11 01:49:48', '2018-08-17 14:30:27', 'chuanhuiqu', 'c');
INSERT INTO `z_area` VALUES ('1824', '扶沟县', '河南省 周口 扶沟县', '411600', '411621', '41', '16', '21', '3', '2017-05-11 01:49:48', '2018-08-17 14:30:27', 'fugouxian', 'f');
INSERT INTO `z_area` VALUES ('1825', '西华县', '河南省 周口 西华县', '411600', '411622', '41', '16', '22', '3', '2017-05-11 01:49:48', '2018-08-17 14:30:27', 'xihuaxian', 'x');
INSERT INTO `z_area` VALUES ('1826', '商水县', '河南省 周口 商水县', '411600', '411623', '41', '16', '23', '3', '2017-05-11 01:49:48', '2018-08-17 14:30:27', 'shangshuixian', 's');
INSERT INTO `z_area` VALUES ('1827', '沈丘县', '河南省 周口 沈丘县', '411600', '411624', '41', '16', '24', '3', '2017-05-11 01:49:48', '2018-08-17 14:30:27', 'shenqiuxian', 's');
INSERT INTO `z_area` VALUES ('1828', '郸城县', '河南省 周口 郸城县', '411600', '411625', '41', '16', '25', '3', '2017-05-11 01:49:49', '2018-08-17 14:30:27', 'danchengxian', 'd');
INSERT INTO `z_area` VALUES ('1829', '淮阳县', '河南省 周口 淮阳县', '411600', '411626', '41', '16', '26', '3', '2017-05-11 01:49:49', '2018-08-17 14:30:27', 'huaiyangxian', 'h');
INSERT INTO `z_area` VALUES ('1830', '太康县', '河南省 周口 太康县', '411600', '411627', '41', '16', '27', '3', '2017-05-11 01:49:49', '2018-08-17 14:30:28', 'taikangxian', 't');
INSERT INTO `z_area` VALUES ('1831', '鹿邑县', '河南省 周口 鹿邑县', '411600', '411628', '41', '16', '28', '3', '2017-05-11 01:49:49', '2018-08-17 14:30:28', 'luyixian', 'l');
INSERT INTO `z_area` VALUES ('1832', '项城市', '河南省 周口 项城市', '411600', '411681', '41', '16', '81', '3', '2017-05-11 01:49:49', '2018-08-17 14:30:28', 'xiangchengshi', 'x');
INSERT INTO `z_area` VALUES ('1833', '驻马店', '河南省 驻马店', '410000', '411700', '41', '17', '00', '2', '2017-05-11 01:49:49', '2018-08-16 14:21:36', 'zhumadian', 'z');
INSERT INTO `z_area` VALUES ('1834', '驻马店市', '河南省 驻马店 驻马店市', '411700', '411701', '41', '17', '01', '3', '2017-05-11 01:49:50', '2018-08-17 14:30:28', 'zhumadianshi', 'z');
INSERT INTO `z_area` VALUES ('1835', '驿城区', '河南省 驻马店 驿城区', '411700', '411702', '41', '17', '02', '3', '2017-05-11 01:49:50', '2018-08-17 14:30:28', 'yichengqu', 'y');
INSERT INTO `z_area` VALUES ('1836', '西平县', '河南省 驻马店 西平县', '411700', '411721', '41', '17', '21', '3', '2017-05-11 01:49:50', '2018-08-17 14:30:28', 'xipingxian', 'x');
INSERT INTO `z_area` VALUES ('1837', '上蔡县', '河南省 驻马店 上蔡县', '411700', '411722', '41', '17', '22', '3', '2017-05-11 01:49:50', '2018-08-17 14:30:28', 'shangcaixian', 's');
INSERT INTO `z_area` VALUES ('1838', '平舆县', '河南省 驻马店 平舆县', '411700', '411723', '41', '17', '23', '3', '2017-05-11 01:49:50', '2018-08-17 14:30:29', 'pingyuxian', 'p');
INSERT INTO `z_area` VALUES ('1839', '正阳县', '河南省 驻马店 正阳县', '411700', '411724', '41', '17', '24', '3', '2017-05-11 01:49:50', '2018-08-17 14:30:29', 'zhengyangxian', 'z');
INSERT INTO `z_area` VALUES ('1840', '确山县', '河南省 驻马店 确山县', '411700', '411725', '41', '17', '25', '3', '2017-05-11 01:49:50', '2018-08-17 14:30:29', 'queshanxian', 'q');
INSERT INTO `z_area` VALUES ('1841', '泌阳县', '河南省 驻马店 泌阳县', '411700', '411726', '41', '17', '26', '3', '2017-05-11 01:49:51', '2018-08-17 14:30:29', 'miyangxian', 'm');
INSERT INTO `z_area` VALUES ('1842', '汝南县', '河南省 驻马店 汝南县', '411700', '411727', '41', '17', '27', '3', '2017-05-11 01:49:51', '2018-08-17 14:30:29', 'runanxian', 'r');
INSERT INTO `z_area` VALUES ('1843', '遂平县', '河南省 驻马店 遂平县', '411700', '411728', '41', '17', '28', '3', '2017-05-11 01:49:51', '2018-08-17 14:30:29', 'suipingxian', 's');
INSERT INTO `z_area` VALUES ('1844', '新蔡县', '河南省 驻马店 新蔡县', '411700', '411729', '41', '17', '29', '3', '2017-05-11 01:49:51', '2018-08-17 14:30:29', 'xincaixian', 'x');
INSERT INTO `z_area` VALUES ('1845', '省直辖县级行政区划', '河南省 省直辖县级行政区划', '410000', '419000', '41', '90', '00', '2', '2017-05-11 01:49:51', '2018-08-16 14:21:37', 'shengzhixiaxianjixingzhengquhua', 's');
INSERT INTO `z_area` VALUES ('1846', '济源市', '河南省 省直辖县级行政区划 济源市', '419000', '419001', '41', '90', '01', '3', '2017-05-11 01:49:51', '2018-08-17 14:30:30', 'jiyuanshi', 'j');
INSERT INTO `z_area` VALUES ('1847', '湖北省', '湖北省', '', '420000', '42', '00', '00', '1', '2017-05-11 01:49:51', '2017-08-28 14:23:42', 'hubeisheng', 'h');
INSERT INTO `z_area` VALUES ('1848', '武汉', '湖北省 武汉', '420000', '420100', '42', '01', '00', '2', '2017-05-11 01:49:51', '2018-08-16 14:21:38', 'wuhan', 'w');
INSERT INTO `z_area` VALUES ('1849', '武汉市', '湖北省 武汉 武汉市', '420100', '420101', '42', '01', '01', '3', '2017-05-11 01:49:52', '2018-08-17 14:30:30', 'wuhanshi', 'w');
INSERT INTO `z_area` VALUES ('1850', '江岸区', '湖北省 武汉 江岸区', '420100', '420102', '42', '01', '02', '3', '2017-05-11 01:49:52', '2018-08-17 14:30:30', 'jianganqu', 'j');
INSERT INTO `z_area` VALUES ('1851', '江汉区', '湖北省 武汉 江汉区', '420100', '420103', '42', '01', '03', '3', '2017-05-11 01:49:52', '2018-08-17 14:30:30', 'jianghanqu', 'j');
INSERT INTO `z_area` VALUES ('1852', '硚口区', '湖北省 武汉 硚口区', '420100', '420104', '42', '01', '04', '3', '2017-05-11 01:49:52', '2018-08-17 14:30:30', 'qiaokouqu', 'q');
INSERT INTO `z_area` VALUES ('1853', '汉阳区', '湖北省 武汉 汉阳区', '420100', '420105', '42', '01', '05', '3', '2017-05-11 01:49:52', '2018-08-17 14:30:30', 'hanyangqu', 'h');
INSERT INTO `z_area` VALUES ('1854', '武昌区', '湖北省 武汉 武昌区', '420100', '420106', '42', '01', '06', '3', '2017-05-11 01:49:52', '2018-08-17 14:30:31', 'wuchangqu', 'w');
INSERT INTO `z_area` VALUES ('1855', '青山区', '湖北省 武汉 青山区', '420100', '420107', '42', '01', '07', '3', '2017-05-11 01:49:53', '2018-08-17 14:30:31', 'qingshanqu', 'q');
INSERT INTO `z_area` VALUES ('1856', '洪山区', '湖北省 武汉 洪山区', '420100', '420111', '42', '01', '11', '3', '2017-05-11 01:49:53', '2018-08-17 14:30:31', 'hongshanqu', 'h');
INSERT INTO `z_area` VALUES ('1857', '东西湖区', '湖北省 武汉 东西湖区', '420100', '420112', '42', '01', '12', '3', '2017-05-11 01:49:53', '2018-08-17 14:30:31', 'dongxihuqu', 'd');
INSERT INTO `z_area` VALUES ('1858', '汉南区', '湖北省 武汉 汉南区', '420100', '420113', '42', '01', '13', '3', '2017-05-11 01:49:53', '2018-08-17 14:30:31', 'hannanqu', 'h');
INSERT INTO `z_area` VALUES ('1859', '蔡甸区', '湖北省 武汉 蔡甸区', '420100', '420114', '42', '01', '14', '3', '2017-05-11 01:49:53', '2018-08-17 14:30:31', 'caidianqu', 'c');
INSERT INTO `z_area` VALUES ('1860', '江夏区', '湖北省 武汉 江夏区', '420100', '420115', '42', '01', '15', '3', '2017-05-11 01:49:53', '2018-08-17 14:30:31', 'jiangxiaqu', 'j');
INSERT INTO `z_area` VALUES ('1861', '黄陂区', '湖北省 武汉 黄陂区', '420100', '420116', '42', '01', '16', '3', '2017-05-11 01:49:53', '2018-08-17 14:30:32', 'huangbeiqu', 'h');
INSERT INTO `z_area` VALUES ('1862', '新洲区', '湖北省 武汉 新洲区', '420100', '420117', '42', '01', '17', '3', '2017-05-11 01:49:54', '2018-08-17 14:30:32', 'xinzhouqu', 'x');
INSERT INTO `z_area` VALUES ('1863', '黄石', '湖北省 黄石', '420000', '420200', '42', '02', '00', '2', '2017-05-11 01:49:54', '2018-08-16 14:21:39', 'huangshi', 'h');
INSERT INTO `z_area` VALUES ('1864', '黄石市', '湖北省 黄石 黄石市', '420200', '420201', '42', '02', '01', '3', '2017-05-11 01:49:54', '2018-08-17 14:30:32', 'huangshishi', 'h');
INSERT INTO `z_area` VALUES ('1865', '黄石港区', '湖北省 黄石 黄石港区', '420200', '420202', '42', '02', '02', '3', '2017-05-11 01:49:54', '2018-08-17 14:30:32', 'huangshigangqu', 'h');
INSERT INTO `z_area` VALUES ('1866', '西塞山区', '湖北省 黄石 西塞山区', '420200', '420203', '42', '02', '03', '3', '2017-05-11 01:49:54', '2018-08-17 14:30:32', 'xisaishanqu', 'x');
INSERT INTO `z_area` VALUES ('1867', '下陆区', '湖北省 黄石 下陆区', '420200', '420204', '42', '02', '04', '3', '2017-05-11 01:49:54', '2018-08-17 14:30:32', 'xialuqu', 'x');
INSERT INTO `z_area` VALUES ('1868', '铁山区', '湖北省 黄石 铁山区', '420200', '420205', '42', '02', '05', '3', '2017-05-11 01:49:55', '2018-08-17 14:30:32', 'tieshanqu', 't');
INSERT INTO `z_area` VALUES ('1869', '阳新县', '湖北省 黄石 阳新县', '420200', '420222', '42', '02', '22', '3', '2017-05-11 01:49:55', '2018-08-17 14:30:33', 'yangxinxian', 'y');
INSERT INTO `z_area` VALUES ('1870', '大冶市', '湖北省 黄石 大冶市', '420200', '420281', '42', '02', '81', '3', '2017-05-11 01:49:55', '2018-08-17 14:30:33', 'dayeshi', 'd');
INSERT INTO `z_area` VALUES ('1871', '十堰', '湖北省 十堰', '420000', '420300', '42', '03', '00', '2', '2017-05-11 01:49:55', '2018-08-16 14:21:40', 'shiyan', 's');
INSERT INTO `z_area` VALUES ('1872', '十堰市', '湖北省 十堰 十堰市', '420300', '420301', '42', '03', '01', '3', '2017-05-11 01:49:55', '2018-08-17 14:30:33', 'shiyanshi', 's');
INSERT INTO `z_area` VALUES ('1873', '茅箭区', '湖北省 十堰 茅箭区', '420300', '420302', '42', '03', '02', '3', '2017-05-11 01:49:55', '2018-08-17 14:30:33', 'maojianqu', 'm');
INSERT INTO `z_area` VALUES ('1874', '张湾区', '湖北省 十堰 张湾区', '420300', '420303', '42', '03', '03', '3', '2017-05-11 01:49:55', '2018-08-17 14:30:33', 'zhangwanqu', 'z');
INSERT INTO `z_area` VALUES ('1875', '郧阳区', '湖北省 十堰 郧阳区', '420300', '420304', '42', '03', '04', '3', '2017-05-11 01:49:56', '2018-08-17 14:30:33', 'yunyangqu', 'y');
INSERT INTO `z_area` VALUES ('1876', '郧西县', '湖北省 十堰 郧西县', '420300', '420322', '42', '03', '22', '3', '2017-05-11 01:49:56', '2018-08-17 14:30:34', 'yunxixian', 'y');
INSERT INTO `z_area` VALUES ('1877', '竹山县', '湖北省 十堰 竹山县', '420300', '420323', '42', '03', '23', '3', '2017-05-11 01:49:56', '2018-08-17 14:30:34', 'zhushanxian', 'z');
INSERT INTO `z_area` VALUES ('1878', '竹溪县', '湖北省 十堰 竹溪县', '420300', '420324', '42', '03', '24', '3', '2017-05-11 01:49:56', '2018-08-17 14:30:34', 'zhuxixian', 'z');
INSERT INTO `z_area` VALUES ('1879', '房县', '湖北省 十堰 房县', '420300', '420325', '42', '03', '25', '3', '2017-05-11 01:49:56', '2018-08-17 14:30:34', 'fangxian', 'f');
INSERT INTO `z_area` VALUES ('1880', '丹江口市', '湖北省 十堰 丹江口市', '420300', '420381', '42', '03', '81', '3', '2017-05-11 01:49:56', '2018-08-17 14:30:34', 'danjiangkoushi', 'd');
INSERT INTO `z_area` VALUES ('1881', '宜昌', '湖北省 宜昌', '420000', '420500', '42', '05', '00', '2', '2017-05-11 01:49:56', '2018-08-16 14:21:42', 'yichang', 'y');
INSERT INTO `z_area` VALUES ('1882', '宜昌市', '湖北省 宜昌 宜昌市', '420500', '420501', '42', '05', '01', '3', '2017-05-11 01:49:57', '2018-08-17 14:30:34', 'yichangshi', 'y');
INSERT INTO `z_area` VALUES ('1883', '西陵区', '湖北省 宜昌 西陵区', '420500', '420502', '42', '05', '02', '3', '2017-05-11 01:49:57', '2018-08-17 14:30:34', 'xilingqu', 'x');
INSERT INTO `z_area` VALUES ('1884', '伍家岗区', '湖北省 宜昌 伍家岗区', '420500', '420503', '42', '05', '03', '3', '2017-05-11 01:49:57', '2018-08-17 14:30:35', 'wujiagangqu', 'w');
INSERT INTO `z_area` VALUES ('1885', '点军区', '湖北省 宜昌 点军区', '420500', '420504', '42', '05', '04', '3', '2017-05-11 01:49:57', '2018-08-17 14:30:35', 'dianjunqu', 'd');
INSERT INTO `z_area` VALUES ('1886', '猇亭区', '湖北省 宜昌 猇亭区', '420500', '420505', '42', '05', '05', '3', '2017-05-11 01:49:57', '2018-08-17 14:30:35', 'xiaotingqu', 'x');
INSERT INTO `z_area` VALUES ('1887', '夷陵区', '湖北省 宜昌 夷陵区', '420500', '420506', '42', '05', '06', '3', '2017-05-11 01:49:57', '2018-08-17 14:30:35', 'yilingqu', 'y');
INSERT INTO `z_area` VALUES ('1888', '远安县', '湖北省 宜昌 远安县', '420500', '420525', '42', '05', '25', '3', '2017-05-11 01:49:58', '2018-08-17 14:30:35', 'yuananxian', 'y');
INSERT INTO `z_area` VALUES ('1889', '兴山县', '湖北省 宜昌 兴山县', '420500', '420526', '42', '05', '26', '3', '2017-05-11 01:49:58', '2018-08-17 14:30:35', 'xingshanxian', 'x');
INSERT INTO `z_area` VALUES ('1890', '秭归县', '湖北省 宜昌 秭归县', '420500', '420527', '42', '05', '27', '3', '2017-05-11 01:49:58', '2018-08-17 14:30:35', 'ziguixian', 'z');
INSERT INTO `z_area` VALUES ('1891', '长阳土家族自治县', '湖北省 宜昌 长阳土家族自治县', '420500', '420528', '42', '05', '28', '3', '2017-05-11 01:49:58', '2018-08-17 14:30:35', 'changyangtujiazuzizhixian', 'c');
INSERT INTO `z_area` VALUES ('1892', '五峰土家族自治县', '湖北省 宜昌 五峰土家族自治县', '420500', '420529', '42', '05', '29', '3', '2017-05-11 01:49:58', '2018-08-17 14:30:36', 'wufengtujiazuzizhixian', 'w');
INSERT INTO `z_area` VALUES ('1893', '宜都市', '湖北省 宜昌 宜都市', '420500', '420581', '42', '05', '81', '3', '2017-05-11 01:49:58', '2018-08-17 14:30:36', 'yidoushi', 'y');
INSERT INTO `z_area` VALUES ('1894', '当阳市', '湖北省 宜昌 当阳市', '420500', '420582', '42', '05', '82', '3', '2017-05-11 01:49:58', '2018-08-17 14:30:36', 'dangyangshi', 'd');
INSERT INTO `z_area` VALUES ('1895', '枝江市', '湖北省 宜昌 枝江市', '420500', '420583', '42', '05', '83', '3', '2017-05-11 01:49:59', '2018-08-17 14:30:36', 'zhijiangshi', 'z');
INSERT INTO `z_area` VALUES ('1896', '襄阳', '湖北省 襄阳', '420000', '420600', '42', '06', '00', '2', '2017-05-11 01:49:59', '2018-08-16 14:21:44', 'xiangyang', 'x');
INSERT INTO `z_area` VALUES ('1897', '襄阳市', '湖北省 襄阳 襄阳市', '420600', '420601', '42', '06', '01', '3', '2017-05-11 01:49:59', '2018-08-17 14:30:36', 'xiangyangshi', 'x');
INSERT INTO `z_area` VALUES ('1898', '襄城区', '湖北省 襄阳 襄城区', '420600', '420602', '42', '06', '02', '3', '2017-05-11 01:49:59', '2018-08-17 14:30:36', 'xiangchengqu', 'x');
INSERT INTO `z_area` VALUES ('1899', '樊城区', '湖北省 襄阳 樊城区', '420600', '420606', '42', '06', '06', '3', '2017-05-11 01:49:59', '2018-08-17 14:30:36', 'fanchengqu', 'f');
INSERT INTO `z_area` VALUES ('1900', '襄州区', '湖北省 襄阳 襄州区', '420600', '420607', '42', '06', '07', '3', '2017-05-11 01:49:59', '2018-08-17 14:30:37', 'xiangzhouqu', 'x');
INSERT INTO `z_area` VALUES ('1901', '南漳县', '湖北省 襄阳 南漳县', '420600', '420624', '42', '06', '24', '3', '2017-05-11 01:50:00', '2018-08-17 14:30:37', 'nanzhangxian', 'n');
INSERT INTO `z_area` VALUES ('1902', '谷城县', '湖北省 襄阳 谷城县', '420600', '420625', '42', '06', '25', '3', '2017-05-11 01:50:00', '2018-08-17 14:30:37', 'guchengxian', 'g');
INSERT INTO `z_area` VALUES ('1903', '保康县', '湖北省 襄阳 保康县', '420600', '420626', '42', '06', '26', '3', '2017-05-11 01:50:00', '2018-08-17 14:30:37', 'baokangxian', 'b');
INSERT INTO `z_area` VALUES ('1904', '老河口市', '湖北省 襄阳 老河口市', '420600', '420682', '42', '06', '82', '3', '2017-05-11 01:50:00', '2018-08-17 14:30:37', 'laohekoushi', 'l');
INSERT INTO `z_area` VALUES ('1905', '枣阳市', '湖北省 襄阳 枣阳市', '420600', '420683', '42', '06', '83', '3', '2017-05-11 01:50:00', '2018-08-17 14:30:37', 'zaoyangshi', 'z');
INSERT INTO `z_area` VALUES ('1906', '宜城市', '湖北省 襄阳 宜城市', '420600', '420684', '42', '06', '84', '3', '2017-05-11 01:50:00', '2018-08-17 14:30:37', 'yichengshi', 'y');
INSERT INTO `z_area` VALUES ('1907', '鄂州', '湖北省 鄂州', '420000', '420700', '42', '07', '00', '2', '2017-05-11 01:50:00', '2018-08-16 14:21:45', 'ezhou', 'e');
INSERT INTO `z_area` VALUES ('1908', '鄂州市', '湖北省 鄂州 鄂州市', '420700', '420701', '42', '07', '01', '3', '2017-05-11 01:50:01', '2018-08-17 14:30:38', 'ezhoushi', 'e');
INSERT INTO `z_area` VALUES ('1909', '梁子湖区', '湖北省 鄂州 梁子湖区', '420700', '420702', '42', '07', '02', '3', '2017-05-11 01:50:01', '2018-08-17 14:30:38', 'liangzihuqu', 'l');
INSERT INTO `z_area` VALUES ('1910', '华容区', '湖北省 鄂州 华容区', '420700', '420703', '42', '07', '03', '3', '2017-05-11 01:50:01', '2018-08-17 14:30:38', 'huarongqu', 'h');
INSERT INTO `z_area` VALUES ('1911', '鄂城区', '湖北省 鄂州 鄂城区', '420700', '420704', '42', '07', '04', '3', '2017-05-11 01:50:01', '2018-08-17 14:30:38', 'echengqu', 'e');
INSERT INTO `z_area` VALUES ('1912', '荆门', '湖北省 荆门', '420000', '420800', '42', '08', '00', '2', '2017-05-11 01:50:01', '2018-08-16 14:21:46', 'jingmen', 'j');
INSERT INTO `z_area` VALUES ('1913', '荆门市', '湖北省 荆门 荆门市', '420800', '420801', '42', '08', '01', '3', '2017-05-11 01:50:01', '2018-08-17 14:30:38', 'jingmenshi', 'j');
INSERT INTO `z_area` VALUES ('1914', '东宝区', '湖北省 荆门 东宝区', '420800', '420802', '42', '08', '02', '3', '2017-05-11 01:50:01', '2018-08-17 14:30:38', 'dongbaoqu', 'd');
INSERT INTO `z_area` VALUES ('1915', '掇刀区', '湖北省 荆门 掇刀区', '420800', '420804', '42', '08', '04', '3', '2017-05-11 01:50:02', '2018-08-17 14:30:38', 'duodaoqu', 'd');
INSERT INTO `z_area` VALUES ('1916', '京山县', '湖北省 荆门 京山县', '420800', '420821', '42', '08', '21', '3', '2017-05-11 01:50:02', '2018-08-17 14:30:38', 'jingshanxian', 'j');
INSERT INTO `z_area` VALUES ('1917', '沙洋县', '湖北省 荆门 沙洋县', '420800', '420822', '42', '08', '22', '3', '2017-05-11 01:50:02', '2018-08-17 14:30:39', 'shayangxian', 's');
INSERT INTO `z_area` VALUES ('1918', '钟祥市', '湖北省 荆门 钟祥市', '420800', '420881', '42', '08', '81', '3', '2017-05-11 01:50:02', '2018-08-17 14:30:39', 'zhongxiangshi', 'z');
INSERT INTO `z_area` VALUES ('1919', '孝感', '湖北省 孝感', '420000', '420900', '42', '09', '00', '2', '2017-05-11 01:50:02', '2018-08-16 14:21:46', 'xiaogan', 'x');
INSERT INTO `z_area` VALUES ('1920', '孝感市', '湖北省 孝感 孝感市', '420900', '420901', '42', '09', '01', '3', '2017-05-11 01:50:02', '2018-08-17 14:30:39', 'xiaoganshi', 'x');
INSERT INTO `z_area` VALUES ('1921', '孝南区', '湖北省 孝感 孝南区', '420900', '420902', '42', '09', '02', '3', '2017-05-11 01:50:03', '2018-08-17 14:30:39', 'xiaonanqu', 'x');
INSERT INTO `z_area` VALUES ('1922', '孝昌县', '湖北省 孝感 孝昌县', '420900', '420921', '42', '09', '21', '3', '2017-05-11 01:50:03', '2018-08-17 14:30:39', 'xiaochangxian', 'x');
INSERT INTO `z_area` VALUES ('1923', '大悟县', '湖北省 孝感 大悟县', '420900', '420922', '42', '09', '22', '3', '2017-05-11 01:50:03', '2018-08-17 14:30:39', 'dawuxian', 'd');
INSERT INTO `z_area` VALUES ('1924', '云梦县', '湖北省 孝感 云梦县', '420900', '420923', '42', '09', '23', '3', '2017-05-11 01:50:03', '2018-08-17 14:30:39', 'yunmengxian', 'y');
INSERT INTO `z_area` VALUES ('1925', '应城市', '湖北省 孝感 应城市', '420900', '420981', '42', '09', '81', '3', '2017-05-11 01:50:03', '2018-08-17 14:30:40', 'yingchengshi', 'y');
INSERT INTO `z_area` VALUES ('1926', '安陆市', '湖北省 孝感 安陆市', '420900', '420982', '42', '09', '82', '3', '2017-05-11 01:50:03', '2018-08-17 14:30:40', 'anlushi', 'a');
INSERT INTO `z_area` VALUES ('1927', '汉川市', '湖北省 孝感 汉川市', '420900', '420984', '42', '09', '84', '3', '2017-05-11 01:50:04', '2018-08-17 14:30:40', 'hanchuanshi', 'h');
INSERT INTO `z_area` VALUES ('1928', '荆州', '湖北省 荆州', '420000', '421000', '42', '10', '00', '2', '2017-05-11 01:50:04', '2018-08-16 14:21:48', 'jingzhou', 'j');
INSERT INTO `z_area` VALUES ('1929', '荆州市', '湖北省 荆州 荆州市', '421000', '421001', '42', '10', '01', '3', '2017-05-11 01:50:04', '2018-08-17 14:30:40', 'jingzhoushi', 'j');
INSERT INTO `z_area` VALUES ('1930', '沙市区', '湖北省 荆州 沙市区', '421000', '421002', '42', '10', '02', '3', '2017-05-11 01:50:04', '2018-08-17 14:30:40', 'shashiqu', 's');
INSERT INTO `z_area` VALUES ('1931', '荆州区', '湖北省 荆州 荆州区', '421000', '421003', '42', '10', '03', '3', '2017-05-11 01:50:04', '2018-08-17 14:30:40', 'jingzhouqu', 'j');
INSERT INTO `z_area` VALUES ('1932', '公安县', '湖北省 荆州 公安县', '421000', '421022', '42', '10', '22', '3', '2017-05-11 01:50:04', '2018-08-17 14:30:41', 'gonganxian', 'g');
INSERT INTO `z_area` VALUES ('1933', '监利县', '湖北省 荆州 监利县', '421000', '421023', '42', '10', '23', '3', '2017-05-11 01:50:04', '2018-08-17 14:30:41', 'jianlixian', 'j');
INSERT INTO `z_area` VALUES ('1934', '江陵县', '湖北省 荆州 江陵县', '421000', '421024', '42', '10', '24', '3', '2017-05-11 01:50:05', '2018-08-17 14:30:41', 'jianglingxian', 'j');
INSERT INTO `z_area` VALUES ('1935', '石首市', '湖北省 荆州 石首市', '421000', '421081', '42', '10', '81', '3', '2017-05-11 01:50:05', '2018-08-17 14:30:41', 'shishoushi', 's');
INSERT INTO `z_area` VALUES ('1936', '洪湖市', '湖北省 荆州 洪湖市', '421000', '421083', '42', '10', '83', '3', '2017-05-11 01:50:05', '2018-08-17 14:30:41', 'honghushi', 'h');
INSERT INTO `z_area` VALUES ('1937', '松滋市', '湖北省 荆州 松滋市', '421000', '421087', '42', '10', '87', '3', '2017-05-11 01:50:05', '2018-08-17 14:30:41', 'songzishi', 's');
INSERT INTO `z_area` VALUES ('1938', '黄冈', '湖北省 黄冈', '420000', '421100', '42', '11', '00', '2', '2017-05-11 01:50:05', '2018-08-16 14:21:49', 'huanggang', 'h');
INSERT INTO `z_area` VALUES ('1939', '黄冈市', '湖北省 黄冈 黄冈市', '421100', '421101', '42', '11', '01', '3', '2017-05-11 01:50:05', '2018-08-17 14:30:41', 'huanggangshi', 'h');
INSERT INTO `z_area` VALUES ('1940', '黄州区', '湖北省 黄冈 黄州区', '421100', '421102', '42', '11', '02', '3', '2017-05-11 01:50:05', '2018-08-17 14:30:42', 'huangzhouqu', 'h');
INSERT INTO `z_area` VALUES ('1941', '团风县', '湖北省 黄冈 团风县', '421100', '421121', '42', '11', '21', '3', '2017-05-11 01:50:06', '2018-08-17 14:30:42', 'tuanfengxian', 't');
INSERT INTO `z_area` VALUES ('1942', '红安县', '湖北省 黄冈 红安县', '421100', '421122', '42', '11', '22', '3', '2017-05-11 01:50:06', '2018-08-17 14:30:42', 'honganxian', 'h');
INSERT INTO `z_area` VALUES ('1943', '罗田县', '湖北省 黄冈 罗田县', '421100', '421123', '42', '11', '23', '3', '2017-05-11 01:50:06', '2018-08-17 14:30:42', 'luotianxian', 'l');
INSERT INTO `z_area` VALUES ('1944', '英山县', '湖北省 黄冈 英山县', '421100', '421124', '42', '11', '24', '3', '2017-05-11 01:50:06', '2018-08-17 14:30:42', 'yingshanxian', 'y');
INSERT INTO `z_area` VALUES ('1945', '浠水县', '湖北省 黄冈 浠水县', '421100', '421125', '42', '11', '25', '3', '2017-05-11 01:50:06', '2018-08-17 14:30:42', 'xishuixian', 'x');
INSERT INTO `z_area` VALUES ('1946', '蕲春县', '湖北省 黄冈 蕲春县', '421100', '421126', '42', '11', '26', '3', '2017-05-11 01:50:06', '2018-08-17 14:30:42', 'qichunxian', 'q');
INSERT INTO `z_area` VALUES ('1947', '黄梅县', '湖北省 黄冈 黄梅县', '421100', '421127', '42', '11', '27', '3', '2017-05-11 01:50:07', '2018-08-17 14:30:42', 'huangmeixian', 'h');
INSERT INTO `z_area` VALUES ('1948', '麻城市', '湖北省 黄冈 麻城市', '421100', '421181', '42', '11', '81', '3', '2017-05-11 01:50:07', '2018-08-17 14:30:43', 'machengshi', 'm');
INSERT INTO `z_area` VALUES ('1949', '武穴市', '湖北省 黄冈 武穴市', '421100', '421182', '42', '11', '82', '3', '2017-05-11 01:50:07', '2018-08-17 14:30:43', 'wuxueshi', 'w');
INSERT INTO `z_area` VALUES ('1950', '咸宁', '湖北省 咸宁', '420000', '421200', '42', '12', '00', '2', '2017-05-11 01:50:07', '2018-08-16 14:21:50', 'xianning', 'x');
INSERT INTO `z_area` VALUES ('1951', '咸宁市', '湖北省 咸宁 咸宁市', '421200', '421201', '42', '12', '01', '3', '2017-05-11 01:50:07', '2018-08-17 14:30:43', 'xianningshi', 'x');
INSERT INTO `z_area` VALUES ('1952', '咸安区', '湖北省 咸宁 咸安区', '421200', '421202', '42', '12', '02', '3', '2017-05-11 01:50:07', '2018-08-17 14:30:43', 'xiananqu', 'x');
INSERT INTO `z_area` VALUES ('1953', '嘉鱼县', '湖北省 咸宁 嘉鱼县', '421200', '421221', '42', '12', '21', '3', '2017-05-11 01:50:08', '2018-08-17 14:30:43', 'jiayuxian', 'j');
INSERT INTO `z_area` VALUES ('1954', '通城县', '湖北省 咸宁 通城县', '421200', '421222', '42', '12', '22', '3', '2017-05-11 01:50:08', '2018-08-17 14:30:43', 'tongchengxian', 't');
INSERT INTO `z_area` VALUES ('1955', '崇阳县', '湖北省 咸宁 崇阳县', '421200', '421223', '42', '12', '23', '3', '2017-05-11 01:50:08', '2018-08-17 14:30:43', 'chongyangxian', 'c');
INSERT INTO `z_area` VALUES ('1956', '通山县', '湖北省 咸宁 通山县', '421200', '421224', '42', '12', '24', '3', '2017-05-11 01:50:08', '2018-08-17 14:30:44', 'tongshanxian', 't');
INSERT INTO `z_area` VALUES ('1957', '赤壁市', '湖北省 咸宁 赤壁市', '421200', '421281', '42', '12', '81', '3', '2017-05-11 01:50:08', '2018-08-17 14:30:44', 'chibishi', 'c');
INSERT INTO `z_area` VALUES ('1958', '随州', '湖北省 随州', '420000', '421300', '42', '13', '00', '2', '2017-05-11 01:50:08', '2018-08-16 14:21:51', 'suizhou', 's');
INSERT INTO `z_area` VALUES ('1959', '随州市', '湖北省 随州 随州市', '421300', '421301', '42', '13', '01', '3', '2017-05-11 01:50:09', '2018-08-17 14:30:44', 'suizhoushi', 's');
INSERT INTO `z_area` VALUES ('1960', '曾都区', '湖北省 随州 曾都区', '421300', '421303', '42', '13', '03', '3', '2017-05-11 01:50:09', '2018-08-17 14:30:44', 'zengdouqu', 'z');
INSERT INTO `z_area` VALUES ('1961', '随县', '湖北省 随州 随县', '421300', '421321', '42', '13', '21', '3', '2017-05-11 01:50:09', '2018-08-17 14:30:44', 'suixian', 's');
INSERT INTO `z_area` VALUES ('1962', '广水市', '湖北省 随州 广水市', '421300', '421381', '42', '13', '81', '3', '2017-05-11 01:50:09', '2018-08-17 14:30:44', 'guangshuishi', 'g');
INSERT INTO `z_area` VALUES ('1963', '恩施土家族苗族自治州', '湖北省 恩施土家族苗族自治州', '420000', '422800', '42', '28', '00', '2', '2017-05-11 01:50:09', '2018-08-16 14:21:52', 'enshitujiazumiaozuzizhizhou', 'e');
INSERT INTO `z_area` VALUES ('1964', '恩施市', '湖北省 恩施土家族苗族自治州 恩施市', '422800', '422801', '42', '28', '01', '3', '2017-05-11 01:50:09', '2018-08-17 14:30:44', 'enshishi', 'e');
INSERT INTO `z_area` VALUES ('1965', '利川市', '湖北省 恩施土家族苗族自治州 利川市', '422800', '422802', '42', '28', '02', '3', '2017-05-11 01:50:09', '2018-08-17 14:30:45', 'lichuanshi', 'l');
INSERT INTO `z_area` VALUES ('1966', '建始县', '湖北省 恩施土家族苗族自治州 建始县', '422800', '422822', '42', '28', '22', '3', '2017-05-11 01:50:10', '2018-08-17 14:30:45', 'jianshixian', 'j');
INSERT INTO `z_area` VALUES ('1967', '巴东县', '湖北省 恩施土家族苗族自治州 巴东县', '422800', '422823', '42', '28', '23', '3', '2017-05-11 01:50:10', '2018-08-17 14:30:45', 'badongxian', 'b');
INSERT INTO `z_area` VALUES ('1968', '宣恩县', '湖北省 恩施土家族苗族自治州 宣恩县', '422800', '422825', '42', '28', '25', '3', '2017-05-11 01:50:10', '2018-08-17 14:30:45', 'xuanenxian', 'x');
INSERT INTO `z_area` VALUES ('1969', '咸丰县', '湖北省 恩施土家族苗族自治州 咸丰县', '422800', '422826', '42', '28', '26', '3', '2017-05-11 01:50:10', '2018-08-17 14:30:45', 'xianfengxian', 'x');
INSERT INTO `z_area` VALUES ('1970', '来凤县', '湖北省 恩施土家族苗族自治州 来凤县', '422800', '422827', '42', '28', '27', '3', '2017-05-11 01:50:10', '2018-08-17 14:30:45', 'laifengxian', 'l');
INSERT INTO `z_area` VALUES ('1971', '鹤峰县', '湖北省 恩施土家族苗族自治州 鹤峰县', '422800', '422828', '42', '28', '28', '3', '2017-05-11 01:50:10', '2018-08-17 14:30:45', 'hefengxian', 'h');
INSERT INTO `z_area` VALUES ('1972', '省直辖县级行政区划', '湖北省 省直辖县级行政区划', '420000', '429000', '42', '90', '00', '2', '2017-05-11 01:50:11', '2018-08-16 14:21:53', 'shengzhixiaxianjixingzhengquhua', 's');
INSERT INTO `z_area` VALUES ('1973', '仙桃市', '湖北省 省直辖县级行政区划 仙桃市', '429000', '429004', '42', '90', '04', '3', '2017-05-11 01:50:11', '2018-08-17 14:30:46', 'xiantaoshi', 'x');
INSERT INTO `z_area` VALUES ('1974', '潜江市', '湖北省 省直辖县级行政区划 潜江市', '429000', '429005', '42', '90', '05', '3', '2017-05-11 01:50:11', '2018-08-17 14:30:46', 'qianjiangshi', 'q');
INSERT INTO `z_area` VALUES ('1975', '天门市', '湖北省 省直辖县级行政区划 天门市', '429000', '429006', '42', '90', '06', '3', '2017-05-11 01:50:11', '2018-08-17 14:30:46', 'tianmenshi', 't');
INSERT INTO `z_area` VALUES ('1976', '神农架林区', '湖北省 省直辖县级行政区划 神农架林区', '429000', '429021', '42', '90', '21', '3', '2017-05-11 01:50:11', '2018-08-17 14:30:46', 'shennongjialinqu', 's');
INSERT INTO `z_area` VALUES ('1977', '湖南省', '湖南省', '', '430000', '43', '00', '00', '1', '2017-05-11 01:50:11', '2017-08-28 14:23:51', 'hunansheng', 'h');
INSERT INTO `z_area` VALUES ('1978', '长沙', '湖南省 长沙', '430000', '430100', '43', '01', '00', '2', '2017-05-11 01:50:11', '2018-08-16 14:21:54', 'changsha', 'c');
INSERT INTO `z_area` VALUES ('1979', '长沙市', '湖南省 长沙 长沙市', '430100', '430101', '43', '01', '01', '3', '2017-05-11 01:50:11', '2018-08-17 14:30:46', 'changshashi', 'c');
INSERT INTO `z_area` VALUES ('1980', '芙蓉区', '湖南省 长沙 芙蓉区', '430100', '430102', '43', '01', '02', '3', '2017-05-11 01:50:12', '2018-08-17 14:30:46', 'furongqu', 'f');
INSERT INTO `z_area` VALUES ('1981', '天心区', '湖南省 长沙 天心区', '430100', '430103', '43', '01', '03', '3', '2017-05-11 01:50:12', '2018-08-17 14:30:46', 'tianxinqu', 't');
INSERT INTO `z_area` VALUES ('1982', '岳麓区', '湖南省 长沙 岳麓区', '430100', '430104', '43', '01', '04', '3', '2017-05-11 01:50:12', '2018-08-17 14:30:47', 'yueluqu', 'y');
INSERT INTO `z_area` VALUES ('1983', '开福区', '湖南省 长沙 开福区', '430100', '430105', '43', '01', '05', '3', '2017-05-11 01:50:12', '2018-08-17 14:30:47', 'kaifuqu', 'k');
INSERT INTO `z_area` VALUES ('1984', '雨花区', '湖南省 长沙 雨花区', '430100', '430111', '43', '01', '11', '3', '2017-05-11 01:50:12', '2018-08-17 14:30:47', 'yuhuaqu', 'y');
INSERT INTO `z_area` VALUES ('1985', '望城区', '湖南省 长沙 望城区', '430100', '430112', '43', '01', '12', '3', '2017-05-11 01:50:12', '2018-08-17 14:30:47', 'wangchengqu', 'w');
INSERT INTO `z_area` VALUES ('1986', '长沙县', '湖南省 长沙 长沙县', '430100', '430121', '43', '01', '21', '3', '2017-05-11 01:50:13', '2018-08-17 14:30:47', 'changshaxian', 'c');
INSERT INTO `z_area` VALUES ('1987', '宁乡县', '湖南省 长沙 宁乡县', '430100', '430124', '43', '01', '24', '3', '2017-05-11 01:50:13', '2018-08-17 14:30:47', 'ningxiangxian', 'n');
INSERT INTO `z_area` VALUES ('1988', '浏阳市', '湖南省 长沙 浏阳市', '430100', '430181', '43', '01', '81', '3', '2017-05-11 01:50:13', '2018-08-17 14:30:47', 'liuyangshi', 'l');
INSERT INTO `z_area` VALUES ('1989', '株洲', '湖南省 株洲', '430000', '430200', '43', '02', '00', '2', '2017-05-11 01:50:13', '2018-08-16 14:21:56', 'zhuzhou', 'z');
INSERT INTO `z_area` VALUES ('1990', '株洲市', '湖南省 株洲 株洲市', '430200', '430201', '43', '02', '01', '3', '2017-05-11 01:50:13', '2018-08-17 14:30:47', 'zhuzhoushi', 'z');
INSERT INTO `z_area` VALUES ('1991', '荷塘区', '湖南省 株洲 荷塘区', '430200', '430202', '43', '02', '02', '3', '2017-05-11 01:50:13', '2018-08-17 14:30:48', 'hetangqu', 'h');
INSERT INTO `z_area` VALUES ('1992', '芦淞区', '湖南省 株洲 芦淞区', '430200', '430203', '43', '02', '03', '3', '2017-05-11 01:50:13', '2018-08-17 14:30:48', 'lusongqu', 'l');
INSERT INTO `z_area` VALUES ('1993', '石峰区', '湖南省 株洲 石峰区', '430200', '430204', '43', '02', '04', '3', '2017-05-11 01:50:14', '2018-08-17 14:30:48', 'shifengqu', 's');
INSERT INTO `z_area` VALUES ('1994', '天元区', '湖南省 株洲 天元区', '430200', '430211', '43', '02', '11', '3', '2017-05-11 01:50:14', '2018-08-17 14:30:48', 'tianyuanqu', 't');
INSERT INTO `z_area` VALUES ('1995', '株洲县', '湖南省 株洲 株洲县', '430200', '430221', '43', '02', '21', '3', '2017-05-11 01:50:14', '2018-08-17 14:30:48', 'zhuzhouxian', 'z');
INSERT INTO `z_area` VALUES ('1996', '攸县', '湖南省 株洲 攸县', '430200', '430223', '43', '02', '23', '3', '2017-05-11 01:50:14', '2018-08-17 14:30:48', 'youxian', 'y');
INSERT INTO `z_area` VALUES ('1997', '茶陵县', '湖南省 株洲 茶陵县', '430200', '430224', '43', '02', '24', '3', '2017-05-11 01:50:14', '2018-08-17 14:30:48', 'chalingxian', 'c');
INSERT INTO `z_area` VALUES ('1998', '炎陵县', '湖南省 株洲 炎陵县', '430200', '430225', '43', '02', '25', '3', '2017-05-11 01:50:14', '2018-08-17 14:30:49', 'yanlingxian', 'y');
INSERT INTO `z_area` VALUES ('1999', '醴陵市', '湖南省 株洲 醴陵市', '430200', '430281', '43', '02', '81', '3', '2017-05-11 01:50:15', '2018-08-17 14:30:49', 'lilingshi', 'l');
INSERT INTO `z_area` VALUES ('2000', '湘潭', '湖南省 湘潭', '430000', '430300', '43', '03', '00', '2', '2017-05-11 01:50:15', '2018-08-16 14:21:57', 'xiangtan', 'x');
INSERT INTO `z_area` VALUES ('2001', '湘潭市', '湖南省 湘潭 湘潭市', '430300', '430301', '43', '03', '01', '3', '2017-05-11 01:50:15', '2018-08-17 14:30:49', 'xiangtanshi', 'x');
INSERT INTO `z_area` VALUES ('2002', '雨湖区', '湖南省 湘潭 雨湖区', '430300', '430302', '43', '03', '02', '3', '2017-05-11 01:50:15', '2018-08-17 14:30:49', 'yuhuqu', 'y');
INSERT INTO `z_area` VALUES ('2003', '岳塘区', '湖南省 湘潭 岳塘区', '430300', '430304', '43', '03', '04', '3', '2017-05-11 01:50:15', '2018-08-17 14:30:49', 'yuetangqu', 'y');
INSERT INTO `z_area` VALUES ('2004', '湘潭县', '湖南省 湘潭 湘潭县', '430300', '430321', '43', '03', '21', '3', '2017-05-11 01:50:15', '2018-08-17 14:30:49', 'xiangtanxian', 'x');
INSERT INTO `z_area` VALUES ('2005', '湘乡市', '湖南省 湘潭 湘乡市', '430300', '430381', '43', '03', '81', '3', '2017-05-11 01:50:15', '2018-08-17 14:30:50', 'xiangxiangshi', 'x');
INSERT INTO `z_area` VALUES ('2006', '韶山市', '湖南省 湘潭 韶山市', '430300', '430382', '43', '03', '82', '3', '2017-05-11 01:50:16', '2018-08-17 14:30:50', 'shaoshanshi', 's');
INSERT INTO `z_area` VALUES ('2007', '衡阳', '湖南省 衡阳', '430000', '430400', '43', '04', '00', '2', '2017-05-11 01:50:16', '2018-08-16 14:21:58', 'hengyang', 'h');
INSERT INTO `z_area` VALUES ('2008', '衡阳市', '湖南省 衡阳 衡阳市', '430400', '430401', '43', '04', '01', '3', '2017-05-11 01:50:16', '2018-08-17 14:30:50', 'hengyangshi', 'h');
INSERT INTO `z_area` VALUES ('2009', '珠晖区', '湖南省 衡阳 珠晖区', '430400', '430405', '43', '04', '05', '3', '2017-05-11 01:50:16', '2018-08-17 14:30:50', 'zhuhuiqu', 'z');
INSERT INTO `z_area` VALUES ('2010', '雁峰区', '湖南省 衡阳 雁峰区', '430400', '430406', '43', '04', '06', '3', '2017-05-11 01:50:16', '2018-08-17 14:30:50', 'yanfengqu', 'y');
INSERT INTO `z_area` VALUES ('2011', '石鼓区', '湖南省 衡阳 石鼓区', '430400', '430407', '43', '04', '07', '3', '2017-05-11 01:50:16', '2018-08-17 14:30:50', 'shiguqu', 's');
INSERT INTO `z_area` VALUES ('2012', '蒸湘区', '湖南省 衡阳 蒸湘区', '430400', '430408', '43', '04', '08', '3', '2017-05-11 01:50:16', '2018-08-17 14:30:50', 'zhengxiangqu', 'z');
INSERT INTO `z_area` VALUES ('2013', '南岳区', '湖南省 衡阳 南岳区', '430400', '430412', '43', '04', '12', '3', '2017-05-11 01:50:17', '2018-08-17 14:30:50', 'nanyuequ', 'n');
INSERT INTO `z_area` VALUES ('2014', '衡阳县', '湖南省 衡阳 衡阳县', '430400', '430421', '43', '04', '21', '3', '2017-05-11 01:50:17', '2018-08-17 14:30:51', 'hengyangxian', 'h');
INSERT INTO `z_area` VALUES ('2015', '衡南县', '湖南省 衡阳 衡南县', '430400', '430422', '43', '04', '22', '3', '2017-05-11 01:50:17', '2018-08-17 14:30:51', 'hengnanxian', 'h');
INSERT INTO `z_area` VALUES ('2016', '衡山县', '湖南省 衡阳 衡山县', '430400', '430423', '43', '04', '23', '3', '2017-05-11 01:50:17', '2018-08-17 14:30:51', 'hengshanxian', 'h');
INSERT INTO `z_area` VALUES ('2017', '衡东县', '湖南省 衡阳 衡东县', '430400', '430424', '43', '04', '24', '3', '2017-05-11 01:50:17', '2018-08-17 14:30:51', 'hengdongxian', 'h');
INSERT INTO `z_area` VALUES ('2018', '祁东县', '湖南省 衡阳 祁东县', '430400', '430426', '43', '04', '26', '3', '2017-05-11 01:50:17', '2018-08-17 14:30:51', 'qidongxian', 'q');
INSERT INTO `z_area` VALUES ('2019', '耒阳市', '湖南省 衡阳 耒阳市', '430400', '430481', '43', '04', '81', '3', '2017-05-11 01:50:18', '2018-08-17 14:30:51', 'leiyangshi', 'l');
INSERT INTO `z_area` VALUES ('2020', '常宁市', '湖南省 衡阳 常宁市', '430400', '430482', '43', '04', '82', '3', '2017-05-11 01:50:18', '2018-08-17 14:30:52', 'changningshi', 'c');
INSERT INTO `z_area` VALUES ('2021', '邵阳', '湖南省 邵阳', '430000', '430500', '43', '05', '00', '2', '2017-05-11 01:50:18', '2018-08-16 14:22:00', 'shaoyang', 's');
INSERT INTO `z_area` VALUES ('2022', '邵阳市', '湖南省 邵阳 邵阳市', '430500', '430501', '43', '05', '01', '3', '2017-05-11 01:50:18', '2018-08-17 14:30:52', 'shaoyangshi', 's');
INSERT INTO `z_area` VALUES ('2023', '双清区', '湖南省 邵阳 双清区', '430500', '430502', '43', '05', '02', '3', '2017-05-11 01:50:18', '2018-08-17 14:30:52', 'shuangqingqu', 's');
INSERT INTO `z_area` VALUES ('2024', '大祥区', '湖南省 邵阳 大祥区', '430500', '430503', '43', '05', '03', '3', '2017-05-11 01:50:18', '2018-08-17 14:30:52', 'daxiangqu', 'd');
INSERT INTO `z_area` VALUES ('2025', '北塔区', '湖南省 邵阳 北塔区', '430500', '430511', '43', '05', '11', '3', '2017-05-11 01:50:18', '2018-08-17 14:30:52', 'beitaqu', 'b');
INSERT INTO `z_area` VALUES ('2026', '邵东县', '湖南省 邵阳 邵东县', '430500', '430521', '43', '05', '21', '3', '2017-05-11 01:50:19', '2018-08-17 14:30:52', 'shaodongxian', 's');
INSERT INTO `z_area` VALUES ('2027', '新邵县', '湖南省 邵阳 新邵县', '430500', '430522', '43', '05', '22', '3', '2017-05-11 01:50:19', '2018-08-17 14:30:52', 'xinshaoxian', 'x');
INSERT INTO `z_area` VALUES ('2028', '邵阳县', '湖南省 邵阳 邵阳县', '430500', '430523', '43', '05', '23', '3', '2017-05-11 01:50:19', '2018-08-17 14:30:53', 'shaoyangxian', 's');
INSERT INTO `z_area` VALUES ('2029', '隆回县', '湖南省 邵阳 隆回县', '430500', '430524', '43', '05', '24', '3', '2017-05-11 01:50:19', '2018-08-17 14:30:53', 'longhuixian', 'l');
INSERT INTO `z_area` VALUES ('2030', '洞口县', '湖南省 邵阳 洞口县', '430500', '430525', '43', '05', '25', '3', '2017-05-11 01:50:19', '2018-08-17 14:30:53', 'dongkouxian', 'd');
INSERT INTO `z_area` VALUES ('2031', '绥宁县', '湖南省 邵阳 绥宁县', '430500', '430527', '43', '05', '27', '3', '2017-05-11 01:50:19', '2018-08-17 14:30:53', 'suiningxian', 's');
INSERT INTO `z_area` VALUES ('2032', '新宁县', '湖南省 邵阳 新宁县', '430500', '430528', '43', '05', '28', '3', '2017-05-11 01:50:20', '2018-08-17 14:30:53', 'xinningxian', 'x');
INSERT INTO `z_area` VALUES ('2033', '城步苗族自治县', '湖南省 邵阳 城步苗族自治县', '430500', '430529', '43', '05', '29', '3', '2017-05-11 01:50:20', '2018-08-17 14:30:53', 'chengbumiaozuzizhixian', 'c');
INSERT INTO `z_area` VALUES ('2034', '武冈市', '湖南省 邵阳 武冈市', '430500', '430581', '43', '05', '81', '3', '2017-05-11 01:50:20', '2018-08-17 14:30:53', 'wugangshi', 'w');
INSERT INTO `z_area` VALUES ('2035', '岳阳', '湖南省 岳阳', '430000', '430600', '43', '06', '00', '2', '2017-05-11 01:50:20', '2018-08-16 14:22:01', 'yueyang', 'y');
INSERT INTO `z_area` VALUES ('2036', '岳阳市', '湖南省 岳阳 岳阳市', '430600', '430601', '43', '06', '01', '3', '2017-05-11 01:50:20', '2018-08-17 14:30:54', 'yueyangshi', 'y');
INSERT INTO `z_area` VALUES ('2037', '岳阳楼区', '湖南省 岳阳 岳阳楼区', '430600', '430602', '43', '06', '02', '3', '2017-05-11 01:50:20', '2018-08-17 14:30:54', 'yueyanglouqu', 'y');
INSERT INTO `z_area` VALUES ('2038', '云溪区', '湖南省 岳阳 云溪区', '430600', '430603', '43', '06', '03', '3', '2017-05-11 01:50:20', '2018-08-17 14:30:54', 'yunxiqu', 'y');
INSERT INTO `z_area` VALUES ('2039', '君山区', '湖南省 岳阳 君山区', '430600', '430611', '43', '06', '11', '3', '2017-05-11 01:50:21', '2018-08-17 14:30:54', 'junshanqu', 'j');
INSERT INTO `z_area` VALUES ('2040', '岳阳县', '湖南省 岳阳 岳阳县', '430600', '430621', '43', '06', '21', '3', '2017-05-11 01:50:21', '2018-08-17 14:30:54', 'yueyangxian', 'y');
INSERT INTO `z_area` VALUES ('2041', '华容县', '湖南省 岳阳 华容县', '430600', '430623', '43', '06', '23', '3', '2017-05-11 01:50:21', '2018-08-17 14:30:54', 'huarongxian', 'h');
INSERT INTO `z_area` VALUES ('2042', '湘阴县', '湖南省 岳阳 湘阴县', '430600', '430624', '43', '06', '24', '3', '2017-05-11 01:50:21', '2018-08-17 14:30:54', 'xiangyinxian', 'x');
INSERT INTO `z_area` VALUES ('2043', '平江县', '湖南省 岳阳 平江县', '430600', '430626', '43', '06', '26', '3', '2017-05-11 01:50:21', '2018-08-17 14:30:55', 'pingjiangxian', 'p');
INSERT INTO `z_area` VALUES ('2044', '汨罗市', '湖南省 岳阳 汨罗市', '430600', '430681', '43', '06', '81', '3', '2017-05-11 01:50:21', '2018-08-17 14:30:55', 'miluoshi', 'm');
INSERT INTO `z_area` VALUES ('2045', '临湘市', '湖南省 岳阳 临湘市', '430600', '430682', '43', '06', '82', '3', '2017-05-11 01:50:22', '2018-08-17 14:30:55', 'linxiangshi', 'l');
INSERT INTO `z_area` VALUES ('2046', '常德', '湖南省 常德', '430000', '430700', '43', '07', '00', '2', '2017-05-11 01:50:22', '2018-08-16 14:22:03', 'changde', 'c');
INSERT INTO `z_area` VALUES ('2047', '常德市', '湖南省 常德 常德市', '430700', '430701', '43', '07', '01', '3', '2017-05-11 01:50:22', '2018-08-17 14:30:55', 'changdeshi', 'c');
INSERT INTO `z_area` VALUES ('2048', '武陵区', '湖南省 常德 武陵区', '430700', '430702', '43', '07', '02', '3', '2017-05-11 01:50:22', '2018-08-17 14:30:55', 'wulingqu', 'w');
INSERT INTO `z_area` VALUES ('2049', '鼎城区', '湖南省 常德 鼎城区', '430700', '430703', '43', '07', '03', '3', '2017-05-11 01:50:22', '2018-08-17 14:30:55', 'dingchengqu', 'd');
INSERT INTO `z_area` VALUES ('2050', '安乡县', '湖南省 常德 安乡县', '430700', '430721', '43', '07', '21', '3', '2017-05-11 01:50:22', '2018-08-17 14:30:55', 'anxiangxian', 'a');
INSERT INTO `z_area` VALUES ('2051', '汉寿县', '湖南省 常德 汉寿县', '430700', '430722', '43', '07', '22', '3', '2017-05-11 01:50:23', '2018-08-17 14:30:55', 'hanshouxian', 'h');
INSERT INTO `z_area` VALUES ('2052', '澧县', '湖南省 常德 澧县', '430700', '430723', '43', '07', '23', '3', '2017-05-11 01:50:23', '2018-08-17 14:30:56', 'lixian', 'l');
INSERT INTO `z_area` VALUES ('2053', '临澧县', '湖南省 常德 临澧县', '430700', '430724', '43', '07', '24', '3', '2017-05-11 01:50:23', '2018-08-17 14:30:56', 'linlixian', 'l');
INSERT INTO `z_area` VALUES ('2054', '桃源县', '湖南省 常德 桃源县', '430700', '430725', '43', '07', '25', '3', '2017-05-11 01:50:23', '2018-08-17 14:30:56', 'taoyuanxian', 't');
INSERT INTO `z_area` VALUES ('2055', '石门县', '湖南省 常德 石门县', '430700', '430726', '43', '07', '26', '3', '2017-05-11 01:50:23', '2018-08-17 14:30:56', 'shimenxian', 's');
INSERT INTO `z_area` VALUES ('2056', '津市市', '湖南省 常德 津市市', '430700', '430781', '43', '07', '81', '3', '2017-05-11 01:50:23', '2018-08-17 14:30:56', 'jinshishi', 'j');
INSERT INTO `z_area` VALUES ('2057', '张家界', '湖南省 张家界', '430000', '430800', '43', '08', '00', '2', '2017-05-11 01:50:24', '2018-08-16 14:22:04', 'zhangjiajie', 'z');
INSERT INTO `z_area` VALUES ('2058', '张家界市', '湖南省 张家界 张家界市', '430800', '430801', '43', '08', '01', '3', '2017-05-11 01:50:24', '2018-08-17 14:30:56', 'zhangjiajieshi', 'z');
INSERT INTO `z_area` VALUES ('2059', '永定区', '湖南省 张家界 永定区', '430800', '430802', '43', '08', '02', '3', '2017-05-11 01:50:25', '2018-08-17 14:30:56', 'yongdingqu', 'y');
INSERT INTO `z_area` VALUES ('2060', '武陵源区', '湖南省 张家界 武陵源区', '430800', '430811', '43', '08', '11', '3', '2017-05-11 01:50:25', '2018-08-17 14:30:57', 'wulingyuanqu', 'w');
INSERT INTO `z_area` VALUES ('2061', '慈利县', '湖南省 张家界 慈利县', '430800', '430821', '43', '08', '21', '3', '2017-05-11 01:50:25', '2018-08-17 14:30:57', 'cilixian', 'c');
INSERT INTO `z_area` VALUES ('2062', '桑植县', '湖南省 张家界 桑植县', '430800', '430822', '43', '08', '22', '3', '2017-05-11 01:50:25', '2018-08-17 14:30:57', 'sangzhixian', 's');
INSERT INTO `z_area` VALUES ('2063', '益阳', '湖南省 益阳', '430000', '430900', '43', '09', '00', '2', '2017-05-11 01:50:25', '2018-08-16 14:22:05', 'yiyang', 'y');
INSERT INTO `z_area` VALUES ('2064', '益阳市', '湖南省 益阳 益阳市', '430900', '430901', '43', '09', '01', '3', '2017-05-11 01:50:25', '2018-08-17 14:30:57', 'yiyangshi', 'y');
INSERT INTO `z_area` VALUES ('2065', '资阳区', '湖南省 益阳 资阳区', '430900', '430902', '43', '09', '02', '3', '2017-05-11 01:50:25', '2018-08-17 14:30:57', 'ziyangqu', 'z');
INSERT INTO `z_area` VALUES ('2066', '赫山区', '湖南省 益阳 赫山区', '430900', '430903', '43', '09', '03', '3', '2017-05-11 01:50:26', '2018-08-17 14:30:57', 'heshanqu', 'h');
INSERT INTO `z_area` VALUES ('2067', '南县', '湖南省 益阳 南县', '430900', '430921', '43', '09', '21', '3', '2017-05-11 01:50:26', '2018-08-17 14:30:57', 'nanxian', 'n');
INSERT INTO `z_area` VALUES ('2068', '桃江县', '湖南省 益阳 桃江县', '430900', '430922', '43', '09', '22', '3', '2017-05-11 01:50:26', '2018-08-17 14:30:58', 'taojiangxian', 't');
INSERT INTO `z_area` VALUES ('2069', '安化县', '湖南省 益阳 安化县', '430900', '430923', '43', '09', '23', '3', '2017-05-11 01:50:26', '2018-08-17 14:30:58', 'anhuaxian', 'a');
INSERT INTO `z_area` VALUES ('2070', '沅江市', '湖南省 益阳 沅江市', '430900', '430981', '43', '09', '81', '3', '2017-05-11 01:50:26', '2018-08-17 14:30:58', 'yuanjiangshi', 'y');
INSERT INTO `z_area` VALUES ('2071', '郴州', '湖南省 郴州', '430000', '431000', '43', '10', '00', '2', '2017-05-11 01:50:26', '2018-08-16 14:22:06', 'chenzhou', 'c');
INSERT INTO `z_area` VALUES ('2072', '郴州市', '湖南省 郴州 郴州市', '431000', '431001', '43', '10', '01', '3', '2017-05-11 01:50:26', '2018-08-17 14:30:58', 'chenzhoushi', 'c');
INSERT INTO `z_area` VALUES ('2073', '北湖区', '湖南省 郴州 北湖区', '431000', '431002', '43', '10', '02', '3', '2017-05-11 01:50:27', '2018-08-17 14:30:58', 'beihuqu', 'b');
INSERT INTO `z_area` VALUES ('2074', '苏仙区', '湖南省 郴州 苏仙区', '431000', '431003', '43', '10', '03', '3', '2017-05-11 01:50:27', '2018-08-17 14:30:58', 'suxianqu', 's');
INSERT INTO `z_area` VALUES ('2075', '桂阳县', '湖南省 郴州 桂阳县', '431000', '431021', '43', '10', '21', '3', '2017-05-11 01:50:27', '2018-08-17 14:30:59', 'guiyangxian', 'g');
INSERT INTO `z_area` VALUES ('2076', '宜章县', '湖南省 郴州 宜章县', '431000', '431022', '43', '10', '22', '3', '2017-05-11 01:50:27', '2018-08-17 14:30:59', 'yizhangxian', 'y');
INSERT INTO `z_area` VALUES ('2077', '永兴县', '湖南省 郴州 永兴县', '431000', '431023', '43', '10', '23', '3', '2017-05-11 01:50:27', '2018-08-17 14:30:59', 'yongxingxian', 'y');
INSERT INTO `z_area` VALUES ('2078', '嘉禾县', '湖南省 郴州 嘉禾县', '431000', '431024', '43', '10', '24', '3', '2017-05-11 01:50:27', '2018-08-17 14:30:59', 'jiahexian', 'j');
INSERT INTO `z_area` VALUES ('2079', '临武县', '湖南省 郴州 临武县', '431000', '431025', '43', '10', '25', '3', '2017-05-11 01:50:28', '2018-08-17 14:30:59', 'linwuxian', 'l');
INSERT INTO `z_area` VALUES ('2080', '汝城县', '湖南省 郴州 汝城县', '431000', '431026', '43', '10', '26', '3', '2017-05-11 01:50:28', '2018-08-17 14:30:59', 'ruchengxian', 'r');
INSERT INTO `z_area` VALUES ('2081', '桂东县', '湖南省 郴州 桂东县', '431000', '431027', '43', '10', '27', '3', '2017-05-11 01:50:28', '2018-08-17 14:30:59', 'guidongxian', 'g');
INSERT INTO `z_area` VALUES ('2082', '安仁县', '湖南省 郴州 安仁县', '431000', '431028', '43', '10', '28', '3', '2017-05-11 01:50:28', '2018-08-17 14:31:00', 'anrenxian', 'a');
INSERT INTO `z_area` VALUES ('2083', '资兴市', '湖南省 郴州 资兴市', '431000', '431081', '43', '10', '81', '3', '2017-05-11 01:50:28', '2018-08-17 14:31:00', 'zixingshi', 'z');
INSERT INTO `z_area` VALUES ('2084', '永州', '湖南省 永州', '430000', '431100', '43', '11', '00', '2', '2017-05-11 01:50:28', '2018-08-16 14:22:08', 'yongzhou', 'y');
INSERT INTO `z_area` VALUES ('2085', '永州市', '湖南省 永州 永州市', '431100', '431101', '43', '11', '01', '3', '2017-05-11 01:50:28', '2018-08-17 14:31:00', 'yongzhoushi', 'y');
INSERT INTO `z_area` VALUES ('2086', '零陵区', '湖南省 永州 零陵区', '431100', '431102', '43', '11', '02', '3', '2017-05-11 01:50:29', '2018-08-17 14:31:00', 'linglingqu', 'l');
INSERT INTO `z_area` VALUES ('2087', '冷水滩区', '湖南省 永州 冷水滩区', '431100', '431103', '43', '11', '03', '3', '2017-05-11 01:50:29', '2018-08-17 14:31:00', 'lengshuitanqu', 'l');
INSERT INTO `z_area` VALUES ('2088', '祁阳县', '湖南省 永州 祁阳县', '431100', '431121', '43', '11', '21', '3', '2017-05-11 01:50:29', '2018-08-17 14:31:00', 'qiyangxian', 'q');
INSERT INTO `z_area` VALUES ('2089', '东安县', '湖南省 永州 东安县', '431100', '431122', '43', '11', '22', '3', '2017-05-11 01:50:29', '2018-08-17 14:31:00', 'donganxian', 'd');
INSERT INTO `z_area` VALUES ('2090', '双牌县', '湖南省 永州 双牌县', '431100', '431123', '43', '11', '23', '3', '2017-05-11 01:50:29', '2018-08-17 14:31:01', 'shuangpaixian', 's');
INSERT INTO `z_area` VALUES ('2091', '道县', '湖南省 永州 道县', '431100', '431124', '43', '11', '24', '3', '2017-05-11 01:50:29', '2018-08-17 14:31:01', 'daoxian', 'd');
INSERT INTO `z_area` VALUES ('2092', '江永县', '湖南省 永州 江永县', '431100', '431125', '43', '11', '25', '3', '2017-05-11 01:50:30', '2018-08-17 14:31:01', 'jiangyongxian', 'j');
INSERT INTO `z_area` VALUES ('2093', '宁远县', '湖南省 永州 宁远县', '431100', '431126', '43', '11', '26', '3', '2017-05-11 01:50:30', '2018-08-17 14:31:01', 'ningyuanxian', 'n');
INSERT INTO `z_area` VALUES ('2094', '蓝山县', '湖南省 永州 蓝山县', '431100', '431127', '43', '11', '27', '3', '2017-05-11 01:50:30', '2018-08-17 14:31:01', 'lanshanxian', 'l');
INSERT INTO `z_area` VALUES ('2095', '新田县', '湖南省 永州 新田县', '431100', '431128', '43', '11', '28', '3', '2017-05-11 01:50:31', '2018-08-17 14:31:01', 'xintianxian', 'x');
INSERT INTO `z_area` VALUES ('2096', '江华瑶族自治县', '湖南省 永州 江华瑶族自治县', '431100', '431129', '43', '11', '29', '3', '2017-05-11 01:50:31', '2018-08-17 14:31:01', 'jianghuayaozuzizhixian', 'j');
INSERT INTO `z_area` VALUES ('2097', '怀化', '湖南省 怀化', '430000', '431200', '43', '12', '00', '2', '2017-05-11 01:50:31', '2018-08-16 14:22:09', 'huaihua', 'h');
INSERT INTO `z_area` VALUES ('2098', '怀化市', '湖南省 怀化 怀化市', '431200', '431201', '43', '12', '01', '3', '2017-05-11 01:50:31', '2018-08-17 14:31:02', 'huaihuashi', 'h');
INSERT INTO `z_area` VALUES ('2099', '鹤城区', '湖南省 怀化 鹤城区', '431200', '431202', '43', '12', '02', '3', '2017-05-11 01:50:31', '2018-08-17 14:31:02', 'hechengqu', 'h');
INSERT INTO `z_area` VALUES ('2100', '中方县', '湖南省 怀化 中方县', '431200', '431221', '43', '12', '21', '3', '2017-05-11 01:50:31', '2018-08-17 14:31:02', 'zhongfangxian', 'z');
INSERT INTO `z_area` VALUES ('2101', '沅陵县', '湖南省 怀化 沅陵县', '431200', '431222', '43', '12', '22', '3', '2017-05-11 01:50:31', '2018-08-17 14:31:02', 'yuanlingxian', 'y');
INSERT INTO `z_area` VALUES ('2102', '辰溪县', '湖南省 怀化 辰溪县', '431200', '431223', '43', '12', '23', '3', '2017-05-11 01:50:32', '2018-08-17 14:31:02', 'chenxixian', 'c');
INSERT INTO `z_area` VALUES ('2103', '溆浦县', '湖南省 怀化 溆浦县', '431200', '431224', '43', '12', '24', '3', '2017-05-11 01:50:32', '2018-08-17 14:31:02', 'xupuxian', 'x');
INSERT INTO `z_area` VALUES ('2104', '会同县', '湖南省 怀化 会同县', '431200', '431225', '43', '12', '25', '3', '2017-05-11 01:50:32', '2018-08-17 14:31:03', 'huitongxian', 'h');
INSERT INTO `z_area` VALUES ('2105', '麻阳苗族自治县', '湖南省 怀化 麻阳苗族自治县', '431200', '431226', '43', '12', '26', '3', '2017-05-11 01:50:32', '2018-08-17 14:31:03', 'mayangmiaozuzizhixian', 'm');
INSERT INTO `z_area` VALUES ('2106', '新晃侗族自治县', '湖南省 怀化 新晃侗族自治县', '431200', '431227', '43', '12', '27', '3', '2017-05-11 01:50:32', '2018-08-17 14:31:03', 'xinhuangdongzuzizhixian', 'x');
INSERT INTO `z_area` VALUES ('2107', '芷江侗族自治县', '湖南省 怀化 芷江侗族自治县', '431200', '431228', '43', '12', '28', '3', '2017-05-11 01:50:32', '2018-08-17 14:31:03', 'zhijiangdongzuzizhixian', 'z');
INSERT INTO `z_area` VALUES ('2108', '靖州苗族侗族自治县', '湖南省 怀化 靖州苗族侗族自治县', '431200', '431229', '43', '12', '29', '3', '2017-05-11 01:50:33', '2018-08-17 14:31:03', 'jingzhoumiaozudongzuzizhixian', 'j');
INSERT INTO `z_area` VALUES ('2109', '通道侗族自治县', '湖南省 怀化 通道侗族自治县', '431200', '431230', '43', '12', '30', '3', '2017-05-11 01:50:33', '2018-08-17 14:31:03', 'tongdaodongzuzizhixian', 't');
INSERT INTO `z_area` VALUES ('2110', '洪江市', '湖南省 怀化 洪江市', '431200', '431281', '43', '12', '81', '3', '2017-05-11 01:50:33', '2018-08-17 14:31:03', 'hongjiangshi', 'h');
INSERT INTO `z_area` VALUES ('2111', '娄底', '湖南省 娄底', '430000', '431300', '43', '13', '00', '2', '2017-05-11 01:50:33', '2018-08-16 14:22:11', 'loudi', 'l');
INSERT INTO `z_area` VALUES ('2112', '娄底市', '湖南省 娄底 娄底市', '431300', '431301', '43', '13', '01', '3', '2017-05-11 01:50:33', '2018-08-17 14:31:04', 'loudishi', 'l');
INSERT INTO `z_area` VALUES ('2113', '娄星区', '湖南省 娄底 娄星区', '431300', '431302', '43', '13', '02', '3', '2017-05-11 01:50:33', '2018-08-17 14:31:04', 'louxingqu', 'l');
INSERT INTO `z_area` VALUES ('2114', '双峰县', '湖南省 娄底 双峰县', '431300', '431321', '43', '13', '21', '3', '2017-05-11 01:50:33', '2018-08-17 14:31:04', 'shuangfengxian', 's');
INSERT INTO `z_area` VALUES ('2115', '新化县', '湖南省 娄底 新化县', '431300', '431322', '43', '13', '22', '3', '2017-05-11 01:50:34', '2018-08-17 14:31:04', 'xinhuaxian', 'x');
INSERT INTO `z_area` VALUES ('2116', '冷水江市', '湖南省 娄底 冷水江市', '431300', '431381', '43', '13', '81', '3', '2017-05-11 01:50:34', '2018-08-17 14:31:04', 'lengshuijiangshi', 'l');
INSERT INTO `z_area` VALUES ('2117', '涟源市', '湖南省 娄底 涟源市', '431300', '431382', '43', '13', '82', '3', '2017-05-11 01:50:34', '2018-08-17 14:31:04', 'lianyuanshi', 'l');
INSERT INTO `z_area` VALUES ('2118', '湘西土家族苗族自治州', '湖南省 湘西土家族苗族自治州', '430000', '433100', '43', '31', '00', '2', '2017-05-11 01:50:34', '2018-08-16 14:22:12', 'xiangxitujiazumiaozuzizhizhou', 'x');
INSERT INTO `z_area` VALUES ('2119', '吉首市', '湖南省 湘西土家族苗族自治州 吉首市', '433100', '433101', '43', '31', '01', '3', '2017-05-11 01:50:34', '2018-08-17 14:31:05', 'jishoushi', 'j');
INSERT INTO `z_area` VALUES ('2120', '泸溪县', '湖南省 湘西土家族苗族自治州 泸溪县', '433100', '433122', '43', '31', '22', '3', '2017-05-11 01:50:34', '2018-08-17 14:31:05', 'luxixian', 'l');
INSERT INTO `z_area` VALUES ('2121', '凤凰县', '湖南省 湘西土家族苗族自治州 凤凰县', '433100', '433123', '43', '31', '23', '3', '2017-05-11 01:50:34', '2018-08-17 14:31:05', 'fenghuangxian', 'f');
INSERT INTO `z_area` VALUES ('2122', '花垣县', '湖南省 湘西土家族苗族自治州 花垣县', '433100', '433124', '43', '31', '24', '3', '2017-05-11 01:50:35', '2018-08-17 14:31:05', 'huayuanxian', 'h');
INSERT INTO `z_area` VALUES ('2123', '保靖县', '湖南省 湘西土家族苗族自治州 保靖县', '433100', '433125', '43', '31', '25', '3', '2017-05-11 01:50:35', '2018-08-17 14:31:05', 'baojingxian', 'b');
INSERT INTO `z_area` VALUES ('2124', '古丈县', '湖南省 湘西土家族苗族自治州 古丈县', '433100', '433126', '43', '31', '26', '3', '2017-05-11 01:50:35', '2018-08-17 14:31:05', 'guzhangxian', 'g');
INSERT INTO `z_area` VALUES ('2125', '永顺县', '湖南省 湘西土家族苗族自治州 永顺县', '433100', '433127', '43', '31', '27', '3', '2017-05-11 01:50:35', '2018-08-17 14:31:05', 'yongshunxian', 'y');
INSERT INTO `z_area` VALUES ('2126', '龙山县', '湖南省 湘西土家族苗族自治州 龙山县', '433100', '433130', '43', '31', '30', '3', '2017-05-11 01:50:35', '2018-08-17 14:31:05', 'longshanxian', 'l');
INSERT INTO `z_area` VALUES ('2127', '广东省', '广东省', '', '440000', '44', '00', '00', '1', '2017-05-11 01:50:35', '2017-08-28 14:24:02', 'guangdongsheng', 'g');
INSERT INTO `z_area` VALUES ('2128', '广州', '广东省 广州', '440000', '440100', '44', '01', '00', '2', '2017-05-11 01:50:35', '2018-08-16 14:22:13', 'guangzhou', 'g');
INSERT INTO `z_area` VALUES ('2129', '广州市', '广东省 广州 广州市', '440100', '440101', '44', '01', '01', '3', '2017-05-11 01:50:35', '2018-08-17 14:31:06', 'guangzhoushi', 'g');
INSERT INTO `z_area` VALUES ('2130', '荔湾区', '广东省 广州 荔湾区', '440100', '440103', '44', '01', '03', '3', '2017-05-11 01:50:36', '2018-08-17 14:31:06', 'liwanqu', 'l');
INSERT INTO `z_area` VALUES ('2131', '越秀区', '广东省 广州 越秀区', '440100', '440104', '44', '01', '04', '3', '2017-05-11 01:50:36', '2018-08-17 14:31:06', 'yuexiuqu', 'y');
INSERT INTO `z_area` VALUES ('2132', '海珠区', '广东省 广州 海珠区', '440100', '440105', '44', '01', '05', '3', '2017-05-11 01:50:36', '2018-08-17 14:31:06', 'haizhuqu', 'h');
INSERT INTO `z_area` VALUES ('2133', '天河区', '广东省 广州 天河区', '440100', '440106', '44', '01', '06', '3', '2017-05-11 01:50:36', '2018-08-17 14:31:06', 'tianhequ', 't');
INSERT INTO `z_area` VALUES ('2134', '白云区', '广东省 广州 白云区', '440100', '440111', '44', '01', '11', '3', '2017-05-11 01:50:36', '2018-08-17 14:31:06', 'baiyunqu', 'b');
INSERT INTO `z_area` VALUES ('2135', '黄埔区', '广东省 广州 黄埔区', '440100', '440112', '44', '01', '12', '3', '2017-05-11 01:50:36', '2018-08-17 14:31:06', 'huangpuqu', 'h');
INSERT INTO `z_area` VALUES ('2136', '番禺区', '广东省 广州 番禺区', '440100', '440113', '44', '01', '13', '3', '2017-05-11 01:50:37', '2018-08-17 14:31:07', 'fanyuqu', 'f');
INSERT INTO `z_area` VALUES ('2137', '花都区', '广东省 广州 花都区', '440100', '440114', '44', '01', '14', '3', '2017-05-11 01:50:37', '2018-08-17 14:31:07', 'huadouqu', 'h');
INSERT INTO `z_area` VALUES ('2138', '南沙区', '广东省 广州 南沙区', '440100', '440115', '44', '01', '15', '3', '2017-05-11 01:50:37', '2018-08-17 14:31:07', 'nanshaqu', 'n');
INSERT INTO `z_area` VALUES ('2139', '从化区', '广东省 广州 从化区', '440100', '440117', '44', '01', '17', '3', '2017-05-11 01:50:37', '2018-08-17 14:31:07', 'conghuaqu', 'c');
INSERT INTO `z_area` VALUES ('2140', '增城区', '广东省 广州 增城区', '440100', '440118', '44', '01', '18', '3', '2017-05-11 01:50:37', '2018-08-17 14:31:07', 'zengchengqu', 'z');
INSERT INTO `z_area` VALUES ('2141', '韶关', '广东省 韶关', '440000', '440200', '44', '02', '00', '2', '2017-05-11 01:50:37', '2018-08-16 14:22:15', 'shaoguan', 's');
INSERT INTO `z_area` VALUES ('2142', '韶关市', '广东省 韶关 韶关市', '440200', '440201', '44', '02', '01', '3', '2017-05-11 01:50:37', '2018-08-17 14:31:07', 'shaoguanshi', 's');
INSERT INTO `z_area` VALUES ('2143', '武江区', '广东省 韶关 武江区', '440200', '440203', '44', '02', '03', '3', '2017-05-11 01:50:38', '2018-08-17 14:31:07', 'wujiangqu', 'w');
INSERT INTO `z_area` VALUES ('2144', '浈江区', '广东省 韶关 浈江区', '440200', '440204', '44', '02', '04', '3', '2017-05-11 01:50:38', '2018-08-17 14:31:07', 'zhenjiangqu', 'z');
INSERT INTO `z_area` VALUES ('2145', '曲江区', '广东省 韶关 曲江区', '440200', '440205', '44', '02', '05', '3', '2017-05-11 01:50:38', '2018-08-17 14:31:08', 'qujiangqu', 'q');
INSERT INTO `z_area` VALUES ('2146', '始兴县', '广东省 韶关 始兴县', '440200', '440222', '44', '02', '22', '3', '2017-05-11 01:50:38', '2018-08-17 14:31:08', 'shixingxian', 's');
INSERT INTO `z_area` VALUES ('2147', '仁化县', '广东省 韶关 仁化县', '440200', '440224', '44', '02', '24', '3', '2017-05-11 01:50:38', '2018-08-17 14:31:08', 'renhuaxian', 'r');
INSERT INTO `z_area` VALUES ('2148', '翁源县', '广东省 韶关 翁源县', '440200', '440229', '44', '02', '29', '3', '2017-05-11 01:50:38', '2018-08-17 14:31:08', 'wengyuanxian', 'w');
INSERT INTO `z_area` VALUES ('2149', '乳源瑶族自治县', '广东省 韶关 乳源瑶族自治县', '440200', '440232', '44', '02', '32', '3', '2017-05-11 01:50:39', '2018-08-17 14:31:08', 'ruyuanyaozuzizhixian', 'r');
INSERT INTO `z_area` VALUES ('2150', '新丰县', '广东省 韶关 新丰县', '440200', '440233', '44', '02', '33', '3', '2017-05-11 01:50:39', '2018-08-17 14:31:08', 'xinfengxian', 'x');
INSERT INTO `z_area` VALUES ('2151', '乐昌市', '广东省 韶关 乐昌市', '440200', '440281', '44', '02', '81', '3', '2017-05-11 01:50:39', '2018-08-17 14:31:08', 'lechangshi', 'l');
INSERT INTO `z_area` VALUES ('2152', '南雄市', '广东省 韶关 南雄市', '440200', '440282', '44', '02', '82', '3', '2017-05-11 01:50:39', '2018-08-17 14:31:09', 'nanxiongshi', 'n');
INSERT INTO `z_area` VALUES ('2153', '深圳', '广东省 深圳', '440000', '440300', '44', '03', '00', '2', '2017-05-11 01:50:39', '2018-08-16 14:22:16', 'shenzhen', 's');
INSERT INTO `z_area` VALUES ('2154', '深圳市', '广东省 深圳 深圳市', '440300', '440301', '44', '03', '01', '3', '2017-05-11 01:50:39', '2018-08-17 14:31:09', 'shenzhenshi', 's');
INSERT INTO `z_area` VALUES ('2155', '罗湖区', '广东省 深圳 罗湖区', '440300', '440303', '44', '03', '03', '3', '2017-05-11 01:50:39', '2018-08-17 14:31:09', 'luohuqu', 'l');
INSERT INTO `z_area` VALUES ('2156', '福田区', '广东省 深圳 福田区', '440300', '440304', '44', '03', '04', '3', '2017-05-11 01:50:40', '2018-08-17 14:31:09', 'futianqu', 'f');
INSERT INTO `z_area` VALUES ('2157', '南山区', '广东省 深圳 南山区', '440300', '440305', '44', '03', '05', '3', '2017-05-11 01:50:40', '2018-08-17 14:31:09', 'nanshanqu', 'n');
INSERT INTO `z_area` VALUES ('2158', '宝安区', '广东省 深圳 宝安区', '440300', '440306', '44', '03', '06', '3', '2017-05-11 01:50:40', '2018-08-17 14:31:09', 'baoanqu', 'b');
INSERT INTO `z_area` VALUES ('2159', '龙岗区', '广东省 深圳 龙岗区', '440300', '440307', '44', '03', '07', '3', '2017-05-11 01:50:40', '2018-08-17 14:31:09', 'longgangqu', 'l');
INSERT INTO `z_area` VALUES ('2160', '盐田区', '广东省 深圳 盐田区', '440300', '440308', '44', '03', '08', '3', '2017-05-11 01:50:40', '2018-08-17 14:31:10', 'yantianqu', 'y');
INSERT INTO `z_area` VALUES ('2161', '珠海', '广东省 珠海', '440000', '440400', '44', '04', '00', '2', '2017-05-11 01:50:40', '2018-08-16 14:22:17', 'zhuhai', 'z');
INSERT INTO `z_area` VALUES ('2162', '珠海市', '广东省 珠海 珠海市', '440400', '440401', '44', '04', '01', '3', '2017-05-11 01:50:41', '2018-08-17 14:31:10', 'zhuhaishi', 'z');
INSERT INTO `z_area` VALUES ('2163', '香洲区', '广东省 珠海 香洲区', '440400', '440402', '44', '04', '02', '3', '2017-05-11 01:50:41', '2018-08-17 14:31:10', 'xiangzhouqu', 'x');
INSERT INTO `z_area` VALUES ('2164', '斗门区', '广东省 珠海 斗门区', '440400', '440403', '44', '04', '03', '3', '2017-05-11 01:50:41', '2018-08-17 14:31:10', 'doumenqu', 'd');
INSERT INTO `z_area` VALUES ('2165', '金湾区', '广东省 珠海 金湾区', '440400', '440404', '44', '04', '04', '3', '2017-05-11 01:50:41', '2018-08-17 14:31:10', 'jinwanqu', 'j');
INSERT INTO `z_area` VALUES ('2166', '汕头', '广东省 汕头', '440000', '440500', '44', '05', '00', '2', '2017-05-11 01:50:41', '2018-08-16 14:22:18', 'shantou', 's');
INSERT INTO `z_area` VALUES ('2167', '汕头市', '广东省 汕头 汕头市', '440500', '440501', '44', '05', '01', '3', '2017-05-11 01:50:41', '2018-08-17 14:31:10', 'shantoushi', 's');
INSERT INTO `z_area` VALUES ('2168', '龙湖区', '广东省 汕头 龙湖区', '440500', '440507', '44', '05', '07', '3', '2017-05-11 01:50:41', '2018-08-17 14:31:11', 'longhuqu', 'l');
INSERT INTO `z_area` VALUES ('2169', '金平区', '广东省 汕头 金平区', '440500', '440511', '44', '05', '11', '3', '2017-05-11 01:50:42', '2018-08-17 14:31:11', 'jinpingqu', 'j');
INSERT INTO `z_area` VALUES ('2170', '濠江区', '广东省 汕头 濠江区', '440500', '440512', '44', '05', '12', '3', '2017-05-11 01:50:42', '2018-08-17 14:31:11', 'haojiangqu', 'h');
INSERT INTO `z_area` VALUES ('2171', '潮阳区', '广东省 汕头 潮阳区', '440500', '440513', '44', '05', '13', '3', '2017-05-11 01:50:42', '2018-08-17 14:31:11', 'chaoyangqu', 'c');
INSERT INTO `z_area` VALUES ('2172', '潮南区', '广东省 汕头 潮南区', '440500', '440514', '44', '05', '14', '3', '2017-05-11 01:50:42', '2018-08-17 14:31:11', 'chaonanqu', 'c');
INSERT INTO `z_area` VALUES ('2173', '澄海区', '广东省 汕头 澄海区', '440500', '440515', '44', '05', '15', '3', '2017-05-11 01:50:42', '2018-08-17 14:31:11', 'chenghaiqu', 'c');
INSERT INTO `z_area` VALUES ('2174', '南澳县', '广东省 汕头 南澳县', '440500', '440523', '44', '05', '23', '3', '2017-05-11 01:50:42', '2018-08-17 14:31:11', 'nanaoxian', 'n');
INSERT INTO `z_area` VALUES ('2175', '佛山', '广东省 佛山', '440000', '440600', '44', '06', '00', '2', '2017-05-11 01:50:42', '2018-08-16 14:22:19', 'foshan', 'f');
INSERT INTO `z_area` VALUES ('2176', '佛山市', '广东省 佛山 佛山市', '440600', '440601', '44', '06', '01', '3', '2017-05-11 01:50:43', '2018-08-17 14:31:12', 'foshanshi', 'f');
INSERT INTO `z_area` VALUES ('2177', '禅城区', '广东省 佛山 禅城区', '440600', '440604', '44', '06', '04', '3', '2017-05-11 01:50:43', '2018-08-17 14:31:12', 'chanchengqu', 'c');
INSERT INTO `z_area` VALUES ('2178', '南海区', '广东省 佛山 南海区', '440600', '440605', '44', '06', '05', '3', '2017-05-11 01:50:43', '2018-08-17 14:31:12', 'nanhaiqu', 'n');
INSERT INTO `z_area` VALUES ('2179', '顺德区', '广东省 佛山 顺德区', '440600', '440606', '44', '06', '06', '3', '2017-05-11 01:50:43', '2018-08-17 14:31:12', 'shundequ', 's');
INSERT INTO `z_area` VALUES ('2180', '三水区', '广东省 佛山 三水区', '440600', '440607', '44', '06', '07', '3', '2017-05-11 01:50:43', '2018-08-17 14:31:12', 'sanshuiqu', 's');
INSERT INTO `z_area` VALUES ('2181', '高明区', '广东省 佛山 高明区', '440600', '440608', '44', '06', '08', '3', '2017-05-11 01:50:43', '2018-08-17 14:31:12', 'gaomingqu', 'g');
INSERT INTO `z_area` VALUES ('2182', '江门', '广东省 江门', '440000', '440700', '44', '07', '00', '2', '2017-05-11 01:50:43', '2018-08-16 14:22:20', 'jiangmen', 'j');
INSERT INTO `z_area` VALUES ('2183', '江门市', '广东省 江门 江门市', '440700', '440701', '44', '07', '01', '3', '2017-05-11 01:50:44', '2018-08-17 14:31:13', 'jiangmenshi', 'j');
INSERT INTO `z_area` VALUES ('2184', '蓬江区', '广东省 江门 蓬江区', '440700', '440703', '44', '07', '03', '3', '2017-05-11 01:50:44', '2018-08-17 14:31:13', 'pengjiangqu', 'p');
INSERT INTO `z_area` VALUES ('2185', '江海区', '广东省 江门 江海区', '440700', '440704', '44', '07', '04', '3', '2017-05-11 01:50:44', '2018-08-17 14:31:13', 'jianghaiqu', 'j');
INSERT INTO `z_area` VALUES ('2186', '新会区', '广东省 江门 新会区', '440700', '440705', '44', '07', '05', '3', '2017-05-11 01:50:44', '2018-08-17 14:31:13', 'xinhuiqu', 'x');
INSERT INTO `z_area` VALUES ('2187', '台山市', '广东省 江门 台山市', '440700', '440781', '44', '07', '81', '3', '2017-05-11 01:50:44', '2018-08-17 14:31:13', 'taishanshi', 't');
INSERT INTO `z_area` VALUES ('2188', '开平市', '广东省 江门 开平市', '440700', '440783', '44', '07', '83', '3', '2017-05-11 01:50:44', '2018-08-17 14:31:13', 'kaipingshi', 'k');
INSERT INTO `z_area` VALUES ('2189', '鹤山市', '广东省 江门 鹤山市', '440700', '440784', '44', '07', '84', '3', '2017-05-11 01:50:45', '2018-08-17 14:31:14', 'heshanshi', 'h');
INSERT INTO `z_area` VALUES ('2190', '恩平市', '广东省 江门 恩平市', '440700', '440785', '44', '07', '85', '3', '2017-05-11 01:50:45', '2018-08-17 14:31:14', 'enpingshi', 'e');
INSERT INTO `z_area` VALUES ('2191', '湛江', '广东省 湛江', '440000', '440800', '44', '08', '00', '2', '2017-05-11 01:50:45', '2018-08-16 14:22:21', 'zhanjiang', 'z');
INSERT INTO `z_area` VALUES ('2192', '湛江市', '广东省 湛江 湛江市', '440800', '440801', '44', '08', '01', '3', '2017-05-11 01:50:45', '2018-08-17 14:31:14', 'zhanjiangshi', 'z');
INSERT INTO `z_area` VALUES ('2193', '赤坎区', '广东省 湛江 赤坎区', '440800', '440802', '44', '08', '02', '3', '2017-05-11 01:50:45', '2018-08-17 14:31:14', 'chikanqu', 'c');
INSERT INTO `z_area` VALUES ('2194', '霞山区', '广东省 湛江 霞山区', '440800', '440803', '44', '08', '03', '3', '2017-05-11 01:50:45', '2018-08-17 14:31:14', 'xiashanqu', 'x');
INSERT INTO `z_area` VALUES ('2195', '坡头区', '广东省 湛江 坡头区', '440800', '440804', '44', '08', '04', '3', '2017-05-11 01:50:45', '2018-08-17 14:31:14', 'potouqu', 'p');
INSERT INTO `z_area` VALUES ('2196', '麻章区', '广东省 湛江 麻章区', '440800', '440811', '44', '08', '11', '3', '2017-05-11 01:50:46', '2018-08-17 14:31:14', 'mazhangqu', 'm');
INSERT INTO `z_area` VALUES ('2197', '遂溪县', '广东省 湛江 遂溪县', '440800', '440823', '44', '08', '23', '3', '2017-05-11 01:50:46', '2018-08-17 14:31:15', 'suixixian', 's');
INSERT INTO `z_area` VALUES ('2198', '徐闻县', '广东省 湛江 徐闻县', '440800', '440825', '44', '08', '25', '3', '2017-05-11 01:50:46', '2018-08-17 14:31:15', 'xuwenxian', 'x');
INSERT INTO `z_area` VALUES ('2199', '廉江市', '广东省 湛江 廉江市', '440800', '440881', '44', '08', '81', '3', '2017-05-11 01:50:46', '2018-08-17 14:31:15', 'lianjiangshi', 'l');
INSERT INTO `z_area` VALUES ('2200', '雷州市', '广东省 湛江 雷州市', '440800', '440882', '44', '08', '82', '3', '2017-05-11 01:50:46', '2018-08-17 14:31:15', 'leizhoushi', 'l');
INSERT INTO `z_area` VALUES ('2201', '吴川市', '广东省 湛江 吴川市', '440800', '440883', '44', '08', '83', '3', '2017-05-11 01:50:46', '2018-08-17 14:31:15', 'wuchuanshi', 'w');
INSERT INTO `z_area` VALUES ('2202', '茂名', '广东省 茂名', '440000', '440900', '44', '09', '00', '2', '2017-05-11 01:50:47', '2018-08-16 14:22:22', 'maoming', 'm');
INSERT INTO `z_area` VALUES ('2203', '茂名市', '广东省 茂名 茂名市', '440900', '440901', '44', '09', '01', '3', '2017-05-11 01:50:47', '2018-08-17 14:31:15', 'maomingshi', 'm');
INSERT INTO `z_area` VALUES ('2204', '茂南区', '广东省 茂名 茂南区', '440900', '440902', '44', '09', '02', '3', '2017-05-11 01:50:47', '2018-08-17 14:31:15', 'maonanqu', 'm');
INSERT INTO `z_area` VALUES ('2205', '电白区', '广东省 茂名 电白区', '440900', '440904', '44', '09', '04', '3', '2017-05-11 01:50:47', '2018-08-17 14:31:16', 'dianbaiqu', 'd');
INSERT INTO `z_area` VALUES ('2206', '高州市', '广东省 茂名 高州市', '440900', '440981', '44', '09', '81', '3', '2017-05-11 01:50:47', '2018-08-17 14:31:16', 'gaozhoushi', 'g');
INSERT INTO `z_area` VALUES ('2207', '化州市', '广东省 茂名 化州市', '440900', '440982', '44', '09', '82', '3', '2017-05-11 01:50:47', '2018-08-17 14:31:16', 'huazhoushi', 'h');
INSERT INTO `z_area` VALUES ('2208', '信宜市', '广东省 茂名 信宜市', '440900', '440983', '44', '09', '83', '3', '2017-05-11 01:50:47', '2018-08-17 14:31:16', 'xinyishi', 'x');
INSERT INTO `z_area` VALUES ('2209', '肇庆', '广东省 肇庆', '440000', '441200', '44', '12', '00', '2', '2017-05-11 01:50:48', '2018-08-16 14:22:23', 'zhaoqing', 'z');
INSERT INTO `z_area` VALUES ('2210', '肇庆市', '广东省 肇庆 肇庆市', '441200', '441201', '44', '12', '01', '3', '2017-05-11 01:50:48', '2018-08-17 14:31:16', 'zhaoqingshi', 'z');
INSERT INTO `z_area` VALUES ('2211', '端州区', '广东省 肇庆 端州区', '441200', '441202', '44', '12', '02', '3', '2017-05-11 01:50:48', '2018-08-17 14:31:16', 'duanzhouqu', 'd');
INSERT INTO `z_area` VALUES ('2212', '鼎湖区', '广东省 肇庆 鼎湖区', '441200', '441203', '44', '12', '03', '3', '2017-05-11 01:50:48', '2018-08-17 14:31:16', 'dinghuqu', 'd');
INSERT INTO `z_area` VALUES ('2213', '高要区', '广东省 肇庆 高要区', '441200', '441204', '44', '12', '04', '3', '2017-05-11 01:50:48', '2018-08-17 14:31:17', 'gaoyaoqu', 'g');
INSERT INTO `z_area` VALUES ('2214', '广宁县', '广东省 肇庆 广宁县', '441200', '441223', '44', '12', '23', '3', '2017-05-11 01:50:48', '2018-08-17 14:31:17', 'guangningxian', 'g');
INSERT INTO `z_area` VALUES ('2215', '怀集县', '广东省 肇庆 怀集县', '441200', '441224', '44', '12', '24', '3', '2017-05-11 01:50:49', '2018-08-17 14:31:17', 'huaijixian', 'h');
INSERT INTO `z_area` VALUES ('2216', '封开县', '广东省 肇庆 封开县', '441200', '441225', '44', '12', '25', '3', '2017-05-11 01:50:49', '2018-08-17 14:31:17', 'fengkaixian', 'f');
INSERT INTO `z_area` VALUES ('2217', '德庆县', '广东省 肇庆 德庆县', '441200', '441226', '44', '12', '26', '3', '2017-05-11 01:50:49', '2018-08-17 14:31:17', 'deqingxian', 'd');
INSERT INTO `z_area` VALUES ('2218', '四会市', '广东省 肇庆 四会市', '441200', '441284', '44', '12', '84', '3', '2017-05-11 01:50:49', '2018-08-17 14:31:17', 'sihuishi', 's');
INSERT INTO `z_area` VALUES ('2219', '惠州', '广东省 惠州', '440000', '441300', '44', '13', '00', '2', '2017-05-11 01:50:49', '2018-08-16 14:22:25', 'huizhou', 'h');
INSERT INTO `z_area` VALUES ('2220', '惠州市', '广东省 惠州 惠州市', '441300', '441301', '44', '13', '01', '3', '2017-05-11 01:50:49', '2018-08-17 14:31:18', 'huizhoushi', 'h');
INSERT INTO `z_area` VALUES ('2221', '惠城区', '广东省 惠州 惠城区', '441300', '441302', '44', '13', '02', '3', '2017-05-11 01:50:49', '2018-08-17 14:31:18', 'huichengqu', 'h');
INSERT INTO `z_area` VALUES ('2222', '惠阳区', '广东省 惠州 惠阳区', '441300', '441303', '44', '13', '03', '3', '2017-05-11 01:50:50', '2018-08-17 14:31:18', 'huiyangqu', 'h');
INSERT INTO `z_area` VALUES ('2223', '博罗县', '广东省 惠州 博罗县', '441300', '441322', '44', '13', '22', '3', '2017-05-11 01:50:50', '2018-08-17 14:31:18', 'boluoxian', 'b');
INSERT INTO `z_area` VALUES ('2224', '惠东县', '广东省 惠州 惠东县', '441300', '441323', '44', '13', '23', '3', '2017-05-11 01:50:50', '2018-08-17 14:31:18', 'huidongxian', 'h');
INSERT INTO `z_area` VALUES ('2225', '龙门县', '广东省 惠州 龙门县', '441300', '441324', '44', '13', '24', '3', '2017-05-11 01:50:50', '2018-08-17 14:31:18', 'longmenxian', 'l');
INSERT INTO `z_area` VALUES ('2226', '梅州', '广东省 梅州', '440000', '441400', '44', '14', '00', '2', '2017-05-11 01:50:50', '2018-08-16 14:22:25', 'meizhou', 'm');
INSERT INTO `z_area` VALUES ('2227', '梅州市', '广东省 梅州 梅州市', '441400', '441401', '44', '14', '01', '3', '2017-05-11 01:50:50', '2018-08-17 14:31:18', 'meizhoushi', 'm');
INSERT INTO `z_area` VALUES ('2228', '梅江区', '广东省 梅州 梅江区', '441400', '441402', '44', '14', '02', '3', '2017-05-11 01:50:51', '2018-08-17 14:31:19', 'meijiangqu', 'm');
INSERT INTO `z_area` VALUES ('2229', '梅县区', '广东省 梅州 梅县区', '441400', '441403', '44', '14', '03', '3', '2017-05-11 01:50:51', '2018-08-17 14:31:19', 'meixianqu', 'm');
INSERT INTO `z_area` VALUES ('2230', '大埔县', '广东省 梅州 大埔县', '441400', '441422', '44', '14', '22', '3', '2017-05-11 01:50:51', '2018-08-17 14:31:19', 'dapuxian', 'd');
INSERT INTO `z_area` VALUES ('2231', '丰顺县', '广东省 梅州 丰顺县', '441400', '441423', '44', '14', '23', '3', '2017-05-11 01:50:51', '2018-08-17 14:31:19', 'fengshunxian', 'f');
INSERT INTO `z_area` VALUES ('2232', '五华县', '广东省 梅州 五华县', '441400', '441424', '44', '14', '24', '3', '2017-05-11 01:50:51', '2018-08-17 14:31:19', 'wuhuaxian', 'w');
INSERT INTO `z_area` VALUES ('2233', '平远县', '广东省 梅州 平远县', '441400', '441426', '44', '14', '26', '3', '2017-05-11 01:50:51', '2018-08-17 14:31:19', 'pingyuanxian', 'p');
INSERT INTO `z_area` VALUES ('2234', '蕉岭县', '广东省 梅州 蕉岭县', '441400', '441427', '44', '14', '27', '3', '2017-05-11 01:50:52', '2018-08-17 14:31:19', 'jiaolingxian', 'j');
INSERT INTO `z_area` VALUES ('2235', '兴宁市', '广东省 梅州 兴宁市', '441400', '441481', '44', '14', '81', '3', '2017-05-11 01:50:52', '2018-08-17 14:31:20', 'xingningshi', 'x');
INSERT INTO `z_area` VALUES ('2236', '汕尾', '广东省 汕尾', '440000', '441500', '44', '15', '00', '2', '2017-05-11 01:50:52', '2018-08-16 14:22:27', 'shanwei', 's');
INSERT INTO `z_area` VALUES ('2237', '汕尾市', '广东省 汕尾 汕尾市', '441500', '441501', '44', '15', '01', '3', '2017-05-11 01:50:52', '2018-08-17 14:31:20', 'shanweishi', 's');
INSERT INTO `z_area` VALUES ('2238', '城区', '广东省 汕尾 城区', '441500', '441502', '44', '15', '02', '3', '2017-05-11 01:50:52', '2018-08-17 14:31:20', 'chengqu', 'c');
INSERT INTO `z_area` VALUES ('2239', '海丰县', '广东省 汕尾 海丰县', '441500', '441521', '44', '15', '21', '3', '2017-05-11 01:50:52', '2018-08-17 14:31:20', 'haifengxian', 'h');
INSERT INTO `z_area` VALUES ('2240', '陆河县', '广东省 汕尾 陆河县', '441500', '441523', '44', '15', '23', '3', '2017-05-11 01:50:52', '2018-08-17 14:31:20', 'luhexian', 'l');
INSERT INTO `z_area` VALUES ('2241', '陆丰市', '广东省 汕尾 陆丰市', '441500', '441581', '44', '15', '81', '3', '2017-05-11 01:50:53', '2018-08-17 14:31:20', 'lufengshi', 'l');
INSERT INTO `z_area` VALUES ('2242', '河源', '广东省 河源', '440000', '441600', '44', '16', '00', '2', '2017-05-11 01:50:53', '2018-08-16 14:22:27', 'heyuan', 'h');
INSERT INTO `z_area` VALUES ('2243', '河源市', '广东省 河源 河源市', '441600', '441601', '44', '16', '01', '3', '2017-05-11 01:50:53', '2018-08-17 14:31:21', 'heyuanshi', 'h');
INSERT INTO `z_area` VALUES ('2244', '源城区', '广东省 河源 源城区', '441600', '441602', '44', '16', '02', '3', '2017-05-11 01:50:53', '2018-08-17 14:31:21', 'yuanchengqu', 'y');
INSERT INTO `z_area` VALUES ('2245', '紫金县', '广东省 河源 紫金县', '441600', '441621', '44', '16', '21', '3', '2017-05-11 01:50:53', '2018-08-17 14:31:21', 'zijinxian', 'z');
INSERT INTO `z_area` VALUES ('2246', '龙川县', '广东省 河源 龙川县', '441600', '441622', '44', '16', '22', '3', '2017-05-11 01:50:53', '2018-08-17 14:31:21', 'longchuanxian', 'l');
INSERT INTO `z_area` VALUES ('2247', '连平县', '广东省 河源 连平县', '441600', '441623', '44', '16', '23', '3', '2017-05-11 01:50:54', '2018-08-17 14:31:21', 'lianpingxian', 'l');
INSERT INTO `z_area` VALUES ('2248', '和平县', '广东省 河源 和平县', '441600', '441624', '44', '16', '24', '3', '2017-05-11 01:50:54', '2018-08-17 14:31:21', 'hepingxian', 'h');
INSERT INTO `z_area` VALUES ('2249', '东源县', '广东省 河源 东源县', '441600', '441625', '44', '16', '25', '3', '2017-05-11 01:50:54', '2018-08-17 14:31:21', 'dongyuanxian', 'd');
INSERT INTO `z_area` VALUES ('2250', '阳江', '广东省 阳江', '440000', '441700', '44', '17', '00', '2', '2017-05-11 01:50:54', '2018-08-16 14:22:28', 'yangjiang', 'y');
INSERT INTO `z_area` VALUES ('2251', '阳江市', '广东省 阳江 阳江市', '441700', '441701', '44', '17', '01', '3', '2017-05-11 01:50:54', '2018-08-17 14:31:22', 'yangjiangshi', 'y');
INSERT INTO `z_area` VALUES ('2252', '江城区', '广东省 阳江 江城区', '441700', '441702', '44', '17', '02', '3', '2017-05-11 01:50:54', '2018-08-17 14:31:22', 'jiangchengqu', 'j');
INSERT INTO `z_area` VALUES ('2253', '阳东区', '广东省 阳江 阳东区', '441700', '441704', '44', '17', '04', '3', '2017-05-11 01:50:54', '2018-08-17 14:31:22', 'yangdongqu', 'y');
INSERT INTO `z_area` VALUES ('2254', '阳西县', '广东省 阳江 阳西县', '441700', '441721', '44', '17', '21', '3', '2017-05-11 01:50:55', '2018-08-17 14:31:22', 'yangxixian', 'y');
INSERT INTO `z_area` VALUES ('2255', '阳春市', '广东省 阳江 阳春市', '441700', '441781', '44', '17', '81', '3', '2017-05-11 01:50:55', '2018-08-17 14:31:22', 'yangchunshi', 'y');
INSERT INTO `z_area` VALUES ('2256', '清远', '广东省 清远', '440000', '441800', '44', '18', '00', '2', '2017-05-11 01:50:55', '2018-08-16 14:22:29', 'qingyuan', 'q');
INSERT INTO `z_area` VALUES ('2257', '清远市', '广东省 清远 清远市', '441800', '441801', '44', '18', '01', '3', '2017-05-11 01:50:55', '2018-08-17 14:31:22', 'qingyuanshi', 'q');
INSERT INTO `z_area` VALUES ('2258', '清城区', '广东省 清远 清城区', '441800', '441802', '44', '18', '02', '3', '2017-05-11 01:50:55', '2018-08-17 14:31:22', 'qingchengqu', 'q');
INSERT INTO `z_area` VALUES ('2259', '清新区', '广东省 清远 清新区', '441800', '441803', '44', '18', '03', '3', '2017-05-11 01:50:55', '2018-08-17 14:31:23', 'qingxinqu', 'q');
INSERT INTO `z_area` VALUES ('2260', '佛冈县', '广东省 清远 佛冈县', '441800', '441821', '44', '18', '21', '3', '2017-05-11 01:50:55', '2018-08-17 14:31:23', 'fogangxian', 'f');
INSERT INTO `z_area` VALUES ('2261', '阳山县', '广东省 清远 阳山县', '441800', '441823', '44', '18', '23', '3', '2017-05-11 01:50:56', '2018-08-17 14:31:23', 'yangshanxian', 'y');
INSERT INTO `z_area` VALUES ('2262', '连山壮族瑶族自治县', '广东省 清远 连山壮族瑶族自治县', '441800', '441825', '44', '18', '25', '3', '2017-05-11 01:50:56', '2018-08-17 14:31:23', 'lianshanzhuangzuyaozuzizhixian', 'l');
INSERT INTO `z_area` VALUES ('2263', '连南瑶族自治县', '广东省 清远 连南瑶族自治县', '441800', '441826', '44', '18', '26', '3', '2017-05-11 01:50:56', '2018-08-17 14:31:23', 'liannanyaozuzizhixian', 'l');
INSERT INTO `z_area` VALUES ('2264', '英德市', '广东省 清远 英德市', '441800', '441881', '44', '18', '81', '3', '2017-05-11 01:50:56', '2018-08-17 14:31:23', 'yingdeshi', 'y');
INSERT INTO `z_area` VALUES ('2265', '连州市', '广东省 清远 连州市', '441800', '441882', '44', '18', '82', '3', '2017-05-11 01:50:56', '2018-08-17 14:31:23', 'lianzhoushi', 'l');
INSERT INTO `z_area` VALUES ('2266', '东莞市', '广东省 东莞市', '440000', '441900', '44', '19', '00', '2', '2017-05-11 01:50:56', '2018-08-16 14:22:30', 'dongwanshi', 'd');
INSERT INTO `z_area` VALUES ('2267', '中山市', '广东省 中山市', '440000', '442000', '44', '20', '00', '2', '2017-05-11 01:50:56', '2018-08-16 14:22:31', 'zhongshanshi', 'z');
INSERT INTO `z_area` VALUES ('2268', '潮州', '广东省 潮州', '440000', '445100', '44', '51', '00', '2', '2017-05-11 01:50:56', '2018-08-16 14:22:31', 'chaozhou', 'c');
INSERT INTO `z_area` VALUES ('2269', '潮州市', '广东省 潮州 潮州市', '445100', '445101', '44', '51', '01', '3', '2017-05-11 01:50:57', '2018-08-17 14:31:24', 'chaozhoushi', 'c');
INSERT INTO `z_area` VALUES ('2270', '湘桥区', '广东省 潮州 湘桥区', '445100', '445102', '44', '51', '02', '3', '2017-05-11 01:50:57', '2018-08-17 14:31:24', 'xiangqiaoqu', 'x');
INSERT INTO `z_area` VALUES ('2271', '潮安区', '广东省 潮州 潮安区', '445100', '445103', '44', '51', '03', '3', '2017-05-11 01:50:57', '2018-08-17 14:31:24', 'chaoanqu', 'c');
INSERT INTO `z_area` VALUES ('2272', '饶平县', '广东省 潮州 饶平县', '445100', '445122', '44', '51', '22', '3', '2017-05-11 01:50:57', '2018-08-17 14:31:24', 'raopingxian', 'r');
INSERT INTO `z_area` VALUES ('2273', '揭阳', '广东省 揭阳', '440000', '445200', '44', '52', '00', '2', '2017-05-11 01:50:57', '2018-08-16 14:22:31', 'jieyang', 'j');
INSERT INTO `z_area` VALUES ('2274', '揭阳市', '广东省 揭阳 揭阳市', '445200', '445201', '44', '52', '01', '3', '2017-05-11 01:50:57', '2018-08-17 14:31:24', 'jieyangshi', 'j');
INSERT INTO `z_area` VALUES ('2275', '榕城区', '广东省 揭阳 榕城区', '445200', '445202', '44', '52', '02', '3', '2017-05-11 01:50:58', '2018-08-17 14:31:24', 'rongchengqu', 'r');
INSERT INTO `z_area` VALUES ('2276', '揭东区', '广东省 揭阳 揭东区', '445200', '445203', '44', '52', '03', '3', '2017-05-11 01:50:58', '2018-08-17 14:31:24', 'jiedongqu', 'j');
INSERT INTO `z_area` VALUES ('2277', '揭西县', '广东省 揭阳 揭西县', '445200', '445222', '44', '52', '22', '3', '2017-05-11 01:50:58', '2018-08-17 14:31:25', 'jiexixian', 'j');
INSERT INTO `z_area` VALUES ('2278', '惠来县', '广东省 揭阳 惠来县', '445200', '445224', '44', '52', '24', '3', '2017-05-11 01:50:58', '2018-08-17 14:31:25', 'huilaixian', 'h');
INSERT INTO `z_area` VALUES ('2279', '普宁市', '广东省 揭阳 普宁市', '445200', '445281', '44', '52', '81', '3', '2017-05-11 01:50:58', '2018-08-17 14:31:25', 'puningshi', 'p');
INSERT INTO `z_area` VALUES ('2280', '云浮', '广东省 云浮', '440000', '445300', '44', '53', '00', '2', '2017-05-11 01:50:58', '2018-08-16 14:22:32', 'yunfu', 'y');
INSERT INTO `z_area` VALUES ('2281', '云浮市', '广东省 云浮 云浮市', '445300', '445301', '44', '53', '01', '3', '2017-05-11 01:50:58', '2018-08-17 14:31:25', 'yunfushi', 'y');
INSERT INTO `z_area` VALUES ('2282', '云城区', '广东省 云浮 云城区', '445300', '445302', '44', '53', '02', '3', '2017-05-11 01:50:59', '2018-08-17 14:31:25', 'yunchengqu', 'y');
INSERT INTO `z_area` VALUES ('2283', '云安区', '广东省 云浮 云安区', '445300', '445303', '44', '53', '03', '3', '2017-05-11 01:50:59', '2018-08-17 14:31:25', 'yunanqu', 'y');
INSERT INTO `z_area` VALUES ('2284', '新兴县', '广东省 云浮 新兴县', '445300', '445321', '44', '53', '21', '3', '2017-05-11 01:50:59', '2018-08-17 14:31:25', 'xinxingxian', 'x');
INSERT INTO `z_area` VALUES ('2285', '郁南县', '广东省 云浮 郁南县', '445300', '445322', '44', '53', '22', '3', '2017-05-11 01:50:59', '2018-08-17 14:31:26', 'yunanxian', 'y');
INSERT INTO `z_area` VALUES ('2286', '罗定市', '广东省 云浮 罗定市', '445300', '445381', '44', '53', '81', '3', '2017-05-11 01:50:59', '2018-08-17 14:31:26', 'luodingshi', 'l');
INSERT INTO `z_area` VALUES ('2287', '广西壮族自治区', '广西壮族自治区', '', '450000', '45', '00', '00', '1', '2017-05-11 01:50:59', '2017-08-28 14:24:14', 'guangxizhuangzuzizhiqu', 'g');
INSERT INTO `z_area` VALUES ('2288', '南宁', '广西壮族自治区 南宁', '450000', '450100', '45', '01', '00', '2', '2017-05-11 01:50:59', '2018-08-16 14:22:33', 'nanning', 'n');
INSERT INTO `z_area` VALUES ('2289', '南宁市', '广西壮族自治区 南宁 南宁市', '450100', '450101', '45', '01', '01', '3', '2017-05-11 01:50:59', '2018-08-17 14:31:26', 'nanningshi', 'n');
INSERT INTO `z_area` VALUES ('2290', '兴宁区', '广西壮族自治区 南宁 兴宁区', '450100', '450102', '45', '01', '02', '3', '2017-05-11 01:51:00', '2018-08-17 14:31:26', 'xingningqu', 'x');
INSERT INTO `z_area` VALUES ('2291', '青秀区', '广西壮族自治区 南宁 青秀区', '450100', '450103', '45', '01', '03', '3', '2017-05-11 01:51:00', '2018-08-17 14:31:26', 'qingxiuqu', 'q');
INSERT INTO `z_area` VALUES ('2292', '江南区', '广西壮族自治区 南宁 江南区', '450100', '450105', '45', '01', '05', '3', '2017-05-11 01:51:00', '2018-08-17 14:31:26', 'jiangnanqu', 'j');
INSERT INTO `z_area` VALUES ('2293', '西乡塘区', '广西壮族自治区 南宁 西乡塘区', '450100', '450107', '45', '01', '07', '3', '2017-05-11 01:51:00', '2018-08-17 14:31:26', 'xixiangtangqu', 'x');
INSERT INTO `z_area` VALUES ('2294', '良庆区', '广西壮族自治区 南宁 良庆区', '450100', '450108', '45', '01', '08', '3', '2017-05-11 01:51:00', '2018-08-17 14:31:27', 'liangqingqu', 'l');
INSERT INTO `z_area` VALUES ('2295', '邕宁区', '广西壮族自治区 南宁 邕宁区', '450100', '450109', '45', '01', '09', '3', '2017-05-11 01:51:00', '2018-08-17 14:31:27', 'yongningqu', 'y');
INSERT INTO `z_area` VALUES ('2296', '武鸣区', '广西壮族自治区 南宁 武鸣区', '450100', '450110', '45', '01', '10', '3', '2017-05-11 01:51:01', '2018-08-17 14:31:27', 'wumingqu', 'w');
INSERT INTO `z_area` VALUES ('2297', '隆安县', '广西壮族自治区 南宁 隆安县', '450100', '450123', '45', '01', '23', '3', '2017-05-11 01:51:01', '2018-08-17 14:31:27', 'longanxian', 'l');
INSERT INTO `z_area` VALUES ('2298', '马山县', '广西壮族自治区 南宁 马山县', '450100', '450124', '45', '01', '24', '3', '2017-05-11 01:51:01', '2018-08-17 14:31:27', 'mashanxian', 'm');
INSERT INTO `z_area` VALUES ('2299', '上林县', '广西壮族自治区 南宁 上林县', '450100', '450125', '45', '01', '25', '3', '2017-05-11 01:51:01', '2018-08-17 14:31:27', 'shanglinxian', 's');
INSERT INTO `z_area` VALUES ('2300', '宾阳县', '广西壮族自治区 南宁 宾阳县', '450100', '450126', '45', '01', '26', '3', '2017-05-11 01:51:01', '2018-08-17 14:31:28', 'binyangxian', 'b');
INSERT INTO `z_area` VALUES ('2301', '横县', '广西壮族自治区 南宁 横县', '450100', '450127', '45', '01', '27', '3', '2017-05-11 01:51:01', '2018-08-17 14:31:28', 'hengxian', 'h');
INSERT INTO `z_area` VALUES ('2302', '柳州', '广西壮族自治区 柳州', '450000', '450200', '45', '02', '00', '2', '2017-05-11 01:51:01', '2018-08-16 14:22:35', 'liuzhou', 'l');
INSERT INTO `z_area` VALUES ('2303', '柳州市', '广西壮族自治区 柳州 柳州市', '450200', '450201', '45', '02', '01', '3', '2017-05-11 01:51:02', '2018-08-17 14:31:28', 'liuzhoushi', 'l');
INSERT INTO `z_area` VALUES ('2304', '城中区', '广西壮族自治区 柳州 城中区', '450200', '450202', '45', '02', '02', '3', '2017-05-11 01:51:02', '2018-08-17 14:31:28', 'chengzhongqu', 'c');
INSERT INTO `z_area` VALUES ('2305', '鱼峰区', '广西壮族自治区 柳州 鱼峰区', '450200', '450203', '45', '02', '03', '3', '2017-05-11 01:51:02', '2018-08-17 14:31:28', 'yufengqu', 'y');
INSERT INTO `z_area` VALUES ('2306', '柳南区', '广西壮族自治区 柳州 柳南区', '450200', '450204', '45', '02', '04', '3', '2017-05-11 01:51:02', '2018-08-17 14:31:28', 'liunanqu', 'l');
INSERT INTO `z_area` VALUES ('2307', '柳北区', '广西壮族自治区 柳州 柳北区', '450200', '450205', '45', '02', '05', '3', '2017-05-11 01:51:02', '2018-08-17 14:31:29', 'liubeiqu', 'l');
INSERT INTO `z_area` VALUES ('2308', '柳江县', '广西壮族自治区 柳州 柳江县', '450200', '450221', '45', '02', '21', '3', '2017-05-11 01:51:02', '2018-08-17 14:31:29', 'liujiangxian', 'l');
INSERT INTO `z_area` VALUES ('2309', '柳城县', '广西壮族自治区 柳州 柳城县', '450200', '450222', '45', '02', '22', '3', '2017-05-11 01:51:03', '2018-08-17 14:31:29', 'liuchengxian', 'l');
INSERT INTO `z_area` VALUES ('2310', '鹿寨县', '广西壮族自治区 柳州 鹿寨县', '450200', '450223', '45', '02', '23', '3', '2017-05-11 01:51:03', '2018-08-17 14:31:29', 'luzhaixian', 'l');
INSERT INTO `z_area` VALUES ('2311', '融安县', '广西壮族自治区 柳州 融安县', '450200', '450224', '45', '02', '24', '3', '2017-05-11 01:51:03', '2018-08-17 14:31:29', 'ronganxian', 'r');
INSERT INTO `z_area` VALUES ('2312', '融水苗族自治县', '广西壮族自治区 柳州 融水苗族自治县', '450200', '450225', '45', '02', '25', '3', '2017-05-11 01:51:03', '2018-08-17 14:31:29', 'rongshuimiaozuzizhixian', 'r');
INSERT INTO `z_area` VALUES ('2313', '三江侗族自治县', '广西壮族自治区 柳州 三江侗族自治县', '450200', '450226', '45', '02', '26', '3', '2017-05-11 01:51:03', '2018-08-17 14:31:29', 'sanjiangdongzuzizhixian', 's');
INSERT INTO `z_area` VALUES ('2314', '桂林', '广西壮族自治区 桂林', '450000', '450300', '45', '03', '00', '2', '2017-05-11 01:51:03', '2018-08-16 14:22:36', 'guilin', 'g');
INSERT INTO `z_area` VALUES ('2315', '桂林市', '广西壮族自治区 桂林 桂林市', '450300', '450301', '45', '03', '01', '3', '2017-05-11 01:51:04', '2018-08-17 14:31:30', 'guilinshi', 'g');
INSERT INTO `z_area` VALUES ('2316', '秀峰区', '广西壮族自治区 桂林 秀峰区', '450300', '450302', '45', '03', '02', '3', '2017-05-11 01:51:04', '2018-08-17 14:31:30', 'xiufengqu', 'x');
INSERT INTO `z_area` VALUES ('2317', '叠彩区', '广西壮族自治区 桂林 叠彩区', '450300', '450303', '45', '03', '03', '3', '2017-05-11 01:51:04', '2018-08-17 14:31:30', 'diecaiqu', 'd');
INSERT INTO `z_area` VALUES ('2318', '象山区', '广西壮族自治区 桂林 象山区', '450300', '450304', '45', '03', '04', '3', '2017-05-11 01:51:04', '2018-08-17 14:31:30', 'xiangshanqu', 'x');
INSERT INTO `z_area` VALUES ('2319', '七星区', '广西壮族自治区 桂林 七星区', '450300', '450305', '45', '03', '05', '3', '2017-05-11 01:51:04', '2018-08-17 14:31:30', 'qixingqu', 'q');
INSERT INTO `z_area` VALUES ('2320', '雁山区', '广西壮族自治区 桂林 雁山区', '450300', '450311', '45', '03', '11', '3', '2017-05-11 01:51:04', '2018-08-17 14:31:30', 'yanshanqu', 'y');
INSERT INTO `z_area` VALUES ('2321', '临桂区', '广西壮族自治区 桂林 临桂区', '450300', '450312', '45', '03', '12', '3', '2017-05-11 01:51:05', '2018-08-17 14:31:30', 'linguiqu', 'l');
INSERT INTO `z_area` VALUES ('2322', '阳朔县', '广西壮族自治区 桂林 阳朔县', '450300', '450321', '45', '03', '21', '3', '2017-05-11 01:51:05', '2018-08-17 14:31:31', 'yangshuoxian', 'y');
INSERT INTO `z_area` VALUES ('2323', '灵川县', '广西壮族自治区 桂林 灵川县', '450300', '450323', '45', '03', '23', '3', '2017-05-11 01:51:05', '2018-08-17 14:31:31', 'lingchuanxian', 'l');
INSERT INTO `z_area` VALUES ('2324', '全州县', '广西壮族自治区 桂林 全州县', '450300', '450324', '45', '03', '24', '3', '2017-05-11 01:51:05', '2018-08-17 14:31:31', 'quanzhouxian', 'q');
INSERT INTO `z_area` VALUES ('2325', '兴安县', '广西壮族自治区 桂林 兴安县', '450300', '450325', '45', '03', '25', '3', '2017-05-11 01:51:05', '2018-08-17 14:31:31', 'xinganxian', 'x');
INSERT INTO `z_area` VALUES ('2326', '永福县', '广西壮族自治区 桂林 永福县', '450300', '450326', '45', '03', '26', '3', '2017-05-11 01:51:05', '2018-08-17 14:31:31', 'yongfuxian', 'y');
INSERT INTO `z_area` VALUES ('2327', '灌阳县', '广西壮族自治区 桂林 灌阳县', '450300', '450327', '45', '03', '27', '3', '2017-05-11 01:51:06', '2018-08-17 14:31:31', 'guanyangxian', 'g');
INSERT INTO `z_area` VALUES ('2328', '龙胜各族自治县', '广西壮族自治区 桂林 龙胜各族自治县', '450300', '450328', '45', '03', '28', '3', '2017-05-11 01:51:06', '2018-08-17 14:31:31', 'longshenggezuzizhixian', 'l');
INSERT INTO `z_area` VALUES ('2329', '资源县', '广西壮族自治区 桂林 资源县', '450300', '450329', '45', '03', '29', '3', '2017-05-11 01:51:06', '2018-08-17 14:31:31', 'ziyuanxian', 'z');
INSERT INTO `z_area` VALUES ('2330', '平乐县', '广西壮族自治区 桂林 平乐县', '450300', '450330', '45', '03', '30', '3', '2017-05-11 01:51:06', '2018-08-17 14:31:32', 'pinglexian', 'p');
INSERT INTO `z_area` VALUES ('2331', '荔浦县', '广西壮族自治区 桂林 荔浦县', '450300', '450331', '45', '03', '31', '3', '2017-05-11 01:51:06', '2018-08-17 14:31:32', 'lipuxian', 'l');
INSERT INTO `z_area` VALUES ('2332', '恭城瑶族自治县', '广西壮族自治区 桂林 恭城瑶族自治县', '450300', '450332', '45', '03', '32', '3', '2017-05-11 01:51:06', '2018-08-17 14:31:32', 'gongchengyaozuzizhixian', 'g');
INSERT INTO `z_area` VALUES ('2333', '梧州', '广西壮族自治区 梧州', '450000', '450400', '45', '04', '00', '2', '2017-05-11 01:51:06', '2018-08-16 14:22:39', 'wuzhou', 'w');
INSERT INTO `z_area` VALUES ('2334', '梧州市', '广西壮族自治区 梧州 梧州市', '450400', '450401', '45', '04', '01', '3', '2017-05-11 01:51:07', '2018-08-17 14:31:32', 'wuzhoushi', 'w');
INSERT INTO `z_area` VALUES ('2335', '万秀区', '广西壮族自治区 梧州 万秀区', '450400', '450403', '45', '04', '03', '3', '2017-05-11 01:51:07', '2018-08-17 14:31:32', 'wanxiuqu', 'w');
INSERT INTO `z_area` VALUES ('2336', '长洲区', '广西壮族自治区 梧州 长洲区', '450400', '450405', '45', '04', '05', '3', '2017-05-11 01:51:07', '2018-08-17 14:31:32', 'changzhouqu', 'c');
INSERT INTO `z_area` VALUES ('2337', '龙圩区', '广西壮族自治区 梧州 龙圩区', '450400', '450406', '45', '04', '06', '3', '2017-05-11 01:51:07', '2018-08-17 14:31:33', 'longweiqu', 'l');
INSERT INTO `z_area` VALUES ('2338', '苍梧县', '广西壮族自治区 梧州 苍梧县', '450400', '450421', '45', '04', '21', '3', '2017-05-11 01:51:07', '2018-08-17 14:31:33', 'cangwuxian', 'c');
INSERT INTO `z_area` VALUES ('2339', '藤县', '广西壮族自治区 梧州 藤县', '450400', '450422', '45', '04', '22', '3', '2017-05-11 01:51:07', '2018-08-17 14:31:33', 'tengxian', 't');
INSERT INTO `z_area` VALUES ('2340', '蒙山县', '广西壮族自治区 梧州 蒙山县', '450400', '450423', '45', '04', '23', '3', '2017-05-11 01:51:08', '2018-08-17 14:31:33', 'mengshanxian', 'm');
INSERT INTO `z_area` VALUES ('2341', '岑溪市', '广西壮族自治区 梧州 岑溪市', '450400', '450481', '45', '04', '81', '3', '2017-05-11 01:51:08', '2018-08-17 14:31:33', 'cenxishi', 'c');
INSERT INTO `z_area` VALUES ('2342', '北海', '广西壮族自治区 北海', '450000', '450500', '45', '05', '00', '2', '2017-05-11 01:51:08', '2018-08-16 14:22:40', 'beihai', 'b');
INSERT INTO `z_area` VALUES ('2343', '北海市', '广西壮族自治区 北海 北海市', '450500', '450501', '45', '05', '01', '3', '2017-05-11 01:51:08', '2018-08-17 14:31:33', 'beihaishi', 'b');
INSERT INTO `z_area` VALUES ('2344', '海城区', '广西壮族自治区 北海 海城区', '450500', '450502', '45', '05', '02', '3', '2017-05-11 01:51:08', '2018-08-17 14:31:33', 'haichengqu', 'h');
INSERT INTO `z_area` VALUES ('2345', '银海区', '广西壮族自治区 北海 银海区', '450500', '450503', '45', '05', '03', '3', '2017-05-11 01:51:08', '2018-08-17 14:31:33', 'yinhaiqu', 'y');
INSERT INTO `z_area` VALUES ('2346', '铁山港区', '广西壮族自治区 北海 铁山港区', '450500', '450512', '45', '05', '12', '3', '2017-05-11 01:51:08', '2018-08-17 14:31:34', 'tieshangangqu', 't');
INSERT INTO `z_area` VALUES ('2347', '合浦县', '广西壮族自治区 北海 合浦县', '450500', '450521', '45', '05', '21', '3', '2017-05-11 01:51:09', '2018-08-17 14:31:34', 'hepuxian', 'h');
INSERT INTO `z_area` VALUES ('2348', '防城港', '广西壮族自治区 防城港', '450000', '450600', '45', '06', '00', '2', '2017-05-11 01:51:09', '2018-08-16 14:22:41', 'fangchenggang', 'f');
INSERT INTO `z_area` VALUES ('2349', '防城港市', '广西壮族自治区 防城港 防城港市', '450600', '450601', '45', '06', '01', '3', '2017-05-11 01:51:09', '2018-08-17 14:31:34', 'fangchenggangshi', 'f');
INSERT INTO `z_area` VALUES ('2350', '港口区', '广西壮族自治区 防城港 港口区', '450600', '450602', '45', '06', '02', '3', '2017-05-11 01:51:09', '2018-08-17 14:31:34', 'gangkouqu', 'g');
INSERT INTO `z_area` VALUES ('2351', '防城区', '广西壮族自治区 防城港 防城区', '450600', '450603', '45', '06', '03', '3', '2017-05-11 01:51:09', '2018-08-17 14:31:34', 'fangchengqu', 'f');
INSERT INTO `z_area` VALUES ('2352', '上思县', '广西壮族自治区 防城港 上思县', '450600', '450621', '45', '06', '21', '3', '2017-05-11 01:51:09', '2018-08-17 14:31:34', 'shangsixian', 's');
INSERT INTO `z_area` VALUES ('2353', '东兴市', '广西壮族自治区 防城港 东兴市', '450600', '450681', '45', '06', '81', '3', '2017-05-11 01:51:10', '2018-08-17 14:31:34', 'dongxingshi', 'd');
INSERT INTO `z_area` VALUES ('2354', '钦州', '广西壮族自治区 钦州', '450000', '450700', '45', '07', '00', '2', '2017-05-11 01:51:10', '2018-08-16 14:22:41', 'qinzhou', 'q');
INSERT INTO `z_area` VALUES ('2355', '钦州市', '广西壮族自治区 钦州 钦州市', '450700', '450701', '45', '07', '01', '3', '2017-05-11 01:51:10', '2018-08-17 14:31:35', 'qinzhoushi', 'q');
INSERT INTO `z_area` VALUES ('2356', '钦南区', '广西壮族自治区 钦州 钦南区', '450700', '450702', '45', '07', '02', '3', '2017-05-11 01:51:10', '2018-08-17 14:31:35', 'qinnanqu', 'q');
INSERT INTO `z_area` VALUES ('2357', '钦北区', '广西壮族自治区 钦州 钦北区', '450700', '450703', '45', '07', '03', '3', '2017-05-11 01:51:10', '2018-08-17 14:31:35', 'qinbeiqu', 'q');
INSERT INTO `z_area` VALUES ('2358', '灵山县', '广西壮族自治区 钦州 灵山县', '450700', '450721', '45', '07', '21', '3', '2017-05-11 01:51:10', '2018-08-17 14:31:35', 'lingshanxian', 'l');
INSERT INTO `z_area` VALUES ('2359', '浦北县', '广西壮族自治区 钦州 浦北县', '450700', '450722', '45', '07', '22', '3', '2017-05-11 01:51:10', '2018-08-17 14:31:35', 'pubeixian', 'p');
INSERT INTO `z_area` VALUES ('2360', '贵港', '广西壮族自治区 贵港', '450000', '450800', '45', '08', '00', '2', '2017-05-11 01:51:11', '2018-08-16 14:22:42', 'guigang', 'g');
INSERT INTO `z_area` VALUES ('2361', '贵港市', '广西壮族自治区 贵港 贵港市', '450800', '450801', '45', '08', '01', '3', '2017-05-11 01:51:11', '2018-08-17 14:31:35', 'guigangshi', 'g');
INSERT INTO `z_area` VALUES ('2362', '港北区', '广西壮族自治区 贵港 港北区', '450800', '450802', '45', '08', '02', '3', '2017-05-11 01:51:11', '2018-08-17 14:31:35', 'gangbeiqu', 'g');
INSERT INTO `z_area` VALUES ('2363', '港南区', '广西壮族自治区 贵港 港南区', '450800', '450803', '45', '08', '03', '3', '2017-05-11 01:51:11', '2018-08-17 14:31:36', 'gangnanqu', 'g');
INSERT INTO `z_area` VALUES ('2364', '覃塘区', '广西壮族自治区 贵港 覃塘区', '450800', '450804', '45', '08', '04', '3', '2017-05-11 01:51:11', '2018-08-17 14:31:36', 'tantangqu', 't');
INSERT INTO `z_area` VALUES ('2365', '平南县', '广西壮族自治区 贵港 平南县', '450800', '450821', '45', '08', '21', '3', '2017-05-11 01:51:11', '2018-08-17 14:31:36', 'pingnanxian', 'p');
INSERT INTO `z_area` VALUES ('2366', '桂平市', '广西壮族自治区 贵港 桂平市', '450800', '450881', '45', '08', '81', '3', '2017-05-11 01:51:11', '2018-08-17 14:31:36', 'guipingshi', 'g');
INSERT INTO `z_area` VALUES ('2367', '玉林', '广西壮族自治区 玉林', '450000', '450900', '45', '09', '00', '2', '2017-05-11 01:51:12', '2018-08-16 14:22:43', 'yulin', 'y');
INSERT INTO `z_area` VALUES ('2368', '玉林市', '广西壮族自治区 玉林 玉林市', '450900', '450901', '45', '09', '01', '3', '2017-05-11 01:51:12', '2018-08-17 14:31:36', 'yulinshi', 'y');
INSERT INTO `z_area` VALUES ('2369', '玉州区', '广西壮族自治区 玉林 玉州区', '450900', '450902', '45', '09', '02', '3', '2017-05-11 01:51:12', '2018-08-17 14:31:36', 'yuzhouqu', 'y');
INSERT INTO `z_area` VALUES ('2370', '福绵区', '广西壮族自治区 玉林 福绵区', '450900', '450903', '45', '09', '03', '3', '2017-05-11 01:51:12', '2018-08-17 14:31:36', 'fumianqu', 'f');
INSERT INTO `z_area` VALUES ('2371', '容县', '广西壮族自治区 玉林 容县', '450900', '450921', '45', '09', '21', '3', '2017-05-11 01:51:13', '2018-08-17 14:31:37', 'rongxian', 'r');
INSERT INTO `z_area` VALUES ('2372', '陆川县', '广西壮族自治区 玉林 陆川县', '450900', '450922', '45', '09', '22', '3', '2017-05-11 01:51:13', '2018-08-17 14:31:37', 'luchuanxian', 'l');
INSERT INTO `z_area` VALUES ('2373', '博白县', '广西壮族自治区 玉林 博白县', '450900', '450923', '45', '09', '23', '3', '2017-05-11 01:51:13', '2018-08-17 14:31:37', 'bobaixian', 'b');
INSERT INTO `z_area` VALUES ('2374', '兴业县', '广西壮族自治区 玉林 兴业县', '450900', '450924', '45', '09', '24', '3', '2017-05-11 01:51:13', '2018-08-17 14:31:37', 'xingyexian', 'x');
INSERT INTO `z_area` VALUES ('2375', '北流市', '广西壮族自治区 玉林 北流市', '450900', '450981', '45', '09', '81', '3', '2017-05-11 01:51:14', '2018-08-17 14:31:37', 'beiliushi', 'b');
INSERT INTO `z_area` VALUES ('2376', '百色', '广西壮族自治区 百色', '450000', '451000', '45', '10', '00', '2', '2017-05-11 01:51:14', '2018-08-16 14:22:44', 'baise', 'b');
INSERT INTO `z_area` VALUES ('2377', '百色市', '广西壮族自治区 百色 百色市', '451000', '451001', '45', '10', '01', '3', '2017-05-11 01:51:14', '2018-08-17 14:31:37', 'baiseshi', 'b');
INSERT INTO `z_area` VALUES ('2378', '右江区', '广西壮族自治区 百色 右江区', '451000', '451002', '45', '10', '02', '3', '2017-05-11 01:51:14', '2018-08-17 14:31:38', 'youjiangqu', 'y');
INSERT INTO `z_area` VALUES ('2379', '田阳县', '广西壮族自治区 百色 田阳县', '451000', '451021', '45', '10', '21', '3', '2017-05-11 01:51:14', '2018-08-17 14:31:38', 'tianyangxian', 't');
INSERT INTO `z_area` VALUES ('2380', '田东县', '广西壮族自治区 百色 田东县', '451000', '451022', '45', '10', '22', '3', '2017-05-11 01:51:14', '2018-08-17 14:31:38', 'tiandongxian', 't');
INSERT INTO `z_area` VALUES ('2381', '平果县', '广西壮族自治区 百色 平果县', '451000', '451023', '45', '10', '23', '3', '2017-05-11 01:51:14', '2018-08-17 14:31:38', 'pingguoxian', 'p');
INSERT INTO `z_area` VALUES ('2382', '德保县', '广西壮族自治区 百色 德保县', '451000', '451024', '45', '10', '24', '3', '2017-05-11 01:51:15', '2018-08-17 14:31:38', 'debaoxian', 'd');
INSERT INTO `z_area` VALUES ('2383', '那坡县', '广西壮族自治区 百色 那坡县', '451000', '451026', '45', '10', '26', '3', '2017-05-11 01:51:15', '2018-08-17 14:31:38', 'napoxian', 'n');
INSERT INTO `z_area` VALUES ('2384', '凌云县', '广西壮族自治区 百色 凌云县', '451000', '451027', '45', '10', '27', '3', '2017-05-11 01:51:15', '2018-08-17 14:31:38', 'lingyunxian', 'l');
INSERT INTO `z_area` VALUES ('2385', '乐业县', '广西壮族自治区 百色 乐业县', '451000', '451028', '45', '10', '28', '3', '2017-05-11 01:51:15', '2018-08-17 14:31:38', 'leyexian', 'l');
INSERT INTO `z_area` VALUES ('2386', '田林县', '广西壮族自治区 百色 田林县', '451000', '451029', '45', '10', '29', '3', '2017-05-11 01:51:15', '2018-08-17 14:31:39', 'tianlinxian', 't');
INSERT INTO `z_area` VALUES ('2387', '西林县', '广西壮族自治区 百色 西林县', '451000', '451030', '45', '10', '30', '3', '2017-05-11 01:51:15', '2018-08-17 14:31:39', 'xilinxian', 'x');
INSERT INTO `z_area` VALUES ('2388', '隆林各族自治县', '广西壮族自治区 百色 隆林各族自治县', '451000', '451031', '45', '10', '31', '3', '2017-05-11 01:51:16', '2018-08-17 14:31:39', 'longlingezuzizhixian', 'l');
INSERT INTO `z_area` VALUES ('2389', '靖西市', '广西壮族自治区 百色 靖西市', '451000', '451081', '45', '10', '81', '3', '2017-05-11 01:51:16', '2018-08-17 14:31:39', 'jingxishi', 'j');
INSERT INTO `z_area` VALUES ('2390', '贺州', '广西壮族自治区 贺州', '450000', '451100', '45', '11', '00', '2', '2017-05-11 01:51:16', '2018-08-16 14:22:46', 'hezhou', 'h');
INSERT INTO `z_area` VALUES ('2391', '贺州市', '广西壮族自治区 贺州 贺州市', '451100', '451101', '45', '11', '01', '3', '2017-05-11 01:51:16', '2018-08-17 14:31:39', 'hezhoushi', 'h');
INSERT INTO `z_area` VALUES ('2392', '八步区', '广西壮族自治区 贺州 八步区', '451100', '451102', '45', '11', '02', '3', '2017-05-11 01:51:16', '2018-08-17 14:31:39', 'babuqu', 'b');
INSERT INTO `z_area` VALUES ('2393', '昭平县', '广西壮族自治区 贺州 昭平县', '451100', '451121', '45', '11', '21', '3', '2017-05-11 01:51:16', '2018-08-17 14:31:40', 'zhaopingxian', 'z');
INSERT INTO `z_area` VALUES ('2394', '钟山县', '广西壮族自治区 贺州 钟山县', '451100', '451122', '45', '11', '22', '3', '2017-05-11 01:51:16', '2018-08-17 14:31:40', 'zhongshanxian', 'z');
INSERT INTO `z_area` VALUES ('2395', '富川瑶族自治县', '广西壮族自治区 贺州 富川瑶族自治县', '451100', '451123', '45', '11', '23', '3', '2017-05-11 01:51:17', '2018-08-17 14:31:40', 'fuchuanyaozuzizhixian', 'f');
INSERT INTO `z_area` VALUES ('2396', '河池', '广西壮族自治区 河池', '450000', '451200', '45', '12', '00', '2', '2017-05-11 01:51:17', '2018-08-16 14:22:47', 'hechi', 'h');
INSERT INTO `z_area` VALUES ('2397', '河池市', '广西壮族自治区 河池 河池市', '451200', '451201', '45', '12', '01', '3', '2017-05-11 01:51:17', '2018-08-17 14:31:40', 'hechishi', 'h');
INSERT INTO `z_area` VALUES ('2398', '金城江区', '广西壮族自治区 河池 金城江区', '451200', '451202', '45', '12', '02', '3', '2017-05-11 01:51:17', '2018-08-17 14:31:40', 'jinchengjiangqu', 'j');
INSERT INTO `z_area` VALUES ('2399', '南丹县', '广西壮族自治区 河池 南丹县', '451200', '451221', '45', '12', '21', '3', '2017-05-11 01:51:17', '2018-08-17 14:31:40', 'nandanxian', 'n');
INSERT INTO `z_area` VALUES ('2400', '天峨县', '广西壮族自治区 河池 天峨县', '451200', '451222', '45', '12', '22', '3', '2017-05-11 01:51:17', '2018-08-17 14:31:41', 'tianexian', 't');
INSERT INTO `z_area` VALUES ('2401', '凤山县', '广西壮族自治区 河池 凤山县', '451200', '451223', '45', '12', '23', '3', '2017-05-11 01:51:17', '2018-08-17 14:31:41', 'fengshanxian', 'f');
INSERT INTO `z_area` VALUES ('2402', '东兰县', '广西壮族自治区 河池 东兰县', '451200', '451224', '45', '12', '24', '3', '2017-05-11 01:51:18', '2018-08-17 14:31:41', 'donglanxian', 'd');
INSERT INTO `z_area` VALUES ('2403', '罗城仫佬族自治县', '广西壮族自治区 河池 罗城仫佬族自治县', '451200', '451225', '45', '12', '25', '3', '2017-05-11 01:51:18', '2018-08-17 14:31:41', 'luochengmulaozuzizhixian', 'l');
INSERT INTO `z_area` VALUES ('2404', '环江毛南族自治县', '广西壮族自治区 河池 环江毛南族自治县', '451200', '451226', '45', '12', '26', '3', '2017-05-11 01:51:18', '2018-08-17 14:31:41', 'huanjiangmaonanzuzizhixian', 'h');
INSERT INTO `z_area` VALUES ('2405', '巴马瑶族自治县', '广西壮族自治区 河池 巴马瑶族自治县', '451200', '451227', '45', '12', '27', '3', '2017-05-11 01:51:18', '2018-08-17 14:31:41', 'bamayaozuzizhixian', 'b');
INSERT INTO `z_area` VALUES ('2406', '都安瑶族自治县', '广西壮族自治区 河池 都安瑶族自治县', '451200', '451228', '45', '12', '28', '3', '2017-05-11 01:51:18', '2018-08-17 14:31:41', 'douanyaozuzizhixian', 'd');
INSERT INTO `z_area` VALUES ('2407', '大化瑶族自治县', '广西壮族自治区 河池 大化瑶族自治县', '451200', '451229', '45', '12', '29', '3', '2017-05-11 01:51:18', '2018-08-17 14:31:41', 'dahuayaozuzizhixian', 'd');
INSERT INTO `z_area` VALUES ('2408', '宜州市', '广西壮族自治区 河池 宜州市', '451200', '451281', '45', '12', '81', '3', '2017-05-11 01:51:19', '2018-08-17 14:31:42', 'yizhoushi', 'y');
INSERT INTO `z_area` VALUES ('2409', '来宾', '广西壮族自治区 来宾', '450000', '451300', '45', '13', '00', '2', '2017-05-11 01:51:19', '2018-08-16 14:22:48', 'laibin', 'l');
INSERT INTO `z_area` VALUES ('2410', '来宾市', '广西壮族自治区 来宾 来宾市', '451300', '451301', '45', '13', '01', '3', '2017-05-11 01:51:19', '2018-08-17 14:31:42', 'laibinshi', 'l');
INSERT INTO `z_area` VALUES ('2411', '兴宾区', '广西壮族自治区 来宾 兴宾区', '451300', '451302', '45', '13', '02', '3', '2017-05-11 01:51:19', '2018-08-17 14:31:42', 'xingbinqu', 'x');
INSERT INTO `z_area` VALUES ('2412', '忻城县', '广西壮族自治区 来宾 忻城县', '451300', '451321', '45', '13', '21', '3', '2017-05-11 01:51:19', '2018-08-17 14:31:42', 'xinchengxian', 'x');
INSERT INTO `z_area` VALUES ('2413', '象州县', '广西壮族自治区 来宾 象州县', '451300', '451322', '45', '13', '22', '3', '2017-05-11 01:51:19', '2018-08-17 14:31:42', 'xiangzhouxian', 'x');
INSERT INTO `z_area` VALUES ('2414', '武宣县', '广西壮族自治区 来宾 武宣县', '451300', '451323', '45', '13', '23', '3', '2017-05-11 01:51:20', '2018-08-17 14:31:42', 'wuxuanxian', 'w');
INSERT INTO `z_area` VALUES ('2415', '金秀瑶族自治县', '广西壮族自治区 来宾 金秀瑶族自治县', '451300', '451324', '45', '13', '24', '3', '2017-05-11 01:51:20', '2018-08-17 14:31:42', 'jinxiuyaozuzizhixian', 'j');
INSERT INTO `z_area` VALUES ('2416', '合山市', '广西壮族自治区 来宾 合山市', '451300', '451381', '45', '13', '81', '3', '2017-05-11 01:51:20', '2018-08-17 14:31:43', 'heshanshi', 'h');
INSERT INTO `z_area` VALUES ('2417', '崇左', '广西壮族自治区 崇左', '450000', '451400', '45', '14', '00', '2', '2017-05-11 01:51:20', '2018-08-16 14:22:49', 'chongzuo', 'c');
INSERT INTO `z_area` VALUES ('2418', '崇左市', '广西壮族自治区 崇左 崇左市', '451400', '451401', '45', '14', '01', '3', '2017-05-11 01:51:20', '2018-08-17 14:31:43', 'chongzuoshi', 'c');
INSERT INTO `z_area` VALUES ('2419', '江州区', '广西壮族自治区 崇左 江州区', '451400', '451402', '45', '14', '02', '3', '2017-05-11 01:51:20', '2018-08-17 14:31:43', 'jiangzhouqu', 'j');
INSERT INTO `z_area` VALUES ('2420', '扶绥县', '广西壮族自治区 崇左 扶绥县', '451400', '451421', '45', '14', '21', '3', '2017-05-11 01:51:21', '2018-08-17 14:31:43', 'fusuixian', 'f');
INSERT INTO `z_area` VALUES ('2421', '宁明县', '广西壮族自治区 崇左 宁明县', '451400', '451422', '45', '14', '22', '3', '2017-05-11 01:51:21', '2018-08-17 14:31:43', 'ningmingxian', 'n');
INSERT INTO `z_area` VALUES ('2422', '龙州县', '广西壮族自治区 崇左 龙州县', '451400', '451423', '45', '14', '23', '3', '2017-05-11 01:51:21', '2018-08-17 14:31:43', 'longzhouxian', 'l');
INSERT INTO `z_area` VALUES ('2423', '大新县', '广西壮族自治区 崇左 大新县', '451400', '451424', '45', '14', '24', '3', '2017-05-11 01:51:21', '2018-08-17 14:31:43', 'daxinxian', 'd');
INSERT INTO `z_area` VALUES ('2424', '天等县', '广西壮族自治区 崇左 天等县', '451400', '451425', '45', '14', '25', '3', '2017-05-11 01:51:21', '2018-08-17 14:31:44', 'tiandengxian', 't');
INSERT INTO `z_area` VALUES ('2425', '凭祥市', '广西壮族自治区 崇左 凭祥市', '451400', '451481', '45', '14', '81', '3', '2017-05-11 01:51:21', '2018-08-17 14:31:44', 'pingxiangshi', 'p');
INSERT INTO `z_area` VALUES ('2426', '海南省', '海南省', '', '460000', '46', '00', '00', '1', '2017-05-11 01:51:21', '2017-08-28 14:24:24', 'hainansheng', 'h');
INSERT INTO `z_area` VALUES ('2427', '海口', '海南省 海口', '460000', '460100', '46', '01', '00', '2', '2017-05-11 01:51:22', '2018-08-16 14:22:50', 'haikou', 'h');
INSERT INTO `z_area` VALUES ('2428', '海口市', '海南省 海口 海口市', '460100', '460101', '46', '01', '01', '3', '2017-05-11 01:51:22', '2018-08-17 14:31:44', 'haikoushi', 'h');
INSERT INTO `z_area` VALUES ('2429', '秀英区', '海南省 海口 秀英区', '460100', '460105', '46', '01', '05', '3', '2017-05-11 01:51:22', '2018-08-17 14:31:44', 'xiuyingqu', 'x');
INSERT INTO `z_area` VALUES ('2430', '龙华区', '海南省 海口 龙华区', '460100', '460106', '46', '01', '06', '3', '2017-05-11 01:51:22', '2018-08-17 14:31:44', 'longhuaqu', 'l');
INSERT INTO `z_area` VALUES ('2431', '琼山区', '海南省 海口 琼山区', '460100', '460107', '46', '01', '07', '3', '2017-05-11 01:51:22', '2018-08-17 14:31:44', 'qiongshanqu', 'q');
INSERT INTO `z_area` VALUES ('2432', '美兰区', '海南省 海口 美兰区', '460100', '460108', '46', '01', '08', '3', '2017-05-11 01:51:22', '2018-08-17 14:31:44', 'meilanqu', 'm');
INSERT INTO `z_area` VALUES ('2433', '三亚', '海南省 三亚', '460000', '460200', '46', '02', '00', '2', '2017-05-11 01:51:22', '2018-08-16 14:22:51', 'sanya', 's');
INSERT INTO `z_area` VALUES ('2434', '三亚市', '海南省 三亚 三亚市', '460200', '460201', '46', '02', '01', '3', '2017-05-11 01:51:23', '2018-08-17 14:31:45', 'sanyashi', 's');
INSERT INTO `z_area` VALUES ('2435', '海棠区', '海南省 三亚 海棠区', '460200', '460202', '46', '02', '02', '3', '2017-05-11 01:51:23', '2018-08-17 14:31:45', 'haitangqu', 'h');
INSERT INTO `z_area` VALUES ('2436', '吉阳区', '海南省 三亚 吉阳区', '460200', '460203', '46', '02', '03', '3', '2017-05-11 01:51:23', '2018-08-17 14:31:45', 'jiyangqu', 'j');
INSERT INTO `z_area` VALUES ('2437', '天涯区', '海南省 三亚 天涯区', '460200', '460204', '46', '02', '04', '3', '2017-05-11 01:51:23', '2018-08-17 14:31:45', 'tianyaqu', 't');
INSERT INTO `z_area` VALUES ('2438', '崖州区', '海南省 三亚 崖州区', '460200', '460205', '46', '02', '05', '3', '2017-05-11 01:51:23', '2018-08-17 14:31:45', 'yazhouqu', 'y');
INSERT INTO `z_area` VALUES ('2439', '三沙市', '海南省 三沙市', '460000', '460300', '46', '03', '00', '2', '2017-05-11 01:51:23', '2018-08-16 14:22:52', 'sanshashi', 's');
INSERT INTO `z_area` VALUES ('2440', '西沙群岛', '海南省 三沙市 西沙群岛', '460300', '460321', '46', '03', '21', '3', '2017-05-11 01:51:23', '2018-08-17 14:31:45', 'xishaqundao', 'x');
INSERT INTO `z_area` VALUES ('2441', '南沙群岛', '海南省 三沙市 南沙群岛', '460300', '460322', '46', '03', '22', '3', '2017-05-11 01:51:24', '2018-08-17 14:31:45', 'nanshaqundao', 'n');
INSERT INTO `z_area` VALUES ('2442', '中沙群岛的岛礁及其海域', '海南省 三沙市 中沙群岛的岛礁及其海域', '460300', '460323', '46', '03', '23', '3', '2017-05-11 01:51:24', '2018-08-17 14:31:46', 'zhongshaqundaodedaojiaojiqihaiyu', 'z');
INSERT INTO `z_area` VALUES ('2443', '省直辖县级行政区划', '海南省 省直辖县级行政区划', '460000', '469000', '46', '90', '00', '2', '2017-05-11 01:51:24', '2018-08-16 14:22:52', 'shengzhixiaxianjixingzhengquhua', 's');
INSERT INTO `z_area` VALUES ('2444', '五指山市', '海南省 省直辖县级行政区划 五指山市', '469000', '469001', '46', '90', '01', '3', '2017-05-11 01:51:24', '2018-08-17 14:31:46', 'wuzhishanshi', 'w');
INSERT INTO `z_area` VALUES ('2445', '琼海市', '海南省 省直辖县级行政区划 琼海市', '469000', '469002', '46', '90', '02', '3', '2017-05-11 01:51:24', '2018-08-17 14:31:46', 'qionghaishi', 'q');
INSERT INTO `z_area` VALUES ('2446', '儋州市', '海南省 省直辖县级行政区划 儋州市', '469000', '469003', '46', '90', '03', '3', '2017-05-11 01:51:24', '2018-08-17 14:31:46', 'danzhoushi', 'd');
INSERT INTO `z_area` VALUES ('2447', '文昌市', '海南省 省直辖县级行政区划 文昌市', '469000', '469005', '46', '90', '05', '3', '2017-05-11 01:51:24', '2018-08-17 14:31:46', 'wenchangshi', 'w');
INSERT INTO `z_area` VALUES ('2448', '万宁市', '海南省 省直辖县级行政区划 万宁市', '469000', '469006', '46', '90', '06', '3', '2017-05-11 01:51:25', '2018-08-17 14:31:46', 'wanningshi', 'w');
INSERT INTO `z_area` VALUES ('2449', '东方市', '海南省 省直辖县级行政区划 东方市', '469000', '469007', '46', '90', '07', '3', '2017-05-11 01:51:25', '2018-08-17 14:31:46', 'dongfangshi', 'd');
INSERT INTO `z_area` VALUES ('2450', '定安县', '海南省 省直辖县级行政区划 定安县', '469000', '469021', '46', '90', '21', '3', '2017-05-11 01:51:25', '2018-08-17 14:31:47', 'dinganxian', 'd');
INSERT INTO `z_area` VALUES ('2451', '屯昌县', '海南省 省直辖县级行政区划 屯昌县', '469000', '469022', '46', '90', '22', '3', '2017-05-11 01:51:25', '2018-08-17 14:31:47', 'tunchangxian', 't');
INSERT INTO `z_area` VALUES ('2452', '澄迈县', '海南省 省直辖县级行政区划 澄迈县', '469000', '469023', '46', '90', '23', '3', '2017-05-11 01:51:25', '2018-08-17 14:31:47', 'chengmaixian', 'c');
INSERT INTO `z_area` VALUES ('2453', '临高县', '海南省 省直辖县级行政区划 临高县', '469000', '469024', '46', '90', '24', '3', '2017-05-11 01:51:25', '2018-08-17 14:31:47', 'lingaoxian', 'l');
INSERT INTO `z_area` VALUES ('2454', '白沙黎族自治县', '海南省 省直辖县级行政区划 白沙黎族自治县', '469000', '469025', '46', '90', '25', '3', '2017-05-11 01:51:26', '2018-08-17 14:31:47', 'baishalizuzizhixian', 'b');
INSERT INTO `z_area` VALUES ('2455', '昌江黎族自治县', '海南省 省直辖县级行政区划 昌江黎族自治县', '469000', '469026', '46', '90', '26', '3', '2017-05-11 01:51:26', '2018-08-17 14:31:47', 'changjianglizuzizhixian', 'c');
INSERT INTO `z_area` VALUES ('2456', '乐东黎族自治县', '海南省 省直辖县级行政区划 乐东黎族自治县', '469000', '469027', '46', '90', '27', '3', '2017-05-11 01:51:26', '2018-08-17 14:31:47', 'ledonglizuzizhixian', 'l');
INSERT INTO `z_area` VALUES ('2457', '陵水黎族自治县', '海南省 省直辖县级行政区划 陵水黎族自治县', '469000', '469028', '46', '90', '28', '3', '2017-05-11 01:51:26', '2018-08-17 14:31:48', 'lingshuilizuzizhixian', 'l');
INSERT INTO `z_area` VALUES ('2458', '保亭黎族苗族自治县', '海南省 省直辖县级行政区划 保亭黎族苗族自治县', '469000', '469029', '46', '90', '29', '3', '2017-05-11 01:51:26', '2018-08-17 14:31:48', 'baotinglizumiaozuzizhixian', 'b');
INSERT INTO `z_area` VALUES ('2459', '琼中黎族苗族自治县', '海南省 省直辖县级行政区划 琼中黎族苗族自治县', '469000', '469030', '46', '90', '30', '3', '2017-05-11 01:51:26', '2018-08-17 14:31:48', 'qiongzhonglizumiaozuzizhixian', 'q');
INSERT INTO `z_area` VALUES ('2460', '重庆', '重庆', '', '500000', '50', '00', '00', '1', '2017-05-11 01:51:26', '2017-08-28 14:24:26', 'zhongqing', 'z');
INSERT INTO `z_area` VALUES ('2461', '重庆市', '重庆 重庆市', '500000', '500100', '50', '01', '00', '2', '2017-05-11 01:51:26', '2018-08-16 14:22:55', 'zhongqingshi', 'z');
INSERT INTO `z_area` VALUES ('2462', '万州区', '重庆 重庆市 万州区', '500100', '500101', '50', '01', '01', '3', '2017-05-11 01:51:27', '2018-08-17 14:31:48', 'wanzhouqu', 'w');
INSERT INTO `z_area` VALUES ('2463', '涪陵区', '重庆 重庆市 涪陵区', '500100', '500102', '50', '01', '02', '3', '2017-05-11 01:51:27', '2018-08-17 14:31:48', 'fulingqu', 'f');
INSERT INTO `z_area` VALUES ('2464', '渝中区', '重庆 重庆市 渝中区', '500100', '500103', '50', '01', '03', '3', '2017-05-11 01:51:27', '2018-08-17 14:31:48', 'yuzhongqu', 'y');
INSERT INTO `z_area` VALUES ('2465', '大渡口区', '重庆 重庆市 大渡口区', '500100', '500104', '50', '01', '04', '3', '2017-05-11 01:51:27', '2018-08-17 14:31:48', 'dadukouqu', 'd');
INSERT INTO `z_area` VALUES ('2466', '江北区', '重庆 重庆市 江北区', '500100', '500105', '50', '01', '05', '3', '2017-05-11 01:51:27', '2018-08-17 14:31:49', 'jiangbeiqu', 'j');
INSERT INTO `z_area` VALUES ('2467', '沙坪坝区', '重庆 重庆市 沙坪坝区', '500100', '500106', '50', '01', '06', '3', '2017-05-11 01:51:27', '2018-08-17 14:31:49', 'shapingbaqu', 's');
INSERT INTO `z_area` VALUES ('2468', '九龙坡区', '重庆 重庆市 九龙坡区', '500100', '500107', '50', '01', '07', '3', '2017-05-11 01:51:28', '2018-08-17 14:31:49', 'jiulongpoqu', 'j');
INSERT INTO `z_area` VALUES ('2469', '南岸区', '重庆 重庆市 南岸区', '500100', '500108', '50', '01', '08', '3', '2017-05-11 01:51:28', '2018-08-17 14:31:49', 'nananqu', 'n');
INSERT INTO `z_area` VALUES ('2470', '北碚区', '重庆 重庆市 北碚区', '500100', '500109', '50', '01', '09', '3', '2017-05-11 01:51:28', '2018-08-17 14:31:49', 'beibeiqu', 'b');
INSERT INTO `z_area` VALUES ('2471', '綦江区', '重庆 重庆市 綦江区', '500100', '500110', '50', '01', '10', '3', '2017-05-11 01:51:28', '2018-08-17 14:31:49', 'qijiangqu', 'q');
INSERT INTO `z_area` VALUES ('2472', '大足区', '重庆 重庆市 大足区', '500100', '500111', '50', '01', '11', '3', '2017-05-11 01:51:28', '2018-08-17 14:31:49', 'dazuqu', 'd');
INSERT INTO `z_area` VALUES ('2473', '渝北区', '重庆 重庆市 渝北区', '500100', '500112', '50', '01', '12', '3', '2017-05-11 01:51:28', '2018-08-17 14:31:50', 'yubeiqu', 'y');
INSERT INTO `z_area` VALUES ('2474', '巴南区', '重庆 重庆市 巴南区', '500100', '500113', '50', '01', '13', '3', '2017-05-11 01:51:29', '2018-08-17 14:31:50', 'bananqu', 'b');
INSERT INTO `z_area` VALUES ('2475', '黔江区', '重庆 重庆市 黔江区', '500100', '500114', '50', '01', '14', '3', '2017-05-11 01:51:29', '2018-08-17 14:31:50', 'qianjiangqu', 'q');
INSERT INTO `z_area` VALUES ('2476', '长寿区', '重庆 重庆市 长寿区', '500100', '500115', '50', '01', '15', '3', '2017-05-11 01:51:29', '2018-08-17 14:31:50', 'changshouqu', 'c');
INSERT INTO `z_area` VALUES ('2477', '江津区', '重庆 重庆市 江津区', '500100', '500116', '50', '01', '16', '3', '2017-05-11 01:51:29', '2018-08-17 14:31:50', 'jiangjinqu', 'j');
INSERT INTO `z_area` VALUES ('2478', '合川区', '重庆 重庆市 合川区', '500100', '500117', '50', '01', '17', '3', '2017-05-11 01:51:29', '2018-08-17 14:31:50', 'hechuanqu', 'h');
INSERT INTO `z_area` VALUES ('2479', '永川区', '重庆 重庆市 永川区', '500100', '500118', '50', '01', '18', '3', '2017-05-11 01:51:29', '2018-08-17 14:31:50', 'yongchuanqu', 'y');
INSERT INTO `z_area` VALUES ('2480', '南川区', '重庆 重庆市 南川区', '500100', '500119', '50', '01', '19', '3', '2017-05-11 01:51:30', '2018-08-17 14:31:51', 'nanchuanqu', 'n');
INSERT INTO `z_area` VALUES ('2481', '璧山区', '重庆 重庆市 璧山区', '500100', '500120', '50', '01', '20', '3', '2017-05-11 01:51:30', '2018-08-17 14:31:51', 'bishanqu', 'b');
INSERT INTO `z_area` VALUES ('2482', '铜梁区', '重庆 重庆市 铜梁区', '500100', '500151', '50', '01', '51', '3', '2017-05-11 01:51:30', '2018-08-17 14:31:51', 'tongliangqu', 't');
INSERT INTO `z_area` VALUES ('2483', '潼南区', '重庆 重庆市 潼南区', '500100', '500152', '50', '01', '52', '3', '2017-05-11 01:51:30', '2018-08-17 14:31:51', 'tongnanqu', 't');
INSERT INTO `z_area` VALUES ('2484', '荣昌区', '重庆 重庆市 荣昌区', '500100', '500153', '50', '01', '53', '3', '2017-05-11 01:51:30', '2018-08-17 14:31:51', 'rongchangqu', 'r');
INSERT INTO `z_area` VALUES ('2485', '县', '重庆 县', '500000', '500200', '50', '02', '00', '2', '2017-05-11 01:51:30', '2018-08-16 14:22:58', 'xian', 'x');
INSERT INTO `z_area` VALUES ('2486', '梁平县', '重庆 县 梁平县', '500100', '500128', '50', '02', '28', '3', '2017-05-11 01:51:30', '2018-08-17 14:31:51', 'liangpingxian', 'l');
INSERT INTO `z_area` VALUES ('2487', '城口县', '重庆 县 城口县', '500100', '500129', '50', '02', '29', '3', '2017-05-11 01:51:31', '2018-08-17 14:31:52', 'chengkouxian', 'c');
INSERT INTO `z_area` VALUES ('2488', '丰都县', '重庆 县 丰都县', '500100', '500130', '50', '02', '30', '3', '2017-05-11 01:51:31', '2018-08-17 14:31:52', 'fengdouxian', 'f');
INSERT INTO `z_area` VALUES ('2489', '垫江县', '重庆 县 垫江县', '500100', '500131', '50', '02', '31', '3', '2017-05-11 01:51:31', '2018-08-17 14:31:52', 'dianjiangxian', 'd');
INSERT INTO `z_area` VALUES ('2490', '武隆县', '重庆 县 武隆县', '500100', '500132', '50', '02', '32', '3', '2017-05-11 01:51:31', '2018-08-17 14:31:52', 'wulongxian', 'w');
INSERT INTO `z_area` VALUES ('2491', '忠县', '重庆 县 忠县', '500100', '500133', '50', '02', '33', '3', '2017-05-11 01:51:31', '2018-08-17 14:31:52', 'zhongxian', 'z');
INSERT INTO `z_area` VALUES ('2492', '开县', '重庆 县 开县', '500100', '500134', '50', '02', '34', '3', '2017-05-11 01:51:31', '2018-08-17 14:31:52', 'kaixian', 'k');
INSERT INTO `z_area` VALUES ('2493', '云阳县', '重庆 县 云阳县', '500100', '500135', '50', '02', '35', '3', '2017-05-11 01:51:32', '2018-08-17 14:31:52', 'yunyangxian', 'y');
INSERT INTO `z_area` VALUES ('2494', '奉节县', '重庆 县 奉节县', '500100', '500136', '50', '02', '36', '3', '2017-05-11 01:51:32', '2018-08-17 14:31:53', 'fengjiexian', 'f');
INSERT INTO `z_area` VALUES ('2495', '巫山县', '重庆 县 巫山县', '500100', '500137', '50', '02', '37', '3', '2017-05-11 01:51:32', '2018-08-17 14:31:53', 'wushanxian', 'w');
INSERT INTO `z_area` VALUES ('2496', '巫溪县', '重庆 县 巫溪县', '500100', '500138', '50', '02', '38', '3', '2017-05-11 01:51:32', '2018-08-17 14:31:53', 'wuxixian', 'w');
INSERT INTO `z_area` VALUES ('2497', '石柱土家族自治县', '重庆 县 石柱土家族自治县', '500100', '500140', '50', '02', '40', '3', '2017-05-11 01:51:32', '2018-08-17 14:31:53', 'shizhutujiazuzizhixian', 's');
INSERT INTO `z_area` VALUES ('2498', '秀山土家族苗族自治县', '重庆 县 秀山土家族苗族自治县', '500100', '500141', '50', '02', '41', '3', '2017-05-11 01:51:32', '2018-08-17 14:31:53', 'xiushantujiazumiaozuzizhixian', 'x');
INSERT INTO `z_area` VALUES ('2499', '酉阳土家族苗族自治县', '重庆 县 酉阳土家族苗族自治县', '500100', '500142', '50', '02', '42', '3', '2017-05-11 01:51:33', '2018-08-17 14:31:53', 'youyangtujiazumiaozuzizhixian', 'y');
INSERT INTO `z_area` VALUES ('2500', '彭水苗族土家族自治县', '重庆 县 彭水苗族土家族自治县', '500100', '500143', '50', '02', '43', '3', '2017-05-11 01:51:33', '2018-08-17 14:31:53', 'pengshuimiaozutujiazuzizhixian', 'p');
INSERT INTO `z_area` VALUES ('2501', '四川省', '四川省', '', '510000', '51', '00', '00', '1', '2017-05-11 01:51:33', '2017-08-28 14:24:29', 'sichuansheng', 's');
INSERT INTO `z_area` VALUES ('2502', '成都', '四川省 成都', '510000', '510100', '51', '01', '00', '2', '2017-05-11 01:51:33', '2018-08-16 14:23:00', 'chengdou', 'c');
INSERT INTO `z_area` VALUES ('2503', '成都市', '四川省 成都 成都市', '510100', '510101', '51', '01', '01', '3', '2017-05-11 01:51:33', '2018-08-17 14:31:53', 'chengdoushi', 'c');
INSERT INTO `z_area` VALUES ('2504', '锦江区', '四川省 成都 锦江区', '510100', '510104', '51', '01', '04', '3', '2017-05-11 01:51:33', '2018-08-17 14:31:54', 'jinjiangqu', 'j');
INSERT INTO `z_area` VALUES ('2505', '青羊区', '四川省 成都 青羊区', '510100', '510105', '51', '01', '05', '3', '2017-05-11 01:51:34', '2018-08-17 14:31:54', 'qingyangqu', 'q');
INSERT INTO `z_area` VALUES ('2506', '金牛区', '四川省 成都 金牛区', '510100', '510106', '51', '01', '06', '3', '2017-05-11 01:51:34', '2018-08-17 14:31:54', 'jinniuqu', 'j');
INSERT INTO `z_area` VALUES ('2507', '武侯区', '四川省 成都 武侯区', '510100', '510107', '51', '01', '07', '3', '2017-05-11 01:51:34', '2018-08-17 14:31:54', 'wuhouqu', 'w');
INSERT INTO `z_area` VALUES ('2508', '成华区', '四川省 成都 成华区', '510100', '510108', '51', '01', '08', '3', '2017-05-11 01:51:34', '2018-08-17 14:31:54', 'chenghuaqu', 'c');
INSERT INTO `z_area` VALUES ('2509', '龙泉驿区', '四川省 成都 龙泉驿区', '510100', '510112', '51', '01', '12', '3', '2017-05-11 01:51:34', '2018-08-17 14:31:54', 'longquanyiqu', 'l');
INSERT INTO `z_area` VALUES ('2510', '青白江区', '四川省 成都 青白江区', '510100', '510113', '51', '01', '13', '3', '2017-05-11 01:51:34', '2018-08-17 14:31:54', 'qingbaijiangqu', 'q');
INSERT INTO `z_area` VALUES ('2511', '新都区', '四川省 成都 新都区', '510100', '510114', '51', '01', '14', '3', '2017-05-11 01:51:35', '2018-08-17 14:31:55', 'xindouqu', 'x');
INSERT INTO `z_area` VALUES ('2512', '温江区', '四川省 成都 温江区', '510100', '510115', '51', '01', '15', '3', '2017-05-11 01:51:35', '2018-08-17 14:31:55', 'wenjiangqu', 'w');
INSERT INTO `z_area` VALUES ('2513', '金堂县', '四川省 成都 金堂县', '510100', '510121', '51', '01', '21', '3', '2017-05-11 01:51:35', '2018-08-17 14:31:55', 'jintangxian', 'j');
INSERT INTO `z_area` VALUES ('2514', '双流县', '四川省 成都 双流县', '510100', '510122', '51', '01', '22', '3', '2017-05-11 01:51:35', '2018-08-17 14:31:55', 'shuangliuxian', 's');
INSERT INTO `z_area` VALUES ('2515', '郫县', '四川省 成都 郫县', '510100', '510124', '51', '01', '24', '3', '2017-05-11 01:51:35', '2018-08-17 14:31:55', 'pixian', 'p');
INSERT INTO `z_area` VALUES ('2516', '大邑县', '四川省 成都 大邑县', '510100', '510129', '51', '01', '29', '3', '2017-05-11 01:51:35', '2018-08-17 14:31:55', 'dayixian', 'd');
INSERT INTO `z_area` VALUES ('2517', '蒲江县', '四川省 成都 蒲江县', '510100', '510131', '51', '01', '31', '3', '2017-05-11 01:51:35', '2018-08-17 14:31:55', 'pujiangxian', 'p');
INSERT INTO `z_area` VALUES ('2518', '新津县', '四川省 成都 新津县', '510100', '510132', '51', '01', '32', '3', '2017-05-11 01:51:36', '2018-08-17 14:31:56', 'xinjinxian', 'x');
INSERT INTO `z_area` VALUES ('2519', '都江堰市', '四川省 成都 都江堰市', '510100', '510181', '51', '01', '81', '3', '2017-05-11 01:51:36', '2018-08-17 14:31:56', 'doujiangyanshi', 'd');
INSERT INTO `z_area` VALUES ('2520', '彭州市', '四川省 成都 彭州市', '510100', '510182', '51', '01', '82', '3', '2017-05-11 01:51:36', '2018-08-17 14:31:56', 'pengzhoushi', 'p');
INSERT INTO `z_area` VALUES ('2521', '邛崃市', '四川省 成都 邛崃市', '510100', '510183', '51', '01', '83', '3', '2017-05-11 01:51:36', '2018-08-17 14:31:56', 'qionglaishi', 'q');
INSERT INTO `z_area` VALUES ('2522', '崇州市', '四川省 成都 崇州市', '510100', '510184', '51', '01', '84', '3', '2017-05-11 01:51:36', '2018-08-17 14:31:56', 'chongzhoushi', 'c');
INSERT INTO `z_area` VALUES ('2523', '自贡', '四川省 自贡', '510000', '510300', '51', '03', '00', '2', '2017-05-11 01:51:36', '2018-08-16 14:23:03', 'zigong', 'z');
INSERT INTO `z_area` VALUES ('2524', '自贡市', '四川省 自贡 自贡市', '510300', '510301', '51', '03', '01', '3', '2017-05-11 01:51:37', '2018-08-17 14:31:56', 'zigongshi', 'z');
INSERT INTO `z_area` VALUES ('2525', '自流井区', '四川省 自贡 自流井区', '510300', '510302', '51', '03', '02', '3', '2017-05-11 01:51:37', '2018-08-17 14:31:56', 'ziliujingqu', 'z');
INSERT INTO `z_area` VALUES ('2526', '贡井区', '四川省 自贡 贡井区', '510300', '510303', '51', '03', '03', '3', '2017-05-11 01:51:37', '2018-08-17 14:31:57', 'gongjingqu', 'g');
INSERT INTO `z_area` VALUES ('2527', '大安区', '四川省 自贡 大安区', '510300', '510304', '51', '03', '04', '3', '2017-05-11 01:51:37', '2018-08-17 14:31:57', 'daanqu', 'd');
INSERT INTO `z_area` VALUES ('2528', '沿滩区', '四川省 自贡 沿滩区', '510300', '510311', '51', '03', '11', '3', '2017-05-11 01:51:37', '2018-08-17 14:31:57', 'yantanqu', 'y');
INSERT INTO `z_area` VALUES ('2529', '荣县', '四川省 自贡 荣县', '510300', '510321', '51', '03', '21', '3', '2017-05-11 01:51:37', '2018-08-17 14:31:57', 'rongxian', 'r');
INSERT INTO `z_area` VALUES ('2530', '富顺县', '四川省 自贡 富顺县', '510300', '510322', '51', '03', '22', '3', '2017-05-11 01:51:37', '2018-08-17 14:31:57', 'fushunxian', 'f');
INSERT INTO `z_area` VALUES ('2531', '攀枝花', '四川省 攀枝花', '510000', '510400', '51', '04', '00', '2', '2017-05-11 01:51:38', '2018-08-16 14:23:04', 'panzhihua', 'p');
INSERT INTO `z_area` VALUES ('2532', '攀枝花市', '四川省 攀枝花 攀枝花市', '510400', '510401', '51', '04', '01', '3', '2017-05-11 01:51:38', '2018-08-17 14:31:57', 'panzhihuashi', 'p');
INSERT INTO `z_area` VALUES ('2533', '东区', '四川省 攀枝花 东区', '510400', '510402', '51', '04', '02', '3', '2017-05-11 01:51:38', '2018-08-17 14:31:58', 'dongqu', 'd');
INSERT INTO `z_area` VALUES ('2534', '西区', '四川省 攀枝花 西区', '510400', '510403', '51', '04', '03', '3', '2017-05-11 01:51:38', '2018-08-17 14:31:58', 'xiqu', 'x');
INSERT INTO `z_area` VALUES ('2535', '仁和区', '四川省 攀枝花 仁和区', '510400', '510411', '51', '04', '11', '3', '2017-05-11 01:51:38', '2018-08-17 14:31:58', 'renhequ', 'r');
INSERT INTO `z_area` VALUES ('2536', '米易县', '四川省 攀枝花 米易县', '510400', '510421', '51', '04', '21', '3', '2017-05-11 01:51:38', '2018-08-17 14:31:58', 'miyixian', 'm');
INSERT INTO `z_area` VALUES ('2537', '盐边县', '四川省 攀枝花 盐边县', '510400', '510422', '51', '04', '22', '3', '2017-05-11 01:51:38', '2018-08-17 14:31:58', 'yanbianxian', 'y');
INSERT INTO `z_area` VALUES ('2538', '泸州', '四川省 泸州', '510000', '510500', '51', '05', '00', '2', '2017-05-11 01:51:39', '2018-08-16 14:23:04', 'luzhou', 'l');
INSERT INTO `z_area` VALUES ('2539', '泸州市', '四川省 泸州 泸州市', '510500', '510501', '51', '05', '01', '3', '2017-05-11 01:51:39', '2018-08-17 14:31:58', 'luzhoushi', 'l');
INSERT INTO `z_area` VALUES ('2540', '江阳区', '四川省 泸州 江阳区', '510500', '510502', '51', '05', '02', '3', '2017-05-11 01:51:39', '2018-08-17 14:31:58', 'jiangyangqu', 'j');
INSERT INTO `z_area` VALUES ('2541', '纳溪区', '四川省 泸州 纳溪区', '510500', '510503', '51', '05', '03', '3', '2017-05-11 01:51:39', '2018-08-17 14:31:59', 'naxiqu', 'n');
INSERT INTO `z_area` VALUES ('2542', '龙马潭区', '四川省 泸州 龙马潭区', '510500', '510504', '51', '05', '04', '3', '2017-05-11 01:51:39', '2018-08-17 14:31:59', 'longmatanqu', 'l');
INSERT INTO `z_area` VALUES ('2543', '泸县', '四川省 泸州 泸县', '510500', '510521', '51', '05', '21', '3', '2017-05-11 01:51:39', '2018-08-17 14:31:59', 'luxian', 'l');
INSERT INTO `z_area` VALUES ('2544', '合江县', '四川省 泸州 合江县', '510500', '510522', '51', '05', '22', '3', '2017-05-11 01:51:40', '2018-08-17 14:31:59', 'hejiangxian', 'h');
INSERT INTO `z_area` VALUES ('2545', '叙永县', '四川省 泸州 叙永县', '510500', '510524', '51', '05', '24', '3', '2017-05-11 01:51:40', '2018-08-17 14:31:59', 'xuyongxian', 'x');
INSERT INTO `z_area` VALUES ('2546', '古蔺县', '四川省 泸州 古蔺县', '510500', '510525', '51', '05', '25', '3', '2017-05-11 01:51:40', '2018-08-17 14:31:59', 'gulinxian', 'g');
INSERT INTO `z_area` VALUES ('2547', '德阳', '四川省 德阳', '510000', '510600', '51', '06', '00', '2', '2017-05-11 01:51:40', '2018-08-16 14:23:06', 'deyang', 'd');
INSERT INTO `z_area` VALUES ('2548', '德阳市', '四川省 德阳 德阳市', '510600', '510601', '51', '06', '01', '3', '2017-05-11 01:51:40', '2018-08-17 14:31:59', 'deyangshi', 'd');
INSERT INTO `z_area` VALUES ('2549', '旌阳区', '四川省 德阳 旌阳区', '510600', '510603', '51', '06', '03', '3', '2017-05-11 01:51:40', '2018-08-17 14:32:00', 'jingyangqu', 'j');
INSERT INTO `z_area` VALUES ('2550', '中江县', '四川省 德阳 中江县', '510600', '510623', '51', '06', '23', '3', '2017-05-11 01:51:40', '2018-08-17 14:32:00', 'zhongjiangxian', 'z');
INSERT INTO `z_area` VALUES ('2551', '罗江县', '四川省 德阳 罗江县', '510600', '510626', '51', '06', '26', '3', '2017-05-11 01:51:41', '2018-08-17 14:32:00', 'luojiangxian', 'l');
INSERT INTO `z_area` VALUES ('2552', '广汉市', '四川省 德阳 广汉市', '510600', '510681', '51', '06', '81', '3', '2017-05-11 01:51:41', '2018-08-17 14:32:00', 'guanghanshi', 'g');
INSERT INTO `z_area` VALUES ('2553', '什邡市', '四川省 德阳 什邡市', '510600', '510682', '51', '06', '82', '3', '2017-05-11 01:51:41', '2018-08-17 14:32:00', 'shifangshi', 's');
INSERT INTO `z_area` VALUES ('2554', '绵竹市', '四川省 德阳 绵竹市', '510600', '510683', '51', '06', '83', '3', '2017-05-11 01:51:41', '2018-08-17 14:32:00', 'mianzhushi', 'm');
INSERT INTO `z_area` VALUES ('2555', '绵阳', '四川省 绵阳', '510000', '510700', '51', '07', '00', '2', '2017-05-11 01:51:41', '2018-08-16 14:23:07', 'mianyang', 'm');
INSERT INTO `z_area` VALUES ('2556', '绵阳市', '四川省 绵阳 绵阳市', '510700', '510701', '51', '07', '01', '3', '2017-05-11 01:51:41', '2018-08-17 14:32:00', 'mianyangshi', 'm');
INSERT INTO `z_area` VALUES ('2557', '涪城区', '四川省 绵阳 涪城区', '510700', '510703', '51', '07', '03', '3', '2017-05-11 01:51:41', '2018-08-17 14:32:01', 'fuchengqu', 'f');
INSERT INTO `z_area` VALUES ('2558', '游仙区', '四川省 绵阳 游仙区', '510700', '510704', '51', '07', '04', '3', '2017-05-11 01:51:42', '2018-08-17 14:32:01', 'youxianqu', 'y');
INSERT INTO `z_area` VALUES ('2559', '三台县', '四川省 绵阳 三台县', '510700', '510722', '51', '07', '22', '3', '2017-05-11 01:51:42', '2018-08-17 14:32:01', 'santaixian', 's');
INSERT INTO `z_area` VALUES ('2560', '盐亭县', '四川省 绵阳 盐亭县', '510700', '510723', '51', '07', '23', '3', '2017-05-11 01:51:42', '2018-08-17 14:32:01', 'yantingxian', 'y');
INSERT INTO `z_area` VALUES ('2561', '安县', '四川省 绵阳 安县', '510700', '510724', '51', '07', '24', '3', '2017-05-11 01:51:42', '2018-08-17 14:32:01', 'anxian', 'a');
INSERT INTO `z_area` VALUES ('2562', '梓潼县', '四川省 绵阳 梓潼县', '510700', '510725', '51', '07', '25', '3', '2017-05-11 01:51:42', '2018-08-17 14:32:01', 'zitongxian', 'z');
INSERT INTO `z_area` VALUES ('2563', '北川羌族自治县', '四川省 绵阳 北川羌族自治县', '510700', '510726', '51', '07', '26', '3', '2017-05-11 01:51:42', '2018-08-17 14:32:01', 'beichuanqiangzuzizhixian', 'b');
INSERT INTO `z_area` VALUES ('2564', '平武县', '四川省 绵阳 平武县', '510700', '510727', '51', '07', '27', '3', '2017-05-11 01:51:43', '2018-08-17 14:32:02', 'pingwuxian', 'p');
INSERT INTO `z_area` VALUES ('2565', '江油市', '四川省 绵阳 江油市', '510700', '510781', '51', '07', '81', '3', '2017-05-11 01:51:43', '2018-08-17 14:32:02', 'jiangyoushi', 'j');
INSERT INTO `z_area` VALUES ('2566', '广元', '四川省 广元', '510000', '510800', '51', '08', '00', '2', '2017-05-11 01:51:43', '2018-08-16 14:23:08', 'guangyuan', 'g');
INSERT INTO `z_area` VALUES ('2567', '广元市', '四川省 广元 广元市', '510800', '510801', '51', '08', '01', '3', '2017-05-11 01:51:43', '2018-08-17 14:32:02', 'guangyuanshi', 'g');
INSERT INTO `z_area` VALUES ('2568', '利州区', '四川省 广元 利州区', '510800', '510802', '51', '08', '02', '3', '2017-05-11 01:51:43', '2018-08-17 14:32:02', 'lizhouqu', 'l');
INSERT INTO `z_area` VALUES ('2569', '昭化区', '四川省 广元 昭化区', '510800', '510811', '51', '08', '11', '3', '2017-05-11 01:51:43', '2018-08-17 14:32:02', 'zhaohuaqu', 'z');
INSERT INTO `z_area` VALUES ('2570', '朝天区', '四川省 广元 朝天区', '510800', '510812', '51', '08', '12', '3', '2017-05-11 01:51:43', '2018-08-17 14:32:02', 'chaotianqu', 'c');
INSERT INTO `z_area` VALUES ('2571', '旺苍县', '四川省 广元 旺苍县', '510800', '510821', '51', '08', '21', '3', '2017-05-11 01:51:44', '2018-08-17 14:32:02', 'wangcangxian', 'w');
INSERT INTO `z_area` VALUES ('2572', '青川县', '四川省 广元 青川县', '510800', '510822', '51', '08', '22', '3', '2017-05-11 01:51:44', '2018-08-17 14:32:02', 'qingchuanxian', 'q');
INSERT INTO `z_area` VALUES ('2573', '剑阁县', '四川省 广元 剑阁县', '510800', '510823', '51', '08', '23', '3', '2017-05-11 01:51:44', '2018-08-17 14:32:03', 'jiangexian', 'j');
INSERT INTO `z_area` VALUES ('2574', '苍溪县', '四川省 广元 苍溪县', '510800', '510824', '51', '08', '24', '3', '2017-05-11 01:51:44', '2018-08-17 14:32:03', 'cangxixian', 'c');
INSERT INTO `z_area` VALUES ('2575', '遂宁', '四川省 遂宁', '510000', '510900', '51', '09', '00', '2', '2017-05-11 01:51:44', '2018-08-16 14:23:09', 'suining', 's');
INSERT INTO `z_area` VALUES ('2576', '遂宁市', '四川省 遂宁 遂宁市', '510900', '510901', '51', '09', '01', '3', '2017-05-11 01:51:44', '2018-08-17 14:32:03', 'suiningshi', 's');
INSERT INTO `z_area` VALUES ('2577', '船山区', '四川省 遂宁 船山区', '510900', '510903', '51', '09', '03', '3', '2017-05-11 01:51:45', '2018-08-17 14:32:03', 'chuanshanqu', 'c');
INSERT INTO `z_area` VALUES ('2578', '安居区', '四川省 遂宁 安居区', '510900', '510904', '51', '09', '04', '3', '2017-05-11 01:51:45', '2018-08-17 14:32:03', 'anjuqu', 'a');
INSERT INTO `z_area` VALUES ('2579', '蓬溪县', '四川省 遂宁 蓬溪县', '510900', '510921', '51', '09', '21', '3', '2017-05-11 01:51:45', '2018-08-17 14:32:03', 'pengxixian', 'p');
INSERT INTO `z_area` VALUES ('2580', '射洪县', '四川省 遂宁 射洪县', '510900', '510922', '51', '09', '22', '3', '2017-05-11 01:51:45', '2018-08-17 14:32:03', 'shehongxian', 's');
INSERT INTO `z_area` VALUES ('2581', '大英县', '四川省 遂宁 大英县', '510900', '510923', '51', '09', '23', '3', '2017-05-11 01:51:45', '2018-08-17 14:32:04', 'dayingxian', 'd');
INSERT INTO `z_area` VALUES ('2582', '内江', '四川省 内江', '510000', '511000', '51', '10', '00', '2', '2017-05-11 01:51:45', '2018-08-16 14:23:10', 'najiang', 'n');
INSERT INTO `z_area` VALUES ('2583', '内江市', '四川省 内江 内江市', '511000', '511001', '51', '10', '01', '3', '2017-05-11 01:51:45', '2018-08-17 14:32:04', 'najiangshi', 'n');
INSERT INTO `z_area` VALUES ('2584', '市中区', '四川省 内江 市中区', '511000', '511002', '51', '10', '02', '3', '2017-05-11 01:51:46', '2018-08-17 14:32:04', 'shizhongqu', 's');
INSERT INTO `z_area` VALUES ('2585', '东兴区', '四川省 内江 东兴区', '511000', '511011', '51', '10', '11', '3', '2017-05-11 01:51:46', '2018-08-17 14:32:04', 'dongxingqu', 'd');
INSERT INTO `z_area` VALUES ('2586', '威远县', '四川省 内江 威远县', '511000', '511024', '51', '10', '24', '3', '2017-05-11 01:51:46', '2018-08-17 14:32:04', 'weiyuanxian', 'w');
INSERT INTO `z_area` VALUES ('2587', '资中县', '四川省 内江 资中县', '511000', '511025', '51', '10', '25', '3', '2017-05-11 01:51:46', '2018-08-17 14:32:04', 'zizhongxian', 'z');
INSERT INTO `z_area` VALUES ('2588', '隆昌县', '四川省 内江 隆昌县', '511000', '511028', '51', '10', '28', '3', '2017-05-11 01:51:46', '2018-08-17 14:32:04', 'longchangxian', 'l');
INSERT INTO `z_area` VALUES ('2589', '乐山', '四川省 乐山', '510000', '511100', '51', '11', '00', '2', '2017-05-11 01:51:46', '2018-08-16 14:23:11', 'leshan', 'l');
INSERT INTO `z_area` VALUES ('2590', '乐山市', '四川省 乐山 乐山市', '511100', '511101', '51', '11', '01', '3', '2017-05-11 01:51:46', '2018-08-17 14:32:05', 'leshanshi', 'l');
INSERT INTO `z_area` VALUES ('2591', '市中区', '四川省 乐山 市中区', '511100', '511102', '51', '11', '02', '3', '2017-05-11 01:51:47', '2018-08-17 14:32:05', 'shizhongqu', 's');
INSERT INTO `z_area` VALUES ('2592', '沙湾区', '四川省 乐山 沙湾区', '511100', '511111', '51', '11', '11', '3', '2017-05-11 01:51:47', '2018-08-17 14:32:05', 'shawanqu', 's');
INSERT INTO `z_area` VALUES ('2593', '五通桥区', '四川省 乐山 五通桥区', '511100', '511112', '51', '11', '12', '3', '2017-05-11 01:51:47', '2018-08-17 14:32:05', 'wutongqiaoqu', 'w');
INSERT INTO `z_area` VALUES ('2594', '金口河区', '四川省 乐山 金口河区', '511100', '511113', '51', '11', '13', '3', '2017-05-11 01:51:47', '2018-08-17 14:32:05', 'jinkouhequ', 'j');
INSERT INTO `z_area` VALUES ('2595', '犍为县', '四川省 乐山 犍为县', '511100', '511123', '51', '11', '23', '3', '2017-05-11 01:51:47', '2018-08-17 14:32:05', 'jianweixian', 'j');
INSERT INTO `z_area` VALUES ('2596', '井研县', '四川省 乐山 井研县', '511100', '511124', '51', '11', '24', '3', '2017-05-11 01:51:47', '2018-08-17 14:32:05', 'jingyanxian', 'j');
INSERT INTO `z_area` VALUES ('2597', '夹江县', '四川省 乐山 夹江县', '511100', '511126', '51', '11', '26', '3', '2017-05-11 01:51:48', '2018-08-17 14:32:06', 'jiajiangxian', 'j');
INSERT INTO `z_area` VALUES ('2598', '沐川县', '四川省 乐山 沐川县', '511100', '511129', '51', '11', '29', '3', '2017-05-11 01:51:48', '2018-08-17 14:32:06', 'muchuanxian', 'm');
INSERT INTO `z_area` VALUES ('2599', '峨边彝族自治县', '四川省 乐山 峨边彝族自治县', '511100', '511132', '51', '11', '32', '3', '2017-05-11 01:51:48', '2018-08-17 14:32:06', 'ebianyizuzizhixian', 'e');
INSERT INTO `z_area` VALUES ('2600', '马边彝族自治县', '四川省 乐山 马边彝族自治县', '511100', '511133', '51', '11', '33', '3', '2017-05-11 01:51:48', '2018-08-17 14:32:06', 'mabianyizuzizhixian', 'm');
INSERT INTO `z_area` VALUES ('2601', '峨眉山市', '四川省 乐山 峨眉山市', '511100', '511181', '51', '11', '81', '3', '2017-05-11 01:51:48', '2018-08-17 14:32:06', 'emeishanshi', 'e');
INSERT INTO `z_area` VALUES ('2602', '南充', '四川省 南充', '510000', '511300', '51', '13', '00', '2', '2017-05-11 01:51:48', '2018-08-16 14:23:13', 'nanchong', 'n');
INSERT INTO `z_area` VALUES ('2603', '南充市', '四川省 南充 南充市', '511300', '511301', '51', '13', '01', '3', '2017-05-11 01:51:48', '2018-08-17 14:32:06', 'nanchongshi', 'n');
INSERT INTO `z_area` VALUES ('2604', '顺庆区', '四川省 南充 顺庆区', '511300', '511302', '51', '13', '02', '3', '2017-05-11 01:51:49', '2018-08-17 14:32:06', 'shunqingqu', 's');
INSERT INTO `z_area` VALUES ('2605', '高坪区', '四川省 南充 高坪区', '511300', '511303', '51', '13', '03', '3', '2017-05-11 01:51:49', '2018-08-17 14:32:07', 'gaopingqu', 'g');
INSERT INTO `z_area` VALUES ('2606', '嘉陵区', '四川省 南充 嘉陵区', '511300', '511304', '51', '13', '04', '3', '2017-05-11 01:51:49', '2018-08-17 14:32:07', 'jialingqu', 'j');
INSERT INTO `z_area` VALUES ('2607', '南部县', '四川省 南充 南部县', '511300', '511321', '51', '13', '21', '3', '2017-05-11 01:51:49', '2018-08-17 14:32:07', 'nanbuxian', 'n');
INSERT INTO `z_area` VALUES ('2608', '营山县', '四川省 南充 营山县', '511300', '511322', '51', '13', '22', '3', '2017-05-11 01:51:49', '2018-08-17 14:32:07', 'yingshanxian', 'y');
INSERT INTO `z_area` VALUES ('2609', '蓬安县', '四川省 南充 蓬安县', '511300', '511323', '51', '13', '23', '3', '2017-05-11 01:51:49', '2018-08-17 14:32:07', 'penganxian', 'p');
INSERT INTO `z_area` VALUES ('2610', '仪陇县', '四川省 南充 仪陇县', '511300', '511324', '51', '13', '24', '3', '2017-05-11 01:51:50', '2018-08-17 14:32:07', 'yilongxian', 'y');
INSERT INTO `z_area` VALUES ('2611', '西充县', '四川省 南充 西充县', '511300', '511325', '51', '13', '25', '3', '2017-05-11 01:51:50', '2018-08-17 14:32:08', 'xichongxian', 'x');
INSERT INTO `z_area` VALUES ('2612', '阆中市', '四川省 南充 阆中市', '511300', '511381', '51', '13', '81', '3', '2017-05-11 01:51:50', '2018-08-17 14:32:08', 'langzhongshi', 'l');
INSERT INTO `z_area` VALUES ('2613', '眉山', '四川省 眉山', '510000', '511400', '51', '14', '00', '2', '2017-05-11 01:51:50', '2018-08-16 14:23:14', 'meishan', 'm');
INSERT INTO `z_area` VALUES ('2614', '眉山市', '四川省 眉山 眉山市', '511400', '511401', '51', '14', '01', '3', '2017-05-11 01:51:50', '2018-08-17 14:32:08', 'meishanshi', 'm');
INSERT INTO `z_area` VALUES ('2615', '东坡区', '四川省 眉山 东坡区', '511400', '511402', '51', '14', '02', '3', '2017-05-11 01:51:50', '2018-08-17 14:32:08', 'dongpoqu', 'd');
INSERT INTO `z_area` VALUES ('2616', '彭山区', '四川省 眉山 彭山区', '511400', '511403', '51', '14', '03', '3', '2017-05-11 01:51:50', '2018-08-17 14:32:08', 'pengshanqu', 'p');
INSERT INTO `z_area` VALUES ('2617', '仁寿县', '四川省 眉山 仁寿县', '511400', '511421', '51', '14', '21', '3', '2017-05-11 01:51:51', '2018-08-17 14:32:08', 'renshouxian', 'r');
INSERT INTO `z_area` VALUES ('2618', '洪雅县', '四川省 眉山 洪雅县', '511400', '511423', '51', '14', '23', '3', '2017-05-11 01:51:51', '2018-08-17 14:32:09', 'hongyaxian', 'h');
INSERT INTO `z_area` VALUES ('2619', '丹棱县', '四川省 眉山 丹棱县', '511400', '511424', '51', '14', '24', '3', '2017-05-11 01:51:51', '2018-08-17 14:32:09', 'danlengxian', 'd');
INSERT INTO `z_area` VALUES ('2620', '青神县', '四川省 眉山 青神县', '511400', '511425', '51', '14', '25', '3', '2017-05-11 01:51:51', '2018-08-17 14:32:09', 'qingshenxian', 'q');
INSERT INTO `z_area` VALUES ('2621', '宜宾', '四川省 宜宾', '510000', '511500', '51', '15', '00', '2', '2017-05-11 01:51:51', '2018-08-16 14:23:15', 'yibin', 'y');
INSERT INTO `z_area` VALUES ('2622', '宜宾市', '四川省 宜宾 宜宾市', '511500', '511501', '51', '15', '01', '3', '2017-05-11 01:51:51', '2018-08-17 14:32:09', 'yibinshi', 'y');
INSERT INTO `z_area` VALUES ('2623', '翠屏区', '四川省 宜宾 翠屏区', '511500', '511502', '51', '15', '02', '3', '2017-05-11 01:51:51', '2018-08-17 14:32:09', 'cuipingqu', 'c');
INSERT INTO `z_area` VALUES ('2624', '南溪区', '四川省 宜宾 南溪区', '511500', '511503', '51', '15', '03', '3', '2017-05-11 01:51:52', '2018-08-17 14:32:09', 'nanxiqu', 'n');
INSERT INTO `z_area` VALUES ('2625', '宜宾县', '四川省 宜宾 宜宾县', '511500', '511521', '51', '15', '21', '3', '2017-05-11 01:51:52', '2018-08-17 14:32:09', 'yibinxian', 'y');
INSERT INTO `z_area` VALUES ('2626', '江安县', '四川省 宜宾 江安县', '511500', '511523', '51', '15', '23', '3', '2017-05-11 01:51:52', '2018-08-17 14:32:10', 'jianganxian', 'j');
INSERT INTO `z_area` VALUES ('2627', '长宁县', '四川省 宜宾 长宁县', '511500', '511524', '51', '15', '24', '3', '2017-05-11 01:51:52', '2018-08-17 14:32:10', 'changningxian', 'c');
INSERT INTO `z_area` VALUES ('2628', '高县', '四川省 宜宾 高县', '511500', '511525', '51', '15', '25', '3', '2017-05-11 01:51:52', '2018-08-17 14:32:10', 'gaoxian', 'g');
INSERT INTO `z_area` VALUES ('2629', '珙县', '四川省 宜宾 珙县', '511500', '511526', '51', '15', '26', '3', '2017-05-11 01:51:52', '2018-08-17 14:32:10', 'gongxian', 'g');
INSERT INTO `z_area` VALUES ('2630', '筠连县', '四川省 宜宾 筠连县', '511500', '511527', '51', '15', '27', '3', '2017-05-11 01:51:53', '2018-08-17 14:32:10', 'junlianxian', 'j');
INSERT INTO `z_area` VALUES ('2631', '兴文县', '四川省 宜宾 兴文县', '511500', '511528', '51', '15', '28', '3', '2017-05-11 01:51:53', '2018-08-17 14:32:10', 'xingwenxian', 'x');
INSERT INTO `z_area` VALUES ('2632', '屏山县', '四川省 宜宾 屏山县', '511500', '511529', '51', '15', '29', '3', '2017-05-11 01:51:53', '2018-08-17 14:32:10', 'pingshanxian', 'p');
INSERT INTO `z_area` VALUES ('2633', '广安', '四川省 广安', '510000', '511600', '51', '16', '00', '2', '2017-05-11 01:51:53', '2018-08-16 14:23:16', 'guangan', 'g');
INSERT INTO `z_area` VALUES ('2634', '广安市', '四川省 广安 广安市', '511600', '511601', '51', '16', '01', '3', '2017-05-11 01:51:53', '2018-08-17 14:32:11', 'guanganshi', 'g');
INSERT INTO `z_area` VALUES ('2635', '广安区', '四川省 广安 广安区', '511600', '511602', '51', '16', '02', '3', '2017-05-11 01:51:53', '2018-08-17 14:32:11', 'guanganqu', 'g');
INSERT INTO `z_area` VALUES ('2636', '前锋区', '四川省 广安 前锋区', '511600', '511603', '51', '16', '03', '3', '2017-05-11 01:51:54', '2018-08-17 14:32:11', 'qianfengqu', 'q');
INSERT INTO `z_area` VALUES ('2637', '岳池县', '四川省 广安 岳池县', '511600', '511621', '51', '16', '21', '3', '2017-05-11 01:51:54', '2018-08-17 14:32:11', 'yuechixian', 'y');
INSERT INTO `z_area` VALUES ('2638', '武胜县', '四川省 广安 武胜县', '511600', '511622', '51', '16', '22', '3', '2017-05-11 01:51:54', '2018-08-17 14:32:11', 'wushengxian', 'w');
INSERT INTO `z_area` VALUES ('2639', '邻水县', '四川省 广安 邻水县', '511600', '511623', '51', '16', '23', '3', '2017-05-11 01:51:54', '2018-08-17 14:32:11', 'linshuixian', 'l');
INSERT INTO `z_area` VALUES ('2640', '华蓥市', '四川省 广安 华蓥市', '511600', '511681', '51', '16', '81', '3', '2017-05-11 01:51:54', '2018-08-17 14:32:11', 'huayingshi', 'h');
INSERT INTO `z_area` VALUES ('2641', '达州', '四川省 达州', '510000', '511700', '51', '17', '00', '2', '2017-05-11 01:51:54', '2018-08-16 14:23:17', 'dazhou', 'd');
INSERT INTO `z_area` VALUES ('2642', '达州市', '四川省 达州 达州市', '511700', '511701', '51', '17', '01', '3', '2017-05-11 01:51:54', '2018-08-17 14:32:12', 'dazhoushi', 'd');
INSERT INTO `z_area` VALUES ('2643', '通川区', '四川省 达州 通川区', '511700', '511702', '51', '17', '02', '3', '2017-05-11 01:51:55', '2018-08-17 14:32:12', 'tongchuanqu', 't');
INSERT INTO `z_area` VALUES ('2644', '达川区', '四川省 达州 达川区', '511700', '511703', '51', '17', '03', '3', '2017-05-11 01:51:55', '2018-08-17 14:32:12', 'dachuanqu', 'd');
INSERT INTO `z_area` VALUES ('2645', '宣汉县', '四川省 达州 宣汉县', '511700', '511722', '51', '17', '22', '3', '2017-05-11 01:51:55', '2018-08-17 14:32:12', 'xuanhanxian', 'x');
INSERT INTO `z_area` VALUES ('2646', '开江县', '四川省 达州 开江县', '511700', '511723', '51', '17', '23', '3', '2017-05-11 01:51:55', '2018-08-17 14:32:12', 'kaijiangxian', 'k');
INSERT INTO `z_area` VALUES ('2647', '大竹县', '四川省 达州 大竹县', '511700', '511724', '51', '17', '24', '3', '2017-05-11 01:51:55', '2018-08-17 14:32:12', 'dazhuxian', 'd');
INSERT INTO `z_area` VALUES ('2648', '渠县', '四川省 达州 渠县', '511700', '511725', '51', '17', '25', '3', '2017-05-11 01:51:55', '2018-08-17 14:32:12', 'quxian', 'q');
INSERT INTO `z_area` VALUES ('2649', '万源市', '四川省 达州 万源市', '511700', '511781', '51', '17', '81', '3', '2017-05-11 01:51:55', '2018-08-17 14:32:13', 'wanyuanshi', 'w');
INSERT INTO `z_area` VALUES ('2650', '雅安', '四川省 雅安', '510000', '511800', '51', '18', '00', '2', '2017-05-11 01:51:56', '2018-08-16 14:23:19', 'yaan', 'y');
INSERT INTO `z_area` VALUES ('2651', '雅安市', '四川省 雅安 雅安市', '511800', '511801', '51', '18', '01', '3', '2017-05-11 01:51:56', '2018-08-17 14:32:13', 'yaanshi', 'y');
INSERT INTO `z_area` VALUES ('2652', '雨城区', '四川省 雅安 雨城区', '511800', '511802', '51', '18', '02', '3', '2017-05-11 01:51:56', '2018-08-17 14:32:13', 'yuchengqu', 'y');
INSERT INTO `z_area` VALUES ('2653', '名山区', '四川省 雅安 名山区', '511800', '511803', '51', '18', '03', '3', '2017-05-11 01:51:56', '2018-08-17 14:32:13', 'mingshanqu', 'm');
INSERT INTO `z_area` VALUES ('2654', '荥经县', '四川省 雅安 荥经县', '511800', '511822', '51', '18', '22', '3', '2017-05-11 01:51:56', '2018-08-17 14:32:13', 'yingjingxian', 'y');
INSERT INTO `z_area` VALUES ('2655', '汉源县', '四川省 雅安 汉源县', '511800', '511823', '51', '18', '23', '3', '2017-05-11 01:51:56', '2018-08-17 14:32:13', 'hanyuanxian', 'h');
INSERT INTO `z_area` VALUES ('2656', '石棉县', '四川省 雅安 石棉县', '511800', '511824', '51', '18', '24', '3', '2017-05-11 01:51:57', '2018-08-17 14:32:13', 'shimianxian', 's');
INSERT INTO `z_area` VALUES ('2657', '天全县', '四川省 雅安 天全县', '511800', '511825', '51', '18', '25', '3', '2017-05-11 01:51:57', '2018-08-17 14:32:13', 'tianquanxian', 't');
INSERT INTO `z_area` VALUES ('2658', '芦山县', '四川省 雅安 芦山县', '511800', '511826', '51', '18', '26', '3', '2017-05-11 01:51:57', '2018-08-17 14:32:14', 'lushanxian', 'l');
INSERT INTO `z_area` VALUES ('2659', '宝兴县', '四川省 雅安 宝兴县', '511800', '511827', '51', '18', '27', '3', '2017-05-11 01:51:57', '2018-08-17 14:32:14', 'baoxingxian', 'b');
INSERT INTO `z_area` VALUES ('2660', '巴中', '四川省 巴中', '510000', '511900', '51', '19', '00', '2', '2017-05-11 01:51:57', '2018-08-16 14:23:20', 'bazhong', 'b');
INSERT INTO `z_area` VALUES ('2661', '巴中市', '四川省 巴中 巴中市', '511900', '511901', '51', '19', '01', '3', '2017-05-11 01:51:57', '2018-08-17 14:32:14', 'bazhongshi', 'b');
INSERT INTO `z_area` VALUES ('2662', '巴州区', '四川省 巴中 巴州区', '511900', '511902', '51', '19', '02', '3', '2017-05-11 01:51:57', '2018-08-17 14:32:14', 'bazhouqu', 'b');
INSERT INTO `z_area` VALUES ('2663', '恩阳区', '四川省 巴中 恩阳区', '511900', '511903', '51', '19', '03', '3', '2017-05-11 01:51:58', '2018-08-17 14:32:14', 'enyangqu', 'e');
INSERT INTO `z_area` VALUES ('2664', '通江县', '四川省 巴中 通江县', '511900', '511921', '51', '19', '21', '3', '2017-05-11 01:51:58', '2018-08-17 14:32:14', 'tongjiangxian', 't');
INSERT INTO `z_area` VALUES ('2665', '南江县', '四川省 巴中 南江县', '511900', '511922', '51', '19', '22', '3', '2017-05-11 01:51:58', '2018-08-17 14:32:14', 'nanjiangxian', 'n');
INSERT INTO `z_area` VALUES ('2666', '平昌县', '四川省 巴中 平昌县', '511900', '511923', '51', '19', '23', '3', '2017-05-11 01:51:58', '2018-08-17 14:32:15', 'pingchangxian', 'p');
INSERT INTO `z_area` VALUES ('2667', '资阳', '四川省 资阳', '510000', '512000', '51', '20', '00', '2', '2017-05-11 01:51:58', '2018-08-16 14:23:21', 'ziyang', 'z');
INSERT INTO `z_area` VALUES ('2668', '资阳市', '四川省 资阳 资阳市', '512000', '512001', '51', '20', '01', '3', '2017-05-11 01:51:58', '2018-08-17 14:32:15', 'ziyangshi', 'z');
INSERT INTO `z_area` VALUES ('2669', '雁江区', '四川省 资阳 雁江区', '512000', '512002', '51', '20', '02', '3', '2017-05-11 01:51:58', '2018-08-17 14:32:15', 'yanjiangqu', 'y');
INSERT INTO `z_area` VALUES ('2670', '安岳县', '四川省 资阳 安岳县', '512000', '512021', '51', '20', '21', '3', '2017-05-11 01:51:59', '2018-08-17 14:32:15', 'anyuexian', 'a');
INSERT INTO `z_area` VALUES ('2671', '乐至县', '四川省 资阳 乐至县', '512000', '512022', '51', '20', '22', '3', '2017-05-11 01:51:59', '2018-08-17 14:32:15', 'lezhixian', 'l');
INSERT INTO `z_area` VALUES ('2672', '简阳市', '四川省 资阳 简阳市', '512000', '512081', '51', '20', '81', '3', '2017-05-11 01:51:59', '2018-08-17 14:32:15', 'jianyangshi', 'j');
INSERT INTO `z_area` VALUES ('2673', '阿坝藏族羌族自治州', '四川省 阿坝藏族羌族自治州', '510000', '513200', '51', '32', '00', '2', '2017-05-11 01:51:59', '2018-08-16 14:23:21', 'abacangzuqiangzuzizhizhou', 'a');
INSERT INTO `z_area` VALUES ('2674', '汶川县', '四川省 阿坝藏族羌族自治州 汶川县', '513200', '513221', '51', '32', '21', '3', '2017-05-11 01:51:59', '2018-08-17 14:32:15', 'wenchuanxian', 'w');
INSERT INTO `z_area` VALUES ('2675', '理县', '四川省 阿坝藏族羌族自治州 理县', '513200', '513222', '51', '32', '22', '3', '2017-05-11 01:51:59', '2018-08-17 14:32:16', 'lixian', 'l');
INSERT INTO `z_area` VALUES ('2676', '茂县', '四川省 阿坝藏族羌族自治州 茂县', '513200', '513223', '51', '32', '23', '3', '2017-05-11 01:52:00', '2018-08-17 14:32:16', 'maoxian', 'm');
INSERT INTO `z_area` VALUES ('2677', '松潘县', '四川省 阿坝藏族羌族自治州 松潘县', '513200', '513224', '51', '32', '24', '3', '2017-05-11 01:52:00', '2018-08-17 14:32:16', 'songpanxian', 's');
INSERT INTO `z_area` VALUES ('2678', '九寨沟县', '四川省 阿坝藏族羌族自治州 九寨沟县', '513200', '513225', '51', '32', '25', '3', '2017-05-11 01:52:00', '2018-08-17 14:32:16', 'jiuzhaigouxian', 'j');
INSERT INTO `z_area` VALUES ('2679', '金川县', '四川省 阿坝藏族羌族自治州 金川县', '513200', '513226', '51', '32', '26', '3', '2017-05-11 01:52:00', '2018-08-17 14:32:16', 'jinchuanxian', 'j');
INSERT INTO `z_area` VALUES ('2680', '小金县', '四川省 阿坝藏族羌族自治州 小金县', '513200', '513227', '51', '32', '27', '3', '2017-05-11 01:52:00', '2018-08-17 14:32:16', 'xiaojinxian', 'x');
INSERT INTO `z_area` VALUES ('2681', '黑水县', '四川省 阿坝藏族羌族自治州 黑水县', '513200', '513228', '51', '32', '28', '3', '2017-05-11 01:52:00', '2018-08-17 14:32:16', 'heishuixian', 'h');
INSERT INTO `z_area` VALUES ('2682', '马尔康县', '四川省 阿坝藏族羌族自治州 马尔康县', '513200', '513229', '51', '32', '29', '3', '2017-05-11 01:52:01', '2018-08-17 14:32:16', 'maerkangxian', 'm');
INSERT INTO `z_area` VALUES ('2683', '壤塘县', '四川省 阿坝藏族羌族自治州 壤塘县', '513200', '513230', '51', '32', '30', '3', '2017-05-11 01:52:01', '2018-08-17 14:32:17', 'rangtangxian', 'r');
INSERT INTO `z_area` VALUES ('2684', '阿坝县', '四川省 阿坝藏族羌族自治州 阿坝县', '513200', '513231', '51', '32', '31', '3', '2017-05-11 01:52:01', '2018-08-17 14:32:17', 'abaxian', 'a');
INSERT INTO `z_area` VALUES ('2685', '若尔盖县', '四川省 阿坝藏族羌族自治州 若尔盖县', '513200', '513232', '51', '32', '32', '3', '2017-05-11 01:52:01', '2018-08-17 14:32:17', 'ruoergaixian', 'r');
INSERT INTO `z_area` VALUES ('2686', '红原县', '四川省 阿坝藏族羌族自治州 红原县', '513200', '513233', '51', '32', '33', '3', '2017-05-11 01:52:01', '2018-08-17 14:32:17', 'hongyuanxian', 'h');
INSERT INTO `z_area` VALUES ('2687', '甘孜藏族自治州', '四川省 甘孜藏族自治州', '510000', '513300', '51', '33', '00', '2', '2017-05-11 01:52:01', '2018-08-16 14:23:23', 'ganzicangzuzizhizhou', 'g');
INSERT INTO `z_area` VALUES ('2688', '康定市', '四川省 甘孜藏族自治州 康定市', '513300', '513301', '51', '33', '01', '3', '2017-05-11 01:52:01', '2018-08-17 14:32:17', 'kangdingshi', 'k');
INSERT INTO `z_area` VALUES ('2689', '泸定县', '四川省 甘孜藏族自治州 泸定县', '513300', '513322', '51', '33', '22', '3', '2017-05-11 01:52:02', '2018-08-17 14:32:17', 'ludingxian', 'l');
INSERT INTO `z_area` VALUES ('2690', '丹巴县', '四川省 甘孜藏族自治州 丹巴县', '513300', '513323', '51', '33', '23', '3', '2017-05-11 01:52:02', '2018-08-17 14:32:18', 'danbaxian', 'd');
INSERT INTO `z_area` VALUES ('2691', '九龙县', '四川省 甘孜藏族自治州 九龙县', '513300', '513324', '51', '33', '24', '3', '2017-05-11 01:52:02', '2018-08-17 14:32:18', 'jiulongxian', 'j');
INSERT INTO `z_area` VALUES ('2692', '雅江县', '四川省 甘孜藏族自治州 雅江县', '513300', '513325', '51', '33', '25', '3', '2017-05-11 01:52:02', '2018-08-17 14:32:18', 'yajiangxian', 'y');
INSERT INTO `z_area` VALUES ('2693', '道孚县', '四川省 甘孜藏族自治州 道孚县', '513300', '513326', '51', '33', '26', '3', '2017-05-11 01:52:02', '2018-08-17 14:32:18', 'daofuxian', 'd');
INSERT INTO `z_area` VALUES ('2694', '炉霍县', '四川省 甘孜藏族自治州 炉霍县', '513300', '513327', '51', '33', '27', '3', '2017-05-11 01:52:02', '2018-08-17 14:32:18', 'luhuoxian', 'l');
INSERT INTO `z_area` VALUES ('2695', '甘孜县', '四川省 甘孜藏族自治州 甘孜县', '513300', '513328', '51', '33', '28', '3', '2017-05-11 01:52:03', '2018-08-17 14:32:18', 'ganzixian', 'g');
INSERT INTO `z_area` VALUES ('2696', '新龙县', '四川省 甘孜藏族自治州 新龙县', '513300', '513329', '51', '33', '29', '3', '2017-05-11 01:52:03', '2018-08-17 14:32:19', 'xinlongxian', 'x');
INSERT INTO `z_area` VALUES ('2697', '德格县', '四川省 甘孜藏族自治州 德格县', '513300', '513330', '51', '33', '30', '3', '2017-05-11 01:52:03', '2018-08-17 14:32:19', 'degexian', 'd');
INSERT INTO `z_area` VALUES ('2698', '白玉县', '四川省 甘孜藏族自治州 白玉县', '513300', '513331', '51', '33', '31', '3', '2017-05-11 01:52:03', '2018-08-17 14:32:19', 'baiyuxian', 'b');
INSERT INTO `z_area` VALUES ('2699', '石渠县', '四川省 甘孜藏族自治州 石渠县', '513300', '513332', '51', '33', '32', '3', '2017-05-11 01:52:03', '2018-08-17 14:32:19', 'shiquxian', 's');
INSERT INTO `z_area` VALUES ('2700', '色达县', '四川省 甘孜藏族自治州 色达县', '513300', '513333', '51', '33', '33', '3', '2017-05-11 01:52:03', '2018-08-17 14:32:19', 'sedaxian', 's');
INSERT INTO `z_area` VALUES ('2701', '理塘县', '四川省 甘孜藏族自治州 理塘县', '513300', '513334', '51', '33', '34', '3', '2017-05-11 01:52:04', '2018-08-17 14:32:19', 'litangxian', 'l');
INSERT INTO `z_area` VALUES ('2702', '巴塘县', '四川省 甘孜藏族自治州 巴塘县', '513300', '513335', '51', '33', '35', '3', '2017-05-11 01:52:04', '2018-08-17 14:32:19', 'batangxian', 'b');
INSERT INTO `z_area` VALUES ('2703', '乡城县', '四川省 甘孜藏族自治州 乡城县', '513300', '513336', '51', '33', '36', '3', '2017-05-11 01:52:04', '2018-08-17 14:32:20', 'xiangchengxian', 'x');
INSERT INTO `z_area` VALUES ('2704', '稻城县', '四川省 甘孜藏族自治州 稻城县', '513300', '513337', '51', '33', '37', '3', '2017-05-11 01:52:04', '2018-08-17 14:32:20', 'daochengxian', 'd');
INSERT INTO `z_area` VALUES ('2705', '得荣县', '四川省 甘孜藏族自治州 得荣县', '513300', '513338', '51', '33', '38', '3', '2017-05-11 01:52:04', '2018-08-17 14:32:20', 'derongxian', 'd');
INSERT INTO `z_area` VALUES ('2706', '凉山彝族自治州', '四川省 凉山彝族自治州', '510000', '513400', '51', '34', '00', '2', '2017-05-11 01:52:04', '2018-08-16 14:23:26', 'liangshanyizuzizhizhou', 'l');
INSERT INTO `z_area` VALUES ('2707', '西昌市', '四川省 凉山彝族自治州 西昌市', '513400', '513401', '51', '34', '01', '3', '2017-05-11 01:52:04', '2018-08-17 14:32:20', 'xichangshi', 'x');
INSERT INTO `z_area` VALUES ('2708', '木里藏族自治县', '四川省 凉山彝族自治州 木里藏族自治县', '513400', '513422', '51', '34', '22', '3', '2017-05-11 01:52:05', '2018-08-17 14:32:20', 'mulicangzuzizhixian', 'm');
INSERT INTO `z_area` VALUES ('2709', '盐源县', '四川省 凉山彝族自治州 盐源县', '513400', '513423', '51', '34', '23', '3', '2017-05-11 01:52:05', '2018-08-17 14:32:20', 'yanyuanxian', 'y');
INSERT INTO `z_area` VALUES ('2710', '德昌县', '四川省 凉山彝族自治州 德昌县', '513400', '513424', '51', '34', '24', '3', '2017-05-11 01:52:05', '2018-08-17 14:32:20', 'dechangxian', 'd');
INSERT INTO `z_area` VALUES ('2711', '会理县', '四川省 凉山彝族自治州 会理县', '513400', '513425', '51', '34', '25', '3', '2017-05-11 01:52:05', '2018-08-17 14:32:21', 'huilixian', 'h');
INSERT INTO `z_area` VALUES ('2712', '会东县', '四川省 凉山彝族自治州 会东县', '513400', '513426', '51', '34', '26', '3', '2017-05-11 01:52:05', '2018-08-17 14:32:21', 'huidongxian', 'h');
INSERT INTO `z_area` VALUES ('2713', '宁南县', '四川省 凉山彝族自治州 宁南县', '513400', '513427', '51', '34', '27', '3', '2017-05-11 01:52:05', '2018-08-17 14:32:21', 'ningnanxian', 'n');
INSERT INTO `z_area` VALUES ('2714', '普格县', '四川省 凉山彝族自治州 普格县', '513400', '513428', '51', '34', '28', '3', '2017-05-11 01:52:06', '2018-08-17 14:32:22', 'pugexian', 'p');
INSERT INTO `z_area` VALUES ('2715', '布拖县', '四川省 凉山彝族自治州 布拖县', '513400', '513429', '51', '34', '29', '3', '2017-05-11 01:52:06', '2018-08-17 14:32:22', 'butuoxian', 'b');
INSERT INTO `z_area` VALUES ('2716', '金阳县', '四川省 凉山彝族自治州 金阳县', '513400', '513430', '51', '34', '30', '3', '2017-05-11 01:52:06', '2018-08-17 14:32:22', 'jinyangxian', 'j');
INSERT INTO `z_area` VALUES ('2717', '昭觉县', '四川省 凉山彝族自治州 昭觉县', '513400', '513431', '51', '34', '31', '3', '2017-05-11 01:52:06', '2018-08-17 14:32:22', 'zhaojuexian', 'z');
INSERT INTO `z_area` VALUES ('2718', '喜德县', '四川省 凉山彝族自治州 喜德县', '513400', '513432', '51', '34', '32', '3', '2017-05-11 01:52:06', '2018-08-17 14:32:22', 'xidexian', 'x');
INSERT INTO `z_area` VALUES ('2719', '冕宁县', '四川省 凉山彝族自治州 冕宁县', '513400', '513433', '51', '34', '33', '3', '2017-05-11 01:52:06', '2018-08-17 14:32:22', 'mianningxian', 'm');
INSERT INTO `z_area` VALUES ('2720', '越西县', '四川省 凉山彝族自治州 越西县', '513400', '513434', '51', '34', '34', '3', '2017-05-11 01:52:07', '2018-08-17 14:32:23', 'yuexixian', 'y');
INSERT INTO `z_area` VALUES ('2721', '甘洛县', '四川省 凉山彝族自治州 甘洛县', '513400', '513435', '51', '34', '35', '3', '2017-05-11 01:52:07', '2018-08-17 14:32:23', 'ganluoxian', 'g');
INSERT INTO `z_area` VALUES ('2722', '美姑县', '四川省 凉山彝族自治州 美姑县', '513400', '513436', '51', '34', '36', '3', '2017-05-11 01:52:07', '2018-08-17 14:32:23', 'meiguxian', 'm');
INSERT INTO `z_area` VALUES ('2723', '雷波县', '四川省 凉山彝族自治州 雷波县', '513400', '513437', '51', '34', '37', '3', '2017-05-11 01:52:07', '2018-08-17 14:32:23', 'leiboxian', 'l');
INSERT INTO `z_area` VALUES ('2724', '贵州省', '贵州省', '', '520000', '52', '00', '00', '1', '2017-05-11 01:52:07', '2017-08-28 14:24:46', 'guizhousheng', 'g');
INSERT INTO `z_area` VALUES ('2725', '贵阳', '贵州省 贵阳', '520000', '520100', '52', '01', '00', '2', '2017-05-11 01:52:07', '2018-08-16 14:23:28', 'guiyang', 'g');
INSERT INTO `z_area` VALUES ('2726', '贵阳市', '贵州省 贵阳 贵阳市', '520100', '520101', '52', '01', '01', '3', '2017-05-11 01:52:07', '2018-08-17 14:32:23', 'guiyangshi', 'g');
INSERT INTO `z_area` VALUES ('2727', '南明区', '贵州省 贵阳 南明区', '520100', '520102', '52', '01', '02', '3', '2017-05-11 01:52:08', '2018-08-17 14:32:23', 'nanmingqu', 'n');
INSERT INTO `z_area` VALUES ('2728', '云岩区', '贵州省 贵阳 云岩区', '520100', '520103', '52', '01', '03', '3', '2017-05-11 01:52:08', '2018-08-17 14:32:23', 'yunyanqu', 'y');
INSERT INTO `z_area` VALUES ('2729', '花溪区', '贵州省 贵阳 花溪区', '520100', '520111', '52', '01', '11', '3', '2017-05-11 01:52:08', '2018-08-17 14:32:24', 'huaxiqu', 'h');
INSERT INTO `z_area` VALUES ('2730', '乌当区', '贵州省 贵阳 乌当区', '520100', '520112', '52', '01', '12', '3', '2017-05-11 01:52:08', '2018-08-17 14:32:24', 'wudangqu', 'w');
INSERT INTO `z_area` VALUES ('2731', '白云区', '贵州省 贵阳 白云区', '520100', '520113', '52', '01', '13', '3', '2017-05-11 01:52:08', '2018-08-17 14:32:24', 'baiyunqu', 'b');
INSERT INTO `z_area` VALUES ('2732', '观山湖区', '贵州省 贵阳 观山湖区', '520100', '520115', '52', '01', '15', '3', '2017-05-11 01:52:08', '2018-08-17 14:32:24', 'guanshanhuqu', 'g');
INSERT INTO `z_area` VALUES ('2733', '开阳县', '贵州省 贵阳 开阳县', '520100', '520121', '52', '01', '21', '3', '2017-05-11 01:52:09', '2018-08-17 14:32:24', 'kaiyangxian', 'k');
INSERT INTO `z_area` VALUES ('2734', '息烽县', '贵州省 贵阳 息烽县', '520100', '520122', '52', '01', '22', '3', '2017-05-11 01:52:09', '2018-08-17 14:32:24', 'xifengxian', 'x');
INSERT INTO `z_area` VALUES ('2735', '修文县', '贵州省 贵阳 修文县', '520100', '520123', '52', '01', '23', '3', '2017-05-11 01:52:09', '2018-08-17 14:32:24', 'xiuwenxian', 'x');
INSERT INTO `z_area` VALUES ('2736', '清镇市', '贵州省 贵阳 清镇市', '520100', '520181', '52', '01', '81', '3', '2017-05-11 01:52:09', '2018-08-17 14:32:24', 'qingzhenshi', 'q');
INSERT INTO `z_area` VALUES ('2737', '六盘水市', '贵州省 六盘水市', '520000', '520200', '52', '02', '00', '2', '2017-05-11 01:52:09', '2018-08-16 14:23:29', 'liupanshuishi', 'l');
INSERT INTO `z_area` VALUES ('2738', '钟山区', '贵州省 六盘水市 钟山区', '520200', '520201', '52', '02', '01', '3', '2017-05-11 01:52:09', '2018-08-17 14:32:25', 'zhongshanqu', 'z');
INSERT INTO `z_area` VALUES ('2739', '六枝特区', '贵州省 六盘水市 六枝特区', '520200', '520203', '52', '02', '03', '3', '2017-05-11 01:52:09', '2018-08-17 14:32:25', 'liuzhitequ', 'l');
INSERT INTO `z_area` VALUES ('2740', '水城县', '贵州省 六盘水市 水城县', '520200', '520221', '52', '02', '21', '3', '2017-05-11 01:52:10', '2018-08-17 14:32:25', 'shuichengxian', 's');
INSERT INTO `z_area` VALUES ('2741', '盘县', '贵州省 六盘水市 盘县', '520200', '520222', '52', '02', '22', '3', '2017-05-11 01:52:10', '2018-08-17 14:32:25', 'panxian', 'p');
INSERT INTO `z_area` VALUES ('2742', '遵义', '贵州省 遵义', '520000', '520300', '52', '03', '00', '2', '2017-05-11 01:52:10', '2018-08-16 14:23:30', 'zunyi', 'z');
INSERT INTO `z_area` VALUES ('2743', '遵义市', '贵州省 遵义 遵义市', '520300', '520301', '52', '03', '01', '3', '2017-05-11 01:52:10', '2018-08-17 14:32:25', 'zunyishi', 'z');
INSERT INTO `z_area` VALUES ('2744', '红花岗区', '贵州省 遵义 红花岗区', '520300', '520302', '52', '03', '02', '3', '2017-05-11 01:52:10', '2018-08-17 14:32:25', 'honghuagangqu', 'h');
INSERT INTO `z_area` VALUES ('2745', '汇川区', '贵州省 遵义 汇川区', '520300', '520303', '52', '03', '03', '3', '2017-05-11 01:52:10', '2018-08-17 14:32:26', 'huichuanqu', 'h');
INSERT INTO `z_area` VALUES ('2746', '遵义县', '贵州省 遵义 遵义县', '520300', '520321', '52', '03', '21', '3', '2017-05-11 01:52:10', '2018-08-17 14:32:26', 'zunyixian', 'z');
INSERT INTO `z_area` VALUES ('2747', '桐梓县', '贵州省 遵义 桐梓县', '520300', '520322', '52', '03', '22', '3', '2017-05-11 01:52:11', '2018-08-17 14:32:26', 'tongzixian', 't');
INSERT INTO `z_area` VALUES ('2748', '绥阳县', '贵州省 遵义 绥阳县', '520300', '520323', '52', '03', '23', '3', '2017-05-11 01:52:11', '2018-08-17 14:32:26', 'suiyangxian', 's');
INSERT INTO `z_area` VALUES ('2749', '正安县', '贵州省 遵义 正安县', '520300', '520324', '52', '03', '24', '3', '2017-05-11 01:52:11', '2018-08-17 14:32:26', 'zhenganxian', 'z');
INSERT INTO `z_area` VALUES ('2750', '道真仡佬族苗族自治县', '贵州省 遵义 道真仡佬族苗族自治县', '520300', '520325', '52', '03', '25', '3', '2017-05-11 01:52:11', '2018-08-17 14:32:26', 'daozhenyilaozumiaozuzizhixian', 'd');
INSERT INTO `z_area` VALUES ('2751', '务川仡佬族苗族自治县', '贵州省 遵义 务川仡佬族苗族自治县', '520300', '520326', '52', '03', '26', '3', '2017-05-11 01:52:11', '2018-08-17 14:32:26', 'wuchuanyilaozumiaozuzizhixian', 'w');
INSERT INTO `z_area` VALUES ('2752', '凤冈县', '贵州省 遵义 凤冈县', '520300', '520327', '52', '03', '27', '3', '2017-05-11 01:52:11', '2018-08-17 14:32:26', 'fenggangxian', 'f');
INSERT INTO `z_area` VALUES ('2753', '湄潭县', '贵州省 遵义 湄潭县', '520300', '520328', '52', '03', '28', '3', '2017-05-11 01:52:12', '2018-08-17 14:32:27', 'meitanxian', 'm');
INSERT INTO `z_area` VALUES ('2754', '余庆县', '贵州省 遵义 余庆县', '520300', '520329', '52', '03', '29', '3', '2017-05-11 01:52:12', '2018-08-17 14:32:27', 'yuqingxian', 'y');
INSERT INTO `z_area` VALUES ('2755', '习水县', '贵州省 遵义 习水县', '520300', '520330', '52', '03', '30', '3', '2017-05-11 01:52:12', '2018-08-17 14:32:27', 'xishuixian', 'x');
INSERT INTO `z_area` VALUES ('2756', '赤水市', '贵州省 遵义 赤水市', '520300', '520381', '52', '03', '81', '3', '2017-05-11 01:52:12', '2018-08-17 14:32:27', 'chishuishi', 'c');
INSERT INTO `z_area` VALUES ('2757', '仁怀市', '贵州省 遵义 仁怀市', '520300', '520382', '52', '03', '82', '3', '2017-05-11 01:52:12', '2018-08-17 14:32:27', 'renhuaishi', 'r');
INSERT INTO `z_area` VALUES ('2758', '安顺', '贵州省 安顺', '520000', '520400', '52', '04', '00', '2', '2017-05-11 01:52:12', '2018-08-16 14:23:32', 'anshun', 'a');
INSERT INTO `z_area` VALUES ('2759', '安顺市', '贵州省 安顺 安顺市', '520400', '520401', '52', '04', '01', '3', '2017-05-11 01:52:12', '2018-08-17 14:32:27', 'anshunshi', 'a');
INSERT INTO `z_area` VALUES ('2760', '西秀区', '贵州省 安顺 西秀区', '520400', '520402', '52', '04', '02', '3', '2017-05-11 01:52:13', '2018-08-17 14:32:27', 'xixiuqu', 'x');
INSERT INTO `z_area` VALUES ('2761', '平坝区', '贵州省 安顺 平坝区', '520400', '520403', '52', '04', '03', '3', '2017-05-11 01:52:13', '2018-08-17 14:32:28', 'pingbaqu', 'p');
INSERT INTO `z_area` VALUES ('2762', '普定县', '贵州省 安顺 普定县', '520400', '520422', '52', '04', '22', '3', '2017-05-11 01:52:13', '2018-08-17 14:32:28', 'pudingxian', 'p');
INSERT INTO `z_area` VALUES ('2763', '镇宁布依族苗族自治县', '贵州省 安顺 镇宁布依族苗族自治县', '520400', '520423', '52', '04', '23', '3', '2017-05-11 01:52:13', '2018-08-17 14:32:28', 'zhenningbuyizumiaozuzizhixian', 'z');
INSERT INTO `z_area` VALUES ('2764', '关岭布依族苗族自治县', '贵州省 安顺 关岭布依族苗族自治县', '520400', '520424', '52', '04', '24', '3', '2017-05-11 01:52:13', '2018-08-17 14:32:28', 'guanlingbuyizumiaozuzizhixian', 'g');
INSERT INTO `z_area` VALUES ('2765', '紫云苗族布依族自治县', '贵州省 安顺 紫云苗族布依族自治县', '520400', '520425', '52', '04', '25', '3', '2017-05-11 01:52:13', '2018-08-17 14:32:28', 'ziyunmiaozubuyizuzizhixian', 'z');
INSERT INTO `z_area` VALUES ('2766', '毕节', '贵州省 毕节', '520000', '520500', '52', '05', '00', '2', '2017-05-11 01:52:13', '2018-08-16 14:23:33', 'bijie', 'b');
INSERT INTO `z_area` VALUES ('2767', '毕节市', '贵州省 毕节 毕节市', '520500', '520501', '52', '05', '01', '3', '2017-05-11 01:52:14', '2018-08-17 14:32:28', 'bijieshi', 'b');
INSERT INTO `z_area` VALUES ('2768', '七星关区', '贵州省 毕节 七星关区', '520500', '520502', '52', '05', '02', '3', '2017-05-11 01:52:14', '2018-08-17 14:32:29', 'qixingguanqu', 'q');
INSERT INTO `z_area` VALUES ('2769', '大方县', '贵州省 毕节 大方县', '520500', '520521', '52', '05', '21', '3', '2017-05-11 01:52:14', '2018-08-17 14:32:29', 'dafangxian', 'd');
INSERT INTO `z_area` VALUES ('2770', '黔西县', '贵州省 毕节 黔西县', '520500', '520522', '52', '05', '22', '3', '2017-05-11 01:52:14', '2018-08-17 14:32:29', 'qianxixian', 'q');
INSERT INTO `z_area` VALUES ('2771', '金沙县', '贵州省 毕节 金沙县', '520500', '520523', '52', '05', '23', '3', '2017-05-11 01:52:14', '2018-08-17 14:32:29', 'jinshaxian', 'j');
INSERT INTO `z_area` VALUES ('2772', '织金县', '贵州省 毕节 织金县', '520500', '520524', '52', '05', '24', '3', '2017-05-11 01:52:14', '2018-08-17 14:32:29', 'zhijinxian', 'z');
INSERT INTO `z_area` VALUES ('2773', '纳雍县', '贵州省 毕节 纳雍县', '520500', '520525', '52', '05', '25', '3', '2017-05-11 01:52:15', '2018-08-17 14:32:29', 'nayongxian', 'n');
INSERT INTO `z_area` VALUES ('2774', '威宁彝族回族苗族自治县', '贵州省 毕节 威宁彝族回族苗族自治县', '520500', '520526', '52', '05', '26', '3', '2017-05-11 01:52:15', '2018-08-17 14:32:29', 'weiningyizuhuizumiaozuzizhixian', 'w');
INSERT INTO `z_area` VALUES ('2775', '赫章县', '贵州省 毕节 赫章县', '520500', '520527', '52', '05', '27', '3', '2017-05-11 01:52:15', '2018-08-17 14:32:30', 'hezhangxian', 'h');
INSERT INTO `z_area` VALUES ('2776', '铜仁', '贵州省 铜仁', '520000', '520600', '52', '06', '00', '2', '2017-05-11 01:52:15', '2018-08-16 14:23:34', 'tongren', 't');
INSERT INTO `z_area` VALUES ('2777', '铜仁市', '贵州省 铜仁 铜仁市', '520600', '520601', '52', '06', '01', '3', '2017-05-11 01:52:15', '2018-08-17 14:32:30', 'tongrenshi', 't');
INSERT INTO `z_area` VALUES ('2778', '碧江区', '贵州省 铜仁 碧江区', '520600', '520602', '52', '06', '02', '3', '2017-05-11 01:52:15', '2018-08-17 14:32:30', 'bijiangqu', 'b');
INSERT INTO `z_area` VALUES ('2779', '万山区', '贵州省 铜仁 万山区', '520600', '520603', '52', '06', '03', '3', '2017-05-11 01:52:15', '2018-08-17 14:32:30', 'wanshanqu', 'w');
INSERT INTO `z_area` VALUES ('2780', '江口县', '贵州省 铜仁 江口县', '520600', '520621', '52', '06', '21', '3', '2017-05-11 01:52:16', '2018-08-17 14:32:30', 'jiangkouxian', 'j');
INSERT INTO `z_area` VALUES ('2781', '玉屏侗族自治县', '贵州省 铜仁 玉屏侗族自治县', '520600', '520622', '52', '06', '22', '3', '2017-05-11 01:52:16', '2018-08-17 14:32:30', 'yupingdongzuzizhixian', 'y');
INSERT INTO `z_area` VALUES ('2782', '石阡县', '贵州省 铜仁 石阡县', '520600', '520623', '52', '06', '23', '3', '2017-05-11 01:52:16', '2018-08-17 14:32:30', 'shiqianxian', 's');
INSERT INTO `z_area` VALUES ('2783', '思南县', '贵州省 铜仁 思南县', '520600', '520624', '52', '06', '24', '3', '2017-05-11 01:52:16', '2018-08-17 14:32:31', 'sinanxian', 's');
INSERT INTO `z_area` VALUES ('2784', '印江土家族苗族自治县', '贵州省 铜仁 印江土家族苗族自治县', '520600', '520625', '52', '06', '25', '3', '2017-05-11 01:52:16', '2018-08-17 14:32:31', 'yinjiangtujiazumiaozuzizhixian', 'y');
INSERT INTO `z_area` VALUES ('2785', '德江县', '贵州省 铜仁 德江县', '520600', '520626', '52', '06', '26', '3', '2017-05-11 01:52:16', '2018-08-17 14:32:31', 'dejiangxian', 'd');
INSERT INTO `z_area` VALUES ('2786', '沿河土家族自治县', '贵州省 铜仁 沿河土家族自治县', '520600', '520627', '52', '06', '27', '3', '2017-05-11 01:52:17', '2018-08-17 14:32:31', 'yanhetujiazuzizhixian', 'y');
INSERT INTO `z_area` VALUES ('2787', '松桃苗族自治县', '贵州省 铜仁 松桃苗族自治县', '520600', '520628', '52', '06', '28', '3', '2017-05-11 01:52:17', '2018-08-17 14:32:31', 'songtaomiaozuzizhixian', 's');
INSERT INTO `z_area` VALUES ('2788', '黔西南布依族苗族自治州', '贵州省 黔西南布依族苗族自治州', '520000', '522300', '52', '23', '00', '2', '2017-05-11 01:52:17', '2018-08-16 14:23:36', 'qianxinanbuyizumiaozuzizhizhou', 'q');
INSERT INTO `z_area` VALUES ('2789', '兴义市', '贵州省 黔西南布依族苗族自治州 兴义市', '522300', '522301', '52', '23', '01', '3', '2017-05-11 01:52:17', '2018-08-17 14:32:31', 'xingyishi', 'x');
INSERT INTO `z_area` VALUES ('2790', '兴仁县', '贵州省 黔西南布依族苗族自治州 兴仁县', '522300', '522322', '52', '23', '22', '3', '2017-05-11 01:52:17', '2018-08-17 14:32:32', 'xingrenxian', 'x');
INSERT INTO `z_area` VALUES ('2791', '普安县', '贵州省 黔西南布依族苗族自治州 普安县', '522300', '522323', '52', '23', '23', '3', '2017-05-11 01:52:17', '2018-08-17 14:32:32', 'puanxian', 'p');
INSERT INTO `z_area` VALUES ('2792', '晴隆县', '贵州省 黔西南布依族苗族自治州 晴隆县', '522300', '522324', '52', '23', '24', '3', '2017-05-11 01:52:17', '2018-08-17 14:32:32', 'qinglongxian', 'q');
INSERT INTO `z_area` VALUES ('2793', '贞丰县', '贵州省 黔西南布依族苗族自治州 贞丰县', '522300', '522325', '52', '23', '25', '3', '2017-05-11 01:52:18', '2018-08-17 14:32:32', 'zhenfengxian', 'z');
INSERT INTO `z_area` VALUES ('2794', '望谟县', '贵州省 黔西南布依族苗族自治州 望谟县', '522300', '522326', '52', '23', '26', '3', '2017-05-11 01:52:18', '2018-08-17 14:32:32', 'wangmoxian', 'w');
INSERT INTO `z_area` VALUES ('2795', '册亨县', '贵州省 黔西南布依族苗族自治州 册亨县', '522300', '522327', '52', '23', '27', '3', '2017-05-11 01:52:18', '2018-08-17 14:32:33', 'cehengxian', 'c');
INSERT INTO `z_area` VALUES ('2796', '安龙县', '贵州省 黔西南布依族苗族自治州 安龙县', '522300', '522328', '52', '23', '28', '3', '2017-05-11 01:52:18', '2018-08-17 14:32:33', 'anlongxian', 'a');
INSERT INTO `z_area` VALUES ('2797', '黔东南苗族侗族自治州', '贵州省 黔东南苗族侗族自治州', '520000', '522600', '52', '26', '00', '2', '2017-05-11 01:52:18', '2018-08-16 14:23:37', 'qiandongnanmiaozudongzuzizhizhou', 'q');
INSERT INTO `z_area` VALUES ('2798', '凯里市', '贵州省 黔东南苗族侗族自治州 凯里市', '522600', '522601', '52', '26', '01', '3', '2017-05-11 01:52:18', '2018-08-17 14:32:33', 'kailishi', 'k');
INSERT INTO `z_area` VALUES ('2799', '黄平县', '贵州省 黔东南苗族侗族自治州 黄平县', '522600', '522622', '52', '26', '22', '3', '2017-05-11 01:52:18', '2018-08-17 14:32:33', 'huangpingxian', 'h');
INSERT INTO `z_area` VALUES ('2800', '施秉县', '贵州省 黔东南苗族侗族自治州 施秉县', '522600', '522623', '52', '26', '23', '3', '2017-05-11 01:52:19', '2018-08-17 14:32:33', 'shibingxian', 's');
INSERT INTO `z_area` VALUES ('2801', '三穗县', '贵州省 黔东南苗族侗族自治州 三穗县', '522600', '522624', '52', '26', '24', '3', '2017-05-11 01:52:19', '2018-08-17 14:32:33', 'sansuixian', 's');
INSERT INTO `z_area` VALUES ('2802', '镇远县', '贵州省 黔东南苗族侗族自治州 镇远县', '522600', '522625', '52', '26', '25', '3', '2017-05-11 01:52:19', '2018-08-17 14:32:33', 'zhenyuanxian', 'z');
INSERT INTO `z_area` VALUES ('2803', '岑巩县', '贵州省 黔东南苗族侗族自治州 岑巩县', '522600', '522626', '52', '26', '26', '3', '2017-05-11 01:52:19', '2018-08-17 14:32:34', 'cengongxian', 'c');
INSERT INTO `z_area` VALUES ('2804', '天柱县', '贵州省 黔东南苗族侗族自治州 天柱县', '522600', '522627', '52', '26', '27', '3', '2017-05-11 01:52:19', '2018-08-17 14:32:34', 'tianzhuxian', 't');
INSERT INTO `z_area` VALUES ('2805', '锦屏县', '贵州省 黔东南苗族侗族自治州 锦屏县', '522600', '522628', '52', '26', '28', '3', '2017-05-11 01:52:19', '2018-08-17 14:32:34', 'jinpingxian', 'j');
INSERT INTO `z_area` VALUES ('2806', '剑河县', '贵州省 黔东南苗族侗族自治州 剑河县', '522600', '522629', '52', '26', '29', '3', '2017-05-11 01:52:20', '2018-08-17 14:32:34', 'jianhexian', 'j');
INSERT INTO `z_area` VALUES ('2807', '台江县', '贵州省 黔东南苗族侗族自治州 台江县', '522600', '522630', '52', '26', '30', '3', '2017-05-11 01:52:20', '2018-08-17 14:32:34', 'taijiangxian', 't');
INSERT INTO `z_area` VALUES ('2808', '黎平县', '贵州省 黔东南苗族侗族自治州 黎平县', '522600', '522631', '52', '26', '31', '3', '2017-05-11 01:52:20', '2018-08-17 14:32:34', 'lipingxian', 'l');
INSERT INTO `z_area` VALUES ('2809', '榕江县', '贵州省 黔东南苗族侗族自治州 榕江县', '522600', '522632', '52', '26', '32', '3', '2017-05-11 01:52:20', '2018-08-17 14:32:34', 'rongjiangxian', 'r');
INSERT INTO `z_area` VALUES ('2810', '从江县', '贵州省 黔东南苗族侗族自治州 从江县', '522600', '522633', '52', '26', '33', '3', '2017-05-11 01:52:20', '2018-08-17 14:32:34', 'congjiangxian', 'c');
INSERT INTO `z_area` VALUES ('2811', '雷山县', '贵州省 黔东南苗族侗族自治州 雷山县', '522600', '522634', '52', '26', '34', '3', '2017-05-11 01:52:20', '2018-08-17 14:32:35', 'leishanxian', 'l');
INSERT INTO `z_area` VALUES ('2812', '麻江县', '贵州省 黔东南苗族侗族自治州 麻江县', '522600', '522635', '52', '26', '35', '3', '2017-05-11 01:52:21', '2018-08-17 14:32:35', 'majiangxian', 'm');
INSERT INTO `z_area` VALUES ('2813', '丹寨县', '贵州省 黔东南苗族侗族自治州 丹寨县', '522600', '522636', '52', '26', '36', '3', '2017-05-11 01:52:21', '2018-08-17 14:32:35', 'danzhaixian', 'd');
INSERT INTO `z_area` VALUES ('2814', '黔南布依族苗族自治州', '贵州省 黔南布依族苗族自治州', '520000', '522700', '52', '27', '00', '2', '2017-05-11 01:52:21', '2018-08-16 14:23:39', 'qiannanbuyizumiaozuzizhizhou', 'q');
INSERT INTO `z_area` VALUES ('2815', '都匀市', '贵州省 黔南布依族苗族自治州 都匀市', '522700', '522701', '52', '27', '01', '3', '2017-05-11 01:52:21', '2018-08-17 14:32:35', 'douyunshi', 'd');
INSERT INTO `z_area` VALUES ('2816', '福泉市', '贵州省 黔南布依族苗族自治州 福泉市', '522700', '522702', '52', '27', '02', '3', '2017-05-11 01:52:21', '2018-08-17 14:32:35', 'fuquanshi', 'f');
INSERT INTO `z_area` VALUES ('2817', '荔波县', '贵州省 黔南布依族苗族自治州 荔波县', '522700', '522722', '52', '27', '22', '3', '2017-05-11 01:52:21', '2018-08-17 14:32:35', 'liboxian', 'l');
INSERT INTO `z_area` VALUES ('2818', '贵定县', '贵州省 黔南布依族苗族自治州 贵定县', '522700', '522723', '52', '27', '23', '3', '2017-05-11 01:52:21', '2018-08-17 14:32:35', 'guidingxian', 'g');
INSERT INTO `z_area` VALUES ('2819', '瓮安县', '贵州省 黔南布依族苗族自治州 瓮安县', '522700', '522725', '52', '27', '25', '3', '2017-05-11 01:52:22', '2018-08-17 14:32:36', 'wenganxian', 'w');
INSERT INTO `z_area` VALUES ('2820', '独山县', '贵州省 黔南布依族苗族自治州 独山县', '522700', '522726', '52', '27', '26', '3', '2017-05-11 01:52:22', '2018-08-17 14:32:36', 'dushanxian', 'd');
INSERT INTO `z_area` VALUES ('2821', '平塘县', '贵州省 黔南布依族苗族自治州 平塘县', '522700', '522727', '52', '27', '27', '3', '2017-05-11 01:52:22', '2018-08-17 14:32:36', 'pingtangxian', 'p');
INSERT INTO `z_area` VALUES ('2822', '罗甸县', '贵州省 黔南布依族苗族自治州 罗甸县', '522700', '522728', '52', '27', '28', '3', '2017-05-11 01:52:22', '2018-08-17 14:32:36', 'luodianxian', 'l');
INSERT INTO `z_area` VALUES ('2823', '长顺县', '贵州省 黔南布依族苗族自治州 长顺县', '522700', '522729', '52', '27', '29', '3', '2017-05-11 01:52:22', '2018-08-17 14:32:36', 'changshunxian', 'c');
INSERT INTO `z_area` VALUES ('2824', '龙里县', '贵州省 黔南布依族苗族自治州 龙里县', '522700', '522730', '52', '27', '30', '3', '2017-05-11 01:52:22', '2018-08-17 14:32:36', 'longlixian', 'l');
INSERT INTO `z_area` VALUES ('2825', '惠水县', '贵州省 黔南布依族苗族自治州 惠水县', '522700', '522731', '52', '27', '31', '3', '2017-05-11 01:52:23', '2018-08-17 14:32:36', 'huishuixian', 'h');
INSERT INTO `z_area` VALUES ('2826', '三都水族自治县', '贵州省 黔南布依族苗族自治州 三都水族自治县', '522700', '522732', '52', '27', '32', '3', '2017-05-11 01:52:23', '2018-08-17 14:32:37', 'sandoushuizuzizhixian', 's');
INSERT INTO `z_area` VALUES ('2827', '云南省', '云南省', '', '530000', '53', '00', '00', '1', '2017-05-11 01:52:23', '2017-08-28 14:24:53', 'yunnansheng', 'y');
INSERT INTO `z_area` VALUES ('2828', '昆明', '云南省 昆明', '530000', '530100', '53', '01', '00', '2', '2017-05-11 01:52:23', '2018-08-16 14:23:41', 'kunming', 'k');
INSERT INTO `z_area` VALUES ('2829', '昆明市', '云南省 昆明 昆明市', '530100', '530101', '53', '01', '01', '3', '2017-05-11 01:52:23', '2018-08-17 14:32:37', 'kunmingshi', 'k');
INSERT INTO `z_area` VALUES ('2830', '五华区', '云南省 昆明 五华区', '530100', '530102', '53', '01', '02', '3', '2017-05-11 01:52:23', '2018-08-17 14:32:37', 'wuhuaqu', 'w');
INSERT INTO `z_area` VALUES ('2831', '盘龙区', '云南省 昆明 盘龙区', '530100', '530103', '53', '01', '03', '3', '2017-05-11 01:52:23', '2018-08-17 14:32:37', 'panlongqu', 'p');
INSERT INTO `z_area` VALUES ('2832', '官渡区', '云南省 昆明 官渡区', '530100', '530111', '53', '01', '11', '3', '2017-05-11 01:52:23', '2018-08-17 14:32:37', 'guanduqu', 'g');
INSERT INTO `z_area` VALUES ('2833', '西山区', '云南省 昆明 西山区', '530100', '530112', '53', '01', '12', '3', '2017-05-11 01:52:24', '2018-08-17 14:32:37', 'xishanqu', 'x');
INSERT INTO `z_area` VALUES ('2834', '东川区', '云南省 昆明 东川区', '530100', '530113', '53', '01', '13', '3', '2017-05-11 01:52:24', '2018-08-17 14:32:38', 'dongchuanqu', 'd');
INSERT INTO `z_area` VALUES ('2835', '呈贡区', '云南省 昆明 呈贡区', '530100', '530114', '53', '01', '14', '3', '2017-05-11 01:52:24', '2018-08-17 14:32:38', 'chenggongqu', 'c');
INSERT INTO `z_area` VALUES ('2836', '晋宁县', '云南省 昆明 晋宁县', '530100', '530122', '53', '01', '22', '3', '2017-05-11 01:52:24', '2018-08-17 14:32:38', 'jinningxian', 'j');
INSERT INTO `z_area` VALUES ('2837', '富民县', '云南省 昆明 富民县', '530100', '530124', '53', '01', '24', '3', '2017-05-11 01:52:24', '2018-08-17 14:32:38', 'fuminxian', 'f');
INSERT INTO `z_area` VALUES ('2838', '宜良县', '云南省 昆明 宜良县', '530100', '530125', '53', '01', '25', '3', '2017-05-11 01:52:24', '2018-08-17 14:32:38', 'yiliangxian', 'y');
INSERT INTO `z_area` VALUES ('2839', '石林彝族自治县', '云南省 昆明 石林彝族自治县', '530100', '530126', '53', '01', '26', '3', '2017-05-11 01:52:25', '2018-08-17 14:32:38', 'shilinyizuzizhixian', 's');
INSERT INTO `z_area` VALUES ('2840', '嵩明县', '云南省 昆明 嵩明县', '530100', '530127', '53', '01', '27', '3', '2017-05-11 01:52:25', '2018-08-17 14:32:38', 'songmingxian', 's');
INSERT INTO `z_area` VALUES ('2841', '禄劝彝族苗族自治县', '云南省 昆明 禄劝彝族苗族自治县', '530100', '530128', '53', '01', '28', '3', '2017-05-11 01:52:25', '2018-08-17 14:32:38', 'luquanyizumiaozuzizhixian', 'l');
INSERT INTO `z_area` VALUES ('2842', '寻甸回族彝族自治县', '云南省 昆明 寻甸回族彝族自治县', '530100', '530129', '53', '01', '29', '3', '2017-05-11 01:52:25', '2018-08-17 14:32:39', 'xundianhuizuyizuzizhixian', 'x');
INSERT INTO `z_area` VALUES ('2843', '安宁市', '云南省 昆明 安宁市', '530100', '530181', '53', '01', '81', '3', '2017-05-11 01:52:25', '2018-08-17 14:32:39', 'anningshi', 'a');
INSERT INTO `z_area` VALUES ('2844', '曲靖', '云南省 曲靖', '530000', '530300', '53', '03', '00', '2', '2017-05-11 01:52:25', '2018-08-16 14:23:43', 'qujing', 'q');
INSERT INTO `z_area` VALUES ('2845', '曲靖市', '云南省 曲靖 曲靖市', '530300', '530301', '53', '03', '01', '3', '2017-05-11 01:52:25', '2018-08-17 14:32:39', 'qujingshi', 'q');
INSERT INTO `z_area` VALUES ('2846', '麒麟区', '云南省 曲靖 麒麟区', '530300', '530302', '53', '03', '02', '3', '2017-05-11 01:52:26', '2018-08-17 14:32:39', 'qilinqu', 'q');
INSERT INTO `z_area` VALUES ('2847', '马龙县', '云南省 曲靖 马龙县', '530300', '530321', '53', '03', '21', '3', '2017-05-11 01:52:26', '2018-08-17 14:32:39', 'malongxian', 'm');
INSERT INTO `z_area` VALUES ('2848', '陆良县', '云南省 曲靖 陆良县', '530300', '530322', '53', '03', '22', '3', '2017-05-11 01:52:26', '2018-08-17 14:32:39', 'luliangxian', 'l');
INSERT INTO `z_area` VALUES ('2849', '师宗县', '云南省 曲靖 师宗县', '530300', '530323', '53', '03', '23', '3', '2017-05-11 01:52:26', '2018-08-17 14:32:39', 'shizongxian', 's');
INSERT INTO `z_area` VALUES ('2850', '罗平县', '云南省 曲靖 罗平县', '530300', '530324', '53', '03', '24', '3', '2017-05-11 01:52:26', '2018-08-17 14:32:40', 'luopingxian', 'l');
INSERT INTO `z_area` VALUES ('2851', '富源县', '云南省 曲靖 富源县', '530300', '530325', '53', '03', '25', '3', '2017-05-11 01:52:27', '2018-08-17 14:32:40', 'fuyuanxian', 'f');
INSERT INTO `z_area` VALUES ('2852', '会泽县', '云南省 曲靖 会泽县', '530300', '530326', '53', '03', '26', '3', '2017-05-11 01:52:27', '2018-08-17 14:32:40', 'huizexian', 'h');
INSERT INTO `z_area` VALUES ('2853', '沾益县', '云南省 曲靖 沾益县', '530300', '530328', '53', '03', '28', '3', '2017-05-11 01:52:27', '2018-08-17 14:32:40', 'zhanyixian', 'z');
INSERT INTO `z_area` VALUES ('2854', '宣威市', '云南省 曲靖 宣威市', '530300', '530381', '53', '03', '81', '3', '2017-05-11 01:52:27', '2018-08-17 14:32:40', 'xuanweishi', 'x');
INSERT INTO `z_area` VALUES ('2855', '玉溪', '云南省 玉溪', '530000', '530400', '53', '04', '00', '2', '2017-05-11 01:52:27', '2018-08-16 14:23:44', 'yuxi', 'y');
INSERT INTO `z_area` VALUES ('2856', '玉溪市', '云南省 玉溪 玉溪市', '530400', '530401', '53', '04', '01', '3', '2017-05-11 01:52:27', '2018-08-17 14:32:40', 'yuxishi', 'y');
INSERT INTO `z_area` VALUES ('2857', '红塔区', '云南省 玉溪 红塔区', '530400', '530402', '53', '04', '02', '3', '2017-05-11 01:52:27', '2018-08-17 14:32:40', 'hongtaqu', 'h');
INSERT INTO `z_area` VALUES ('2858', '江川县', '云南省 玉溪 江川县', '530400', '530421', '53', '04', '21', '3', '2017-05-11 01:52:28', '2018-08-17 14:32:41', 'jiangchuanxian', 'j');
INSERT INTO `z_area` VALUES ('2859', '澄江县', '云南省 玉溪 澄江县', '530400', '530422', '53', '04', '22', '3', '2017-05-11 01:52:28', '2018-08-17 14:32:41', 'chengjiangxian', 'c');
INSERT INTO `z_area` VALUES ('2860', '通海县', '云南省 玉溪 通海县', '530400', '530423', '53', '04', '23', '3', '2017-05-11 01:52:28', '2018-08-17 14:32:41', 'tonghaixian', 't');
INSERT INTO `z_area` VALUES ('2861', '华宁县', '云南省 玉溪 华宁县', '530400', '530424', '53', '04', '24', '3', '2017-05-11 01:52:28', '2018-08-17 14:32:41', 'huaningxian', 'h');
INSERT INTO `z_area` VALUES ('2862', '易门县', '云南省 玉溪 易门县', '530400', '530425', '53', '04', '25', '3', '2017-05-11 01:52:28', '2018-08-17 14:32:41', 'yimenxian', 'y');
INSERT INTO `z_area` VALUES ('2863', '峨山彝族自治县', '云南省 玉溪 峨山彝族自治县', '530400', '530426', '53', '04', '26', '3', '2017-05-11 01:52:28', '2018-08-17 14:32:41', 'eshanyizuzizhixian', 'e');
INSERT INTO `z_area` VALUES ('2864', '新平彝族傣族自治县', '云南省 玉溪 新平彝族傣族自治县', '530400', '530427', '53', '04', '27', '3', '2017-05-11 01:52:29', '2018-08-17 14:32:41', 'xinpingyizudaizuzizhixian', 'x');
INSERT INTO `z_area` VALUES ('2865', '元江哈尼族彝族傣族自治县', '云南省 玉溪 元江哈尼族彝族傣族自治县', '530400', '530428', '53', '04', '28', '3', '2017-05-11 01:52:29', '2018-08-17 14:32:41', 'yuanjianghanizuyizudaizuzizhixian', 'y');
INSERT INTO `z_area` VALUES ('2866', '保山', '云南省 保山', '530000', '530500', '53', '05', '00', '2', '2017-05-11 01:52:29', '2018-08-16 14:23:46', 'baoshan', 'b');
INSERT INTO `z_area` VALUES ('2867', '保山市', '云南省 保山 保山市', '530500', '530501', '53', '05', '01', '3', '2017-05-11 01:52:29', '2018-08-17 14:32:42', 'baoshanshi', 'b');
INSERT INTO `z_area` VALUES ('2868', '隆阳区', '云南省 保山 隆阳区', '530500', '530502', '53', '05', '02', '3', '2017-05-11 01:52:29', '2018-08-17 14:32:42', 'longyangqu', 'l');
INSERT INTO `z_area` VALUES ('2869', '施甸县', '云南省 保山 施甸县', '530500', '530521', '53', '05', '21', '3', '2017-05-11 01:52:29', '2018-08-17 14:32:42', 'shidianxian', 's');
INSERT INTO `z_area` VALUES ('2870', '龙陵县', '云南省 保山 龙陵县', '530500', '530523', '53', '05', '23', '3', '2017-05-11 01:52:29', '2018-08-17 14:32:42', 'longlingxian', 'l');
INSERT INTO `z_area` VALUES ('2871', '昌宁县', '云南省 保山 昌宁县', '530500', '530524', '53', '05', '24', '3', '2017-05-11 01:52:30', '2018-08-17 14:32:42', 'changningxian', 'c');
INSERT INTO `z_area` VALUES ('2872', '腾冲市', '云南省 保山 腾冲市', '530500', '530581', '53', '05', '81', '3', '2017-05-11 01:52:30', '2018-08-17 14:32:42', 'tengchongshi', 't');
INSERT INTO `z_area` VALUES ('2873', '昭通', '云南省 昭通', '530000', '530600', '53', '06', '00', '2', '2017-05-11 01:52:30', '2018-08-16 14:23:47', 'zhaotong', 'z');
INSERT INTO `z_area` VALUES ('2874', '昭通市', '云南省 昭通 昭通市', '530600', '530601', '53', '06', '01', '3', '2017-05-11 01:52:30', '2018-08-17 14:32:43', 'zhaotongshi', 'z');
INSERT INTO `z_area` VALUES ('2875', '昭阳区', '云南省 昭通 昭阳区', '530600', '530602', '53', '06', '02', '3', '2017-05-11 01:52:30', '2018-08-17 14:32:43', 'zhaoyangqu', 'z');
INSERT INTO `z_area` VALUES ('2876', '鲁甸县', '云南省 昭通 鲁甸县', '530600', '530621', '53', '06', '21', '3', '2017-05-11 01:52:30', '2018-08-17 14:32:43', 'ludianxian', 'l');
INSERT INTO `z_area` VALUES ('2877', '巧家县', '云南省 昭通 巧家县', '530600', '530622', '53', '06', '22', '3', '2017-05-11 01:52:30', '2018-08-17 14:32:43', 'qiaojiaxian', 'q');
INSERT INTO `z_area` VALUES ('2878', '盐津县', '云南省 昭通 盐津县', '530600', '530623', '53', '06', '23', '3', '2017-05-11 01:52:31', '2018-08-17 14:32:43', 'yanjinxian', 'y');
INSERT INTO `z_area` VALUES ('2879', '大关县', '云南省 昭通 大关县', '530600', '530624', '53', '06', '24', '3', '2017-05-11 01:52:31', '2018-08-17 14:32:43', 'daguanxian', 'd');
INSERT INTO `z_area` VALUES ('2880', '永善县', '云南省 昭通 永善县', '530600', '530625', '53', '06', '25', '3', '2017-05-11 01:52:31', '2018-08-17 14:32:43', 'yongshanxian', 'y');
INSERT INTO `z_area` VALUES ('2881', '绥江县', '云南省 昭通 绥江县', '530600', '530626', '53', '06', '26', '3', '2017-05-11 01:52:31', '2018-08-17 14:32:43', 'suijiangxian', 's');
INSERT INTO `z_area` VALUES ('2882', '镇雄县', '云南省 昭通 镇雄县', '530600', '530627', '53', '06', '27', '3', '2017-05-11 01:52:31', '2018-08-17 14:32:44', 'zhenxiongxian', 'z');
INSERT INTO `z_area` VALUES ('2883', '彝良县', '云南省 昭通 彝良县', '530600', '530628', '53', '06', '28', '3', '2017-05-11 01:52:31', '2018-08-17 14:32:44', 'yiliangxian', 'y');
INSERT INTO `z_area` VALUES ('2884', '威信县', '云南省 昭通 威信县', '530600', '530629', '53', '06', '29', '3', '2017-05-11 01:52:32', '2018-08-17 14:32:44', 'weixinxian', 'w');
INSERT INTO `z_area` VALUES ('2885', '水富县', '云南省 昭通 水富县', '530600', '530630', '53', '06', '30', '3', '2017-05-11 01:52:32', '2018-08-17 14:32:44', 'shuifuxian', 's');
INSERT INTO `z_area` VALUES ('2886', '丽江', '云南省 丽江', '530000', '530700', '53', '07', '00', '2', '2017-05-11 01:52:32', '2018-08-16 14:23:48', 'lijiang', 'l');
INSERT INTO `z_area` VALUES ('2887', '丽江市', '云南省 丽江 丽江市', '530700', '530701', '53', '07', '01', '3', '2017-05-11 01:52:32', '2018-08-17 14:32:44', 'lijiangshi', 'l');
INSERT INTO `z_area` VALUES ('2888', '古城区', '云南省 丽江 古城区', '530700', '530702', '53', '07', '02', '3', '2017-05-11 01:52:32', '2018-08-17 14:32:44', 'guchengqu', 'g');
INSERT INTO `z_area` VALUES ('2889', '玉龙纳西族自治县', '云南省 丽江 玉龙纳西族自治县', '530700', '530721', '53', '07', '21', '3', '2017-05-11 01:52:32', '2018-08-17 14:32:44', 'yulongnaxizuzizhixian', 'y');
INSERT INTO `z_area` VALUES ('2890', '永胜县', '云南省 丽江 永胜县', '530700', '530722', '53', '07', '22', '3', '2017-05-11 01:52:32', '2018-08-17 14:32:45', 'yongshengxian', 'y');
INSERT INTO `z_area` VALUES ('2891', '华坪县', '云南省 丽江 华坪县', '530700', '530723', '53', '07', '23', '3', '2017-05-11 01:52:33', '2018-08-17 14:32:45', 'huapingxian', 'h');
INSERT INTO `z_area` VALUES ('2892', '宁蒗彝族自治县', '云南省 丽江 宁蒗彝族自治县', '530700', '530724', '53', '07', '24', '3', '2017-05-11 01:52:33', '2018-08-17 14:32:45', 'ninglangyizuzizhixian', 'n');
INSERT INTO `z_area` VALUES ('2893', '普洱', '云南省 普洱', '530000', '530800', '53', '08', '00', '2', '2017-05-11 01:52:33', '2018-08-16 14:23:49', 'puer', 'p');
INSERT INTO `z_area` VALUES ('2894', '普洱市', '云南省 普洱 普洱市', '530800', '530801', '53', '08', '01', '3', '2017-05-11 01:52:33', '2018-08-17 14:32:45', 'puershi', 'p');
INSERT INTO `z_area` VALUES ('2895', '思茅区', '云南省 普洱 思茅区', '530800', '530802', '53', '08', '02', '3', '2017-05-11 01:52:33', '2018-08-17 14:32:45', 'simaoqu', 's');
INSERT INTO `z_area` VALUES ('2896', '宁洱哈尼族彝族自治县', '云南省 普洱 宁洱哈尼族彝族自治县', '530800', '530821', '53', '08', '21', '3', '2017-05-11 01:52:33', '2018-08-17 14:32:45', 'ningerhanizuyizuzizhixian', 'n');
INSERT INTO `z_area` VALUES ('2897', '墨江哈尼族自治县', '云南省 普洱 墨江哈尼族自治县', '530800', '530822', '53', '08', '22', '3', '2017-05-11 01:52:33', '2018-08-17 14:32:45', 'mojianghanizuzizhixian', 'm');
INSERT INTO `z_area` VALUES ('2898', '景东彝族自治县', '云南省 普洱 景东彝族自治县', '530800', '530823', '53', '08', '23', '3', '2017-05-11 01:52:34', '2018-08-17 14:32:46', 'jingdongyizuzizhixian', 'j');
INSERT INTO `z_area` VALUES ('2899', '景谷傣族彝族自治县', '云南省 普洱 景谷傣族彝族自治县', '530800', '530824', '53', '08', '24', '3', '2017-05-11 01:52:34', '2018-08-17 14:32:46', 'jinggudaizuyizuzizhixian', 'j');
INSERT INTO `z_area` VALUES ('2900', '镇沅彝族哈尼族拉祜族自治县', '云南省 普洱 镇沅彝族哈尼族拉祜族自治县', '530800', '530825', '53', '08', '25', '3', '2017-05-11 01:52:34', '2018-08-17 14:32:46', 'zhenyuanyizuhanizulahuzuzizhixian', 'z');
INSERT INTO `z_area` VALUES ('2901', '江城哈尼族彝族自治县', '云南省 普洱 江城哈尼族彝族自治县', '530800', '530826', '53', '08', '26', '3', '2017-05-11 01:52:34', '2018-08-17 14:32:46', 'jiangchenghanizuyizuzizhixian', 'j');
INSERT INTO `z_area` VALUES ('2902', '孟连傣族拉祜族佤族自治县', '云南省 普洱 孟连傣族拉祜族佤族自治县', '530800', '530827', '53', '08', '27', '3', '2017-05-11 01:52:34', '2018-08-17 14:32:46', 'mengliandaizulahuzuwazuzizhixian', 'm');
INSERT INTO `z_area` VALUES ('2903', '澜沧拉祜族自治县', '云南省 普洱 澜沧拉祜族自治县', '530800', '530828', '53', '08', '28', '3', '2017-05-11 01:52:34', '2018-08-17 14:32:46', 'lancanglahuzuzizhixian', 'l');
INSERT INTO `z_area` VALUES ('2904', '西盟佤族自治县', '云南省 普洱 西盟佤族自治县', '530800', '530829', '53', '08', '29', '3', '2017-05-11 01:52:35', '2018-08-17 14:32:47', 'ximengwazuzizhixian', 'x');
INSERT INTO `z_area` VALUES ('2905', '临沧', '云南省 临沧', '530000', '530900', '53', '09', '00', '2', '2017-05-11 01:52:35', '2018-08-16 14:23:51', 'lincang', 'l');
INSERT INTO `z_area` VALUES ('2906', '临沧市', '云南省 临沧 临沧市', '530900', '530901', '53', '09', '01', '3', '2017-05-11 01:52:35', '2018-08-17 14:32:47', 'lincangshi', 'l');
INSERT INTO `z_area` VALUES ('2907', '临翔区', '云南省 临沧 临翔区', '530900', '530902', '53', '09', '02', '3', '2017-05-11 01:52:35', '2018-08-17 14:32:47', 'linxiangqu', 'l');
INSERT INTO `z_area` VALUES ('2908', '凤庆县', '云南省 临沧 凤庆县', '530900', '530921', '53', '09', '21', '3', '2017-05-11 01:52:35', '2018-08-17 14:32:47', 'fengqingxian', 'f');
INSERT INTO `z_area` VALUES ('2909', '云县', '云南省 临沧 云县', '530900', '530922', '53', '09', '22', '3', '2017-05-11 01:52:35', '2018-08-17 14:32:47', 'yunxian', 'y');
INSERT INTO `z_area` VALUES ('2910', '永德县', '云南省 临沧 永德县', '530900', '530923', '53', '09', '23', '3', '2017-05-11 01:52:35', '2018-08-17 14:32:47', 'yongdexian', 'y');
INSERT INTO `z_area` VALUES ('2911', '镇康县', '云南省 临沧 镇康县', '530900', '530924', '53', '09', '24', '3', '2017-05-11 01:52:36', '2018-08-17 14:32:47', 'zhenkangxian', 'z');
INSERT INTO `z_area` VALUES ('2912', '双江拉祜族佤族布朗族傣族自治县', '云南省 临沧 双江拉祜族佤族布朗族傣族自治县', '530900', '530925', '53', '09', '25', '3', '2017-05-11 01:52:36', '2018-08-17 14:32:48', 'shuangjianglahuzuwazubulangzudaizuzizhixian', 's');
INSERT INTO `z_area` VALUES ('2913', '耿马傣族佤族自治县', '云南省 临沧 耿马傣族佤族自治县', '530900', '530926', '53', '09', '26', '3', '2017-05-11 01:52:36', '2018-08-17 14:32:48', 'gengmadaizuwazuzizhixian', 'g');
INSERT INTO `z_area` VALUES ('2914', '沧源佤族自治县', '云南省 临沧 沧源佤族自治县', '530900', '530927', '53', '09', '27', '3', '2017-05-11 01:52:36', '2018-08-17 14:32:48', 'cangyuanwazuzizhixian', 'c');
INSERT INTO `z_area` VALUES ('2915', '楚雄彝族自治州', '云南省 楚雄彝族自治州', '530000', '532300', '53', '23', '00', '2', '2017-05-11 01:52:36', '2018-08-16 14:23:52', 'chuxiongyizuzizhizhou', 'c');
INSERT INTO `z_area` VALUES ('2916', '楚雄市', '云南省 楚雄彝族自治州 楚雄市', '532300', '532301', '53', '23', '01', '3', '2017-05-11 01:52:36', '2018-08-17 14:32:48', 'chuxiongshi', 'c');
INSERT INTO `z_area` VALUES ('2917', '双柏县', '云南省 楚雄彝族自治州 双柏县', '532300', '532322', '53', '23', '22', '3', '2017-05-11 01:52:37', '2018-08-17 14:32:48', 'shuangbaixian', 's');
INSERT INTO `z_area` VALUES ('2918', '牟定县', '云南省 楚雄彝族自治州 牟定县', '532300', '532323', '53', '23', '23', '3', '2017-05-11 01:52:37', '2018-08-17 14:32:48', 'moudingxian', 'm');
INSERT INTO `z_area` VALUES ('2919', '南华县', '云南省 楚雄彝族自治州 南华县', '532300', '532324', '53', '23', '24', '3', '2017-05-11 01:52:37', '2018-08-17 14:32:48', 'nanhuaxian', 'n');
INSERT INTO `z_area` VALUES ('2920', '姚安县', '云南省 楚雄彝族自治州 姚安县', '532300', '532325', '53', '23', '25', '3', '2017-05-11 01:52:37', '2018-08-17 14:32:49', 'yaoanxian', 'y');
INSERT INTO `z_area` VALUES ('2921', '大姚县', '云南省 楚雄彝族自治州 大姚县', '532300', '532326', '53', '23', '26', '3', '2017-05-11 01:52:37', '2018-08-17 14:32:49', 'dayaoxian', 'd');
INSERT INTO `z_area` VALUES ('2922', '永仁县', '云南省 楚雄彝族自治州 永仁县', '532300', '532327', '53', '23', '27', '3', '2017-05-11 01:52:37', '2018-08-17 14:32:49', 'yongrenxian', 'y');
INSERT INTO `z_area` VALUES ('2923', '元谋县', '云南省 楚雄彝族自治州 元谋县', '532300', '532328', '53', '23', '28', '3', '2017-05-11 01:52:37', '2018-08-17 14:32:49', 'yuanmouxian', 'y');
INSERT INTO `z_area` VALUES ('2924', '武定县', '云南省 楚雄彝族自治州 武定县', '532300', '532329', '53', '23', '29', '3', '2017-05-11 01:52:38', '2018-08-17 14:32:49', 'wudingxian', 'w');
INSERT INTO `z_area` VALUES ('2925', '禄丰县', '云南省 楚雄彝族自治州 禄丰县', '532300', '532331', '53', '23', '31', '3', '2017-05-11 01:52:38', '2018-08-17 14:32:49', 'lufengxian', 'l');
INSERT INTO `z_area` VALUES ('2926', '红河哈尼族彝族自治州', '云南省 红河哈尼族彝族自治州', '530000', '532500', '53', '25', '00', '2', '2017-05-11 01:52:38', '2018-08-16 14:23:53', 'honghehanizuyizuzizhizhou', 'h');
INSERT INTO `z_area` VALUES ('2927', '个旧市', '云南省 红河哈尼族彝族自治州 个旧市', '532500', '532501', '53', '25', '01', '3', '2017-05-11 01:52:38', '2018-08-17 14:32:49', 'gejiushi', 'g');
INSERT INTO `z_area` VALUES ('2928', '开远市', '云南省 红河哈尼族彝族自治州 开远市', '532500', '532502', '53', '25', '02', '3', '2017-05-11 01:52:38', '2018-08-17 14:32:50', 'kaiyuanshi', 'k');
INSERT INTO `z_area` VALUES ('2929', '蒙自市', '云南省 红河哈尼族彝族自治州 蒙自市', '532500', '532503', '53', '25', '03', '3', '2017-05-11 01:52:38', '2018-08-17 14:32:50', 'mengzishi', 'm');
INSERT INTO `z_area` VALUES ('2930', '弥勒市', '云南省 红河哈尼族彝族自治州 弥勒市', '532500', '532504', '53', '25', '04', '3', '2017-05-11 01:52:38', '2018-08-17 14:32:50', 'mileshi', 'm');
INSERT INTO `z_area` VALUES ('2931', '屏边苗族自治县', '云南省 红河哈尼族彝族自治州 屏边苗族自治县', '532500', '532523', '53', '25', '23', '3', '2017-05-11 01:52:39', '2018-08-17 14:32:50', 'pingbianmiaozuzizhixian', 'p');
INSERT INTO `z_area` VALUES ('2932', '建水县', '云南省 红河哈尼族彝族自治州 建水县', '532500', '532524', '53', '25', '24', '3', '2017-05-11 01:52:39', '2018-08-17 14:32:50', 'jianshuixian', 'j');
INSERT INTO `z_area` VALUES ('2933', '石屏县', '云南省 红河哈尼族彝族自治州 石屏县', '532500', '532525', '53', '25', '25', '3', '2017-05-11 01:52:39', '2018-08-17 14:32:50', 'shipingxian', 's');
INSERT INTO `z_area` VALUES ('2934', '泸西县', '云南省 红河哈尼族彝族自治州 泸西县', '532500', '532527', '53', '25', '27', '3', '2017-05-11 01:52:39', '2018-08-17 14:32:50', 'luxixian', 'l');
INSERT INTO `z_area` VALUES ('2935', '元阳县', '云南省 红河哈尼族彝族自治州 元阳县', '532500', '532528', '53', '25', '28', '3', '2017-05-11 01:52:39', '2018-08-17 14:32:51', 'yuanyangxian', 'y');
INSERT INTO `z_area` VALUES ('2936', '红河县', '云南省 红河哈尼族彝族自治州 红河县', '532500', '532529', '53', '25', '29', '3', '2017-05-11 01:52:39', '2018-08-17 14:32:51', 'honghexian', 'h');
INSERT INTO `z_area` VALUES ('2937', '金平苗族瑶族傣族自治县', '云南省 红河哈尼族彝族自治州 金平苗族瑶族傣族自治县', '532500', '532530', '53', '25', '30', '3', '2017-05-11 01:52:40', '2018-08-17 14:32:51', 'jinpingmiaozuyaozudaizuzizhixian', 'j');
INSERT INTO `z_area` VALUES ('2938', '绿春县', '云南省 红河哈尼族彝族自治州 绿春县', '532500', '532531', '53', '25', '31', '3', '2017-05-11 01:52:40', '2018-08-17 14:32:51', 'lvchunxian', 'l');
INSERT INTO `z_area` VALUES ('2939', '河口瑶族自治县', '云南省 红河哈尼族彝族自治州 河口瑶族自治县', '532500', '532532', '53', '25', '32', '3', '2017-05-11 01:52:40', '2018-08-17 14:32:51', 'hekouyaozuzizhixian', 'h');
INSERT INTO `z_area` VALUES ('2940', '文山壮族苗族自治州', '云南省 文山壮族苗族自治州', '530000', '532600', '53', '26', '00', '2', '2017-05-11 01:52:40', '2018-08-16 14:23:55', 'wenshanzhuangzumiaozuzizhizhou', 'w');
INSERT INTO `z_area` VALUES ('2941', '文山市', '云南省 文山壮族苗族自治州 文山市', '532600', '532601', '53', '26', '01', '3', '2017-05-11 01:52:40', '2018-08-17 14:32:51', 'wenshanshi', 'w');
INSERT INTO `z_area` VALUES ('2942', '砚山县', '云南省 文山壮族苗族自治州 砚山县', '532600', '532622', '53', '26', '22', '3', '2017-05-11 01:52:40', '2018-08-17 14:32:51', 'yanshanxian', 'y');
INSERT INTO `z_area` VALUES ('2943', '西畴县', '云南省 文山壮族苗族自治州 西畴县', '532600', '532623', '53', '26', '23', '3', '2017-05-11 01:52:40', '2018-08-17 14:32:51', 'xichouxian', 'x');
INSERT INTO `z_area` VALUES ('2944', '麻栗坡县', '云南省 文山壮族苗族自治州 麻栗坡县', '532600', '532624', '53', '26', '24', '3', '2017-05-11 01:52:41', '2018-08-17 14:32:52', 'malipoxian', 'm');
INSERT INTO `z_area` VALUES ('2945', '马关县', '云南省 文山壮族苗族自治州 马关县', '532600', '532625', '53', '26', '25', '3', '2017-05-11 01:52:41', '2018-08-17 14:32:52', 'maguanxian', 'm');
INSERT INTO `z_area` VALUES ('2946', '丘北县', '云南省 文山壮族苗族自治州 丘北县', '532600', '532626', '53', '26', '26', '3', '2017-05-11 01:52:41', '2018-08-17 14:32:52', 'qiubeixian', 'q');
INSERT INTO `z_area` VALUES ('2947', '广南县', '云南省 文山壮族苗族自治州 广南县', '532600', '532627', '53', '26', '27', '3', '2017-05-11 01:52:41', '2018-08-17 14:32:52', 'guangnanxian', 'g');
INSERT INTO `z_area` VALUES ('2948', '富宁县', '云南省 文山壮族苗族自治州 富宁县', '532600', '532628', '53', '26', '28', '3', '2017-05-11 01:52:41', '2018-08-17 14:32:52', 'funingxian', 'f');
INSERT INTO `z_area` VALUES ('2949', '西双版纳傣族自治州', '云南省 西双版纳傣族自治州', '530000', '532800', '53', '28', '00', '2', '2017-05-11 01:52:41', '2018-08-16 14:23:56', 'xishuangbannadaizuzizhizhou', 'x');
INSERT INTO `z_area` VALUES ('2950', '景洪市', '云南省 西双版纳傣族自治州 景洪市', '532800', '532801', '53', '28', '01', '3', '2017-05-11 01:52:42', '2018-08-17 14:32:52', 'jinghongshi', 'j');
INSERT INTO `z_area` VALUES ('2951', '勐海县', '云南省 西双版纳傣族自治州 勐海县', '532800', '532822', '53', '28', '22', '3', '2017-05-11 01:52:42', '2018-08-17 14:32:52', 'menghaixian', 'm');
INSERT INTO `z_area` VALUES ('2952', '勐腊县', '云南省 西双版纳傣族自治州 勐腊县', '532800', '532823', '53', '28', '23', '3', '2017-05-11 01:52:42', '2018-08-17 14:32:53', 'menglaxian', 'm');
INSERT INTO `z_area` VALUES ('2953', '大理白族自治州', '云南省 大理白族自治州', '530000', '532900', '53', '29', '00', '2', '2017-05-11 01:52:42', '2018-08-16 14:23:57', 'dalibaizuzizhizhou', 'd');
INSERT INTO `z_area` VALUES ('2954', '大理市', '云南省 大理白族自治州 大理市', '532900', '532901', '53', '29', '01', '3', '2017-05-11 01:52:42', '2018-08-17 14:32:53', 'dalishi', 'd');
INSERT INTO `z_area` VALUES ('2955', '漾濞彝族自治县', '云南省 大理白族自治州 漾濞彝族自治县', '532900', '532922', '53', '29', '22', '3', '2017-05-11 01:52:42', '2018-08-17 14:32:53', 'yangbiyizuzizhixian', 'y');
INSERT INTO `z_area` VALUES ('2956', '祥云县', '云南省 大理白族自治州 祥云县', '532900', '532923', '53', '29', '23', '3', '2017-05-11 01:52:42', '2018-08-17 14:32:53', 'xiangyunxian', 'x');
INSERT INTO `z_area` VALUES ('2957', '宾川县', '云南省 大理白族自治州 宾川县', '532900', '532924', '53', '29', '24', '3', '2017-05-11 01:52:43', '2018-08-17 14:32:53', 'binchuanxian', 'b');
INSERT INTO `z_area` VALUES ('2958', '弥渡县', '云南省 大理白族自治州 弥渡县', '532900', '532925', '53', '29', '25', '3', '2017-05-11 01:52:43', '2018-08-17 14:32:53', 'miduxian', 'm');
INSERT INTO `z_area` VALUES ('2959', '南涧彝族自治县', '云南省 大理白族自治州 南涧彝族自治县', '532900', '532926', '53', '29', '26', '3', '2017-05-11 01:52:43', '2018-08-17 14:32:53', 'nanjianyizuzizhixian', 'n');
INSERT INTO `z_area` VALUES ('2960', '巍山彝族回族自治县', '云南省 大理白族自治州 巍山彝族回族自治县', '532900', '532927', '53', '29', '27', '3', '2017-05-11 01:52:43', '2018-08-17 14:32:54', 'weishanyizuhuizuzizhixian', 'w');
INSERT INTO `z_area` VALUES ('2961', '永平县', '云南省 大理白族自治州 永平县', '532900', '532928', '53', '29', '28', '3', '2017-05-11 01:52:43', '2018-08-17 14:32:54', 'yongpingxian', 'y');
INSERT INTO `z_area` VALUES ('2962', '云龙县', '云南省 大理白族自治州 云龙县', '532900', '532929', '53', '29', '29', '3', '2017-05-11 01:52:43', '2018-08-17 14:32:54', 'yunlongxian', 'y');
INSERT INTO `z_area` VALUES ('2963', '洱源县', '云南省 大理白族自治州 洱源县', '532900', '532930', '53', '29', '30', '3', '2017-05-11 01:52:44', '2018-08-17 14:32:54', 'eryuanxian', 'e');
INSERT INTO `z_area` VALUES ('2964', '剑川县', '云南省 大理白族自治州 剑川县', '532900', '532931', '53', '29', '31', '3', '2017-05-11 01:52:44', '2018-08-17 14:32:54', 'jianchuanxian', 'j');
INSERT INTO `z_area` VALUES ('2965', '鹤庆县', '云南省 大理白族自治州 鹤庆县', '532900', '532932', '53', '29', '32', '3', '2017-05-11 01:52:44', '2018-08-17 14:32:54', 'heqingxian', 'h');
INSERT INTO `z_area` VALUES ('2966', '德宏傣族景颇族自治州', '云南省 德宏傣族景颇族自治州', '530000', '533100', '53', '31', '00', '2', '2017-05-11 01:52:44', '2018-08-16 14:23:58', 'dehongdaizujingpozuzizhizhou', 'd');
INSERT INTO `z_area` VALUES ('2967', '瑞丽市', '云南省 德宏傣族景颇族自治州 瑞丽市', '533100', '533102', '53', '31', '02', '3', '2017-05-11 01:52:44', '2018-08-17 14:32:55', 'ruilishi', 'r');
INSERT INTO `z_area` VALUES ('2968', '芒市', '云南省 德宏傣族景颇族自治州 芒市', '533100', '533103', '53', '31', '03', '3', '2017-05-11 01:52:44', '2018-08-17 14:32:55', 'mangshi', 'm');
INSERT INTO `z_area` VALUES ('2969', '梁河县', '云南省 德宏傣族景颇族自治州 梁河县', '533100', '533122', '53', '31', '22', '3', '2017-05-11 01:52:44', '2018-08-17 14:32:55', 'lianghexian', 'l');
INSERT INTO `z_area` VALUES ('2970', '盈江县', '云南省 德宏傣族景颇族自治州 盈江县', '533100', '533123', '53', '31', '23', '3', '2017-05-11 01:52:45', '2018-08-17 14:32:55', 'yingjiangxian', 'y');
INSERT INTO `z_area` VALUES ('2971', '陇川县', '云南省 德宏傣族景颇族自治州 陇川县', '533100', '533124', '53', '31', '24', '3', '2017-05-11 01:52:45', '2018-08-17 14:32:55', 'longchuanxian', 'l');
INSERT INTO `z_area` VALUES ('2972', '怒江傈僳族自治州', '云南省 怒江傈僳族自治州', '530000', '533300', '53', '33', '00', '2', '2017-05-11 01:52:45', '2018-08-16 14:23:59', 'nujianglisuzuzizhizhou', 'n');
INSERT INTO `z_area` VALUES ('2973', '泸水县', '云南省 怒江傈僳族自治州 泸水县', '533300', '533321', '53', '33', '21', '3', '2017-05-11 01:52:45', '2018-08-17 14:32:55', 'lushuixian', 'l');
INSERT INTO `z_area` VALUES ('2974', '福贡县', '云南省 怒江傈僳族自治州 福贡县', '533300', '533323', '53', '33', '23', '3', '2017-05-11 01:52:45', '2018-08-17 14:32:55', 'fugongxian', 'f');
INSERT INTO `z_area` VALUES ('2975', '贡山独龙族怒族自治县', '云南省 怒江傈僳族自治州 贡山独龙族怒族自治县', '533300', '533324', '53', '33', '24', '3', '2017-05-11 01:52:45', '2018-08-17 14:32:56', 'gongshandulongzunuzuzizhixian', 'g');
INSERT INTO `z_area` VALUES ('2976', '兰坪白族普米族自治县', '云南省 怒江傈僳族自治州 兰坪白族普米族自治县', '533300', '533325', '53', '33', '25', '3', '2017-05-11 01:52:45', '2018-08-17 14:32:56', 'lanpingbaizupumizuzizhixian', 'l');
INSERT INTO `z_area` VALUES ('2977', '迪庆藏族自治州', '云南省 迪庆藏族自治州', '530000', '533400', '53', '34', '00', '2', '2017-05-11 01:52:46', '2018-08-16 14:24:00', 'diqingcangzuzizhizhou', 'd');
INSERT INTO `z_area` VALUES ('2978', '香格里拉市', '云南省 迪庆藏族自治州 香格里拉市', '533400', '533401', '53', '34', '01', '3', '2017-05-11 01:52:46', '2018-08-17 14:32:56', 'xianggelilashi', 'x');
INSERT INTO `z_area` VALUES ('2979', '德钦县', '云南省 迪庆藏族自治州 德钦县', '533400', '533422', '53', '34', '22', '3', '2017-05-11 01:52:46', '2018-08-17 14:32:56', 'deqinxian', 'd');
INSERT INTO `z_area` VALUES ('2980', '维西傈僳族自治县', '云南省 迪庆藏族自治州 维西傈僳族自治县', '533400', '533423', '53', '34', '23', '3', '2017-05-11 01:52:46', '2018-08-17 14:32:56', 'weixilisuzuzizhixian', 'w');
INSERT INTO `z_area` VALUES ('2981', '西藏自治区', '西藏自治区', '', '540000', '54', '00', '00', '1', '2017-05-11 01:52:46', '2017-08-28 14:25:05', 'xicangzizhiqu', 'x');
INSERT INTO `z_area` VALUES ('2982', '拉萨', '西藏自治区 拉萨', '540000', '540100', '54', '01', '00', '2', '2017-05-11 01:52:46', '2018-08-16 14:24:00', 'lasa', 'l');
INSERT INTO `z_area` VALUES ('2983', '拉萨市', '西藏自治区 拉萨 拉萨市', '540100', '540101', '54', '01', '01', '3', '2017-05-11 01:52:46', '2018-08-17 14:32:56', 'lasashi', 'l');
INSERT INTO `z_area` VALUES ('2984', '城关区', '西藏自治区 拉萨 城关区', '540100', '540102', '54', '01', '02', '3', '2017-05-11 01:52:46', '2018-08-17 14:32:57', 'chengguanqu', 'c');
INSERT INTO `z_area` VALUES ('2985', '林周县', '西藏自治区 拉萨 林周县', '540100', '540121', '54', '01', '21', '3', '2017-05-11 01:52:47', '2018-08-17 14:32:57', 'linzhouxian', 'l');
INSERT INTO `z_area` VALUES ('2986', '当雄县', '西藏自治区 拉萨 当雄县', '540100', '540122', '54', '01', '22', '3', '2017-05-11 01:52:47', '2018-08-17 14:32:57', 'dangxiongxian', 'd');
INSERT INTO `z_area` VALUES ('2987', '尼木县', '西藏自治区 拉萨 尼木县', '540100', '540123', '54', '01', '23', '3', '2017-05-11 01:52:47', '2018-08-17 14:32:57', 'nimuxian', 'n');
INSERT INTO `z_area` VALUES ('2988', '曲水县', '西藏自治区 拉萨 曲水县', '540100', '540124', '54', '01', '24', '3', '2017-05-11 01:52:47', '2018-08-17 14:32:57', 'qushuixian', 'q');
INSERT INTO `z_area` VALUES ('2989', '堆龙德庆县', '西藏自治区 拉萨 堆龙德庆县', '540100', '540125', '54', '01', '25', '3', '2017-05-11 01:52:47', '2018-08-17 14:32:57', 'duilongdeqingxian', 'd');
INSERT INTO `z_area` VALUES ('2990', '达孜县', '西藏自治区 拉萨 达孜县', '540100', '540126', '54', '01', '26', '3', '2017-05-11 01:52:47', '2018-08-17 14:32:57', 'dazixian', 'd');
INSERT INTO `z_area` VALUES ('2991', '墨竹工卡县', '西藏自治区 拉萨 墨竹工卡县', '540100', '540127', '54', '01', '27', '3', '2017-05-11 01:52:48', '2018-08-17 14:32:58', 'mozhugongkaxian', 'm');
INSERT INTO `z_area` VALUES ('2992', '日喀则市', '西藏自治区 日喀则市', '540000', '540200', '54', '02', '00', '2', '2017-05-11 01:52:48', '2018-08-16 14:24:02', 'rikazeshi', 'r');
INSERT INTO `z_area` VALUES ('2993', '桑珠孜区', '西藏自治区 日喀则市 桑珠孜区', '540200', '540202', '54', '02', '02', '3', '2017-05-11 01:52:48', '2018-08-17 14:32:58', 'sangzhuziqu', 's');
INSERT INTO `z_area` VALUES ('2994', '南木林县', '西藏自治区 日喀则市 南木林县', '540200', '540221', '54', '02', '21', '3', '2017-05-11 01:52:48', '2018-08-17 14:32:58', 'nanmulinxian', 'n');
INSERT INTO `z_area` VALUES ('2995', '江孜县', '西藏自治区 日喀则市 江孜县', '540200', '540222', '54', '02', '22', '3', '2017-05-11 01:52:48', '2018-08-17 14:32:58', 'jiangzixian', 'j');
INSERT INTO `z_area` VALUES ('2996', '定日县', '西藏自治区 日喀则市 定日县', '540200', '540223', '54', '02', '23', '3', '2017-05-11 01:52:48', '2018-08-17 14:32:58', 'dingrixian', 'd');
INSERT INTO `z_area` VALUES ('2997', '萨迦县', '西藏自治区 日喀则市 萨迦县', '540200', '540224', '54', '02', '24', '3', '2017-05-11 01:52:48', '2018-08-17 14:32:58', 'sajiaxian', 's');
INSERT INTO `z_area` VALUES ('2998', '拉孜县', '西藏自治区 日喀则市 拉孜县', '540200', '540225', '54', '02', '25', '3', '2017-05-11 01:52:49', '2018-08-17 14:32:58', 'lazixian', 'l');
INSERT INTO `z_area` VALUES ('2999', '昂仁县', '西藏自治区 日喀则市 昂仁县', '540200', '540226', '54', '02', '26', '3', '2017-05-11 01:52:49', '2018-08-17 14:32:58', 'angrenxian', 'a');
INSERT INTO `z_area` VALUES ('3000', '谢通门县', '西藏自治区 日喀则市 谢通门县', '540200', '540227', '54', '02', '27', '3', '2017-05-11 01:52:49', '2018-08-17 14:32:59', 'xietongmenxian', 'x');
INSERT INTO `z_area` VALUES ('3001', '白朗县', '西藏自治区 日喀则市 白朗县', '540200', '540228', '54', '02', '28', '3', '2017-05-11 01:52:49', '2018-08-17 14:32:59', 'bailangxian', 'b');
INSERT INTO `z_area` VALUES ('3002', '仁布县', '西藏自治区 日喀则市 仁布县', '540200', '540229', '54', '02', '29', '3', '2017-05-11 01:52:49', '2018-08-17 14:32:59', 'renbuxian', 'r');
INSERT INTO `z_area` VALUES ('3003', '康马县', '西藏自治区 日喀则市 康马县', '540200', '540230', '54', '02', '30', '3', '2017-05-11 01:52:49', '2018-08-17 14:32:59', 'kangmaxian', 'k');
INSERT INTO `z_area` VALUES ('3004', '定结县', '西藏自治区 日喀则市 定结县', '540200', '540231', '54', '02', '31', '3', '2017-05-11 01:52:50', '2018-08-17 14:32:59', 'dingjiexian', 'd');
INSERT INTO `z_area` VALUES ('3005', '仲巴县', '西藏自治区 日喀则市 仲巴县', '540200', '540232', '54', '02', '32', '3', '2017-05-11 01:52:50', '2018-08-17 14:32:59', 'zhongbaxian', 'z');
INSERT INTO `z_area` VALUES ('3006', '亚东县', '西藏自治区 日喀则市 亚东县', '540200', '540233', '54', '02', '33', '3', '2017-05-11 01:52:50', '2018-08-17 14:33:00', 'yadongxian', 'y');
INSERT INTO `z_area` VALUES ('3007', '吉隆县', '西藏自治区 日喀则市 吉隆县', '540200', '540234', '54', '02', '34', '3', '2017-05-11 01:52:50', '2018-08-17 14:33:00', 'jilongxian', 'j');
INSERT INTO `z_area` VALUES ('3008', '聂拉木县', '西藏自治区 日喀则市 聂拉木县', '540200', '540235', '54', '02', '35', '3', '2017-05-11 01:52:50', '2018-08-17 14:33:00', 'nielamuxian', 'n');
INSERT INTO `z_area` VALUES ('3009', '萨嘎县', '西藏自治区 日喀则市 萨嘎县', '540200', '540236', '54', '02', '36', '3', '2017-05-11 01:52:50', '2018-08-17 14:33:00', 'sagaxian', 's');
INSERT INTO `z_area` VALUES ('3010', '岗巴县', '西藏自治区 日喀则市 岗巴县', '540200', '540237', '54', '02', '37', '3', '2017-05-11 01:52:50', '2018-08-17 14:33:00', 'gangbaxian', 'g');
INSERT INTO `z_area` VALUES ('3011', '昌都市', '西藏自治区 昌都市', '540000', '540300', '54', '03', '00', '2', '2017-05-11 01:52:51', '2018-08-16 14:24:04', 'changdoushi', 'c');
INSERT INTO `z_area` VALUES ('3012', '卡若区', '西藏自治区 昌都市 卡若区', '540300', '540302', '54', '03', '02', '3', '2017-05-11 01:52:51', '2018-08-17 14:33:00', 'karuoqu', 'k');
INSERT INTO `z_area` VALUES ('3013', '江达县', '西藏自治区 昌都市 江达县', '540300', '540321', '54', '03', '21', '3', '2017-05-11 01:52:51', '2018-08-17 14:33:00', 'jiangdaxian', 'j');
INSERT INTO `z_area` VALUES ('3014', '贡觉县', '西藏自治区 昌都市 贡觉县', '540300', '540322', '54', '03', '22', '3', '2017-05-11 01:52:51', '2018-08-17 14:33:01', 'gongjuexian', 'g');
INSERT INTO `z_area` VALUES ('3015', '类乌齐县', '西藏自治区 昌都市 类乌齐县', '540300', '540323', '54', '03', '23', '3', '2017-05-11 01:52:51', '2018-08-17 14:33:01', 'leiwuqixian', 'l');
INSERT INTO `z_area` VALUES ('3016', '丁青县', '西藏自治区 昌都市 丁青县', '540300', '540324', '54', '03', '24', '3', '2017-05-11 01:52:51', '2018-08-17 14:33:01', 'dingqingxian', 'd');
INSERT INTO `z_area` VALUES ('3017', '察雅县', '西藏自治区 昌都市 察雅县', '540300', '540325', '54', '03', '25', '3', '2017-05-11 01:52:52', '2018-08-17 14:33:01', 'chayaxian', 'c');
INSERT INTO `z_area` VALUES ('3018', '八宿县', '西藏自治区 昌都市 八宿县', '540300', '540326', '54', '03', '26', '3', '2017-05-11 01:52:52', '2018-08-17 14:33:01', 'basuxian', 'b');
INSERT INTO `z_area` VALUES ('3019', '左贡县', '西藏自治区 昌都市 左贡县', '540300', '540327', '54', '03', '27', '3', '2017-05-11 01:52:52', '2018-08-17 14:33:01', 'zuogongxian', 'z');
INSERT INTO `z_area` VALUES ('3020', '芒康县', '西藏自治区 昌都市 芒康县', '540300', '540328', '54', '03', '28', '3', '2017-05-11 01:52:52', '2018-08-17 14:33:01', 'mangkangxian', 'm');
INSERT INTO `z_area` VALUES ('3021', '洛隆县', '西藏自治区 昌都市 洛隆县', '540300', '540329', '54', '03', '29', '3', '2017-05-11 01:52:52', '2018-08-17 14:33:02', 'luolongxian', 'l');
INSERT INTO `z_area` VALUES ('3022', '边坝县', '西藏自治区 昌都市 边坝县', '540300', '540330', '54', '03', '30', '3', '2017-05-11 01:52:52', '2018-08-17 14:33:02', 'bianbaxian', 'b');
INSERT INTO `z_area` VALUES ('3023', '林芝市', '西藏自治区 林芝市', '540000', '540400', '54', '04', '00', '2', '2017-05-11 01:52:52', '2018-08-16 14:24:06', 'linzhishi', 'l');
INSERT INTO `z_area` VALUES ('3024', '巴宜区', '西藏自治区 林芝市 巴宜区', '540400', '540402', '54', '04', '02', '3', '2017-05-11 01:52:53', '2018-08-17 14:33:02', 'bayiqu', 'b');
INSERT INTO `z_area` VALUES ('3025', '工布江达县', '西藏自治区 林芝市 工布江达县', '540400', '540421', '54', '04', '21', '3', '2017-05-11 01:52:53', '2018-08-17 14:33:02', 'gongbujiangdaxian', 'g');
INSERT INTO `z_area` VALUES ('3026', '米林县', '西藏自治区 林芝市 米林县', '540400', '540422', '54', '04', '22', '3', '2017-05-11 01:52:53', '2018-08-17 14:33:02', 'milinxian', 'm');
INSERT INTO `z_area` VALUES ('3027', '墨脱县', '西藏自治区 林芝市 墨脱县', '540400', '540423', '54', '04', '23', '3', '2017-05-11 01:52:53', '2018-08-17 14:33:02', 'motuoxian', 'm');
INSERT INTO `z_area` VALUES ('3028', '波密县', '西藏自治区 林芝市 波密县', '540400', '540424', '54', '04', '24', '3', '2017-05-11 01:52:53', '2018-08-17 14:33:02', 'bomixian', 'b');
INSERT INTO `z_area` VALUES ('3029', '察隅县', '西藏自治区 林芝市 察隅县', '540400', '540425', '54', '04', '25', '3', '2017-05-11 01:52:53', '2018-08-17 14:33:03', 'chayuxian', 'c');
INSERT INTO `z_area` VALUES ('3030', '朗县', '西藏自治区 林芝市 朗县', '540400', '540426', '54', '04', '26', '3', '2017-05-11 01:52:54', '2018-08-17 14:33:03', 'langxian', 'l');
INSERT INTO `z_area` VALUES ('3031', '山南地区', '西藏自治区 山南地区', '540000', '542200', '54', '22', '00', '2', '2017-05-11 01:52:54', '2018-08-16 14:24:07', 'shannandiqu', 's');
INSERT INTO `z_area` VALUES ('3032', '乃东县', '西藏自治区 山南地区 乃东县', '542200', '542221', '54', '22', '21', '3', '2017-05-11 01:52:54', '2018-08-17 14:33:03', 'naidongxian', 'n');
INSERT INTO `z_area` VALUES ('3033', '扎囊县', '西藏自治区 山南地区 扎囊县', '542200', '542222', '54', '22', '22', '3', '2017-05-11 01:52:54', '2018-08-17 14:33:03', 'zhanangxian', 'z');
INSERT INTO `z_area` VALUES ('3034', '贡嘎县', '西藏自治区 山南地区 贡嘎县', '542200', '542223', '54', '22', '23', '3', '2017-05-11 01:52:54', '2018-08-17 14:33:03', 'gonggaxian', 'g');
INSERT INTO `z_area` VALUES ('3035', '桑日县', '西藏自治区 山南地区 桑日县', '542200', '542224', '54', '22', '24', '3', '2017-05-11 01:52:54', '2018-08-17 14:33:03', 'sangrixian', 's');
INSERT INTO `z_area` VALUES ('3036', '琼结县', '西藏自治区 山南地区 琼结县', '542200', '542225', '54', '22', '25', '3', '2017-05-11 01:52:54', '2018-08-17 14:33:03', 'qiongjiexian', 'q');
INSERT INTO `z_area` VALUES ('3037', '曲松县', '西藏自治区 山南地区 曲松县', '542200', '542226', '54', '22', '26', '3', '2017-05-11 01:52:55', '2018-08-17 14:33:04', 'qusongxian', 'q');
INSERT INTO `z_area` VALUES ('3038', '措美县', '西藏自治区 山南地区 措美县', '542200', '542227', '54', '22', '27', '3', '2017-05-11 01:52:55', '2018-08-17 14:33:04', 'cuomeixian', 'c');
INSERT INTO `z_area` VALUES ('3039', '洛扎县', '西藏自治区 山南地区 洛扎县', '542200', '542228', '54', '22', '28', '3', '2017-05-11 01:52:55', '2018-08-17 14:33:04', 'luozhaxian', 'l');
INSERT INTO `z_area` VALUES ('3040', '加查县', '西藏自治区 山南地区 加查县', '542200', '542229', '54', '22', '29', '3', '2017-05-11 01:52:55', '2018-08-17 14:33:04', 'jiachaxian', 'j');
INSERT INTO `z_area` VALUES ('3041', '隆子县', '西藏自治区 山南地区 隆子县', '542200', '542231', '54', '22', '31', '3', '2017-05-11 01:52:55', '2018-08-17 14:33:04', 'longzixian', 'l');
INSERT INTO `z_area` VALUES ('3042', '错那县', '西藏自治区 山南地区 错那县', '542200', '542232', '54', '22', '32', '3', '2017-05-11 01:52:55', '2018-08-17 14:33:04', 'cuonaxian', 'c');
INSERT INTO `z_area` VALUES ('3043', '浪卡子县', '西藏自治区 山南地区 浪卡子县', '542200', '542233', '54', '22', '33', '3', '2017-05-11 01:52:56', '2018-08-17 14:33:04', 'langkazixian', 'l');
INSERT INTO `z_area` VALUES ('3044', '那曲地区', '西藏自治区 那曲地区', '540000', '542400', '54', '24', '00', '2', '2017-05-11 01:52:56', '2018-08-16 14:24:08', 'naqudiqu', 'n');
INSERT INTO `z_area` VALUES ('3045', '那曲县', '西藏自治区 那曲地区 那曲县', '542400', '542421', '54', '24', '21', '3', '2017-05-11 01:52:56', '2018-08-17 14:33:04', 'naquxian', 'n');
INSERT INTO `z_area` VALUES ('3046', '嘉黎县', '西藏自治区 那曲地区 嘉黎县', '542400', '542422', '54', '24', '22', '3', '2017-05-11 01:52:56', '2018-08-17 14:33:05', 'jialixian', 'j');
INSERT INTO `z_area` VALUES ('3047', '比如县', '西藏自治区 那曲地区 比如县', '542400', '542423', '54', '24', '23', '3', '2017-05-11 01:52:56', '2018-08-17 14:33:05', 'biruxian', 'b');
INSERT INTO `z_area` VALUES ('3048', '聂荣县', '西藏自治区 那曲地区 聂荣县', '542400', '542424', '54', '24', '24', '3', '2017-05-11 01:52:56', '2018-08-17 14:33:05', 'nierongxian', 'n');
INSERT INTO `z_area` VALUES ('3049', '安多县', '西藏自治区 那曲地区 安多县', '542400', '542425', '54', '24', '25', '3', '2017-05-11 01:52:56', '2018-08-17 14:33:05', 'anduoxian', 'a');
INSERT INTO `z_area` VALUES ('3050', '申扎县', '西藏自治区 那曲地区 申扎县', '542400', '542426', '54', '24', '26', '3', '2017-05-11 01:52:57', '2018-08-17 14:33:05', 'shenzhaxian', 's');
INSERT INTO `z_area` VALUES ('3051', '索县', '西藏自治区 那曲地区 索县', '542400', '542427', '54', '24', '27', '3', '2017-05-11 01:52:57', '2018-08-17 14:33:05', 'suoxian', 's');
INSERT INTO `z_area` VALUES ('3052', '班戈县', '西藏自治区 那曲地区 班戈县', '542400', '542428', '54', '24', '28', '3', '2017-05-11 01:52:57', '2018-08-17 14:33:05', 'bangexian', 'b');
INSERT INTO `z_area` VALUES ('3053', '巴青县', '西藏自治区 那曲地区 巴青县', '542400', '542429', '54', '24', '29', '3', '2017-05-11 01:52:57', '2018-08-17 14:33:06', 'baqingxian', 'b');
INSERT INTO `z_area` VALUES ('3054', '尼玛县', '西藏自治区 那曲地区 尼玛县', '542400', '542430', '54', '24', '30', '3', '2017-05-11 01:52:57', '2018-08-17 14:33:06', 'nimaxian', 'n');
INSERT INTO `z_area` VALUES ('3055', '双湖县', '西藏自治区 那曲地区 双湖县', '542400', '542431', '54', '24', '31', '3', '2017-05-11 01:52:57', '2018-08-17 14:33:06', 'shuanghuxian', 's');
INSERT INTO `z_area` VALUES ('3056', '阿里地区', '西藏自治区 阿里地区', '540000', '542500', '54', '25', '00', '2', '2017-05-11 01:52:58', '2018-08-16 14:24:10', 'alidiqu', 'a');
INSERT INTO `z_area` VALUES ('3057', '普兰县', '西藏自治区 阿里地区 普兰县', '542500', '542521', '54', '25', '21', '3', '2017-05-11 01:52:58', '2018-08-17 14:33:06', 'pulanxian', 'p');
INSERT INTO `z_area` VALUES ('3058', '札达县', '西藏自治区 阿里地区 札达县', '542500', '542522', '54', '25', '22', '3', '2017-05-11 01:52:58', '2018-08-17 14:33:06', 'zhadaxian', 'z');
INSERT INTO `z_area` VALUES ('3059', '噶尔县', '西藏自治区 阿里地区 噶尔县', '542500', '542523', '54', '25', '23', '3', '2017-05-11 01:52:58', '2018-08-17 14:33:06', 'gaerxian', 'g');
INSERT INTO `z_area` VALUES ('3060', '日土县', '西藏自治区 阿里地区 日土县', '542500', '542524', '54', '25', '24', '3', '2017-05-11 01:52:58', '2018-08-17 14:33:06', 'rituxian', 'r');
INSERT INTO `z_area` VALUES ('3061', '革吉县', '西藏自治区 阿里地区 革吉县', '542500', '542525', '54', '25', '25', '3', '2017-05-11 01:52:58', '2018-08-17 14:33:06', 'gejixian', 'g');
INSERT INTO `z_area` VALUES ('3062', '改则县', '西藏自治区 阿里地区 改则县', '542500', '542526', '54', '25', '26', '3', '2017-05-11 01:52:58', '2018-08-17 14:33:07', 'gaizexian', 'g');
INSERT INTO `z_area` VALUES ('3063', '措勤县', '西藏自治区 阿里地区 措勤县', '542500', '542527', '54', '25', '27', '3', '2017-05-11 01:52:59', '2018-08-17 14:33:07', 'cuoqinxian', 'c');
INSERT INTO `z_area` VALUES ('3064', '陕西省', '陕西省', '', '610000', '61', '00', '00', '1', '2017-05-11 01:52:59', '2017-08-28 14:25:11', 'shanxisheng', 's');
INSERT INTO `z_area` VALUES ('3065', '西安', '陕西省 西安', '610000', '610100', '61', '01', '00', '2', '2017-05-11 01:52:59', '2018-08-16 14:24:11', 'xian', 'x');
INSERT INTO `z_area` VALUES ('3066', '西安市', '陕西省 西安 西安市', '610100', '610101', '61', '01', '01', '3', '2017-05-11 01:52:59', '2018-08-17 14:33:07', 'xianshi', 'x');
INSERT INTO `z_area` VALUES ('3067', '新城区', '陕西省 西安 新城区', '610100', '610102', '61', '01', '02', '3', '2017-05-11 01:52:59', '2018-08-17 14:33:07', 'xinchengqu', 'x');
INSERT INTO `z_area` VALUES ('3068', '碑林区', '陕西省 西安 碑林区', '610100', '610103', '61', '01', '03', '3', '2017-05-11 01:52:59', '2018-08-17 14:33:07', 'beilinqu', 'b');
INSERT INTO `z_area` VALUES ('3069', '莲湖区', '陕西省 西安 莲湖区', '610100', '610104', '61', '01', '04', '3', '2017-05-11 01:52:59', '2018-08-17 14:33:07', 'lianhuqu', 'l');
INSERT INTO `z_area` VALUES ('3070', '灞桥区', '陕西省 西安 灞桥区', '610100', '610111', '61', '01', '11', '3', '2017-05-11 01:53:00', '2018-08-17 14:33:08', 'baqiaoqu', 'b');
INSERT INTO `z_area` VALUES ('3071', '未央区', '陕西省 西安 未央区', '610100', '610112', '61', '01', '12', '3', '2017-05-11 01:53:00', '2018-08-17 14:33:08', 'weiyangqu', 'w');
INSERT INTO `z_area` VALUES ('3072', '雁塔区', '陕西省 西安 雁塔区', '610100', '610113', '61', '01', '13', '3', '2017-05-11 01:53:00', '2018-08-17 14:33:08', 'yantaqu', 'y');
INSERT INTO `z_area` VALUES ('3073', '阎良区', '陕西省 西安 阎良区', '610100', '610114', '61', '01', '14', '3', '2017-05-11 01:53:00', '2018-08-17 14:33:08', 'yanliangqu', 'y');
INSERT INTO `z_area` VALUES ('3074', '临潼区', '陕西省 西安 临潼区', '610100', '610115', '61', '01', '15', '3', '2017-05-11 01:53:00', '2018-08-17 14:33:08', 'lintongqu', 'l');
INSERT INTO `z_area` VALUES ('3075', '长安区', '陕西省 西安 长安区', '610100', '610116', '61', '01', '16', '3', '2017-05-11 01:53:00', '2018-08-17 14:33:08', 'changanqu', 'c');
INSERT INTO `z_area` VALUES ('3076', '高陵区', '陕西省 西安 高陵区', '610100', '610117', '61', '01', '17', '3', '2017-05-11 01:53:01', '2018-08-17 14:33:08', 'gaolingqu', 'g');
INSERT INTO `z_area` VALUES ('3077', '蓝田县', '陕西省 西安 蓝田县', '610100', '610122', '61', '01', '22', '3', '2017-05-11 01:53:01', '2018-08-17 14:33:09', 'lantianxian', 'l');
INSERT INTO `z_area` VALUES ('3078', '周至县', '陕西省 西安 周至县', '610100', '610124', '61', '01', '24', '3', '2017-05-11 01:53:01', '2018-08-17 14:33:09', 'zhouzhixian', 'z');
INSERT INTO `z_area` VALUES ('3079', '户县', '陕西省 西安 户县', '610100', '610125', '61', '01', '25', '3', '2017-05-11 01:53:01', '2018-08-17 14:33:09', 'huxian', 'h');
INSERT INTO `z_area` VALUES ('3080', '铜川', '陕西省 铜川', '610000', '610200', '61', '02', '00', '2', '2017-05-11 01:53:01', '2018-08-16 14:24:13', 'tongchuan', 't');
INSERT INTO `z_area` VALUES ('3081', '铜川市', '陕西省 铜川 铜川市', '610200', '610201', '61', '02', '01', '3', '2017-05-11 01:53:01', '2018-08-17 14:33:09', 'tongchuanshi', 't');
INSERT INTO `z_area` VALUES ('3082', '王益区', '陕西省 铜川 王益区', '610200', '610202', '61', '02', '02', '3', '2017-05-11 01:53:01', '2018-08-17 14:33:09', 'wangyiqu', 'w');
INSERT INTO `z_area` VALUES ('3083', '印台区', '陕西省 铜川 印台区', '610200', '610203', '61', '02', '03', '3', '2017-05-11 01:53:02', '2018-08-17 14:33:09', 'yintaiqu', 'y');
INSERT INTO `z_area` VALUES ('3084', '耀州区', '陕西省 铜川 耀州区', '610200', '610204', '61', '02', '04', '3', '2017-05-11 01:53:02', '2018-08-17 14:33:10', 'yaozhouqu', 'y');
INSERT INTO `z_area` VALUES ('3085', '宜君县', '陕西省 铜川 宜君县', '610200', '610222', '61', '02', '22', '3', '2017-05-11 01:53:02', '2018-08-17 14:33:10', 'yijunxian', 'y');
INSERT INTO `z_area` VALUES ('3086', '宝鸡', '陕西省 宝鸡', '610000', '610300', '61', '03', '00', '2', '2017-05-11 01:53:02', '2018-08-16 14:24:14', 'baoji', 'b');
INSERT INTO `z_area` VALUES ('3087', '宝鸡市', '陕西省 宝鸡 宝鸡市', '610300', '610301', '61', '03', '01', '3', '2017-05-11 01:53:02', '2018-08-17 14:33:10', 'baojishi', 'b');
INSERT INTO `z_area` VALUES ('3088', '渭滨区', '陕西省 宝鸡 渭滨区', '610300', '610302', '61', '03', '02', '3', '2017-05-11 01:53:02', '2018-08-17 14:33:10', 'weibinqu', 'w');
INSERT INTO `z_area` VALUES ('3089', '金台区', '陕西省 宝鸡 金台区', '610300', '610303', '61', '03', '03', '3', '2017-05-11 01:53:03', '2018-08-17 14:33:10', 'jintaiqu', 'j');
INSERT INTO `z_area` VALUES ('3090', '陈仓区', '陕西省 宝鸡 陈仓区', '610300', '610304', '61', '03', '04', '3', '2017-05-11 01:53:03', '2018-08-17 14:33:10', 'chencangqu', 'c');
INSERT INTO `z_area` VALUES ('3091', '凤翔县', '陕西省 宝鸡 凤翔县', '610300', '610322', '61', '03', '22', '3', '2017-05-11 01:53:03', '2018-08-17 14:33:10', 'fengxiangxian', 'f');
INSERT INTO `z_area` VALUES ('3092', '岐山县', '陕西省 宝鸡 岐山县', '610300', '610323', '61', '03', '23', '3', '2017-05-11 01:53:03', '2018-08-17 14:33:11', 'qishanxian', 'q');
INSERT INTO `z_area` VALUES ('3093', '扶风县', '陕西省 宝鸡 扶风县', '610300', '610324', '61', '03', '24', '3', '2017-05-11 01:53:03', '2018-08-17 14:33:11', 'fufengxian', 'f');
INSERT INTO `z_area` VALUES ('3094', '眉县', '陕西省 宝鸡 眉县', '610300', '610326', '61', '03', '26', '3', '2017-05-11 01:53:03', '2018-08-17 14:33:11', 'meixian', 'm');
INSERT INTO `z_area` VALUES ('3095', '陇县', '陕西省 宝鸡 陇县', '610300', '610327', '61', '03', '27', '3', '2017-05-11 01:53:03', '2018-08-17 14:33:11', 'longxian', 'l');
INSERT INTO `z_area` VALUES ('3096', '千阳县', '陕西省 宝鸡 千阳县', '610300', '610328', '61', '03', '28', '3', '2017-05-11 01:53:04', '2018-08-17 14:33:11', 'qianyangxian', 'q');
INSERT INTO `z_area` VALUES ('3097', '麟游县', '陕西省 宝鸡 麟游县', '610300', '610329', '61', '03', '29', '3', '2017-05-11 01:53:04', '2018-08-17 14:33:11', 'linyouxian', 'l');
INSERT INTO `z_area` VALUES ('3098', '凤县', '陕西省 宝鸡 凤县', '610300', '610330', '61', '03', '30', '3', '2017-05-11 01:53:04', '2018-08-17 14:33:11', 'fengxian', 'f');
INSERT INTO `z_area` VALUES ('3099', '太白县', '陕西省 宝鸡 太白县', '610300', '610331', '61', '03', '31', '3', '2017-05-11 01:53:04', '2018-08-17 14:33:12', 'taibaixian', 't');
INSERT INTO `z_area` VALUES ('3100', '咸阳', '陕西省 咸阳', '610000', '610400', '61', '04', '00', '2', '2017-05-11 01:53:04', '2018-08-16 14:24:15', 'xianyang', 'x');
INSERT INTO `z_area` VALUES ('3101', '咸阳市', '陕西省 咸阳 咸阳市', '610400', '610401', '61', '04', '01', '3', '2017-05-11 01:53:04', '2018-08-17 14:33:12', 'xianyangshi', 'x');
INSERT INTO `z_area` VALUES ('3102', '秦都区', '陕西省 咸阳 秦都区', '610400', '610402', '61', '04', '02', '3', '2017-05-11 01:53:05', '2018-08-17 14:33:12', 'qindouqu', 'q');
INSERT INTO `z_area` VALUES ('3103', '杨陵区', '陕西省 咸阳 杨陵区', '610400', '610403', '61', '04', '03', '3', '2017-05-11 01:53:05', '2018-08-17 14:33:12', 'yanglingqu', 'y');
INSERT INTO `z_area` VALUES ('3104', '渭城区', '陕西省 咸阳 渭城区', '610400', '610404', '61', '04', '04', '3', '2017-05-11 01:53:05', '2018-08-17 14:33:12', 'weichengqu', 'w');
INSERT INTO `z_area` VALUES ('3105', '三原县', '陕西省 咸阳 三原县', '610400', '610422', '61', '04', '22', '3', '2017-05-11 01:53:05', '2018-08-17 14:33:12', 'sanyuanxian', 's');
INSERT INTO `z_area` VALUES ('3106', '泾阳县', '陕西省 咸阳 泾阳县', '610400', '610423', '61', '04', '23', '3', '2017-05-11 01:53:05', '2018-08-17 14:33:12', 'jingyangxian', 'j');
INSERT INTO `z_area` VALUES ('3107', '乾县', '陕西省 咸阳 乾县', '610400', '610424', '61', '04', '24', '3', '2017-05-11 01:53:05', '2018-08-17 14:33:13', 'qianxian', 'q');
INSERT INTO `z_area` VALUES ('3108', '礼泉县', '陕西省 咸阳 礼泉县', '610400', '610425', '61', '04', '25', '3', '2017-05-11 01:53:06', '2018-08-17 14:33:13', 'liquanxian', 'l');
INSERT INTO `z_area` VALUES ('3109', '永寿县', '陕西省 咸阳 永寿县', '610400', '610426', '61', '04', '26', '3', '2017-05-11 01:53:06', '2018-08-17 14:33:13', 'yongshouxian', 'y');
INSERT INTO `z_area` VALUES ('3110', '彬县', '陕西省 咸阳 彬县', '610400', '610427', '61', '04', '27', '3', '2017-05-11 01:53:06', '2018-08-17 14:33:13', 'binxian', 'b');
INSERT INTO `z_area` VALUES ('3111', '长武县', '陕西省 咸阳 长武县', '610400', '610428', '61', '04', '28', '3', '2017-05-11 01:53:06', '2018-08-17 14:33:13', 'changwuxian', 'c');
INSERT INTO `z_area` VALUES ('3112', '旬邑县', '陕西省 咸阳 旬邑县', '610400', '610429', '61', '04', '29', '3', '2017-05-11 01:53:06', '2018-08-17 14:33:13', 'xunyixian', 'x');
INSERT INTO `z_area` VALUES ('3113', '淳化县', '陕西省 咸阳 淳化县', '610400', '610430', '61', '04', '30', '3', '2017-05-11 01:53:06', '2018-08-17 14:33:13', 'chunhuaxian', 'c');
INSERT INTO `z_area` VALUES ('3114', '武功县', '陕西省 咸阳 武功县', '610400', '610431', '61', '04', '31', '3', '2017-05-11 01:53:07', '2018-08-17 14:33:14', 'wugongxian', 'w');
INSERT INTO `z_area` VALUES ('3115', '兴平市', '陕西省 咸阳 兴平市', '610400', '610481', '61', '04', '81', '3', '2017-05-11 01:53:07', '2018-08-17 14:33:14', 'xingpingshi', 'x');
INSERT INTO `z_area` VALUES ('3116', '渭南', '陕西省 渭南', '610000', '610500', '61', '05', '00', '2', '2017-05-11 01:53:07', '2018-08-16 14:24:17', 'weinan', 'w');
INSERT INTO `z_area` VALUES ('3117', '渭南市', '陕西省 渭南 渭南市', '610500', '610501', '61', '05', '01', '3', '2017-05-11 01:53:07', '2018-08-17 14:33:14', 'weinanshi', 'w');
INSERT INTO `z_area` VALUES ('3118', '临渭区', '陕西省 渭南 临渭区', '610500', '610502', '61', '05', '02', '3', '2017-05-11 01:53:07', '2018-08-17 14:33:14', 'linweiqu', 'l');
INSERT INTO `z_area` VALUES ('3119', '华县', '陕西省 渭南 华县', '610500', '610521', '61', '05', '21', '3', '2017-05-11 01:53:07', '2018-08-17 14:33:14', 'huaxian', 'h');
INSERT INTO `z_area` VALUES ('3120', '潼关县', '陕西省 渭南 潼关县', '610500', '610522', '61', '05', '22', '3', '2017-05-11 01:53:07', '2018-08-17 14:33:14', 'tongguanxian', 't');
INSERT INTO `z_area` VALUES ('3121', '大荔县', '陕西省 渭南 大荔县', '610500', '610523', '61', '05', '23', '3', '2017-05-11 01:53:08', '2018-08-17 14:33:14', 'dalixian', 'd');
INSERT INTO `z_area` VALUES ('3122', '合阳县', '陕西省 渭南 合阳县', '610500', '610524', '61', '05', '24', '3', '2017-05-11 01:53:08', '2018-08-17 14:33:14', 'heyangxian', 'h');
INSERT INTO `z_area` VALUES ('3123', '澄城县', '陕西省 渭南 澄城县', '610500', '610525', '61', '05', '25', '3', '2017-05-11 01:53:08', '2018-08-17 14:33:15', 'chengchengxian', 'c');
INSERT INTO `z_area` VALUES ('3124', '蒲城县', '陕西省 渭南 蒲城县', '610500', '610526', '61', '05', '26', '3', '2017-05-11 01:53:08', '2018-08-17 14:33:15', 'puchengxian', 'p');
INSERT INTO `z_area` VALUES ('3125', '白水县', '陕西省 渭南 白水县', '610500', '610527', '61', '05', '27', '3', '2017-05-11 01:53:08', '2018-08-17 14:33:15', 'baishuixian', 'b');
INSERT INTO `z_area` VALUES ('3126', '富平县', '陕西省 渭南 富平县', '610500', '610528', '61', '05', '28', '3', '2017-05-11 01:53:08', '2018-08-17 14:33:15', 'fupingxian', 'f');
INSERT INTO `z_area` VALUES ('3127', '韩城市', '陕西省 渭南 韩城市', '610500', '610581', '61', '05', '81', '3', '2017-05-11 01:53:09', '2018-08-17 14:33:15', 'hanchengshi', 'h');
INSERT INTO `z_area` VALUES ('3128', '华阴市', '陕西省 渭南 华阴市', '610500', '610582', '61', '05', '82', '3', '2017-05-11 01:53:09', '2018-08-17 14:33:15', 'huayinshi', 'h');
INSERT INTO `z_area` VALUES ('3129', '延安', '陕西省 延安', '610000', '610600', '61', '06', '00', '2', '2017-05-11 01:53:09', '2018-08-16 14:24:19', 'yanan', 'y');
INSERT INTO `z_area` VALUES ('3130', '延安市', '陕西省 延安 延安市', '610600', '610601', '61', '06', '01', '3', '2017-05-11 01:53:09', '2018-08-17 14:33:15', 'yananshi', 'y');
INSERT INTO `z_area` VALUES ('3131', '宝塔区', '陕西省 延安 宝塔区', '610600', '610602', '61', '06', '02', '3', '2017-05-11 01:53:09', '2018-08-17 14:33:16', 'baotaqu', 'b');
INSERT INTO `z_area` VALUES ('3132', '延长县', '陕西省 延安 延长县', '610600', '610621', '61', '06', '21', '3', '2017-05-11 01:53:09', '2018-08-17 14:33:16', 'yanchangxian', 'y');
INSERT INTO `z_area` VALUES ('3133', '延川县', '陕西省 延安 延川县', '610600', '610622', '61', '06', '22', '3', '2017-05-11 01:53:09', '2018-08-17 14:33:16', 'yanchuanxian', 'y');
INSERT INTO `z_area` VALUES ('3134', '子长县', '陕西省 延安 子长县', '610600', '610623', '61', '06', '23', '3', '2017-05-11 01:53:10', '2018-08-17 14:33:16', 'zichangxian', 'z');
INSERT INTO `z_area` VALUES ('3135', '安塞县', '陕西省 延安 安塞县', '610600', '610624', '61', '06', '24', '3', '2017-05-11 01:53:10', '2018-08-17 14:33:16', 'ansaixian', 'a');
INSERT INTO `z_area` VALUES ('3136', '志丹县', '陕西省 延安 志丹县', '610600', '610625', '61', '06', '25', '3', '2017-05-11 01:53:10', '2018-08-17 14:33:16', 'zhidanxian', 'z');
INSERT INTO `z_area` VALUES ('3137', '吴起县', '陕西省 延安 吴起县', '610600', '610626', '61', '06', '26', '3', '2017-05-11 01:53:10', '2018-08-17 14:33:16', 'wuqixian', 'w');
INSERT INTO `z_area` VALUES ('3138', '甘泉县', '陕西省 延安 甘泉县', '610600', '610627', '61', '06', '27', '3', '2017-05-11 01:53:10', '2018-08-17 14:33:16', 'ganquanxian', 'g');
INSERT INTO `z_area` VALUES ('3139', '富县', '陕西省 延安 富县', '610600', '610628', '61', '06', '28', '3', '2017-05-11 01:53:10', '2018-08-17 14:33:17', 'fuxian', 'f');
INSERT INTO `z_area` VALUES ('3140', '洛川县', '陕西省 延安 洛川县', '610600', '610629', '61', '06', '29', '3', '2017-05-11 01:53:11', '2018-08-17 14:33:17', 'luochuanxian', 'l');
INSERT INTO `z_area` VALUES ('3141', '宜川县', '陕西省 延安 宜川县', '610600', '610630', '61', '06', '30', '3', '2017-05-11 01:53:11', '2018-08-17 14:33:17', 'yichuanxian', 'y');
INSERT INTO `z_area` VALUES ('3142', '黄龙县', '陕西省 延安 黄龙县', '610600', '610631', '61', '06', '31', '3', '2017-05-11 01:53:11', '2018-08-17 14:33:17', 'huanglongxian', 'h');
INSERT INTO `z_area` VALUES ('3143', '黄陵县', '陕西省 延安 黄陵县', '610600', '610632', '61', '06', '32', '3', '2017-05-11 01:53:11', '2018-08-17 14:33:17', 'huanglingxian', 'h');
INSERT INTO `z_area` VALUES ('3144', '汉中', '陕西省 汉中', '610000', '610700', '61', '07', '00', '2', '2017-05-11 01:53:11', '2018-08-16 14:24:21', 'hanzhong', 'h');
INSERT INTO `z_area` VALUES ('3145', '汉中市', '陕西省 汉中 汉中市', '610700', '610701', '61', '07', '01', '3', '2017-05-11 01:53:11', '2018-08-17 14:33:17', 'hanzhongshi', 'h');
INSERT INTO `z_area` VALUES ('3146', '汉台区', '陕西省 汉中 汉台区', '610700', '610702', '61', '07', '02', '3', '2017-05-11 01:53:12', '2018-08-17 14:33:17', 'hantaiqu', 'h');
INSERT INTO `z_area` VALUES ('3147', '南郑县', '陕西省 汉中 南郑县', '610700', '610721', '61', '07', '21', '3', '2017-05-11 01:53:12', '2018-08-17 14:33:18', 'nanzhengxian', 'n');
INSERT INTO `z_area` VALUES ('3148', '城固县', '陕西省 汉中 城固县', '610700', '610722', '61', '07', '22', '3', '2017-05-11 01:53:12', '2018-08-17 14:33:18', 'chengguxian', 'c');
INSERT INTO `z_area` VALUES ('3149', '洋县', '陕西省 汉中 洋县', '610700', '610723', '61', '07', '23', '3', '2017-05-11 01:53:12', '2018-08-17 14:33:18', 'yangxian', 'y');
INSERT INTO `z_area` VALUES ('3150', '西乡县', '陕西省 汉中 西乡县', '610700', '610724', '61', '07', '24', '3', '2017-05-11 01:53:12', '2018-08-17 14:33:18', 'xixiangxian', 'x');
INSERT INTO `z_area` VALUES ('3151', '勉县', '陕西省 汉中 勉县', '610700', '610725', '61', '07', '25', '3', '2017-05-11 01:53:12', '2018-08-17 14:33:18', 'mianxian', 'm');
INSERT INTO `z_area` VALUES ('3152', '宁强县', '陕西省 汉中 宁强县', '610700', '610726', '61', '07', '26', '3', '2017-05-11 01:53:13', '2018-08-17 14:33:18', 'ningqiangxian', 'n');
INSERT INTO `z_area` VALUES ('3153', '略阳县', '陕西省 汉中 略阳县', '610700', '610727', '61', '07', '27', '3', '2017-05-11 01:53:13', '2018-08-17 14:33:19', 'lüeyangxian', 'l');
INSERT INTO `z_area` VALUES ('3154', '镇巴县', '陕西省 汉中 镇巴县', '610700', '610728', '61', '07', '28', '3', '2017-05-11 01:53:13', '2018-08-17 14:33:19', 'zhenbaxian', 'z');
INSERT INTO `z_area` VALUES ('3155', '留坝县', '陕西省 汉中 留坝县', '610700', '610729', '61', '07', '29', '3', '2017-05-11 01:53:13', '2018-08-17 14:33:19', 'liubaxian', 'l');
INSERT INTO `z_area` VALUES ('3156', '佛坪县', '陕西省 汉中 佛坪县', '610700', '610730', '61', '07', '30', '3', '2017-05-11 01:53:13', '2018-08-17 14:33:19', 'fopingxian', 'f');
INSERT INTO `z_area` VALUES ('3157', '榆林', '陕西省 榆林', '610000', '610800', '61', '08', '00', '2', '2017-05-11 01:53:13', '2018-08-16 14:24:23', 'yulin', 'y');
INSERT INTO `z_area` VALUES ('3158', '榆林市', '陕西省 榆林 榆林市', '610800', '610801', '61', '08', '01', '3', '2017-05-11 01:53:13', '2018-08-17 14:33:19', 'yulinshi', 'y');
INSERT INTO `z_area` VALUES ('3159', '榆阳区', '陕西省 榆林 榆阳区', '610800', '610802', '61', '08', '02', '3', '2017-05-11 01:53:14', '2018-08-17 14:33:19', 'yuyangqu', 'y');
INSERT INTO `z_area` VALUES ('3160', '神木县', '陕西省 榆林 神木县', '610800', '610821', '61', '08', '21', '3', '2017-05-11 01:53:14', '2018-08-17 14:33:20', 'shenmuxian', 's');
INSERT INTO `z_area` VALUES ('3161', '府谷县', '陕西省 榆林 府谷县', '610800', '610822', '61', '08', '22', '3', '2017-05-11 01:53:14', '2018-08-17 14:33:20', 'fuguxian', 'f');
INSERT INTO `z_area` VALUES ('3162', '横山县', '陕西省 榆林 横山县', '610800', '610823', '61', '08', '23', '3', '2017-05-11 01:53:14', '2018-08-17 14:33:20', 'hengshanxian', 'h');
INSERT INTO `z_area` VALUES ('3163', '靖边县', '陕西省 榆林 靖边县', '610800', '610824', '61', '08', '24', '3', '2017-05-11 01:53:14', '2018-08-17 14:33:20', 'jingbianxian', 'j');
INSERT INTO `z_area` VALUES ('3164', '定边县', '陕西省 榆林 定边县', '610800', '610825', '61', '08', '25', '3', '2017-05-11 01:53:14', '2018-08-17 14:33:20', 'dingbianxian', 'd');
INSERT INTO `z_area` VALUES ('3165', '绥德县', '陕西省 榆林 绥德县', '610800', '610826', '61', '08', '26', '3', '2017-05-11 01:53:15', '2018-08-17 14:33:20', 'suidexian', 's');
INSERT INTO `z_area` VALUES ('3166', '米脂县', '陕西省 榆林 米脂县', '610800', '610827', '61', '08', '27', '3', '2017-05-11 01:53:15', '2018-08-17 14:33:20', 'mizhixian', 'm');
INSERT INTO `z_area` VALUES ('3167', '佳县', '陕西省 榆林 佳县', '610800', '610828', '61', '08', '28', '3', '2017-05-11 01:53:15', '2018-08-17 14:33:21', 'jiaxian', 'j');
INSERT INTO `z_area` VALUES ('3168', '吴堡县', '陕西省 榆林 吴堡县', '610800', '610829', '61', '08', '29', '3', '2017-05-11 01:53:15', '2018-08-17 14:33:21', 'wubaoxian', 'w');
INSERT INTO `z_area` VALUES ('3169', '清涧县', '陕西省 榆林 清涧县', '610800', '610830', '61', '08', '30', '3', '2017-05-11 01:53:15', '2018-08-17 14:33:21', 'qingjianxian', 'q');
INSERT INTO `z_area` VALUES ('3170', '子洲县', '陕西省 榆林 子洲县', '610800', '610831', '61', '08', '31', '3', '2017-05-11 01:53:15', '2018-08-17 14:33:21', 'zizhouxian', 'z');
INSERT INTO `z_area` VALUES ('3171', '安康', '陕西省 安康', '610000', '610900', '61', '09', '00', '2', '2017-05-11 01:53:15', '2018-08-16 14:24:24', 'ankang', 'a');
INSERT INTO `z_area` VALUES ('3172', '安康市', '陕西省 安康 安康市', '610900', '610901', '61', '09', '01', '3', '2017-05-11 01:53:16', '2018-08-17 14:33:21', 'ankangshi', 'a');
INSERT INTO `z_area` VALUES ('3173', '汉滨区', '陕西省 安康 汉滨区', '610900', '610902', '61', '09', '02', '3', '2017-05-11 01:53:16', '2018-08-17 14:33:21', 'hanbinqu', 'h');
INSERT INTO `z_area` VALUES ('3174', '汉阴县', '陕西省 安康 汉阴县', '610900', '610921', '61', '09', '21', '3', '2017-05-11 01:53:16', '2018-08-17 14:33:21', 'hanyinxian', 'h');
INSERT INTO `z_area` VALUES ('3175', '石泉县', '陕西省 安康 石泉县', '610900', '610922', '61', '09', '22', '3', '2017-05-11 01:53:16', '2018-08-17 14:33:22', 'shiquanxian', 's');
INSERT INTO `z_area` VALUES ('3176', '宁陕县', '陕西省 安康 宁陕县', '610900', '610923', '61', '09', '23', '3', '2017-05-11 01:53:16', '2018-08-17 14:33:22', 'ningshanxian', 'n');
INSERT INTO `z_area` VALUES ('3177', '紫阳县', '陕西省 安康 紫阳县', '610900', '610924', '61', '09', '24', '3', '2017-05-11 01:53:16', '2018-08-17 14:33:22', 'ziyangxian', 'z');
INSERT INTO `z_area` VALUES ('3178', '岚皋县', '陕西省 安康 岚皋县', '610900', '610925', '61', '09', '25', '3', '2017-05-11 01:53:17', '2018-08-17 14:33:22', 'langaoxian', 'l');
INSERT INTO `z_area` VALUES ('3179', '平利县', '陕西省 安康 平利县', '610900', '610926', '61', '09', '26', '3', '2017-05-11 01:53:17', '2018-08-17 14:33:22', 'pinglixian', 'p');
INSERT INTO `z_area` VALUES ('3180', '镇坪县', '陕西省 安康 镇坪县', '610900', '610927', '61', '09', '27', '3', '2017-05-11 01:53:17', '2018-08-17 14:33:22', 'zhenpingxian', 'z');
INSERT INTO `z_area` VALUES ('3181', '旬阳县', '陕西省 安康 旬阳县', '610900', '610928', '61', '09', '28', '3', '2017-05-11 01:53:17', '2018-08-17 14:33:22', 'xunyangxian', 'x');
INSERT INTO `z_area` VALUES ('3182', '白河县', '陕西省 安康 白河县', '610900', '610929', '61', '09', '29', '3', '2017-05-11 01:53:17', '2018-08-17 14:33:22', 'baihexian', 'b');
INSERT INTO `z_area` VALUES ('3183', '商洛', '陕西省 商洛', '610000', '611000', '61', '10', '00', '2', '2017-05-11 01:53:17', '2018-08-16 14:24:26', 'shangluo', 's');
INSERT INTO `z_area` VALUES ('3184', '商洛市', '陕西省 商洛 商洛市', '611000', '611001', '61', '10', '01', '3', '2017-05-11 01:53:18', '2018-08-17 14:33:23', 'shangluoshi', 's');
INSERT INTO `z_area` VALUES ('3185', '商州区', '陕西省 商洛 商州区', '611000', '611002', '61', '10', '02', '3', '2017-05-11 01:53:18', '2018-08-17 14:33:23', 'shangzhouqu', 's');
INSERT INTO `z_area` VALUES ('3186', '洛南县', '陕西省 商洛 洛南县', '611000', '611021', '61', '10', '21', '3', '2017-05-11 01:53:18', '2018-08-17 14:33:23', 'luonanxian', 'l');
INSERT INTO `z_area` VALUES ('3187', '丹凤县', '陕西省 商洛 丹凤县', '611000', '611022', '61', '10', '22', '3', '2017-05-11 01:53:18', '2018-08-17 14:33:23', 'danfengxian', 'd');
INSERT INTO `z_area` VALUES ('3188', '商南县', '陕西省 商洛 商南县', '611000', '611023', '61', '10', '23', '3', '2017-05-11 01:53:18', '2018-08-17 14:33:23', 'shangnanxian', 's');
INSERT INTO `z_area` VALUES ('3189', '山阳县', '陕西省 商洛 山阳县', '611000', '611024', '61', '10', '24', '3', '2017-05-11 01:53:18', '2018-08-17 14:33:23', 'shanyangxian', 's');
INSERT INTO `z_area` VALUES ('3190', '镇安县', '陕西省 商洛 镇安县', '611000', '611025', '61', '10', '25', '3', '2017-05-11 01:53:19', '2018-08-17 14:33:23', 'zhenanxian', 'z');
INSERT INTO `z_area` VALUES ('3191', '柞水县', '陕西省 商洛 柞水县', '611000', '611026', '61', '10', '26', '3', '2017-05-11 01:53:19', '2018-08-17 14:33:24', 'zuoshuixian', 'z');
INSERT INTO `z_area` VALUES ('3192', '甘肃省', '甘肃省', '', '620000', '62', '00', '00', '1', '2017-05-11 01:53:19', '2017-08-28 14:25:20', 'gansusheng', 'g');
INSERT INTO `z_area` VALUES ('3193', '兰州', '甘肃省 兰州', '620000', '620100', '62', '01', '00', '2', '2017-05-11 01:53:19', '2018-08-16 14:24:27', 'lanzhou', 'l');
INSERT INTO `z_area` VALUES ('3194', '兰州市', '甘肃省 兰州 兰州市', '620100', '620101', '62', '01', '01', '3', '2017-05-11 01:53:19', '2018-08-17 14:33:24', 'lanzhoushi', 'l');
INSERT INTO `z_area` VALUES ('3195', '城关区', '甘肃省 兰州 城关区', '620100', '620102', '62', '01', '02', '3', '2017-05-11 01:53:19', '2018-08-17 14:33:24', 'chengguanqu', 'c');
INSERT INTO `z_area` VALUES ('3196', '七里河区', '甘肃省 兰州 七里河区', '620100', '620103', '62', '01', '03', '3', '2017-05-11 01:53:19', '2018-08-17 14:33:24', 'qilihequ', 'q');
INSERT INTO `z_area` VALUES ('3197', '西固区', '甘肃省 兰州 西固区', '620100', '620104', '62', '01', '04', '3', '2017-05-11 01:53:19', '2018-08-17 14:33:24', 'xiguqu', 'x');
INSERT INTO `z_area` VALUES ('3198', '安宁区', '甘肃省 兰州 安宁区', '620100', '620105', '62', '01', '05', '3', '2017-05-11 01:53:20', '2018-08-17 14:33:24', 'anningqu', 'a');
INSERT INTO `z_area` VALUES ('3199', '红古区', '甘肃省 兰州 红古区', '620100', '620111', '62', '01', '11', '3', '2017-05-11 01:53:20', '2018-08-17 14:33:24', 'hongguqu', 'h');
INSERT INTO `z_area` VALUES ('3200', '永登县', '甘肃省 兰州 永登县', '620100', '620121', '62', '01', '21', '3', '2017-05-11 01:53:20', '2018-08-17 14:33:25', 'yongdengxian', 'y');
INSERT INTO `z_area` VALUES ('3201', '皋兰县', '甘肃省 兰州 皋兰县', '620100', '620122', '62', '01', '22', '3', '2017-05-11 01:53:20', '2018-08-17 14:33:25', 'gaolanxian', 'g');
INSERT INTO `z_area` VALUES ('3202', '榆中县', '甘肃省 兰州 榆中县', '620100', '620123', '62', '01', '23', '3', '2017-05-11 01:53:20', '2018-08-17 14:33:25', 'yuzhongxian', 'y');
INSERT INTO `z_area` VALUES ('3203', '嘉峪关', '甘肃省 嘉峪关', '620000', '620200', '62', '02', '00', '2', '2017-05-11 01:53:20', '2018-08-16 14:24:28', 'jiayuguan', 'j');
INSERT INTO `z_area` VALUES ('3204', '嘉峪关市', '甘肃省 嘉峪关 嘉峪关市', '620200', '620201', '62', '02', '01', '3', '2017-05-11 01:53:21', '2018-08-17 14:33:25', 'jiayuguanshi', 'j');
INSERT INTO `z_area` VALUES ('3205', '金昌', '甘肃省 金昌', '620000', '620300', '62', '03', '00', '2', '2017-05-11 01:53:21', '2018-08-16 14:24:29', 'jinchang', 'j');
INSERT INTO `z_area` VALUES ('3206', '金昌市', '甘肃省 金昌 金昌市', '620300', '620301', '62', '03', '01', '3', '2017-05-11 01:53:21', '2018-08-17 14:33:25', 'jinchangshi', 'j');
INSERT INTO `z_area` VALUES ('3207', '金川区', '甘肃省 金昌 金川区', '620300', '620302', '62', '03', '02', '3', '2017-05-11 01:53:21', '2018-08-17 14:33:25', 'jinchuanqu', 'j');
INSERT INTO `z_area` VALUES ('3208', '永昌县', '甘肃省 金昌 永昌县', '620300', '620321', '62', '03', '21', '3', '2017-05-11 01:53:21', '2018-08-17 14:33:25', 'yongchangxian', 'y');
INSERT INTO `z_area` VALUES ('3209', '白银', '甘肃省 白银', '620000', '620400', '62', '04', '00', '2', '2017-05-11 01:53:21', '2018-08-16 14:24:29', 'baiyin', 'b');
INSERT INTO `z_area` VALUES ('3210', '白银市', '甘肃省 白银 白银市', '620400', '620401', '62', '04', '01', '3', '2017-05-11 01:53:21', '2018-08-17 14:33:26', 'baiyinshi', 'b');
INSERT INTO `z_area` VALUES ('3211', '白银区', '甘肃省 白银 白银区', '620400', '620402', '62', '04', '02', '3', '2017-05-11 01:53:21', '2018-08-17 14:33:26', 'baiyinqu', 'b');
INSERT INTO `z_area` VALUES ('3212', '平川区', '甘肃省 白银 平川区', '620400', '620403', '62', '04', '03', '3', '2017-05-11 01:53:22', '2018-08-17 14:33:26', 'pingchuanqu', 'p');
INSERT INTO `z_area` VALUES ('3213', '靖远县', '甘肃省 白银 靖远县', '620400', '620421', '62', '04', '21', '3', '2017-05-11 01:53:22', '2018-08-17 14:33:26', 'jingyuanxian', 'j');
INSERT INTO `z_area` VALUES ('3214', '会宁县', '甘肃省 白银 会宁县', '620400', '620422', '62', '04', '22', '3', '2017-05-11 01:53:22', '2018-08-17 14:33:26', 'huiningxian', 'h');
INSERT INTO `z_area` VALUES ('3215', '景泰县', '甘肃省 白银 景泰县', '620400', '620423', '62', '04', '23', '3', '2017-05-11 01:53:22', '2018-08-17 14:33:26', 'jingtaixian', 'j');
INSERT INTO `z_area` VALUES ('3216', '天水', '甘肃省 天水', '620000', '620500', '62', '05', '00', '2', '2017-05-11 01:53:22', '2018-08-16 14:24:30', 'tianshui', 't');
INSERT INTO `z_area` VALUES ('3217', '天水市', '甘肃省 天水 天水市', '620500', '620501', '62', '05', '01', '3', '2017-05-11 01:53:22', '2018-08-17 14:33:27', 'tianshuishi', 't');
INSERT INTO `z_area` VALUES ('3218', '秦州区', '甘肃省 天水 秦州区', '620500', '620502', '62', '05', '02', '3', '2017-05-11 01:53:23', '2018-08-17 14:33:27', 'qinzhouqu', 'q');
INSERT INTO `z_area` VALUES ('3219', '麦积区', '甘肃省 天水 麦积区', '620500', '620503', '62', '05', '03', '3', '2017-05-11 01:53:23', '2018-08-17 14:33:27', 'maijiqu', 'm');
INSERT INTO `z_area` VALUES ('3220', '清水县', '甘肃省 天水 清水县', '620500', '620521', '62', '05', '21', '3', '2017-05-11 01:53:23', '2018-08-17 14:33:27', 'qingshuixian', 'q');
INSERT INTO `z_area` VALUES ('3221', '秦安县', '甘肃省 天水 秦安县', '620500', '620522', '62', '05', '22', '3', '2017-05-11 01:53:23', '2018-08-17 14:33:27', 'qinanxian', 'q');
INSERT INTO `z_area` VALUES ('3222', '甘谷县', '甘肃省 天水 甘谷县', '620500', '620523', '62', '05', '23', '3', '2017-05-11 01:53:23', '2018-08-17 14:33:27', 'ganguxian', 'g');
INSERT INTO `z_area` VALUES ('3223', '武山县', '甘肃省 天水 武山县', '620500', '620524', '62', '05', '24', '3', '2017-05-11 01:53:23', '2018-08-17 14:33:27', 'wushanxian', 'w');
INSERT INTO `z_area` VALUES ('3224', '张家川回族自治县', '甘肃省 天水 张家川回族自治县', '620500', '620525', '62', '05', '25', '3', '2017-05-11 01:53:23', '2018-08-17 14:33:28', 'zhangjiachuanhuizuzizhixian', 'z');
INSERT INTO `z_area` VALUES ('3225', '武威', '甘肃省 武威', '620000', '620600', '62', '06', '00', '2', '2017-05-11 01:53:24', '2018-08-16 14:24:31', 'wuwei', 'w');
INSERT INTO `z_area` VALUES ('3226', '武威市', '甘肃省 武威 武威市', '620600', '620601', '62', '06', '01', '3', '2017-05-11 01:53:24', '2018-08-17 14:33:28', 'wuweishi', 'w');
INSERT INTO `z_area` VALUES ('3227', '凉州区', '甘肃省 武威 凉州区', '620600', '620602', '62', '06', '02', '3', '2017-05-11 01:53:24', '2018-08-17 14:33:28', 'liangzhouqu', 'l');
INSERT INTO `z_area` VALUES ('3228', '民勤县', '甘肃省 武威 民勤县', '620600', '620621', '62', '06', '21', '3', '2017-05-11 01:53:24', '2018-08-17 14:33:28', 'minqinxian', 'm');
INSERT INTO `z_area` VALUES ('3229', '古浪县', '甘肃省 武威 古浪县', '620600', '620622', '62', '06', '22', '3', '2017-05-11 01:53:24', '2018-08-17 14:33:28', 'gulangxian', 'g');
INSERT INTO `z_area` VALUES ('3230', '天祝藏族自治县', '甘肃省 武威 天祝藏族自治县', '620600', '620623', '62', '06', '23', '3', '2017-05-11 01:53:24', '2018-08-17 14:33:28', 'tianzhucangzuzizhixian', 't');
INSERT INTO `z_area` VALUES ('3231', '张掖', '甘肃省 张掖', '620000', '620700', '62', '07', '00', '2', '2017-05-11 01:53:25', '2018-08-16 14:24:32', 'zhangye', 'z');
INSERT INTO `z_area` VALUES ('3232', '张掖市', '甘肃省 张掖 张掖市', '620700', '620701', '62', '07', '01', '3', '2017-05-11 01:53:25', '2018-08-17 14:33:29', 'zhangyeshi', 'z');
INSERT INTO `z_area` VALUES ('3233', '甘州区', '甘肃省 张掖 甘州区', '620700', '620702', '62', '07', '02', '3', '2017-05-11 01:53:25', '2018-08-17 14:33:29', 'ganzhouqu', 'g');
INSERT INTO `z_area` VALUES ('3234', '肃南裕固族自治县', '甘肃省 张掖 肃南裕固族自治县', '620700', '620721', '62', '07', '21', '3', '2017-05-11 01:53:25', '2018-08-17 14:33:29', 'sunanyuguzuzizhixian', 's');
INSERT INTO `z_area` VALUES ('3235', '民乐县', '甘肃省 张掖 民乐县', '620700', '620722', '62', '07', '22', '3', '2017-05-11 01:53:25', '2018-08-17 14:33:29', 'minlexian', 'm');
INSERT INTO `z_area` VALUES ('3236', '临泽县', '甘肃省 张掖 临泽县', '620700', '620723', '62', '07', '23', '3', '2017-05-11 01:53:25', '2018-08-17 14:33:29', 'linzexian', 'l');
INSERT INTO `z_area` VALUES ('3237', '高台县', '甘肃省 张掖 高台县', '620700', '620724', '62', '07', '24', '3', '2017-05-11 01:53:26', '2018-08-17 14:33:29', 'gaotaixian', 'g');
INSERT INTO `z_area` VALUES ('3238', '山丹县', '甘肃省 张掖 山丹县', '620700', '620725', '62', '07', '25', '3', '2017-05-11 01:53:26', '2018-08-17 14:33:29', 'shandanxian', 's');
INSERT INTO `z_area` VALUES ('3239', '平凉', '甘肃省 平凉', '620000', '620800', '62', '08', '00', '2', '2017-05-11 01:53:26', '2018-08-16 14:24:33', 'pingliang', 'p');
INSERT INTO `z_area` VALUES ('3240', '平凉市', '甘肃省 平凉 平凉市', '620800', '620801', '62', '08', '01', '3', '2017-05-11 01:53:26', '2018-08-17 14:33:30', 'pingliangshi', 'p');
INSERT INTO `z_area` VALUES ('3241', '崆峒区', '甘肃省 平凉 崆峒区', '620800', '620802', '62', '08', '02', '3', '2017-05-11 01:53:26', '2018-08-17 14:33:30', 'kongdongqu', 'k');
INSERT INTO `z_area` VALUES ('3242', '泾川县', '甘肃省 平凉 泾川县', '620800', '620821', '62', '08', '21', '3', '2017-05-11 01:53:26', '2018-08-17 14:33:30', 'jingchuanxian', 'j');
INSERT INTO `z_area` VALUES ('3243', '灵台县', '甘肃省 平凉 灵台县', '620800', '620822', '62', '08', '22', '3', '2017-05-11 01:53:26', '2018-08-17 14:33:30', 'lingtaixian', 'l');
INSERT INTO `z_area` VALUES ('3244', '崇信县', '甘肃省 平凉 崇信县', '620800', '620823', '62', '08', '23', '3', '2017-05-11 01:53:27', '2018-08-17 14:33:30', 'chongxinxian', 'c');
INSERT INTO `z_area` VALUES ('3245', '华亭县', '甘肃省 平凉 华亭县', '620800', '620824', '62', '08', '24', '3', '2017-05-11 01:53:27', '2018-08-17 14:33:30', 'huatingxian', 'h');
INSERT INTO `z_area` VALUES ('3246', '庄浪县', '甘肃省 平凉 庄浪县', '620800', '620825', '62', '08', '25', '3', '2017-05-11 01:53:27', '2018-08-17 14:33:31', 'zhuanglangxian', 'z');
INSERT INTO `z_area` VALUES ('3247', '静宁县', '甘肃省 平凉 静宁县', '620800', '620826', '62', '08', '26', '3', '2017-05-11 01:53:27', '2018-08-17 14:33:31', 'jingningxian', 'j');
INSERT INTO `z_area` VALUES ('3248', '酒泉', '甘肃省 酒泉', '620000', '620900', '62', '09', '00', '2', '2017-05-11 01:53:27', '2018-08-16 14:24:34', 'jiuquan', 'j');
INSERT INTO `z_area` VALUES ('3249', '酒泉市', '甘肃省 酒泉 酒泉市', '620900', '620901', '62', '09', '01', '3', '2017-05-11 01:53:27', '2018-08-17 14:33:31', 'jiuquanshi', 'j');
INSERT INTO `z_area` VALUES ('3250', '肃州区', '甘肃省 酒泉 肃州区', '620900', '620902', '62', '09', '02', '3', '2017-05-11 01:53:28', '2018-08-17 14:33:31', 'suzhouqu', 's');
INSERT INTO `z_area` VALUES ('3251', '金塔县', '甘肃省 酒泉 金塔县', '620900', '620921', '62', '09', '21', '3', '2017-05-11 01:53:28', '2018-08-17 14:33:31', 'jintaxian', 'j');
INSERT INTO `z_area` VALUES ('3252', '瓜州县', '甘肃省 酒泉 瓜州县', '620900', '620922', '62', '09', '22', '3', '2017-05-11 01:53:28', '2018-08-17 14:33:31', 'guazhouxian', 'g');
INSERT INTO `z_area` VALUES ('3253', '肃北蒙古族自治县', '甘肃省 酒泉 肃北蒙古族自治县', '620900', '620923', '62', '09', '23', '3', '2017-05-11 01:53:28', '2018-08-17 14:33:32', 'subeimengguzuzizhixian', 's');
INSERT INTO `z_area` VALUES ('3254', '阿克塞哈萨克族自治县', '甘肃省 酒泉 阿克塞哈萨克族自治县', '620900', '620924', '62', '09', '24', '3', '2017-05-11 01:53:28', '2018-08-17 14:33:32', 'akesaihasakezuzizhixian', 'a');
INSERT INTO `z_area` VALUES ('3255', '玉门市', '甘肃省 酒泉 玉门市', '620900', '620981', '62', '09', '81', '3', '2017-05-11 01:53:28', '2018-08-17 14:33:32', 'yumenshi', 'y');
INSERT INTO `z_area` VALUES ('3256', '敦煌市', '甘肃省 酒泉 敦煌市', '620900', '620982', '62', '09', '82', '3', '2017-05-11 01:53:28', '2018-08-17 14:33:32', 'dunhuangshi', 'd');
INSERT INTO `z_area` VALUES ('3257', '庆阳', '甘肃省 庆阳', '620000', '621000', '62', '10', '00', '2', '2017-05-11 01:53:29', '2018-08-16 14:24:35', 'qingyang', 'q');
INSERT INTO `z_area` VALUES ('3258', '庆阳市', '甘肃省 庆阳 庆阳市', '621000', '621001', '62', '10', '01', '3', '2017-05-11 01:53:29', '2018-08-17 14:33:32', 'qingyangshi', 'q');
INSERT INTO `z_area` VALUES ('3259', '西峰区', '甘肃省 庆阳 西峰区', '621000', '621002', '62', '10', '02', '3', '2017-05-11 01:53:29', '2018-08-17 14:33:32', 'xifengqu', 'x');
INSERT INTO `z_area` VALUES ('3260', '庆城县', '甘肃省 庆阳 庆城县', '621000', '621021', '62', '10', '21', '3', '2017-05-11 01:53:29', '2018-08-17 14:33:32', 'qingchengxian', 'q');
INSERT INTO `z_area` VALUES ('3261', '环县', '甘肃省 庆阳 环县', '621000', '621022', '62', '10', '22', '3', '2017-05-11 01:53:29', '2018-08-17 14:33:33', 'huanxian', 'h');
INSERT INTO `z_area` VALUES ('3262', '华池县', '甘肃省 庆阳 华池县', '621000', '621023', '62', '10', '23', '3', '2017-05-11 01:53:29', '2018-08-17 14:33:33', 'huachixian', 'h');
INSERT INTO `z_area` VALUES ('3263', '合水县', '甘肃省 庆阳 合水县', '621000', '621024', '62', '10', '24', '3', '2017-05-11 01:53:30', '2018-08-17 14:33:33', 'heshuixian', 'h');
INSERT INTO `z_area` VALUES ('3264', '正宁县', '甘肃省 庆阳 正宁县', '621000', '621025', '62', '10', '25', '3', '2017-05-11 01:53:30', '2018-08-17 14:33:33', 'zhengningxian', 'z');
INSERT INTO `z_area` VALUES ('3265', '宁县', '甘肃省 庆阳 宁县', '621000', '621026', '62', '10', '26', '3', '2017-05-11 01:53:30', '2018-08-17 14:33:33', 'ningxian', 'n');
INSERT INTO `z_area` VALUES ('3266', '镇原县', '甘肃省 庆阳 镇原县', '621000', '621027', '62', '10', '27', '3', '2017-05-11 01:53:30', '2018-08-17 14:33:33', 'zhenyuanxian', 'z');
INSERT INTO `z_area` VALUES ('3267', '定西', '甘肃省 定西', '620000', '621100', '62', '11', '00', '2', '2017-05-11 01:53:30', '2018-08-16 14:24:36', 'dingxi', 'd');
INSERT INTO `z_area` VALUES ('3268', '定西市', '甘肃省 定西 定西市', '621100', '621101', '62', '11', '01', '3', '2017-05-11 01:53:30', '2018-08-17 14:33:33', 'dingxishi', 'd');
INSERT INTO `z_area` VALUES ('3269', '安定区', '甘肃省 定西 安定区', '621100', '621102', '62', '11', '02', '3', '2017-05-11 01:53:30', '2018-08-17 14:33:33', 'andingqu', 'a');
INSERT INTO `z_area` VALUES ('3270', '通渭县', '甘肃省 定西 通渭县', '621100', '621121', '62', '11', '21', '3', '2017-05-11 01:53:31', '2018-08-17 14:33:34', 'tongweixian', 't');
INSERT INTO `z_area` VALUES ('3271', '陇西县', '甘肃省 定西 陇西县', '621100', '621122', '62', '11', '22', '3', '2017-05-11 01:53:31', '2018-08-17 14:33:34', 'longxixian', 'l');
INSERT INTO `z_area` VALUES ('3272', '渭源县', '甘肃省 定西 渭源县', '621100', '621123', '62', '11', '23', '3', '2017-05-11 01:53:31', '2018-08-17 14:33:34', 'weiyuanxian', 'w');
INSERT INTO `z_area` VALUES ('3273', '临洮县', '甘肃省 定西 临洮县', '621100', '621124', '62', '11', '24', '3', '2017-05-11 01:53:31', '2018-08-17 14:33:34', 'lintaoxian', 'l');
INSERT INTO `z_area` VALUES ('3274', '漳县', '甘肃省 定西 漳县', '621100', '621125', '62', '11', '25', '3', '2017-05-11 01:53:31', '2018-08-17 14:33:34', 'zhangxian', 'z');
INSERT INTO `z_area` VALUES ('3275', '岷县', '甘肃省 定西 岷县', '621100', '621126', '62', '11', '26', '3', '2017-05-11 01:53:31', '2018-08-17 14:33:34', 'minxian', 'm');
INSERT INTO `z_area` VALUES ('3276', '陇南', '甘肃省 陇南', '620000', '621200', '62', '12', '00', '2', '2017-05-11 01:53:32', '2018-08-16 14:24:37', 'longnan', 'l');
INSERT INTO `z_area` VALUES ('3277', '陇南市', '甘肃省 陇南 陇南市', '621200', '621201', '62', '12', '01', '3', '2017-05-11 01:53:32', '2018-08-17 14:33:34', 'longnanshi', 'l');
INSERT INTO `z_area` VALUES ('3278', '武都区', '甘肃省 陇南 武都区', '621200', '621202', '62', '12', '02', '3', '2017-05-11 01:53:32', '2018-08-17 14:33:35', 'wudouqu', 'w');
INSERT INTO `z_area` VALUES ('3279', '成县', '甘肃省 陇南 成县', '621200', '621221', '62', '12', '21', '3', '2017-05-11 01:53:32', '2018-08-17 14:33:35', 'chengxian', 'c');
INSERT INTO `z_area` VALUES ('3280', '文县', '甘肃省 陇南 文县', '621200', '621222', '62', '12', '22', '3', '2017-05-11 01:53:32', '2018-08-17 14:33:35', 'wenxian', 'w');
INSERT INTO `z_area` VALUES ('3281', '宕昌县', '甘肃省 陇南 宕昌县', '621200', '621223', '62', '12', '23', '3', '2017-05-11 01:53:32', '2018-08-17 14:33:35', 'dangchangxian', 'd');
INSERT INTO `z_area` VALUES ('3282', '康县', '甘肃省 陇南 康县', '621200', '621224', '62', '12', '24', '3', '2017-05-11 01:53:33', '2018-08-17 14:33:35', 'kangxian', 'k');
INSERT INTO `z_area` VALUES ('3283', '西和县', '甘肃省 陇南 西和县', '621200', '621225', '62', '12', '25', '3', '2017-05-11 01:53:33', '2018-08-17 14:33:35', 'xihexian', 'x');
INSERT INTO `z_area` VALUES ('3284', '礼县', '甘肃省 陇南 礼县', '621200', '621226', '62', '12', '26', '3', '2017-05-11 01:53:33', '2018-08-17 14:33:35', 'lixian', 'l');
INSERT INTO `z_area` VALUES ('3285', '徽县', '甘肃省 陇南 徽县', '621200', '621227', '62', '12', '27', '3', '2017-05-11 01:53:33', '2018-08-17 14:33:36', 'huixian', 'h');
INSERT INTO `z_area` VALUES ('3286', '两当县', '甘肃省 陇南 两当县', '621200', '621228', '62', '12', '28', '3', '2017-05-11 01:53:33', '2018-08-17 14:33:36', 'liangdangxian', 'l');
INSERT INTO `z_area` VALUES ('3287', '临夏回族自治州', '甘肃省 临夏回族自治州', '620000', '622900', '62', '29', '00', '2', '2017-05-11 01:53:33', '2018-08-16 14:24:39', 'linxiahuizuzizhizhou', 'l');
INSERT INTO `z_area` VALUES ('3288', '临夏市', '甘肃省 临夏回族自治州 临夏市', '622900', '622901', '62', '29', '01', '3', '2017-05-11 01:53:33', '2018-08-17 14:33:36', 'linxiashi', 'l');
INSERT INTO `z_area` VALUES ('3289', '临夏县', '甘肃省 临夏回族自治州 临夏县', '622900', '622921', '62', '29', '21', '3', '2017-05-11 01:53:34', '2018-08-17 14:33:36', 'linxiaxian', 'l');
INSERT INTO `z_area` VALUES ('3290', '康乐县', '甘肃省 临夏回族自治州 康乐县', '622900', '622922', '62', '29', '22', '3', '2017-05-11 01:53:34', '2018-08-17 14:33:36', 'kanglexian', 'k');
INSERT INTO `z_area` VALUES ('3291', '永靖县', '甘肃省 临夏回族自治州 永靖县', '622900', '622923', '62', '29', '23', '3', '2017-05-11 01:53:34', '2018-08-17 14:33:36', 'yongjingxian', 'y');
INSERT INTO `z_area` VALUES ('3292', '广河县', '甘肃省 临夏回族自治州 广河县', '622900', '622924', '62', '29', '24', '3', '2017-05-11 01:53:34', '2018-08-17 14:33:36', 'guanghexian', 'g');
INSERT INTO `z_area` VALUES ('3293', '和政县', '甘肃省 临夏回族自治州 和政县', '622900', '622925', '62', '29', '25', '3', '2017-05-11 01:53:34', '2018-08-17 14:33:37', 'hezhengxian', 'h');
INSERT INTO `z_area` VALUES ('3294', '东乡族自治县', '甘肃省 临夏回族自治州 东乡族自治县', '622900', '622926', '62', '29', '26', '3', '2017-05-11 01:53:34', '2018-08-17 14:33:37', 'dongxiangzuzizhixian', 'd');
INSERT INTO `z_area` VALUES ('3295', '积石山保安族东乡族撒拉族自治县', '甘肃省 临夏回族自治州 积石山保安族东乡族撒拉族自治县', '622900', '622927', '62', '29', '27', '3', '2017-05-11 01:53:35', '2018-08-17 14:33:37', 'jishishanbaoanzudongxiangzusalazuzizhixian', 'j');
INSERT INTO `z_area` VALUES ('3296', '甘南藏族自治州', '甘肃省 甘南藏族自治州', '620000', '623000', '62', '30', '00', '2', '2017-05-11 01:53:35', '2018-08-16 14:24:40', 'gannancangzuzizhizhou', 'g');
INSERT INTO `z_area` VALUES ('3297', '合作市', '甘肃省 甘南藏族自治州 合作市', '623000', '623001', '62', '30', '01', '3', '2017-05-11 01:53:35', '2018-08-17 14:33:37', 'hezuoshi', 'h');
INSERT INTO `z_area` VALUES ('3298', '临潭县', '甘肃省 甘南藏族自治州 临潭县', '623000', '623021', '62', '30', '21', '3', '2017-05-11 01:53:35', '2018-08-17 14:33:37', 'lintanxian', 'l');
INSERT INTO `z_area` VALUES ('3299', '卓尼县', '甘肃省 甘南藏族自治州 卓尼县', '623000', '623022', '62', '30', '22', '3', '2017-05-11 01:53:35', '2018-08-17 14:33:37', 'zhuonixian', 'z');
INSERT INTO `z_area` VALUES ('3300', '舟曲县', '甘肃省 甘南藏族自治州 舟曲县', '623000', '623023', '62', '30', '23', '3', '2017-05-11 01:53:35', '2018-08-17 14:33:37', 'zhouquxian', 'z');
INSERT INTO `z_area` VALUES ('3301', '迭部县', '甘肃省 甘南藏族自治州 迭部县', '623000', '623024', '62', '30', '24', '3', '2017-05-11 01:53:35', '2018-08-17 14:33:38', 'diebuxian', 'd');
INSERT INTO `z_area` VALUES ('3302', '玛曲县', '甘肃省 甘南藏族自治州 玛曲县', '623000', '623025', '62', '30', '25', '3', '2017-05-11 01:53:36', '2018-08-17 14:33:38', 'maquxian', 'm');
INSERT INTO `z_area` VALUES ('3303', '碌曲县', '甘肃省 甘南藏族自治州 碌曲县', '623000', '623026', '62', '30', '26', '3', '2017-05-11 01:53:36', '2018-08-17 14:33:38', 'luquxian', 'l');
INSERT INTO `z_area` VALUES ('3304', '夏河县', '甘肃省 甘南藏族自治州 夏河县', '623000', '623027', '62', '30', '27', '3', '2017-05-11 01:53:36', '2018-08-17 14:33:38', 'xiahexian', 'x');
INSERT INTO `z_area` VALUES ('3305', '青海省', '青海省', '', '630000', '63', '00', '00', '1', '2017-05-11 01:53:36', '2017-08-28 14:25:28', 'qinghaisheng', 'q');
INSERT INTO `z_area` VALUES ('3306', '西宁', '青海省 西宁', '630000', '630100', '63', '01', '00', '2', '2017-05-11 01:53:36', '2018-08-16 14:24:41', 'xining', 'x');
INSERT INTO `z_area` VALUES ('3307', '西宁市', '青海省 西宁 西宁市', '630100', '630101', '63', '01', '01', '3', '2017-05-11 01:53:36', '2018-08-17 14:33:38', 'xiningshi', 'x');
INSERT INTO `z_area` VALUES ('3308', '城东区', '青海省 西宁 城东区', '630100', '630102', '63', '01', '02', '3', '2017-05-11 01:53:36', '2018-08-17 14:33:38', 'chengdongqu', 'c');
INSERT INTO `z_area` VALUES ('3309', '城中区', '青海省 西宁 城中区', '630100', '630103', '63', '01', '03', '3', '2017-05-11 01:53:37', '2018-08-17 14:33:38', 'chengzhongqu', 'c');
INSERT INTO `z_area` VALUES ('3310', '城西区', '青海省 西宁 城西区', '630100', '630104', '63', '01', '04', '3', '2017-05-11 01:53:37', '2018-08-17 14:33:39', 'chengxiqu', 'c');
INSERT INTO `z_area` VALUES ('3311', '城北区', '青海省 西宁 城北区', '630100', '630105', '63', '01', '05', '3', '2017-05-11 01:53:37', '2018-08-17 14:33:39', 'chengbeiqu', 'c');
INSERT INTO `z_area` VALUES ('3312', '大通回族土族自治县', '青海省 西宁 大通回族土族自治县', '630100', '630121', '63', '01', '21', '3', '2017-05-11 01:53:37', '2018-08-17 14:33:39', 'datonghuizutuzuzizhixian', 'd');
INSERT INTO `z_area` VALUES ('3313', '湟中县', '青海省 西宁 湟中县', '630100', '630122', '63', '01', '22', '3', '2017-05-11 01:53:37', '2018-08-17 14:33:39', 'huangzhongxian', 'h');
INSERT INTO `z_area` VALUES ('3314', '湟源县', '青海省 西宁 湟源县', '630100', '630123', '63', '01', '23', '3', '2017-05-11 01:53:37', '2018-08-17 14:33:39', 'huangyuanxian', 'h');
INSERT INTO `z_area` VALUES ('3315', '海东市', '青海省 海东市', '630000', '630200', '63', '02', '00', '2', '2017-05-11 01:53:37', '2018-08-16 14:24:42', 'haidongshi', 'h');
INSERT INTO `z_area` VALUES ('3316', '乐都区', '青海省 海东市 乐都区', '630200', '630202', '63', '02', '02', '3', '2017-05-11 01:53:38', '2018-08-17 14:33:39', 'ledouqu', 'l');
INSERT INTO `z_area` VALUES ('3317', '平安区', '青海省 海东市 平安区', '630200', '630203', '63', '02', '03', '3', '2017-05-11 01:53:38', '2018-08-17 14:33:39', 'pinganqu', 'p');
INSERT INTO `z_area` VALUES ('3318', '民和回族土族自治县', '青海省 海东市 民和回族土族自治县', '630200', '630222', '63', '02', '22', '3', '2017-05-11 01:53:38', '2018-08-17 14:33:40', 'minhehuizutuzuzizhixian', 'm');
INSERT INTO `z_area` VALUES ('3319', '互助土族自治县', '青海省 海东市 互助土族自治县', '630200', '630223', '63', '02', '23', '3', '2017-05-11 01:53:38', '2018-08-17 14:33:40', 'huzhutuzuzizhixian', 'h');
INSERT INTO `z_area` VALUES ('3320', '化隆回族自治县', '青海省 海东市 化隆回族自治县', '630200', '630224', '63', '02', '24', '3', '2017-05-11 01:53:38', '2018-08-17 14:33:40', 'hualonghuizuzizhixian', 'h');
INSERT INTO `z_area` VALUES ('3321', '循化撒拉族自治县', '青海省 海东市 循化撒拉族自治县', '630200', '630225', '63', '02', '25', '3', '2017-05-11 01:53:38', '2018-08-17 14:33:40', 'xunhuasalazuzizhixian', 'x');
INSERT INTO `z_area` VALUES ('3322', '海北藏族自治州', '青海省 海北藏族自治州', '630000', '632200', '63', '22', '00', '2', '2017-05-11 01:53:38', '2018-08-16 14:24:43', 'haibeicangzuzizhizhou', 'h');
INSERT INTO `z_area` VALUES ('3323', '门源回族自治县', '青海省 海北藏族自治州 门源回族自治县', '632200', '632221', '63', '22', '21', '3', '2017-05-11 01:53:39', '2018-08-17 14:33:40', 'menyuanhuizuzizhixian', 'm');
INSERT INTO `z_area` VALUES ('3324', '祁连县', '青海省 海北藏族自治州 祁连县', '632200', '632222', '63', '22', '22', '3', '2017-05-11 01:53:39', '2018-08-17 14:33:40', 'qilianxian', 'q');
INSERT INTO `z_area` VALUES ('3325', '海晏县', '青海省 海北藏族自治州 海晏县', '632200', '632223', '63', '22', '23', '3', '2017-05-11 01:53:39', '2018-08-17 14:33:41', 'haiyanxian', 'h');
INSERT INTO `z_area` VALUES ('3326', '刚察县', '青海省 海北藏族自治州 刚察县', '632200', '632224', '63', '22', '24', '3', '2017-05-11 01:53:39', '2018-08-17 14:33:41', 'gangchaxian', 'g');
INSERT INTO `z_area` VALUES ('3327', '黄南藏族自治州', '青海省 黄南藏族自治州', '630000', '632300', '63', '23', '00', '2', '2017-05-11 01:53:39', '2018-08-16 14:24:44', 'huangnancangzuzizhizhou', 'h');
INSERT INTO `z_area` VALUES ('3328', '同仁县', '青海省 黄南藏族自治州 同仁县', '632300', '632321', '63', '23', '21', '3', '2017-05-11 01:53:39', '2018-08-17 14:33:41', 'tongrenxian', 't');
INSERT INTO `z_area` VALUES ('3329', '尖扎县', '青海省 黄南藏族自治州 尖扎县', '632300', '632322', '63', '23', '22', '3', '2017-05-11 01:53:40', '2018-08-17 14:33:41', 'jianzhaxian', 'j');
INSERT INTO `z_area` VALUES ('3330', '泽库县', '青海省 黄南藏族自治州 泽库县', '632300', '632323', '63', '23', '23', '3', '2017-05-11 01:53:40', '2018-08-17 14:33:41', 'zekuxian', 'z');
INSERT INTO `z_area` VALUES ('3331', '河南蒙古族自治县', '青海省 黄南藏族自治州 河南蒙古族自治县', '632300', '632324', '63', '23', '24', '3', '2017-05-11 01:53:40', '2018-08-17 14:33:41', 'henanmengguzuzizhixian', 'h');
INSERT INTO `z_area` VALUES ('3332', '海南藏族自治州', '青海省 海南藏族自治州', '630000', '632500', '63', '25', '00', '2', '2017-05-11 01:53:40', '2018-08-16 14:24:44', 'hainancangzuzizhizhou', 'h');
INSERT INTO `z_area` VALUES ('3333', '共和县', '青海省 海南藏族自治州 共和县', '632500', '632521', '63', '25', '21', '3', '2017-05-11 01:53:40', '2018-08-17 14:33:41', 'gonghexian', 'g');
INSERT INTO `z_area` VALUES ('3334', '同德县', '青海省 海南藏族自治州 同德县', '632500', '632522', '63', '25', '22', '3', '2017-05-11 01:53:40', '2018-08-17 14:33:42', 'tongdexian', 't');
INSERT INTO `z_area` VALUES ('3335', '贵德县', '青海省 海南藏族自治州 贵德县', '632500', '632523', '63', '25', '23', '3', '2017-05-11 01:53:40', '2018-08-17 14:33:42', 'guidexian', 'g');
INSERT INTO `z_area` VALUES ('3336', '兴海县', '青海省 海南藏族自治州 兴海县', '632500', '632524', '63', '25', '24', '3', '2017-05-11 01:53:41', '2018-08-17 14:33:42', 'xinghaixian', 'x');
INSERT INTO `z_area` VALUES ('3337', '贵南县', '青海省 海南藏族自治州 贵南县', '632500', '632525', '63', '25', '25', '3', '2017-05-11 01:53:41', '2018-08-17 14:33:42', 'guinanxian', 'g');
INSERT INTO `z_area` VALUES ('3338', '果洛藏族自治州', '青海省 果洛藏族自治州', '630000', '632600', '63', '26', '00', '2', '2017-05-11 01:53:41', '2018-08-16 14:24:45', 'guoluocangzuzizhizhou', 'g');
INSERT INTO `z_area` VALUES ('3339', '玛沁县', '青海省 果洛藏族自治州 玛沁县', '632600', '632621', '63', '26', '21', '3', '2017-05-11 01:53:41', '2018-08-17 14:33:43', 'maqinxian', 'm');
INSERT INTO `z_area` VALUES ('3340', '班玛县', '青海省 果洛藏族自治州 班玛县', '632600', '632622', '63', '26', '22', '3', '2017-05-11 01:53:41', '2018-08-17 14:33:43', 'banmaxian', 'b');
INSERT INTO `z_area` VALUES ('3341', '甘德县', '青海省 果洛藏族自治州 甘德县', '632600', '632623', '63', '26', '23', '3', '2017-05-11 01:53:41', '2018-08-17 14:33:43', 'gandexian', 'g');
INSERT INTO `z_area` VALUES ('3342', '达日县', '青海省 果洛藏族自治州 达日县', '632600', '632624', '63', '26', '24', '3', '2017-05-11 01:53:41', '2018-08-17 14:33:43', 'darixian', 'd');
INSERT INTO `z_area` VALUES ('3343', '久治县', '青海省 果洛藏族自治州 久治县', '632600', '632625', '63', '26', '25', '3', '2017-05-11 01:53:42', '2018-08-17 14:33:43', 'jiuzhixian', 'j');
INSERT INTO `z_area` VALUES ('3344', '玛多县', '青海省 果洛藏族自治州 玛多县', '632600', '632626', '63', '26', '26', '3', '2017-05-11 01:53:42', '2018-08-17 14:33:43', 'maduoxian', 'm');
INSERT INTO `z_area` VALUES ('3345', '玉树藏族自治州', '青海省 玉树藏族自治州', '630000', '632700', '63', '27', '00', '2', '2017-05-11 01:53:42', '2018-08-16 14:24:46', 'yushucangzuzizhizhou', 'y');
INSERT INTO `z_area` VALUES ('3346', '玉树市', '青海省 玉树藏族自治州 玉树市', '632700', '632701', '63', '27', '01', '3', '2017-05-11 01:53:42', '2018-08-17 14:33:43', 'yushushi', 'y');
INSERT INTO `z_area` VALUES ('3347', '杂多县', '青海省 玉树藏族自治州 杂多县', '632700', '632722', '63', '27', '22', '3', '2017-05-11 01:53:42', '2018-08-17 14:33:44', 'zaduoxian', 'z');
INSERT INTO `z_area` VALUES ('3348', '称多县', '青海省 玉树藏族自治州 称多县', '632700', '632723', '63', '27', '23', '3', '2017-05-11 01:53:42', '2018-08-17 14:33:44', 'chenduoxian', 'c');
INSERT INTO `z_area` VALUES ('3349', '治多县', '青海省 玉树藏族自治州 治多县', '632700', '632724', '63', '27', '24', '3', '2017-05-11 01:53:43', '2018-08-17 14:33:44', 'zhiduoxian', 'z');
INSERT INTO `z_area` VALUES ('3350', '囊谦县', '青海省 玉树藏族自治州 囊谦县', '632700', '632725', '63', '27', '25', '3', '2017-05-11 01:53:43', '2018-08-17 14:33:44', 'nangqianxian', 'n');
INSERT INTO `z_area` VALUES ('3351', '曲麻莱县', '青海省 玉树藏族自治州 曲麻莱县', '632700', '632726', '63', '27', '26', '3', '2017-05-11 01:53:43', '2018-08-17 14:33:44', 'qumalaixian', 'q');
INSERT INTO `z_area` VALUES ('3352', '海西蒙古族藏族自治州', '青海省 海西蒙古族藏族自治州', '630000', '632800', '63', '28', '00', '2', '2017-05-11 01:53:43', '2018-08-16 14:24:47', 'haiximengguzucangzuzizhizhou', 'h');
INSERT INTO `z_area` VALUES ('3353', '格尔木市', '青海省 海西蒙古族藏族自治州 格尔木市', '632800', '632801', '63', '28', '01', '3', '2017-05-11 01:53:43', '2018-08-17 14:33:44', 'geermushi', 'g');
INSERT INTO `z_area` VALUES ('3354', '德令哈市', '青海省 海西蒙古族藏族自治州 德令哈市', '632800', '632802', '63', '28', '02', '3', '2017-05-11 01:53:43', '2018-08-17 14:33:45', 'delinghashi', 'd');
INSERT INTO `z_area` VALUES ('3355', '乌兰县', '青海省 海西蒙古族藏族自治州 乌兰县', '632800', '632821', '63', '28', '21', '3', '2017-05-11 01:53:43', '2018-08-17 14:33:45', 'wulanxian', 'w');
INSERT INTO `z_area` VALUES ('3356', '都兰县', '青海省 海西蒙古族藏族自治州 都兰县', '632800', '632822', '63', '28', '22', '3', '2017-05-11 01:53:44', '2018-08-17 14:33:45', 'doulanxian', 'd');
INSERT INTO `z_area` VALUES ('3357', '天峻县', '青海省 海西蒙古族藏族自治州 天峻县', '632800', '632823', '63', '28', '23', '3', '2017-05-11 01:53:44', '2018-08-17 14:33:45', 'tianjunxian', 't');
INSERT INTO `z_area` VALUES ('3358', '宁夏回族自治区', '宁夏回族自治区', '', '640000', '64', '00', '00', '1', '2017-05-11 01:53:44', '2017-08-28 14:25:32', 'ningxiahuizuzizhiqu', 'n');
INSERT INTO `z_area` VALUES ('3359', '银川', '宁夏回族自治区 银川', '640000', '640100', '64', '01', '00', '2', '2017-05-11 01:53:44', '2018-08-16 14:24:48', 'yinchuan', 'y');
INSERT INTO `z_area` VALUES ('3360', '银川市', '宁夏回族自治区 银川 银川市', '640100', '640101', '64', '01', '01', '3', '2017-05-11 01:53:44', '2018-08-17 14:33:45', 'yinchuanshi', 'y');
INSERT INTO `z_area` VALUES ('3361', '兴庆区', '宁夏回族自治区 银川 兴庆区', '640100', '640104', '64', '01', '04', '3', '2017-05-11 01:53:44', '2018-08-17 14:33:45', 'xingqingqu', 'x');
INSERT INTO `z_area` VALUES ('3362', '西夏区', '宁夏回族自治区 银川 西夏区', '640100', '640105', '64', '01', '05', '3', '2017-05-11 01:53:44', '2018-08-17 14:33:45', 'xixiaqu', 'x');
INSERT INTO `z_area` VALUES ('3363', '金凤区', '宁夏回族自治区 银川 金凤区', '640100', '640106', '64', '01', '06', '3', '2017-05-11 01:53:44', '2018-08-17 14:33:46', 'jinfengqu', 'j');
INSERT INTO `z_area` VALUES ('3364', '永宁县', '宁夏回族自治区 银川 永宁县', '640100', '640121', '64', '01', '21', '3', '2017-05-11 01:53:45', '2018-08-17 14:33:46', 'yongningxian', 'y');
INSERT INTO `z_area` VALUES ('3365', '贺兰县', '宁夏回族自治区 银川 贺兰县', '640100', '640122', '64', '01', '22', '3', '2017-05-11 01:53:45', '2018-08-17 14:33:46', 'helanxian', 'h');
INSERT INTO `z_area` VALUES ('3366', '灵武市', '宁夏回族自治区 银川 灵武市', '640100', '640181', '64', '01', '81', '3', '2017-05-11 01:53:45', '2018-08-17 14:33:46', 'lingwushi', 'l');
INSERT INTO `z_area` VALUES ('3367', '石嘴山', '宁夏回族自治区 石嘴山', '640000', '640200', '64', '02', '00', '2', '2017-05-11 01:53:45', '2018-08-16 14:24:49', 'shizuishan', 's');
INSERT INTO `z_area` VALUES ('3368', '石嘴山市', '宁夏回族自治区 石嘴山 石嘴山市', '640200', '640201', '64', '02', '01', '3', '2017-05-11 01:53:45', '2018-08-17 14:33:46', 'shizuishanshi', 's');
INSERT INTO `z_area` VALUES ('3369', '大武口区', '宁夏回族自治区 石嘴山 大武口区', '640200', '640202', '64', '02', '02', '3', '2017-05-11 01:53:45', '2018-08-17 14:33:46', 'dawukouqu', 'd');
INSERT INTO `z_area` VALUES ('3370', '惠农区', '宁夏回族自治区 石嘴山 惠农区', '640200', '640205', '64', '02', '05', '3', '2017-05-11 01:53:46', '2018-08-17 14:33:47', 'huinongqu', 'h');
INSERT INTO `z_area` VALUES ('3371', '平罗县', '宁夏回族自治区 石嘴山 平罗县', '640200', '640221', '64', '02', '21', '3', '2017-05-11 01:53:46', '2018-08-17 14:33:47', 'pingluoxian', 'p');
INSERT INTO `z_area` VALUES ('3372', '吴忠', '宁夏回族自治区 吴忠', '640000', '640300', '64', '03', '00', '2', '2017-05-11 01:53:46', '2018-08-16 14:24:49', 'wuzhong', 'w');
INSERT INTO `z_area` VALUES ('3373', '吴忠市', '宁夏回族自治区 吴忠 吴忠市', '640300', '640301', '64', '03', '01', '3', '2017-05-11 01:53:46', '2018-08-17 14:33:47', 'wuzhongshi', 'w');
INSERT INTO `z_area` VALUES ('3374', '利通区', '宁夏回族自治区 吴忠 利通区', '640300', '640302', '64', '03', '02', '3', '2017-05-11 01:53:46', '2018-08-17 14:33:47', 'litongqu', 'l');
INSERT INTO `z_area` VALUES ('3375', '红寺堡区', '宁夏回族自治区 吴忠 红寺堡区', '640300', '640303', '64', '03', '03', '3', '2017-05-11 01:53:46', '2018-08-17 14:33:47', 'hongsibaoqu', 'h');
INSERT INTO `z_area` VALUES ('3376', '盐池县', '宁夏回族自治区 吴忠 盐池县', '640300', '640323', '64', '03', '23', '3', '2017-05-11 01:53:46', '2018-08-17 14:33:47', 'yanchixian', 'y');
INSERT INTO `z_area` VALUES ('3377', '同心县', '宁夏回族自治区 吴忠 同心县', '640300', '640324', '64', '03', '24', '3', '2017-05-11 01:53:47', '2018-08-17 14:33:47', 'tongxinxian', 't');
INSERT INTO `z_area` VALUES ('3378', '青铜峡市', '宁夏回族自治区 吴忠 青铜峡市', '640300', '640381', '64', '03', '81', '3', '2017-05-11 01:53:47', '2018-08-17 14:33:48', 'qingtongxiashi', 'q');
INSERT INTO `z_area` VALUES ('3379', '固原', '宁夏回族自治区 固原', '640000', '640400', '64', '04', '00', '2', '2017-05-11 01:53:47', '2018-08-16 14:24:50', 'guyuan', 'g');
INSERT INTO `z_area` VALUES ('3380', '固原市', '宁夏回族自治区 固原 固原市', '640400', '640401', '64', '04', '01', '3', '2017-05-11 01:53:47', '2018-08-17 14:33:48', 'guyuanshi', 'g');
INSERT INTO `z_area` VALUES ('3381', '原州区', '宁夏回族自治区 固原 原州区', '640400', '640402', '64', '04', '02', '3', '2017-05-11 01:53:47', '2018-08-17 14:33:48', 'yuanzhouqu', 'y');
INSERT INTO `z_area` VALUES ('3382', '西吉县', '宁夏回族自治区 固原 西吉县', '640400', '640422', '64', '04', '22', '3', '2017-05-11 01:53:47', '2018-08-17 14:33:48', 'xijixian', 'x');
INSERT INTO `z_area` VALUES ('3383', '隆德县', '宁夏回族自治区 固原 隆德县', '640400', '640423', '64', '04', '23', '3', '2017-05-11 01:53:47', '2018-08-17 14:33:48', 'longdexian', 'l');
INSERT INTO `z_area` VALUES ('3384', '泾源县', '宁夏回族自治区 固原 泾源县', '640400', '640424', '64', '04', '24', '3', '2017-05-11 01:53:48', '2018-08-17 14:33:48', 'jingyuanxian', 'j');
INSERT INTO `z_area` VALUES ('3385', '彭阳县', '宁夏回族自治区 固原 彭阳县', '640400', '640425', '64', '04', '25', '3', '2017-05-11 01:53:48', '2018-08-17 14:33:49', 'pengyangxian', 'p');
INSERT INTO `z_area` VALUES ('3386', '中卫', '宁夏回族自治区 中卫', '640000', '640500', '64', '05', '00', '2', '2017-05-11 01:53:48', '2018-08-16 14:24:51', 'zhongwei', 'z');
INSERT INTO `z_area` VALUES ('3387', '中卫市', '宁夏回族自治区 中卫 中卫市', '640500', '640501', '64', '05', '01', '3', '2017-05-11 01:53:48', '2018-08-17 14:33:49', 'zhongweishi', 'z');
INSERT INTO `z_area` VALUES ('3388', '沙坡头区', '宁夏回族自治区 中卫 沙坡头区', '640500', '640502', '64', '05', '02', '3', '2017-05-11 01:53:48', '2018-08-17 14:33:49', 'shapotouqu', 's');
INSERT INTO `z_area` VALUES ('3389', '中宁县', '宁夏回族自治区 中卫 中宁县', '640500', '640521', '64', '05', '21', '3', '2017-05-11 01:53:48', '2018-08-17 14:33:49', 'zhongningxian', 'z');
INSERT INTO `z_area` VALUES ('3390', '海原县', '宁夏回族自治区 中卫 海原县', '640500', '640522', '64', '05', '22', '3', '2017-05-11 01:53:48', '2018-08-17 14:33:49', 'haiyuanxian', 'h');
INSERT INTO `z_area` VALUES ('3391', '新疆维吾尔自治区', '新疆维吾尔自治区', '', '650000', '65', '00', '00', '1', '2017-05-11 01:53:48', '2017-08-28 14:25:34', 'xinjiangweiwuerzizhiqu', 'x');
INSERT INTO `z_area` VALUES ('3392', '乌鲁木齐', '新疆维吾尔自治区 乌鲁木齐', '650000', '650100', '65', '01', '00', '2', '2017-05-11 01:53:49', '2018-08-16 14:24:52', 'wulumuqi', 'w');
INSERT INTO `z_area` VALUES ('3393', '乌鲁木齐市', '新疆维吾尔自治区 乌鲁木齐 乌鲁木齐市', '650100', '650101', '65', '01', '01', '3', '2017-05-11 01:53:49', '2018-08-17 14:33:49', 'wulumuqishi', 'w');
INSERT INTO `z_area` VALUES ('3394', '天山区', '新疆维吾尔自治区 乌鲁木齐 天山区', '650100', '650102', '65', '01', '02', '3', '2017-05-11 01:53:49', '2018-08-17 14:33:49', 'tianshanqu', 't');
INSERT INTO `z_area` VALUES ('3395', '沙依巴克区', '新疆维吾尔自治区 乌鲁木齐 沙依巴克区', '650100', '650103', '65', '01', '03', '3', '2017-05-11 01:53:49', '2018-08-17 14:33:50', 'shayibakequ', 's');
INSERT INTO `z_area` VALUES ('3396', '新市区', '新疆维吾尔自治区 乌鲁木齐 新市区', '650100', '650104', '65', '01', '04', '3', '2017-05-11 01:53:49', '2018-08-17 14:33:50', 'xinshiqu', 'x');
INSERT INTO `z_area` VALUES ('3397', '水磨沟区', '新疆维吾尔自治区 乌鲁木齐 水磨沟区', '650100', '650105', '65', '01', '05', '3', '2017-05-11 01:53:49', '2018-08-17 14:33:50', 'shuimogouqu', 's');
INSERT INTO `z_area` VALUES ('3398', '头屯河区', '新疆维吾尔自治区 乌鲁木齐 头屯河区', '650100', '650106', '65', '01', '06', '3', '2017-05-11 01:53:50', '2018-08-17 14:33:50', 'toutunhequ', 't');
INSERT INTO `z_area` VALUES ('3399', '达坂城区', '新疆维吾尔自治区 乌鲁木齐 达坂城区', '650100', '650107', '65', '01', '07', '3', '2017-05-11 01:53:50', '2018-08-17 14:33:50', 'dabanchengqu', 'd');
INSERT INTO `z_area` VALUES ('3400', '米东区', '新疆维吾尔自治区 乌鲁木齐 米东区', '650100', '650109', '65', '01', '09', '3', '2017-05-11 01:53:50', '2018-08-17 14:33:50', 'midongqu', 'm');
INSERT INTO `z_area` VALUES ('3401', '乌鲁木齐县', '新疆维吾尔自治区 乌鲁木齐 乌鲁木齐县', '650100', '650121', '65', '01', '21', '3', '2017-05-11 01:53:50', '2018-08-17 14:33:50', 'wulumuqixian', 'w');
INSERT INTO `z_area` VALUES ('3402', '克拉玛依', '新疆维吾尔自治区 克拉玛依', '650000', '650200', '65', '02', '00', '2', '2017-05-11 01:53:50', '2018-08-16 14:24:53', 'kelamayi', 'k');
INSERT INTO `z_area` VALUES ('3403', '克拉玛依市', '新疆维吾尔自治区 克拉玛依 克拉玛依市', '650200', '650201', '65', '02', '01', '3', '2017-05-11 01:53:50', '2018-08-17 14:33:50', 'kelamayishi', 'k');
INSERT INTO `z_area` VALUES ('3404', '独山子区', '新疆维吾尔自治区 克拉玛依 独山子区', '650200', '650202', '65', '02', '02', '3', '2017-05-11 01:53:50', '2018-08-17 14:33:51', 'dushanziqu', 'd');
INSERT INTO `z_area` VALUES ('3405', '克拉玛依区', '新疆维吾尔自治区 克拉玛依 克拉玛依区', '650200', '650203', '65', '02', '03', '3', '2017-05-11 01:53:51', '2018-08-17 14:33:51', 'kelamayiqu', 'k');
INSERT INTO `z_area` VALUES ('3406', '白碱滩区', '新疆维吾尔自治区 克拉玛依 白碱滩区', '650200', '650204', '65', '02', '04', '3', '2017-05-11 01:53:51', '2018-08-17 14:33:51', 'baijiantanqu', 'b');
INSERT INTO `z_area` VALUES ('3407', '乌尔禾区', '新疆维吾尔自治区 克拉玛依 乌尔禾区', '650200', '650205', '65', '02', '05', '3', '2017-05-11 01:53:51', '2018-08-17 14:33:51', 'wuerhequ', 'w');
INSERT INTO `z_area` VALUES ('3408', '吐鲁番市', '新疆维吾尔自治区 吐鲁番市', '650000', '650400', '65', '04', '00', '2', '2017-05-11 01:53:51', '2018-08-16 14:24:54', 'tulufanshi', 't');
INSERT INTO `z_area` VALUES ('3409', '高昌区', '新疆维吾尔自治区 吐鲁番市 高昌区', '650400', '650402', '65', '04', '02', '3', '2017-05-11 01:53:51', '2018-08-17 14:33:51', 'gaochangqu', 'g');
INSERT INTO `z_area` VALUES ('3410', '鄯善县', '新疆维吾尔自治区 吐鲁番市 鄯善县', '650400', '650421', '65', '04', '21', '3', '2017-05-11 01:53:51', '2018-08-17 14:33:51', 'shanshanxian', 's');
INSERT INTO `z_area` VALUES ('3411', '托克逊县', '新疆维吾尔自治区 吐鲁番市 托克逊县', '650400', '650422', '65', '04', '22', '3', '2017-05-11 01:53:51', '2018-08-17 14:33:51', 'tuokexunxian', 't');
INSERT INTO `z_area` VALUES ('3412', '哈密地区', '新疆维吾尔自治区 哈密地区', '650000', '652200', '65', '22', '00', '2', '2017-05-11 01:53:52', '2018-08-16 14:24:54', 'hamidiqu', 'h');
INSERT INTO `z_area` VALUES ('3413', '哈密市', '新疆维吾尔自治区 哈密地区 哈密市', '652200', '652201', '65', '22', '01', '3', '2017-05-11 01:53:52', '2018-08-17 14:33:52', 'hamishi', 'h');
INSERT INTO `z_area` VALUES ('3414', '巴里坤哈萨克自治县', '新疆维吾尔自治区 哈密地区 巴里坤哈萨克自治县', '652200', '652222', '65', '22', '22', '3', '2017-05-11 01:53:52', '2018-08-17 14:33:52', 'balikunhasakezizhixian', 'b');
INSERT INTO `z_area` VALUES ('3415', '伊吾县', '新疆维吾尔自治区 哈密地区 伊吾县', '652200', '652223', '65', '22', '23', '3', '2017-05-11 01:53:52', '2018-08-17 14:33:52', 'yiwuxian', 'y');
INSERT INTO `z_area` VALUES ('3416', '昌吉回族自治州', '新疆维吾尔自治区 昌吉回族自治州', '650000', '652300', '65', '23', '00', '2', '2017-05-11 01:53:52', '2018-08-16 14:24:55', 'changjihuizuzizhizhou', 'c');
INSERT INTO `z_area` VALUES ('3417', '昌吉市', '新疆维吾尔自治区 昌吉回族自治州 昌吉市', '652300', '652301', '65', '23', '01', '3', '2017-05-11 01:53:52', '2018-08-17 14:33:52', 'changjishi', 'c');
INSERT INTO `z_area` VALUES ('3418', '阜康市', '新疆维吾尔自治区 昌吉回族自治州 阜康市', '652300', '652302', '65', '23', '02', '3', '2017-05-11 01:53:52', '2018-08-17 14:33:52', 'fukangshi', 'f');
INSERT INTO `z_area` VALUES ('3419', '呼图壁县', '新疆维吾尔自治区 昌吉回族自治州 呼图壁县', '652300', '652323', '65', '23', '23', '3', '2017-05-11 01:53:53', '2018-08-17 14:33:52', 'hutubixian', 'h');
INSERT INTO `z_area` VALUES ('3420', '玛纳斯县', '新疆维吾尔自治区 昌吉回族自治州 玛纳斯县', '652300', '652324', '65', '23', '24', '3', '2017-05-11 01:53:53', '2018-08-17 14:33:52', 'manasixian', 'm');
INSERT INTO `z_area` VALUES ('3421', '奇台县', '新疆维吾尔自治区 昌吉回族自治州 奇台县', '652300', '652325', '65', '23', '25', '3', '2017-05-11 01:53:53', '2018-08-17 14:33:53', 'qitaixian', 'q');
INSERT INTO `z_area` VALUES ('3422', '吉木萨尔县', '新疆维吾尔自治区 昌吉回族自治州 吉木萨尔县', '652300', '652327', '65', '23', '27', '3', '2017-05-11 01:53:53', '2018-08-17 14:33:53', 'jimusaerxian', 'j');
INSERT INTO `z_area` VALUES ('3423', '木垒哈萨克自治县', '新疆维吾尔自治区 昌吉回族自治州 木垒哈萨克自治县', '652300', '652328', '65', '23', '28', '3', '2017-05-11 01:53:53', '2018-08-17 14:33:53', 'muleihasakezizhixian', 'm');
INSERT INTO `z_area` VALUES ('3424', '博尔塔拉蒙古自治州', '新疆维吾尔自治区 博尔塔拉蒙古自治州', '650000', '652700', '65', '27', '00', '2', '2017-05-11 01:53:53', '2018-08-16 14:24:56', 'boertalamengguzizhizhou', 'b');
INSERT INTO `z_area` VALUES ('3425', '博乐市', '新疆维吾尔自治区 博尔塔拉蒙古自治州 博乐市', '652700', '652701', '65', '27', '01', '3', '2017-05-11 01:53:53', '2018-08-17 14:33:53', 'boleshi', 'b');
INSERT INTO `z_area` VALUES ('3426', '阿拉山口市', '新疆维吾尔自治区 博尔塔拉蒙古自治州 阿拉山口市', '652700', '652702', '65', '27', '02', '3', '2017-05-11 01:53:54', '2018-08-17 14:33:53', 'alashankoushi', 'a');
INSERT INTO `z_area` VALUES ('3427', '精河县', '新疆维吾尔自治区 博尔塔拉蒙古自治州 精河县', '652700', '652722', '65', '27', '22', '3', '2017-05-11 01:53:54', '2018-08-17 14:33:53', 'jinghexian', 'j');
INSERT INTO `z_area` VALUES ('3428', '温泉县', '新疆维吾尔自治区 博尔塔拉蒙古自治州 温泉县', '652700', '652723', '65', '27', '23', '3', '2017-05-11 01:53:54', '2018-08-17 14:33:53', 'wenquanxian', 'w');
INSERT INTO `z_area` VALUES ('3429', '巴音郭楞蒙古自治州', '新疆维吾尔自治区 巴音郭楞蒙古自治州', '650000', '652800', '65', '28', '00', '2', '2017-05-11 01:53:54', '2018-08-16 14:24:56', 'bayinguolengmengguzizhizhou', 'b');
INSERT INTO `z_area` VALUES ('3430', '库尔勒市', '新疆维吾尔自治区 巴音郭楞蒙古自治州 库尔勒市', '652800', '652801', '65', '28', '01', '3', '2017-05-11 01:53:54', '2018-08-17 14:33:54', 'kuerleshi', 'k');
INSERT INTO `z_area` VALUES ('3431', '轮台县', '新疆维吾尔自治区 巴音郭楞蒙古自治州 轮台县', '652800', '652822', '65', '28', '22', '3', '2017-05-11 01:53:54', '2018-08-17 14:33:54', 'luntaixian', 'l');
INSERT INTO `z_area` VALUES ('3432', '尉犁县', '新疆维吾尔自治区 巴音郭楞蒙古自治州 尉犁县', '652800', '652823', '65', '28', '23', '3', '2017-05-11 01:53:55', '2018-08-17 14:33:54', 'weilixian', 'w');
INSERT INTO `z_area` VALUES ('3433', '若羌县', '新疆维吾尔自治区 巴音郭楞蒙古自治州 若羌县', '652800', '652824', '65', '28', '24', '3', '2017-05-11 01:53:55', '2018-08-17 14:33:54', 'ruoqiangxian', 'r');
INSERT INTO `z_area` VALUES ('3434', '且末县', '新疆维吾尔自治区 巴音郭楞蒙古自治州 且末县', '652800', '652825', '65', '28', '25', '3', '2017-05-11 01:53:55', '2018-08-17 14:33:54', 'qiemoxian', 'q');
INSERT INTO `z_area` VALUES ('3435', '焉耆回族自治县', '新疆维吾尔自治区 巴音郭楞蒙古自治州 焉耆回族自治县', '652800', '652826', '65', '28', '26', '3', '2017-05-11 01:53:55', '2018-08-17 14:33:54', 'yanqihuizuzizhixian', 'y');
INSERT INTO `z_area` VALUES ('3436', '和静县', '新疆维吾尔自治区 巴音郭楞蒙古自治州 和静县', '652800', '652827', '65', '28', '27', '3', '2017-05-11 01:53:55', '2018-08-17 14:33:55', 'hejingxian', 'h');
INSERT INTO `z_area` VALUES ('3437', '和硕县', '新疆维吾尔自治区 巴音郭楞蒙古自治州 和硕县', '652800', '652828', '65', '28', '28', '3', '2017-05-11 01:53:55', '2018-08-17 14:33:55', 'heshuoxian', 'h');
INSERT INTO `z_area` VALUES ('3438', '博湖县', '新疆维吾尔自治区 巴音郭楞蒙古自治州 博湖县', '652800', '652829', '65', '28', '29', '3', '2017-05-11 01:53:55', '2018-08-17 14:33:55', 'bohuxian', 'b');
INSERT INTO `z_area` VALUES ('3439', '阿克苏地区', '新疆维吾尔自治区 阿克苏地区', '650000', '652900', '65', '29', '00', '2', '2017-05-11 01:53:56', '2018-08-16 14:24:57', 'akesudiqu', 'a');
INSERT INTO `z_area` VALUES ('3440', '阿克苏市', '新疆维吾尔自治区 阿克苏地区 阿克苏市', '652900', '652901', '65', '29', '01', '3', '2017-05-11 01:53:56', '2018-08-17 14:33:55', 'akesushi', 'a');
INSERT INTO `z_area` VALUES ('3441', '温宿县', '新疆维吾尔自治区 阿克苏地区 温宿县', '652900', '652922', '65', '29', '22', '3', '2017-05-11 01:53:56', '2018-08-17 14:33:56', 'wensuxian', 'w');
INSERT INTO `z_area` VALUES ('3442', '库车县', '新疆维吾尔自治区 阿克苏地区 库车县', '652900', '652923', '65', '29', '23', '3', '2017-05-11 01:53:56', '2018-08-17 14:33:56', 'kuchexian', 'k');
INSERT INTO `z_area` VALUES ('3443', '沙雅县', '新疆维吾尔自治区 阿克苏地区 沙雅县', '652900', '652924', '65', '29', '24', '3', '2017-05-11 01:53:56', '2018-08-17 14:33:56', 'shayaxian', 's');
INSERT INTO `z_area` VALUES ('3444', '新和县', '新疆维吾尔自治区 阿克苏地区 新和县', '652900', '652925', '65', '29', '25', '3', '2017-05-11 01:53:56', '2018-08-17 14:33:56', 'xinhexian', 'x');
INSERT INTO `z_area` VALUES ('3445', '拜城县', '新疆维吾尔自治区 阿克苏地区 拜城县', '652900', '652926', '65', '29', '26', '3', '2017-05-11 01:53:57', '2018-08-17 14:33:56', 'baichengxian', 'b');
INSERT INTO `z_area` VALUES ('3446', '乌什县', '新疆维吾尔自治区 阿克苏地区 乌什县', '652900', '652927', '65', '29', '27', '3', '2017-05-11 01:53:57', '2018-08-17 14:33:56', 'wushixian', 'w');
INSERT INTO `z_area` VALUES ('3447', '阿瓦提县', '新疆维吾尔自治区 阿克苏地区 阿瓦提县', '652900', '652928', '65', '29', '28', '3', '2017-05-11 01:53:57', '2018-08-17 14:33:56', 'awatixian', 'a');
INSERT INTO `z_area` VALUES ('3448', '柯坪县', '新疆维吾尔自治区 阿克苏地区 柯坪县', '652900', '652929', '65', '29', '29', '3', '2017-05-11 01:53:57', '2018-08-17 14:33:57', 'kepingxian', 'k');
INSERT INTO `z_area` VALUES ('3449', '克孜勒苏柯尔克孜自治州', '新疆维吾尔自治区 克孜勒苏柯尔克孜自治州', '650000', '653000', '65', '30', '00', '2', '2017-05-11 01:53:57', '2018-08-16 14:24:59', 'kezilesukeerkezizizhizhou', 'k');
INSERT INTO `z_area` VALUES ('3450', '阿图什市', '新疆维吾尔自治区 克孜勒苏柯尔克孜自治州 阿图什市', '653000', '653001', '65', '30', '01', '3', '2017-05-11 01:53:57', '2018-08-17 14:33:57', 'atushishi', 'a');
INSERT INTO `z_area` VALUES ('3451', '阿克陶县', '新疆维吾尔自治区 克孜勒苏柯尔克孜自治州 阿克陶县', '653000', '653022', '65', '30', '22', '3', '2017-05-11 01:53:57', '2018-08-17 14:33:57', 'aketaoxian', 'a');
INSERT INTO `z_area` VALUES ('3452', '阿合奇县', '新疆维吾尔自治区 克孜勒苏柯尔克孜自治州 阿合奇县', '653000', '653023', '65', '30', '23', '3', '2017-05-11 01:53:58', '2018-08-17 14:33:57', 'aheqixian', 'a');
INSERT INTO `z_area` VALUES ('3453', '乌恰县', '新疆维吾尔自治区 克孜勒苏柯尔克孜自治州 乌恰县', '653000', '653024', '65', '30', '24', '3', '2017-05-11 01:53:58', '2018-08-17 14:33:57', 'wuqiaxian', 'w');
INSERT INTO `z_area` VALUES ('3454', '喀什地区', '新疆维吾尔自治区 喀什地区', '650000', '653100', '65', '31', '00', '2', '2017-05-11 01:53:58', '2018-08-16 14:24:59', 'kashidiqu', 'k');
INSERT INTO `z_area` VALUES ('3455', '喀什市', '新疆维吾尔自治区 喀什地区 喀什市', '653100', '653101', '65', '31', '01', '3', '2017-05-11 01:53:58', '2018-08-17 14:33:57', 'kashishi', 'k');
INSERT INTO `z_area` VALUES ('3456', '疏附县', '新疆维吾尔自治区 喀什地区 疏附县', '653100', '653121', '65', '31', '21', '3', '2017-05-11 01:53:58', '2018-08-17 14:33:57', 'shufuxian', 's');
INSERT INTO `z_area` VALUES ('3457', '疏勒县', '新疆维吾尔自治区 喀什地区 疏勒县', '653100', '653122', '65', '31', '22', '3', '2017-05-11 01:53:58', '2018-08-17 14:33:58', 'shulexian', 's');
INSERT INTO `z_area` VALUES ('3458', '英吉沙县', '新疆维吾尔自治区 喀什地区 英吉沙县', '653100', '653123', '65', '31', '23', '3', '2017-05-11 01:53:58', '2018-08-17 14:33:58', 'yingjishaxian', 'y');
INSERT INTO `z_area` VALUES ('3459', '泽普县', '新疆维吾尔自治区 喀什地区 泽普县', '653100', '653124', '65', '31', '24', '3', '2017-05-11 01:53:59', '2018-08-17 14:33:58', 'zepuxian', 'z');
INSERT INTO `z_area` VALUES ('3460', '莎车县', '新疆维吾尔自治区 喀什地区 莎车县', '653100', '653125', '65', '31', '25', '3', '2017-05-11 01:53:59', '2018-08-17 14:33:58', 'shachexian', 's');
INSERT INTO `z_area` VALUES ('3461', '叶城县', '新疆维吾尔自治区 喀什地区 叶城县', '653100', '653126', '65', '31', '26', '3', '2017-05-11 01:53:59', '2018-08-17 14:33:58', 'yechengxian', 'y');
INSERT INTO `z_area` VALUES ('3462', '麦盖提县', '新疆维吾尔自治区 喀什地区 麦盖提县', '653100', '653127', '65', '31', '27', '3', '2017-05-11 01:53:59', '2018-08-17 14:33:58', 'maigaitixian', 'm');
INSERT INTO `z_area` VALUES ('3463', '岳普湖县', '新疆维吾尔自治区 喀什地区 岳普湖县', '653100', '653128', '65', '31', '28', '3', '2017-05-11 01:53:59', '2018-08-17 14:33:58', 'yuepuhuxian', 'y');
INSERT INTO `z_area` VALUES ('3464', '伽师县', '新疆维吾尔自治区 喀什地区 伽师县', '653100', '653129', '65', '31', '29', '3', '2017-05-11 01:53:59', '2018-08-17 14:33:58', 'gashixian', 'g');
INSERT INTO `z_area` VALUES ('3465', '巴楚县', '新疆维吾尔自治区 喀什地区 巴楚县', '653100', '653130', '65', '31', '30', '3', '2017-05-11 01:54:00', '2018-08-17 14:33:59', 'bachuxian', 'b');
INSERT INTO `z_area` VALUES ('3466', '塔什库尔干塔吉克自治县', '新疆维吾尔自治区 喀什地区 塔什库尔干塔吉克自治县', '653100', '653131', '65', '31', '31', '3', '2017-05-11 01:54:00', '2018-08-17 14:33:59', 'tashikuergantajikezizhixian', 't');
INSERT INTO `z_area` VALUES ('3467', '和田地区', '新疆维吾尔自治区 和田地区', '650000', '653200', '65', '32', '00', '2', '2017-05-11 01:54:00', '2018-08-16 14:25:01', 'hetiandiqu', 'h');
INSERT INTO `z_area` VALUES ('3468', '和田市', '新疆维吾尔自治区 和田地区 和田市', '653200', '653201', '65', '32', '01', '3', '2017-05-11 01:54:00', '2018-08-17 14:33:59', 'hetianshi', 'h');
INSERT INTO `z_area` VALUES ('3469', '和田县', '新疆维吾尔自治区 和田地区 和田县', '653200', '653221', '65', '32', '21', '3', '2017-05-11 01:54:00', '2018-08-17 14:33:59', 'hetianxian', 'h');
INSERT INTO `z_area` VALUES ('3470', '墨玉县', '新疆维吾尔自治区 和田地区 墨玉县', '653200', '653222', '65', '32', '22', '3', '2017-05-11 01:54:00', '2018-08-17 14:33:59', 'moyuxian', 'm');
INSERT INTO `z_area` VALUES ('3471', '皮山县', '新疆维吾尔自治区 和田地区 皮山县', '653200', '653223', '65', '32', '23', '3', '2017-05-11 01:54:00', '2018-08-17 14:33:59', 'pishanxian', 'p');
INSERT INTO `z_area` VALUES ('3472', '洛浦县', '新疆维吾尔自治区 和田地区 洛浦县', '653200', '653224', '65', '32', '24', '3', '2017-05-11 01:54:01', '2018-08-17 14:33:59', 'luopuxian', 'l');
INSERT INTO `z_area` VALUES ('3473', '策勒县', '新疆维吾尔自治区 和田地区 策勒县', '653200', '653225', '65', '32', '25', '3', '2017-05-11 01:54:01', '2018-08-17 14:34:00', 'celexian', 'c');
INSERT INTO `z_area` VALUES ('3474', '于田县', '新疆维吾尔自治区 和田地区 于田县', '653200', '653226', '65', '32', '26', '3', '2017-05-11 01:54:01', '2018-08-17 14:34:00', 'yutianxian', 'y');
INSERT INTO `z_area` VALUES ('3475', '民丰县', '新疆维吾尔自治区 和田地区 民丰县', '653200', '653227', '65', '32', '27', '3', '2017-05-11 01:54:01', '2018-08-17 14:34:00', 'minfengxian', 'm');
INSERT INTO `z_area` VALUES ('3476', '伊犁哈萨克自治州', '新疆维吾尔自治区 伊犁哈萨克自治州', '650000', '654000', '65', '40', '00', '2', '2017-05-11 01:54:01', '2018-08-16 14:25:02', 'yilihasakezizhizhou', 'y');
INSERT INTO `z_area` VALUES ('3477', '伊宁市', '新疆维吾尔自治区 伊犁哈萨克自治州 伊宁市', '654000', '654002', '65', '40', '02', '3', '2017-05-11 01:54:01', '2018-08-17 14:34:00', 'yiningshi', 'y');
INSERT INTO `z_area` VALUES ('3478', '奎屯市', '新疆维吾尔自治区 伊犁哈萨克自治州 奎屯市', '654000', '654003', '65', '40', '03', '3', '2017-05-11 01:54:02', '2018-08-17 14:34:00', 'kuitunshi', 'k');
INSERT INTO `z_area` VALUES ('3479', '霍尔果斯市', '新疆维吾尔自治区 伊犁哈萨克自治州 霍尔果斯市', '654000', '654004', '65', '40', '04', '3', '2017-05-11 01:54:02', '2018-08-17 14:34:00', 'huoerguosishi', 'h');
INSERT INTO `z_area` VALUES ('3480', '伊宁县', '新疆维吾尔自治区 伊犁哈萨克自治州 伊宁县', '654000', '654021', '65', '40', '21', '3', '2017-05-11 01:54:02', '2018-08-17 14:34:01', 'yiningxian', 'y');
INSERT INTO `z_area` VALUES ('3481', '察布查尔锡伯自治县', '新疆维吾尔自治区 伊犁哈萨克自治州 察布查尔锡伯自治县', '654000', '654022', '65', '40', '22', '3', '2017-05-11 01:54:02', '2018-08-17 14:34:01', 'chabuchaerxibozizhixian', 'c');
INSERT INTO `z_area` VALUES ('3482', '霍城县', '新疆维吾尔自治区 伊犁哈萨克自治州 霍城县', '654000', '654023', '65', '40', '23', '3', '2017-05-11 01:54:02', '2018-08-17 14:34:01', 'huochengxian', 'h');
INSERT INTO `z_area` VALUES ('3483', '巩留县', '新疆维吾尔自治区 伊犁哈萨克自治州 巩留县', '654000', '654024', '65', '40', '24', '3', '2017-05-11 01:54:02', '2018-08-17 14:34:01', 'gongliuxian', 'g');
INSERT INTO `z_area` VALUES ('3484', '新源县', '新疆维吾尔自治区 伊犁哈萨克自治州 新源县', '654000', '654025', '65', '40', '25', '3', '2017-05-11 01:54:02', '2018-08-17 14:34:01', 'xinyuanxian', 'x');
INSERT INTO `z_area` VALUES ('3485', '昭苏县', '新疆维吾尔自治区 伊犁哈萨克自治州 昭苏县', '654000', '654026', '65', '40', '26', '3', '2017-05-11 01:54:03', '2018-08-17 14:34:01', 'zhaosuxian', 'z');
INSERT INTO `z_area` VALUES ('3486', '特克斯县', '新疆维吾尔自治区 伊犁哈萨克自治州 特克斯县', '654000', '654027', '65', '40', '27', '3', '2017-05-11 01:54:03', '2018-08-17 14:34:01', 'tekesixian', 't');
INSERT INTO `z_area` VALUES ('3487', '尼勒克县', '新疆维吾尔自治区 伊犁哈萨克自治州 尼勒克县', '654000', '654028', '65', '40', '28', '3', '2017-05-11 01:54:03', '2018-08-17 14:34:01', 'nilekexian', 'n');
INSERT INTO `z_area` VALUES ('3488', '塔城地区', '新疆维吾尔自治区 塔城地区', '650000', '654200', '65', '42', '00', '2', '2017-05-11 01:54:03', '2018-08-16 14:25:04', 'tachengdiqu', 't');
INSERT INTO `z_area` VALUES ('3489', '塔城市', '新疆维吾尔自治区 塔城地区 塔城市', '654200', '654201', '65', '42', '01', '3', '2017-05-11 01:54:03', '2018-08-17 14:34:02', 'tachengshi', 't');
INSERT INTO `z_area` VALUES ('3490', '乌苏市', '新疆维吾尔自治区 塔城地区 乌苏市', '654200', '654202', '65', '42', '02', '3', '2017-05-11 01:54:03', '2018-08-17 14:34:02', 'wusushi', 'w');
INSERT INTO `z_area` VALUES ('3491', '额敏县', '新疆维吾尔自治区 塔城地区 额敏县', '654200', '654221', '65', '42', '21', '3', '2017-05-11 01:54:04', '2018-08-17 14:34:02', 'eminxian', 'e');
INSERT INTO `z_area` VALUES ('3492', '沙湾县', '新疆维吾尔自治区 塔城地区 沙湾县', '654200', '654223', '65', '42', '23', '3', '2017-05-11 01:54:04', '2018-08-17 14:34:02', 'shawanxian', 's');
INSERT INTO `z_area` VALUES ('3493', '托里县', '新疆维吾尔自治区 塔城地区 托里县', '654200', '654224', '65', '42', '24', '3', '2017-05-11 01:54:04', '2018-08-17 14:34:02', 'tuolixian', 't');
INSERT INTO `z_area` VALUES ('3494', '裕民县', '新疆维吾尔自治区 塔城地区 裕民县', '654200', '654225', '65', '42', '25', '3', '2017-05-11 01:54:04', '2018-08-17 14:34:02', 'yuminxian', 'y');
INSERT INTO `z_area` VALUES ('3495', '和布克赛尔蒙古自治县', '新疆维吾尔自治区 塔城地区 和布克赛尔蒙古自治县', '654200', '654226', '65', '42', '26', '3', '2017-05-11 01:54:04', '2018-08-17 14:34:02', 'hebukesaiermengguzizhixian', 'h');
INSERT INTO `z_area` VALUES ('3496', '阿勒泰地区', '新疆维吾尔自治区 阿勒泰地区', '650000', '654300', '65', '43', '00', '2', '2017-05-11 01:54:04', '2018-08-16 14:25:05', 'aletaidiqu', 'a');
INSERT INTO `z_area` VALUES ('3497', '阿勒泰市', '新疆维吾尔自治区 阿勒泰地区 阿勒泰市', '654300', '654301', '65', '43', '01', '3', '2017-05-11 01:54:04', '2018-08-17 14:34:03', 'aletaishi', 'a');
INSERT INTO `z_area` VALUES ('3498', '布尔津县', '新疆维吾尔自治区 阿勒泰地区 布尔津县', '654300', '654321', '65', '43', '21', '3', '2017-05-11 01:54:05', '2018-08-17 14:34:03', 'buerjinxian', 'b');
INSERT INTO `z_area` VALUES ('3499', '富蕴县', '新疆维吾尔自治区 阿勒泰地区 富蕴县', '654300', '654322', '65', '43', '22', '3', '2017-05-11 01:54:05', '2018-08-17 14:34:03', 'fuyunxian', 'f');
INSERT INTO `z_area` VALUES ('3500', '福海县', '新疆维吾尔自治区 阿勒泰地区 福海县', '654300', '654323', '65', '43', '23', '3', '2017-05-11 01:54:05', '2018-08-17 14:34:03', 'fuhaixian', 'f');
INSERT INTO `z_area` VALUES ('3501', '哈巴河县', '新疆维吾尔自治区 阿勒泰地区 哈巴河县', '654300', '654324', '65', '43', '24', '3', '2017-05-11 01:54:05', '2018-08-17 14:34:03', 'habahexian', 'h');
INSERT INTO `z_area` VALUES ('3502', '青河县', '新疆维吾尔自治区 阿勒泰地区 青河县', '654300', '654325', '65', '43', '25', '3', '2017-05-11 01:54:05', '2018-08-17 14:34:03', 'qinghexian', 'q');
INSERT INTO `z_area` VALUES ('3503', '吉木乃县', '新疆维吾尔自治区 阿勒泰地区 吉木乃县', '654300', '654326', '65', '43', '26', '3', '2017-05-11 01:54:05', '2018-08-17 14:34:04', 'jimunaixian', 'j');
INSERT INTO `z_area` VALUES ('3504', '自治区直辖县级行政区划', '新疆维吾尔自治区 自治区直辖县级行政区划', '650000', '659000', '65', '90', '00', '2', '2017-05-11 01:54:05', '2018-08-16 14:25:06', 'zizhiquzhixiaxianjixingzhengquhua', 'z');
INSERT INTO `z_area` VALUES ('3505', '石河子市', '新疆维吾尔自治区 自治区直辖县级行政区划 石河子市', '659000', '659001', '65', '90', '01', '3', '2017-05-11 01:54:06', '2018-08-17 14:34:04', 'shihezishi', 's');
INSERT INTO `z_area` VALUES ('3506', '阿拉尔市', '新疆维吾尔自治区 自治区直辖县级行政区划 阿拉尔市', '659000', '659002', '65', '90', '02', '3', '2017-05-11 01:54:06', '2018-08-17 14:34:04', 'alaershi', 'a');
INSERT INTO `z_area` VALUES ('3507', '图木舒克市', '新疆维吾尔自治区 自治区直辖县级行政区划 图木舒克市', '659000', '659003', '65', '90', '03', '3', '2017-05-11 01:54:06', '2018-08-17 14:34:04', 'tumushukeshi', 't');
INSERT INTO `z_area` VALUES ('3508', '五家渠市', '新疆维吾尔自治区 自治区直辖县级行政区划 五家渠市', '659000', '659004', '65', '90', '04', '3', '2017-05-11 01:54:06', '2018-08-17 14:34:04', 'wujiaqushi', 'w');
INSERT INTO `z_area` VALUES ('3509', '台湾省', '台湾省', '', '710000', '71', '00', '00', '1', '2017-05-11 01:54:06', '2017-08-28 14:25:43', 'taiwansheng', 't');
INSERT INTO `z_area` VALUES ('3510', '香港特别行政区', '香港特别行政区', '', '810000', '81', '00', '00', '1', '2017-05-11 01:54:06', '2017-08-28 14:25:43', 'xianggangtebiexingzhengqu', 'x');
INSERT INTO `z_area` VALUES ('3511', '澳门特别行政区', '澳门特别行政区', '', '820000', '82', '00', '00', '1', '2017-05-11 01:54:06', '2017-08-28 14:25:43', 'aomentebiexingzhengqu', 'a');

-- ----------------------------
-- Table structure for `z_banner`
-- ----------------------------
DROP TABLE IF EXISTS `z_banner`;
CREATE TABLE `z_banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片',
  `jump_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型',
  `jump_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of z_banner
-- ----------------------------
INSERT INTO `z_banner` VALUES ('1', '/uploads/images/banner/3kkdsBHXIswjV7aDWvNWsgse4qAICSWok4yd0D20.jpeg', '0', null, null, null);
INSERT INTO `z_banner` VALUES ('2', '/uploads/images/banner/D8K7BGFVBl2AOrJs1z1vbEHDuiCwWKj1h4RB1GLZ.jpeg', '0', null, null, null);
INSERT INTO `z_banner` VALUES ('3', '/uploads/images/banner/3fEK2fgQDWvKUXmDbmnColt8e3ir6t9GniR1gI0S.jpeg', '0', null, null, null);

-- ----------------------------
-- Table structure for `z_fx_chain`
-- ----------------------------
DROP TABLE IF EXISTS `z_fx_chain`;
CREATE TABLE `z_fx_chain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(4) NOT NULL DEFAULT '0000-00-00 00:00:00.0000',
  `updated_at` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `user_id` int(11) DEFAULT NULL,
  `l3_id` int(11) DEFAULT NULL,
  `l4_id` int(11) DEFAULT NULL,
  `l5_id` int(11) DEFAULT NULL,
  `l6_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of z_fx_chain
-- ----------------------------
INSERT INTO `z_fx_chain` VALUES ('2', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.000000', '28', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('3', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.000000', '29', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('4', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.000000', '35', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('5', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.000000', '198', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('6', '0000-00-00 00:00:00.0000', '2018-08-14 15:38:38.000000', '274', '28', null, null, null);
INSERT INTO `z_fx_chain` VALUES ('7', '2018-08-15 15:09:37.0000', '2018-08-15 15:09:37.000000', '275', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('8', '2018-08-16 11:22:16.0000', '2018-08-16 11:22:16.000000', '276', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('9', '2018-08-16 11:39:40.0000', '2018-08-16 11:39:40.000000', '277', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('10', '2018-08-16 11:58:07.0000', '2018-08-16 11:58:07.000000', '278', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('11', '2018-08-16 11:58:18.0000', '2018-08-16 11:58:18.000000', '279', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('12', '2018-08-16 11:58:37.0000', '2018-08-16 11:58:37.000000', '280', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('13', '2018-08-16 12:39:00.0000', '2018-08-16 12:39:00.000000', '281', '28', null, null, null);
INSERT INTO `z_fx_chain` VALUES ('14', '2018-08-16 12:39:43.0000', '2018-08-16 12:39:43.000000', '282', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('15', '2018-08-16 15:36:18.0000', '2018-08-16 15:36:18.000000', '283', '28', null, null, null);
INSERT INTO `z_fx_chain` VALUES ('16', '2018-08-16 17:44:27.0000', '2018-08-16 17:44:27.000000', '284', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('17', '2018-08-16 17:49:11.0000', '2018-08-16 17:49:11.000000', '285', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('18', '2018-08-16 17:52:56.0000', '2018-08-16 17:52:56.000000', '286', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('19', '2018-08-16 18:08:06.0000', '2018-08-16 18:08:06.000000', '287', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('20', '2018-08-17 09:28:28.0000', '2018-08-17 09:28:28.000000', '288', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('21', '2018-08-17 09:31:54.0000', '2018-08-17 09:31:54.000000', '289', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('22', '2018-08-17 09:35:40.0000', '2018-08-17 09:35:40.000000', '290', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('23', '2018-08-17 09:38:19.0000', '2018-08-17 09:38:19.000000', '291', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('24', '2018-08-17 09:42:41.0000', '2018-08-17 09:42:41.000000', '292', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('25', '2018-08-18 17:15:27.0000', '2018-08-18 17:15:27.000000', '293', null, null, null, null);
INSERT INTO `z_fx_chain` VALUES ('26', '2018-08-18 18:27:50.0000', '2018-08-18 18:27:50.000000', '294', null, null, null, null);

-- ----------------------------
-- Table structure for `z_goods`
-- ----------------------------
DROP TABLE IF EXISTS `z_goods`;
CREATE TABLE `z_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品主键id',
  `store_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL COMMENT '分类',
  `name` varchar(128) NOT NULL,
  `uint` varchar(10) NOT NULL DEFAULT '' COMMENT '单位',
  `market_price` int(11) NOT NULL DEFAULT '0',
  `score` decimal(10,2) DEFAULT '0.00' COMMENT '积分',
  `price` int(11) NOT NULL,
  `min_price` tinyint(4) NOT NULL DEFAULT '0' COMMENT '最低售价',
  `max_price` int(11) NOT NULL DEFAULT '0' COMMENT '最高售价',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '主图',
  `images` text NOT NULL COMMENT '图片集合',
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0无，1上架，2下架',
  `sold_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '开售时间',
  `detail` text NOT NULL COMMENT '商品详情',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `attribute` text COMMENT '商品属性',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1普通商品，2积分商品，3精品',
  `text` text,
  `order` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of z_goods
-- ----------------------------
INSERT INTO `z_goods` VALUES ('124', '1', '82', '面膜', '', '0', null, '3980', '0', '0', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '[\"\\/uploads\\/images\\/goods\\/HLUbeIkQGjhZ9Q9k2T09YJ6c2FQv16zxP7uckvHc.jpeg\"]', '1', '0000-00-00 00:00:00', '[\"\\/uploads\\/images\\/goods\\/MZe84z6Lf8O8QmNnIXGmrMFZpube4hH5EixjJZKW.jpeg\"]', '2018-08-16 12:29:00', '2018-08-16 12:32:11', null, '1', '面膜', '2');
INSERT INTO `z_goods` VALUES ('125', '1', '84', '面膜1', '', '0', '10.00', '2980', '0', '0', '/uploads/images/goods/GxSXnAE41de83K7LiepDNIKQfmFqjfLUHNlVCFcv.jpeg', '[\"\\/uploads\\/images\\/goods\\/K7ao84EVqUTTT3BDOIYnkVXIKHIqEVO3xIVPGTDG.jpeg\"]', '1', '0000-00-00 00:00:00', '[\"\\/uploads\\/images\\/goods\\/llIMnCgrHfNtk0uUA2MiCptkiTVuh8FB8xKKiZIB.jpeg\"]', '2018-08-16 12:31:07', '2018-08-16 14:00:12', null, '2', '面膜', '0');
INSERT INTO `z_goods` VALUES ('126', '1', '82', '米素', '', '0', null, '7960', '0', '0', '/uploads/images/goods/J6ZNtelPNvXoGX5kUGcl0r3a2AACwzU8jcwGpTtk.jpeg', '[\"\\/uploads\\/images\\/goods\\/uWegXrcQifX18Lur9Ngy9M6JFgyeFd713zlbB45F.jpeg\"]', '1', '0000-00-00 00:00:00', '[\"\\/uploads\\/images\\/goods\\/2Hyd2AvpChewapu1yHfppgCAE4t94XDasoAths3j.jpeg\"]', '2018-08-16 12:31:53', '2018-08-16 12:33:17', null, '1', '面膜', '4');
INSERT INTO `z_goods` VALUES ('127', '1', '82', '多元霜', '', '0', null, '15920', '0', '0', '/uploads/images/goods/oGPAhq5mBwvPIzQmvz3uVjwCehvTgEE9QuRybcOC.jpeg', '[\"\\/uploads\\/images\\/goods\\/RCNRMtHZDCIiyy5KQMLB029azMe1I7EFpDwLB4Ox.jpeg\"]', '1', '0000-00-00 00:00:00', '[\"\\/uploads\\/images\\/goods\\/vb8T2JCNExyvhcIqk6RPJ2EovMkCP3nOwgg1Pp5n.jpeg\"]', '2018-08-16 12:32:58', '2018-08-16 12:33:06', null, '1', '多元', '3');
INSERT INTO `z_goods` VALUES ('128', '1', '84', '乳王', '', '0', '100.00', '6960', '0', '0', '/uploads/images/goods/LzxA0GS9Q7najDe2HtWy1cQY9Dcj4er8TBFPHEeq.jpeg', '[\"\\/uploads\\/images\\/goods\\/z7QxjO7KPJPerLtAbdL66RtE3Lpo6Brz58vVJgy8.jpeg\"]', '1', '0000-00-00 00:00:00', '[\"\\/uploads\\/images\\/goods\\/EDPCLuO6qoPQUZoLi5fxMCIuqnnJY8RJu4D0GADb.jpeg\"]', '2018-08-17 14:57:37', '2018-08-17 14:57:37', null, '2', '1', '0');

-- ----------------------------
-- Table structure for `z_goods_category`
-- ----------------------------
DROP TABLE IF EXISTS `z_goods_category`;
CREATE TABLE `z_goods_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `store_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `level` tinyint(4) NOT NULL COMMENT '1',
  `top_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级分类id',
  `image` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COMMENT='商品分类';

-- ----------------------------
-- Records of z_goods_category
-- ----------------------------
INSERT INTO `z_goods_category` VALUES ('82', '2018-08-16 12:18:43', '2018-08-16 12:18:43', '1', '护肤品', '1', '0', '');
INSERT INTO `z_goods_category` VALUES ('83', '2018-08-16 12:23:31', '2018-08-16 12:23:31', '1', '保健类', '1', '0', '');
INSERT INTO `z_goods_category` VALUES ('84', '2018-08-16 12:29:52', '2018-08-16 12:29:52', '1', '积分区', '1', '0', '');

-- ----------------------------
-- Table structure for `z_goods_comment`
-- ----------------------------
DROP TABLE IF EXISTS `z_goods_comment`;
CREATE TABLE `z_goods_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL COMMENT '店铺id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `order_goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单商品id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '评论内容',
  `star` tinyint(4) NOT NULL DEFAULT '0' COMMENT '评分1-5',
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0未审核 1 已审核',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reply_id` int(11) NOT NULL DEFAULT '0' COMMENT '被回复评论id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品评论';

-- ----------------------------
-- Records of z_goods_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `z_goods_sku`
-- ----------------------------
DROP TABLE IF EXISTS `z_goods_sku`;
CREATE TABLE `z_goods_sku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '主商品id',
  `sku_info` varchar(255) NOT NULL COMMENT '规格信息',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '规格图',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '售价',
  `cost_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '成本价',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '库存量',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品规格';

-- ----------------------------
-- Records of z_goods_sku
-- ----------------------------
INSERT INTO `z_goods_sku` VALUES ('1', '1', '4', ' ', '', '1313.00', '1310.00', '11', '2016-11-20 21:17:23', '2016-11-20 21:17:23');
INSERT INTO `z_goods_sku` VALUES ('2', '1', '4', ' ', '', '1300.00', '1200.00', '5', '2016-11-20 21:34:22', '2016-11-20 21:34:25');

-- ----------------------------
-- Table structure for `z_goods_statistic`
-- ----------------------------
DROP TABLE IF EXISTS `z_goods_statistic`;
CREATE TABLE `z_goods_statistic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `view` int(11) NOT NULL DEFAULT '0' COMMENT '浏览数',
  `collect` int(11) NOT NULL DEFAULT '0' COMMENT '收藏数',
  `like` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `sales` int(11) NOT NULL DEFAULT '0' COMMENT '销量',
  `month` int(11) NOT NULL COMMENT '统计月份如201802',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品统计';

-- ----------------------------
-- Records of z_goods_statistic
-- ----------------------------

-- ----------------------------
-- Table structure for `z_level_request`
-- ----------------------------
DROP TABLE IF EXISTS `z_level_request`;
CREATE TABLE `z_level_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `pay_money` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of z_level_request
-- ----------------------------
INSERT INTO `z_level_request` VALUES ('1', '2018-08-14 15:09:24', '2018-08-14 15:13:08', '28', '3', '2', '5000000');
INSERT INTO `z_level_request` VALUES ('2', '2018-08-14 15:40:59', '2018-08-14 15:41:23', '274', '2', '2', '200000');
INSERT INTO `z_level_request` VALUES ('3', '2018-08-16 15:40:13', '2018-08-16 15:40:28', '281', '2', '2', '200000');
INSERT INTO `z_level_request` VALUES ('4', '2018-08-16 18:03:18', '2018-08-16 18:03:30', '275', '2', '2', '200000');
INSERT INTO `z_level_request` VALUES ('5', '2018-08-17 20:55:22', '2018-08-17 20:55:22', '35', '3', '1', '5000000');

-- ----------------------------
-- Table structure for `z_order`
-- ----------------------------
DROP TABLE IF EXISTS `z_order`;
CREATE TABLE `z_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order_no` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `order_amount` int(11) NOT NULL COMMENT '订单总额',
  `balance_amount` int(11) NOT NULL COMMENT '余额支付金额',
  `pay_amount` int(11) NOT NULL COMMENT '在线支付金额',
  `state` tinyint(4) NOT NULL COMMENT '1待付款，2已付款，3已发货，4确认收货，7未付款取消订单',
  `out_trade_no` varchar(255) NOT NULL DEFAULT '',
  `pay_way` varchar(20) NOT NULL DEFAULT '0' COMMENT '1支付宝',
  `delivery_fee` int(11) NOT NULL DEFAULT '0' COMMENT '运费',
  `delivery_company` varchar(20) NOT NULL DEFAULT '' COMMENT '快递公司编号',
  `delivery_no` varchar(50) NOT NULL DEFAULT '' COMMENT '快递单号',
  `send_at` timestamp NULL DEFAULT NULL COMMENT '发货时间',
  `confirm_at` timestamp NULL DEFAULT NULL COMMENT '确认收货时间',
  `pay_at` timestamp NULL DEFAULT NULL COMMENT '付款时间',
  `buyer_tip` tinyint(4) DEFAULT '0',
  `seller_tip` tinyint(4) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT '' COMMENT '订单备注',
  `cancel_at` timestamp NULL DEFAULT NULL,
  `fx_amount` int(11) NOT NULL DEFAULT '0' COMMENT '分销费用',
  `score` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `order_no` (`order_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of z_order
-- ----------------------------
INSERT INTO `z_order` VALUES ('1', '2018-08-12 17:43:41', '2018-08-12 18:20:05', '1020180812174341332202751', '274', '1', '1', '3000', '0', '3000', '4', '', 'testPay', '0', '顺丰快递', '1782719283', '2018-08-12 17:46:29', '2018-08-12 18:20:05', '2018-08-12 17:43:47', '0', '0', '', null, '0', '0');
INSERT INTO `z_order` VALUES ('2', '2018-08-12 18:02:16', '2018-08-12 18:02:52', '1020180812180216626413014', '35', '1', '1', '2000', '0', '2000', '2', '', 'testPay', '0', '', '', null, null, '2018-08-12 18:02:26', '0', '0', '', null, '0', '0');
INSERT INTO `z_order` VALUES ('3', '2018-08-12 18:41:43', '2018-08-12 18:44:23', '1020180812184143598788639', '274', '1', '1', '1000', '0', '1000', '4', '', 'testPay', '0', '天天快递', '082029389', '2018-08-12 18:42:43', '2018-08-12 18:44:23', '2018-08-12 18:41:50', '0', '0', '', null, '0', '0');
INSERT INTO `z_order` VALUES ('4', '2018-08-14 14:52:12', '2018-08-14 14:59:35', '1020180814145212020178221', '28', '1', '1', '6000', '0', '6000', '4', '', 'testPay', '0', '顺丰快递', '1843938094', '2018-08-14 14:59:19', '2018-08-14 14:59:35', '2018-08-14 14:52:17', '0', '0', '', null, '0', '0');
INSERT INTO `z_order` VALUES ('5', '2018-08-14 21:28:01', '2018-08-15 18:42:57', '1020180814212801371928575', '35', '1', '1', '3000', '0', '3000', '1', '', '0', '0', '', '', null, null, null, '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('6', '2018-08-15 11:55:55', '2018-08-15 18:42:57', '1020180815115555036602286', '35', '1', '1', '1000', '0', '1000', '1', '', '0', '0', '', '', null, null, null, '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('7', '2018-08-15 15:23:27', '2018-08-16 11:59:43', '1020180815152327812790310', '275', '1', '1', '1000', '0', '1000', '4', '', 'testPay', '0', '韵达快递', '11111', '2018-08-16 11:59:24', '2018-08-16 11:59:43', '2018-08-15 15:23:51', '0', '0', null, null, '0', '20');
INSERT INTO `z_order` VALUES ('8', '2018-08-15 15:32:09', '2018-08-16 11:59:35', '1020180815153209087370325', '275', '1', '1', '2000', '0', '2000', '4', '', 'testPay', '0', '韵达快递', '11111111111', '2018-08-16 11:58:41', '2018-08-16 11:59:35', '2018-08-15 15:32:18', '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('9', '2018-08-15 15:40:08', '2018-08-16 12:09:19', '1020180815154008045269429', '275', '1', '1', '4000', '0', '4000', '4', '', 'testPay', '0', '看了', '55', '2018-08-16 12:08:05', '2018-08-16 12:09:19', '2018-08-16 12:00:36', '0', '0', null, null, '0', '10');
INSERT INTO `z_order` VALUES ('10', '2018-08-15 16:13:03', '2018-08-15 18:42:57', '1020180815161303476534785', '35', '1', '1', '1000', '0', '1000', '1', '', '0', '0', '', '', null, null, null, '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('11', '2018-08-15 19:38:57', '2018-08-17 20:52:02', '1020180815193857278535724', '35', '1', '1', '2000', '0', '2000', '1', '', '0', '0', '', '', null, null, null, '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('12', '2018-08-15 22:35:15', '2018-08-17 20:52:02', '1020180815223515154572052', '35', '1', '1', '1000', '0', '1000', '1', '', '0', '0', '', '', null, null, null, '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('13', '2018-08-15 22:43:59', '2018-08-17 20:50:56', '1020180815224359310434398', '35', '1', '1', '1000', '0', '1000', '2', '', 'testPay', '0', '', '', null, null, '2018-08-15 22:44:32', '0', '0', null, null, '0', '20');
INSERT INTO `z_order` VALUES ('14', '2018-08-15 22:45:16', '2018-08-17 20:50:56', '1020180815224516222295727', '35', '1', '1', '1000', '0', '1000', '2', '', 'testPay', '0', '', '', null, null, '2018-08-15 22:45:23', '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('15', '2018-08-15 22:45:43', '2018-08-17 20:50:56', '1020180815224543129971494', '35', '1', '1', '1000', '0', '1000', '2', '', 'testPay', '0', '', '', null, null, '2018-08-15 22:45:51', '0', '0', null, null, '0', '20');
INSERT INTO `z_order` VALUES ('16', '2018-08-15 22:46:11', '2018-08-17 20:52:02', '1020180815224611299811504', '35', '1', '1', '1000', '0', '1000', '1', '', '0', '0', '', '', null, null, null, '0', '0', null, null, '0', '20');
INSERT INTO `z_order` VALUES ('17', '2018-08-15 22:46:36', '2018-08-17 20:50:56', '1020180815224636742341120', '35', '1', '1', '1000', '0', '1000', '2', '', 'testPay', '0', '', '', null, null, '2018-08-15 22:46:41', '0', '0', null, null, '0', '20');
INSERT INTO `z_order` VALUES ('18', '2018-08-16 11:22:06', '2018-08-16 11:38:08', '1020180816112206262740154', '28', '1', '1', '6000', '0', '6000', '1', '', '0', '0', '', '', null, null, null, '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('19', '2018-08-16 11:34:09', '2018-08-16 11:38:08', '1020180816113409412379094', '28', '1', '1', '2000', '0', '2000', '1', '', '0', '0', '', '', null, null, null, '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('20', '2018-08-16 11:34:20', '2018-08-16 11:38:08', '1020180816113420914675654', '28', '1', '1', '2000', '0', '2000', '1', '', '0', '0', '', '', null, null, null, '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('21', '2018-08-16 11:34:31', '2018-08-16 11:38:08', '1020180816113431111556382', '28', '1', '1', '4000', '0', '4000', '1', '', '0', '0', '', '', null, null, null, '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('22', '2018-08-16 11:37:48', '2018-08-16 11:38:08', '1020180816113748958119858', '28', '1', '1', '3000', '0', '3000', '1', '', '0', '1000', '', '', null, null, null, '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('23', '2018-08-16 11:38:01', '2018-08-16 11:38:08', '1020180816113801293458651', '28', '1', '1', '9000', '0', '9000', '1', '', '0', '1000', '', '', null, null, null, '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('24', '2018-08-16 11:41:25', '2018-08-16 11:41:25', '1020180816114125019237936', '28', '1', '1', '5000', '0', '5000', '1', '', '0', '1000', '', '', null, null, null, '1', '0', null, null, '0', '20');
INSERT INTO `z_order` VALUES ('25', '2018-08-16 11:46:43', '2018-08-16 11:46:44', '1020180816114643694928635', '28', '1', '1', '11000', '0', '11000', '1', '', '0', '1000', '', '', null, null, null, '1', '0', null, null, '0', '100');
INSERT INTO `z_order` VALUES ('26', '2018-08-16 11:50:09', '2018-08-16 12:03:28', '1020180816115009302164944', '277', '1', '1', '3000', '0', '3000', '3', '', 'testPay', '1000', '那你呢', '21111', '2018-08-16 12:03:28', null, '2018-08-16 11:50:15', '1', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('27', '2018-08-16 12:06:55', '2018-08-16 12:09:08', '1020180816120655880718849', '275', '1', '1', '3000', '0', '3000', '4', '', 'testPay', '0', '33', '33', '2018-08-16 12:08:22', '2018-08-16 12:09:08', '2018-08-16 12:07:02', '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('28', '2018-08-16 12:53:28', '2018-08-16 12:55:28', '1020180816125328555633914', '281', '1', '1', '3980', '0', '3980', '4', '', 'testPay', '0', '了', '4', '2018-08-16 12:55:07', '2018-08-16 12:55:28', '2018-08-16 12:53:41', '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('29', '2018-08-16 14:03:11', '2018-08-17 20:50:56', '1020180816140311669397935', '35', '1', '1', '15920', '0', '15920', '2', '', 'testPay', '0', '', '', null, null, '2018-08-16 14:03:16', '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('30', '2018-08-16 15:14:20', '2018-08-16 15:33:14', '1020180816151420579995929', '281', '1', '1', '7960', '0', '7960', '4', '', 'testPay', '0', '你', '你', '2018-08-16 15:32:56', '2018-08-16 15:33:14', '2018-08-16 15:14:24', '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('31', '2018-08-16 15:37:12', '2018-08-16 15:37:53', '1020180816153712057373092', '283', '1', '1', '15920', '0', '15920', '4', '', 'testPay', '0', '你', '你', '2018-08-16 15:37:36', '2018-08-16 15:37:53', '2018-08-16 15:37:15', '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('32', '2018-08-16 17:45:56', '2018-08-16 17:46:22', '1020180816174556406460584', '284', '1', '1', '31840', '0', '31840', '2', '', 'testPay', '0', '', '', null, null, '2018-08-16 17:45:59', '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('33', '2018-08-16 17:54:16', '2018-08-16 17:54:20', '1020180816175416501293488', '286', '1', '1', '7960', '0', '7960', '2', '', 'testPay', '0', '', '', null, null, '2018-08-16 17:54:19', '1', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('34', '2018-08-16 18:09:11', '2018-08-16 18:31:13', '1020180816180911698784819', '287', '1', '1', '7960', '0', '7960', '2', '', 'testPay', '0', '', '', null, null, '2018-08-16 18:09:19', '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('35', '2018-08-16 18:30:22', '2018-08-16 18:50:10', '1020180816183022612942578', '287', '1', '1', '2980', '0', '2980', '2', '', 'testPay', '0', '', '', null, null, '2018-08-16 18:50:10', '0', '0', null, null, '0', '10');
INSERT INTO `z_order` VALUES ('36', '2018-08-16 18:30:49', '2018-08-16 18:31:13', '1020180816183049504390154', '287', '1', '1', '2980', '0', '2980', '2', '', 'testPay', '0', '', '', null, null, '2018-08-16 18:30:55', '0', '0', null, null, '0', '10');
INSERT INTO `z_order` VALUES ('37', '2018-08-16 18:51:11', '2018-08-16 20:34:47', '1020180816185111754730064', '287', '1', '1', '3980', '0', '3980', '2', '', 'testPay', '0', '', '', null, null, '2018-08-16 18:51:15', '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('38', '2018-08-17 09:29:10', '2018-08-17 09:30:45', '1020180817092910197277289', '288', '1', '1', '7960', '0', '7960', '2', '', 'testPay', '0', '', '', null, null, '2018-08-17 09:29:13', '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('39', '2018-08-17 09:30:31', '2018-08-17 09:30:45', '1020180817093031869123435', '288', '1', '1', '3980', '0', '3980', '2', '', 'testPay', '0', '', '', null, null, '2018-08-17 09:30:34', '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('40', '2018-08-17 09:32:41', '2018-08-17 15:00:30', '1020180817093241322237017', '289', '1', '1', '15920', '0', '15920', '2', '', 'testPay', '0', '', '', null, null, '2018-08-17 09:32:44', '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('41', '2018-08-17 09:36:53', '2018-08-17 09:36:58', '1020180817093653001497304', '290', '1', '1', '3980', '0', '3980', '2', '', 'testPay', '0', '', '', null, null, '2018-08-17 09:36:57', '1', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('42', '2018-08-17 09:36:53', '2018-08-17 09:36:53', '1020180817093653776666379', '290', '1', '1', '3980', '0', '3980', '1', '', '0', '0', '', '', null, null, null, '1', '1', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('43', '2018-08-17 09:39:36', '2018-08-17 10:10:01', '1020180817093936560953033', '291', '1', '1', '3980', '0', '3980', '2', '', 'testPay', '0', '', '', null, null, '2018-08-17 09:39:40', '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('44', '2018-08-17 09:39:37', '2018-08-17 10:10:01', '1020180817093937104242184', '291', '1', '1', '3980', '0', '3980', '1', '', '0', '0', '', '', null, null, null, '0', '1', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('45', '2018-08-17 10:03:38', '2018-08-17 10:04:19', '1020180817100338976412240', '292', '1', '1', '3980', '0', '3980', '2', '', 'testPay', '0', '', '', null, null, '2018-08-17 10:04:18', '1', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('46', '2018-08-17 14:59:21', '2018-08-17 15:00:30', '1020180817145921017138587', '289', '1', '1', '6960', '0', '6960', '2', '', 'testPay', '0', '', '', null, null, '2018-08-17 14:59:26', '0', '0', null, null, '0', '100');
INSERT INTO `z_order` VALUES ('47', '2018-08-17 16:28:52', '2018-08-17 16:28:53', '1020180817162852049942627', '290', '1', '1', '3980', '0', '3980', '1', '', '0', '0', '', '', null, null, null, '1', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('48', '2018-08-17 20:51:13', '2018-08-17 20:52:02', '1020180817205113381130377', '35', '1', '1', '2980', '0', '2980', '1', '', '0', '0', '', '', null, null, null, '0', '0', null, null, '0', '10');
INSERT INTO `z_order` VALUES ('49', '2018-08-17 20:52:46', '2018-08-17 20:52:57', '1020180817205246063244069', '35', '1', '1', '15920', '0', '15920', '2', '', 'testPay', '0', '', '', null, null, '2018-08-17 20:52:57', '1', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('50', '2018-08-17 20:54:11', '2018-08-17 20:54:11', '1020180817205411014813375', '35', '1', '1', '6960', '0', '6960', '1', '', '0', '0', '', '', null, null, null, '1', '0', null, null, '0', '100');
INSERT INTO `z_order` VALUES ('51', '2018-08-18 17:08:00', '2018-08-18 17:08:04', '1020180818170800214552007', '287', '1', '1', '15920', '0', '15920', '2', '', 'testPay', '0', '', '', null, null, '2018-08-18 17:08:03', '1', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('52', '2018-08-18 17:09:50', '2018-08-18 17:09:55', '1020180818170950884383591', '287', '1', '1', '3980', '0', '3980', '2', '', 'testPay', '0', '', '', null, null, '2018-08-18 17:09:54', '1', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('53', '2018-08-18 17:11:01', '2018-08-18 17:11:03', '1020180818171101820437799', '275', '1', '1', '2980', '0', '2980', '1', '', '0', '0', '', '', null, null, null, '1', '0', null, null, '0', '10');
INSERT INTO `z_order` VALUES ('54', '2018-08-18 17:59:08', '2018-08-18 17:59:15', '1020180818175908852184773', '293', '1', '1', '15920', '0', '15920', '2', '', 'testPay', '0', '', '', null, null, '2018-08-18 17:59:15', '1', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('55', '2018-08-18 18:20:32', '2018-08-18 18:20:38', '1020180818182032915355471', '293', '1', '1', '7960', '0', '7960', '2', '', 'testPay', '0', '', '', null, null, '2018-08-18 18:20:37', '1', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('56', '2018-08-18 18:20:45', '2018-08-18 18:20:50', '1020180818182045259129915', '293', '1', '1', '11940', '0', '11940', '2', '', 'testPay', '0', '', '', null, null, '2018-08-18 18:20:49', '1', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('57', '2018-08-18 18:28:41', '2018-08-18 18:30:45', '1020180818182841854319995', '294', '1', '1', '3980', '0', '3980', '1', '', '0', '0', '', '', null, null, null, '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('58', '2018-08-18 18:29:02', '2018-08-18 18:30:45', '1020180818182902041420507', '294', '1', '1', '3980', '0', '3980', '1', '', '0', '0', '', '', null, null, null, '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('59', '2018-08-18 18:29:10', '2018-08-18 18:30:45', '1020180818182910902554686', '294', '1', '1', '3980', '0', '3980', '1', '', '0', '0', '', '', null, null, null, '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('60', '2018-08-18 18:29:20', '2018-08-18 18:29:23', '1020180818182920324707230', '293', '1', '1', '3980', '0', '3980', '1', '', '0', '0', '', '', null, null, null, '1', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('61', '2018-08-18 18:29:21', '2018-08-18 18:29:21', '1020180818182921653980672', '293', '1', '1', '3980', '0', '3980', '1', '', '0', '0', '', '', null, null, null, '1', '1', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('62', '2018-08-18 18:29:32', '2018-08-18 18:30:45', '1020180818182932221718929', '294', '1', '1', '3980', '0', '3980', '1', '', '0', '0', '', '', null, null, null, '0', '0', null, null, '0', '0');
INSERT INTO `z_order` VALUES ('63', '2018-08-18 23:12:25', '2018-08-18 23:12:29', '1020180818231225604311231', '35', '1', '1', '2980', '0', '2980', '2', '', 'testPay', '0', '', '', null, null, '2018-08-18 23:12:28', '1', '0', null, null, '0', '10');
INSERT INTO `z_order` VALUES ('64', '2018-08-22 17:04:48', '2018-08-22 17:04:49', '1020180822170448129505295', '35', '1', '1', '3980', '0', '3980', '1', '', '0', '0', '', '', null, null, null, '1', '0', null, null, '0', '0');

-- ----------------------------
-- Table structure for `z_order_common`
-- ----------------------------
DROP TABLE IF EXISTS `z_order_common`;
CREATE TABLE `z_order_common` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(32) NOT NULL,
  `rec_name` varchar(20) NOT NULL DEFAULT '' COMMENT '收货人',
  `rec_phone` varchar(20) NOT NULL DEFAULT '',
  `rec_area_code` int(11) NOT NULL DEFAULT '0',
  `rec_address` varchar(255) NOT NULL DEFAULT '',
  `rec_zip_code` varchar(8) NOT NULL DEFAULT '',
  `send_name` varchar(20) NOT NULL DEFAULT '' COMMENT '发货人',
  `send_phone` varchar(20) NOT NULL DEFAULT '',
  `send_area_code` int(11) NOT NULL DEFAULT '0',
  `send_address` varchar(255) NOT NULL DEFAULT '',
  `send_zip_code` varchar(8) NOT NULL DEFAULT '',
  `remark` varchar(512) NOT NULL DEFAULT '' COMMENT '卖家备注',
  `buyer_msg` varchar(512) NOT NULL DEFAULT '' COMMENT '买家留言',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='订单其他信息表';

-- ----------------------------
-- Records of z_order_common
-- ----------------------------
INSERT INTO `z_order_common` VALUES ('1', '1020180812174341332202751', '一个月', '15280086001', '230304', '一级', '', '', '', '0', '', '', '', '', '2018-08-12 17:43:41', '2018-08-12 17:43:41');
INSERT INTO `z_order_common` VALUES ('2', '1020180812180216626413014', 'ghjj', '15636462345', '110106', 'gdhdn你模糊', '', '', '', '0', '', '', '', '', '2018-08-12 18:02:16', '2018-08-12 18:02:16');
INSERT INTO `z_order_common` VALUES ('3', '1020180812184143598788639', '一个月', '15280086001', '230304', '一级', '', '', '', '0', '', '', '', '', '2018-08-12 18:41:43', '2018-08-12 18:41:43');
INSERT INTO `z_order_common` VALUES ('4', '1020180814145212020178221', '是月', '15280086731', '350211', '10010', '', '', '', '0', '', '', '', '', '2018-08-14 14:52:12', '2018-08-14 14:52:12');
INSERT INTO `z_order_common` VALUES ('5', '1020180814212801371928575', 'ghjj', '15636462345', '110106', 'gdhdn你模糊', '', '', '', '0', '', '', '', '', '2018-08-14 21:28:01', '2018-08-14 21:28:01');
INSERT INTO `z_order_common` VALUES ('6', '1020180815115555036602286', 'ghjj', '15636462345', '110106', 'gdhdn你模糊', '', '', '', '0', '', '', '', '', '2018-08-15 11:55:55', '2018-08-15 11:55:55');
INSERT INTO `z_order_common` VALUES ('7', '1020180815152327812790310', '老', '15000000000', '370282', '大信镇王家村', '', '', '', '0', '', '', '', '', '2018-08-15 15:23:27', '2018-08-15 15:23:27');
INSERT INTO `z_order_common` VALUES ('8', '1020180815153209087370325', '老', '15000000000', '370282', '大信镇王家村', '', '', '', '0', '', '', '', '', '2018-08-15 15:32:09', '2018-08-15 15:32:09');
INSERT INTO `z_order_common` VALUES ('9', '1020180815154008045269429', '老', '15000000000', '370282', '大信镇王家村', '', '', '', '0', '', '', '', '', '2018-08-15 15:40:08', '2018-08-15 15:40:08');
INSERT INTO `z_order_common` VALUES ('10', '1020180815161303476534785', 'ghjj', '15636462345', '110106', 'gdhdn你模糊', '', '', '', '0', '', '', '', '', '2018-08-15 16:13:03', '2018-08-15 16:13:03');
INSERT INTO `z_order_common` VALUES ('11', '1020180815193857278535724', 'ghjj', '15636462345', '110106', 'gdhdn你模糊', '', '', '', '0', '', '', '', '', '2018-08-15 19:38:57', '2018-08-15 19:38:57');
INSERT INTO `z_order_common` VALUES ('12', '1020180815223515154572052', 'ghjj', '15636462345', '110106', 'gdhdn你模糊', '', '', '', '0', '', '', '', '', '2018-08-15 22:35:15', '2018-08-15 22:35:15');
INSERT INTO `z_order_common` VALUES ('13', '1020180815224359310434398', 'ghjj', '15636462345', '110106', 'gdhdn你模糊', '', '', '', '0', '', '', '', '', '2018-08-15 22:43:59', '2018-08-15 22:43:59');
INSERT INTO `z_order_common` VALUES ('14', '1020180815224516222295727', 'ghjj', '15636462345', '110106', 'gdhdn你模糊', '', '', '', '0', '', '', '', '', '2018-08-15 22:45:16', '2018-08-15 22:45:16');
INSERT INTO `z_order_common` VALUES ('15', '1020180815224543129971494', 'ghjj', '15636462345', '110106', 'gdhdn你模糊', '', '', '', '0', '', '', '', '', '2018-08-15 22:45:43', '2018-08-15 22:45:43');
INSERT INTO `z_order_common` VALUES ('16', '1020180815224611299811504', 'ghjj', '15636462345', '110106', 'gdhdn你模糊', '', '', '', '0', '', '', '', '', '2018-08-15 22:46:11', '2018-08-15 22:46:11');
INSERT INTO `z_order_common` VALUES ('17', '1020180815224636742341120', 'ghjj', '15636462345', '110106', 'gdhdn你模糊', '', '', '', '0', '', '', '', '', '2018-08-15 22:46:36', '2018-08-15 22:46:36');
INSERT INTO `z_order_common` VALUES ('18', '1020180816112206262740154', '是月', '15280086731', '350211', '10010', '', '', '', '0', '', '', '', '', '2018-08-16 11:22:06', '2018-08-16 11:22:06');
INSERT INTO `z_order_common` VALUES ('19', '1020180816113409412379094', '是月', '15280086731', '350211', '10010', '', '', '', '0', '', '', '', '', '2018-08-16 11:34:09', '2018-08-16 11:34:09');
INSERT INTO `z_order_common` VALUES ('20', '1020180816113420914675654', '是月', '15280086731', '350211', '10010', '', '', '', '0', '', '', '', '', '2018-08-16 11:34:20', '2018-08-16 11:34:20');
INSERT INTO `z_order_common` VALUES ('21', '1020180816113431111556382', '是月', '15280086731', '350211', '10010', '', '', '', '0', '', '', '', '', '2018-08-16 11:34:31', '2018-08-16 11:34:31');
INSERT INTO `z_order_common` VALUES ('22', '1020180816113748958119858', '是月', '15280086731', '350211', '10010', '', '', '', '0', '', '', '', '', '2018-08-16 11:37:48', '2018-08-16 11:37:48');
INSERT INTO `z_order_common` VALUES ('23', '1020180816113801293458651', '是月', '15280086731', '350211', '10010', '', '', '', '0', '', '', '', '', '2018-08-16 11:38:01', '2018-08-16 11:38:01');
INSERT INTO `z_order_common` VALUES ('24', '1020180816114125019237936', '是月', '15280086731', '350211', '10010', '', '', '', '0', '', '', '', '', '2018-08-16 11:41:25', '2018-08-16 11:41:25');
INSERT INTO `z_order_common` VALUES ('25', '1020180816114643694928635', '是月', '15280086731', '350211', '10010', '', '', '', '0', '', '', '', '', '2018-08-16 11:46:43', '2018-08-16 11:46:43');
INSERT INTO `z_order_common` VALUES ('26', '1020180816115009302164944', '1', '132222222222', '140428', '啊啊啊', '', '', '', '0', '', '', '', '', '2018-08-16 11:50:09', '2018-08-16 11:50:09');
INSERT INTO `z_order_common` VALUES ('27', '1020180816120655880718849', '老', '15000000000', '370282', '大信镇王家村', '', '', '', '0', '', '', '', '', '2018-08-16 12:06:55', '2018-08-16 12:06:55');
INSERT INTO `z_order_common` VALUES ('28', '1020180816125328555633914', '123', '12345678963', '220102', '吧', '', '', '', '0', '', '', '', '', '2018-08-16 12:53:28', '2018-08-16 12:53:28');
INSERT INTO `z_order_common` VALUES ('29', '1020180816140311669397935', 'ghjj', '15636462345', '110106', 'gdhdn你模糊', '', '', '', '0', '', '', '', '', '2018-08-16 14:03:11', '2018-08-16 14:03:11');
INSERT INTO `z_order_common` VALUES ('30', '1020180816151420579995929', '123', '12345678963', '220102', '吧', '', '', '', '0', '', '', '', '', '2018-08-16 15:14:20', '2018-08-16 15:14:20');
INSERT INTO `z_order_common` VALUES ('31', '1020180816153712057373092', '123', '15000000003', '150826', '我', '', '', '', '0', '', '', '', '', '2018-08-16 15:37:12', '2018-08-16 15:37:12');
INSERT INTO `z_order_common` VALUES ('32', '1020180816174556406460584', '不要', '15280086100', '330102', '100号', '', '', '', '0', '', '', '', '', '2018-08-16 17:45:56', '2018-08-16 17:45:56');
INSERT INTO `z_order_common` VALUES ('33', '1020180816175416501293488', '是否能够', '15280086101', '110101', '这里10号', '', '', '', '0', '', '', '', '', '2018-08-16 17:54:16', '2018-08-16 17:54:16');
INSERT INTO `z_order_common` VALUES ('34', '1020180816180911698784819', '1234', '11111111111', '210102', '他', '', '', '', '0', '', '', '', '', '2018-08-16 18:09:11', '2018-08-16 18:09:11');
INSERT INTO `z_order_common` VALUES ('35', '1020180816183022612942578', '1234', '11111111111', '210102', '他', '', '', '', '0', '', '', '', '', '2018-08-16 18:30:22', '2018-08-16 18:30:22');
INSERT INTO `z_order_common` VALUES ('36', '1020180816183049504390154', '1234', '11111111111', '210102', '他', '', '', '', '0', '', '', '', '', '2018-08-16 18:30:49', '2018-08-16 18:30:49');
INSERT INTO `z_order_common` VALUES ('37', '1020180816185111754730064', '1234', '11111111111', '210102', '他', '', '', '', '0', '', '', '', '', '2018-08-16 18:51:11', '2018-08-16 18:51:11');
INSERT INTO `z_order_common` VALUES ('38', '1020180817092910197277289', '12345', '111111111111', '320102', '1', '', '', '', '0', '', '', '', '', '2018-08-17 09:29:10', '2018-08-17 09:29:10');
INSERT INTO `z_order_common` VALUES ('39', '1020180817093031869123435', '12345', '111111111111', '320102', '1', '', '', '', '0', '', '', '', '', '2018-08-17 09:30:31', '2018-08-17 09:30:31');
INSERT INTO `z_order_common` VALUES ('40', '1020180817093241322237017', '123456', '11111111111', '230102', '1', '', '', '', '0', '', '', '', '', '2018-08-17 09:32:41', '2018-08-17 09:32:41');
INSERT INTO `z_order_common` VALUES ('41', '1020180817093653001497304', '7', '77777777777', '370282', '7', '', '', '', '0', '', '', '', '', '2018-08-17 09:36:53', '2018-08-17 09:36:53');
INSERT INTO `z_order_common` VALUES ('42', '1020180817093653776666379', '7', '77777777777', '370282', '7', '', '', '', '0', '', '', '', '', '2018-08-17 09:36:53', '2018-08-17 09:36:53');
INSERT INTO `z_order_common` VALUES ('43', '1020180817093936560953033', '8', '88888888', '330102', '8', '', '', '', '0', '', '', '', '', '2018-08-17 09:39:36', '2018-08-17 09:39:36');
INSERT INTO `z_order_common` VALUES ('44', '1020180817093937104242184', '8', '88888888', '330102', '8', '', '', '', '0', '', '', '', '', '2018-08-17 09:39:37', '2018-08-17 09:39:37');
INSERT INTO `z_order_common` VALUES ('45', '1020180817100338976412240', '9', '9', '410102', '9', '', '', '', '0', '', '', '', '', '2018-08-17 10:03:38', '2018-08-17 10:03:38');
INSERT INTO `z_order_common` VALUES ('46', '1020180817145921017138587', '123456', '11111111111', '230102', '1', '', '', '', '0', '', '', '', '', '2018-08-17 14:59:21', '2018-08-17 14:59:21');
INSERT INTO `z_order_common` VALUES ('47', '1020180817162852049942627', '7', '77777777777', '370282', '7', '', '', '', '0', '', '', '', '', '2018-08-17 16:28:52', '2018-08-17 16:28:52');
INSERT INTO `z_order_common` VALUES ('48', '1020180817205113381130377', 'ghjj', '15636462345', '110106', 'gdhdn你模糊', '', '', '', '0', '', '', '', '', '2018-08-17 20:51:13', '2018-08-17 20:51:13');
INSERT INTO `z_order_common` VALUES ('49', '1020180817205246063244069', 'ghjj', '15636462345', '110106', 'gdhdn你模糊', '', '', '', '0', '', '', '', '', '2018-08-17 20:52:46', '2018-08-17 20:52:46');
INSERT INTO `z_order_common` VALUES ('50', '1020180817205411014813375', 'ghjj', '15636462345', '110106', 'gdhdn你模糊', '', '', '', '0', '', '', '', '', '2018-08-17 20:54:11', '2018-08-17 20:54:11');
INSERT INTO `z_order_common` VALUES ('51', '1020180818170800214552007', '1234', '11111111111', '210102', '他', '', '', '', '0', '', '', '', '', '2018-08-18 17:08:00', '2018-08-18 17:08:00');
INSERT INTO `z_order_common` VALUES ('52', '1020180818170950884383591', '1234', '11111111111', '210102', '他', '', '', '', '0', '', '', '', '', '2018-08-18 17:09:50', '2018-08-18 17:09:50');
INSERT INTO `z_order_common` VALUES ('53', '1020180818171101820437799', '老', '15000000000', '370282', '大信镇王家村', '', '', '', '0', '', '', '', '', '2018-08-18 17:11:01', '2018-08-18 17:11:01');
INSERT INTO `z_order_common` VALUES ('54', '1020180818175908852184773', '10', '111', '340302', '1', '', '', '', '0', '', '', '', '', '2018-08-18 17:59:08', '2018-08-18 17:59:08');
INSERT INTO `z_order_common` VALUES ('55', '1020180818182032915355471', '10', '111', '340302', '1', '', '', '', '0', '', '', '', '', '2018-08-18 18:20:32', '2018-08-18 18:20:32');
INSERT INTO `z_order_common` VALUES ('56', '1020180818182045259129915', '10', '111', '340302', '1', '', '', '', '0', '', '', '', '', '2018-08-18 18:20:45', '2018-08-18 18:20:45');
INSERT INTO `z_order_common` VALUES ('57', '1020180818182841854319995', '11', '11', '542301', '1', '', '', '', '0', '', '', '', '', '2018-08-18 18:28:41', '2018-08-18 18:28:41');
INSERT INTO `z_order_common` VALUES ('58', '1020180818182902041420507', '11', '11', '542301', '1', '', '', '', '0', '', '', '', '', '2018-08-18 18:29:02', '2018-08-18 18:29:02');
INSERT INTO `z_order_common` VALUES ('59', '1020180818182910902554686', '11', '11', '542301', '1', '', '', '', '0', '', '', '', '', '2018-08-18 18:29:10', '2018-08-18 18:29:10');
INSERT INTO `z_order_common` VALUES ('60', '1020180818182920324707230', '10', '111', '340302', '1', '', '', '', '0', '', '', '', '', '2018-08-18 18:29:20', '2018-08-18 18:29:20');
INSERT INTO `z_order_common` VALUES ('61', '1020180818182921653980672', '10', '111', '340302', '1', '', '', '', '0', '', '', '', '', '2018-08-18 18:29:21', '2018-08-18 18:29:21');
INSERT INTO `z_order_common` VALUES ('62', '1020180818182932221718929', '11', '11', '542301', '1', '', '', '', '0', '', '', '', '', '2018-08-18 18:29:32', '2018-08-18 18:29:32');
INSERT INTO `z_order_common` VALUES ('63', '1020180818231225604311231', 'ghjj', '15636462345', '110106', 'gdhdn你模糊', '', '', '', '0', '', '', '', '', '2018-08-18 23:12:25', '2018-08-18 23:12:25');
INSERT INTO `z_order_common` VALUES ('64', '1020180822170448129505295', 'ghjj', '15636462345', '110106', 'gdhdn你模糊', '', '', '', '0', '', '', '', '', '2018-08-22 17:04:48', '2018-08-22 17:04:48');

-- ----------------------------
-- Table structure for `z_order_product`
-- ----------------------------
DROP TABLE IF EXISTS `z_order_product`;
CREATE TABLE `z_order_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order_no` varchar(30) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `attribute_name` varchar(20) NOT NULL DEFAULT '' COMMENT '规格名',
  `score` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of z_order_product
-- ----------------------------
INSERT INTO `z_order_product` VALUES ('1', '2018-08-12 17:43:41', '2018-08-12 17:43:41', '1020180812174341332202751', '1', '箱包手袋', '3000', '1', '/uploads/images/goods/x5IFjmpZrrYryQy1sjgeAguHwNL6Dpe3NgDHQW2h.jpeg', '给个', '0');
INSERT INTO `z_order_product` VALUES ('2', '2018-08-12 18:02:16', '2018-08-12 18:02:16', '1020180812180216626413014', '1', '箱包手袋', '2000', '1', '/uploads/images/goods/x5IFjmpZrrYryQy1sjgeAguHwNL6Dpe3NgDHQW2h.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('3', '2018-08-12 18:41:43', '2018-08-12 18:41:43', '1020180812184143598788639', '2', '箱包手袋', '1000', '1', '/uploads/images/goods/PAzdCtbw4d6CttzfcUyZMIXOuSO1tnHur0J7faIO.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('4', '2018-08-14 14:52:12', '2018-08-14 14:52:12', '1020180814145212020178221', '1', '箱包手袋', '3000', '2', '/uploads/images/goods/x5IFjmpZrrYryQy1sjgeAguHwNL6Dpe3NgDHQW2h.jpeg', '给个', '0');
INSERT INTO `z_order_product` VALUES ('5', '2018-08-14 21:28:01', '2018-08-14 21:28:01', '1020180814212801371928575', '19', '箱包手袋', '3000', '1', '/uploads/images/goods/x5IFjmpZrrYryQy1sjgeAguHwNL6Dpe3NgDHQW2h.jpeg', '给个', '0');
INSERT INTO `z_order_product` VALUES ('6', '2018-08-15 11:55:55', '2018-08-15 11:55:55', '1020180815115555036602286', '14', '母婴童装', '1000', '1', '/uploads/images/goods/PAzdCtbw4d6CttzfcUyZMIXOuSO1tnHur0J7faIO.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('7', '2018-08-15 15:23:27', '2018-08-15 15:23:27', '1020180815152327812790310', '33', '积分换手机', '1000', '1', '/uploads/images/goods/PAzdCtbw4d6CttzfcUyZMIXOuSO1tnHur0J7faIO.jpeg', '', '20');
INSERT INTO `z_order_product` VALUES ('8', '2018-08-15 15:32:09', '2018-08-15 15:32:09', '1020180815153209087370325', '1', '箱包手袋', '2000', '1', '/uploads/images/goods/x5IFjmpZrrYryQy1sjgeAguHwNL6Dpe3NgDHQW2h.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('9', '2018-08-15 15:40:08', '2018-08-15 15:40:08', '1020180815154008045269429', '2', '箱包手袋', '1000', '1', '/uploads/images/goods/PAzdCtbw4d6CttzfcUyZMIXOuSO1tnHur0J7faIO.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('10', '2018-08-15 15:40:08', '2018-08-15 15:40:08', '1020180815154008045269429', '28', '箱包手袋', '2000', '1', '/uploads/images/goods/x5IFjmpZrrYryQy1sjgeAguHwNL6Dpe3NgDHQW2h.jpeg', '个', '0');
INSERT INTO `z_order_product` VALUES ('11', '2018-08-15 15:40:08', '2018-08-15 15:40:08', '1020180815154008045269429', '37', '积分换手机', '1000', '1', '/uploads/images/goods/PAzdCtbw4d6CttzfcUyZMIXOuSO1tnHur0J7faIO.jpeg', '', '10');
INSERT INTO `z_order_product` VALUES ('12', '2018-08-15 16:13:03', '2018-08-15 16:13:03', '1020180815161303476534785', '2', '箱包手袋', '1000', '1', '/uploads/images/goods/PAzdCtbw4d6CttzfcUyZMIXOuSO1tnHur0J7faIO.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('13', '2018-08-15 19:38:57', '2018-08-15 19:38:57', '1020180815193857278535724', '1', '箱包手袋', '2000', '1', '/uploads/images/goods/x5IFjmpZrrYryQy1sjgeAguHwNL6Dpe3NgDHQW2h.jpeg', '个', '0');
INSERT INTO `z_order_product` VALUES ('14', '2018-08-15 22:35:15', '2018-08-15 22:35:15', '1020180815223515154572052', '2', '箱包手袋', '1000', '1', '/uploads/images/goods/PAzdCtbw4d6CttzfcUyZMIXOuSO1tnHur0J7faIO.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('15', '2018-08-15 22:43:59', '2018-08-15 22:43:59', '1020180815224359310434398', '33', '积分换手机', '1000', '1', '/uploads/images/goods/PAzdCtbw4d6CttzfcUyZMIXOuSO1tnHur0J7faIO.jpeg', '', '20');
INSERT INTO `z_order_product` VALUES ('16', '2018-08-15 22:45:16', '2018-08-15 22:45:16', '1020180815224516222295727', '2', '箱包手袋', '1000', '1', '/uploads/images/goods/PAzdCtbw4d6CttzfcUyZMIXOuSO1tnHur0J7faIO.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('17', '2018-08-15 22:45:43', '2018-08-15 22:45:43', '1020180815224543129971494', '35', '积分换手机', '1000', '1', '/uploads/images/goods/PAzdCtbw4d6CttzfcUyZMIXOuSO1tnHur0J7faIO.jpeg', '', '20');
INSERT INTO `z_order_product` VALUES ('18', '2018-08-15 22:46:11', '2018-08-15 22:46:11', '1020180815224611299811504', '35', '积分换手机', '1000', '1', '/uploads/images/goods/PAzdCtbw4d6CttzfcUyZMIXOuSO1tnHur0J7faIO.jpeg', '', '20');
INSERT INTO `z_order_product` VALUES ('19', '2018-08-15 22:46:36', '2018-08-15 22:46:36', '1020180815224636742341120', '35', '积分换手机', '1000', '1', '/uploads/images/goods/PAzdCtbw4d6CttzfcUyZMIXOuSO1tnHur0J7faIO.jpeg', '', '20');
INSERT INTO `z_order_product` VALUES ('20', '2018-08-16 11:22:06', '2018-08-16 11:22:06', '1020180816112206262740154', '1', '箱包手袋', '2000', '3', '/uploads/images/goods/x5IFjmpZrrYryQy1sjgeAguHwNL6Dpe3NgDHQW2h.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('21', '2018-08-16 11:34:09', '2018-08-16 11:34:09', '1020180816113409412379094', '1', '箱包手袋', '2000', '1', '/uploads/images/goods/x5IFjmpZrrYryQy1sjgeAguHwNL6Dpe3NgDHQW2h.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('22', '2018-08-16 11:34:20', '2018-08-16 11:34:20', '1020180816113420914675654', '1', '箱包手袋', '2000', '1', '/uploads/images/goods/x5IFjmpZrrYryQy1sjgeAguHwNL6Dpe3NgDHQW2h.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('23', '2018-08-16 11:34:31', '2018-08-16 11:34:31', '1020180816113431111556382', '1', '箱包手袋', '2000', '2', '/uploads/images/goods/x5IFjmpZrrYryQy1sjgeAguHwNL6Dpe3NgDHQW2h.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('24', '2018-08-16 11:37:48', '2018-08-16 11:37:48', '1020180816113748958119858', '1', '箱包手袋', '2000', '1', '/uploads/images/goods/x5IFjmpZrrYryQy1sjgeAguHwNL6Dpe3NgDHQW2h.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('25', '2018-08-16 11:38:01', '2018-08-16 11:38:01', '1020180816113801293458651', '1', '箱包手袋', '2000', '4', '/uploads/images/goods/x5IFjmpZrrYryQy1sjgeAguHwNL6Dpe3NgDHQW2h.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('26', '2018-08-16 11:41:25', '2018-08-16 11:41:25', '1020180816114125019237936', '32', '积分换手机', '2000', '2', '/uploads/images/goods/x5IFjmpZrrYryQy1sjgeAguHwNL6Dpe3NgDHQW2h.jpeg', '', '20');
INSERT INTO `z_order_product` VALUES ('27', '2018-08-16 11:46:43', '2018-08-16 11:46:43', '1020180816114643694928635', '32', '积分换手机', '2000', '5', '/uploads/images/goods/x5IFjmpZrrYryQy1sjgeAguHwNL6Dpe3NgDHQW2h.jpeg', '', '20');
INSERT INTO `z_order_product` VALUES ('28', '2018-08-16 11:50:09', '2018-08-16 11:50:09', '1020180816115009302164944', '1', '箱包手袋', '2000', '1', '/uploads/images/goods/x5IFjmpZrrYryQy1sjgeAguHwNL6Dpe3NgDHQW2h.jpeg', '个', '0');
INSERT INTO `z_order_product` VALUES ('29', '2018-08-16 12:06:55', '2018-08-16 12:06:55', '1020180816120655880718849', '28', '箱包手袋', '3000', '1', '/uploads/images/goods/x5IFjmpZrrYryQy1sjgeAguHwNL6Dpe3NgDHQW2h.jpeg', '给个', '0');
INSERT INTO `z_order_product` VALUES ('30', '2018-08-16 12:53:28', '2018-08-16 12:53:28', '1020180816125328555633914', '124', '面膜', '3980', '1', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('31', '2018-08-16 14:03:11', '2018-08-16 14:03:11', '1020180816140311669397935', '127', '多元霜', '15920', '1', '/uploads/images/goods/oGPAhq5mBwvPIzQmvz3uVjwCehvTgEE9QuRybcOC.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('32', '2018-08-16 15:14:20', '2018-08-16 15:14:20', '1020180816151420579995929', '126', '米素', '7960', '1', '/uploads/images/goods/J6ZNtelPNvXoGX5kUGcl0r3a2AACwzU8jcwGpTtk.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('33', '2018-08-16 15:37:12', '2018-08-16 15:37:12', '1020180816153712057373092', '127', '多元霜', '15920', '1', '/uploads/images/goods/oGPAhq5mBwvPIzQmvz3uVjwCehvTgEE9QuRybcOC.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('34', '2018-08-16 17:45:56', '2018-08-16 17:45:56', '1020180816174556406460584', '127', '多元霜', '15920', '2', '/uploads/images/goods/oGPAhq5mBwvPIzQmvz3uVjwCehvTgEE9QuRybcOC.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('35', '2018-08-16 17:54:16', '2018-08-16 17:54:16', '1020180816175416501293488', '124', '面膜', '3980', '2', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('36', '2018-08-16 18:09:11', '2018-08-16 18:09:11', '1020180816180911698784819', '126', '米素', '7960', '1', '/uploads/images/goods/J6ZNtelPNvXoGX5kUGcl0r3a2AACwzU8jcwGpTtk.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('37', '2018-08-16 18:30:22', '2018-08-16 18:30:22', '1020180816183022612942578', '125', '面膜1', '2980', '1', '/uploads/images/goods/GxSXnAE41de83K7LiepDNIKQfmFqjfLUHNlVCFcv.jpeg', '', '10');
INSERT INTO `z_order_product` VALUES ('38', '2018-08-16 18:30:49', '2018-08-16 18:30:49', '1020180816183049504390154', '125', '面膜1', '2980', '1', '/uploads/images/goods/GxSXnAE41de83K7LiepDNIKQfmFqjfLUHNlVCFcv.jpeg', '', '10');
INSERT INTO `z_order_product` VALUES ('39', '2018-08-16 18:51:11', '2018-08-16 18:51:11', '1020180816185111754730064', '124', '面膜', '3980', '1', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('40', '2018-08-17 09:29:10', '2018-08-17 09:29:10', '1020180817092910197277289', '126', '米素', '7960', '1', '/uploads/images/goods/J6ZNtelPNvXoGX5kUGcl0r3a2AACwzU8jcwGpTtk.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('41', '2018-08-17 09:30:31', '2018-08-17 09:30:31', '1020180817093031869123435', '124', '面膜', '3980', '1', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('42', '2018-08-17 09:32:41', '2018-08-17 09:32:41', '1020180817093241322237017', '127', '多元霜', '15920', '1', '/uploads/images/goods/oGPAhq5mBwvPIzQmvz3uVjwCehvTgEE9QuRybcOC.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('43', '2018-08-17 09:36:53', '2018-08-17 09:36:53', '1020180817093653001497304', '124', '面膜', '3980', '1', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('44', '2018-08-17 09:36:53', '2018-08-17 09:36:53', '1020180817093653776666379', '124', '面膜', '3980', '1', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('45', '2018-08-17 09:39:36', '2018-08-17 09:39:36', '1020180817093936560953033', '124', '面膜', '3980', '1', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('46', '2018-08-17 09:39:37', '2018-08-17 09:39:37', '1020180817093937104242184', '124', '面膜', '3980', '1', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('47', '2018-08-17 10:03:38', '2018-08-17 10:03:38', '1020180817100338976412240', '124', '面膜', '3980', '1', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('48', '2018-08-17 14:59:21', '2018-08-17 14:59:21', '1020180817145921017138587', '128', '乳王', '6960', '1', '/uploads/images/goods/LzxA0GS9Q7najDe2HtWy1cQY9Dcj4er8TBFPHEeq.jpeg', '', '100');
INSERT INTO `z_order_product` VALUES ('49', '2018-08-17 16:28:52', '2018-08-17 16:28:52', '1020180817162852049942627', '124', '面膜', '3980', '1', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('50', '2018-08-17 20:51:13', '2018-08-17 20:51:13', '1020180817205113381130377', '125', '面膜1', '2980', '1', '/uploads/images/goods/GxSXnAE41de83K7LiepDNIKQfmFqjfLUHNlVCFcv.jpeg', '', '10');
INSERT INTO `z_order_product` VALUES ('51', '2018-08-17 20:52:46', '2018-08-17 20:52:46', '1020180817205246063244069', '127', '多元霜', '15920', '1', '/uploads/images/goods/oGPAhq5mBwvPIzQmvz3uVjwCehvTgEE9QuRybcOC.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('52', '2018-08-17 20:54:11', '2018-08-17 20:54:11', '1020180817205411014813375', '128', '乳王', '6960', '1', '/uploads/images/goods/LzxA0GS9Q7najDe2HtWy1cQY9Dcj4er8TBFPHEeq.jpeg', '', '100');
INSERT INTO `z_order_product` VALUES ('53', '2018-08-18 17:08:00', '2018-08-18 17:08:00', '1020180818170800214552007', '127', '多元霜', '15920', '1', '/uploads/images/goods/oGPAhq5mBwvPIzQmvz3uVjwCehvTgEE9QuRybcOC.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('54', '2018-08-18 17:09:50', '2018-08-18 17:09:50', '1020180818170950884383591', '124', '面膜', '3980', '1', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('55', '2018-08-18 17:11:01', '2018-08-18 17:11:01', '1020180818171101820437799', '125', '面膜1', '2980', '1', '/uploads/images/goods/GxSXnAE41de83K7LiepDNIKQfmFqjfLUHNlVCFcv.jpeg', '', '10');
INSERT INTO `z_order_product` VALUES ('56', '2018-08-18 17:59:08', '2018-08-18 17:59:08', '1020180818175908852184773', '127', '多元霜', '15920', '1', '/uploads/images/goods/oGPAhq5mBwvPIzQmvz3uVjwCehvTgEE9QuRybcOC.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('57', '2018-08-18 18:20:32', '2018-08-18 18:20:32', '1020180818182032915355471', '124', '面膜', '3980', '2', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('58', '2018-08-18 18:20:45', '2018-08-18 18:20:45', '1020180818182045259129915', '124', '面膜', '3980', '3', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('59', '2018-08-18 18:28:41', '2018-08-18 18:28:41', '1020180818182841854319995', '124', '面膜', '3980', '1', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('60', '2018-08-18 18:29:02', '2018-08-18 18:29:02', '1020180818182902041420507', '124', '面膜', '3980', '1', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('61', '2018-08-18 18:29:10', '2018-08-18 18:29:10', '1020180818182910902554686', '124', '面膜', '3980', '1', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('62', '2018-08-18 18:29:20', '2018-08-18 18:29:20', '1020180818182920324707230', '124', '面膜', '3980', '1', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('63', '2018-08-18 18:29:21', '2018-08-18 18:29:21', '1020180818182921653980672', '124', '面膜', '3980', '1', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('64', '2018-08-18 18:29:32', '2018-08-18 18:29:32', '1020180818182932221718929', '124', '面膜', '3980', '1', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');
INSERT INTO `z_order_product` VALUES ('65', '2018-08-18 23:12:25', '2018-08-18 23:12:25', '1020180818231225604311231', '125', '面膜1', '2980', '1', '/uploads/images/goods/GxSXnAE41de83K7LiepDNIKQfmFqjfLUHNlVCFcv.jpeg', '', '10');
INSERT INTO `z_order_product` VALUES ('66', '2018-08-22 17:04:48', '2018-08-22 17:04:48', '1020180822170448129505295', '124', '面膜', '3980', '1', '/uploads/images/goods/bUSVl4cG0uHlhM2XpuaaKslHa7k2QLnEmoJkkfhA.jpeg', '', '0');

-- ----------------------------
-- Table structure for `z_store`
-- ----------------------------
DROP TABLE IF EXISTS `z_store`;
CREATE TABLE `z_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺图片',
  `longitude` decimal(10,6) NOT NULL DEFAULT '0.000000' COMMENT '经度',
  `latitude` decimal(10,6) NOT NULL DEFAULT '0.000000' COMMENT '纬度',
  `area_code` varchar(6) NOT NULL DEFAULT '' COMMENT '地区',
  `address_bak` varchar(255) DEFAULT NULL COMMENT '附加地址',
  `address` varchar(255) NOT NULL DEFAULT '',
  `detail` text COMMENT '介绍',
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0关闭,1开启，，4管理员关闭',
  `views` int(11) NOT NULL DEFAULT '0',
  `likes` int(11) NOT NULL DEFAULT '0',
  `category_id` varchar(11) DEFAULT NULL COMMENT '行业分类',
  `delivery_fee` int(11) NOT NULL DEFAULT '0' COMMENT '运费',
  `delivery_fee_limit` int(11) NOT NULL DEFAULT '0' COMMENT '满包邮',
  `self` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否自营',
  `star` decimal(2,1) DEFAULT '4.9' COMMENT '评分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of z_store
-- ----------------------------
INSERT INTO `z_store` VALUES ('1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '古朗史记', '', '0.000000', '0.000000', '', null, '', null, '0', '0', '0', null, '0', '0', '0', '4.9');

-- ----------------------------
-- Table structure for `z_user_address`
-- ----------------------------
DROP TABLE IF EXISTS `z_user_address`;
CREATE TABLE `z_user_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(11) NOT NULL,
  `area_code` varchar(6) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of z_user_address
-- ----------------------------
INSERT INTO `z_user_address` VALUES ('1', '2018-08-12 17:43:32', '2018-08-12 17:43:32', '274', '230304', '一级', '15280086001', '一个月', '0');
INSERT INTO `z_user_address` VALUES ('2', '2018-08-12 18:02:06', '2018-08-12 18:02:06', '35', '110106', 'gdhdn你模糊', '15636462345', 'ghjj', '0');
INSERT INTO `z_user_address` VALUES ('3', '2018-08-14 14:52:09', '2018-08-14 14:52:09', '28', '350211', '10010', '15280086731', '是月', '0');
INSERT INTO `z_user_address` VALUES ('4', '2018-08-15 15:11:29', '2018-08-15 15:11:33', '275', '370282', '大信镇王家村', '15000000000', '老', '1');
INSERT INTO `z_user_address` VALUES ('5', '2018-08-16 11:49:55', '2018-08-16 11:49:55', '277', '140428', '啊啊啊', '132222222222', '1', '0');
INSERT INTO `z_user_address` VALUES ('6', '2018-08-16 12:53:18', '2018-08-16 12:53:18', '281', '220102', '吧', '12345678963', '123', '0');
INSERT INTO `z_user_address` VALUES ('7', '2018-08-16 15:37:06', '2018-08-16 15:37:06', '283', '150826', '我', '15000000003', '123', '0');
INSERT INTO `z_user_address` VALUES ('8', '2018-08-16 17:45:48', '2018-08-16 17:45:48', '284', '330102', '100号', '15280086100', '不要', '0');
INSERT INTO `z_user_address` VALUES ('9', '2018-08-16 17:54:13', '2018-08-16 17:54:13', '286', '110101', '这里10号', '15280086101', '是否能够', '0');
INSERT INTO `z_user_address` VALUES ('10', '2018-08-16 18:09:05', '2018-08-16 18:09:05', '287', '210102', '他', '11111111111', '1234', '0');
INSERT INTO `z_user_address` VALUES ('11', '2018-08-17 09:29:08', '2018-08-17 09:29:08', '288', '320102', '1', '111111111111', '12345', '0');
INSERT INTO `z_user_address` VALUES ('12', '2018-08-17 09:32:34', '2018-08-17 09:32:34', '289', '230102', '1', '11111111111', '123456', '0');
INSERT INTO `z_user_address` VALUES ('13', '2018-08-17 09:36:26', '2018-08-17 09:36:26', '290', '370282', '7', '77777777777', '7', '0');
INSERT INTO `z_user_address` VALUES ('14', '2018-08-17 09:36:27', '2018-08-17 09:36:27', '290', '370282', '7', '77777777777', '7', '0');
INSERT INTO `z_user_address` VALUES ('15', '2018-08-17 09:39:30', '2018-08-17 09:39:30', '291', '330102', '8', '88888888', '8', '0');
INSERT INTO `z_user_address` VALUES ('16', '2018-08-17 10:03:07', '2018-08-17 10:03:07', '292', '410102', '9', '9', '9', '0');
INSERT INTO `z_user_address` VALUES ('17', '2018-08-18 17:16:03', '2018-08-18 17:16:07', '293', '340302', '1', '111', '10', '1');
INSERT INTO `z_user_address` VALUES ('18', '2018-08-18 18:28:22', '2018-08-19 08:51:05', '294', '350102', '1', '11', '11', '1');

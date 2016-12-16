-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-12-05 16:59:40
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- 表的结构 `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bookname` varchar(30) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `class` varchar(30) NOT NULL DEFAULT 'all',
  `author` varchar(30) DEFAULT NULL,
  `intro` varchar(500) DEFAULT NULL,
  `comment` int(10) unsigned NOT NULL DEFAULT '0',
  `praise` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `books`
--

INSERT INTO `books` (`id`, `bookname`, `image`, `class`, `author`, `intro`, `comment`, `praise`) VALUES
(1, '繁花', 'assets/images/crude/fh.jpg', 'litera', '金宇澄', '这是一部地域小说，人物的行走，可找到“有形”地图的对应。这也是一部记忆小说，六十年代的少年旧梦，辐射广泛，处处人间烟火的斑斓记忆，九十年代的声色犬马，是一场接一场的流水席，叙事在两个时空里频繁交替，传奇迭生，延伸了关于上海的“不一致”和错综复杂的局面，小心翼翼的嘲讽，咄咄逼人的漫画，暗藏上海的时尚与流行；昨日的遗漏，或是明天的启示……即使繁花零落，死神到来，一曲终了，人犹未散。', 1, 0),
(2, '自由的夜行', 'assets/images/crude/zydyx.jpg', 'litera', '史铁生', '史铁生留给彷徨者的礼物，愿你在生命的幽暗中触摸到光。虽然轮椅不能代替双腿，但仍然可以让生命飞翔。', 0, 2),
(3, '玉见之美', 'assets/images/crude/yjzm.jpg', 'litera', '李玉刚', '他说，一只盏、一杯茶、一尊佛像、一段缂丝……是美的展现、是艺术的呈现，也是历史回旋的句读与感叹，当以一颗朝圣之心用文字与图片记录这一路感受与沉淀。', 0, 2),
(4, '人生若只如初见', 'assets/images/crude/rsrzrcj.jpg', 'litera', '安意如', '她逃离刻板严肃的面孔，以丰富的情感溶化时间的悠远，以自由的姿态激扬文字，以优雅飘逸的笔调倾诉古典诗词的美丽与哀愁。在她笔下，那江山美人的至真哀怨，那才子佳人的离情悲欢，那一幕幕凄美欢欣的旷世之恋，浪漫而清新，纯真而唯美。', 0, 0),
(5, '做王子，也做乞丐', 'assets/images/crude/zwzyzqg.jpg', 'litera', '松浦弥太郎', ' 日本生活大师松浦弥太郎的自传式随笔，高中都还没毕业，就决定到美国闯世界，18岁的秋天，松浦到了旧金山，在这旅程中，他追寻的是什么？当双亲质问：“为何要出去旅行？”少年的松浦无法回应的答案是什么？献给人生路途上的旅者们，缀满珍贵语句的一部作品。经历过年少轻狂的岁月，在漂泊的孤独中，他记下自己遇上的人，到达的地方，以及发生了哪些事──有些可能是完美结局，有时却是“这就是人生啊”的状况。松浦独特的生活观，也就是从早年的浪荡与奇遇、见识与成长中开始萌芽了。', 0, 0),
(6, '窝在角落好安心', 'assets/images/crude/wzjlhax.jpg', 'cartoon', '横沟百合', '来自北极却非常怕冷的“小白熊”，觉得自己浑身绿色不像真企鹅的小企鹅，被人丢弃后带着淡淡忧伤和自卑情绪的炸猪排及炸虾尾，还有不管遭遇什么挫折内心都充满乐观和希望的小杂草……每个小萌物的身上都有些与众不同的地方，也正是因为这些与众不同，让小萌物们聚到了一起。读者能感受到角落小伙伴们性格中的自怜、自卑，甚至有些许自闭，却乐观地从不放弃追逐希望的美好一面。温暖的色调，“有缺陷”但却无比可爱的角色，使本书的治愈值瞬间爆棚。除此之外，本书更为现下追求个性、渴望理解、缺乏安全感、经常感到孤独的年轻人注入了一针强心剂：就算全世界与你为敌，你也总会找到那个安心的角落，找到一群跟你一样的人，总之，安心就好！', 0, 0),
(7, '相爱的人会在一起', 'assets/images/crude/xadrhzyq.jpg', 'cartoon', '伟大的安妮', '《相爱的人会在一起》是伟大的安妮主编的快看漫画主题书，伟大的安妮、妖妖小精、卡里、金丘、伊凯&锐思、失控的Saner、青庭、千本、鲸鱼合合、福特、虹君、月色樱草，快看漫画超人气作者全新短篇作品集结。12篇关于爱情的温暖故事，12段情深的表白。愿这世界上的每一片情深都停在心动的一秒，愿每一分痴心尚留有初时的悸动。', 0, 0),
(8, '宫崎骏和他的世界 ', 'assets/images/crude/gqjhtdsj.jpg', 'cartoon', '山川贤一 ', '日本多位一线动画评论人深入剖析宫崎骏的思想经历、人际关系、兴趣爱好，为您还原一个真实的宫崎骏！宫崎骏的人生经历、恋爱观、兵器与机械、思想、人生哲学以多样的视角剖析巨匠！', 0, 0),
(9, '就是想看你笑的样子', 'assets/images/crude/jsxknxdyz.jpg', 'cartoon', '懒兔子', '“如果生活不能让你笑，你就笑笑生活。”该书是作者首部纯手绘漫画书，用暖萌、幽默的漫画讲述真实生活中的笑与爱，安慰身处焦虑之中的你我。', 0, 0),
(10, '丰子恺的抗战 ', 'assets/images/crude/fzkdkz.jpg', 'cartoon', '丰子恺', '抗日战争的爆发给予丰子恺漫画提供了许多的画材和主题，作者将自己的赤子之心融于笔端，将战争中的真情实感生动形象地表现出来，描绘他在逃难期间所遇到的真人真事。丰子恺将战争中的人间惨象描绘出来，表达他厌恶战争，喜好和平的思想感情。', 0, 0),
(11, '漫长的中场休息', 'assets/images/crude/mcdzcxx.jpg', 'fiction', '本·方登 ', '比利·林恩所在的B班士兵，在伊拉克赢得了一场3分43秒的短暂胜利。一夜间，他们成了美国的英雄。每个人都说着“感谢你们”，记者、好莱坞导演蜂拥而至。他们甚至还被邀请参加超级碗的中场秀。绚丽的烟花在耳边炸响，伴舞身上的亮片在身畔旋转，战争仿佛无比遥远。但有那么一刹那，比利觉得还是打仗好，总比被人当舞台布景挪来挪去爽多了。老天作证，打仗确实烂透了，可他实在看不出这种无聊的和平生活又有什么好的。这一天，比利·林恩遭遇了人生中最大的挑战。', 0, 0),
(12, '别爱上任何人', 'assets/images/crude/basrhr.jpg', 'fiction', '玛丽·库比卡', '“我知道轻蔑的眼神是什么样的，它虽然看着你，却并没有真正把你放在眼里。我知道不屑的声音听起来是什么样的。我知道背叛和幻灭的滋味——一个人本可以给你全世界，却拒绝付出哪怕一丝一毫。也许，我们的本质并没有多大不同。”', 0, 0),
(13, '殉罪者', 'assets/images/crude/xzz.jpg', 'fiction', '雷米', '·终日被囚禁于养老院中的残疾老人，当他凝望铁门之外的繁华人间，他在想什么？身患绝症的老警察，在所剩无几的时光中，为何选择孤身上路，去破解一个不可能的谜题？一个普通的大学生，被卷入一起横跨二十三年的案中案里，是命运使然，还是误入死局？在夕阳中吸烟的女孩，有着哪些不为人知的过去和生死不明的未来？背负原罪的跟踪者，余生只为一件事，一个人。', 0, 0),
(14, '猎豹', 'assets/images/crude/lb.jpg', 'fiction', '尤·奈斯博', '一连串雪崩般的骇人死亡事件背后，究竟有什么样的秘密？不走入连环杀手的内心，何以终结其疯狂？满身缺点的迷人英雄哈利·霍勒对决比雪人更残忍狡猾的对手，奈斯博展现超强驾驭力，每一个章节都动人心魄！', 0, 0),
(15, '假面前夜', 'assets/images/crude/jmqy.jpg', 'fiction', '东野圭吾', '被调到大阪柯尔特西亚酒店工作的山岸尚美，注意到了客人在说谎。另一方面，调查发生在东京的杀人事件的新田浩介盯上了一个男人，男人表示案发当晚自己在大阪，却不肯说出酒店的名字。即使被怀疑杀人也要保守的秘密到底是什么？', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bookname` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `content` varchar(300) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `praise` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`id`, `bookname`, `username`, `content`, `time`, `praise`) VALUES
(1, '繁花', 'double_de', '《繁花》写人物情态寥寥数笔，「不响」「很高兴」「落下两滴泪来」，点到即止，他们拒绝被读者融入到脉络血液里，而展示出的大抵也只是一种平凡世相。于是我们觉得找回了熟悉的感动，或许这才是一脉相承的中国式小说，市井人情，一个接一个的流水席。', '2016-11-30 11:23:55', 1);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(15) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`) VALUES
(1, '小明', 'ddc704810', NULL),
(2, '小红', 'xiaohong', 'xiaohong@qq.com'),
(5, '小青', 'xiaoqing', 'xiaoqing@qq.com'),
(6, '小绿', 'xiaolv', 'xiaolv@qq.com'),
(7, 'double_de', 'ddc704810', 'double_de@163.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

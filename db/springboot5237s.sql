/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 8.0.36 : Database - springboot5237s
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot5237s` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `springboot5237s`;

/*Table structure for table `canguanrenshu` */

DROP TABLE IF EXISTS `canguanrenshu`;

CREATE TABLE `canguanrenshu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `changguanmingcheng` varchar(200) NOT NULL COMMENT '场馆名称',
  `changguanleixing` varchar(200) DEFAULT NULL COMMENT '场馆类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `changguanweizhi` varchar(200) DEFAULT NULL COMMENT '场馆位置',
  `gongzuobianhao` varchar(200) DEFAULT NULL COMMENT '工作编号',
  `zhanlanrenshu` int NOT NULL COMMENT '展览人数',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `neirongshuoming` longtext COMMENT '内容说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='参观人数';

/*Data for the table `canguanrenshu` */

insert  into `canguanrenshu`(`id`,`addtime`,`changguanmingcheng`,`changguanleixing`,`tupian`,`changguanweizhi`,`gongzuobianhao`,`zhanlanrenshu`,`dengjiriqi`,`neirongshuoming`) values 
(71,'2022-05-03 15:17:29','场馆名称1','场馆类型1','upload/1714133729175.jpeg','场馆位置1','工作编号1',200000,'2022-05-03','<p>内容说明1</p>'),
(72,'2022-05-03 15:17:29','场馆名称2','场馆类型2','upload/1714133956259.jpeg','场馆位置2','工作编号2',198979,'2022-05-03','<p>内容说明2</p>'),
(73,'2022-05-03 15:17:29','场馆名称3','场馆类型3','upload/canguanrenshu_tupian3.jpg','场馆位置3','工作编号3',3,'2022-05-03','内容说明3'),
(74,'2022-05-03 15:17:29','场馆名称4','场馆类型4','upload/canguanrenshu_tupian4.jpg','场馆位置4','工作编号4',4,'2022-05-03','内容说明4'),
(75,'2022-05-03 15:17:29','场馆名称5','场馆类型5','upload/canguanrenshu_tupian5.jpg','场馆位置5','工作编号5',5,'2022-05-03','内容说明5'),
(76,'2022-05-03 15:17:29','场馆名称6','场馆类型6','upload/1714133373749.jpeg','场馆位置6','工作编号6',6,'2022-05-03','<p>内容说明6</p>');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values 
(1,'picture1','upload/1714134257149.jpg'),
(2,'picture2','upload/1714134266412.jpg'),
(3,'picture3','upload/1714134274648.png'),
(4,'picture4','upload/1714134283863.jpg'),
(5,'picture5','upload/1714134290820.jpg');

/*Table structure for table `gongzuorenyuan` */

DROP TABLE IF EXISTS `gongzuorenyuan`;

CREATE TABLE `gongzuorenyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongzuobianhao` varchar(200) NOT NULL COMMENT '工作编号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongzuobianhao` (`gongzuobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1714118716923 DEFAULT CHARSET=utf8mb3 COMMENT='工作人员';

/*Data for the table `gongzuorenyuan` */

insert  into `gongzuorenyuan`(`id`,`addtime`,`gongzuobianhao`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`) values 
(11,'2022-05-03 15:17:29','工作编号1','123456','工作人员1','女','upload/gongzuorenyuan_touxiang1.jpg','13823845881'),
(12,'2022-05-03 15:17:29','工作编号2','123456','工作人员2','女','upload/gongzuorenyuan_touxiang2.jpg','13823888882'),
(13,'2022-05-03 15:17:29','工作编号3','123456','工作人员3','男','upload/gongzuorenyuan_touxiang3.jpg','13823888883'),
(14,'2022-05-03 15:17:29','工作编号4','123456','工作人员4','女','upload/gongzuorenyuan_touxiang4.jpg','13823888884'),
(15,'2022-05-03 15:17:29','工作编号5','123456','工作人员5','女','upload/gongzuorenyuan_touxiang5.jpg','13823888885'),
(16,'2022-05-03 15:17:29','工作编号6','123456','工作人员6','男','upload/gongzuorenyuan_touxiang6.jpg','13823888886'),
(1714118716922,'2024-04-26 16:05:16','工作编号7','123456','工作人员7','男','upload/1714118715098.jpg','15671934567');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values 
(91,'2022-05-03 15:17:29','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/1714129566742.png','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),
(92,'2022-05-03 15:17:29','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/1714133987211.png','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),
(93,'2022-05-03 15:17:29','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/1714129584535.jpeg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),
(94,'2022-05-03 15:17:29','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),
(95,'2022-05-03 15:17:29','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/1714129745523.jpeg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),
(96,'2022-05-03 15:17:29','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/1714129497952.jpeg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');

/*Table structure for table `paibanxinxi` */

DROP TABLE IF EXISTS `paibanxinxi`;

CREATE TABLE `paibanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongzuobianhao` varchar(200) NOT NULL COMMENT '工作编号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `paibantupian` varchar(200) DEFAULT NULL COMMENT '排班图片',
  `paibanneirong` longtext COMMENT '排班内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='排班信息';

/*Data for the table `paibanxinxi` */

insert  into `paibanxinxi`(`id`,`addtime`,`gongzuobianhao`,`xingming`,`paibantupian`,`paibanneirong`,`faburiqi`) values 
(41,'2022-05-03 15:17:29','工作编号1','姓名1','upload/paibanxinxi_paibantupian1.jpg','排班内容1','2024-06-13'),
(42,'2022-05-03 15:17:29','工作编号2','姓名2','upload/paibanxinxi_paibantupian2.jpg','排班内容2','2024-07-08'),
(43,'2022-05-03 15:17:29','工作编号3','姓名3','upload/paibanxinxi_paibantupian3.jpg','排班内容3','2023-05-10'),
(44,'2022-05-03 15:17:29','工作编号4','姓名4','upload/paibanxinxi_paibantupian4.jpg','排班内容4','2023-08-09'),
(45,'2022-05-03 15:17:29','工作编号5','姓名5','upload/paibanxinxi_paibantupian5.jpg','排班内容5','2024-01-03'),
(46,'2022-05-03 15:17:29','工作编号6','姓名6','upload/paibanxinxi_paibantupian6.jpg','排班内容6','2023-12-08');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1713961080776 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values 
(1,11,'工作编号1','gongzuorenyuan','工作人员','8zp0jateiapphl3202mc0hjb02v7ki7j','2024-04-24 16:26:07','2024-04-26 13:25:20'),
(2,1,'admin','users','管理员','pwvlhyu01np4mefz00uv4g2lamrr9rzp','2024-04-24 16:27:21','2024-06-18 19:24:08'),
(3,21,'用户名1','yonghu','用户','ziqdkehwog3nqjpbfc68lpcrbutc43w1','2024-04-24 18:29:45','2024-06-18 19:28:12');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values 
(1,'admin','123456','管理员','2022-05-03 15:17:29');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`) values 
(21,'2022-05-03 15:17:29','user1','123456','姓名1','男','upload/1713948949518.jpg','13823888881'),
(22,'2022-05-03 15:17:29','user2','123456','姓名2','男','upload/yonghu_touxiang2.jpg','13823832582'),
(23,'2022-05-03 15:17:29','user3','123456','姓名3','男','upload/yonghu_touxiang3.jpg','13234325883'),
(24,'2022-05-03 15:17:29','user4','123456','姓名4','男','upload/yonghu_touxiang4.jpg','13831423523'),
(25,'2022-05-03 15:17:29','user5','123456','姓名5','男','upload/yonghu_touxiang5.jpg','13432152356'),
(26,'2022-05-03 15:17:29','user6','123456','姓名6','男','upload/yonghu_touxiang6.jpg','13823888886');

/*Table structure for table `yuyuejilu` */

DROP TABLE IF EXISTS `yuyuejilu`;

CREATE TABLE `yuyuejilu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuedanhao` varchar(200) DEFAULT NULL COMMENT '预约单号',
  `changguanmingcheng` varchar(200) DEFAULT NULL COMMENT '场馆名称',
  `changguanleixing` varchar(200) DEFAULT NULL COMMENT '场馆类型',
  `yuyueshijian` datetime NOT NULL COMMENT '预约时间',
  `yuyueneirong` varchar(200) DEFAULT NULL COMMENT '预约内容',
  `gongzuobianhao` varchar(200) DEFAULT NULL COMMENT '工作编号',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuedanhao` (`yuyuedanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='预约记录';

/*Data for the table `yuyuejilu` */

insert  into `yuyuejilu`(`id`,`addtime`,`yuyuedanhao`,`changguanmingcheng`,`changguanleixing`,`yuyueshijian`,`yuyueneirong`,`gongzuobianhao`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values 
(51,'2022-05-03 15:17:29','1111111111','场馆名称1','场馆类型1','2022-05-03 15:17:29','预约内容1','工作编号1','用户名1','手机1','是',''),
(52,'2022-05-03 15:17:29','2222222222','场馆名称2','场馆类型2','2022-05-03 15:17:29','预约内容2','工作编号2','用户名2','手机2','是',''),
(53,'2022-05-03 15:17:29','3333333333','场馆名称3','场馆类型3','2022-05-03 15:17:29','预约内容3','工作编号3','用户名3','手机3','是',''),
(54,'2022-05-03 15:17:29','4444444444','场馆名称4','场馆类型4','2022-05-03 15:17:29','预约内容4','工作编号4','用户名4','手机4','是',''),
(55,'2022-05-03 15:17:29','5555555555','场馆名称5','场馆类型5','2022-05-03 15:17:29','预约内容5','工作编号5','用户名5','手机5','是',''),
(56,'2022-05-03 15:17:29','6666666666','场馆名称6','场馆类型6','2022-05-03 15:17:29','预约内容6','工作编号6','用户名6','手机6','是','');

/*Table structure for table `zangpinxinxi` */

DROP TABLE IF EXISTS `zangpinxinxi`;

CREATE TABLE `zangpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '藏品名称',
  `zangpinleibie` varchar(200) DEFAULT NULL COMMENT '藏品类别',
  `zangpintupian` varchar(200) DEFAULT NULL COMMENT '藏品图片',
  `zangpinniandai` varchar(200) DEFAULT NULL COMMENT '藏品年代',
  `youguanlishi` varchar(200) DEFAULT NULL COMMENT '有关历史',
  `changguanmingcheng` varchar(200) NOT NULL COMMENT '场馆名称',
  `changguanweizhi` varchar(200) DEFAULT NULL COMMENT '场馆位置',
  `zangpinjianjie` longtext COMMENT '藏品简介',
  `zangpinxiangqing` longtext COMMENT '藏品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='藏品信息';

/*Data for the table `zangpinxinxi` */

insert  into `zangpinxinxi`(`id`,`addtime`,`zangpinmingcheng`,`zangpinleibie`,`zangpintupian`,`zangpinniandai`,`youguanlishi`,`changguanmingcheng`,`changguanweizhi`,`zangpinjianjie`,`zangpinxiangqing`,`clicktime`,`clicknum`) values 
(61,'2022-05-03 15:17:29','藏品名称1','藏品类别1','upload/zangpinxinxi_zangpintupian1.jpg','藏品年代1','有关历史1','场馆名称1','场馆位置1','藏品简介1','藏品详情1','2022-05-03 15:17:29',1),
(62,'2022-05-03 15:17:29','藏品名称2','藏品类别2','upload/1714129259997.jpeg','藏品年代2','有关历史2','场馆名称2','场馆位置2','藏品简介2','<p>藏品详情2</p>','2024-04-26 19:00:53',3),
(63,'2022-05-03 15:17:29','藏品名称3','藏品类别3','upload/1714129367738.jpeg','藏品年代3','有关历史3','场馆名称3','场馆位置3','藏品简介3','<p>藏品详情3</p>','2024-04-26 19:02:41',4),
(64,'2022-05-03 15:17:29','藏品名称4','藏品类别4','upload/zangpinxinxi_zangpintupian4.jpg','藏品年代4','有关历史4','场馆名称4','场馆位置4','藏品简介4','藏品详情4','2022-05-03 15:17:29',4),
(65,'2022-05-03 15:17:29','藏品名称5','藏品类别5','upload/zangpinxinxi_zangpintupian5.jpg','藏品年代5','有关历史5','场馆名称5','场馆位置5','藏品简介5','藏品详情5','2022-05-03 15:17:29',5),
(66,'2022-05-03 15:17:29','藏品名称6','藏品类别6','upload/1714129431884.jpeg','藏品年代6','有关历史6','场馆名称6','场馆位置6','藏品简介6','<p>藏品详情6</p>','2024-04-26 19:03:45',7);

/*Table structure for table `zhanlanxinxi` */

DROP TABLE IF EXISTS `zhanlanxinxi`;

CREATE TABLE `zhanlanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `changguanmingcheng` varchar(200) DEFAULT NULL COMMENT '场馆名称',
  `changguanleixing` varchar(200) DEFAULT NULL COMMENT '场馆类型',
  `changguantupian` varchar(200) DEFAULT NULL COMMENT '场馆图片',
  `changguanweizhi` varchar(200) DEFAULT NULL COMMENT '场馆位置',
  `yingyeshijian` varchar(200) DEFAULT NULL COMMENT '营业时间',
  `gongzuobianhao` varchar(200) NOT NULL COMMENT '工作编号',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `changguanjieshao` longtext COMMENT '场馆介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='展览信息';

/*Data for the table `zhanlanxinxi` */

insert  into `zhanlanxinxi`(`id`,`addtime`,`changguanmingcheng`,`changguanleixing`,`changguantupian`,`changguanweizhi`,`yingyeshijian`,`gongzuobianhao`,`lianxidianhua`,`changguanjieshao`,`clicktime`,`clicknum`) values 
(31,'2022-05-03 15:17:29','场馆名称1','场馆类型1','upload/1714118791616.jpeg','场馆位置1','8：00-21：00','工作编号1','13823888881','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">“越王勾践剑特展”位于南馆二层，面积600㎡。越王勾践剑是国宝级文物，省博物馆四大镇馆之宝之一。越王勾践剑所反映的历史故事、科技成就十分丰富，因此设立专馆展出，全面讲述文物及其背后的故事。展览以越王勾践剑为中心，分为“越国春秋”、“惊世发现”、“剑中王者”三个单元。以越国历史作为切入点，介绍文物背后楚昭王、越王勾践联姻的美好故事，以不朽之谜介绍越王勾践剑的科技成就。</span></p>','2024-04-27 09:46:47',10),
(32,'2022-05-03 15:17:29','场馆名称2','场馆类型2','upload/1714118946684.jpeg','场馆位置2','8：00-18：00','工作编号2','13823888882','<p class=\"ql-align-justify\">“曾侯乙”展览位于南馆一、二层，面积3800㎡。</p><p class=\"ql-align-justify\">曾侯乙生活在公元前五世纪，是周代诸侯国曾国的国君。他的墓葬于1978年在湖北随县（今随州城区）被发现，发掘出土的一万五千余件工艺精湛、无与伦比的文物，呈现了高度发达的礼乐文明，体现了古人敬畏天地、神明和祖先的丰富精神世界，揭示了中国古代青铜铸造、天文历法、音乐艺术等方面的极高成就。</p><p class=\"ql-align-justify\">曾侯乙所处的时代，群雄并立，百家争鸣，世界主要古文明都达到了巅峰，被誉为人类文明发展的“轴心时代”。曾侯乙墓出土文物实证了是当时人类智慧所达到的高度。</p><p class=\"ql-align-justify\">展览分为“敬天崇祖”、“金声玉振”、“所尚若陈”、“观象授时”、“车马仪仗”、“永保用享”七个部分，多角度阐释曾侯乙文物，体现古代的礼乐文明，凸显文物艺术特色。</p>','2024-04-26 16:08:59',9),
(33,'2022-05-03 15:17:29','场馆名称3','场馆类型3','upload/zhanlanxinxi_changguantupian3.jpg','场馆位置3','8：00-18：00','工作编号3','13823888883','<p class=\"ql-align-justify\">	“曾世家——考古揭秘的曾国”位于南馆二层，面积1900㎡。曾国考古是湖北省近年来取得成果最多、社会关注度最高的考古发现之一。叶家山、文峰塔、郭家庙、苏家垄等考古发现引起社会各界瞩目。展览分为“始封江汉”、“汉东大国”、“佐佑楚王”“华章重现”四个部分，展览通过考古成果，揭示曾国从在江汉地区独领风骚到滋养楚国、最后融入楚文化的发展历程。</p><p><br></p>','2024-04-26 16:09:26',4),
(34,'2022-05-03 15:17:29','场馆名称4','场馆类型4','upload/zhanlanxinxi_changguantupian4.jpg','场馆位置4','8：00-18：00','工作编号4','13823888884','<p class=\"ql-align-justify\">	1978年曾侯乙墓的发掘、1984年曾侯乙编钟的复制成功和1988年曾侯乙编钟国际会议的召开是中国考古学、实验考古学和考古研究国际合作的标志性事件，在历史、古文字学、天文、物理、冶金铸造、音乐及区域文化研究方面开启全新模式，即以学术问题为导向，多学科合作为特点，科学验证为标准的古代文化研究。</p><p class=\"ql-align-justify\">	经过45年的工作，曾侯乙墓及编钟引发的重大学术问题基本取得理想的成果，如曾随之谜、双音钟之谜、中国上古有多音阶和十二律、有四象二十八宿观象体系、周文化是江汉地区的主流文化，地方性文化在礼乐和文字方面有强烈的表现等等。尤其是以钟磬铭文为代表的记忆遗产，反映了当时世界文明的最高水平。该项成就于2023年入选第五批中国档案文献遗产名录。</p><p class=\"ql-align-justify\">	本展览是首个考古文献暨曾侯乙编钟世界记忆展。展品主要来自谭维四家属捐赠的谭维四档案、参与曾侯乙墓发掘的考古工作者捐赠的原始档案，以及湖北省博物馆正在整理的曾侯乙墓档案，包括文件、信札、手稿、笔记、日记、影像、书籍、纪念品等。</p><p class=\"ql-align-justify\">	展览以155件（套）珍贵档案文献详细回顾了曾侯乙墓的发掘过程，首次全面公布发掘工作人员名单，编钟测音及复制原始资料，以及曾侯乙墓音乐文物的研究与展示历程。特别是1978年在随州的首次汇报展、首场编钟音乐会、在湖北省博物馆首次正式对外展出、首次赴京展览的过程及相关文物资料，以及在考古研究过程中谭维四等湖北考古工作者与夏鼐、马承源、黄翔鹏、李学勤、裘锡圭、张光直、程贞一、杜志豪（Kenneth J. Dewoskin）等国内外知名学者的往来书信及论文手稿，均为首次公开展出。</p><p><br></p>','2024-04-26 16:09:45',5),
(35,'2022-05-03 15:17:29','场馆名称5','场馆类型5','upload/zhanlanxinxi_changguantupian5.jpg','场馆位置5','8：00-21：00','工作编号5','13823888885','<p class=\"ql-align-justify\">	展览分为四个单元，完整回顾了曾侯乙墓发掘的全过程，翔实记录了曾侯乙编钟出土后，多机构、多学科共同参与，考古、古文字、冶金、音乐学等多方面对其进行深入研究取得的重要成果，并通过编钟的演奏、复制、展览，使曾侯乙编钟走向世界，成为中华礼乐文明的重要象征。</p><p class=\"ql-align-justify\">	第一单元“考古发现”。以大量原始档案重现了曾侯乙墓的发现、汇报、调查、决策、勘探、清理等过程，中央及省地县各级领导的高度重视，各文博单位和武汉大学的无私援助，尤其是解放军的大力支持。展现了1978年考古工作者艰辛的田野工作，生动反映了党和国家领导人、社会各界对文物考古事业的关心、关怀。</p><p class=\"ql-align-justify\">	第二单元“科学研究”。展出部分知名学者、科研人员、科学出版单位的信札、文稿、编辑意见等，反映了曾侯乙墓在学术界的影响和重要性，以及研究工作的艰巨、严谨和科学。</p><p class=\"ql-align-justify\">	第三单元“钟磬复制”。展示曾侯乙编钟、编磬的复制科研项目促进了先秦时期音乐学、声学、冶金铸造技术等重大课题的学术研究、展示传播和文物保护工作。曾侯乙钟磬的复制在音乐考古、公共考古、多学科合作方面有划时代的意义。为准确、科学地阐释曾侯乙编钟编磬的科技成就，满足公众欣赏先秦音乐需求，开创了全新的科研、展示和管理模式。</p><p class=\"ql-align-justify\">	第四单元“文化传播”。展示曾侯乙墓的发现产生的巨大社会影响。1978年7月1日，在随县展览馆举办了第一次出土文物汇报展；8月1日，在随县炮师某部礼堂举办了首场编钟音乐会；10月1日，在湖北省博物馆举办了第一次正式对外展出的“随县擂鼓墩一号墓出土文物展览”；1979年9月20日，为庆祝建国30周年，中国历史博物馆（今国家博物馆）举办“曾侯乙墓出土文物展览”，编钟原件首次赴京展出；1984年国庆期间，编钟乐团赴京并在怀仁堂汇报演出，受到中央的表彰</p><p><br></p>','2024-04-26 16:18:59',6),
(36,'2022-05-03 15:17:29','场馆名称6','场馆类型6','upload/1714119589129.jpeg','场馆位置6','8：30-15：00','工作编号6','13823888886','<p class=\"ql-align-justify\">	曾侯乙墓文物展览及编钟还承担了香港回归、两岸交流、促进中外邦交等重大活动。1984年12月，为庆祝中英有关香港联合声明的签署，曾侯乙墓文物第一次在境外展出；1997年7月1日，编钟复制件应邀参加了香港回归庆典。同年11月9日，曾侯乙墓文物第一次在台北展出，这是大陆官方博物馆在台湾举办的首展。编钟复制件频频亮相国际舞台，先后出访20多个国家和地区，成为文化交流的“金色名片”。</p><p class=\"ql-align-justify\">	此次展览是对重大考古成果的“回访”，大部分展品为首次公开展示。此次展览是向老一辈考古工作者和学者专家的致敬，对促进曾侯乙编钟的研究、提升曾侯乙编钟的影响力，助力曾侯乙编钟申报世界记忆遗产名录将起到推动作用。作为中国记忆，曾侯乙墓文物及背后的故事将会继续，展览也将根据征集材料不断调整，湖北省博物馆期待公众提供线索，使档案整理工作进一步完善丰富。</p><p class=\"ql-align-justify\">	开幕时间：2023年12月12日</p><p class=\"ql-align-justify\">	展览地点：湖北省博物馆南馆四楼</p><p><br></p>','2024-04-26 16:19:19',7);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

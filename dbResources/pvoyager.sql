-- MySQL dump 10.13  Distrib 5.1.44, for apple-darwin8.11.1 (i386)
--
-- Host: localhost    Database: pvoyager
-- ------------------------------------------------------
-- Server version	5.1.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pv_scenes`
--

DROP TABLE IF EXISTS `pv_scenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pv_scenes` (
  `pvc_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pvc_path` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'link path',
  PRIMARY KEY (`pvc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pv_scenes`
--

LOCK TABLES `pv_scenes` WRITE;
/*!40000 ALTER TABLE `pv_scenes` DISABLE KEYS */;
INSERT INTO `pv_scenes` VALUES (1,'ex-jupiter-01.html');
INSERT INTO `pv_scenes` VALUES (2,'ex-jupiter-02.html');
INSERT INTO `pv_scenes` VALUES (3,'ex-jupiter-03.html');
INSERT INTO `pv_scenes` VALUES (4,'ex-jupiter-04.html');
INSERT INTO `pv_scenes` VALUES (5,'ex-jupiter-05.html');
/*!40000 ALTER TABLE `pv_scenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pv_searchwords`
--

DROP TABLE IF EXISTS `pv_searchwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pv_searchwords` (
  `pvs_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pvs_sword` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '検索一致語',
  `pvs_word_id` int(11) DEFAULT NULL COMMENT '結果単語',
  PRIMARY KEY (`pvs_id`),
  KEY `pvs_sword` (`pvs_sword`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pv_searchwords`
--

LOCK TABLES `pv_searchwords` WRITE;
/*!40000 ALTER TABLE `pv_searchwords` DISABLE KEYS */;
INSERT INTO `pv_searchwords` VALUES (1,'木星',1);
INSERT INTO `pv_searchwords` VALUES (2,'もくせい',1);
INSERT INTO `pv_searchwords` VALUES (3,'Jupiter',1);
INSERT INTO `pv_searchwords` VALUES (4,'モクセイ',1);
INSERT INTO `pv_searchwords` VALUES (5,'しましま',7);
INSERT INTO `pv_searchwords` VALUES (6,'土星',2);
INSERT INTO `pv_searchwords` VALUES (7,'衛星',8);
INSERT INTO `pv_searchwords` VALUES (8,'サイズ',6);
INSERT INTO `pv_searchwords` VALUES (9,'大き',6);
INSERT INTO `pv_searchwords` VALUES (10,'半径',6);
INSERT INTO `pv_searchwords` VALUES (11,'直径',6);
INSERT INTO `pv_searchwords` VALUES (12,'何でできて',9);
INSERT INTO `pv_searchwords` VALUES (13,'何で出来て',9);
INSERT INTO `pv_searchwords` VALUES (14,'なにでできて',9);
INSERT INTO `pv_searchwords` VALUES (15,'なにで出来て',9);
INSERT INTO `pv_searchwords` VALUES (16,'素材',9);
INSERT INTO `pv_searchwords` VALUES (17,'材料',9);
INSERT INTO `pv_searchwords` VALUES (18,'磁場',10);
INSERT INTO `pv_searchwords` VALUES (19,'オーロラ',10);
INSERT INTO `pv_searchwords` VALUES (20,'月',8);
INSERT INTO `pv_searchwords` VALUES (21,'moon',8);
INSERT INTO `pv_searchwords` VALUES (22,'かわいい',11);
INSERT INTO `pv_searchwords` VALUES (23,'可愛い',11);
INSERT INTO `pv_searchwords` VALUES (24,'カワイイ',11);
INSERT INTO `pv_searchwords` VALUES (25,'イオ',8);
INSERT INTO `pv_searchwords` VALUES (26,'タイタン',12);
INSERT INTO `pv_searchwords` VALUES (27,'おおきさ',6);
INSERT INTO `pv_searchwords` VALUES (28,'模様',5);
INSERT INTO `pv_searchwords` VALUES (29,'だいせきはん',7);
INSERT INTO `pv_searchwords` VALUES (30,'縞',5);
INSERT INTO `pv_searchwords` VALUES (31,'もよう',5);
INSERT INTO `pv_searchwords` VALUES (32,'目玉',7);
INSERT INTO `pv_searchwords` VALUES (33,'大赤はん',7);
INSERT INTO `pv_searchwords` VALUES (34,'大赤斑',7);
INSERT INTO `pv_searchwords` VALUES (35,'渦',7);
/*!40000 ALTER TABLE `pv_searchwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pv_type`
--

DROP TABLE IF EXISTS `pv_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pv_type` (
  `pvt_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pvt_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pvt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pv_type`
--

LOCK TABLES `pv_type` WRITE;
/*!40000 ALTER TABLE `pv_type` DISABLE KEYS */;
INSERT INTO `pv_type` VALUES (1,'場所');
INSERT INTO `pv_type` VALUES (2,'特徴');
/*!40000 ALTER TABLE `pv_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pv_values`
--

DROP TABLE IF EXISTS `pv_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pv_values` (
  `pvv_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pvv_value` bigint(20) NOT NULL COMMENT 'key',
  `pvv_result` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'voyagerの返事',
  `pvv_sex` int(11) DEFAULT NULL COMMENT '性別, 1=male, 2=female',
  `pvv_scene_id` int(11) NOT NULL,
  PRIMARY KEY (`pvv_id`),
  KEY `pvv_value` (`pvv_value`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pv_values`
--

LOCK TABLES `pv_values` WRITE;
/*!40000 ALTER TABLE `pv_values` DISABLE KEYS */;
INSERT INTO `pv_values` VALUES (1,-1,'えっ、どこのこと？もう一回言ってみて',2,0);
INSERT INTO `pv_values` VALUES (2,0,'何も思い浮かばないの...もう一回言ってみて',2,0);
INSERT INTO `pv_values` VALUES (3,1032,'木星はとっても%1大きかった%2わ',2,3);
INSERT INTO `pv_values` VALUES (4,1028,'木星は%1しましま%2がきれいだったの',2,1);
INSERT INTO `pv_values` VALUES (5,1056,'木星はほとんど%1水素でできている%2と言えたわ',2,3);
INSERT INTO `pv_values` VALUES (6,1088,'木星にはとても%1強い磁場%2があったのよ',2,4);
INSERT INTO `pv_values` VALUES (7,1040,'木星には%1衛星%2がいくつもあったの',2,2);
INSERT INTO `pv_values` VALUES (8,1152,'えっ……そんなこと言われたら、データが消えちゃいそうですよぉ',2,999999);
INSERT INTO `pv_values` VALUES (9,1026,'木星は%1しましま%2がきれいだったの',2,1);
INSERT INTO `pv_values` VALUES (10,-2,'木星は太陽から平均で7億8千万キロメートル、地球からは6億3千万キロメートル離れているのよ。',2,999999);
INSERT INTO `pv_values` VALUES (11,-2,'軌道のだ円度合いを表す離心率、木星は0.048なの。',2,999999);
INSERT INTO `pv_values` VALUES (12,-2,'木星には生命は存在しないと考えられているけど、木星の衛星エウロパには地下に海があると考えられていて、生命がいる可能性があると言われているわ。気になるわね！',2,999999);
INSERT INTO `pv_values` VALUES (13,-2,'大きさ（半径・直径）：半径はおよそ70,000km、直径は140,000kmよ。地球と比べて大体１０倍程度大きいことになるの。ふふっ。',2,999999);
INSERT INTO `pv_values` VALUES (14,-2,'質量は地球のおよそ318倍、太陽系の惑星で２番目に大きい土星と比べて3.3倍程度重いと見積もられているのよ。',2,999999);
INSERT INTO `pv_values` VALUES (15,-2,'木星の平均密度は1.326g/cc、地球の平均密度は5.5g/ccなので、地球とは明らかに異なる組成であることが分かると思うわ。',2,999999);
INSERT INTO `pv_values` VALUES (16,-2,'ある決まった体積だけで考えると、木星は地球よりも（平均で）軽いことが分かるわ。けれど木星全体の質量は、太陽系のほかの惑星全てを合わせた質量よりも２倍以上重い計算になるの。木星がとてつもなく巨大であることが分かるわね。',2,999999);
INSERT INTO `pv_values` VALUES (17,-2,'木星は、中心から赤道までの半径のほうが、極までの半径よりも6.5%ほど大きいことが分かっているの。なんと地球の20倍の扁平率なのよ。',2,999999);
INSERT INTO `pv_values` VALUES (18,-2,'木星は、まず始めに固体（岩石・氷）が集まり、地球の数倍程度重くなったところで、それがコア（核）となって周囲のガスを急速に取り込んで現在の姿になったと考えられているの。でも、コアがどの程度重くなればガスを取り込めるのか、明確には分かっていないわ。',2,999999);
INSERT INTO `pv_values` VALUES (19,-2,'木星の公転周期（太陽を一周まわる長さ）は12年程度よ。でも自転の周期はなんと10時間！すさまじい速さで自転しているわ。木星の扁平率が大きいのはそのためなの。',2,999999);
INSERT INTO `pv_values` VALUES (20,-2,'強い磁場に捉えられた荷電粒子は、強い電波を発するわ。地球からは木星の自転に合わせて、その強い電波放射が観測されているの。',2,999999);
INSERT INTO `pv_values` VALUES (21,-2,'強烈な風によって大気の層ごとに摩擦が起こるので、巨大な雷が観測されているわ。',2,999999);
INSERT INTO `pv_values` VALUES (22,-2,'これまでに数々の探査機が木星に送り込まれているの。わたしもね！',2,999999);
INSERT INTO `pv_values` VALUES (23,-2,'木星はほとんどガスでできているのよ。',2,999999);
INSERT INTO `pv_values` VALUES (24,-2,'木星の主成分は水素とヘリウムのガスよ。',2,999999);
INSERT INTO `pv_values` VALUES (25,-2,'木星のほとんどは水素とヘリウムでできているのよ。',2,999999);
INSERT INTO `pv_values` VALUES (26,-2,'木星は空気でできているわ。でも地球の空気とは成分が全然ちがうの。',2,999999);
INSERT INTO `pv_values` VALUES (27,-2,'木星の大気はとっても分厚くて、どこまで続いているかはまだよくわかっていないの。',2,999999);
INSERT INTO `pv_values` VALUES (28,-2,'木星の希ガスはちょっとだけ太陽より多いみたい。',2,999999);
INSERT INTO `pv_values` VALUES (29,-2,'木星のエンベロープは水素でできている部分のことよ。',2,999999);
INSERT INTO `pv_values` VALUES (30,-2,'木星は太陽より数百万年ぐらい若いって言われてるわ。それでもまだ45億歳なのよ。',2,999999);
INSERT INTO `pv_values` VALUES (31,-2,'木星は太陽より数百万年ぐらい若いって言われてるわ。それでもまだ45億歳なのよ。…わたしの歳は秘密よ。',2,999999);
INSERT INTO `pv_values` VALUES (32,-2,'木星は昔とても熱かったけど、だんだん冷えながら縮んでいったらしいの',2,999999);
INSERT INTO `pv_values` VALUES (33,-2,'木星には双極子型の強力な磁場があるのよ。',2,999999);
INSERT INTO `pv_values` VALUES (34,-2,'詳しいのね！木星の磁場はそのダイナモ作用で作られていると言われているわ。',2,999999);
INSERT INTO `pv_values` VALUES (35,-2,'金属水素？…そうだ、思い出した！木星のなかはとても圧力が高くて水素が金属になっちゃうんだったわ！',2,999999);
INSERT INTO `pv_values` VALUES (36,-2,'そう言えばここに来る途中に木星に似た惑星を見たわ。でも恒星に近すぎてとっても熱そうだったわ。',2,999999);
INSERT INTO `pv_values` VALUES (37,-2,'Jupiterは木星の英語名よ！',2,999999);
INSERT INTO `pv_values` VALUES (38,-2,'木星はガス惑星って呼ばれる惑星の仲間なの。となりの土星も同じガス惑星よ。',2,999999);
INSERT INTO `pv_values` VALUES (39,-2,'木星は昔太陽の周りを回っていたガス円盤から直接できたっていう説のことかしら？木星に固体がどれくらい入っているかがわかるとその説が正しいかどうかがわかると言われてるの。もうひとつ、コア形成モデルと呼ばれる説があるわよ。',2,999999);
INSERT INTO `pv_values` VALUES (40,-2,'木星の中心にはコアと呼ばれる核があると考えられているけど、コアの大きさは核なしから地球の質量の８倍までの可能性があって、まだはっきり決まっていないの。中心の温度はおよそ数万度、圧力は地球表面の数兆倍もあるのよ。',2,999999);
INSERT INTO `pv_values` VALUES (41,-2,'木星の内部は岩石コア(主に鉄とシリケイト)と氷層(氷マントル)、その外側に水素とヘリウムからなるガス層があるような三層の玉ねぎ構造と言われているわ。内部の情報は探査機の観測(惑星の重力場)から推定されているの。',2,999999);
INSERT INTO `pv_values` VALUES (42,-2,'地球の3倍程度の大きさがあるとされる赤い渦模様。正体は高気圧性の嵐で、反時計周りに約6日で一回転しているのよ。',2,999999);
INSERT INTO `pv_values` VALUES (43,-2,'南半球にあった白い斑点同士が合体した後、赤斑へと変化したのよ。',2,999999);
INSERT INTO `pv_values` VALUES (44,-2,'木星には3種類の雲があって、上からアンモニア、硫酸アンモニウム、水氷の雲があるとされているわ。こうした雲の中は、雷や激しい嵐が起きていると推測されるのよ。',2,999999);
INSERT INTO `pv_values` VALUES (45,-2,'大気上層にはアンモニアや硫化水素が存在するとされているので、においを嗅ぐことが出来れば、卵の腐った臭いやアンモニア臭がするそうよ。あまり良い香りではないわね。',2,999999);
INSERT INTO `pv_values` VALUES (46,-2,'木星の表面は、美しい白色、黄色、赤色、橙色ととてもカラフルな縞模様で彩られているわ。こうした色合の理由はまだ、よく分かっていないのだけど、白色は雲、赤・橙・黄色は上昇流で運ばれて来た硫黄化合物やリンが原因ではないかと言われているわ。きれいね。',2,999999);
INSERT INTO `pv_values` VALUES (47,-2,'木星は太陽から遠く離れた極寒の地にいるため、表面の温度はおよそ -150度よ。そうした冷たい木星から近赤外線が強く放射されているの。一方で、木星内部は高温(最大で数万度)にあって、温かいお茶の中のような対流運動で熱が表面まで運ばれているの。',2,999999);
INSERT INTO `pv_values` VALUES (48,-2,'木星の内部にも水氷が存在するけど、この氷は地上の氷とは異なるのよ。木星の内部は高温且つ超高圧の環境下にあるため、中心付近ではプラズマ状態になっているの。また、海王星や天王星のような氷惑星でも、固体と液体の両方の性質を持つ超イオン流体のような特殊状態になっていたりするわ。',2,999999);
INSERT INTO `pv_values` VALUES (49,-2,'木星にも内側からハロー(Halo)、メイン(Main)、ゴッサマー(Gossamer)リングと呼ばれる3つのリングがあるわ。わたしが発見したのよ！最も外側のリングは、衛星アマルテアおよびテーベからの物質から構成されていると考えられていて、それぞれアマルテアゴッサマーリング、テーベゴッサマーリングと呼ばれているの。',2,999999);
INSERT INTO `pv_values` VALUES (50,-2,'木星の強い重力の影響で、小惑星帯と呼ばれる火星と木星の間にある領域にあった多くの小惑星は、遠く跳ね飛ばされた可能性があるの。一方で、地球にやってくる小惑星の軌道を曲げてくれて、地球に衝突するのを防いでくれていることもあるのよ。',2,999999);
INSERT INTO `pv_values` VALUES (51,-2,'木星の内部ではヘリウムの滴が雨として降っているわ。このヘリウムの滴には街角の店頭の明かり「ネオンサイン」で有名なネオンも溶けていると言われているの。また、大気上層には雲もあって、そこでも雨が降っている可能性があるのよ。
',2,999999);
/*!40000 ALTER TABLE `pv_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pv_words`
--

DROP TABLE IF EXISTS `pv_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pv_words` (
  `pvw_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pvw_word` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '正確なワード',
  `pvw_type` int(10) unsigned NOT NULL COMMENT 'ワードの種類。pv_typeテーブル参照',
  `pvw_value` bigint(20) unsigned NOT NULL COMMENT 'ワードの値。pv_valueテーブル参照',
  PRIMARY KEY (`pvw_id`),
  UNIQUE KEY `pvw_value` (`pvw_value`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pv_words`
--

LOCK TABLES `pv_words` WRITE;
/*!40000 ALTER TABLE `pv_words` DISABLE KEYS */;
INSERT INTO `pv_words` VALUES (1,'木星',1,1024);
INSERT INTO `pv_words` VALUES (2,'土星',1,2048);
INSERT INTO `pv_words` VALUES (3,'ヘリオスフィア',1,4096);
INSERT INTO `pv_words` VALUES (4,'リング',2,1);
INSERT INTO `pv_words` VALUES (5,'模様',2,2);
INSERT INTO `pv_words` VALUES (6,'サイズ',2,8);
INSERT INTO `pv_words` VALUES (7,'木星の模様',2,4);
INSERT INTO `pv_words` VALUES (8,'衛星',2,16);
INSERT INTO `pv_words` VALUES (9,'組成',2,32);
INSERT INTO `pv_words` VALUES (10,'磁場',2,64);
INSERT INTO `pv_words` VALUES (11,'可愛い',2,128);
INSERT INTO `pv_words` VALUES (12,'土星の衛星',2,256);
/*!40000 ALTER TABLE `pv_words` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-22  8:11:00

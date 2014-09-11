/*
SQLyog v4.05
Host - 5.1.33-community : Database - sheaqu_dive
*********************************************************************
Server version : 5.1.33-community
*/


create database if not exists `sheaqu_dive`;

USE `sheaqu_dive`;

/*Table structure for table `sheaqu_dive`.`bulletin` */

drop table if exists `sheaqu_dive`.`bulletin`;

CREATE TABLE `bulletin` (
  `post_id` int(10) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(3000) DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `post_time` time DEFAULT NULL,
  `post_content` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `sheaqu_dive`.`bulletin` */

insert into `sheaqu_dive`.`bulletin` values (1,'test post','2009-10-06','14:05:00','test post'),(2,'second post','2009-10-07','14:33:00','second post so it should be first'),(3,'third post','2009-10-07','20:53:00','third post testing lng.'),(4,'forth post','2009-10-08','13:55:00','There’s a pretty good essay on Prime Minister Lee Hsien Loong’s call for young Singaporeans to “dare to dream” over at The Online Citizen. The gist of it is that this statement is highly ironic when interpreted against the realities on the ground, much of them the results of government policy. Predictably, the comment section is filled with comments that miss the bigger picture of the issue and see this as another scheduled anti-government ranting session, with the few thoughtful comments voted down.'),(9,'fifth post testing','2009-10-20','09:24:51','The upside of this is a heavy emphasis on foundational education in Singapore. This is why we do so well in international math and science competitions. The downside of this is a dearth of culture. This is why we do so poorly in journalism, literature, art, music and almost everything else. For you see, the only kind of culture that is worth anything is the kind that brings in tourist money. testing testing'),(8,'third post','2009-10-08','15:11:00','There’s a pretty good essay on Prime Minister Lee Hsien Loong’s call for young Singaporeans to “dare to dream” over at The Online Citizen. The gist of it is that this statement is highly ironic when interpreted against the realities on the ground, much of them the results of government policy. Predictably, the comment section is filled with comments that miss the bigger picture of the issue and see this as another scheduled anti-government ranting session, with the few thoughtful comments voted down.The government is no doubt a part of the problem, but it is the mentality of Singaporeans at large that has created a hostile environment for socially deviant dreams to take hold, and the same can be said for many Asian societies.As Westerners love to say, Asia is coming richer and richer. The rise of Japan, the Four Asian Tigers, China and India were/are the stables of any economics review. But rapid economic development brings with it deeply rooted social problems that go beyond stress or corruption. Whereas Western societies has had two hundred years and two World Wars to adapt their cultures to fit an industrialized world, Asia is attempting to do the same in the post-colonial era barely half-century old. Some say that Singapore is a successful example of such an endeavour, and they are right in many ways.Singapore is recognized by the IMF as an “advanced economy” and by the World Bank as a “high income economy”. It also ranks 28 on the Human Development Index, in the neighbourhood of Slovenia and Kuwait. By most measures of national success, Singapore, a country literally just over four decades old with no prior geopolitical equivalent (e.g. China is technically 60 years old but existed as a country long before that), is an exemplary one.But due to the sheer speed of its development, its overnight transformation from third world to first world took place without a corresponding advancement in social values. Unlike the economy, development of social values cannot be fast tracked even by the most efficient governments, try as they might.Foreigners visiting Singapore love to comment that it is a clean and beautiful place. The reality is that it is clean and beautiful because we have legions of imported workers who clean the roads of trash, sweep away the fallen leaves and repaint the chipping paint jobs every night and morning. In this case, economic success has allowed us to produce the appearance of social enlightenment. So hurray for us.However, developing a conducive environment for young people to chase after their aspirations is another ball game altogether. Asians in general are stuck in the survival state of social mentality. Having only recently climbed up the economic ladder, we are still shackled by the idea that money is everything in life.Our uneducated grandparents worked hard to buy a house and send our parents to school. Our parents worked hard to buy a bigger house and a car and send us to a better school in that car. With even bett');

/*Table structure for table `sheaqu_dive`.`comments` */

drop table if exists `sheaqu_dive`.`comments`;

CREATE TABLE `comments` (
  `comment_number` int(10) NOT NULL AUTO_INCREMENT,
  `com_name` char(255) DEFAULT NULL,
  `com_email` char(255) DEFAULT NULL,
  `com_comment` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`comment_number`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `sheaqu_dive`.`comments` */

insert into `sheaqu_dive`.`comments` values (1,'sherwin','-@-.com','There’s a pretty good essay on Prime Minister Lee Hsien Loong’s call for young Singaporeans to “dare to dream” over at The Online Citizen. The gist of it is that this statement is highly ironic when interpreted against the realities on the ground, much of them the results of government policy. Predictably, the comment section is filled with comments that miss the bigger picture of the issue and see this as another scheduled anti-government ranting session, with the few thoughtful comments voted down.'),(2,'Sherwin','-@-.com','askjdhakjdhakjdahjkdhakjdahkjdahkdjahkdjashkdaj');

/*Table structure for table `sheaqu_dive`.`cust_info` */

drop table if exists `sheaqu_dive`.`cust_info`;

CREATE TABLE `cust_info` (
  `customer_number` int(10) NOT NULL AUTO_INCREMENT,
  `dive_month` int(5) DEFAULT NULL,
  `dive_day` int(5) DEFAULT NULL,
  `dive_year` int(5) DEFAULT NULL,
  `dive_name` char(255) DEFAULT NULL,
  `company_name` char(50) DEFAULT NULL,
  `first_name` char(50) DEFAULT NULL,
  `last_name` char(50) DEFAULT NULL,
  `home_phone` int(20) DEFAULT NULL,
  `work_phone` int(20) DEFAULT NULL,
  `mobile_phone` int(20) DEFAULT NULL,
  `certificate` char(255) DEFAULT NULL,
  `pax` int(5) DEFAULT NULL,
  `80cuft` int(5) DEFAULT NULL,
  `67cuft` int(5) DEFAULT NULL,
  `rental` char(255) DEFAULT NULL,
  `rent_amount` double DEFAULT NULL,
  `dive_amount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `remarks` char(255) DEFAULT NULL,
  PRIMARY KEY (`customer_number`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COMMENT='customer information';

/*Data for the table `sheaqu_dive`.`cust_info` */

insert into `sheaqu_dive`.`cust_info` values (1,0,0,0,'customer','','','',0,0,0,'',0,0,0,'',0,0,0,'test'),(2,0,0,0,'','','','',0,0,0,'',0,0,0,'',0,0,0,'');

/*Table structure for table `sheaqu_dive`.`dive_info` */

drop table if exists `sheaqu_dive`.`dive_info`;

CREATE TABLE `dive_info` (
  `dive_number` int(10) NOT NULL AUTO_INCREMENT,
  `dive_month` int(5) DEFAULT NULL,
  `dive_day` int(5) DEFAULT NULL,
  `dive_year` int(4) DEFAULT NULL,
  `dive_name` char(255) DEFAULT NULL,
  `boat_name` char(255) DEFAULT NULL,
  `limits` int(10) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `marina` char(255) DEFAULT NULL,
  `marina_add` char(255) DEFAULT NULL,
  `alt_marina` char(255) DEFAULT NULL,
  `alt_marina_add` char(255) DEFAULT NULL,
  `showtime` char(255) DEFAULT NULL,
  `bbq` char(255) DEFAULT NULL,
  `remarks` char(255) DEFAULT NULL,
  PRIMARY KEY (`dive_number`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COMMENT='dive information';

/*Data for the table `sheaqu_dive`.`dive_info` */

insert into `sheaqu_dive`.`dive_info` values (1,1,1,2008,'','',0,0,'','','','','12:00 AM','',''),(2,1,1,2008,'dive','',0,0,'','','','','12:00 AM','',''),(6,1,1,2008,'','',0,0,'','','','','12:00 AM','',''),(7,1,1,2008,'','',0,0,'','','','','12:00 AM','',''),(9,1,1,2008,'','',0,0,'','','','','12:00 AM','',''),(11,1,1,2008,'test dive test','',0,0,'','','','','12:00 AM','',''),(12,1,1,2008,'test dive','',0,0,'','','','','12:30 PM','','');

/*Table structure for table `sheaqu_dive`.`main_bulletin` */

drop table if exists `sheaqu_dive`.`main_bulletin`;

CREATE TABLE `main_bulletin` (
  `post_id` int(10) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(3000) DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `post_time` time DEFAULT NULL,
  `post_content` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `sheaqu_dive`.`main_bulletin` */

insert into `sheaqu_dive`.`main_bulletin` values (1,'test post','2009-10-06','14:05:00','test post'),(2,'second post','2009-10-07','14:33:00','second post so it should be first'),(3,'third post','2009-10-07','20:53:00','third post testing lng.'),(4,'forth post','2009-10-08','13:55:00','There’s a pretty good essay on Prime Minister Lee Hsien Loong’s call for young Singaporeans to “dare to dream” over at The Online Citizen. The gist of it is that this statement is highly ironic when interpreted against the realities on the ground, much of them the results of government policy. Predictably, the comment section is filled with comments that miss the bigger picture of the issue and see this as another scheduled anti-government ranting session, with the few thoughtful comments voted down.'),(10,'fifth post','2009-10-13','11:10:00','123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345123451234512345'),(13,'modified post','2009-10-17','11:04:35','wahahahahaha Modified!BAM!!!'),(14,'wahahahahaha','2009-10-16','00:00:00','wahahahahaha');

/*Table structure for table `sheaqu_dive`.`main_bulletin2` */

drop table if exists `sheaqu_dive`.`main_bulletin2`;

CREATE TABLE `main_bulletin2` (
  `post_id` int(10) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(1000) DEFAULT NULL,
  `post_date` char(255) DEFAULT NULL,
  `post_time` time DEFAULT NULL,
  `post_content` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `sheaqu_dive`.`main_bulletin2` */

insert into `sheaqu_dive`.`main_bulletin2` values (1,'first post','September 06, 2009','14:05:00','test post'),(2,'Second Post','September 07, 2009','14:33:00','second post so it should be first'),(3,'third post','September 07, 2009','20:53:00','third post testing lng.'),(4,'fourth post','September 08, 2009','13:55:00','There’s a pretty good essay on Prime Minister Lee Hsien Loong’s call for young Singaporeans to “dare to dream” over at The Online Citizen. The gist of it is that this statement is highly ironic when interpreted against the realities on the ground, much of them the results of government policy. Predictably, the comment section is filled with comments that miss the bigger picture of the issue and see this as another scheduled anti-government ranting session, with the few thoughtful comments voted down.');

/*Table structure for table `sheaqu_dive`.`main_comments` */

drop table if exists `sheaqu_dive`.`main_comments`;

CREATE TABLE `main_comments` (
  `comment_number` int(10) NOT NULL AUTO_INCREMENT,
  `com_name` char(255) DEFAULT NULL,
  `com_email` char(255) DEFAULT NULL,
  `com_comment` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`comment_number`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

/*Data for the table `sheaqu_dive`.`main_comments` */

insert into `sheaqu_dive`.`main_comments` values (5,'sherwin lester','-@-.com','bwahahahahahahahahaha'),(12,'sighs','-@-.com','Comment Banned.'),(11,'sigh...','-@-com','askjdhasjkdahasdasdaasdasd'),(19,'lest','-@-.com','There’s a pretty good essay on Prime Minister Lee Hsien Loong’s call for young Singaporeans to “dare to dream” over at The Online Citizen. The gist of it is that this statement is highly ironic when interpreted against the realities on the ground, much of them the results of government policy. Predictably, the comment section is filled with comments that miss the bigger picture of the issue and see this as another scheduled anti-government ranting session, with the few thoughtful comments voted down.'),(42,'test','-@.com','test'),(43,'test','-@.com','test');

/*Table structure for table `sheaqu_dive`.`members` */

drop table if exists `sheaqu_dive`.`members`;

CREATE TABLE `members` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(65) NOT NULL,
  `password` varchar(65) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `sheaqu_dive`.`members` */

insert into `sheaqu_dive`.`members` values (2,'admin','admin');

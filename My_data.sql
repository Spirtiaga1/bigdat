#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` (`id`, `name`) VALUES (12, 'adipisci');
INSERT INTO `communities` (`id`, `name`) VALUES (8, 'assumenda');
INSERT INTO `communities` (`id`, `name`) VALUES (9, 'autem');
INSERT INTO `communities` (`id`, `name`) VALUES (11, 'culpa');
INSERT INTO `communities` (`id`, `name`) VALUES (3, 'dolor');
INSERT INTO `communities` (`id`, `name`) VALUES (6, 'explicabo');
INSERT INTO `communities` (`id`, `name`) VALUES (7, 'maxime');
INSERT INTO `communities` (`id`, `name`) VALUES (14, 'omnis');
INSERT INTO `communities` (`id`, `name`) VALUES (13, 'provident');
INSERT INTO `communities` (`id`, `name`) VALUES (10, 'ratione');
INSERT INTO `communities` (`id`, `name`) VALUES (15, 'sint');
INSERT INTO `communities` (`id`, `name`) VALUES (4, 'soluta');
INSERT INTO `communities` (`id`, `name`) VALUES (2, 'tempora');
INSERT INTO `communities` (`id`, `name`) VALUES (1, 'vero');
INSERT INTO `communities` (`id`, `name`) VALUES (5, 'vitae');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 46);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 72);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 100);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 53);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 81);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 42);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 8);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 17);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (11, 24);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (13, 54);


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `requested_ad` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_ad`, `confirmed_at`) VALUES (33, 81, 2, '1989-10-02 06:46:23', '1975-12-10 17:45:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_ad`, `confirmed_at`) VALUES (48, 92, 1, '1993-02-16 01:00:54', '2017-10-19 04:34:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_ad`, `confirmed_at`) VALUES (63, 60, 4, '1992-10-19 12:28:01', '1997-07-02 05:11:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_ad`, `confirmed_at`) VALUES (71, 41, 1, '2019-07-04 00:22:55', '1995-01-10 20:59:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_ad`, `confirmed_at`) VALUES (77, 80, 5, '1976-12-09 09:58:40', '2001-09-09 15:32:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_ad`, `confirmed_at`) VALUES (78, 91, 5, '1983-07-05 16:03:51', '1994-08-18 11:03:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_ad`, `confirmed_at`) VALUES (85, 65, 1, '2005-01-09 12:06:39', '1979-07-18 05:30:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_ad`, `confirmed_at`) VALUES (88, 47, 4, '1971-01-13 17:57:59', '1993-09-23 00:56:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_ad`, `confirmed_at`) VALUES (95, 46, 5, '1974-09-13 11:35:25', '1993-06-29 09:26:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_ad`, `confirmed_at`) VALUES (98, 90, 3, '2011-10-09 19:01:13', '1971-09-05 09:34:19');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (1, 'eum');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (3, 'ipsam');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (5, 'magnam');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (2, 'mollitia');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (4, 'rerum');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (1, 2, 74, 'ut', 254, 'http://barrows.net/', '2011-06-07 23:52:21', '1999-09-24 20:46:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (2, 2, 42, 'eos', 65817116, 'http://hermistoncorkery.com/', '1980-02-22 09:44:16', '1995-08-05 03:41:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (3, 1, 2, 'dignissimos', 677241240, 'http://rippin.com/', '1976-01-06 08:41:16', '1973-10-30 05:44:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (4, 1, 6, 'nemo', 86763340, 'http://ondricka.com/', '2012-11-10 05:59:18', '1991-09-10 13:14:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (5, 3, 86, 'non', 392333, 'http://www.johnston.net/', '1981-06-07 06:57:47', '2014-09-24 20:51:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (6, 3, 94, 'alias', 687957, 'http://www.bauchnader.net/', '1984-06-26 17:28:31', '2004-04-30 03:58:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (7, 2, 19, 'fugiat', 8945, 'http://www.jacobiaufderhar.com/', '1983-10-05 03:52:23', '1978-04-24 13:53:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (8, 2, 31, 'autem', 55426875, 'http://rohan.com/', '1995-10-07 17:33:31', '2002-07-19 14:11:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (9, 3, 16, 'sunt', 8, 'http://gibson.info/', '2010-09-25 21:18:56', '2006-02-25 19:04:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (10, 1, 6, 'tempora', 0, 'http://www.riceokeefe.biz/', '1985-12-07 01:16:49', '2000-05-07 16:56:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (11, 1, 56, 'ut', 7717, 'http://adamsstamm.net/', '1982-04-27 11:05:12', '1999-09-12 10:05:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (12, 2, 4, 'omnis', 64, 'http://www.greenholt.com/', '2005-07-07 22:06:44', '2018-09-20 09:54:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (13, 3, 77, 'et', 77, 'http://www.schuster.com/', '1986-01-16 18:51:45', '2006-02-09 09:18:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (14, 2, 18, 'accusamus', 0, 'http://kilbackvonrueden.com/', '2018-10-11 17:18:11', '1983-04-01 21:31:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (15, 3, 12, 'officiis', 0, 'http://schmeler.com/', '2016-12-01 02:44:32', '2004-05-28 12:13:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (16, 1, 100, 'officiis', 85690120, 'http://www.mcculloughabbott.com/', '1972-02-09 07:20:28', '2014-10-03 14:49:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (17, 3, 35, 'magnam', 2, 'http://walkershields.org/', '2000-11-23 21:37:48', '1990-08-26 20:24:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (18, 3, 57, 'dolor', 81, 'http://www.kihnweber.com/', '2008-08-01 02:03:42', '2002-08-10 06:49:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (19, 1, 95, 'et', 94144899, 'http://www.williamsondietrich.biz/', '1981-12-21 06:42:57', '1996-10-14 07:02:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (20, 1, 29, 'asperiores', 53, 'http://www.miller.biz/', '2003-01-28 10:17:39', '1985-07-15 03:18:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (21, 3, 18, 'dolores', 0, 'http://rempel.org/', '2002-12-13 01:40:06', '1996-08-12 21:43:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (22, 1, 72, 'sequi', 790035, 'http://weimann.com/', '1984-03-30 04:51:18', '1983-01-06 21:38:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (23, 1, 8, 'consequatur', 22770, 'http://www.gleason.com/', '1987-06-09 14:33:24', '1970-05-16 19:37:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (24, 1, 65, 'amet', 786346, 'http://www.crona.org/', '2004-11-05 20:27:42', '1974-07-21 02:54:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (25, 3, 60, 'quasi', 52, 'http://www.keeling.com/', '1986-06-15 16:31:46', '1996-12-14 03:26:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (26, 1, 94, 'dolor', 9904576, 'http://www.swiftwintheiser.net/', '2003-11-26 14:22:08', '2017-01-23 03:04:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (27, 2, 85, 'dicta', 7, 'http://www.lubowitzhuel.com/', '1998-06-18 02:17:35', '1995-02-16 22:39:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (28, 3, 2, 'id', 206, 'http://hessel.com/', '1985-03-24 18:49:46', '2012-06-17 03:46:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (29, 1, 84, 'iusto', 60, 'http://www.pagac.com/', '1995-12-28 03:52:13', '2002-07-28 06:00:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (30, 2, 100, 'molestiae', 4443, 'http://weber.com/', '1971-02-09 23:57:49', '2011-02-18 21:23:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (31, 1, 64, 'labore', 85634, 'http://www.bahringer.com/', '1998-05-23 03:27:19', '1989-01-21 14:36:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (32, 2, 8, 'iste', 35843, 'http://www.waters.com/', '2014-04-06 15:44:07', '2015-08-29 19:28:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (33, 3, 39, 'facilis', 67, 'http://muellerhills.com/', '1973-10-20 01:05:39', '2016-04-23 23:20:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (34, 1, 6, 'ipsum', 4, 'http://dietrich.com/', '1992-09-09 22:52:23', '2014-12-23 05:03:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (35, 2, 75, 'tempora', 2, 'http://kuhlmanward.com/', '1978-11-13 06:09:39', '2000-05-12 16:08:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (36, 3, 33, 'impedit', 0, 'http://klein.org/', '1979-11-05 11:42:13', '2016-08-14 22:35:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (37, 1, 93, 'illo', 47500, 'http://www.beattyeffertz.com/', '1992-01-30 00:34:26', '2011-07-06 17:00:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (38, 1, 38, 'eos', 83421, 'http://schultz.com/', '1996-11-25 01:55:48', '1994-06-16 07:15:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (39, 2, 47, 'temporibus', 221110, 'http://www.oconnell.com/', '1977-08-03 05:32:38', '1972-07-09 04:01:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (40, 2, 20, 'qui', 6, 'http://schultz.com/', '1995-10-21 15:29:12', '1973-02-19 01:26:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (41, 1, 34, 'in', 899766968, 'http://www.botsford.com/', '1987-05-05 16:41:38', '2008-03-23 03:40:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (42, 3, 80, 'magnam', 8809, 'http://www.jerdemckenzie.com/', '1975-10-01 05:00:02', '2004-09-11 14:49:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (43, 3, 73, 'voluptas', 550, 'http://thiel.com/', '1975-04-05 06:51:55', '1994-01-27 12:02:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (44, 3, 97, 'unde', 504747474, 'http://stanton.com/', '2001-05-01 13:26:08', '1994-10-14 01:50:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (45, 3, 91, 'laudantium', 336, 'http://www.torphygreenfelder.net/', '2002-07-01 17:55:23', '2008-05-08 15:24:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (46, 1, 28, 'in', 36321, 'http://wintheiser.com/', '2001-02-14 14:23:29', '1996-08-22 14:07:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (47, 3, 55, 'dicta', 2207, 'http://www.hyatt.com/', '2011-03-29 17:39:49', '1996-06-15 10:49:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (48, 1, 23, 'alias', 9585788, 'http://heidenreich.com/', '2009-01-05 05:37:37', '1996-12-02 04:31:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (49, 2, 24, 'facilis', 8588328, 'http://wuckert.com/', '1991-08-07 00:33:31', '1983-05-28 02:04:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (50, 3, 38, 'harum', 132980, 'http://reillycormier.com/', '2009-07-02 14:24:41', '1974-03-04 06:36:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (51, 1, 17, 'nisi', 2909470, 'http://www.braun.biz/', '2010-08-01 22:56:38', '2000-10-16 18:57:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (52, 2, 19, 'sed', 4, 'http://bogisich.com/', '1999-02-14 01:59:45', '1980-12-23 18:36:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (53, 2, 67, 'rem', 5, 'http://www.lindlemke.com/', '1999-10-11 06:17:03', '1978-10-23 14:30:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (54, 2, 44, 'eligendi', 38, 'http://kihn.com/', '1981-01-20 16:17:51', '1998-10-09 13:59:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (55, 2, 82, 'quas', 4854031, 'http://www.hoegerhilpert.info/', '1991-07-21 03:28:17', '1974-12-26 19:49:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (56, 1, 54, 'tempore', 3, 'http://treutelhalvorson.com/', '2005-05-21 12:39:49', '1982-11-30 18:25:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (57, 2, 28, 'ut', 7457, 'http://www.dicki.com/', '1981-02-16 13:13:46', '1971-06-20 13:38:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (58, 1, 54, 'totam', 4, 'http://pouroswelch.com/', '1994-11-03 12:17:28', '2014-01-19 05:14:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (59, 1, 49, 'ipsa', 0, 'http://www.bauch.biz/', '1982-04-27 04:42:01', '1983-09-05 16:11:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (60, 1, 88, 'molestiae', 55, 'http://www.sauerblanda.com/', '2009-11-21 15:57:18', '1978-11-09 04:33:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (61, 3, 40, 'voluptatem', 968, 'http://maggioritchie.info/', '2014-01-18 10:24:39', '1972-11-20 02:41:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (62, 2, 82, 'sunt', 6401168, 'http://www.mohr.com/', '2017-07-19 01:34:41', '1983-10-06 20:40:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (63, 2, 17, 'quas', 61, 'http://www.yost.com/', '2001-07-29 22:22:31', '2017-01-06 18:24:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (64, 3, 44, 'voluptatem', 7913768, 'http://gerhold.org/', '1997-01-24 19:07:01', '1987-12-21 20:26:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (65, 3, 94, 'sunt', 9517, 'http://little.com/', '2014-10-08 13:22:35', '1976-08-27 08:11:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (66, 3, 11, 'sit', 85626256, 'http://www.gleichnerdickens.com/', '1975-05-13 20:40:10', '1984-03-02 09:20:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (67, 3, 21, 'voluptatem', 2141, 'http://www.mckenzie.com/', '1993-07-24 07:28:49', '1994-12-05 03:15:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (68, 3, 64, 'sit', 83815, 'http://feestsporer.com/', '1981-02-03 02:42:50', '1992-08-31 06:36:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (69, 1, 12, 'est', 79159657, 'http://www.langworth.org/', '1988-01-28 07:31:25', '2002-10-24 04:12:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (70, 1, 8, 'harum', 64512483, 'http://thielmosciski.com/', '2000-05-04 01:04:07', '2008-09-13 23:02:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (71, 2, 13, 'voluptas', 4, 'http://www.mosciski.com/', '1977-10-09 23:28:04', '2008-10-29 02:44:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (72, 1, 92, 'fugit', 5, 'http://www.legros.biz/', '1976-08-12 23:29:49', '1994-02-12 03:40:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (73, 3, 92, 'quos', 25, 'http://padberg.com/', '2002-02-16 23:25:43', '1992-10-07 19:09:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (74, 2, 66, 'eum', 4474077, 'http://schimmel.com/', '1995-06-27 19:45:42', '2007-07-25 22:59:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (75, 2, 90, 'inventore', 8, 'http://baumbach.com/', '1970-08-26 11:31:01', '1994-02-18 11:35:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (76, 1, 23, 'autem', 736, 'http://www.brownosinski.com/', '2000-07-16 06:06:02', '1981-03-31 12:33:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (77, 2, 70, 'voluptatem', 0, 'http://schimmel.biz/', '2006-04-22 11:14:25', '1989-09-23 18:38:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (78, 3, 69, 'ut', 85842, 'http://bashirianbruen.com/', '2005-11-08 00:33:29', '1976-05-05 22:50:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (79, 2, 100, 'aspernatur', 28, 'http://wisozkmitchell.com/', '1998-03-28 13:05:22', '1997-11-20 19:26:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (80, 3, 91, 'sed', 7, 'http://mohr.net/', '1970-12-17 17:38:18', '1977-08-17 02:27:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (81, 2, 8, 'occaecati', 810687, 'http://flatleymuller.net/', '2001-03-15 20:57:20', '1978-03-31 03:25:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (82, 3, 40, 'et', 4041, 'http://www.trantowkoepp.com/', '1986-08-27 02:01:40', '1972-12-22 13:20:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (83, 2, 6, 'sunt', 0, 'http://www.weissnat.com/', '1979-05-12 19:36:37', '1998-10-27 14:45:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (84, 1, 38, 'nostrum', 818040, 'http://keebler.org/', '2010-02-09 19:08:31', '2010-11-06 08:13:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (85, 3, 33, 'hic', 8, 'http://www.beatty.com/', '1988-08-02 07:42:13', '2013-12-23 11:39:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (86, 2, 87, 'atque', 8739, 'http://www.cartwright.com/', '1976-12-28 01:35:50', '1991-04-27 20:18:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (87, 3, 44, 'adipisci', 18615069, 'http://www.shields.biz/', '2017-05-30 06:41:44', '1999-06-05 20:11:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (88, 3, 12, 'dicta', 916, 'http://www.mcglynnconn.biz/', '1985-04-24 06:13:47', '2014-02-18 16:44:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (89, 1, 11, 'enim', 0, 'http://www.cole.com/', '1974-09-11 13:52:22', '1991-05-31 17:23:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (90, 1, 82, 'ex', 81, 'http://homenickmayert.info/', '1993-10-22 07:42:36', '1982-05-17 14:28:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (91, 2, 74, 'at', 39, 'http://www.parisian.com/', '1990-08-01 01:32:38', '1997-10-15 16:07:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (92, 2, 71, 'vel', 0, 'http://brakusherman.net/', '1970-12-13 03:22:10', '2013-03-22 19:30:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (93, 3, 96, 'autem', 53, 'http://www.grady.com/', '1972-08-12 19:52:38', '2017-09-10 06:42:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (94, 2, 43, 'cumque', 93551883, 'http://www.howellswaniawski.com/', '2014-03-20 21:27:32', '2012-03-23 16:14:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (95, 2, 73, 'est', 4, 'http://www.schroeder.net/', '1973-07-31 17:39:15', '2002-10-26 09:29:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (96, 1, 45, 'qui', 88, 'http://www.kerluke.info/', '1984-08-30 16:18:48', '1991-09-08 23:16:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (97, 1, 45, 'modi', 2163, 'http://www.collier.com/', '1970-09-25 22:06:20', '1992-05-08 02:06:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (98, 1, 2, 'fugiat', 122, 'http://bahringerhammes.com/', '1990-12-25 09:31:38', '1985-12-27 22:10:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (99, 3, 96, 'voluptas', 0, 'http://ryananderson.net/', '1974-04-13 11:43:30', '2018-02-11 22:32:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (100, 3, 44, 'sit', 87307604, 'http://www.damore.com/', '1991-01-18 14:59:12', '2010-02-27 22:58:10');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` (`id`, `name`) VALUES (1, 'dolores');
INSERT INTO `media_types` (`id`, `name`) VALUES (3, 'magni');
INSERT INTO `media_types` (`id`, `name`) VALUES (2, 'quis');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 34, 65, 'Ea fugit ut ut architecto dolor et vel.', 0, 1, '1978-01-02 04:10:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 94, 26, 'Placeat aut sit nobis minima.', 1, 0, '1985-07-02 12:20:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 20, 23, 'Architecto quibusdam aut deleniti illum labore aut.', 0, 1, '1973-01-19 14:02:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 78, 76, 'Id qui sit id.', 0, 1, '2001-11-20 14:12:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 84, 99, 'Voluptatem harum qui aut non nisi.', 0, 1, '1996-08-03 05:29:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 72, 50, 'Doloremque perferendis ut minus error sint ad a.', 1, 0, '2014-07-06 04:35:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 9, 25, 'Sint quasi et similique et autem maiores dolorum.', 0, 0, '1983-06-23 01:23:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 4, 49, 'Dolore nulla alias aut aut aliquam culpa cumque.', 1, 1, '1984-01-24 19:46:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 44, 80, 'Eos quos debitis sint ab et eum odio.', 0, 0, '1971-05-27 21:57:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 19, 2, 'Ab commodi ut et aut nihil ipsam.', 1, 0, '1991-03-18 13:29:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 66, 87, 'Nam perspiciatis et est veniam assumenda illum.', 1, 0, '1998-06-27 10:15:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 97, 15, 'Voluptas qui eius quis quia temporibus expedita molestias et.', 0, 1, '1994-10-13 11:09:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 40, 20, 'Dignissimos rerum consequuntur officia.', 1, 1, '1977-10-24 22:04:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 86, 79, 'Sint saepe molestiae rem ratione iste assumenda.', 0, 1, '2005-01-07 06:15:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 27, 47, 'Accusantium aliquam est similique dolores recusandae labore voluptatum.', 0, 1, '2019-01-25 08:07:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 83, 60, 'Optio sed eos quis qui voluptatem molestiae suscipit.', 0, 0, '1994-12-01 21:33:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 60, 84, 'Ut temporibus minima odit et qui.', 1, 1, '2010-04-10 20:03:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 15, 82, 'Corrupti optio sint assumenda voluptate non.', 0, 0, '1977-07-15 22:52:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 71, 54, 'Et quaerat excepturi labore.', 1, 1, '2017-05-29 01:48:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 60, 85, 'Et vel doloribus quas cumque corrupti.', 0, 0, '2018-10-13 05:52:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 31, 86, 'Tenetur error eveniet fugit voluptatem id qui illum.', 0, 0, '2013-06-07 00:25:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 21, 61, 'Laborum ratione a et.', 1, 1, '1981-09-11 09:26:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 39, 43, 'Doloremque veritatis et nisi culpa in quasi dolore.', 0, 1, '1983-11-22 15:43:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 86, 99, 'Aut assumenda et deleniti laborum quisquam veritatis est.', 1, 1, '1987-06-08 12:09:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 56, 77, 'Earum harum voluptatum hic facere labore ipsum quisquam.', 0, 0, '1970-09-18 05:34:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 66, 93, 'Dolores quo nihil voluptatem et deleniti nesciunt eos.', 0, 0, '1973-08-31 01:22:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 68, 20, 'Illum quis doloribus odio omnis aspernatur non explicabo laboriosam.', 1, 0, '1987-08-08 19:55:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 89, 86, 'Itaque aut eos velit dolores odio asperiores.', 1, 0, '1983-11-19 23:40:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 64, 10, 'Saepe nulla eligendi velit impedit et maiores nihil.', 0, 1, '2015-05-01 08:57:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 53, 48, 'Soluta et velit rem dolorem esse laborum sed.', 1, 0, '2016-02-20 12:03:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 61, 81, 'Ad ut quo eum qui.', 1, 0, '1997-04-06 12:04:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 1, 88, 'Molestias inventore voluptas nam odio ex.', 0, 1, '1999-05-16 15:40:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 15, 88, 'Ducimus recusandae quas perspiciatis.', 0, 1, '1972-11-15 15:53:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 71, 91, 'Expedita quis amet deserunt corrupti corporis accusantium perferendis.', 1, 0, '2008-07-20 16:00:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 73, 55, 'Qui voluptates est veniam et.', 0, 0, '1970-09-13 22:18:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 18, 34, 'Veritatis ipsum commodi animi quis mollitia.', 0, 0, '1980-05-10 13:59:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 86, 76, 'Dicta molestiae quis officiis.', 1, 1, '1982-12-10 17:16:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 75, 92, 'Eos in reprehenderit magnam.', 0, 0, '2008-03-16 14:50:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 48, 93, 'Aut molestiae error asperiores eaque totam dolore perspiciatis.', 1, 1, '2015-11-12 02:52:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 88, 73, 'Voluptatem asperiores officia quos.', 1, 0, '2018-05-30 11:05:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 7, 35, 'Voluptate placeat consectetur porro amet aut numquam.', 1, 0, '2004-02-14 16:34:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 65, 98, 'Officiis animi odio est omnis ducimus officiis voluptatem maxime.', 1, 0, '2012-06-30 05:02:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 28, 7, 'Inventore qui quis quaerat illum accusantium.', 1, 0, '1973-01-18 12:42:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 72, 69, 'Et culpa nostrum quaerat id aspernatur sit libero amet.', 1, 0, '2007-06-23 05:55:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 29, 6, 'Aspernatur quae veniam vero molestiae maxime impedit.', 1, 1, '2016-06-11 14:51:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 31, 93, 'Quo sapiente voluptatum veritatis mollitia nisi quasi.', 0, 0, '2010-07-29 02:49:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 71, 47, 'Sed suscipit deserunt inventore voluptas est hic impedit.', 1, 1, '2010-07-14 04:05:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 62, 88, 'Tempora est voluptatem et corporis delectus.', 0, 1, '2017-12-19 20:03:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 54, 44, 'Non ad fuga vitae quisquam.', 0, 1, '1987-01-20 17:37:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 25, 19, 'Id et repudiandae eos architecto sed temporibus qui.', 0, 0, '1991-06-23 12:53:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 5, 54, 'Inventore harum quaerat excepturi cum enim aut sed.', 1, 0, '1989-06-27 18:05:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 42, 51, 'Fugiat eos ut ut sint debitis ut odit.', 0, 1, '2004-07-18 22:46:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 4, 94, 'Iste vel in tempore expedita aliquam enim provident magni.', 0, 1, '2003-02-25 18:41:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 66, 71, 'Ipsa dolore et neque facere sapiente.', 0, 1, '1982-07-18 13:13:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 87, 71, 'Et impedit debitis omnis mollitia voluptatem.', 0, 0, '1972-07-06 15:26:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 81, 37, 'Ad odio hic qui.', 1, 0, '2014-06-23 16:58:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 54, 65, 'Minima nesciunt rem adipisci.', 0, 1, '2007-09-27 03:41:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 39, 60, 'Quis animi ut dolorem mollitia sit.', 1, 0, '1995-10-26 13:55:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 94, 88, 'Voluptate quia aut beatae consequuntur sit voluptates non.', 0, 1, '1978-03-20 20:30:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 61, 100, 'Enim eligendi optio et nostrum nesciunt cupiditate.', 0, 0, '2000-04-23 22:58:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 82, 84, 'Et doloribus corporis eligendi ducimus dolores eaque.', 1, 1, '2015-10-10 02:00:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 80, 23, 'Qui aspernatur placeat eum sunt.', 0, 1, '1974-10-17 05:04:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 67, 58, 'Est ad dicta sed aspernatur.', 0, 1, '1972-12-03 10:01:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 94, 67, 'Praesentium dolores tempore consequatur dolores qui.', 1, 1, '1986-06-27 06:11:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 89, 43, 'Atque asperiores inventore qui omnis in.', 1, 0, '1983-12-27 09:08:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 61, 51, 'Distinctio cumque recusandae recusandae molestiae vitae.', 0, 0, '1987-07-07 23:41:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 5, 95, 'Ipsam minus suscipit vitae ut quia.', 1, 0, '2014-02-10 01:35:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 40, 33, 'Velit beatae itaque quia incidunt aliquam eveniet.', 1, 0, '1990-01-04 20:42:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 18, 15, 'Dolor magni quis neque quis debitis voluptas consequatur officiis.', 0, 1, '1991-06-17 23:07:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 3, 96, 'Est quaerat similique eum aspernatur non rerum quaerat.', 1, 0, '1974-05-26 16:35:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 45, 84, 'Nobis incidunt vel nesciunt maiores saepe inventore facere.', 0, 1, '2006-11-03 06:18:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 58, 39, 'Nemo dolore dolore odit officia.', 0, 0, '2004-08-07 07:51:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 40, 63, 'Ut quia consectetur quisquam vero eaque quidem.', 0, 0, '1995-07-30 00:56:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 30, 60, 'Distinctio quo explicabo qui sed vitae totam nobis.', 0, 0, '1989-10-16 06:43:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 58, 58, 'Perspiciatis et non exercitationem repellat amet sed et sed.', 1, 1, '2009-07-26 10:21:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 21, 85, 'Modi omnis numquam magnam sint dolor non dolores.', 1, 1, '2014-11-29 21:29:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 66, 32, 'Nisi consequatur maiores aut ut dolore labore.', 0, 1, '2006-12-19 10:48:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 19, 9, 'Soluta culpa aut non aut quisquam.', 1, 1, '2011-01-31 04:27:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 15, 2, 'Et occaecati cupiditate eos dolor est labore ipsa.', 1, 0, '1978-10-22 00:19:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 65, 68, 'Nulla illo eum qui quis.', 0, 1, '1991-10-25 08:20:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 70, 12, 'Ea voluptas temporibus ipsa sit quis vel et.', 1, 1, '1993-01-01 07:53:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 86, 33, 'Quia quaerat sunt magnam optio ratione.', 0, 1, '2002-10-16 17:54:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 89, 12, 'Recusandae facere qui aut soluta velit dignissimos.', 1, 0, '2019-06-24 02:42:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 12, 94, 'Quod praesentium corrupti qui quo excepturi.', 0, 1, '1976-10-21 16:15:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 90, 98, 'Dignissimos totam magnam animi.', 1, 1, '2018-07-06 00:25:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 73, 27, 'Praesentium qui voluptatem vel quos.', 1, 1, '1997-02-16 22:18:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 45, 20, 'Quasi ullam vel quis et illo.', 0, 1, '1970-09-23 02:18:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 60, 47, 'Architecto eveniet cum minima doloribus modi atque ipsum voluptatibus.', 1, 1, '2002-06-12 22:58:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 89, 12, 'Minus aut aperiam magnam.', 0, 1, '1994-02-06 06:50:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 50, 86, 'Ipsum ea quasi numquam soluta repellendus.', 1, 1, '2001-04-03 16:21:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 14, 19, 'Magni quasi suscipit veniam quia illum qui corrupti consequatur.', 1, 0, '2005-04-12 09:31:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 78, 50, 'Hic sequi maxime non minus qui nihil praesentium inventore.', 0, 0, '2019-08-17 16:55:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 94, 6, 'Hic ullam repellat unde nemo nemo dignissimos in.', 0, 0, '1973-01-09 06:58:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 29, 73, 'Nulla et ut autem ducimus veritatis ex.', 0, 1, '2011-06-26 03:46:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 87, 38, 'Voluptates aliquam est aspernatur omnis odit praesentium.', 0, 1, '1977-02-15 00:16:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 30, 88, 'Esse officia vel blanditiis in illum impedit.', 0, 0, '1980-03-27 10:49:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 68, 49, 'A porro neque qui et cumque et sed.', 1, 0, '1992-03-24 22:14:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 18, 28, 'Quisquam distinctio sit accusantium quo aut sint.', 1, 1, '1997-10-01 13:52:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 63, 10, 'Necessitatibus cupiditate id nostrum error.', 0, 1, '2018-03-20 05:16:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 91, 33, 'Ipsum ut rerum iure sint sit.', 1, 0, '1992-10-12 10:04:50');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `sex` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (1, 'm', '1999-11-16', 'Lake Delores', 769136663);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (2, 'm', '2012-03-03', 'Lake Bennettville', 713817563);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (3, 'm', '2013-04-09', 'New Cornell', 995783957);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (4, 'm', '1984-08-25', 'Lake Michael', 807647743);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (5, 'f', '2003-03-05', 'Port Mario', 795233532);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (6, 'm', '1998-05-26', 'Kristinhaven', 307650914);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (7, 'm', '2008-01-30', 'Chetburgh', 772929174);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (8, 'f', '2000-06-01', 'New Cortneyborough', 15683210);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (9, 'm', '2002-04-11', 'East Jammiechester', 701355760);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (10, 'm', '1995-02-12', 'South Jeffreymouth', 43417670);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (11, 'm', '2013-07-22', 'Haileefurt', 377340473);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (12, 'f', '1971-09-05', 'North Garry', 620005632);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (13, 'f', '1987-03-16', 'Pacochabury', 730624810);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (14, 'm', '1971-09-07', 'Bradtkestad', 49397765);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (15, 'f', '1984-12-26', 'Homenickfurt', 432224070);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (16, 'f', '1986-11-15', 'North Sarai', 818709737);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (17, 'f', '1988-08-21', 'Paucekburgh', 836395492);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (18, 'f', '1980-10-03', 'South Kayceefort', 576208349);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (19, 'm', '1995-12-25', 'Destineymouth', 702065479);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (20, 'm', '2007-02-17', 'Schaeferland', 466855968);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (21, 'm', '1989-05-11', 'Lake Torey', 760236539);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (22, 'f', '2018-04-02', 'Lake Parkerburgh', 233648196);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (23, 'f', '1999-07-23', 'Ilaburgh', 976651420);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (24, 'f', '2006-02-28', 'Kavonchester', 422943320);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (25, 'm', '2009-08-31', 'North Santahaven', 879655510);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (26, 'f', '1998-08-14', 'Estefaniaside', 110020500);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (27, 'm', '2018-04-15', 'Mylesport', 321929987);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (28, 'f', '1982-06-06', 'East Leslychester', 513813169);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (29, 'f', '1974-09-24', 'North Kyleigh', 943343133);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (30, 'm', '1992-12-23', 'Lake Andreane', 680781209);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (31, 'f', '2013-03-14', 'West Jared', 942042863);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (32, 'f', '1975-04-02', 'North Franzberg', 908024547);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (33, 'm', '1990-08-19', 'East Lenorafort', 440832157);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (34, 'f', '1989-04-09', 'Reillyside', 808821685);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (35, 'm', '2018-08-30', 'Lilyfurt', 189150690);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (36, 'f', '2008-05-04', 'Monicaburgh', 419654796);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (37, 'f', '1988-09-23', 'Conradfort', 290934324);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (38, 'm', '1977-07-15', 'Lake Millie', 188676749);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (39, 'f', '1985-03-20', 'New Adella', 204811950);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (40, 'f', '1996-12-16', 'Port Aiyanashire', 937535720);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (41, 'f', '2001-03-07', 'Tyraberg', 544611584);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (42, 'm', '1974-12-30', 'Port Deja', 548644882);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (43, 'm', '1984-02-19', 'North Maudie', 795265173);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (44, 'f', '2017-06-07', 'North Evalyn', 761335764);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (45, 'f', '2017-01-05', 'Mckaylafurt', 776633057);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (46, 'm', '2014-03-17', 'Erdmanberg', 970898884);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (47, 'm', '1973-02-23', 'Janaeton', 202138958);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (48, 'f', '2005-05-07', 'Juniusview', 571170188);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (49, 'm', '2008-01-31', 'Port Maximillia', 777053960);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (50, 'm', '1998-05-05', 'New Kaya', 222553451);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (51, 'm', '1985-05-12', 'Vallieland', 306995729);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (52, 'm', '1985-05-08', 'East Shawna', 416825534);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (53, 'f', '2018-11-05', 'New Orin', 104046721);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (54, 'f', '1999-07-27', 'Breitenbergview', 652705942);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (55, 'm', '2019-03-10', 'East Martinaburgh', 549124623);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (56, 'm', '1990-10-23', 'Mohrstad', 795922283);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (57, 'm', '1975-06-20', 'Hobartville', 185587728);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (58, 'f', '2008-07-31', 'West Marianoberg', 715108637);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (59, 'm', '1999-08-21', 'Port Jazmyne', 957352179);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (60, 'f', '2012-09-14', 'West Stephaniafurt', 126583028);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (61, 'm', '2018-04-15', 'Volkmanshire', 997777879);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (62, 'm', '2015-09-29', 'East German', 904749927);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (63, 'f', '1988-09-05', 'New Haleyton', 948009654);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (64, 'm', '2011-10-14', 'Lake Liana', 541780776);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (65, 'm', '2004-02-17', 'Westbury', 380428298);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (66, 'm', '2011-07-01', 'Hackettchester', 40906587);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (67, 'f', '1976-04-01', 'West Travon', 494474895);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (68, 'm', '1992-10-16', 'Georgemouth', 567001146);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (69, 'm', '1981-11-03', 'West Baron', 385132707);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (70, 'f', '2003-02-08', 'Schulistchester', 122255562);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (71, 'm', '2010-01-13', 'Lake Celestine', 266688409);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (72, 'm', '1995-05-21', 'New Sierra', 16722139);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (73, 'f', '1995-05-05', 'New Noemie', 473707179);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (74, 'm', '2001-09-07', 'East Berniceview', 870660150);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (75, 'm', '2017-09-16', 'Lake Pinkie', 36426939);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (76, 'm', '1980-11-09', 'East Madysonside', 30463666);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (77, 'm', '1970-11-29', 'Alyshaville', 952475202);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (78, 'f', '1990-10-25', 'Emilybury', 80871571);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (79, 'f', '2016-12-16', 'Kossburgh', 294594878);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (80, 'f', '2006-06-22', 'Davonberg', 186474991);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (81, 'f', '1987-11-05', 'Port Gradystad', 84805144);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (82, 'f', '1996-07-28', 'Bernardofurt', 466719470);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (83, 'm', '1997-01-15', 'Krajcikmouth', 332966217);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (84, 'm', '1981-11-29', 'Krisburgh', 474666193);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (85, 'm', '1990-08-12', 'Olgahaven', 255868830);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (86, 'f', '2019-06-12', 'Walkerview', 272118493);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (87, 'f', '1980-07-25', 'Lake Ceciliahaven', 391925403);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (88, 'f', '1980-12-18', 'Rudolphtown', 73865149);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (89, 'f', '1986-09-04', 'Port Markusfurt', 177805503);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (90, 'f', '1980-05-16', 'Shaniafurt', 69837700);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (91, 'f', '1974-11-17', 'Rosellaport', 395204821);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (92, 'm', '1981-11-06', 'West Bart', 538910247);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (93, 'f', '1988-08-26', 'Aimeeside', 427151362);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (94, 'f', '2012-12-29', 'Port Lucytown', 122640905);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (95, 'f', '1980-12-05', 'Connorfort', 953533119);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (96, 'f', '1992-11-26', 'Lake Frederiquemouth', 50033603);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (97, 'f', '1987-04-27', 'Hagenestown', 473346989);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (98, 'm', '2001-03-21', 'Port Ernestina', 943555841);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (99, 'f', '2015-05-28', 'Connmouth', 410031509);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (100, 'm', '2006-05-29', 'Davisberg', 11697770);


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `create_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (1, 'Reina', 'Hilpert', 'jbergnaum@example.org', '+70(5)339521', '1992-02-20 14:59:59', '1986-10-26 06:08:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (2, 'Florence', 'Zboncak', 'velma85@example.net', '1-055-053-37', '2010-09-12 04:38:08', '2014-04-27 19:49:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (3, 'Warren', 'Wolf', 'ross.abernathy@example.org', '394.288.0559', '2002-10-23 16:46:36', '1983-06-22 09:51:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (4, 'Eulalia', 'Lang', 'enola.stehr@example.org', '(796)036-397', '1979-09-17 15:58:19', '1994-05-07 08:22:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (5, 'Violette', 'Schinner', 'grant.arnaldo@example.net', '205-194-8840', '1972-12-30 06:41:02', '1995-04-09 12:08:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (6, 'Mafalda', 'Marvin', 'anderson.santos@example.net', '247-805-2405', '1970-08-04 08:05:22', '1993-11-27 02:09:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (7, 'Elvera', 'Herman', 'dante57@example.org', '(231)903-845', '1997-04-14 06:38:40', '1996-02-03 04:56:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (8, 'Alexzander', 'Pouros', 'marshall47@example.net', '561-345-9492', '1995-07-19 19:37:05', '2005-04-25 09:24:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (9, 'Elisha', 'Cummings', 'eduardo.sipes@example.net', '(183)579-638', '2015-10-06 01:18:55', '1979-05-21 18:08:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (10, 'Lilian', 'Wiegand', 'louvenia85@example.com', '172.136.1421', '2010-08-04 06:00:29', '1972-10-27 07:03:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (11, 'Silas', 'Borer', 'kerluke.bailee@example.com', '862-106-9123', '1977-09-19 19:52:32', '2011-07-22 12:51:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (12, 'Hector', 'Raynor', 'vincent.gerhold@example.com', '178-083-6881', '1977-11-10 15:59:07', '1992-06-05 11:59:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (13, 'Lawson', 'Stoltenberg', 'watson.carter@example.net', '306.622.0209', '1983-10-09 16:55:11', '1976-01-23 02:16:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (14, 'Wellington', 'Hamill', 'jaylan94@example.com', '256-390-6877', '1981-04-17 01:25:50', '2013-11-10 16:04:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (15, 'Sister', 'Morar', 'erica.tremblay@example.com', '1-984-799-05', '1973-01-26 22:36:23', '1980-10-08 05:18:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (16, 'Edgar', 'Hettinger', 'vince.ebert@example.net', '06645112975', '2016-05-02 05:57:32', '2005-05-18 07:54:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (17, 'Samanta', 'Schinner', 'janet.wilderman@example.com', '1-909-219-28', '1986-01-02 21:27:53', '2007-06-12 00:32:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (18, 'Percy', 'Stark', 'emanuel93@example.net', '389.534.4396', '1997-10-22 19:52:16', '2004-04-23 11:55:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (19, 'Webster', 'Breitenberg', 'oreichel@example.com', '1-794-115-27', '1973-02-10 15:50:20', '1981-03-08 12:52:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (20, 'Elinore', 'Nolan', 'josephine.cartwright@example.com', '(551)213-354', '2012-05-08 17:58:11', '1976-12-01 23:23:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (21, 'Diana', 'Stracke', 'delilah95@example.com', '(082)509-922', '1990-07-11 19:36:41', '1991-05-23 05:58:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (22, 'Tyrel', 'Schinner', 'palma.fritsch@example.org', '06715477397', '2010-12-16 19:27:00', '2007-04-13 12:46:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (23, 'Caroline', 'Steuber', 'blanche.dickens@example.com', '(160)285-636', '1985-02-16 16:29:18', '1979-12-13 14:12:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (24, 'Savanah', 'Schaden', 'ashtyn58@example.com', '279-628-4794', '1989-07-12 20:27:23', '1972-09-13 09:15:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (25, 'Kasey', 'Quigley', 'stephania.pouros@example.net', '774-347-2696', '1975-08-17 17:05:53', '1984-08-09 12:06:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (26, 'Maudie', 'Luettgen', 'dbashirian@example.org', '(952)237-429', '2013-08-10 05:18:35', '1991-11-27 18:39:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (27, 'Reinhold', 'Anderson', 'eden.keebler@example.org', '608-224-5696', '2019-10-15 03:21:30', '1982-11-02 16:54:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (28, 'Cleveland', 'Kilback', 'adah42@example.com', '(232)557-903', '1971-05-20 18:55:16', '2001-04-30 01:28:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (29, 'Johan', 'Greenfelder', 'ubednar@example.com', '783-160-6895', '1989-05-29 11:39:01', '1973-03-30 01:32:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (30, 'Katheryn', 'O\'Hara', 'karianne.thiel@example.net', '1-455-699-73', '2002-11-02 11:38:20', '1998-10-10 10:28:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (31, 'Julianne', 'Stanton', 'kamren.wisozk@example.com', '1-034-178-24', '2003-07-16 14:15:28', '1990-10-05 23:16:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (32, 'Luciano', 'Johns', 'abernathy.amani@example.net', '1-811-369-87', '1997-04-09 19:21:39', '1990-04-03 02:44:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (33, 'Antoinette', 'Purdy', 'mayert.rowland@example.net', '01582769935', '1978-01-01 07:47:33', '2017-03-04 01:02:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (34, 'Clark', 'Hoppe', 'oortiz@example.net', '(309)316-607', '1975-08-18 22:22:51', '1983-03-19 18:27:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (35, 'Helen', 'Little', 'bernhard.spinka@example.net', '(438)331-503', '2002-10-22 17:54:12', '2014-07-08 07:12:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (36, 'Vaughn', 'Jacobson', 'isom.torp@example.net', '349.337.0751', '1974-12-22 08:20:03', '2014-05-29 09:32:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (37, 'Melissa', 'Schultz', 'wade.batz@example.net', '1-351-837-73', '1987-05-09 08:22:11', '1984-10-08 22:40:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (38, 'Waylon', 'Gerlach', 'acrona@example.com', '972.601.8789', '2009-02-05 18:24:52', '1973-09-28 09:20:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (39, 'Alayna', 'Kuhn', 'casandra.quitzon@example.com', '567.739.6946', '2008-03-05 09:26:44', '1974-05-06 17:17:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (40, 'Norval', 'Lindgren', 'marcella.kozey@example.net', '07675893548', '2014-01-31 18:49:34', '1998-08-23 10:29:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (41, 'Aditya', 'Buckridge', 'jamarcus.cummings@example.net', '299.310.6789', '2007-10-26 06:51:17', '2000-02-26 05:20:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (42, 'Florian', 'Wiegand', 'schowalter.alfred@example.com', '(832)712-456', '1988-11-08 02:57:39', '1980-04-17 09:38:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (43, 'Abbey', 'Hermann', 'veum.jena@example.org', '064-641-6856', '1971-06-18 05:30:39', '1996-09-29 22:16:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (44, 'Jaclyn', 'Zieme', 'derek.crist@example.net', '1-659-984-82', '1977-03-28 04:32:25', '2011-03-27 02:34:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (45, 'Zoila', 'Grant', 'nsimonis@example.org', '724.220.2396', '1978-08-23 06:25:44', '1976-08-19 00:13:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (46, 'Sherman', 'Dickinson', 'hazle00@example.com', '020-726-1553', '2011-05-16 14:11:47', '1980-03-07 18:14:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (47, 'Neva', 'Herzog', 'enrico.walsh@example.com', '(160)814-046', '1974-01-02 10:22:31', '1998-01-25 07:16:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (48, 'Winston', 'Kuhlman', 'wendy.mclaughlin@example.org', '(878)346-077', '1974-11-06 07:21:37', '1981-05-10 06:18:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (49, 'Isabel', 'Quitzon', 'brielle10@example.org', '1-053-799-12', '1990-06-25 02:43:20', '1979-11-11 00:56:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (50, 'Birdie', 'Mueller', 'gquitzon@example.com', '233.721.4981', '2009-02-23 19:10:11', '2006-02-22 05:45:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (51, 'Freda', 'Mayer', 'salma.nader@example.org', '384-485-8337', '1991-02-12 22:36:06', '1982-12-15 04:20:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (52, 'Corene', 'Stracke', 'zebert@example.com', '07482053101', '1972-01-21 17:20:46', '2019-02-27 19:16:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (53, 'Hyman', 'Nikolaus', 'wuckert.edwin@example.com', '03362575994', '1983-05-24 01:57:19', '1980-07-24 12:32:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (54, 'Hollis', 'Daniel', 'bcrooks@example.com', '(182)537-837', '2004-08-18 21:26:51', '1991-06-07 07:05:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (55, 'Mya', 'Hartmann', 'tbode@example.com', '1-609-309-40', '2010-06-26 10:04:18', '1984-02-18 22:07:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (56, 'Cielo', 'Marquardt', 'bobby52@example.net', '703.036.9610', '1974-11-27 13:06:45', '2004-09-11 05:46:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (57, 'Luigi', 'Witting', 'lleannon@example.net', '1-727-385-45', '2011-03-27 11:35:52', '2000-08-12 18:21:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (58, 'Arlo', 'Sauer', 'eleanore.monahan@example.net', '(666)569-753', '1981-07-12 10:26:05', '1978-12-28 07:50:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (59, 'Leonardo', 'Cole', 'lizeth.toy@example.net', '425-694-4265', '1978-09-15 01:16:20', '1984-11-07 20:21:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (60, 'Patrick', 'Jaskolski', 'markus65@example.com', '547-040-0726', '1971-05-28 08:05:08', '1985-02-23 21:15:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (61, 'Kristopher', 'Murray', 'nils.raynor@example.org', '1-889-681-95', '2004-03-11 04:27:44', '2019-08-10 20:08:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (62, 'Madilyn', 'Schaefer', 'cremin.jaclyn@example.com', '869.361.6322', '1994-04-12 07:42:36', '1977-08-18 12:36:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (63, 'Alexie', 'Zulauf', 'ashlee.dach@example.com', '(327)116-119', '1984-08-20 00:54:12', '1979-08-14 12:33:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (64, 'Kathleen', 'Towne', 'gerhold.rogers@example.org', '390.672.1151', '2019-09-25 10:46:42', '2011-11-13 11:22:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (65, 'Jonas', 'Hettinger', 'hchamplin@example.net', '011.583.3510', '2003-01-11 05:33:08', '2012-01-02 03:42:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (66, 'Viola', 'Christiansen', 'hickle.kaitlin@example.org', '1-526-070-13', '1977-01-31 02:40:50', '1994-05-09 06:13:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (67, 'Torey', 'Wilkinson', 'ttremblay@example.com', '(680)478-921', '2005-09-11 11:52:38', '2018-08-25 03:09:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (68, 'Kian', 'Price', 'gillian19@example.com', '(093)286-978', '1970-03-16 13:20:50', '1984-06-23 00:19:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (69, 'Jazmyne', 'Brakus', 'srunolfsson@example.com', '(394)834-591', '1993-04-03 22:18:58', '1986-11-08 01:32:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (70, 'Bud', 'Wiza', 'kunze.lance@example.net', '(996)254-651', '1980-10-17 11:41:34', '2004-08-11 12:38:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (71, 'Manley', 'Tromp', 'bcarter@example.org', '715.229.2450', '1993-07-08 07:13:21', '2003-11-10 16:59:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (72, 'Manuel', 'Bashirian', 'espencer@example.com', '+12(7)273615', '2003-03-03 14:33:35', '1991-06-26 12:26:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (73, 'Tito', 'Murazik', 'nels.schimmel@example.org', '+65(7)006151', '2019-07-18 18:49:02', '1976-03-28 10:09:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (74, 'Jonatan', 'Tillman', 'miles90@example.org', '838.837.8272', '2016-11-07 11:19:45', '1992-09-03 01:43:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (75, 'Brooks', 'Turner', 'judah.wiza@example.com', '977-690-1115', '1995-04-05 00:53:01', '1986-11-26 23:41:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (76, 'Ana', 'Lowe', 'elmore10@example.net', '689.331.9273', '2000-03-03 17:29:54', '2017-04-10 22:11:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (77, 'Idella', 'Erdman', 'alanna84@example.org', '(387)447-690', '1982-08-09 04:49:14', '1975-11-04 19:36:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (78, 'Chandler', 'Kirlin', 'd\'amore.leila@example.com', '1-423-834-73', '1991-01-26 18:14:13', '1996-08-29 22:45:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (79, 'Mireya', 'Harvey', 'ckutch@example.com', '1-862-407-25', '1999-08-24 21:38:45', '2002-01-17 17:52:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (80, 'Isidro', 'Larkin', 'brock30@example.com', '924-138-8785', '1981-06-16 18:50:01', '1972-10-26 00:20:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (81, 'Jerad', 'Russel', 'donny15@example.org', '(350)223-420', '1981-10-20 10:37:01', '1994-03-17 18:01:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (82, 'Johnny', 'Emard', 'irunolfsdottir@example.org', '319.674.7480', '2002-05-22 10:47:30', '2012-07-12 10:37:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (83, 'Chesley', 'Feil', 'johan.eichmann@example.org', '+36(0)960200', '1989-03-05 03:28:16', '2003-03-19 17:35:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (84, 'Abraham', 'Hoppe', 'jkozey@example.net', '049.041.2260', '2007-09-23 04:18:42', '2006-06-08 16:43:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (85, 'Violette', 'Dibbert', 'jfritsch@example.com', '1-133-501-58', '2007-03-30 11:14:12', '1970-08-18 17:43:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (86, 'Eriberto', 'Kemmer', 'yhowell@example.net', '1-822-505-90', '1987-10-10 15:27:55', '2014-01-11 13:52:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (87, 'Emmanuelle', 'Kessler', 'o\'keefe.jackeline@example.com', '04156855147', '1996-08-30 06:31:48', '1990-05-29 16:12:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (88, 'Ford', 'Beahan', 'ankunding.elliot@example.com', '1-072-489-75', '1975-11-29 18:17:48', '2013-07-04 17:45:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (89, 'Abagail', 'Rice', 'xbergstrom@example.org', '044.479.9760', '1991-10-09 23:58:54', '1981-08-21 05:02:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (90, 'Abigale', 'Runte', 'ledner.ludie@example.net', '1-714-713-25', '1980-12-04 07:36:51', '2009-02-14 19:53:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (91, 'Loyce', 'Hand', 'hailie.paucek@example.net', '1-443-040-81', '1971-11-10 09:10:38', '1988-05-02 01:48:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (92, 'Easter', 'Cruickshank', 'fannie76@example.org', '370.295.7350', '1990-07-25 20:36:32', '2005-08-11 04:44:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (93, 'Sienna', 'Hane', 'phoebe.corkery@example.org', '299.745.1245', '2017-08-14 00:17:44', '1971-12-07 13:13:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (94, 'Drake', 'Emard', 'josiah90@example.com', '523-633-9806', '2009-10-30 01:57:10', '2000-03-27 04:32:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (95, 'Deshaun', 'Jast', 'juvenal86@example.org', '763-864-8840', '1974-06-02 22:33:38', '2001-03-01 07:20:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (96, 'Noah', 'Ondricka', 'kaya.kihn@example.net', '527.942.0298', '2014-05-26 19:47:08', '1972-04-18 07:16:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (97, 'Elroy', 'Langosh', 'tod.kuhn@example.com', '753.049.4803', '2002-03-23 02:37:08', '2010-02-01 02:21:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (98, 'Cloyd', 'Senger', 'petra33@example.org', '1-153-873-59', '1991-01-12 21:27:26', '1989-02-18 12:39:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (99, 'Jade', 'Pouros', 'ehand@example.com', '121-123-7302', '2010-05-27 09:01:35', '1975-05-20 11:25:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `create_at`, `updated_at`) VALUES (100, 'Abelardo', 'Denesik', 'maria81@example.org', '(157)462-938', '2011-01-06 08:50:03', '1976-09-25 02:32:01');



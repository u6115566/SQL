-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2020-09-25 12:40:50
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- テーブルのデータのダンプ `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"ssp1\",\"table\":\"users\"},{\"db\":\"ssp1\",\"table\":\"bbs\"},{\"db\":\"ssp1\",\"table\":\"test\"}]');

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- テーブルのデータのダンプ `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('ssp1', 'bbs', 'msg');

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- テーブルのデータのダンプ `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-09-25 03:40:36', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"ja\",\"NavigationWidth\":165,\"ThemeDefault\":\"pmahomme\"}');

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- テーブルのインデックス `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- テーブルのインデックス `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- テーブルのインデックス `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- テーブルのインデックス `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- テーブルのインデックス `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- テーブルのインデックス `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- テーブルのインデックス `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- テーブルのインデックス `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- テーブルのインデックス `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- テーブルのインデックス `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- テーブルのインデックス `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- テーブルのインデックス `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- テーブルのインデックス `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- テーブルのインデックス `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- テーブルのインデックス `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- テーブルのインデックス `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- テーブルのインデックス `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- データベース: `ssp1`
--
CREATE DATABASE IF NOT EXISTS `ssp1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ssp1`;

-- --------------------------------------------------------

--
-- テーブルの構造 `bbs`
--

CREATE TABLE `bbs` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `bbs`
--

INSERT INTO `bbs` (`id`, `u_id`, `msg`, `date`, `img`) VALUES
(3, 4, 'wawawa', '2020-08-18 09:57:26', '20200818-095726-3448.jpg'),
(4, 3, '45345313', '2020-08-18 10:05:23', '20200818-100523-7484.jpg'),
(5, 3, '45345313', '2020-08-18 11:10:59', '20200818-111059-1371.jpg');

-- --------------------------------------------------------

--
-- テーブルの構造 `test`
--

CREATE TABLE `test` (
  `no` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `kokugo` int(11) NOT NULL,
  `sugaku` int(11) NOT NULL,
  `eigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `test`
--

INSERT INTO `test` (`no`, `name`, `kokugo`, `sugaku`, `eigo`) VALUES
(1, '浅田', 55, 65, 75),
(2, '朝日', 50, 80, 55),
(3, '安藤', 70, 55, 45),
(4, '井原', 55, 40, 100),
(5, '及川', 45, 55, 65),
(6, '大場', 40, 45, 35),
(7, '小原', 60, 50, 70),
(8, '川浪', 75, 40, 55),
(9, '神原', 30, 70, 40),
(10, '菊池', 45, 45, 80);

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `pass`) VALUES
(2, 'sekine', '123456'),
(3, 'sekine', '810893'),
(4, 'sekine', 'papapa');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `bbs`
--
ALTER TABLE `bbs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`u_id`);

--
-- テーブルのインデックス `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`no`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `bbs`
--
ALTER TABLE `bbs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- テーブルのAUTO_INCREMENT `test`
--
ALTER TABLE `test`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- テーブルのAUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `bbs`
--
ALTER TABLE `bbs`
  ADD CONSTRAINT `bbs_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`id`);
--
-- データベース: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- データベース: `wptest`
--
CREATE DATABASE IF NOT EXISTS `wptest` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wptest`;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'WordPress コメントの投稿者', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-09-08 09:59:58', '2020-09-08 00:59:58', 'こんにちは、これはコメントです。\nコメントの承認、編集、削除を始めるにはダッシュボードの「コメント画面」にアクセスしてください。\nコメントのアバターは「<a href=\"https://gravatar.com\">Gravatar</a>」から取得されます。', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/ssp1/wptest', 'yes'),
(2, 'home', 'http://localhost/ssp1/wptest', 'yes'),
(3, 'blogname', 'TOKYO BEST 3', 'yes'),
(4, 'blogdescription', '李が選ぶ、東京のベストオブベスト', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'aaa@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'Y年n月j日', 'yes'),
(24, 'time_format', 'g:i A', 'yes'),
(25, 'links_updated_date_format', 'Y年n月j日 g:i A', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:71:\"C:\\xampp\\htdocs\\ssp1\\wptest/wp-content/themes/twentyseventeen/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:7:{i:2;a:4:{s:5:\"title\";s:12:\"アクセス\";s:4:\"text\";s:157:\"<strong>住所</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>営業時間</strong>\n月〜金: 9:00 AM &ndash; 5:00 PM\n土日: 11:00 AM &ndash; 3:00 PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:27:\"このサイトについて\";s:4:\"text\";s:117:\"ここには、自己紹介やサイトの紹介、あるいはクレジットの類を書くと良いでしょう。\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:12:\"アクセス\";s:4:\"text\";s:157:\"<strong>住所</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>営業時間</strong>\n月〜金: 9:00 AM &ndash; 5:00 PM\n土日: 11:00 AM &ndash; 3:00 PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:27:\"このサイトについて\";s:4:\"text\";s:117:\"ここには、自己紹介やサイトの紹介、あるいはクレジットの類を書くと良いでしょう。\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;i:6;a:4:{s:5:\"title\";s:27:\"このサイトについて\";s:4:\"text\";s:117:\"ここには、自己紹介やサイトの紹介、あるいはクレジットの類を書くと良いでしょう。\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:7;a:4:{s:5:\"title\";s:42:\"※この人物はフィクションです\";s:4:\"text\";s:66:\"<strong>実在しません。</strong>\r\n\r\n爆発もしません。\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Asia/Tokyo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1615078797', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'WPLANG', 'ja', 'yes'),
(99, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:4;a:0:{}}', 'yes'),
(100, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;i:4;a:0:{}}', 'yes'),
(101, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:15:{i:0;s:7:\"pages-3\";i:1;s:6:\"text-6\";i:2;s:10:\"calendar-3\";i:3;s:10:\"calendar-4\";i:4;s:15:\"media_gallery-3\";i:5;s:10:\"archives-2\";i:6;s:6:\"meta-2\";i:7;s:8:\"search-2\";i:8;s:12:\"categories-2\";i:9;s:14:\"recent-posts-2\";i:10;s:17:\"recent-comments-2\";i:11;s:6:\"text-2\";i:12;s:6:\"text-3\";i:13;s:6:\"text-4\";i:14;s:6:\"text-5\";}s:9:\"sidebar-1\";a:2:{i:0;s:8:\"search-4\";i:1;s:14:\"recent-posts-4\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-7\";}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1600956001;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1600995599;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600995601;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1600995623;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600995626;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601427600;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(107, 'widget_calendar', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}i:4;a:0:{}}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:6:{s:5:\"title\";s:0:\"\";s:3:\"ids\";a:1:{i:0;i:108;}s:7:\"columns\";i:3;s:4:\"size\";s:9:\"thumbnail\";s:9:\"link_type\";s:4:\"post\";s:14:\"orderby_random\";b:0;}}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'nonce_key', '$T&daIL=2 o;G@1M%~zmOIO:6mVzDwzGlD@%{N(U8^4TH8ztu3VT8FhleU*kD.O0', 'no'),
(113, 'nonce_salt', 'Sl<h7Jxew-kWXT:vM%.2V3w tH(vwZijK9~WyOQYG[0|C}L4_*Kvlq}G~YX9O (T', 'no'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1599533112;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:9:\"sidebar-1\";a:1:{i:0;s:6:\"text-6\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-7\";}}}s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:2;s:8:\"expanded\";i:3;s:6:\"social\";i:4;}}', 'yes'),
(129, 'auth_key', ']#/2=F$tUCXI,sO}y]M56My[;uR072h(3Y5C%n$/[I4rMJddKJC{Z#/:VK[,/0,i', 'no'),
(130, 'auth_salt', 'C]w&/BzkyD5!Fr?x<Y]B?%U-)n5oe.2>.:W^. jt!!z1V |^?0:_e-x45_5nF:ar', 'no'),
(131, 'logged_in_key', 'xu06_aH<V=U#:6G<i/:z/P!j`Pyi)|Q_~5?_]/]BCEeZ_7Qg/tHuR#&yVK!{b!js', 'no'),
(132, 'logged_in_salt', 'W]{iS)zSdt.FP@B@uX[~SA{4b5/j;cH9X8e%2<M87$4#B0.9jJX/wzm@w.:Wm{26', 'no'),
(140, 'can_compress_scripts', '1', 'no'),
(153, 'finished_updating_comment_type', '1', 'yes'),
(154, 'current_theme', 'Twenty Seventeen', 'yes'),
(155, 'theme_mods_twentyseventeen', 'a:12:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:0;s:6:\"social\";i:0;}s:18:\"custom_css_post_id\";i:118;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1599534799;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:9:\"sidebar-1\";a:1:{i:0;s:6:\"text-6\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-7\";}}}s:12:\"header_image\";s:81:\"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/31047795_m-1080x720-1.jpg\";s:11:\"colorscheme\";s:4:\"dark\";s:11:\"custom_logo\";s:0:\"\";s:11:\"page_layout\";s:10:\"two-column\";s:7:\"panel_1\";i:0;s:7:\"panel_2\";i:0;s:16:\"header_textcolor\";s:6:\"ffffff\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:130;s:3:\"url\";s:81:\"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/31047795_m-1080x720-1.jpg\";s:13:\"thumbnail_url\";s:81:\"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/31047795_m-1080x720-1.jpg\";s:6:\"height\";i:720;s:5:\"width\";i:1080;}}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(173, 'theme_mods_fell', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"social\";i:4;s:6:\"header\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1599534934;s:4:\"data\";a:12:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";i:6;s:6:\"text-2\";i:7;s:6:\"text-3\";i:8;s:6:\"text-4\";i:9;s:6:\"text-5\";}s:17:\"above-content-one\";a:0:{}s:17:\"above-content-two\";a:0:{}s:19:\"above-content-three\";a:0:{}s:12:\"left-sidebar\";a:1:{i:0;s:6:\"text-6\";}s:13:\"right-sidebar\";a:1:{i:0;s:6:\"text-7\";}s:17:\"below-content-one\";a:0:{}s:17:\"below-content-two\";a:0:{}s:19:\"below-content-three\";a:0:{}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}}}}', 'yes'),
(179, 'auto_update_themes', 'a:1:{i:0;s:15:\"twentyseventeen\";}', 'no'),
(184, 'theme_mods_twentynineteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(186, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(189, 'theme_switched_via_customizer', '', 'yes'),
(190, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(198, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:61:\"http://downloads.wordpress.org/release/ja/wordpress-5.5.1.zip\";s:6:\"locale\";s:2:\"ja\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:61:\"http://downloads.wordpress.org/release/ja/wordpress-5.5.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1600954173;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(199, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1600954173;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(200, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1600954173;s:7:\"checked\";a:4:{s:4:\"fell\";s:5:\"1.1.5\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:4:\"fell\";a:6:{s:5:\"theme\";s:4:\"fell\";s:11:\"new_version\";s:5:\"1.1.5\";s:3:\"url\";s:34:\"https://wordpress.org/themes/fell/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/theme/fell.1.1.5.zip\";s:8:\"requires\";s:3:\"5.0\";s:12:\"requires_php\";b:0;}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(208, 'new_admin_email', 'aaa@gmail.com', 'yes'),
(228, '_site_transient_timeout_php_check_90a84b80b2ae4bb2a14bb18a1c790012', '1601301166', 'no'),
(229, '_site_transient_php_check_90a84b80b2ae4bb2a14bb18a1c790012', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(230, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":9,\"critical\":0}', 'yes'),
(233, '_site_transient_timeout_browser_6a5a5b9eaeed25ccb9b31c5a26ba1f70', '1601305859', 'no'),
(234, '_site_transient_browser_6a5a5b9eaeed25ccb9b31c5a26ba1f70', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"85.0.4183.102\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(248, '_site_transient_timeout_browser_4243c5bad934d66f978f6ee6e569fdad', '1601305899', 'no'),
(249, '_site_transient_browser_4243c5bad934d66f978f6ee6e569fdad', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"85.0.4183.102\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(300, 'recently_activated', 'a:0:{}', 'yes'),
(309, '_transient_is_multi_author', '0', 'yes'),
(318, 'auto_updater.lock', '1600938795', 'no'),
(319, '_site_transient_timeout_theme_roots', '1600955973', 'no'),
(320, '_site_transient_theme_roots', 'a:6:{s:4:\"fell\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:20:\"twentyseventeenchild\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:17:\"twentytwentychild\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(164, 59, '_wp_attached_file', '2020/09/jibun.jpg'),
(165, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2020/09/jibun.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"jibun-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"jibun-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:17:\"jibun-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(166, 60, '_wp_attached_file', '2020/09/cropped-jibun.jpg'),
(167, 60, '_wp_attachment_context', 'custom-logo'),
(168, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:25:\"2020/09/cropped-jibun.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-jibun-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"cropped-jibun-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 59, '_wp_attachment_is_custom_background', 'twentytwenty'),
(200, 73, '_wp_attached_file', '2020/09/2020-landscape-1-2.png'),
(201, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:769;s:4:\"file\";s:30:\"2020/09/2020-landscape-1-2.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"2020-landscape-1-2-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"2020-landscape-1-2-1024x656.png\";s:5:\"width\";i:1024;s:6:\"height\";i:656;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"2020-landscape-1-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"2020-landscape-1-2-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(202, 73, '_starter_content_theme', 'twentytwenty'),
(204, 74, '_thumbnail_id', '73'),
(206, 74, '_customize_changeset_uuid', 'fb579120-213f-43ce-b539-1ee315ca8113'),
(208, 75, '_customize_changeset_uuid', 'fb579120-213f-43ce-b539-1ee315ca8113'),
(210, 76, '_customize_changeset_uuid', 'fb579120-213f-43ce-b539-1ee315ca8113'),
(212, 77, '_customize_changeset_uuid', 'fb579120-213f-43ce-b539-1ee315ca8113'),
(213, 78, '_edit_lock', '1599533022:1'),
(214, 83, '_menu_item_type', 'custom'),
(215, 83, '_menu_item_menu_item_parent', '0'),
(216, 83, '_menu_item_object_id', '83'),
(217, 83, '_menu_item_object', 'custom'),
(218, 83, '_menu_item_target', ''),
(219, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(220, 83, '_menu_item_xfn', ''),
(221, 83, '_menu_item_url', 'http://localhost/ssp1/wptest/'),
(222, 84, '_menu_item_type', 'post_type'),
(223, 84, '_menu_item_menu_item_parent', '0'),
(224, 84, '_menu_item_object_id', '75'),
(225, 84, '_menu_item_object', 'page'),
(226, 84, '_menu_item_target', ''),
(227, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(228, 84, '_menu_item_xfn', ''),
(229, 84, '_menu_item_url', ''),
(230, 85, '_menu_item_type', 'post_type'),
(231, 85, '_menu_item_menu_item_parent', '0'),
(232, 85, '_menu_item_object_id', '77'),
(233, 85, '_menu_item_object', 'page'),
(234, 85, '_menu_item_target', ''),
(235, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(236, 85, '_menu_item_xfn', ''),
(237, 85, '_menu_item_url', ''),
(238, 86, '_menu_item_type', 'post_type'),
(239, 86, '_menu_item_menu_item_parent', '0'),
(240, 86, '_menu_item_object_id', '76'),
(241, 86, '_menu_item_object', 'page'),
(242, 86, '_menu_item_target', ''),
(243, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(244, 86, '_menu_item_xfn', ''),
(245, 86, '_menu_item_url', ''),
(246, 87, '_menu_item_type', 'custom'),
(247, 87, '_menu_item_menu_item_parent', '0'),
(248, 87, '_menu_item_object_id', '87'),
(249, 87, '_menu_item_object', 'custom'),
(250, 87, '_menu_item_target', ''),
(251, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(252, 87, '_menu_item_xfn', ''),
(253, 87, '_menu_item_url', 'http://localhost/ssp1/wptest/'),
(254, 88, '_menu_item_type', 'post_type'),
(255, 88, '_menu_item_menu_item_parent', '0'),
(256, 88, '_menu_item_object_id', '75'),
(257, 88, '_menu_item_object', 'page'),
(258, 88, '_menu_item_target', ''),
(259, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(260, 88, '_menu_item_xfn', ''),
(261, 88, '_menu_item_url', ''),
(262, 89, '_menu_item_type', 'post_type'),
(263, 89, '_menu_item_menu_item_parent', '0'),
(264, 89, '_menu_item_object_id', '77'),
(265, 89, '_menu_item_object', 'page'),
(266, 89, '_menu_item_target', ''),
(267, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(268, 89, '_menu_item_xfn', ''),
(269, 89, '_menu_item_url', ''),
(270, 90, '_menu_item_type', 'post_type'),
(271, 90, '_menu_item_menu_item_parent', '0'),
(272, 90, '_menu_item_object_id', '76'),
(273, 90, '_menu_item_object', 'page'),
(274, 90, '_menu_item_target', ''),
(275, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(276, 90, '_menu_item_xfn', ''),
(277, 90, '_menu_item_url', ''),
(278, 91, '_menu_item_type', 'custom'),
(279, 91, '_menu_item_menu_item_parent', '0'),
(280, 91, '_menu_item_object_id', '91'),
(281, 91, '_menu_item_object', 'custom'),
(282, 91, '_menu_item_target', ''),
(283, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(284, 91, '_menu_item_xfn', ''),
(285, 91, '_menu_item_url', 'https://www.yelp.com'),
(286, 92, '_menu_item_type', 'custom'),
(287, 92, '_menu_item_menu_item_parent', '0'),
(288, 92, '_menu_item_object_id', '92'),
(289, 92, '_menu_item_object', 'custom'),
(290, 92, '_menu_item_target', ''),
(291, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(292, 92, '_menu_item_xfn', ''),
(293, 92, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(294, 93, '_menu_item_type', 'custom'),
(295, 93, '_menu_item_menu_item_parent', '0'),
(296, 93, '_menu_item_object_id', '93'),
(297, 93, '_menu_item_object', 'custom'),
(298, 93, '_menu_item_target', ''),
(299, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(300, 93, '_menu_item_xfn', ''),
(301, 93, '_menu_item_url', 'https://twitter.com/wordpress'),
(302, 94, '_menu_item_type', 'custom'),
(303, 94, '_menu_item_menu_item_parent', '0'),
(304, 94, '_menu_item_object_id', '94'),
(305, 94, '_menu_item_object', 'custom'),
(306, 94, '_menu_item_target', ''),
(307, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(308, 94, '_menu_item_xfn', ''),
(309, 94, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(310, 95, '_menu_item_type', 'custom'),
(311, 95, '_menu_item_menu_item_parent', '0'),
(312, 95, '_menu_item_object_id', '95'),
(313, 95, '_menu_item_object', 'custom'),
(314, 95, '_menu_item_target', ''),
(315, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(316, 95, '_menu_item_xfn', ''),
(317, 95, '_menu_item_url', 'mailto:wordpress@example.com'),
(318, 78, '_wp_trash_meta_status', 'publish'),
(319, 78, '_wp_trash_meta_time', '1599533048'),
(321, 96, '_wp_trash_meta_status', 'publish'),
(322, 96, '_wp_trash_meta_time', '1599533112'),
(323, 97, '_wp_attached_file', '2020/09/cropped-jibun-1.jpg'),
(324, 97, '_wp_attachment_context', 'custom-header'),
(325, 97, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"2020/09/cropped-jibun-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-jibun-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"cropped-jibun-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-jibun-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"cropped-jibun-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:28:\"cropped-jibun-1-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:27:\"cropped-jibun-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:59;}'),
(332, 100, '_wp_trash_meta_status', 'publish'),
(333, 100, '_wp_trash_meta_time', '1599534862'),
(334, 101, '_wp_trash_meta_status', 'publish'),
(335, 101, '_wp_trash_meta_time', '1599534945'),
(336, 102, '_wp_trash_meta_status', 'publish'),
(337, 102, '_wp_trash_meta_time', '1599534967'),
(338, 103, '_wp_trash_meta_status', 'publish'),
(339, 103, '_wp_trash_meta_time', '1599534976'),
(340, 104, '_wp_trash_meta_status', 'publish'),
(341, 104, '_wp_trash_meta_time', '1599535171'),
(342, 105, '_wp_trash_meta_status', 'publish'),
(343, 105, '_wp_trash_meta_time', '1599535198'),
(344, 106, '_wp_attached_file', '2020/09/cropped-jibun-2.jpg'),
(345, 106, '_wp_attachment_context', 'custom-logo'),
(346, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:27:\"2020/09/cropped-jibun-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-jibun-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:27:\"cropped-jibun-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(347, 107, '_edit_lock', '1599535310:1'),
(348, 107, '_wp_trash_meta_status', 'publish'),
(349, 107, '_wp_trash_meta_time', '1599535321'),
(350, 108, '_wp_attached_file', '2020/09/IMG_20200726_142445-scaled-e1600714498156.jpg'),
(351, 108, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:729;s:4:\"file\";s:53:\"2020/09/IMG_20200726_142445-scaled-e1600714498156.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:53:\"IMG_20200726_142445-scaled-e1600714498156-300x171.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:54:\"IMG_20200726_142445-scaled-e1600714498156-1024x583.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:583;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"IMG_20200726_142445-scaled-e1600714498156-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:53:\"IMG_20200726_142445-scaled-e1600714498156-768x437.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:437;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"IMG_20200726_142445-768x1536.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:33:\"IMG_20200726_142445-1024x2048.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:33:\"IMG_20200726_142445-2000x1200.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:53:\"IMG_20200726_142445-scaled-e1600714498156-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:4:\"1.75\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:14:\"SHARP AQUOS S3\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1595773485\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.28\";s:3:\"iso\";s:3:\"127\";s:13:\"shutter_speed\";s:18:\"0.0083333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:23:\"IMG_20200726_142445.jpg\";}'),
(352, 109, '_wp_attached_file', '2020/09/cropped-IMG_20200726_142445-scaled-1.jpg'),
(353, 109, '_wp_attachment_context', 'custom-header'),
(354, 109, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:48:\"2020/09/cropped-IMG_20200726_142445-scaled-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"cropped-IMG_20200726_142445-scaled-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"cropped-IMG_20200726_142445-scaled-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"cropped-IMG_20200726_142445-scaled-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"cropped-IMG_20200726_142445-scaled-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:49:\"cropped-IMG_20200726_142445-scaled-1-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:48:\"cropped-IMG_20200726_142445-scaled-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:108;}'),
(355, 109, '_wp_attachment_custom_header_last_used_twentyseventeen', '1599535405'),
(356, 109, '_wp_attachment_is_custom_header', 'twentyseventeen'),
(357, 110, '_wp_trash_meta_status', 'publish'),
(358, 110, '_wp_trash_meta_time', '1599535405'),
(359, 111, '_edit_lock', '1599535698:1'),
(360, 111, '_wp_trash_meta_status', 'publish'),
(361, 111, '_wp_trash_meta_time', '1599535719'),
(362, 112, '_wp_trash_meta_status', 'publish'),
(363, 112, '_wp_trash_meta_time', '1599539021'),
(364, 113, '_wp_trash_meta_status', 'publish'),
(365, 113, '_wp_trash_meta_time', '1599539031'),
(366, 76, '_edit_lock', '1599538925:1'),
(367, 115, '_wp_trash_meta_status', 'publish'),
(368, 115, '_wp_trash_meta_time', '1600710691'),
(369, 116, '_edit_lock', '1600711325:1'),
(370, 117, '_wp_trash_meta_status', 'publish'),
(371, 117, '_wp_trash_meta_time', '1600712242'),
(372, 120, '_wp_trash_meta_status', 'publish'),
(373, 120, '_wp_trash_meta_time', '1600712603'),
(374, 1, '_edit_lock', '1600713294:1'),
(375, 121, '_edit_lock', '1600713561:1'),
(376, 121, '_wp_trash_meta_status', 'publish'),
(377, 121, '_wp_trash_meta_time', '1600713570'),
(378, 122, '_wp_trash_meta_status', 'publish'),
(379, 122, '_wp_trash_meta_time', '1600713721'),
(380, 123, '_edit_lock', '1600713787:1'),
(381, 123, '_customize_restore_dismissed', '1'),
(382, 124, '_edit_lock', '1600713990:1'),
(383, 124, '_customize_restore_dismissed', '1'),
(384, 125, '_edit_lock', '1600714235:1'),
(385, 125, '_wp_trash_meta_status', 'publish'),
(386, 125, '_wp_trash_meta_time', '1600714236'),
(387, 127, '_edit_lock', '1600714355:1'),
(388, 127, '_wp_trash_meta_status', 'publish'),
(389, 127, '_wp_trash_meta_time', '1600714373'),
(390, 108, '_wp_attachment_backup_sizes', 'a:9:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1280;s:6:\"height\";i:2560;s:4:\"file\";s:30:\"IMG_20200726_142445-scaled.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:31:\"IMG_20200726_142445-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:31:\"IMG_20200726_142445-150x300.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:32:\"IMG_20200726_142445-768x1536.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"large-orig\";a:4:{s:4:\"file\";s:32:\"IMG_20200726_142445-512x1024.jpg\";s:5:\"width\";i:512;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"1536x1536-orig\";a:4:{s:4:\"file\";s:32:\"IMG_20200726_142445-768x1536.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"2048x2048-orig\";a:4:{s:4:\"file\";s:33:\"IMG_20200726_142445-1024x2048.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:35:\"twentyseventeen-featured-image-orig\";a:4:{s:4:\"file\";s:33:\"IMG_20200726_142445-2000x1200.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:37:\"twentyseventeen-thumbnail-avatar-orig\";a:4:{s:4:\"file\";s:31:\"IMG_20200726_142445-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(391, 129, '_edit_lock', '1600714679:1'),
(392, 130, '_wp_attached_file', '2020/09/31047795_m-1080x720-1.jpg'),
(393, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:720;s:4:\"file\";s:33:\"2020/09/31047795_m-1080x720-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"31047795_m-1080x720-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"31047795_m-1080x720-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"31047795_m-1080x720-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"31047795_m-1080x720-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:33:\"31047795_m-1080x720-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(394, 131, '_wp_attached_file', '2020/09/cropped-31047795_m-1080x720-1.jpg'),
(395, 131, '_wp_attachment_context', 'custom-header'),
(396, 131, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:377;s:4:\"file\";s:41:\"2020/09/cropped-31047795_m-1080x720-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"cropped-31047795_m-1080x720-1-300x57.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:57;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"cropped-31047795_m-1080x720-1-1024x193.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-31047795_m-1080x720-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"cropped-31047795_m-1080x720-1-768x145.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:42:\"cropped-31047795_m-1080x720-1-1536x290.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:290;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:41:\"cropped-31047795_m-1080x720-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:130;}'),
(399, 129, '_wp_trash_meta_status', 'publish'),
(400, 129, '_wp_trash_meta_time', '1600714728'),
(401, 132, '_edit_lock', '1600715013:1'),
(402, 132, '_customize_restore_dismissed', '1'),
(403, 133, '_edit_lock', '1600716155:1'),
(404, 133, '_wp_trash_meta_status', 'publish'),
(405, 133, '_wp_trash_meta_time', '1600716192'),
(406, 135, '_edit_lock', '1600716373:1'),
(407, 135, '_wp_trash_meta_status', 'publish'),
(408, 135, '_wp_trash_meta_time', '1600716386'),
(409, 137, '_edit_lock', '1600716493:1'),
(410, 137, '_wp_trash_meta_status', 'publish'),
(411, 137, '_wp_trash_meta_time', '1600716511'),
(412, 139, '_edit_lock', '1600718232:1'),
(413, 140, '_wp_attached_file', '2020/09/r680651744362.jpg'),
(414, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:772;s:6:\"height\";i:513;s:4:\"file\";s:25:\"2020/09/r680651744362.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"r680651744362-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"r680651744362-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"r680651744362-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"r680651744362-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(415, 141, '_wp_trash_meta_status', 'publish'),
(416, 141, '_wp_trash_meta_time', '1600717137'),
(417, 130, '_edit_lock', '1600717027:1'),
(418, 142, '_wp_attached_file', '2020/09/r64581113131031.jpg'),
(419, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:559;s:6:\"height\";i:746;s:4:\"file\";s:27:\"2020/09/r64581113131031.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"r64581113131031-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"r64581113131031-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:27:\"r64581113131031-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(420, 143, '_wp_attached_file', '2020/09/r8760298302734.jpg'),
(421, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:675;s:6:\"height\";i:900;s:4:\"file\";s:26:\"2020/09/r8760298302734.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"r8760298302734-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"r8760298302734-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:26:\"r8760298302734-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(428, 130, '_wp_attachment_custom_header_last_used_twentyseventeen', '1600717839'),
(429, 130, '_wp_attachment_is_custom_header', 'twentyseventeen'),
(430, 146, '_wp_trash_meta_status', 'publish'),
(431, 146, '_wp_trash_meta_time', '1600717839'),
(432, 147, '_edit_lock', '1600718030:1'),
(433, 147, '_wp_trash_meta_status', 'publish'),
(434, 147, '_wp_trash_meta_time', '1600718050'),
(435, 149, '_wp_trash_meta_status', 'publish'),
(436, 149, '_wp_trash_meta_time', '1600718076'),
(437, 150, '_edit_lock', '1600718265:1'),
(438, 150, '_wp_trash_meta_status', 'publish'),
(439, 150, '_wp_trash_meta_time', '1600718286'),
(442, 152, '_edit_lock', '1600718754:1'),
(443, 152, '_wp_trash_meta_status', 'publish'),
(444, 152, '_wp_trash_meta_time', '1600718784'),
(445, 154, '_edit_lock', '1600738430:1'),
(446, 154, '_wp_trash_meta_status', 'publish'),
(447, 154, '_wp_trash_meta_time', '1600738458'),
(448, 156, '_edit_lock', '1600738550:1'),
(449, 156, '_wp_trash_meta_status', 'publish'),
(450, 156, '_wp_trash_meta_time', '1600738585'),
(451, 158, '_edit_lock', '1600738971:1'),
(452, 158, '_wp_trash_meta_status', 'publish'),
(453, 158, '_wp_trash_meta_time', '1600738986'),
(454, 160, '_edit_lock', '1600739176:1'),
(455, 160, '_wp_trash_meta_status', 'publish'),
(456, 160, '_wp_trash_meta_time', '1600739194'),
(457, 162, '_edit_lock', '1600739511:1'),
(458, 162, '_wp_trash_meta_status', 'publish'),
(459, 162, '_wp_trash_meta_time', '1600739521'),
(460, 164, '_edit_lock', '1600739596:1'),
(461, 164, '_wp_trash_meta_status', 'publish'),
(462, 164, '_wp_trash_meta_time', '1600739600'),
(463, 166, '_edit_lock', '1600740411:1'),
(464, 166, '_wp_trash_meta_status', 'publish'),
(465, 166, '_wp_trash_meta_time', '1600740436'),
(466, 168, '_edit_lock', '1600740471:1'),
(467, 168, '_wp_trash_meta_status', 'publish'),
(468, 168, '_wp_trash_meta_time', '1600740505'),
(469, 170, '_wp_trash_meta_status', 'publish'),
(470, 170, '_wp_trash_meta_time', '1600740545'),
(471, 171, '_wp_trash_meta_status', 'publish'),
(472, 171, '_wp_trash_meta_time', '1600740718'),
(473, 173, '_edit_lock', '1600740834:1'),
(474, 173, '_wp_trash_meta_status', 'publish'),
(475, 173, '_wp_trash_meta_time', '1600740835'),
(476, 174, '_wp_trash_meta_status', 'publish'),
(477, 174, '_wp_trash_meta_time', '1600740862'),
(478, 176, '_wp_trash_meta_status', 'publish'),
(479, 176, '_wp_trash_meta_time', '1600740918'),
(480, 178, '_edit_lock', '1600741314:1'),
(481, 178, '_wp_trash_meta_status', 'publish'),
(482, 178, '_wp_trash_meta_time', '1600741337');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-09-08 09:59:58', '2020-09-08 00:59:58', '<!-- wp:paragraph -->\n<p>WordPress へようこそ。こちらは最初の投稿です。編集または削除し、コンテンツ作成を始めてください。</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-09-08 09:59:58', '2020-09-08 00:59:58', '', 0, 'http://localhost/ssp1/wptest/?p=1', 0, 'post', '', 1),
(2, 1, '2020-09-08 09:59:58', '2020-09-08 00:59:58', '<!-- wp:paragraph -->\n<p>これはサンプルページです。同じ位置に固定され、(多くのテーマでは) サイトナビゲーションメニューに含まれる点がブログ投稿とは異なります。まずは、サイト訪問者に対して自分のことを説明する自己紹介ページを作成するのが一般的です。たとえば以下のようなものです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>はじめまして。昼間はバイク便のメッセンジャーとして働いていますが、俳優志望でもあります。これは僕のサイトです。ロサンゼルスに住み、ジャックという名前のかわいい犬を飼っています。好きなものはピニャコラーダ、そして通り雨に濡れること。</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>または、このようなものです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>XYZ 小道具株式会社は1971年の創立以来、高品質の小道具を皆様にご提供させていただいています。ゴッサム・シティに所在する当社では2,000名以上の社員が働いており、様々な形で地域のコミュニティへ貢献しています。</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>新しく WordPress ユーザーになった方は、<a href=\"http://localhost/ssp1/wptest/wp-admin/\">ダッシュボード</a>へ行ってこのページを削除し、独自のコンテンツを含む新しいページを作成してください。それでは、お楽しみください !</p>\n<!-- /wp:paragraph -->', 'サンプルページ', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-09-08 09:59:58', '2020-09-08 00:59:58', '', 0, 'http://localhost/ssp1/wptest/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-09-08 09:59:58', '2020-09-08 00:59:58', '<!-- wp:heading --><h2>私たちについて</h2><!-- /wp:heading --><!-- wp:paragraph --><p>私たちのサイトアドレスは http://localhost/ssp1/wptest です。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>このサイトが収集する個人データと収集の理由</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>コメント</h3><!-- /wp:heading --><!-- wp:paragraph --><p>訪問者がこのサイトにコメントを残す際、コメントフォームに表示されているデータ、そしてスパム検出に役立てるための IP アドレスとブラウザーユーザーエージェント文字列を収集します。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>メールアドレスから作成される匿名化された (「ハッシュ」とも呼ばれる) 文字列は、あなたが Gravatar サービスを使用中かどうか確認するため同サービスに提供されることがあります。同サービスのプライバシーポリシーは https://automattic.com/privacy/ にあります。コメントが承認されると、プロフィール画像がコメントとともに一般公開されます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>メディア</h3><!-- /wp:heading --><!-- wp:paragraph --><p>サイトに画像をアップロードする際、位置情報 (EXIF GPS) を含む画像をアップロードするべきではありません。サイトの訪問者は、サイトから画像をダウンロードして位置データを抽出することができます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>お問い合わせフォーム</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookie</h3><!-- /wp:heading --><!-- wp:paragraph --><p>サイトにコメントを残す際、お名前、メールアドレス、サイトを Cookie に保存することにオプトインできます。これはあなたの便宜のためであり、他のコメントを残す際に詳細情報を再入力する手間を省きます。この Cookie は1年間保持されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>ログインページを訪問すると、お使いのブラウザーが Cookie を受け入れられるかを判断するために一時 Cookie を設定します。この Cookie は個人データを含んでおらず、ブラウザーを閉じると廃棄されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>ログインの際さらに、ログイン情報と画面表示情報を保持するため、私たちはいくつかの Cookie を設定します。ログイン Cookie は2日間、画面表示オプション Cookie は1年間保持されます。「ログイン状態を保存する」を選択した場合、ログイン情報は2週間維持されます。ログアウトするとログイン Cookie は消去されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>もし投稿を編集または公開すると、さらなる Cookie がブラウザーに保存されます。この Cookie は個人データを含まず、単に変更した投稿の ID を示すものです。1日で有効期限が切れます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>他サイトからの埋め込みコンテンツ</h3><!-- /wp:heading --><!-- wp:paragraph --><p>このサイトの投稿には埋め込みコンテンツ (動画、画像、投稿など) が含まれます。他サイトからの埋め込みコンテンツは、訪問者がそのサイトを訪れた場合とまったく同じように振る舞います。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>これらのサイトは、あなたのデータの収集、Cookie の使用、サードパーティによる追加トラッキングの埋め込み、埋め込みコンテンツとのやりとりの監視を行うことがあります。アカウントを使ってそのサイトにログイン中の場合、埋め込みコンテンツとのやりとりのトラッキングも含まれます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>アナリティクス</h3><!-- /wp:heading --><!-- wp:heading --><h2>あなたのデータの共有先</h2><!-- /wp:heading --><!-- wp:heading --><h2>データを保存する期間</h2><!-- /wp:heading --><!-- wp:paragraph --><p>あなたがコメントを残すと、コメントとそのメタデータが無期限に保持されます。これは、モデレーションキューにコメントを保持しておく代わりに、フォローアップのコメントを自動的に認識し承認できるようにするためです。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>このサイトに登録したユーザーがいる場合、その方がユーザープロフィールページで提供した個人情報を保存します。すべてのユーザーは自分の個人情報を表示、編集、削除することができます (ただしユーザー名は変更することができません)。サイト管理者もそれらの情報を表示、編集できます。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>データに対するあなたの権利</h2><!-- /wp:heading --><!-- wp:paragraph --><p>このサイトのアカウントを持っているか、サイトにコメントを残したことがある場合、私たちが保持するあなたについての個人データ (提供したすべてのデータを含む) をエクスポートファイルとして受け取るリクエストを行うことができます。また、個人データの消去リクエストを行うこともできます。これには、管理、法律、セキュリティ目的のために保持する義務があるデータは含まれません。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>あなたのデータの送信先</h2><!-- /wp:heading --><!-- wp:paragraph --><p>訪問者によるコメントは、自動スパム検出サービスを通じて確認を行う場合があります。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>あなたの連絡先情報</h2><!-- /wp:heading --><!-- wp:heading --><h2>追加情報</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>データの保護方法</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>データ漏洩対策手順</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>データ送信元のサードパーティ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>ユーザーデータに対して行う自動的な意思決定およびプロファイリング</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>業界規制の開示要件</h3><!-- /wp:heading -->', 'プライバシーポリシー', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-09-08 09:59:58', '2020-09-08 00:59:58', '', 0, 'http://localhost/ssp1/wptest/?page_id=3', 0, 'page', '', 0),
(59, 1, '2020-09-08 11:32:50', '2020-09-08 02:32:50', '', 'jibun', '', 'inherit', 'open', 'closed', '', 'jibun', '', '', '2020-09-08 11:32:50', '2020-09-08 02:32:50', '', 0, 'http://localhost/ssp1/wptest/wp-content/uploads/2020/09/jibun.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2020-09-08 11:32:58', '2020-09-08 02:32:58', 'http://localhost/ssp1/wptest/wp-content/uploads/2020/09/cropped-jibun.jpg', 'cropped-jibun.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-jibun-jpg', '', '', '2020-09-08 11:32:58', '2020-09-08 02:32:58', '', 0, 'http://localhost/ssp1/wptest/wp-content/uploads/2020/09/cropped-jibun.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', '現代美術館が新装オープン', '', 'inherit', 'open', 'closed', '', '%e7%8f%be%e4%bb%a3%e7%be%8e%e8%a1%93%e9%a4%a8%e3%81%8c%e6%96%b0%e8%a3%85%e3%82%aa%e3%83%bc%e3%83%97%e3%83%b3', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 0, 'http://localhost/ssp1/wptest/wp-content/uploads/2020/09/2020-landscape-1-2.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', '<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">スウェーデン北部の現代アートを集めたプレミアムスポット。夏季期間中は午前10時から午後6時まで毎日営業しています。</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>作品と日程</h3><!-- /wp:heading --><!-- wp:paragraph --><p>8月1日〜12月1日</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">続きを読む</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>オペレーション劇場</h3><!-- /wp:heading --><!-- wp:paragraph --><p>10月1日〜12月1日</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">続きを読む</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>値する人生</h3><!-- /wp:heading --><!-- wp:paragraph --><p>8月1日〜12月1日</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">続きを読む</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>シニャックからマチスまで</h3><!-- /wp:heading --><!-- wp:paragraph --><p>10月1日〜12月1日</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">続きを読む</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">「哲学者ドナ・ハラウェイが証明したとおり、サイボーグは敬虔ではないのです。彼らは宇宙のことを覚えていません。」</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">7階建ての印象的な建築の現代美術館では、国際的な現代美術の展示を行っています。その際、美術の歴史的分析も含めることもあります。実存的、政治的、哲学的問題は当館のプログラムの本質といえます。訪問者の皆さんを、ガイド付きツアー、アーティストトーク、講演、映画上映などの無料イベントへご招待しています。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>展覧会は現代美術館と世界中のアーティストや美術館によるコラボレーションの成果であり、国際的に注目されることも少なくありません。現代美術館はヨーロッパ博物館大賞から特別推奨賞を授けられ、スウェーデン博物館大賞やヨーロッパ博物館評議会賞においても上位の候補者となりました。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">会員になって限定オファーへアクセス。</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">会員の方は、限定展示やセールにアクセスできます。会員になるには年間1万円の費用がかかり、請求は年に1回です。</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">参加する</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->', '現代美術館が新装オープン', '', 'publish', 'closed', 'closed', '', '%e7%8f%be%e4%bb%a3%e7%be%8e%e8%a1%93%e9%a4%a8%e3%81%8c%e6%96%b0%e8%a3%85%e3%82%aa%e3%83%bc%e3%83%97%e3%83%b3-2', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 0, 'http://localhost/ssp1/wptest/?page_id=74', 0, 'page', '', 0),
(75, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', '<!-- wp:paragraph -->\n<p>あなたは自身や自身の作品を紹介したいアーティストかもしれないし、あるいは、説明するべきミッションを持つ企業かもしれません。</p>\n<!-- /wp:paragraph -->', '会社概要', '', 'publish', 'closed', 'closed', '', '%e4%bc%9a%e7%a4%be%e6%a6%82%e8%a6%81', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 0, 'http://localhost/ssp1/wptest/?page_id=75', 0, 'page', '', 0),
(76, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', '<!-- wp:paragraph -->\n<p>これは、住所や電話番号などの基本的な連絡先情報が記載されたページです。 問い合わせフォームを追加するプラグインを試すこともできます。</p>\n<!-- /wp:paragraph -->', 'お問い合わせ', '', 'publish', 'closed', 'closed', '', '%e3%81%8a%e5%95%8f%e3%81%84%e5%90%88%e3%82%8f%e3%81%9b', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 0, 'http://localhost/ssp1/wptest/?page_id=76', 0, 'page', '', 0),
(77, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 'ブログ', '', 'publish', 'closed', 'closed', '', '%e3%83%96%e3%83%ad%e3%82%b0', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 0, 'http://localhost/ssp1/wptest/?page_id=77', 0, 'page', '', 0),
(78, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', '{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjI3OiLjgZPjga7jgrXjgqTjg4jjgavjgaTjgYTjgaYiO3M6NDoidGV4dCI7czoxMTc6IuOBk+OBk+OBq+OBr+OAgeiHquW3see0ueS7i+OChOOCteOCpOODiOOBrue0ueS7i+OAgeOBguOCi+OBhOOBr+OCr+ODrOOCuOODg+ODiOOBrumhnuOCkuabuOOBj+OBqOiJr+OBhOOBp+OBl+OCh+OBhuOAgiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"\\u3053\\u306e\\u30b5\\u30a4\\u30c8\\u306b\\u3064\\u3044\\u3066\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bfe3d25991c07a70aa430b473e0cde67\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:42:15\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:42:15\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEyOiLjgqLjgq/jgrvjgrkiO3M6NDoidGV4dCI7czoxNTc6IjxzdHJvbmc+5L2P5omAPC9zdHJvbmc+CjEyMyBNYWluIFN0cmVldApOZXcgWW9yaywgTlkgMTAwMDEKCjxzdHJvbmc+5Za25qWt5pmC6ZaTPC9zdHJvbmc+CuaciOOAnOmHkTogOTowMCBBTSAmbmRhc2g7IDU6MDAgUE0K5Zyf5pelOiAxMTowMCBBTSAmbmRhc2g7IDM6MDAgUE0iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u30a2\\u30af\\u30bb\\u30b9\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"393acd04ecfeb93c0a5eabd64c87b836\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:42:15\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:42:15\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            73,\n            74,\n            75,\n            76,\n            77\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:42:15\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"\\u30e1\\u30a4\\u30f3\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:44:08\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"\\u30db\\u30fc\\u30e0\\u30da\\u30fc\\u30b8\",\n            \"url\": \"http://localhost/ssp1/wptest/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u30ab\\u30b9\\u30bf\\u30e0\\u30ea\\u30f3\\u30af\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:44:08\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 75,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u4f1a\\u793e\\u6982\\u8981\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u4f1a\\u793e\\u6982\\u8981\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u56fa\\u5b9a\\u30da\\u30fc\\u30b8\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:44:08\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 77,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\\u30d6\\u30ed\\u30b0\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u30d6\\u30ed\\u30b0\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u56fa\\u5b9a\\u30da\\u30fc\\u30b8\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:44:08\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 76,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"\\u304a\\u554f\\u3044\\u5408\\u308f\\u305b\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u304a\\u554f\\u3044\\u5408\\u308f\\u305b\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u56fa\\u5b9a\\u30da\\u30fc\\u30b8\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:44:08\"\n    },\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:42:15\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"\\u30e1\\u30a4\\u30f3\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:44:08\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"\\u30db\\u30fc\\u30e0\\u30da\\u30fc\\u30b8\",\n            \"url\": \"http://localhost/ssp1/wptest/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u30ab\\u30b9\\u30bf\\u30e0\\u30ea\\u30f3\\u30af\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:44:08\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 75,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u4f1a\\u793e\\u6982\\u8981\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u4f1a\\u793e\\u6982\\u8981\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u56fa\\u5b9a\\u30da\\u30fc\\u30b8\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:44:08\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 77,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\\u30d6\\u30ed\\u30b0\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u30d6\\u30ed\\u30b0\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u56fa\\u5b9a\\u30da\\u30fc\\u30b8\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:44:08\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 76,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"\\u304a\\u554f\\u3044\\u5408\\u308f\\u305b\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u304a\\u554f\\u3044\\u5408\\u308f\\u305b\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u56fa\\u5b9a\\u30da\\u30fc\\u30b8\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:44:08\"\n    },\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:42:15\"\n    },\n    \"nav_menu[-9]\": {\n        \"value\": {\n            \"name\": \"\\ufeff\\u30bd\\u30fc\\u30b7\\u30e3\\u30eb\\u30ea\\u30f3\\u30af\\u30e1\\u30cb\\u30e5\\u30fc\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:44:08\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"\\u30ab\\u30b9\\u30bf\\u30e0\\u30ea\\u30f3\\u30af\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:44:08\"\n    },\n    \"nav_menu_item[-10]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"\\u30ab\\u30b9\\u30bf\\u30e0\\u30ea\\u30f3\\u30af\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:44:08\"\n    },\n    \"nav_menu_item[-11]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"\\u30ab\\u30b9\\u30bf\\u30e0\\u30ea\\u30f3\\u30af\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:44:08\"\n    },\n    \"nav_menu_item[-12]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"\\u30ab\\u30b9\\u30bf\\u30e0\\u30ea\\u30f3\\u30af\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:44:08\"\n    },\n    \"nav_menu_item[-13]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"\\u30e1\\u30fc\\u30eb\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"\\u30ab\\u30b9\\u30bf\\u30e0\\u30ea\\u30f3\\u30af\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:44:08\"\n    },\n    \"twentytwenty::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:42:15\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:42:15\"\n    },\n    \"page_on_front\": {\n        \"value\": \"74\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:44:08\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"77\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:44:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fb579120-213f-43ce-b539-1ee315ca8113', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 0, 'http://localhost/ssp1/wptest/?p=78', 0, 'customize_changeset', '', 0),
(79, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', '<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">スウェーデン北部の現代アートを集めたプレミアムスポット。夏季期間中は午前10時から午後6時まで毎日営業しています。</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>作品と日程</h3><!-- /wp:heading --><!-- wp:paragraph --><p>8月1日〜12月1日</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">続きを読む</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>オペレーション劇場</h3><!-- /wp:heading --><!-- wp:paragraph --><p>10月1日〜12月1日</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">続きを読む</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>値する人生</h3><!-- /wp:heading --><!-- wp:paragraph --><p>8月1日〜12月1日</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">続きを読む</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>シニャックからマチスまで</h3><!-- /wp:heading --><!-- wp:paragraph --><p>10月1日〜12月1日</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">続きを読む</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">「哲学者ドナ・ハラウェイが証明したとおり、サイボーグは敬虔ではないのです。彼らは宇宙のことを覚えていません。」</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">7階建ての印象的な建築の現代美術館では、国際的な現代美術の展示を行っています。その際、美術の歴史的分析も含めることもあります。実存的、政治的、哲学的問題は当館のプログラムの本質といえます。訪問者の皆さんを、ガイド付きツアー、アーティストトーク、講演、映画上映などの無料イベントへご招待しています。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>展覧会は現代美術館と世界中のアーティストや美術館によるコラボレーションの成果であり、国際的に注目されることも少なくありません。現代美術館はヨーロッパ博物館大賞から特別推奨賞を授けられ、スウェーデン博物館大賞やヨーロッパ博物館評議会賞においても上位の候補者となりました。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">会員になって限定オファーへアクセス。</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">会員の方は、限定展示やセールにアクセスできます。会員になるには年間1万円の費用がかかり、請求は年に1回です。</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">参加する</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://localhost/ssp1/wptest/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->', '現代美術館が新装オープン', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 74, 'http://localhost/ssp1/wptest/2020/09/08/74-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', '<!-- wp:paragraph -->\n<p>あなたは自身や自身の作品を紹介したいアーティストかもしれないし、あるいは、説明するべきミッションを持つ企業かもしれません。</p>\n<!-- /wp:paragraph -->', '会社概要', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 75, 'http://localhost/ssp1/wptest/2020/09/08/75-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', '<!-- wp:paragraph -->\n<p>これは、住所や電話番号などの基本的な連絡先情報が記載されたページです。 問い合わせフォームを追加するプラグインを試すこともできます。</p>\n<!-- /wp:paragraph -->', 'お問い合わせ', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 76, 'http://localhost/ssp1/wptest/2020/09/08/76-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 'ブログ', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 77, 'http://localhost/ssp1/wptest/2020/09/08/77-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 'ホームページ', '', 'publish', 'closed', 'closed', '', '%e3%83%9b%e3%83%bc%e3%83%a0%e3%83%9a%e3%83%bc%e3%82%b8', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/%e3%83%9b%e3%83%bc%e3%83%a0%e3%83%9a%e3%83%bc%e3%82%b8/', 0, 'nav_menu_item', '', 0),
(84, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/84/', 1, 'nav_menu_item', '', 0),
(85, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/85/', 2, 'nav_menu_item', '', 0),
(86, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/86/', 3, 'nav_menu_item', '', 0),
(87, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 'ホームページ', '', 'publish', 'closed', 'closed', '', '%e3%83%9b%e3%83%bc%e3%83%a0%e3%83%9a%e3%83%bc%e3%82%b8-2', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/%e3%83%9b%e3%83%bc%e3%83%a0%e3%83%9a%e3%83%bc%e3%82%b8-2/', 0, 'nav_menu_item', '', 0),
(88, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/88/', 1, 'nav_menu_item', '', 0),
(89, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', ' ', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/89/', 2, 'nav_menu_item', '', 0),
(90, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/90/', 3, 'nav_menu_item', '', 0),
(91, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/yelp/', 0, 'nav_menu_item', '', 0),
(92, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/facebook/', 1, 'nav_menu_item', '', 0),
(93, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/twitter/', 2, 'nav_menu_item', '', 0),
(94, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/instagram/', 3, 'nav_menu_item', '', 0),
(95, 1, '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 'メール', '', 'publish', 'closed', 'closed', '', '%e3%83%a1%e3%83%bc%e3%83%ab', '', '', '2020-09-08 11:44:08', '2020-09-08 02:44:08', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/%e3%83%a1%e3%83%bc%e3%83%ab/', 4, 'nav_menu_item', '', 0),
(96, 1, '2020-09-08 11:45:12', '2020-09-08 02:45:12', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"text-2\",\n                \"text-3\",\n                \"text-4\",\n                \"text-5\"\n            ],\n            \"sidebar-1\": [\n                \"text-6\"\n            ],\n            \"sidebar-2\": [\n                \"text-7\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:45:12\"\n    },\n    \"blogname\": {\n        \"value\": \"\\u4e0d\\u601d\\u8b70\\u306a\\u30c7\\u30b9\\u30de\\u30c3\\u30c1\\u306e\\u4e16\\u754c\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:45:12\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:45:12\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:45:12\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"value\": 4,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 02:45:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '06070cd7-6eca-4284-822a-74545b9a1aa1', '', '', '2020-09-08 11:45:12', '2020-09-08 02:45:12', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/06070cd7-6eca-4284-822a-74545b9a1aa1/', 0, 'customize_changeset', '', 0),
(97, 1, '2020-09-08 11:45:26', '2020-09-08 02:45:26', '', 'cropped-jibun-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-jibun-1-jpg', '', '', '2020-09-08 11:45:26', '2020-09-08 02:45:26', '', 0, 'http://localhost/ssp1/wptest/wp-content/uploads/2020/09/cropped-jibun-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2020-09-08 12:14:22', '2020-09-08 03:14:22', '{\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:14:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '59f9dfcd-96de-429f-bf97-678450b4d39f', '', '', '2020-09-08 12:14:22', '2020-09-08 03:14:22', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/59f9dfcd-96de-429f-bf97-678450b4d39f/', 0, 'customize_changeset', '', 0),
(101, 1, '2020-09-08 12:15:45', '2020-09-08 03:15:45', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:15:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0a83fe80-3af8-46b3-9265-3a53aad8eaeb', '', '', '2020-09-08 12:15:45', '2020-09-08 03:15:45', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/0a83fe80-3af8-46b3-9265-3a53aad8eaeb/', 0, 'customize_changeset', '', 0),
(102, 1, '2020-09-08 12:16:07', '2020-09-08 03:16:07', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:16:07\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"76\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:16:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a48b5d88-cd15-49da-a6f9-a0d36b4bb4fe', '', '', '2020-09-08 12:16:07', '2020-09-08 03:16:07', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/a48b5d88-cd15-49da-a6f9-a0d36b4bb4fe/', 0, 'customize_changeset', '', 0),
(103, 1, '2020-09-08 12:16:16', '2020-09-08 03:16:16', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:16:16\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:16:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a8e93ee2-f8d5-4ccc-ac71-1c75001eb359', '', '', '2020-09-08 12:16:16', '2020-09-08 03:16:16', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/a8e93ee2-f8d5-4ccc-ac71-1c75001eb359/', 0, 'customize_changeset', '', 0),
(104, 1, '2020-09-08 12:19:31', '2020-09-08 03:19:31', '{\n    \"twentyseventeen::header_image\": {\n        \"value\": \"random-default-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:19:31\"\n    },\n    \"twentyseventeen::header_image_data\": {\n        \"value\": \"random-default-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:19:31\"\n    },\n    \"twentyseventeen::colorscheme\": {\n        \"value\": \"dark\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:19:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '94617f47-d454-43aa-9454-52dff7ceab3a', '', '', '2020-09-08 12:19:31', '2020-09-08 03:19:31', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/94617f47-d454-43aa-9454-52dff7ceab3a/', 0, 'customize_changeset', '', 0),
(105, 1, '2020-09-08 12:19:58', '2020-09-08 03:19:58', '{\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:19:58\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:19:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bf9acd98-b7cc-4890-a534-602baef6b4a5', '', '', '2020-09-08 12:19:58', '2020-09-08 03:19:58', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/bf9acd98-b7cc-4890-a534-602baef6b4a5/', 0, 'customize_changeset', '', 0),
(106, 1, '2020-09-08 12:20:27', '2020-09-08 03:20:27', 'http://localhost/ssp1/wptest/wp-content/uploads/2020/09/cropped-jibun-2.jpg', 'cropped-jibun-2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-jibun-2-jpg', '', '', '2020-09-08 12:20:27', '2020-09-08 03:20:27', '', 0, 'http://localhost/ssp1/wptest/wp-content/uploads/2020/09/cropped-jibun-2.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(107, 1, '2020-09-08 12:22:01', '2020-09-08 03:22:01', '{\n    \"twentyseventeen::custom_logo\": {\n        \"value\": 106,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:20:50\"\n    },\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:21:50\"\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:22:01\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"77\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:22:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9e7c9791-402b-4fe7-8d79-ae4d5c3a2d0f', '', '', '2020-09-08 12:22:01', '2020-09-08 03:22:01', '', 0, 'http://localhost/ssp1/wptest/?p=107', 0, 'customize_changeset', '', 0),
(108, 1, '2020-09-08 12:23:07', '2020-09-08 03:23:07', '', 'IMG_20200726_142445', '', 'inherit', 'open', 'closed', '', 'img_20200726_142445', '', '', '2020-09-08 12:23:07', '2020-09-08 03:23:07', '', 0, 'http://localhost/ssp1/wptest/wp-content/uploads/2020/09/IMG_20200726_142445.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2020-09-08 12:23:18', '2020-09-08 03:23:18', '', 'cropped-IMG_20200726_142445-scaled-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-img_20200726_142445-scaled-1-jpg', '', '', '2020-09-08 12:23:18', '2020-09-08 03:23:18', '', 0, 'http://localhost/ssp1/wptest/wp-content/uploads/2020/09/cropped-IMG_20200726_142445-scaled-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2020-09-08 12:23:25', '2020-09-08 03:23:25', '{\n    \"twentyseventeen::header_image\": {\n        \"value\": \"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/cropped-IMG_20200726_142445-scaled-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:23:25\"\n    },\n    \"twentyseventeen::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/cropped-IMG_20200726_142445-scaled-1.jpg\",\n            \"thumbnail_url\": \"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/cropped-IMG_20200726_142445-scaled-1.jpg\",\n            \"timestamp\": 1599535399078,\n            \"attachment_id\": 109,\n            \"width\": 2000,\n            \"height\": 1200\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:23:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '69566724-205b-453e-a327-52f9e39f1974', '', '', '2020-09-08 12:23:25', '2020-09-08 03:23:25', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/69566724-205b-453e-a327-52f9e39f1974/', 0, 'customize_changeset', '', 0),
(111, 1, '2020-09-08 12:28:39', '2020-09-08 03:28:39', '{\n    \"sidebars_widgets[sidebar-3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:27:18\"\n    },\n    \"twentyseventeen::page_layout\": {\n        \"value\": \"one-column\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:28:39\"\n    },\n    \"widget_calendar[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:25:18\"\n    },\n    \"widget_text[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjM5OiLjgZPjga7kurrnianjga/jg5XjgqPjgq/jgrfjg6fjg7PjgafjgZkiO3M6NDoidGV4dCI7czo2NjoiPHN0cm9uZz7lrp/lnKjjgZfjgb7jgZvjgpPjgII8L3N0cm9uZz4NCg0K54iG55m644KC44GX44G+44Gb44KT44CCIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u3053\\u306e\\u4eba\\u7269\\u306f\\u30d5\\u30a3\\u30af\\u30b7\\u30e7\\u30f3\\u3067\\u3059\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"88bf1a37a1daafb13c097873bd36d1b8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:27:18\"\n    },\n    \"widget_media_gallery[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo2OntzOjU6InRpdGxlIjtzOjA6IiI7czozOiJpZHMiO2E6MTp7aTowO2k6MTA4O31zOjc6ImNvbHVtbnMiO2k6MztzOjQ6InNpemUiO3M6OToidGh1bWJuYWlsIjtzOjk6ImxpbmtfdHlwZSI7czo0OiJwb3N0IjtzOjE0OiJvcmRlcmJ5X3JhbmRvbSI7YjowO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"04432d2011b574acdcd86e35c203f9d3\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:26:18\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"value\": [\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:28:18\"\n    },\n    \"widget_calendar[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:27:18\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"value\": \"2\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:28:39\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"value\": \"2\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 03:28:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '62d1fb31-d971-4194-b4ec-b207e703bddb', '', '', '2020-09-08 12:28:39', '2020-09-08 03:28:39', '', 0, 'http://localhost/ssp1/wptest/?p=111', 0, 'customize_changeset', '', 0),
(112, 1, '2020-09-08 13:23:41', '2020-09-08 04:23:41', '{\n    \"twentyseventeen::panel_1\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 04:23:41\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 04:23:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7479172c-5ce6-4cc0-a0f9-be5c1735dba7', '', '', '2020-09-08 13:23:41', '2020-09-08 04:23:41', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/7479172c-5ce6-4cc0-a0f9-be5c1735dba7/', 0, 'customize_changeset', '', 0),
(113, 1, '2020-09-08 13:23:51', '2020-09-08 04:23:51', '{\n    \"twentyseventeen::page_layout\": {\n        \"value\": \"two-column\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-08 04:23:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '389abff6-14b1-4cf3-8f0a-f5785a873622', '', '', '2020-09-08 13:23:51', '2020-09-08 04:23:51', '', 0, 'http://localhost/ssp1/wptest/2020/09/08/389abff6-14b1-4cf3-8f0a-f5785a873622/', 0, 'customize_changeset', '', 0),
(114, 1, '2020-09-22 00:10:59', '0000-00-00 00:00:00', '', '自動下書き', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-22 00:10:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/ssp1/wptest/?p=114', 0, 'post', '', 0),
(115, 1, '2020-09-22 02:51:31', '2020-09-21 17:51:31', '{\n    \"page_on_front\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 17:51:31\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 17:51:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4cb6f78d-f444-4308-86b7-1391d0d7ec2c', '', '', '2020-09-22 02:51:31', '2020-09-21 17:51:31', '', 0, 'http://localhost/ssp1/wptest/2020/09/22/4cb6f78d-f444-4308-86b7-1391d0d7ec2c/', 0, 'customize_changeset', '', 0),
(116, 1, '2020-09-22 03:01:40', '0000-00-00 00:00:00', '', '自動下書き', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-22 03:01:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/ssp1/wptest/?page_id=116', 0, 'page', '', 0),
(117, 1, '2020-09-22 03:17:22', '2020-09-21 18:17:22', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \"body.colors-dark, .colors-dark button, .colors-dark input, .colors-dark select, .colors-dark textarea, .colors-dark h3, .colors-dark h4, .colors-dark h6, .colors-dark label, .colors-dark .entry-title a, .colors-dark.twentyseventeen-front-page .panel-content .recent-posts article, .colors-dark .entry-footer .cat-links a, .colors-dark .entry-footer .tags-links a, .colors-dark .format-quote blockquote, .colors-dark .nav-title, .colors-dark .comment-body {\\n\\tcolor: beige;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 18:17:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7511df1f-b4cc-483c-a700-fd8a88c50a5f', '', '', '2020-09-22 03:17:22', '2020-09-21 18:17:22', '', 0, 'http://localhost/ssp1/wptest/2020/09/22/7511df1f-b4cc-483c-a700-fd8a88c50a5f/', 0, 'customize_changeset', '', 0),
(118, 1, '2020-09-22 03:17:22', '2020-09-21 18:17:22', '.site-title a{\n	background:black;\n	padding:7px 10px;\n	font-size:36px;\n	margin-bottom:19px;\n}\n\n.site-description{\n	background:black;\n	font-size:19px;\n	padding:7px 10px;\n	opacity:1;\n	margin-top:14px;\n}\n\n.textwidget a{\n	margin:0;\n	padding:0;\n}\n.entry-title a{\n	font-weight:bold;\n	font-size:28px;\n	color:#e06b17;\n	\n}\n.entry-content h4{\n	font-size:;\n	font-weight:normal;\n	color:#e06b17;\n}\n.site-content {\n	/*margin-left:-5px;*/\n}\n.entry-content p{\n	font-size:17px;\n}\n.widget-title{\n	font-size:28px;\n	color:#e06b17;\n}\nhtml[lang=\"ja\"] h1, html[lang=\"ja\"] h2, html[lang=\"ja\"] h3, html[lang=\"ja\"] h4, html[lang=\"ja\"] h5, html[lang=\"ja\"] h6{\n	font-size:20px;\n	color: #e06b17;\n}\nul li a{\n	color:white;\n}', 'twentyseventeen', '', 'publish', 'closed', 'closed', '', 'twentyseventeen', '', '', '2020-09-22 11:22:17', '2020-09-22 02:22:17', '', 0, 'http://localhost/ssp1/wptest/2020/09/22/twentyseventeen/', 0, 'custom_css', '', 0),
(119, 1, '2020-09-22 03:17:22', '2020-09-21 18:17:22', 'body.colors-dark, .colors-dark button, .colors-dark input, .colors-dark select, .colors-dark textarea, .colors-dark h3, .colors-dark h4, .colors-dark h6, .colors-dark label, .colors-dark .entry-title a, .colors-dark.twentyseventeen-front-page .panel-content .recent-posts article, .colors-dark .entry-footer .cat-links a, .colors-dark .entry-footer .tags-links a, .colors-dark .format-quote blockquote, .colors-dark .nav-title, .colors-dark .comment-body {\n	color: beige;\n}\n', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-09-22 03:17:22', '2020-09-21 18:17:22', '', 118, 'http://localhost/ssp1/wptest/2020/09/22/118-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2020-09-22 03:23:23', '2020-09-21 18:23:23', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 18:23:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6ed2c9a6-d14b-4bbd-aa66-bb8c9a63ddb1', '', '', '2020-09-22 03:23:23', '2020-09-21 18:23:23', '', 0, 'http://localhost/ssp1/wptest/2020/09/22/6ed2c9a6-d14b-4bbd-aa66-bb8c9a63ddb1/', 0, 'customize_changeset', '', 0),
(121, 1, '2020-09-22 03:39:30', '2020-09-21 18:39:30', '{\n    \"blogname\": {\n        \"value\": \"TOKYO BEST 3\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 18:39:21\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\\u674e\\u304c\\u9078\\u3076\\u3001\\u6771\\u4eac\\u306e\\u30d9\\u30b9\\u30c8\\u30aa\\u30d6\\u30d9\\u30b9\\u30c8\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 18:39:30\"\n    },\n    \"twentyseventeen::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 18:39:21\"\n    },\n    \"twentyseventeen::header_textcolor\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 18:39:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '493a11b6-d548-4818-87b9-0a2319ee3abd', '', '', '2020-09-22 03:39:30', '2020-09-21 18:39:30', '', 0, 'http://localhost/ssp1/wptest/?p=121', 0, 'customize_changeset', '', 0),
(122, 1, '2020-09-22 03:42:01', '2020-09-21 18:42:01', '{\n    \"widget_text[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjQyOiLigLvjgZPjga7kurrnianjga/jg5XjgqPjgq/jgrfjg6fjg7PjgafjgZkiO3M6NDoidGV4dCI7czo2NjoiPHN0cm9uZz7lrp/lnKjjgZfjgb7jgZvjgpPjgII8L3N0cm9uZz4NCg0K54iG55m644KC44GX44G+44Gb44KT44CCIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u203b\\u3053\\u306e\\u4eba\\u7269\\u306f\\u30d5\\u30a3\\u30af\\u30b7\\u30e7\\u30f3\\u3067\\u3059\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"e94bfbd6c04766a59512c98f53f9f55b\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 18:42:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3d8fcbdc-3469-4657-ad44-65cddb564bcd', '', '', '2020-09-22 03:42:01', '2020-09-21 18:42:01', '', 0, 'http://localhost/ssp1/wptest/2020/09/22/3d8fcbdc-3469-4657-ad44-65cddb564bcd/', 0, 'customize_changeset', '', 0),
(123, 1, '2020-09-22 03:43:07', '0000-00-00 00:00:00', '{\n    \"page_on_front\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 18:42:56\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 18:43:07\"\n    },\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 18:43:07\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '6d90249f-bce2-4a23-a3f7-959da0b49b0d', '', '', '2020-09-22 03:43:07', '2020-09-21 18:43:07', '', 0, 'http://localhost/ssp1/wptest/?p=123', 0, 'customize_changeset', '', 0),
(124, 1, '2020-09-22 03:45:15', '0000-00-00 00:00:00', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \"body.colors-dark, .colors-dark button, .colors-dark input, .colors-dark select, .colors-dark textarea, .colors-dark h3, .colors-dark h4, .colors-dark h6, .colors-dark label, .colors-dark .entry-title a, .colors-dark.twentyseventeen-front-page .panel-content .recent-posts article, .colors-dark .entry-footer .cat-links a, .colors-dark .entry-footer .tags-links a, .colors-dark .format-quote blockquote, .colors-dark .nav-title, .colors-dark .comment-body {\\n\\tcolor: beige;\\n}\\n\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 18:45:15\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '1a1b679f-74e8-4e42-aae4-cc9ea4f318ab', '', '', '2020-09-22 03:45:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/ssp1/wptest/?p=124', 0, 'customize_changeset', '', 0),
(125, 1, '2020-09-22 03:50:36', '2020-09-21 18:50:36', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \"body.colors-dark, .colors-dark button, .colors-dark input, .colors-dark select, .colors-dark textarea, .colors-dark h3, .colors-dark h4, .colors-dark h6, .colors-dark label, .colors-dark .entry-title a, .colors-dark.twentyseventeen-front-page .panel-content .recent-posts article, .colors-dark .entry-footer .cat-links a, .colors-dark .entry-footer .tags-links a, .colors-dark .format-quote blockquote, .colors-dark .nav-title, .colors-dark .comment-body {\\n\\tcolor: beige;\\n}\\n.colors-dark input[type=\\\"text\\\"]:focus, .colors-dark input[type=\\\"email\\\"]:focus, .colors-dark input[type=\\\"url\\\"]:focus, .colors-dark input[type=\\\"password\\\"]:focus, .colors-dark input[type=\\\"search\\\"]:focus, .colors-dark input[type=\\\"number\\\"]:focus, .colors-dark input[type=\\\"tel\\\"]:focus, .colors-dark input[type=\\\"range\\\"]:focus, .colors-dark input[type=\\\"date\\\"]:focus, .colors-dark input[type=\\\"month\\\"]:focus, .colors-dark input[type=\\\"week\\\"]:focus, .colors-dark input[type=\\\"time\\\"]:focus, .colors-dark input[type=\\\"datetime\\\"]:focus, .colors-dark input[type=\\\"datetime-local\\\"]:focus, .colors-dark input[type=\\\"color\\\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\\\"reset\\\"], .colors-dark input[type=\\\"button\\\"].secondary, .colors-dark input[type=\\\"reset\\\"].secondary, .colors-dark input[type=\\\"submit\\\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\\n\\tcolor:yellow;\\n\\tfont-size:18px;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 18:50:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '42fd233e-dec8-4097-a8ed-76b338b431cc', '', '', '2020-09-22 03:50:36', '2020-09-21 18:50:36', '', 0, 'http://localhost/ssp1/wptest/?p=125', 0, 'customize_changeset', '', 0),
(126, 1, '2020-09-22 03:50:36', '2020-09-21 18:50:36', 'body.colors-dark, .colors-dark button, .colors-dark input, .colors-dark select, .colors-dark textarea, .colors-dark h3, .colors-dark h4, .colors-dark h6, .colors-dark label, .colors-dark .entry-title a, .colors-dark.twentyseventeen-front-page .panel-content .recent-posts article, .colors-dark .entry-footer .cat-links a, .colors-dark .entry-footer .tags-links a, .colors-dark .format-quote blockquote, .colors-dark .nav-title, .colors-dark .comment-body {\n	color: beige;\n}\n.colors-dark input[type=\"text\"]:focus, .colors-dark input[type=\"email\"]:focus, .colors-dark input[type=\"url\"]:focus, .colors-dark input[type=\"password\"]:focus, .colors-dark input[type=\"search\"]:focus, .colors-dark input[type=\"number\"]:focus, .colors-dark input[type=\"tel\"]:focus, .colors-dark input[type=\"range\"]:focus, .colors-dark input[type=\"date\"]:focus, .colors-dark input[type=\"month\"]:focus, .colors-dark input[type=\"week\"]:focus, .colors-dark input[type=\"time\"]:focus, .colors-dark input[type=\"datetime\"]:focus, .colors-dark input[type=\"datetime-local\"]:focus, .colors-dark input[type=\"color\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\"reset\"], .colors-dark input[type=\"button\"].secondary, .colors-dark input[type=\"reset\"].secondary, .colors-dark input[type=\"submit\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\n	color:yellow;\n	font-size:18px;\n}\n', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-09-22 03:50:36', '2020-09-21 18:50:36', '', 118, 'http://localhost/ssp1/wptest/2020/09/22/118-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2020-09-22 03:52:53', '2020-09-21 18:52:53', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \"body.colors-dark, .colors-dark button, .colors-dark input, .colors-dark select, .colors-dark textarea, .colors-dark h3, .colors-dark h4, .colors-dark h6, .colors-dark label, .colors-dark .entry-title a, .colors-dark.twentyseventeen-front-page .panel-content .recent-posts article, .colors-dark .entry-footer .cat-links a, .colors-dark .entry-footer .tags-links a, .colors-dark .format-quote blockquote, .colors-dark .nav-title, .colors-dark .comment-body {\\n\\tcolor: beige;\\n}\\n.colors-dark input[type=\\\"text\\\"]:focus, .colors-dark input[type=\\\"email\\\"]:focus, .colors-dark input[type=\\\"url\\\"]:focus, .colors-dark input[type=\\\"password\\\"]:focus, .colors-dark input[type=\\\"search\\\"]:focus, .colors-dark input[type=\\\"number\\\"]:focus, .colors-dark input[type=\\\"tel\\\"]:focus, .colors-dark input[type=\\\"range\\\"]:focus, .colors-dark input[type=\\\"date\\\"]:focus, .colors-dark input[type=\\\"month\\\"]:focus, .colors-dark input[type=\\\"week\\\"]:focus, .colors-dark input[type=\\\"time\\\"]:focus, .colors-dark input[type=\\\"datetime\\\"]:focus, .colors-dark input[type=\\\"datetime-local\\\"]:focus, .colors-dark input[type=\\\"color\\\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\\\"reset\\\"], .colors-dark input[type=\\\"button\\\"].secondary, .colors-dark input[type=\\\"reset\\\"].secondary, .colors-dark input[type=\\\"submit\\\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\\n\\tcolor:yellow;\\n\\tfont-size:18px;\\n}\\nbody.has-header-image .site-description, body.has-header-video .site-description{\\n\\tcolor: white;\\n    /* opacity: 0.8; */\\n}\\nbody.has-header-image .site-title, body.has-header-video .site-title, body.has-header-image .site-title a, body.has-header-video .site-title a{\\n\\tfont-size:24px;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 18:52:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f4442d20-a986-48e8-bb32-5b4e59705ac1', '', '', '2020-09-22 03:52:53', '2020-09-21 18:52:53', '', 0, 'http://localhost/ssp1/wptest/?p=127', 0, 'customize_changeset', '', 0),
(128, 1, '2020-09-22 03:52:53', '2020-09-21 18:52:53', 'body.colors-dark, .colors-dark button, .colors-dark input, .colors-dark select, .colors-dark textarea, .colors-dark h3, .colors-dark h4, .colors-dark h6, .colors-dark label, .colors-dark .entry-title a, .colors-dark.twentyseventeen-front-page .panel-content .recent-posts article, .colors-dark .entry-footer .cat-links a, .colors-dark .entry-footer .tags-links a, .colors-dark .format-quote blockquote, .colors-dark .nav-title, .colors-dark .comment-body {\n	color: beige;\n}\n.colors-dark input[type=\"text\"]:focus, .colors-dark input[type=\"email\"]:focus, .colors-dark input[type=\"url\"]:focus, .colors-dark input[type=\"password\"]:focus, .colors-dark input[type=\"search\"]:focus, .colors-dark input[type=\"number\"]:focus, .colors-dark input[type=\"tel\"]:focus, .colors-dark input[type=\"range\"]:focus, .colors-dark input[type=\"date\"]:focus, .colors-dark input[type=\"month\"]:focus, .colors-dark input[type=\"week\"]:focus, .colors-dark input[type=\"time\"]:focus, .colors-dark input[type=\"datetime\"]:focus, .colors-dark input[type=\"datetime-local\"]:focus, .colors-dark input[type=\"color\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\"reset\"], .colors-dark input[type=\"button\"].secondary, .colors-dark input[type=\"reset\"].secondary, .colors-dark input[type=\"submit\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\n	color:yellow;\n	font-size:18px;\n}\nbody.has-header-image .site-description, body.has-header-video .site-description{\n	color: white;\n    /* opacity: 0.8; */\n}\nbody.has-header-image .site-title, body.has-header-video .site-title, body.has-header-image .site-title a, body.has-header-video .site-title a{\n	font-size:24px;\n}\n', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-09-22 03:52:53', '2020-09-21 18:52:53', '', 118, 'http://localhost/ssp1/wptest/2020/09/22/118-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2020-09-22 03:58:48', '2020-09-21 18:58:48', '{\n    \"twentyseventeen::header_image\": {\n        \"value\": \"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/cropped-31047795_m-1080x720-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 18:58:48\"\n    },\n    \"twentyseventeen::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/cropped-31047795_m-1080x720-1.jpg\",\n            \"thumbnail_url\": \"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/cropped-31047795_m-1080x720-1.jpg\",\n            \"timestamp\": 1600714719574,\n            \"attachment_id\": 131,\n            \"width\": 2000,\n            \"height\": 377\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 18:58:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7ba51fd5-b223-4eaf-8ebc-89ce559a4338', '', '', '2020-09-22 03:58:48', '2020-09-21 18:58:48', '', 0, 'http://localhost/ssp1/wptest/?p=129', 0, 'customize_changeset', '', 0),
(130, 1, '2020-09-22 03:58:16', '2020-09-21 18:58:16', '', '31047795_m-1080x720', '', 'inherit', 'open', 'closed', '', '31047795_m-1080x720', '', '', '2020-09-22 03:58:16', '2020-09-21 18:58:16', '', 0, 'http://localhost/ssp1/wptest/wp-content/uploads/2020/09/31047795_m-1080x720-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2020-09-22 03:58:39', '2020-09-21 18:58:39', '', 'cropped-31047795_m-1080x720-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-31047795_m-1080x720-1-jpg', '', '', '2020-09-22 03:58:39', '2020-09-21 18:58:39', '', 0, 'http://localhost/ssp1/wptest/wp-content/uploads/2020/09/cropped-31047795_m-1080x720-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2020-09-22 04:03:33', '0000-00-00 00:00:00', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \"body.colors-dark, .colors-dark button, .colors-dark input, .colors-dark select, .colors-dark textarea, .colors-dark h3, .colors-dark h4, .colors-dark h6, .colors-dark label, .colors-dark .entry-title a, .colors-dark.twentyseventeen-front-page .panel-content .recent-posts article, .colors-dark .entry-footer .cat-links a, .colors-dark .entry-footer .tags-links a, .colors-dark .format-quote blockquote, .colors-dark .nav-title, .colors-dark .comment-body {\\n\\tcolor: beige;\\n}\\n.colors-dark input[type=\\\"text\\\"]:focus, .colors-dark input[type=\\\"email\\\"]:focus, .colors-dark input[type=\\\"url\\\"]:focus, .colors-dark input[type=\\\"password\\\"]:focus, .colors-dark input[type=\\\"search\\\"]:focus, .colors-dark input[type=\\\"number\\\"]:focus, .colors-dark input[type=\\\"tel\\\"]:focus, .colors-dark input[type=\\\"range\\\"]:focus, .colors-dark input[type=\\\"date\\\"]:focus, .colors-dark input[type=\\\"month\\\"]:focus, .colors-dark input[type=\\\"week\\\"]:focus, .colors-dark input[type=\\\"time\\\"]:focus, .colors-dark input[type=\\\"datetime\\\"]:focus, .colors-dark input[type=\\\"datetime-local\\\"]:focus, .colors-dark input[type=\\\"color\\\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\\\"reset\\\"], .colors-dark input[type=\\\"button\\\"].secondary, .colors-dark input[type=\\\"reset\\\"].secondary, .colors-dark input[type=\\\"submit\\\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\\n\\tcolor:yellow;\\n\\tfont-size:18px;\\n}\\nbody.has-header-image .site-description, body.has-header-video .site-description{\\n\\tcolor: white;\\n    /* opacity: 0.8; */\\n}\\nbody.has-header-image .site-title, body.has-header-video .site-title, body.has-header-image .site-title a, body.has-header-video .site-title a{\\n\\tfont-size:24px;\\n}\\n\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 19:02:59\"\n    },\n    \"twentyseventeen::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 19:03:33\"\n    },\n    \"twentyseventeen::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 19:03:33\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '37857a39-953b-4d92-abac-669bb001ee4d', '', '', '2020-09-22 04:03:33', '2020-09-21 19:03:33', '', 0, 'http://localhost/ssp1/wptest/?p=132', 0, 'customize_changeset', '', 0),
(133, 1, '2020-09-22 04:23:12', '2020-09-21 19:23:12', '{\n    \"twentyseventeen::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 19:04:44\"\n    },\n    \"twentyseventeen::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 19:04:44\"\n    },\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \"body.colors-dark, .colors-dark button, .colors-dark input, .colors-dark select, .colors-dark textarea, .colors-dark h3, .colors-dark h4, .colors-dark h6, .colors-dark label, .colors-dark .entry-title a, .colors-dark.twentyseventeen-front-page .panel-content .recent-posts article, .colors-dark .entry-footer .cat-links a, .colors-dark .entry-footer .tags-links a, .colors-dark .format-quote blockquote, .colors-dark .nav-title, .colors-dark .comment-body {\\n\\tcolor: beige;\\n}\\n.colors-dark input[type=\\\"text\\\"]:focus, .colors-dark input[type=\\\"email\\\"]:focus, .colors-dark input[type=\\\"url\\\"]:focus, .colors-dark input[type=\\\"password\\\"]:focus, .colors-dark input[type=\\\"search\\\"]:focus, .colors-dark input[type=\\\"number\\\"]:focus, .colors-dark input[type=\\\"tel\\\"]:focus, .colors-dark input[type=\\\"range\\\"]:focus, .colors-dark input[type=\\\"date\\\"]:focus, .colors-dark input[type=\\\"month\\\"]:focus, .colors-dark input[type=\\\"week\\\"]:focus, .colors-dark input[type=\\\"time\\\"]:focus, .colors-dark input[type=\\\"datetime\\\"]:focus, .colors-dark input[type=\\\"datetime-local\\\"]:focus, .colors-dark input[type=\\\"color\\\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\\\"reset\\\"], .colors-dark input[type=\\\"button\\\"].secondary, .colors-dark input[type=\\\"reset\\\"].secondary, .colors-dark input[type=\\\"submit\\\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\\n\\tcolor:#e06b17;\\n\\tfont-size:20px;\\n}\\nbody.has-header-image .site-description, body.has-header-video .site-description{\\n\\tcolor: white;\\n    /* opacity: 0.8; */\\n}\\nbody.has-header-image .site-title, body.has-header-video .site-title, body.has-header-image .site-title a, body.has-header-video .site-title a{\\n\\tfont-size:24px;\\n}\\n.textwidget a{\\n\\tmargin:0;\\n\\tpadding:0;\\n}\\n.site-title a{\\n\\tfont-size:90px;\\n}\\n.entry-title a{\\n\\tcolor:#e06b17;\\n}\\n.site-content {\\n\\tmargin-left:-50px;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 19:22:13\"\n    },\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 19:23:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '68250a08-e3a6-4d06-970b-8768dcd52b69', '', '', '2020-09-22 04:23:12', '2020-09-21 19:23:12', '', 0, 'http://localhost/ssp1/wptest/?p=133', 0, 'customize_changeset', '', 0),
(134, 1, '2020-09-22 04:23:12', '2020-09-21 19:23:12', 'body.colors-dark, .colors-dark button, .colors-dark input, .colors-dark select, .colors-dark textarea, .colors-dark h3, .colors-dark h4, .colors-dark h6, .colors-dark label, .colors-dark .entry-title a, .colors-dark.twentyseventeen-front-page .panel-content .recent-posts article, .colors-dark .entry-footer .cat-links a, .colors-dark .entry-footer .tags-links a, .colors-dark .format-quote blockquote, .colors-dark .nav-title, .colors-dark .comment-body {\n	color: beige;\n}\n.colors-dark input[type=\"text\"]:focus, .colors-dark input[type=\"email\"]:focus, .colors-dark input[type=\"url\"]:focus, .colors-dark input[type=\"password\"]:focus, .colors-dark input[type=\"search\"]:focus, .colors-dark input[type=\"number\"]:focus, .colors-dark input[type=\"tel\"]:focus, .colors-dark input[type=\"range\"]:focus, .colors-dark input[type=\"date\"]:focus, .colors-dark input[type=\"month\"]:focus, .colors-dark input[type=\"week\"]:focus, .colors-dark input[type=\"time\"]:focus, .colors-dark input[type=\"datetime\"]:focus, .colors-dark input[type=\"datetime-local\"]:focus, .colors-dark input[type=\"color\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\"reset\"], .colors-dark input[type=\"button\"].secondary, .colors-dark input[type=\"reset\"].secondary, .colors-dark input[type=\"submit\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\n	color:#e06b17;\n	font-size:20px;\n}\nbody.has-header-image .site-description, body.has-header-video .site-description{\n	color: white;\n    /* opacity: 0.8; */\n}\nbody.has-header-image .site-title, body.has-header-video .site-title, body.has-header-image .site-title a, body.has-header-video .site-title a{\n	font-size:24px;\n}\n.textwidget a{\n	margin:0;\n	padding:0;\n}\n.site-title a{\n	font-size:90px;\n}\n.entry-title a{\n	color:#e06b17;\n}\n.site-content {\n	margin-left:-50px;\n}', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-09-22 04:23:12', '2020-09-21 19:23:12', '', 118, 'http://localhost/ssp1/wptest/2020/09/22/118-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2020-09-22 04:26:26', '2020-09-21 19:26:26', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \"body.colors-dark, .colors-dark button, .colors-dark input, .colors-dark select, .colors-dark textarea, .colors-dark h3, .colors-dark h4, .colors-dark h6, .colors-dark label, .colors-dark .entry-title a, .colors-dark.twentyseventeen-front-page .panel-content .recent-posts article, .colors-dark .entry-footer .cat-links a, .colors-dark .entry-footer .tags-links a, .colors-dark .format-quote blockquote, .colors-dark .nav-title, .colors-dark .comment-body {\\n\\tcolor: beige;\\n}\\n.colors-dark input[type=\\\"text\\\"]:focus, .colors-dark input[type=\\\"email\\\"]:focus, .colors-dark input[type=\\\"url\\\"]:focus, .colors-dark input[type=\\\"password\\\"]:focus, .colors-dark input[type=\\\"search\\\"]:focus, .colors-dark input[type=\\\"number\\\"]:focus, .colors-dark input[type=\\\"tel\\\"]:focus, .colors-dark input[type=\\\"range\\\"]:focus, .colors-dark input[type=\\\"date\\\"]:focus, .colors-dark input[type=\\\"month\\\"]:focus, .colors-dark input[type=\\\"week\\\"]:focus, .colors-dark input[type=\\\"time\\\"]:focus, .colors-dark input[type=\\\"datetime\\\"]:focus, .colors-dark input[type=\\\"datetime-local\\\"]:focus, .colors-dark input[type=\\\"color\\\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\\\"reset\\\"], .colors-dark input[type=\\\"button\\\"].secondary, .colors-dark input[type=\\\"reset\\\"].secondary, .colors-dark input[type=\\\"submit\\\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\\n\\tcolor:#e06b17;\\n\\tfont-size:20px;\\n}\\n\\nbody.has-header-image .site-title, body.has-header-video .site-title, body.has-header-image .site-title a, body.has-header-video .site-title a{\\n\\tfont-size:24px;\\n}\\n.textwidget a{\\n\\tmargin:0;\\n\\tpadding:0;\\n}\\n.site-title a{\\n\\tfont-size:90px;\\n}\\n.entry-title a{\\n\\tfont-weight:bold;\\n}\\n.site-content {\\n\\tmargin-left:-50px;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 19:26:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '191c5a95-36b9-4d55-bc4a-d719032f95b8', '', '', '2020-09-22 04:26:26', '2020-09-21 19:26:26', '', 0, 'http://localhost/ssp1/wptest/?p=135', 0, 'customize_changeset', '', 0),
(136, 1, '2020-09-22 04:26:26', '2020-09-21 19:26:26', 'body.colors-dark, .colors-dark button, .colors-dark input, .colors-dark select, .colors-dark textarea, .colors-dark h3, .colors-dark h4, .colors-dark h6, .colors-dark label, .colors-dark .entry-title a, .colors-dark.twentyseventeen-front-page .panel-content .recent-posts article, .colors-dark .entry-footer .cat-links a, .colors-dark .entry-footer .tags-links a, .colors-dark .format-quote blockquote, .colors-dark .nav-title, .colors-dark .comment-body {\n	color: beige;\n}\n.colors-dark input[type=\"text\"]:focus, .colors-dark input[type=\"email\"]:focus, .colors-dark input[type=\"url\"]:focus, .colors-dark input[type=\"password\"]:focus, .colors-dark input[type=\"search\"]:focus, .colors-dark input[type=\"number\"]:focus, .colors-dark input[type=\"tel\"]:focus, .colors-dark input[type=\"range\"]:focus, .colors-dark input[type=\"date\"]:focus, .colors-dark input[type=\"month\"]:focus, .colors-dark input[type=\"week\"]:focus, .colors-dark input[type=\"time\"]:focus, .colors-dark input[type=\"datetime\"]:focus, .colors-dark input[type=\"datetime-local\"]:focus, .colors-dark input[type=\"color\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\"reset\"], .colors-dark input[type=\"button\"].secondary, .colors-dark input[type=\"reset\"].secondary, .colors-dark input[type=\"submit\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\n	color:#e06b17;\n	font-size:20px;\n}\n\nbody.has-header-image .site-title, body.has-header-video .site-title, body.has-header-image .site-title a, body.has-header-video .site-title a{\n	font-size:24px;\n}\n.textwidget a{\n	margin:0;\n	padding:0;\n}\n.site-title a{\n	font-size:90px;\n}\n.entry-title a{\n	font-weight:bold;\n}\n.site-content {\n	margin-left:-50px;\n}', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-09-22 04:26:26', '2020-09-21 19:26:26', '', 118, 'http://localhost/ssp1/wptest/2020/09/22/118-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2020-09-22 04:28:31', '2020-09-21 19:28:31', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \"body.colors-dark, .colors-dark button, .colors-dark input, .colors-dark select, .colors-dark textarea, .colors-dark h3, .colors-dark h4, .colors-dark h6, .colors-dark label, .colors-dark .entry-title a, .colors-dark.twentyseventeen-front-page .panel-content .recent-posts article, .colors-dark .entry-footer .cat-links a, .colors-dark .entry-footer .tags-links a, .colors-dark .format-quote blockquote, .colors-dark .nav-title, .colors-dark .comment-body {\\n\\tcolor: beige;\\n}\\n.colors-dark input[type=\\\"text\\\"]:focus, .colors-dark input[type=\\\"email\\\"]:focus, .colors-dark input[type=\\\"url\\\"]:focus, .colors-dark input[type=\\\"password\\\"]:focus, .colors-dark input[type=\\\"search\\\"]:focus, .colors-dark input[type=\\\"number\\\"]:focus, .colors-dark input[type=\\\"tel\\\"]:focus, .colors-dark input[type=\\\"range\\\"]:focus, .colors-dark input[type=\\\"date\\\"]:focus, .colors-dark input[type=\\\"month\\\"]:focus, .colors-dark input[type=\\\"week\\\"]:focus, .colors-dark input[type=\\\"time\\\"]:focus, .colors-dark input[type=\\\"datetime\\\"]:focus, .colors-dark input[type=\\\"datetime-local\\\"]:focus, .colors-dark input[type=\\\"color\\\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\\\"reset\\\"], .colors-dark input[type=\\\"button\\\"].secondary, .colors-dark input[type=\\\"reset\\\"].secondary, .colors-dark input[type=\\\"submit\\\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\\n\\tcolor:#e06b17;\\n\\tfont-size:20px;\\n}\\n.site-title a{\\n\\tfont-size:50px;\\n}\\n.site-description{\\n\\tfont-size:17px;\\n\\tcolor:white;\\n}\\nbody.has-header-image .site-title, body.has-header-video .site-title, body.has-header-image .site-title a, body.has-header-video .site-title a{\\n\\tfont-size:24px;\\n}\\n.textwidget a{\\n\\tmargin:0;\\n\\tpadding:0;\\n}\\n.site-title a{\\n\\tfont-size:90px;\\n}\\n.entry-title a{\\n\\tfont-weight:bold;\\n}\\n.site-content {\\n\\tmargin-left:-50px;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 19:28:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6c58ccbc-541d-4d16-b52d-25c16b5f70eb', '', '', '2020-09-22 04:28:31', '2020-09-21 19:28:31', '', 0, 'http://localhost/ssp1/wptest/?p=137', 0, 'customize_changeset', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(138, 1, '2020-09-22 04:28:31', '2020-09-21 19:28:31', 'body.colors-dark, .colors-dark button, .colors-dark input, .colors-dark select, .colors-dark textarea, .colors-dark h3, .colors-dark h4, .colors-dark h6, .colors-dark label, .colors-dark .entry-title a, .colors-dark.twentyseventeen-front-page .panel-content .recent-posts article, .colors-dark .entry-footer .cat-links a, .colors-dark .entry-footer .tags-links a, .colors-dark .format-quote blockquote, .colors-dark .nav-title, .colors-dark .comment-body {\n	color: beige;\n}\n.colors-dark input[type=\"text\"]:focus, .colors-dark input[type=\"email\"]:focus, .colors-dark input[type=\"url\"]:focus, .colors-dark input[type=\"password\"]:focus, .colors-dark input[type=\"search\"]:focus, .colors-dark input[type=\"number\"]:focus, .colors-dark input[type=\"tel\"]:focus, .colors-dark input[type=\"range\"]:focus, .colors-dark input[type=\"date\"]:focus, .colors-dark input[type=\"month\"]:focus, .colors-dark input[type=\"week\"]:focus, .colors-dark input[type=\"time\"]:focus, .colors-dark input[type=\"datetime\"]:focus, .colors-dark input[type=\"datetime-local\"]:focus, .colors-dark input[type=\"color\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\"reset\"], .colors-dark input[type=\"button\"].secondary, .colors-dark input[type=\"reset\"].secondary, .colors-dark input[type=\"submit\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\n	color:#e06b17;\n	font-size:20px;\n}\n.site-title a{\n	font-size:50px;\n}\n.site-description{\n	font-size:17px;\n	color:white;\n}\nbody.has-header-image .site-title, body.has-header-video .site-title, body.has-header-image .site-title a, body.has-header-video .site-title a{\n	font-size:24px;\n}\n.textwidget a{\n	margin:0;\n	padding:0;\n}\n.site-title a{\n	font-size:90px;\n}\n.entry-title a{\n	font-weight:bold;\n}\n.site-content {\n	margin-left:-50px;\n}', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-09-22 04:28:31', '2020-09-21 19:28:31', '', 118, 'http://localhost/ssp1/wptest/2020/09/22/118-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2020-09-22 04:45:50', '2020-09-21 19:45:50', '<!-- wp:heading {\"level\":4} -->\n<h4>第3位 もうやんカレー大忍具(青梅街道店) </h4>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":143,\"width\":353,\"height\":470,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/r8760298302734.jpg\" alt=\"\" class=\"wp-image-143\" width=\"353\" height=\"470\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>ここのカレーが大好きで何回も通ってました！！ 新宿中央公園近くにあるカレー屋さん カレーが食べたくなって、平日のランチタイムに利用しました！ 店の前にいくと先客が３組くらい並んでいましたね。 意外に回転はよいみたいで、ちょっと待ってすぐ店内に案内された。 店内は、テーブル席とカウンター席。 ランチタイムは、バイキングスタイルのみの営業。 料金は、１、０５０円</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"align\":\"left\",\"level\":4} -->\n<h4 class=\"has-text-align-left\">第2位 インドカレーダルヴィッシュ</h4>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":142,\"width\":357,\"height\":477,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/r64581113131031.jpg\" alt=\"\" class=\"wp-image-142\" width=\"357\" height=\"477\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>幡ヶ谷のインドカレーの名店です。幡ヶ谷駅を出てすぐの路地にあり、よく店員が元気よく呼び込みをしています。テイクアウトも可能。 お店はカウンターのみで団体で来るのには向いていません。お客さんも2人くらいで来る人がほとんど。お店で食事をすると、ライスとナンの両方を無料で付けることができ、ボリュームもかなり多くなります。辛さも甘口から超辛口と調整できますが、辛口でもそれほど辛さは感じません。 カレーによってベースとなる味付けが変わっていて、チキンカレー系は甘味が強みのベースになっています。 キーマカレーの方がスパイスが効いていて、インドカレーっぽさが出るのでこちらの方が好み。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>第1位 カザーナ お台場デックス東京ビーチ店</h4>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":140,\"width\":562,\"height\":372,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/r680651744362.jpg\" alt=\"\" class=\"wp-image-140\" width=\"562\" height=\"372\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>お気に入りのカレー屋さんです！！こちらではいつもバイキングを注文します。種類が豊富なカレーがとても美味しい！！サラダ・ナン・ターメリックライス・タンドリーチキン・オレンジゼリーが食べ放題٩(๑´0`๑)۶烏龍茶とラッシーも飲み放題！！価格もリーズナブル！！私のお気に入りはシーフードカレーです！！景色もよくテラス席もありますよ</p>\n<!-- /wp:paragraph -->', 'インド料理ベスト3 in TOKYO', '', 'publish', 'open', 'open', '', '%e6%9d%b1%e4%ba%ac%e3%82%a4%e3%83%b3%e3%83%89%e6%96%99%e7%90%86%e3%83%99%e3%82%b9%e3%83%883', '', '', '2020-09-22 04:59:29', '2020-09-21 19:59:29', '', 0, 'http://localhost/ssp1/wptest/?p=139', 0, 'post', '', 0),
(140, 1, '2020-09-22 04:34:22', '2020-09-21 19:34:22', '', 'r680651744362', '', 'inherit', 'open', 'closed', '', 'r680651744362', '', '', '2020-09-22 04:34:22', '2020-09-21 19:34:22', '', 139, 'http://localhost/ssp1/wptest/wp-content/uploads/2020/09/r680651744362.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2020-09-22 04:38:57', '2020-09-21 19:38:57', '{\n    \"twentyseventeen::header_textcolor\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 19:38:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c05d9b1f-f4d8-4752-8b3a-68eb017af288', '', '', '2020-09-22 04:38:57', '2020-09-21 19:38:57', '', 0, 'http://localhost/ssp1/wptest/2020/09/22/c05d9b1f-f4d8-4752-8b3a-68eb017af288/', 0, 'customize_changeset', '', 0),
(142, 1, '2020-09-22 04:40:26', '2020-09-21 19:40:26', '', 'r64581113131031', '', 'inherit', 'open', 'closed', '', 'r64581113131031', '', '', '2020-09-22 04:40:26', '2020-09-21 19:40:26', '', 139, 'http://localhost/ssp1/wptest/wp-content/uploads/2020/09/r64581113131031.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2020-09-22 04:43:54', '2020-09-21 19:43:54', '', 'r8760298302734', '', 'inherit', 'open', 'closed', '', 'r8760298302734', '', '', '2020-09-22 04:43:54', '2020-09-21 19:43:54', '', 139, 'http://localhost/ssp1/wptest/wp-content/uploads/2020/09/r8760298302734.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2020-09-22 04:45:50', '2020-09-21 19:45:50', '<!-- wp:heading -->\n<h2>第3位 もうやんカレー大忍具(青梅街道店) </h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":143,\"width\":353,\"height\":470,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/r8760298302734.jpg\" alt=\"\" class=\"wp-image-143\" width=\"353\" height=\"470\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>ここのカレーが大好きで何回も通ってました！！ 新宿中央公園近くにあるカレー屋さん カレーが食べたくなって、平日のランチタイムに利用しました！ 店の前にいくと先客が３組くらい並んでいましたね。 意外に回転はよいみたいで、ちょっと待ってすぐ店内に案内された。 店内は、テーブル席とカウンター席。 ランチタイムは、バイキングスタイルのみの営業。 料金は、１、０５０円</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"align\":\"left\"} -->\n<h2 class=\"has-text-align-left\">第2位 インドカレーダルヴィッシュ</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":142,\"width\":357,\"height\":477,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/r64581113131031.jpg\" alt=\"\" class=\"wp-image-142\" width=\"357\" height=\"477\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>幡ヶ谷のインドカレーの名店です。幡ヶ谷駅を出てすぐの路地にあり、よく店員が元気よく呼び込みをしています。テイクアウトも可能。 お店はカウンターのみで団体で来るのには向いていません。お客さんも2人くらいで来る人がほとんど。お店で食事をすると、ライスとナンの両方を無料で付けることができ、ボリュームもかなり多くなります。辛さも甘口から超辛口と調整できますが、辛口でもそれほど辛さは感じません。 カレーによってベースとなる味付けが変わっていて、チキンカレー系は甘味が強みのベースになっています。 キーマカレーの方がスパイスが効いていて、インドカレーっぽさが出るのでこちらの方が好み。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>第1位 カザーナ お台場デックス東京ビーチ店</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":140,\"width\":562,\"height\":372,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/r680651744362.jpg\" alt=\"\" class=\"wp-image-140\" width=\"562\" height=\"372\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>お気に入りのカレー屋さんです！！こちらではいつもバイキングを注文します。種類が豊富なカレーがとても美味しい！！サラダ・ナン・ターメリックライス・タンドリーチキン・オレンジゼリーが食べ放題٩(๑´0`๑)۶烏龍茶とラッシーも飲み放題！！価格もリーズナブル！！私のお気に入りはシーフードカレーです！！景色もよくテラス席もありますよ</p>\n<!-- /wp:paragraph -->', '東京インド料理ベスト3', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2020-09-22 04:45:50', '2020-09-21 19:45:50', '', 139, 'http://localhost/ssp1/wptest/2020/09/22/139-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2020-09-22 04:48:37', '2020-09-21 19:48:37', '<!-- wp:heading {\"level\":4} -->\n<h4>第3位 もうやんカレー大忍具(青梅街道店) </h4>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":143,\"width\":353,\"height\":470,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/r8760298302734.jpg\" alt=\"\" class=\"wp-image-143\" width=\"353\" height=\"470\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>ここのカレーが大好きで何回も通ってました！！ 新宿中央公園近くにあるカレー屋さん カレーが食べたくなって、平日のランチタイムに利用しました！ 店の前にいくと先客が３組くらい並んでいましたね。 意外に回転はよいみたいで、ちょっと待ってすぐ店内に案内された。 店内は、テーブル席とカウンター席。 ランチタイムは、バイキングスタイルのみの営業。 料金は、１、０５０円</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"align\":\"left\",\"level\":4} -->\n<h4 class=\"has-text-align-left\">第2位 インドカレーダルヴィッシュ</h4>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":142,\"width\":357,\"height\":477,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/r64581113131031.jpg\" alt=\"\" class=\"wp-image-142\" width=\"357\" height=\"477\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>幡ヶ谷のインドカレーの名店です。幡ヶ谷駅を出てすぐの路地にあり、よく店員が元気よく呼び込みをしています。テイクアウトも可能。 お店はカウンターのみで団体で来るのには向いていません。お客さんも2人くらいで来る人がほとんど。お店で食事をすると、ライスとナンの両方を無料で付けることができ、ボリュームもかなり多くなります。辛さも甘口から超辛口と調整できますが、辛口でもそれほど辛さは感じません。 カレーによってベースとなる味付けが変わっていて、チキンカレー系は甘味が強みのベースになっています。 キーマカレーの方がスパイスが効いていて、インドカレーっぽさが出るのでこちらの方が好み。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>第1位 カザーナ お台場デックス東京ビーチ店</h4>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":140,\"width\":562,\"height\":372,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/r680651744362.jpg\" alt=\"\" class=\"wp-image-140\" width=\"562\" height=\"372\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>お気に入りのカレー屋さんです！！こちらではいつもバイキングを注文します。種類が豊富なカレーがとても美味しい！！サラダ・ナン・ターメリックライス・タンドリーチキン・オレンジゼリーが食べ放題٩(๑´0`๑)۶烏龍茶とラッシーも飲み放題！！価格もリーズナブル！！私のお気に入りはシーフードカレーです！！景色もよくテラス席もありますよ</p>\n<!-- /wp:paragraph -->', '東京インド料理ベスト3', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2020-09-22 04:48:37', '2020-09-21 19:48:37', '', 139, 'http://localhost/ssp1/wptest/2020/09/22/139-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2020-09-22 04:50:39', '2020-09-21 19:50:39', '{\n    \"twentyseventeen::header_image\": {\n        \"value\": \"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/31047795_m-1080x720-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 19:50:39\"\n    },\n    \"twentyseventeen::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/31047795_m-1080x720-1.jpg\",\n            \"thumbnail_url\": \"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/31047795_m-1080x720-1.jpg\",\n            \"timestamp\": 1600717832253,\n            \"attachment_id\": 130,\n            \"width\": 1080,\n            \"height\": 720\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 19:50:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '554b8b48-f7a0-4a55-86b4-4dc7dadda196', '', '', '2020-09-22 04:50:39', '2020-09-21 19:50:39', '', 0, 'http://localhost/ssp1/wptest/2020/09/22/554b8b48-f7a0-4a55-86b4-4dc7dadda196/', 0, 'customize_changeset', '', 0),
(147, 1, '2020-09-22 04:54:10', '2020-09-21 19:54:10', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \"body.colors-dark, .colors-dark button, .colors-dark input, .colors-dark select, .colors-dark textarea, .colors-dark h3, .colors-dark h4, .colors-dark h6, .colors-dark label, .colors-dark .entry-title a, .colors-dark.twentyseventeen-front-page .panel-content .recent-posts article, .colors-dark .entry-footer .cat-links a, .colors-dark .entry-footer .tags-links a, .colors-dark .format-quote blockquote, .colors-dark .nav-title, .colors-dark .comment-body {\\n\\tcolor: beige;\\n}\\n.colors-dark input[type=\\\"text\\\"]:focus, .colors-dark input[type=\\\"email\\\"]:focus, .colors-dark input[type=\\\"url\\\"]:focus, .colors-dark input[type=\\\"password\\\"]:focus, .colors-dark input[type=\\\"search\\\"]:focus, .colors-dark input[type=\\\"number\\\"]:focus, .colors-dark input[type=\\\"tel\\\"]:focus, .colors-dark input[type=\\\"range\\\"]:focus, .colors-dark input[type=\\\"date\\\"]:focus, .colors-dark input[type=\\\"month\\\"]:focus, .colors-dark input[type=\\\"week\\\"]:focus, .colors-dark input[type=\\\"time\\\"]:focus, .colors-dark input[type=\\\"datetime\\\"]:focus, .colors-dark input[type=\\\"datetime-local\\\"]:focus, .colors-dark input[type=\\\"color\\\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\\\"reset\\\"], .colors-dark input[type=\\\"button\\\"].secondary, .colors-dark input[type=\\\"reset\\\"].secondary, .colors-dark input[type=\\\"submit\\\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\\n\\tcolor:#e06b17;\\n\\tfont-size:20px;\\n}\\n.site-title a{\\n\\tfont-size:50px;\\n}\\n.site-description{\\n\\tfont-size:17px;\\n\\tcolor:white;\\n}\\nbody.has-header-image .site-title, body.has-header-video .site-title, body.has-header-image .site-title a, body.has-header-video .site-title a{\\n\\tfont-size:24px;\\n}\\n.textwidget a{\\n\\tmargin:0;\\n\\tpadding:0;\\n}\\n.site-title a{\\n\\tfont-size:90px;\\n}\\n.entry-title a{\\n\\tfont-weight:bold;\\n\\tfont-size:28px;\\n\\t\\n}\\n.site-content {\\n\\tmargin-left:-50px;\\n}\\n.entry-content p{\\n\\tfont-size:17px;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 19:54:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9646fa76-ee8d-4183-90e1-34d3aa0c6274', '', '', '2020-09-22 04:54:10', '2020-09-21 19:54:10', '', 0, 'http://localhost/ssp1/wptest/?p=147', 0, 'customize_changeset', '', 0),
(148, 1, '2020-09-22 04:54:10', '2020-09-21 19:54:10', 'body.colors-dark, .colors-dark button, .colors-dark input, .colors-dark select, .colors-dark textarea, .colors-dark h3, .colors-dark h4, .colors-dark h6, .colors-dark label, .colors-dark .entry-title a, .colors-dark.twentyseventeen-front-page .panel-content .recent-posts article, .colors-dark .entry-footer .cat-links a, .colors-dark .entry-footer .tags-links a, .colors-dark .format-quote blockquote, .colors-dark .nav-title, .colors-dark .comment-body {\n	color: beige;\n}\n.colors-dark input[type=\"text\"]:focus, .colors-dark input[type=\"email\"]:focus, .colors-dark input[type=\"url\"]:focus, .colors-dark input[type=\"password\"]:focus, .colors-dark input[type=\"search\"]:focus, .colors-dark input[type=\"number\"]:focus, .colors-dark input[type=\"tel\"]:focus, .colors-dark input[type=\"range\"]:focus, .colors-dark input[type=\"date\"]:focus, .colors-dark input[type=\"month\"]:focus, .colors-dark input[type=\"week\"]:focus, .colors-dark input[type=\"time\"]:focus, .colors-dark input[type=\"datetime\"]:focus, .colors-dark input[type=\"datetime-local\"]:focus, .colors-dark input[type=\"color\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\"reset\"], .colors-dark input[type=\"button\"].secondary, .colors-dark input[type=\"reset\"].secondary, .colors-dark input[type=\"submit\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\n	color:#e06b17;\n	font-size:20px;\n}\n.site-title a{\n	font-size:50px;\n}\n.site-description{\n	font-size:17px;\n	color:white;\n}\nbody.has-header-image .site-title, body.has-header-video .site-title, body.has-header-image .site-title a, body.has-header-video .site-title a{\n	font-size:24px;\n}\n.textwidget a{\n	margin:0;\n	padding:0;\n}\n.site-title a{\n	font-size:90px;\n}\n.entry-title a{\n	font-weight:bold;\n	font-size:28px;\n	\n}\n.site-content {\n	margin-left:-50px;\n}\n.entry-content p{\n	font-size:17px;\n}\n', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-09-22 04:54:10', '2020-09-21 19:54:10', '', 118, 'http://localhost/ssp1/wptest/2020/09/22/118-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2020-09-22 04:54:36', '2020-09-21 19:54:36', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 19:54:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '515ff00a-c936-4477-b7db-b28f17e83ec5', '', '', '2020-09-22 04:54:36', '2020-09-21 19:54:36', '', 0, 'http://localhost/ssp1/wptest/2020/09/22/515ff00a-c936-4477-b7db-b28f17e83ec5/', 0, 'customize_changeset', '', 0),
(150, 1, '2020-09-22 04:58:06', '2020-09-21 19:58:06', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-4\",\n            \"recent-posts-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 19:58:06\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"value\": [\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 19:57:38\"\n    },\n    \"widget_recent-posts[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 19:57:38\"\n    },\n    \"widget_search[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 19:57:38\"\n    },\n    \"widget_pages[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 19:58:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '513fcf26-422c-4c5c-a684-4cb9d15eaa2e', '', '', '2020-09-22 04:58:06', '2020-09-21 19:58:06', '', 0, 'http://localhost/ssp1/wptest/?p=150', 0, 'customize_changeset', '', 0),
(151, 1, '2020-09-22 04:59:29', '2020-09-21 19:59:29', '<!-- wp:heading {\"level\":4} -->\n<h4>第3位 もうやんカレー大忍具(青梅街道店) </h4>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":143,\"width\":353,\"height\":470,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/r8760298302734.jpg\" alt=\"\" class=\"wp-image-143\" width=\"353\" height=\"470\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>ここのカレーが大好きで何回も通ってました！！ 新宿中央公園近くにあるカレー屋さん カレーが食べたくなって、平日のランチタイムに利用しました！ 店の前にいくと先客が３組くらい並んでいましたね。 意外に回転はよいみたいで、ちょっと待ってすぐ店内に案内された。 店内は、テーブル席とカウンター席。 ランチタイムは、バイキングスタイルのみの営業。 料金は、１、０５０円</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"align\":\"left\",\"level\":4} -->\n<h4 class=\"has-text-align-left\">第2位 インドカレーダルヴィッシュ</h4>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":142,\"width\":357,\"height\":477,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/r64581113131031.jpg\" alt=\"\" class=\"wp-image-142\" width=\"357\" height=\"477\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>幡ヶ谷のインドカレーの名店です。幡ヶ谷駅を出てすぐの路地にあり、よく店員が元気よく呼び込みをしています。テイクアウトも可能。 お店はカウンターのみで団体で来るのには向いていません。お客さんも2人くらいで来る人がほとんど。お店で食事をすると、ライスとナンの両方を無料で付けることができ、ボリュームもかなり多くなります。辛さも甘口から超辛口と調整できますが、辛口でもそれほど辛さは感じません。 カレーによってベースとなる味付けが変わっていて、チキンカレー系は甘味が強みのベースになっています。 キーマカレーの方がスパイスが効いていて、インドカレーっぽさが出るのでこちらの方が好み。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>第1位 カザーナ お台場デックス東京ビーチ店</h4>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":140,\"width\":562,\"height\":372,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/ssp1/wptest/wp-content/uploads/2020/09/r680651744362.jpg\" alt=\"\" class=\"wp-image-140\" width=\"562\" height=\"372\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>お気に入りのカレー屋さんです！！こちらではいつもバイキングを注文します。種類が豊富なカレーがとても美味しい！！サラダ・ナン・ターメリックライス・タンドリーチキン・オレンジゼリーが食べ放題٩(๑´0`๑)۶烏龍茶とラッシーも飲み放題！！価格もリーズナブル！！私のお気に入りはシーフードカレーです！！景色もよくテラス席もありますよ</p>\n<!-- /wp:paragraph -->', 'インド料理ベスト3 in TOKYO', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2020-09-22 04:59:29', '2020-09-21 19:59:29', '', 139, 'http://localhost/ssp1/wptest/2020/09/22/139-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2020-09-22 05:06:24', '2020-09-21 20:06:24', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \"body.colors-dark, .colors-dark button, .colors-dark input, .colors-dark select, .colors-dark textarea, .colors-dark h3, .colors-dark h4, .colors-dark h6, .colors-dark label, .colors-dark .entry-title a, .colors-dark.twentyseventeen-front-page .panel-content .recent-posts article, .colors-dark .entry-footer .cat-links a, .colors-dark .entry-footer .tags-links a, .colors-dark .format-quote blockquote, .colors-dark .nav-title, .colors-dark .comment-body {\\n\\tcolor: beige;\\n}\\n.colors-dark input[type=\\\"text\\\"]:focus, .colors-dark input[type=\\\"email\\\"]:focus, .colors-dark input[type=\\\"url\\\"]:focus, .colors-dark input[type=\\\"password\\\"]:focus, .colors-dark input[type=\\\"search\\\"]:focus, .colors-dark input[type=\\\"number\\\"]:focus, .colors-dark input[type=\\\"tel\\\"]:focus, .colors-dark input[type=\\\"range\\\"]:focus, .colors-dark input[type=\\\"date\\\"]:focus, .colors-dark input[type=\\\"month\\\"]:focus, .colors-dark input[type=\\\"week\\\"]:focus, .colors-dark input[type=\\\"time\\\"]:focus, .colors-dark input[type=\\\"datetime\\\"]:focus, .colors-dark input[type=\\\"datetime-local\\\"]:focus, .colors-dark input[type=\\\"color\\\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\\\"reset\\\"], .colors-dark input[type=\\\"button\\\"].secondary, .colors-dark input[type=\\\"reset\\\"].secondary, .colors-dark input[type=\\\"submit\\\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\\n\\tcolor:#e06b17;\\n\\tfont-size:20px;\\n}\\n.site-title a{\\n\\tbackground:black;\\n\\tpadding:7px 5px;\\n}\\n.site-description{\\n\\tbackground:black;\\n\\tfont-size:17px;\\n\\tpadding:7px 5px;\\n\\topacity:1;\\n}\\nbody.has-header-image .site-title, body.has-header-video .site-title, body.has-header-image .site-title a, body.has-header-video .site-title a{\\n\\tfont-size:24px;\\n}\\n.textwidget a{\\n\\tmargin:0;\\n\\tpadding:0;\\n}\\n.entry-title a{\\n\\tfont-weight:bold;\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n\\t\\n}\\n.site-content {\\n\\tmargin-left:-50px;\\n}\\n.entry-content p{\\n\\tfont-size:17px;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-21 20:05:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9e7727b7-96fe-4a0d-9a44-f3f164eff45f', '', '', '2020-09-22 05:06:24', '2020-09-21 20:06:24', '', 0, 'http://localhost/ssp1/wptest/?p=152', 0, 'customize_changeset', '', 0),
(153, 1, '2020-09-22 05:06:24', '2020-09-21 20:06:24', 'body.colors-dark, .colors-dark button, .colors-dark input, .colors-dark select, .colors-dark textarea, .colors-dark h3, .colors-dark h4, .colors-dark h6, .colors-dark label, .colors-dark .entry-title a, .colors-dark.twentyseventeen-front-page .panel-content .recent-posts article, .colors-dark .entry-footer .cat-links a, .colors-dark .entry-footer .tags-links a, .colors-dark .format-quote blockquote, .colors-dark .nav-title, .colors-dark .comment-body {\n	color: beige;\n}\n.colors-dark input[type=\"text\"]:focus, .colors-dark input[type=\"email\"]:focus, .colors-dark input[type=\"url\"]:focus, .colors-dark input[type=\"password\"]:focus, .colors-dark input[type=\"search\"]:focus, .colors-dark input[type=\"number\"]:focus, .colors-dark input[type=\"tel\"]:focus, .colors-dark input[type=\"range\"]:focus, .colors-dark input[type=\"date\"]:focus, .colors-dark input[type=\"month\"]:focus, .colors-dark input[type=\"week\"]:focus, .colors-dark input[type=\"time\"]:focus, .colors-dark input[type=\"datetime\"]:focus, .colors-dark input[type=\"datetime-local\"]:focus, .colors-dark input[type=\"color\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\"reset\"], .colors-dark input[type=\"button\"].secondary, .colors-dark input[type=\"reset\"].secondary, .colors-dark input[type=\"submit\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\n	color:#e06b17;\n	font-size:20px;\n}\n.site-title a{\n	background:black;\n	padding:7px 5px;\n}\n.site-description{\n	background:black;\n	font-size:17px;\n	padding:7px 5px;\n	opacity:1;\n}\nbody.has-header-image .site-title, body.has-header-video .site-title, body.has-header-image .site-title a, body.has-header-video .site-title a{\n	font-size:24px;\n}\n.textwidget a{\n	margin:0;\n	padding:0;\n}\n.entry-title a{\n	font-weight:bold;\n	font-size:28px;\n	color:#e06b17;\n	\n}\n.site-content {\n	margin-left:-50px;\n}\n.entry-content p{\n	font-size:17px;\n}\n', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-09-22 05:06:24', '2020-09-21 20:06:24', '', 118, 'http://localhost/ssp1/wptest/2020/09/22/118-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2020-09-22 10:34:18', '2020-09-22 01:34:18', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \".colors-dark input[type=\\\"text\\\"]:focus, .colors-dark input[type=\\\"email\\\"]:focus, .colors-dark input[type=\\\"url\\\"]:focus, .colors-dark input[type=\\\"password\\\"]:focus, .colors-dark input[type=\\\"search\\\"]:focus, .colors-dark input[type=\\\"number\\\"]:focus, .colors-dark input[type=\\\"tel\\\"]:focus, .colors-dark input[type=\\\"range\\\"]:focus, .colors-dark input[type=\\\"date\\\"]:focus, .colors-dark input[type=\\\"month\\\"]:focus, .colors-dark input[type=\\\"week\\\"]:focus, .colors-dark input[type=\\\"time\\\"]:focus, .colors-dark input[type=\\\"datetime\\\"]:focus, .colors-dark input[type=\\\"datetime-local\\\"]:focus, .colors-dark input[type=\\\"color\\\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\\\"reset\\\"], .colors-dark input[type=\\\"button\\\"].secondary, .colors-dark input[type=\\\"reset\\\"].secondary, .colors-dark input[type=\\\"submit\\\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\\n\\tcolor:#e06b17;\\n\\tfont-size:20px;\\n}\\n.site-title a{\\n\\tbackground:black;\\n\\tpadding:7px 5px;\\n}\\n.site-description{\\n\\tbackground:black;\\n\\tfont-size:17px;\\n\\tpadding:7px 5px;\\n\\topacity:1;\\n}\\nbody.has-header-image .site-title, body.has-header-video .site-title, body.has-header-image .site-title a, body.has-header-video .site-title a{\\n\\tfont-size:24px;\\n}\\n.textwidget a{\\n\\tmargin:0;\\n\\tpadding:0;\\n}\\n.entry-title a{\\n\\tfont-weight:bold;\\n\\tfont-size:28px;\\n\\t\\n}\\n.site-content {\\n\\tmargin-left:-50px;\\n}\\n.entry-content p{\\n\\tfont-size:17px;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-22 01:34:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7e23930c-a9f4-495b-9d0f-ecccc6cf8a81', '', '', '2020-09-22 10:34:18', '2020-09-22 01:34:18', '', 0, 'http://localhost/ssp1/wptest/?p=154', 0, 'customize_changeset', '', 0),
(155, 1, '2020-09-22 10:34:18', '2020-09-22 01:34:18', '.colors-dark input[type=\"text\"]:focus, .colors-dark input[type=\"email\"]:focus, .colors-dark input[type=\"url\"]:focus, .colors-dark input[type=\"password\"]:focus, .colors-dark input[type=\"search\"]:focus, .colors-dark input[type=\"number\"]:focus, .colors-dark input[type=\"tel\"]:focus, .colors-dark input[type=\"range\"]:focus, .colors-dark input[type=\"date\"]:focus, .colors-dark input[type=\"month\"]:focus, .colors-dark input[type=\"week\"]:focus, .colors-dark input[type=\"time\"]:focus, .colors-dark input[type=\"datetime\"]:focus, .colors-dark input[type=\"datetime-local\"]:focus, .colors-dark input[type=\"color\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\"reset\"], .colors-dark input[type=\"button\"].secondary, .colors-dark input[type=\"reset\"].secondary, .colors-dark input[type=\"submit\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\n	color:#e06b17;\n	font-size:20px;\n}\n.site-title a{\n	background:black;\n	padding:7px 5px;\n}\n.site-description{\n	background:black;\n	font-size:17px;\n	padding:7px 5px;\n	opacity:1;\n}\nbody.has-header-image .site-title, body.has-header-video .site-title, body.has-header-image .site-title a, body.has-header-video .site-title a{\n	font-size:24px;\n}\n.textwidget a{\n	margin:0;\n	padding:0;\n}\n.entry-title a{\n	font-weight:bold;\n	font-size:28px;\n	\n}\n.site-content {\n	margin-left:-50px;\n}\n.entry-content p{\n	font-size:17px;\n}\n', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-09-22 10:34:18', '2020-09-22 01:34:18', '', 118, 'http://localhost/ssp1/wptest/2020/09/22/118-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2020-09-22 10:36:25', '2020-09-22 01:36:25', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \".colors-dark input[type=\\\"text\\\"]:focus, .colors-dark input[type=\\\"email\\\"]:focus, .colors-dark input[type=\\\"url\\\"]:focus, .colors-dark input[type=\\\"password\\\"]:focus, .colors-dark input[type=\\\"search\\\"]:focus, .colors-dark input[type=\\\"number\\\"]:focus, .colors-dark input[type=\\\"tel\\\"]:focus, .colors-dark input[type=\\\"range\\\"]:focus, .colors-dark input[type=\\\"date\\\"]:focus, .colors-dark input[type=\\\"month\\\"]:focus, .colors-dark input[type=\\\"week\\\"]:focus, .colors-dark input[type=\\\"time\\\"]:focus, .colors-dark input[type=\\\"datetime\\\"]:focus, .colors-dark input[type=\\\"datetime-local\\\"]:focus, .colors-dark input[type=\\\"color\\\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\\\"reset\\\"], .colors-dark input[type=\\\"button\\\"].secondary, .colors-dark input[type=\\\"reset\\\"].secondary, .colors-dark input[type=\\\"submit\\\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\\n\\tcolor:#e06b17;\\n\\tfont-size:20px;\\n}\\n.site-title a{\\n\\tbackground:black;\\n\\tpadding:7px 10px;\\n}\\n\\n.site-description{\\n\\tbackground:black;\\n\\tfont-size:17px;\\n\\tpadding:7px 10px;\\n\\topacity:1;\\n}\\nbody.has-header-image .site-title, body.has-header-video .site-title, body.has-header-image .site-title a, body.has-header-video .site-title a{\\n\\tfont-size:24px;\\n}\\n.textwidget a{\\n\\tmargin:0;\\n\\tpadding:0;\\n}\\n.entry-title a{\\n\\tfont-weight:bold;\\n\\tfont-size:28px;\\n\\t\\n}\\n.site-content {\\n\\tmargin-left:-50px;\\n}\\n.entry-content p{\\n\\tfont-size:17px;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-22 01:36:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2a6c3acc-9229-4b1d-af77-fe238c4b6426', '', '', '2020-09-22 10:36:25', '2020-09-22 01:36:25', '', 0, 'http://localhost/ssp1/wptest/?p=156', 0, 'customize_changeset', '', 0),
(157, 1, '2020-09-22 10:36:25', '2020-09-22 01:36:25', '.colors-dark input[type=\"text\"]:focus, .colors-dark input[type=\"email\"]:focus, .colors-dark input[type=\"url\"]:focus, .colors-dark input[type=\"password\"]:focus, .colors-dark input[type=\"search\"]:focus, .colors-dark input[type=\"number\"]:focus, .colors-dark input[type=\"tel\"]:focus, .colors-dark input[type=\"range\"]:focus, .colors-dark input[type=\"date\"]:focus, .colors-dark input[type=\"month\"]:focus, .colors-dark input[type=\"week\"]:focus, .colors-dark input[type=\"time\"]:focus, .colors-dark input[type=\"datetime\"]:focus, .colors-dark input[type=\"datetime-local\"]:focus, .colors-dark input[type=\"color\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\"reset\"], .colors-dark input[type=\"button\"].secondary, .colors-dark input[type=\"reset\"].secondary, .colors-dark input[type=\"submit\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\n	color:#e06b17;\n	font-size:20px;\n}\n.site-title a{\n	background:black;\n	padding:7px 10px;\n}\n\n.site-description{\n	background:black;\n	font-size:17px;\n	padding:7px 10px;\n	opacity:1;\n}\nbody.has-header-image .site-title, body.has-header-video .site-title, body.has-header-image .site-title a, body.has-header-video .site-title a{\n	font-size:24px;\n}\n.textwidget a{\n	margin:0;\n	padding:0;\n}\n.entry-title a{\n	font-weight:bold;\n	font-size:28px;\n	\n}\n.site-content {\n	margin-left:-50px;\n}\n.entry-content p{\n	font-size:17px;\n}\n', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-09-22 10:36:25', '2020-09-22 01:36:25', '', 118, 'http://localhost/ssp1/wptest/2020/09/22/118-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2020-09-22 10:43:06', '2020-09-22 01:43:06', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \".colors-dark input[type=\\\"text\\\"]:focus, .colors-dark input[type=\\\"email\\\"]:focus, .colors-dark input[type=\\\"url\\\"]:focus, .colors-dark input[type=\\\"password\\\"]:focus, .colors-dark input[type=\\\"search\\\"]:focus, .colors-dark input[type=\\\"number\\\"]:focus, .colors-dark input[type=\\\"tel\\\"]:focus, .colors-dark input[type=\\\"range\\\"]:focus, .colors-dark input[type=\\\"date\\\"]:focus, .colors-dark input[type=\\\"month\\\"]:focus, .colors-dark input[type=\\\"week\\\"]:focus, .colors-dark input[type=\\\"time\\\"]:focus, .colors-dark input[type=\\\"datetime\\\"]:focus, .colors-dark input[type=\\\"datetime-local\\\"]:focus, .colors-dark input[type=\\\"color\\\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\\\"reset\\\"], .colors-dark input[type=\\\"button\\\"].secondary, .colors-dark input[type=\\\"reset\\\"].secondary, .colors-dark input[type=\\\"submit\\\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\\n\\tcolor:#e06b17;\\n\\tfont-size:20px;\\n}\\n.site-title a{\\n\\tbackground:black;\\n\\tpadding:7px 10px;\\n}\\n\\n.site-description{\\n\\tbackground:black;\\n\\tfont-size:17px;\\n\\tpadding:7px 10px;\\n\\topacity:1;\\n}\\nbody.has-header-image .site-title, body.has-header-video .site-title, body.has-header-image .site-title a, body.has-header-video .site-title a{\\n\\tfont-size:24px;\\n}\\n.textwidget a{\\n\\tmargin:0;\\n\\tpadding:0;\\n}\\n.entry-title a{\\n\\tfont-weight:bold;\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n\\t\\n}\\n.entry-content h4{\\n\\tfont-size:;\\n\\tfont-weight:normal;\\n\\tcolor:#e06b17;\\n}\\n.site-content {\\n\\t/*margin-left:-5px;*/\\n}\\n.entry-content p{\\n\\tfont-size:17px;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-22 01:43:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f396b9df-234d-41f7-a262-b55ef9d38338', '', '', '2020-09-22 10:43:06', '2020-09-22 01:43:06', '', 0, 'http://localhost/ssp1/wptest/?p=158', 0, 'customize_changeset', '', 0),
(159, 1, '2020-09-22 10:43:06', '2020-09-22 01:43:06', '.colors-dark input[type=\"text\"]:focus, .colors-dark input[type=\"email\"]:focus, .colors-dark input[type=\"url\"]:focus, .colors-dark input[type=\"password\"]:focus, .colors-dark input[type=\"search\"]:focus, .colors-dark input[type=\"number\"]:focus, .colors-dark input[type=\"tel\"]:focus, .colors-dark input[type=\"range\"]:focus, .colors-dark input[type=\"date\"]:focus, .colors-dark input[type=\"month\"]:focus, .colors-dark input[type=\"week\"]:focus, .colors-dark input[type=\"time\"]:focus, .colors-dark input[type=\"datetime\"]:focus, .colors-dark input[type=\"datetime-local\"]:focus, .colors-dark input[type=\"color\"]:focus, .colors-dark textarea:focus, .colors-dark button.secondary, .colors-dark input[type=\"reset\"], .colors-dark input[type=\"button\"].secondary, .colors-dark input[type=\"reset\"].secondary, .colors-dark input[type=\"submit\"].secondary, .colors-dark a, .colors-dark .site-title, .colors-dark .site-title a, .colors-dark .navigation-top a, .colors-dark .dropdown-toggle, .colors-dark .menu-toggle, .colors-dark .page .panel-content .entry-title, .colors-dark .page-title, .colors-dark.page:not(.twentyseventeen-front-page) .entry-title, .colors-dark .page-links a .page-number, .colors-dark .comment-metadata a.comment-edit-link, .colors-dark .comment-reply-link .icon, .colors-dark h2.widget-title, .colors-dark mark, .colors-dark .post-navigation a:focus .icon, .colors-dark .post-navigation a:hover .icon, .colors-dark.blog .entry-meta a.post-edit-link, .colors-dark.archive .entry-meta a.post-edit-link, .colors-dark.search .entry-meta a.post-edit-link, .colors-custom .twentyseventeen-panel .recent-posts .entry-header .edit-link{\n	color:#e06b17;\n	font-size:20px;\n}\n.site-title a{\n	background:black;\n	padding:7px 10px;\n}\n\n.site-description{\n	background:black;\n	font-size:17px;\n	padding:7px 10px;\n	opacity:1;\n}\nbody.has-header-image .site-title, body.has-header-video .site-title, body.has-header-image .site-title a, body.has-header-video .site-title a{\n	font-size:24px;\n}\n.textwidget a{\n	margin:0;\n	padding:0;\n}\n.entry-title a{\n	font-weight:bold;\n	font-size:28px;\n	color:#e06b17;\n	\n}\n.entry-content h4{\n	font-size:;\n	font-weight:normal;\n	color:#e06b17;\n}\n.site-content {\n	/*margin-left:-5px;*/\n}\n.entry-content p{\n	font-size:17px;\n}\n', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-09-22 10:43:06', '2020-09-22 01:43:06', '', 118, 'http://localhost/ssp1/wptest/2020/09/22/118-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2020-09-22 10:46:34', '2020-09-22 01:46:34', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \".site-title a{\\n\\tbackground:black;\\n\\tpadding:7px 10px;\\n\\tfont-size:36\\\\5px;\\n}\\n\\n.site-description{\\n\\tbackground:black;\\n\\tfont-size:17px;\\n\\tpadding:7px 10px;\\n\\topacity:1;\\n}\\n\\n.textwidget a{\\n\\tmargin:0;\\n\\tpadding:0;\\n}\\n.entry-title a{\\n\\tfont-weight:bold;\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n\\t\\n}\\n.entry-content h4{\\n\\tfont-size:;\\n\\tfont-weight:normal;\\n\\tcolor:#e06b17;\\n}\\n.site-content {\\n\\t/*margin-left:-5px;*/\\n}\\n.entry-content p{\\n\\tfont-size:17px;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-22 01:46:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9c62185f-6f00-4f62-9508-e469b1628f37', '', '', '2020-09-22 10:46:34', '2020-09-22 01:46:34', '', 0, 'http://localhost/ssp1/wptest/?p=160', 0, 'customize_changeset', '', 0),
(161, 1, '2020-09-22 10:46:34', '2020-09-22 01:46:34', '.site-title a{\n	background:black;\n	padding:7px 10px;\n	font-size:36\\5px;\n}\n\n.site-description{\n	background:black;\n	font-size:17px;\n	padding:7px 10px;\n	opacity:1;\n}\n\n.textwidget a{\n	margin:0;\n	padding:0;\n}\n.entry-title a{\n	font-weight:bold;\n	font-size:28px;\n	color:#e06b17;\n	\n}\n.entry-content h4{\n	font-size:;\n	font-weight:normal;\n	color:#e06b17;\n}\n.site-content {\n	/*margin-left:-5px;*/\n}\n.entry-content p{\n	font-size:17px;\n}\n', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-09-22 10:46:34', '2020-09-22 01:46:34', '', 118, 'http://localhost/ssp1/wptest/2020/09/22/118-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2020-09-22 10:52:01', '2020-09-22 01:52:01', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \".site-title a{\\n\\tbackground:black;\\n\\tpadding:7px 10px;\\n\\tfont-size:36\\\\5px;\\n}\\n\\n.site-description{\\n\\tbackground:black;\\n\\tfont-size:19px;\\n\\tpadding:7px 10px;\\n\\topacity:1;\\n}\\n\\n.textwidget a{\\n\\tmargin:0;\\n\\tpadding:0;\\n}\\n.entry-title a{\\n\\tfont-weight:bold;\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n\\t\\n}\\n.entry-content h4{\\n\\tfont-size:;\\n\\tfont-weight:normal;\\n\\tcolor:#e06b17;\\n}\\n.site-content {\\n\\t/*margin-left:-5px;*/\\n}\\n.entry-content p{\\n\\tfont-size:17px;\\n}\\n.widget-title{\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-22 01:52:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '293149a7-02d1-4261-a1d0-094f66a8f200', '', '', '2020-09-22 10:52:01', '2020-09-22 01:52:01', '', 0, 'http://localhost/ssp1/wptest/?p=162', 0, 'customize_changeset', '', 0),
(163, 1, '2020-09-22 10:52:01', '2020-09-22 01:52:01', '.site-title a{\n	background:black;\n	padding:7px 10px;\n	font-size:36\\5px;\n}\n\n.site-description{\n	background:black;\n	font-size:19px;\n	padding:7px 10px;\n	opacity:1;\n}\n\n.textwidget a{\n	margin:0;\n	padding:0;\n}\n.entry-title a{\n	font-weight:bold;\n	font-size:28px;\n	color:#e06b17;\n	\n}\n.entry-content h4{\n	font-size:;\n	font-weight:normal;\n	color:#e06b17;\n}\n.site-content {\n	/*margin-left:-5px;*/\n}\n.entry-content p{\n	font-size:17px;\n}\n.widget-title{\n	font-size:28px;\n	color:#e06b17;\n}\n', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-09-22 10:52:01', '2020-09-22 01:52:01', '', 118, 'http://localhost/ssp1/wptest/2020/09/22/118-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(164, 1, '2020-09-22 10:53:19', '2020-09-22 01:53:19', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \".site-title a{\\n\\tbackground:black;\\n\\tpadding:7px 10px;\\n\\tfont-size:36\\\\5px;\\n\\tmargin-bottom:19px;\\n}\\n\\n.site-description{\\n\\tbackground:black;\\n\\tfont-size:19px;\\n\\tpadding:7px 10px;\\n\\topacity:1;\\n\\tmargin-top:14px;\\n}\\n\\n.textwidget a{\\n\\tmargin:0;\\n\\tpadding:0;\\n}\\n.entry-title a{\\n\\tfont-weight:bold;\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n\\t\\n}\\n.entry-content h4{\\n\\tfont-size:;\\n\\tfont-weight:normal;\\n\\tcolor:#e06b17;\\n}\\n.site-content {\\n\\t/*margin-left:-5px;*/\\n}\\n.entry-content p{\\n\\tfont-size:17px;\\n}\\n.widget-title{\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-22 01:53:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '590080eb-1bb6-423e-b38f-3a0b6bd2c6b7', '', '', '2020-09-22 10:53:19', '2020-09-22 01:53:19', '', 0, 'http://localhost/ssp1/wptest/?p=164', 0, 'customize_changeset', '', 0),
(165, 1, '2020-09-22 10:53:20', '2020-09-22 01:53:20', '.site-title a{\n	background:black;\n	padding:7px 10px;\n	font-size:36\\5px;\n	margin-bottom:19px;\n}\n\n.site-description{\n	background:black;\n	font-size:19px;\n	padding:7px 10px;\n	opacity:1;\n	margin-top:14px;\n}\n\n.textwidget a{\n	margin:0;\n	padding:0;\n}\n.entry-title a{\n	font-weight:bold;\n	font-size:28px;\n	color:#e06b17;\n	\n}\n.entry-content h4{\n	font-size:;\n	font-weight:normal;\n	color:#e06b17;\n}\n.site-content {\n	/*margin-left:-5px;*/\n}\n.entry-content p{\n	font-size:17px;\n}\n.widget-title{\n	font-size:28px;\n	color:#e06b17;\n}\n', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-09-22 10:53:20', '2020-09-22 01:53:20', '', 118, 'http://localhost/ssp1/wptest/2020/09/22/118-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2020-09-22 11:07:16', '2020-09-22 02:07:16', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \".site-title a{\\n\\tbackground:black;\\n\\tpadding:7px 10px;\\n\\tfont-size:36\\\\5px;\\n\\tmargin-bottom:19px;\\n}\\n\\n.site-description{\\n\\tbackground:black;\\n\\tfont-size:19px;\\n\\tpadding:7px 10px;\\n\\topacity:1;\\n\\tmargin-top:14px;\\n}\\n\\n.textwidget a{\\n\\tmargin:0;\\n\\tpadding:0;\\n}\\n.entry-title a{\\n\\tfont-weight:bold;\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n\\t\\n}\\n.entry-content h4{\\n\\tfont-size:;\\n\\tfont-weight:normal;\\n\\tcolor:#e06b17;\\n}\\n.site-content {\\n\\t/*margin-left:-5px;*/\\n}\\n.entry-content p{\\n\\tfont-size:17px;\\n}\\n.widget-title{\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n}\\nhtml[lang=\\\"ja\\\"] h1, html[lang=\\\"ja\\\"] h2, html[lang=\\\"ja\\\"] h3, html[lang=\\\"ja\\\"] h4, html[lang=\\\"ja\\\"] h5, html[lang=\\\"ja\\\"] h6{\\n\\tcolor: #e06b17;\\n}\\nul li a{\\n\\tcolor:white;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-22 02:07:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '823ede4b-e1ee-4303-acc4-53a068b6d25c', '', '', '2020-09-22 11:07:16', '2020-09-22 02:07:16', '', 0, 'http://localhost/ssp1/wptest/?p=166', 0, 'customize_changeset', '', 0),
(167, 1, '2020-09-22 11:07:16', '2020-09-22 02:07:16', '.site-title a{\n	background:black;\n	padding:7px 10px;\n	font-size:36\\5px;\n	margin-bottom:19px;\n}\n\n.site-description{\n	background:black;\n	font-size:19px;\n	padding:7px 10px;\n	opacity:1;\n	margin-top:14px;\n}\n\n.textwidget a{\n	margin:0;\n	padding:0;\n}\n.entry-title a{\n	font-weight:bold;\n	font-size:28px;\n	color:#e06b17;\n	\n}\n.entry-content h4{\n	font-size:;\n	font-weight:normal;\n	color:#e06b17;\n}\n.site-content {\n	/*margin-left:-5px;*/\n}\n.entry-content p{\n	font-size:17px;\n}\n.widget-title{\n	font-size:28px;\n	color:#e06b17;\n}\nhtml[lang=\"ja\"] h1, html[lang=\"ja\"] h2, html[lang=\"ja\"] h3, html[lang=\"ja\"] h4, html[lang=\"ja\"] h5, html[lang=\"ja\"] h6{\n	color: #e06b17;\n}\nul li a{\n	color:white;\n}', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-09-22 11:07:16', '2020-09-22 02:07:16', '', 118, 'http://localhost/ssp1/wptest/2020/09/22/118-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2020-09-22 11:08:25', '2020-09-22 02:08:25', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \".site-title a{\\n\\tbackground:black;\\n\\tpadding:7px 10px;\\n\\tfont-size:36\\\\5px;\\n\\tmargin-bottom:19px;\\n}\\n\\n.site-description{\\n\\tbackground:black;\\n\\tfont-size:19px;\\n\\tpadding:7px 10px;\\n\\topacity:1;\\n\\tmargin-top:14px;\\n}\\n\\n.textwidget a{\\n\\tmargin:0;\\n\\tpadding:0;\\n}\\n.entry-title a{\\n\\tfont-weight:bold;\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n\\t\\n}\\n.entry-content h4{\\n\\tfont-size:;\\n\\tfont-weight:normal;\\n\\tcolor:#e06b17;\\n}\\n.site-content {\\n\\t/*margin-left:-5px;*/\\n}\\n.entry-content p{\\n\\tfont-size:17px;\\n}\\n.widget-title{\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n}\\nhtml[lang=\\\"ja\\\"] h1, html[lang=\\\"ja\\\"] h2, html[lang=\\\"ja\\\"] h3, html[lang=\\\"ja\\\"] h4, html[lang=\\\"ja\\\"] h5, html[lang=\\\"ja\\\"] h6{\\n\\tfont-size:20px;\\n\\tcolor: #e06b17;\\n}\\nul li a{\\n\\tcolor:white;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-22 02:08:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cfbeac8b-36f2-4961-878d-19241085969c', '', '', '2020-09-22 11:08:25', '2020-09-22 02:08:25', '', 0, 'http://localhost/ssp1/wptest/?p=168', 0, 'customize_changeset', '', 0),
(169, 1, '2020-09-22 11:08:25', '2020-09-22 02:08:25', '.site-title a{\n	background:black;\n	padding:7px 10px;\n	font-size:36\\5px;\n	margin-bottom:19px;\n}\n\n.site-description{\n	background:black;\n	font-size:19px;\n	padding:7px 10px;\n	opacity:1;\n	margin-top:14px;\n}\n\n.textwidget a{\n	margin:0;\n	padding:0;\n}\n.entry-title a{\n	font-weight:bold;\n	font-size:28px;\n	color:#e06b17;\n	\n}\n.entry-content h4{\n	font-size:;\n	font-weight:normal;\n	color:#e06b17;\n}\n.site-content {\n	/*margin-left:-5px;*/\n}\n.entry-content p{\n	font-size:17px;\n}\n.widget-title{\n	font-size:28px;\n	color:#e06b17;\n}\nhtml[lang=\"ja\"] h1, html[lang=\"ja\"] h2, html[lang=\"ja\"] h3, html[lang=\"ja\"] h4, html[lang=\"ja\"] h5, html[lang=\"ja\"] h6{\n	font-size:20px;\n	color: #e06b17;\n}\nul li a{\n	color:white;\n}', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-09-22 11:08:25', '2020-09-22 02:08:25', '', 118, 'http://localhost/ssp1/wptest/2020/09/22/118-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2020-09-22 11:09:05', '2020-09-22 02:09:05', '{\n    \"widget_text[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjQyOiLigLvjgZPjga7kurrnianjga/jg5XjgqPjgq/jgrfjg6fjg7PjgafjgZkiO3M6NDoidGV4dCI7czo2NjoiPHN0cm9uZz7lrp/lnKjjgZfjgb7jgZvjgpPjgII8L3N0cm9uZz4NCg0K54iG55m644KC44GX44G+44Gb44KT44CCIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u203b\\u3053\\u306e\\u4eba\\u7269\\u306f\\u30d5\\u30a3\\u30af\\u30b7\\u30e7\\u30f3\\u3067\\u3059\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"e94bfbd6c04766a59512c98f53f9f55b\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-22 02:09:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fbe1a138-3788-4e2c-883b-449c3efa8684', '', '', '2020-09-22 11:09:05', '2020-09-22 02:09:05', '', 0, 'http://localhost/ssp1/wptest/2020/09/22/fbe1a138-3788-4e2c-883b-449c3efa8684/', 0, 'customize_changeset', '', 0),
(171, 1, '2020-09-22 11:11:58', '2020-09-22 02:11:58', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \".site-title a{\\n\\tbackground:black;\\n\\tpadding:7px 10px;\\n\\tfont-size:36px;\\n\\tmargin-bottom:19px;\\n}\\n\\n.site-description{\\n\\tbackground:black;\\n\\tfont-size:19px;\\n\\tpadding:7px 10px;\\n\\topacity:1;\\n\\tmargin-top:14px;\\n}\\n\\n.textwidget a{\\n\\tmargin:0;\\n\\tpadding:0;\\n}\\n.entry-title a{\\n\\tfont-weight:bold;\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n\\t\\n}\\n.entry-content h4{\\n\\tfont-size:;\\n\\tfont-weight:normal;\\n\\tcolor:#e06b17;\\n}\\n.site-content {\\n\\t/*margin-left:-5px;*/\\n}\\n.entry-content p{\\n\\tfont-size:17px;\\n}\\n.widget-title{\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n}\\nhtml[lang=\\\"ja\\\"] h1, html[lang=\\\"ja\\\"] h2, html[lang=\\\"ja\\\"] h3, html[lang=\\\"ja\\\"] h4, html[lang=\\\"ja\\\"] h5, html[lang=\\\"ja\\\"] h6{\\n\\tfont-size:20px;\\n\\tcolor: #e06b17;\\n}\\nul li a{\\n\\tcolor:white;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-22 02:11:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fed26b71-aa07-4b5c-8522-4ca57e2c56df', '', '', '2020-09-22 11:11:58', '2020-09-22 02:11:58', '', 0, 'http://localhost/ssp1/wptest/2020/09/22/fed26b71-aa07-4b5c-8522-4ca57e2c56df/', 0, 'customize_changeset', '', 0),
(172, 1, '2020-09-22 11:11:58', '2020-09-22 02:11:58', '.site-title a{\n	background:black;\n	padding:7px 10px;\n	font-size:36px;\n	margin-bottom:19px;\n}\n\n.site-description{\n	background:black;\n	font-size:19px;\n	padding:7px 10px;\n	opacity:1;\n	margin-top:14px;\n}\n\n.textwidget a{\n	margin:0;\n	padding:0;\n}\n.entry-title a{\n	font-weight:bold;\n	font-size:28px;\n	color:#e06b17;\n	\n}\n.entry-content h4{\n	font-size:;\n	font-weight:normal;\n	color:#e06b17;\n}\n.site-content {\n	/*margin-left:-5px;*/\n}\n.entry-content p{\n	font-size:17px;\n}\n.widget-title{\n	font-size:28px;\n	color:#e06b17;\n}\nhtml[lang=\"ja\"] h1, html[lang=\"ja\"] h2, html[lang=\"ja\"] h3, html[lang=\"ja\"] h4, html[lang=\"ja\"] h5, html[lang=\"ja\"] h6{\n	font-size:20px;\n	color: #e06b17;\n}\nul li a{\n	color:white;\n}', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-09-22 11:11:58', '2020-09-22 02:11:58', '', 118, 'http://localhost/ssp1/wptest/2020/09/22/118-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2020-09-22 11:13:55', '2020-09-22 02:13:55', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \".site-title a{\\n\\tbackground:black;\\n\\tpadding:7px 10px;\\n\\tfont-size:36px;\\n\\tmargin-bottom:19px;\\n}\\n\\n.site-description{\\n\\tbackground:black;\\n\\tfont-size:19px;\\n\\tpadding:7px 10px;\\n\\topacity:1;\\n\\tmargin-top:14px;\\n}\\n\\n.textwidget a{\\n\\tmargin:0;\\n\\tpadding:0;\\n}\\n.entry-title a{\\n\\tfont-weight:bold;\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n\\t\\n}\\n.entry-content h4{\\n\\tfont-size:;\\n\\tfont-weight:normal;\\n\\tcolor:#e06b17;\\n}\\n.site-content {\\n\\t/*margin-left:-5px;*/\\n}\\n.entry-content p{\\n\\tfont-size:17px;\\n}\\n.widget-title{\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n}\\nhtml[lang=\\\"ja\\\"] h1, html[lang=\\\"ja\\\"] h2, html[lang=\\\"ja\\\"] h3, html[lang=\\\"ja\\\"] h4, html[lang=\\\"ja\\\"] h5, html[lang=\\\"ja\\\"] h6{\\n\\tfont-size:20px;\\n\\tcolor: #e06b17;\\n}\\nul li a{\\n\\tcolor:white;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-22 02:13:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '590004e2-e037-40b7-b399-9ef4bd4b0420', '', '', '2020-09-22 11:13:55', '2020-09-22 02:13:55', '', 0, 'http://localhost/ssp1/wptest/?p=173', 0, 'customize_changeset', '', 0),
(174, 1, '2020-09-22 11:14:22', '2020-09-22 02:14:22', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \".site-title a{\\n\\tbackground:black;\\n\\tpadding:7px 10px;\\n\\tfont-size:36px;\\n\\tmargin-bottom:19px;\\n}\\n\\n.site-description{\\n\\tbackground:black;\\n\\tfont-size:19px;\\n\\tpadding:7px 10px;\\n\\topacity:1;\\n\\tmargin-top:16px;\\n}\\n\\n.textwidget a{\\n\\tmargin:0;\\n\\tpadding:0;\\n}\\n.entry-title a{\\n\\tfont-weight:bold;\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n\\t\\n}\\n.entry-content h4{\\n\\tfont-size:;\\n\\tfont-weight:normal;\\n\\tcolor:#e06b17;\\n}\\n.site-content {\\n\\t/*margin-left:-5px;*/\\n}\\n.entry-content p{\\n\\tfont-size:17px;\\n}\\n.widget-title{\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n}\\nhtml[lang=\\\"ja\\\"] h1, html[lang=\\\"ja\\\"] h2, html[lang=\\\"ja\\\"] h3, html[lang=\\\"ja\\\"] h4, html[lang=\\\"ja\\\"] h5, html[lang=\\\"ja\\\"] h6{\\n\\tfont-size:20px;\\n\\tcolor: #e06b17;\\n}\\nul li a{\\n\\tcolor:white;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-22 02:14:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f93035a0-f98c-4484-a79a-7be3994349d2', '', '', '2020-09-22 11:14:22', '2020-09-22 02:14:22', '', 0, 'http://localhost/ssp1/wptest/2020/09/22/f93035a0-f98c-4484-a79a-7be3994349d2/', 0, 'customize_changeset', '', 0),
(175, 1, '2020-09-22 11:14:22', '2020-09-22 02:14:22', '.site-title a{\n	background:black;\n	padding:7px 10px;\n	font-size:36px;\n	margin-bottom:19px;\n}\n\n.site-description{\n	background:black;\n	font-size:19px;\n	padding:7px 10px;\n	opacity:1;\n	margin-top:16px;\n}\n\n.textwidget a{\n	margin:0;\n	padding:0;\n}\n.entry-title a{\n	font-weight:bold;\n	font-size:28px;\n	color:#e06b17;\n	\n}\n.entry-content h4{\n	font-size:;\n	font-weight:normal;\n	color:#e06b17;\n}\n.site-content {\n	/*margin-left:-5px;*/\n}\n.entry-content p{\n	font-size:17px;\n}\n.widget-title{\n	font-size:28px;\n	color:#e06b17;\n}\nhtml[lang=\"ja\"] h1, html[lang=\"ja\"] h2, html[lang=\"ja\"] h3, html[lang=\"ja\"] h4, html[lang=\"ja\"] h5, html[lang=\"ja\"] h6{\n	font-size:20px;\n	color: #e06b17;\n}\nul li a{\n	color:white;\n}', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-09-22 11:14:22', '2020-09-22 02:14:22', '', 118, 'http://localhost/ssp1/wptest/2020/09/22/118-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2020-09-22 11:15:18', '2020-09-22 02:15:18', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \".site-title a{\\n\\tbackground:black;\\n\\tpadding:7px 10px;\\n\\tfont-size:36px;\\n\\tmargin-bottom:19px;\\n}\\n\\n.site-description{\\n\\tbackground:black;\\n\\tfont-size:19px;\\n\\tpadding:7px 10px;\\n\\topacity:1;\\n\\tmargin-top:14px;\\n}\\n\\n.textwidget a{\\n\\tmargin:0;\\n\\tpadding:0;\\n}\\n.entry-title a{\\n\\tfont-weight:bold;\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n\\t\\n}\\n.entry-content h4{\\n\\tfont-size:;\\n\\tfont-weight:normal;\\n\\tcolor:#e06b17;\\n}\\n.site-content {\\n\\t/*margin-left:-5px;*/\\n}\\n.entry-content p{\\n\\tfont-size:17px;\\n}\\n.widget-title{\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n}\\nhtml[lang=\\\"ja\\\"] h1, html[lang=\\\"ja\\\"] h2, html[lang=\\\"ja\\\"] h3, html[lang=\\\"ja\\\"] h4, html[lang=\\\"ja\\\"] h5, html[lang=\\\"ja\\\"] h6{\\n\\tfont-size:20px;\\n\\tcolor: #e06b17;\\n}\\nul li a{\\n\\tcolor:white;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-22 02:15:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3a2c0a95-c3d8-4833-82a6-aaca16c4a75b', '', '', '2020-09-22 11:15:18', '2020-09-22 02:15:18', '', 0, 'http://localhost/ssp1/wptest/2020/09/22/3a2c0a95-c3d8-4833-82a6-aaca16c4a75b/', 0, 'customize_changeset', '', 0),
(177, 1, '2020-09-22 11:15:18', '2020-09-22 02:15:18', '.site-title a{\n	background:black;\n	padding:7px 10px;\n	font-size:36px;\n	margin-bottom:19px;\n}\n\n.site-description{\n	background:black;\n	font-size:19px;\n	padding:7px 10px;\n	opacity:1;\n	margin-top:14px;\n}\n\n.textwidget a{\n	margin:0;\n	padding:0;\n}\n.entry-title a{\n	font-weight:bold;\n	font-size:28px;\n	color:#e06b17;\n	\n}\n.entry-content h4{\n	font-size:;\n	font-weight:normal;\n	color:#e06b17;\n}\n.site-content {\n	/*margin-left:-5px;*/\n}\n.entry-content p{\n	font-size:17px;\n}\n.widget-title{\n	font-size:28px;\n	color:#e06b17;\n}\nhtml[lang=\"ja\"] h1, html[lang=\"ja\"] h2, html[lang=\"ja\"] h3, html[lang=\"ja\"] h4, html[lang=\"ja\"] h5, html[lang=\"ja\"] h6{\n	font-size:20px;\n	color: #e06b17;\n}\nul li a{\n	color:white;\n}', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-09-22 11:15:18', '2020-09-22 02:15:18', '', 118, 'http://localhost/ssp1/wptest/2020/09/22/118-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2020-09-22 11:22:17', '2020-09-22 02:22:17', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \".site-title a{\\n\\tbackground:black;\\n\\tpadding:7px 10px;\\n\\tfont-size:36px;\\n\\tmargin-bottom:19px;\\n}\\n\\n.site-description{\\n\\tbackground:black;\\n\\tfont-size:19px;\\n\\tpadding:7px 10px;\\n\\topacity:1;\\n\\tmargin-top:14px;\\n}\\n\\n.textwidget a{\\n\\tmargin:0;\\n\\tpadding:0;\\n}\\n.entry-title a{\\n\\tfont-weight:bold;\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n\\t\\n}\\n.entry-content h4{\\n\\tfont-size:;\\n\\tfont-weight:normal;\\n\\tcolor:#e06b17;\\n}\\n.site-content {\\n\\t/*margin-left:-5px;*/\\n}\\n.entry-content p{\\n\\tfont-size:17px;\\n}\\n.widget-title{\\n\\tfont-size:28px;\\n\\tcolor:#e06b17;\\n}\\nhtml[lang=\\\"ja\\\"] h1, html[lang=\\\"ja\\\"] h2, html[lang=\\\"ja\\\"] h3, html[lang=\\\"ja\\\"] h4, html[lang=\\\"ja\\\"] h5, html[lang=\\\"ja\\\"] h6{\\n\\tfont-size:20px;\\n\\tcolor: #e06b17;\\n}\\nul li a{\\n\\tcolor:white;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-22 02:17:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f3b25c72-a3f9-4f25-b60d-2ce382f4197c', '', '', '2020-09-22 11:22:17', '2020-09-22 02:22:17', '', 0, 'http://localhost/ssp1/wptest/?p=178', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, '未分類', '%e6%9c%aa%e5%88%86%e9%a1%9e', 0),
(2, 'メイン', '%e3%83%a1%e3%82%a4%e3%83%b3', 0),
(3, 'メイン (2)', '%e3%83%a1%e3%82%a4%e3%83%b3-2', 0),
(4, '﻿ソーシャルリンクメニュー', '%ef%bb%bf%e3%82%bd%e3%83%bc%e3%82%b7%e3%83%a3%e3%83%ab%e3%83%aa%e3%83%b3%e3%82%af%e3%83%a1%e3%83%8b%e3%83%a5%e3%83%bc', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(83, 2, 0),
(84, 2, 0),
(85, 2, 0),
(86, 2, 0),
(87, 3, 0),
(88, 3, 0),
(89, 3, 0),
(90, 3, 0),
(91, 4, 0),
(92, 4, 0),
(93, 4, 0),
(94, 4, 0),
(95, 4, 0),
(139, 1, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'wptest'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"34ba939f129a25ce2b6761a6477d1e163097f3ff5c8ca4d4ff11208ad34d5fe7\";a:4:{s:10:\"expiration\";i:1600736421;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36\";s:5:\"login\";i:1599526821;}s:64:\"5b0f16f6a1e6605e687471024aa3a0ebfa7cf3b8c0c3c3a5117ea3b3747b8fa5\";a:4:{s:10:\"expiration\";i:1601910658;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36 Edg/85.0.564.51\";s:5:\"login\";i:1600701058;}s:64:\"002befe122000229a78e6120ebb5c975bb41880781f50ac3110823cb0770269b\";a:4:{s:10:\"expiration\";i:1601910698;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\";s:5:\"login\";i:1600701098;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '114'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(19, 1, 'wp_user-settings-time', '1600713395'),
(20, 1, 'nav_menu_recently_edited', '4'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'wptest', '$P$BT2C2Zp8Ydqd2AZuZfo8k8m9YCkOPp.', 'wptest', 'aaa@gmail.com', 'http://localhost/ssp1/wptest', '2020-09-08 00:59:58', '', 0, 'wptest');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- テーブルのインデックス `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- テーブルのインデックス `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- テーブルのインデックス `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- テーブルのインデックス `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- テーブルのインデックス `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- テーブルのインデックス `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- テーブルのインデックス `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- テーブルのインデックス `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- テーブルのインデックス `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- テーブルのインデックス `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- テーブルのインデックス `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- テーブルのAUTO_INCREMENT `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

--
-- テーブルのAUTO_INCREMENT `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- テーブルのAUTO_INCREMENT `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルのAUTO_INCREMENT `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルのAUTO_INCREMENT `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- テーブルのAUTO_INCREMENT `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

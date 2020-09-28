-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2020-09-25 12:42:03
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
-- データベース: `ssp1`
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 07. Feb 2021 um 22:10
-- Server-Version: 10.4.14-MariaDB
-- PHP-Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cake`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `body` text DEFAULT NULL,
  `Anleitung` mediumtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `published` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `title`, `slug`, `body`, `Anleitung`, `image`, `published`, `created`, `modified`) VALUES
(11, 7, 'Bienenstich', 'Bienenstich', '\r\nFür den Teig:\r\n250 g	Margarine\r\n250 g	Quark\r\n250 g	Zucker\r\n2	Ei(er)\r\n500 g	Mehl\r\n¾ Pck.	Backpulver\r\nFett, für das Blech\r\nFür den Belag:\r\n250 g	Mandel(n), gehackte\r\n250 g	Zucker\r\n250 g	Butter\r\n1 EL	Honig\r\n3 EL	Kondensmilch', 'Für den Teig Margarine, Eier, Zucker, Quark, Mehl und Backpulver zuerst mixen und danach kneten. Den Teig auf einem gefetteten Backblech verteilen.\r\nFür den Belag die Butter in einem Topf zergehen lassen, dann den Zucker und die gehackten Mandeln dazu geben und kurz aufkochen lassen. anschließend den Honig hinzufügen und dann den Topf vom Herd nehmen.\r\nZum Schluss noch die Kondensmilch unterrühren und die fertige Mandelmasse auf dem Backblech gleichmäßig verteilen.\r\n\r\nKuchen im vorgeheizten Backofen (E-Herd 175°, Umluft 150°, Gas: Stufe 3) ca. 25-30 Minuten auf mittlerer Schiene backen.', '', 0, '2020-12-15 19:17:56', '2021-02-07 20:09:41'),
(12, 7, 'Zimtkuchen', 'Zimtkuchen', '200 g 	Butter,\r\n150 g 	Zucker,\r\n4 m.-große 	Ei(er),\r\n1 Pck. 	Backpulver,\r\n1 Pck. 	Vanillezucker,\r\n2 TL 	Zimt, nach Geschmack auch mehr,\r\n250 g 	Mehl,\r\n150 ml 	Milch,', 'Die Hefe und den Zucker in der lauwarmen Milch auflösen. Die Hälfte des Mehls und die Milch in einer Rührschüssel mit dem Knethaken zu einem glatten Teig verrühren. An einen warmen Platz stellen und gehen lassen, bis sich der Teig verdoppelt hat.\r\n\r\nDanach das Salz, die geschmolzene Butter, das Ei und das restliche Mehl dazugeben. Gut verrühren, bis der Teig sich vom Schüsselrand löst und zu einer Kugel wird.\r\n\r\nDen Teig auf ein gefettetes Backblech drücken und nochmals gehen lassen. Mit dem Löffel viele Löcher in den Teig drücken für die Pielcher. Diese mit Pflanzencreme befüllen.\r\n\r\nDie Crème fraîche und den Schmand mischen und auf dem Hefeteig verteilen. Zimt und Zucker mischen und darüber streuen. Im Ofen bei 175 Grad 30 Minuten backen.', '', 0, '2020-12-15 19:24:15', '2021-02-07 20:04:15'),
(13, 7, 'Bananenkuchen', 'Bananenkuchen', '3	Banane(n), reife\r\n120 g	Margarine\r\n120 g	Zucker\r\n1 Pck.	Vanillezucker\r\n2	Ei(er)\r\n125 ml	Milch\r\n½ TL	Salz\r\n1 TL, gestr.	Zimt\r\n100 g	Nüsse, gehackt\r\n125 g	Weizenmehl Type 405\r\n125 g	Weizenvollkornmehl\r\n½ Pck.	Backpulver\r\nMargarine für die Form', 'Die geschälten Bananen mit einer Gabel fein zerdrücken. Die Margarine mit Zucker und Vanillezucker schaumig rühren, nach und nach die Eier, Bananenmus, Milch, Salz, Zimt und Nüsse unterrühren. Das Mehl mit Backpulver vermischen, durchsieben und vorsichtig unter den Teig heben.\r\n\r\nDen Teig in die gefettete Kastenform füllen. Bei 170 °C Ober-/Unterhitze auf der 2. Schiene von unten 45 - 55 Minuten backen (Holzstäbchenprobe).\r\n\r\nDieser Kuchen schmeckt warm (frisch aus dem Ofen) und kalt.', 'image/article-img/0-Waste.PNG', 0, '2020-12-15 19:33:38', '2021-02-07 20:05:22'),
(15, 7, 'Schokopudding', 'Schokopudding', '40 g	Maisstärke oder andere Speisestärke\r\n3 EL	Kakaopulver\r\n½ Liter	Milch\r\n4 EL	Zucker\r\nn. B.	Sahne, geschlagene\r\nn. B.	Früchte nach Wahl, mundgerecht geschnittene', 'Die Stärke mit Kakaopulver in ca. 1/3 der kalten Milch glattrühren. Die restliche Milch mit dem Zucker aufkochen. Die glatt gerührte Kakaomasse zugeben. Unter ständigem Rühren nochmals aufkochen und anschließend ca. 1 Minute kochen lassen. Die Puddingmasse in die mit kaltem Wasser ausgespülte Form füllen. Nach dem Auskühlen bis zum Servieren für ca. 2 Stunden kaltstellen.\r\n\r\nVor dem Servieren nach Belieben mit Sahne und Früchten dekorieren.\r\n\r\nTipp: 1 EL Rumrosinen nach dem Kochen unterheben.', 'img/Schokopudding.jpg', 0, '2020-12-15 19:50:02', '2021-02-07 20:06:02'),
(17, 7, 'Vanillepudding', 'Vanillepudding', '1	Vanilleschote(n)\r\n500 ml	Milch\r\n70 g	Puderzucker\r\n3	Eigelb\r\n30 g	Speisestärke', 'Zuerst das Mark der Vanilleschote auskratzen, zur Milch geben und aufkochen.\r\n\r\nIn der Zwischenzeit das Eigelb mit dem Puderzucker mindestens 3 Minuten mit dem Rührgerät zu einer dicken Masse aufschlagen. Wenn die Eier fast weiß sind, die Speisestärke unterrühren. Die Masse unter ständigem Rühren zur Milch geben und nochmals aufkochen.\r\n\r\nAnschließend den Pudding in kleine Schälchen geben.\r\n\r\nTipp:\r\nIch gebe zuerst gefrorene Himbeeren in die Schalen und darüber dann den Vanillepudding. Das ist echt ein Gedicht.\r\nWenn es nach meinen Kindern gehen würde, dann gäbe es den Pudding jeden Tag.', '', 0, '2020-12-15 22:11:55', '2021-02-07 20:06:50'),
(18, 7, 'Erdbeerpudding', 'Erdbeerpudding', '300 g	Erdbeeren, frisch\r\n300 ml	Milch\r\n1 Pck.	Vanillezucker\r\nn. B.	Zucker, je nach Süße der Erdbeeren\r\n40 g	Speisestärke\r\n20 ml	Grenadine, nach Belieben', 'Die Erdbeeren waschen, putzen und mit dem Pürierstab in einem Messbecher fein pürieren. Mit der Milch auf 500 ml auffüllen. Mit Vanillezucker und Zucker in einem Topf aufkochen lassen. Die Speisestärke mit etwas Milch klümpchenfrei verrühren. Den Topf vom Herd nehmen und unter kräftigem Rühren die angerührte Stärke in die Erdbeermasse geben, anschließend wieder auf die Herdplatte stellen und aufkochen lassen. Die Masse dickt sofort ein.\r\n\r\nNun noch nach Belieben den Grenadine hinein rühren und den Pudding in kalt ausgespülte Dessertschälchen füllen. Mit Klarsichtfolie direkt auf dem Pudding abdecken, so gibt es keine Haut.\r\nIm Kühlschrank fest werden lassen. Den Pudding kann man gut stürzen.', '', 0, '2021-01-19 18:05:33', '2021-02-07 20:07:28');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `articles_tags`
--

CREATE TABLE `articles_tags` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `articles_tags`
--

INSERT INTO `articles_tags` (`article_id`, `tag_id`) VALUES
(11, 12),
(12, 12),
(13, 12),
(15, 14),
(17, 14),
(18, 14);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tags`
--

INSERT INTO `tags` (`id`, `title`, `created`, `modified`) VALUES
(12, 'Kuchen', '2020-12-15 19:18:24', '2020-12-15 19:35:27'),
(14, 'Pudding', '2020-12-15 22:10:35', '2021-01-19 18:07:29');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `Vorname` varchar(40) NOT NULL,
  `Nachname` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created`, `modified`) VALUES
(7, 'probe@gmail.com', '$2y$10$aGV532HsgiXZpaBdYbF1Xud89Hrao7QG4RaoPtsn9wIygkjWXLO8G', '2020-12-15 18:12:26', '2020-12-15 18:12:26'),
(10, 'test@gmail.com', '$2y$10$z4JJFEFkl9M9SzViyKQS1eWM4N0wXlB6ltiizypqCnrvNzIOryQ9u', '2021-01-08 19:35:50', '2021-01-08 19:35:50'),
(11, 'lol@web.de', '$2y$10$fnI.d.u8qOcKhu3tNAR72u9B.UoIZXpwzwfOki.wxfS12f.OF.EbW', '2021-01-08 19:36:02', '2021-01-08 19:36:02'),
(12, 'arianalbert14@gmail.com', '$2y$10$2sVwxmYmwtoILxrTUtcKLujsPeWjpBkcLSIWqP/x99Lfvnf1WqLyi', '2021-01-20 21:41:03', '2021-01-20 21:41:03'),
(13, 'meikebehlke@gmail.com', '$2y$10$F7Q5qym04XMWzi3ULVvGmOSsl3k0I2Q/RlN.NkoxlItBtFUQ5sGfq', '2021-01-21 08:12:48', '2021-01-21 08:12:48');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `webcounter`
--

CREATE TABLE `webcounter` (
  `id` int(11) NOT NULL,
  `access_page` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `access_counter` int(11) NOT NULL,
  `access_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `webcounter`
--

INSERT INTO `webcounter` (`id`, `access_page`, `access_counter`, `access_date`) VALUES
(5, 'Zimtkuchen', 21, '2021-02-07 20:12:17'),
(6, 'Bananenkuchen', 44, '2021-02-07 20:04:35'),
(7, 'Bienenstich', 161, '2021-02-07 21:03:05'),
(8, 'Erdbeerpudding', 3, '2021-02-07 20:06:54'),
(9, 'Vanillepudding', 7, '2021-02-07 20:12:24'),
(10, 'Schokopudding', 10, '2021-02-07 20:05:27'),
(11, 'esrgwehtrhtw', 3, '2021-01-20 21:21:14'),
(12, 'testkuchen', 6, '2021-02-07 20:07:58'),
(13, 'rezeptnamen', 6, '2021-02-07 20:08:05'),
(14, 'Konfettikuchen', 2, '2021-02-03 20:51:11');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_key` (`user_id`);

--
-- Indizes für die Tabelle `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD PRIMARY KEY (`article_id`,`tag_id`),
  ADD KEY `tag_key` (`tag_id`);

--
-- Indizes für die Tabelle `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indizes für die Tabelle `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `webcounter`
--
ALTER TABLE `webcounter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `access_page` (`access_page`) USING HASH;

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT für Tabelle `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT für Tabelle `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `webcounter`
--
ALTER TABLE `webcounter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `user_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints der Tabelle `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD CONSTRAINT `article_key` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `tag_key` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

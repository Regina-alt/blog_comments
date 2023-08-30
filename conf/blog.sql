-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 30 2023 г., 10:41
-- Версия сервера: 8.0.30
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id_comment` int NOT NULL,
  `name_comment` varchar(100) NOT NULL,
  `body_comment` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `postId` int NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id_post` int NOT NULL,
  `title_post` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `body_post` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `userId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id_user` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id_user`, `email`, `password`) VALUES
(1, 'Eliseo@gardner.biz', '123'),
(2, 'Jayne_Kuhic@sydney.com', '123'),
(3, 'Nikita@garfield.biz', '123'),
(4, 'Lew@alysha.tv', '123'),
(5, 'Hayden@althea.biz', '123'),
(6, 'Dallas@ole.me', '123'),
(7, 'Mallory_Kunze@marie.org', '123'),
(8, 'Meghan_Littel@rene.us', '123'),
(9, 'Carmen_Keeling@caroline.name', '123'),
(10, 'Veronica_Goodwin@timmothy.net', '123'),
(11, 'Oswald.Vandervort@leanne.org', '123'),
(12, 'Kariane@jadyn.tv', '123'),
(13, 'Nathan@solon.io', '123'),
(14, 'Maynard.Hodkiewicz@roberta.com', '123'),
(15, 'Christine@ayana.info', '123'),
(16, 'Preston_Hudson@blaise.tv', '123'),
(17, 'Vincenza_Klocko@albertha.name', '123'),
(18, 'Madelynn.Gorczany@darion.biz', '123'),
(19, 'Mariana_Orn@preston.org', '123'),
(20, 'Noemie@marques.me', '123'),
(21, 'Khalil@emile.co.uk', '123'),
(22, 'Sophia@arianna.co.uk', '123'),
(23, 'Jeffery@juwan.us', '123'),
(24, 'Isaias_Kuhic@jarrett.net', '123'),
(25, 'Russel.Parker@kameron.io', '123'),
(26, 'Francesco.Gleason@nella.us', '123'),
(27, 'Ronny@rosina.org', '123'),
(28, 'Jennings_Pouros@erica.biz', '123'),
(29, 'Lurline@marvin.biz', '123'),
(30, 'Buford@shaylee.biz', '123'),
(31, 'Maria@laurel.name', '123'),
(32, 'Jaeden.Towne@arlene.tv', '123'),
(33, 'Ethelyn.Schneider@emelia.co.uk', '123'),
(34, 'Georgianna@florence.io', '123'),
(35, 'Raheem_Heaney@gretchen.biz', '123'),
(36, 'Jacky@victoria.net', '123'),
(37, 'Piper@linwood.us', '123'),
(38, 'Gaylord@russell.net', '123'),
(39, 'Clare.Aufderhar@nicole.ca', '123'),
(40, 'Lucio@gladys.tv', '123'),
(41, 'Shemar@ewell.name', '123'),
(42, 'Jackeline@eva.tv', '123'),
(43, 'Marianna_Wilkinson@rupert.io', '123'),
(44, 'Marcia@name.biz', '123'),
(45, 'Jeremy.Harann@waino.me', '123'),
(46, 'Pearlie.Kling@sandy.com', '123'),
(47, 'Manuela_Stehr@chelsie.tv', '123'),
(48, 'Camryn.Weimann@doris.io', '123'),
(49, 'Kiana_Predovic@yasmin.io', '123'),
(50, 'Laurie@lincoln.us', '123'),
(51, 'Abigail.OConnell@june.org', '123'),
(52, 'Laverne_Price@scotty.info', '123'),
(53, 'Kenton_Vandervort@friedrich.com', '123'),
(54, 'Hayden_Olson@marianna.me', '123'),
(55, 'Vince_Crist@heidi.biz', '123'),
(56, 'Darron.Nikolaus@eulah.me', '123'),
(57, 'Ezra_Abshire@lyda.us', '123'),
(58, 'Jameson@tony.info', '123'),
(59, 'Americo@estrella.net', '123'),
(60, 'Aurelio.Pfeffer@griffin.ca', '123'),
(61, 'Vesta_Crooks@dora.us', '123'),
(62, 'Margarett_Klein@mike.biz', '123'),
(63, 'Freida@brandt.tv', '123'),
(64, 'Mollie@agustina.name', '123'),
(65, 'Janice@alda.io', '123'),
(66, 'Dashawn@garry.com', '123'),
(67, 'Devan.Nader@ettie.me', '123'),
(68, 'Joana.Schoen@leora.co.uk', '123'),
(69, 'Minerva.Anderson@devonte.ca', '123'),
(70, 'Lavinia@lafayette.me', '123'),
(71, 'Sabrina.Marks@savanah.name', '123'),
(72, 'Desmond_Graham@kailee.biz', '123'),
(73, 'Gussie_Kunde@sharon.biz', '123'),
(74, 'Richard@chelsie.co.uk', '123'),
(75, 'Gage_Turner@halle.name', '123'),
(76, 'Alfred@sadye.biz', '123'),
(77, 'Catharine@jordyn.com', '123'),
(78, 'Esther_Ratke@shayna.biz', '123'),
(79, 'Evangeline@chad.net', '123'),
(80, 'Newton.Kertzmann@anjali.io', '123'),
(81, 'Caleb_Herzog@rosamond.net', '123'),
(82, 'Sage_Mueller@candace.net', '123'),
(83, 'Bernie.Bergnaum@lue.com', '123'),
(84, 'Alexzander_Davis@eduardo.name', '123'),
(85, 'Jacquelyn@krista.info', '123'),
(86, 'Grover_Volkman@coty.tv', '123'),
(87, 'Jovanny@abigale.ca', '123'),
(88, 'Isac_Schmeler@barton.com', '123'),
(89, 'Sandy.Erdman@sabina.info', '123'),
(90, 'Alexandro@garry.io', '123'),
(91, 'Desmond_Graham@kailee.biz', '123'),
(92, 'Gussie_Kunde@sharon.biz', '123'),
(93, 'Richard@chelsie.co.uk', '123'),
(94, 'Gage_Turner@halle.name', '123'),
(95, 'Alfred@sadye.biz', '123'),
(96, 'Catharine@jordyn.com', '123'),
(97, 'Esther_Ratke@shayna.biz', '123'),
(98, 'Evangeline@chad.net', '123'),
(99, 'Newton.Kertzmann@anjali.io', '123'),
(100, 'Vickie_Schuster@harley.net', '123'),
(101, 'Roma_Doyle@alia.com', '123'),
(102, 'Tatum_Marks@jaylon.name', '123'),
(103, 'Juston.Ruecker@scot.tv', '123'),
(104, 'River.Grady@lavada.biz', '123'),
(105, 'Claudia@emilia.ca', '123'),
(106, 'Torrey@june.tv', '123'),
(107, 'Hildegard.Aufderhar@howard.com', '123'),
(108, 'Leone_Fay@orrin.com', '123'),
(109, 'Lura@rod.tv', '123');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `postId` (`postId`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `userId` (`userId`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id_post` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `posts` (`id_post`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

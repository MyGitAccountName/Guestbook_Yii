-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 13 2021 г., 00:20
-- Версия сервера: 5.7.33-log
-- Версия PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `guestbook3`
--

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'id сообщения',
  `User` int(11) UNSIGNED NOT NULL COMMENT 'id пользователя',
  `Message` varchar(600) NOT NULL COMMENT 'текст сообщения',
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'время сообщения'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `User`, `Message`, `Date`) VALUES
(1, 1, 'Первое сообщение', '2021-02-11 04:17:32'),
(2, 2, 'Второе сообщение', '2021-09-19 05:22:34'),
(3, 6, 'Я обычно как напьюсь,\r\nГоловой о стенку бьюсь.\r\nТо ли вредно мне спиртное,\r\nТо ли просто возрастное.', '2021-10-01 15:47:18'),
(4, 2, 'Любой дурак сможет написать код, который поймет машина. Хорошие программисты пишут код, который сможет понять человек.\r\nMartin Fowler', '2021-10-09 11:32:34'),
(5, 7, 'Чему нас может научить гиппопотам? Что невозможно избавиться от лишнего веса, благодаря прогулкам и растительной диете.', '2021-10-10 18:20:33'),
(6, 4, ';)', '2021-10-14 00:44:48'),
(7, 5, 'До скорой встречи!', '2021-10-14 05:20:28'),
(8, 3, 'ДОБАВЛЕННОЕ СООЩЕНИЕ!', '2021-10-29 19:04:42'),
(9, 9, 'Новое', '2021-12-03 02:17:42');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'id пользователя',
  `Name` varchar(60) NOT NULL DEFAULT 'No name' COMMENT 'имя пользователя',
  `SurName` varchar(60) NOT NULL DEFAULT 'No surname' COMMENT 'фамилия пользователя',
  `Login` varchar(60) NOT NULL COMMENT 'логин',
  `Password` varchar(60) NOT NULL COMMENT 'хэш пароля'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `Name`, `SurName`, `Login`, `Password`) VALUES
(1, 'Иван', 'Иванов', 'User1', '$2y$13$4IiSDX5hZHEBJpoFk1Y.5evgCwbFx2XO6Yng3AMIjC9BgDChnGa9i'),
(2, 'Александр', 'Александров', 'User2', '$2y$13$kuka64DCu6S/WY/9c1QKUueXZPzCdEZ/TbvHuFqO0jCivlZF5qdlG'),
(3, 'Виталий', 'Буров', 'User3', '$2y$13$C03iybulS0KfVD4a967yUO8QJbKvd1tOyyRuRuQx7R8FqyE1EyLki'),
(4, 'Валентина', 'Андреева', 'User4', '$2y$13$TUpOl2Kv.n6JzuZZR5ND6.TeTb5DjPDyk0B2O1GErvCiUYPjMU.dS'),
(5, 'Акакий', 'Фролов', 'User5', '$2y$13$AwkP1KRrpNeg7rgUxZmeMOEyZtcx6gHmbM9by2W.AA.0bnFaoYhrq'),
(6, 'Ольга', 'Морковкина', 'User6', '$2y$13$bBXSO5/zyo9x06pRVW5DtOWikr5cEE3SO1ShAsgiP2oEr2EazOEVu'),
(7, 'Анна', 'Ярко', 'User7', '$2y$13$8G.pZRTHYOHD7eXSdws0ceaPFb/ZhuXDVSralWKz3Q0xr/AKNPCu2'),
(8, 'Пётр', 'Некрасов', 'User8', '$2y$13$zdPKhDJEotJjkP3MH137fOGwFwu5l39naiquOUTR4NOmxa/Vk2wtm'),
(9, 'Тимофей', 'Кнутский', 'User9', '$2y$13$PRA0M.stuHQH6maIJyDphO23BC/DS2Y9jMDWWRnkB0itNQeVAfbpy'),
(10, 'Дарья', 'Жилина', 'User10', '$2y$13$Emrrksz7/HpvaiGEQ/uDBOL9Ur.sq1M/YuayvBAfHttRofHMopdZa');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `User` (`User`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id сообщения', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id пользователя', AUTO_INCREMENT=32;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`User`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

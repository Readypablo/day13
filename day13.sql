-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 23 2023 г., 09:12
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `day13`
--

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int NOT NULL,
  `first_name` varchar(999) NOT NULL,
  `img` varchar(999) NOT NULL,
  `cost` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `first_name`, `img`, `cost`) VALUES
(1, 'черная гитара', '9.png', 557),
(2, '2', '9.png', 2),
(3, 'баян2', '3.png', 222),
(4, 'барабаны', '4.png', 333),
(5, 'виалончель', '5.png', 444),
(6, 'белая гитара', '6.png', 666),
(11, 'черная гитара', '7.png', 777),
(12, 'дефолт гитара', '8.png', 888),
(13, 'наклоненая гитара', '9.png', 999),
(14, 'гармочшка', '10.png', 1000),
(15, 'гусли', '11.png', 2000),
(16, 'кларнет', '12.png', 3000),
(17, 'старое пианино', '13.png', 1500),
(18, 'палочки досочки', '14.png', 1600),
(19, 'сэксафон', '15.png', 7000),
(20, 'электро пианино', '16.png', 8000),
(21, 'синтезайтор', '17.png', 9000),
(22, 'скрипко', '19.png', 11000),
(23, 'колоколчик', '20.png', 12000),
(24, 'флейта', '21.png', 14000),
(25, 'черная гитара', '9.png', 222222222),
(26, '2', '9.png', 2),
(27, 'дефолт гитара', '11.png', 2),
(28, '2', '2.png', 2),
(29, '3', '11.png', 3),
(30, '9', '9.png', 9),
(31, '2', '9.png', 2),
(32, '2', '9.png', 2),
(33, '2', '9.png', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `nots`
--

CREATE TABLE `nots` (
  `id` int NOT NULL,
  `first_namu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img` varchar(50) NOT NULL,
  `cost` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `nots`
--

INSERT INTO `nots` (`id`, `first_namu`, `img`, `cost`) VALUES
(1, 'jогонек', '31.png', 777),
(2, 'холодок', '32.png', 666),
(3, 'кислячек', '33.png', 555),
(4, 'острачек', '34.png', 444),
(5, 'дурачек', '35.png', 333),
(6, 'другалечек', '36.png', 222),
(7, 'ботиночек', '37.png', 111),
(8, 'кросовочек', '38.png', 888);

-- --------------------------------------------------------

--
-- Структура таблицы `Reviews`
--

CREATE TABLE `Reviews` (
  `id` int NOT NULL,
  `Content` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Reviews`
--

INSERT INTO `Reviews` (`id`, `Content`) VALUES
(1, '\"Большой выбор инструментов и отличное обслуживание! Я в восторге от моей новой гитары!\"'),
(2, '\"Этот магазин стал для меня находкой! Огромный выбор и профессиональный подход.\"'),
(3, '\"Удивительно, какой выбор струнных инструментов! Этот магазин - настоящая находка для музыкантов.\"'),
(4, '\"Спасибо за помощь в выборе! Мой новый саксофон - просто шедевр!\"'),
(6, '\"Очень доволен покупкой клавишного инструмента. Отличное качество и звучание!\"'),
(7, '\"Спасибо за ваше внимание к деталям. Моя новая скрипка - настоящее произведение искусства!\"'),
(8, '\"Моя новая электрогитара - просто космос! Спасибо за отличное обслуживание.\"'),
(9, '\"Очень удобный интерфейс сайта, легко находить и заказывать нужные инструменты.\"'),
(10, '\"Этот магазин стал для меня настоящим открытием. Я нашел здесь именно то, что искал!\"'),
(12, '\"Очень привлекательные цены и высокое качество инструментов. Буду рекомендовать вас всем музыкантам!\"');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `data` date NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `data`, `password`, `email`) VALUES
(1, 'admin', 'admin', '12345678', '2023-06-07', '123123', '11111'),
(7, 'a', 'a', '2', '2023-11-30', '2', '2'),
(18, '4', '4', '4', '2023-12-13', '4', '4'),
(19, '0', '0', '0', '2023-12-28', '0', '0'),
(20, '12', '12', '12', '2023-12-05', '12', '12'),
(21, 'manager', 'manager', 'manager', '2023-12-27', 'manager', 'manager');

-- --------------------------------------------------------

--
-- Структура таблицы `workout`
--

CREATE TABLE `workout` (
  `id` int NOT NULL,
  `first_namee` varchar(50) NOT NULL,
  `lek_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `workout`
--

INSERT INTO `workout` (`id`, `first_namee`, `lek_id`) VALUES
(17, 'a', 3),
(19, 'a', 4),
(23, 'a', 2),
(33, 'admin', 2),
(34, '4', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `workoutnot`
--

CREATE TABLE `workoutnot` (
  `id` int NOT NULL,
  `first_nameee` varchar(50) NOT NULL,
  `not_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `workoutnot`
--

INSERT INTO `workoutnot` (`id`, `first_nameee`, `not_id`) VALUES
(1, 'admin', 3),
(2, 'admin', 3),
(3, 'admin', 1),
(4, 'admin', 2),
(5, '4', 7);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `nots`
--
ALTER TABLE `nots`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Reviews`
--
ALTER TABLE `Reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `workout`
--
ALTER TABLE `workout`
  ADD PRIMARY KEY (`id`),
  ADD KEY `first_namee` (`first_namee`),
  ADD KEY `lek_id` (`lek_id`);

--
-- Индексы таблицы `workoutnot`
--
ALTER TABLE `workoutnot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `not_id` (`not_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `nots`
--
ALTER TABLE `nots`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `Reviews`
--
ALTER TABLE `Reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `workout`
--
ALTER TABLE `workout`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `workoutnot`
--
ALTER TABLE `workoutnot`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `workout`
--
ALTER TABLE `workout`
  ADD CONSTRAINT `workout_ibfk_1` FOREIGN KEY (`lek_id`) REFERENCES `books` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `workoutnot`
--
ALTER TABLE `workoutnot`
  ADD CONSTRAINT `workoutnot_ibfk_1` FOREIGN KEY (`not_id`) REFERENCES `nots` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

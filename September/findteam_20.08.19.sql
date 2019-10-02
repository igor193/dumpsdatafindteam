-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Авг 20 2019 г., 01:12
-- Версия сервера: 5.7.20
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `findteam`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articls`
--

CREATE TABLE `articls` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `auther` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articls`
--

INSERT INTO `articls` (`id`, `topic`, `body`, `auther`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Судья матча «Спартак» — «Сочи» Москалев отстранен. Ночных матчей скоро не будет', 'Гол «Спартака» засчитан ошибочно, «Сочи» не дали пенальти\r\nПо сравнению с предыдущим сезоном изменений по составу спикеров не произошло: перед журналистами выступили руководитель департамента судейства и инспектирования РФС Александр Егоров, директор РПЛ по безопасности и работе с болельщиками Александр Мейтин, а также спортивный директор лиги Виктор Пышкин.\r\n\r\n— После матча «Спартака» и «Сочи» было много вопросов к судье Москалеву. Что скажете по этому поводу? — задал вопрос Егорову корреспондент «СЭ».\r\n\r\n— А вы знаете, кто такой Георгий Джикия? Как думаете, он разбирается в футболе? Читали его интервью в вашем издании? Он сказал, что судейство было на высшем ', 'Говоров', '', '2019-07-16 15:54:01', '2019-07-15 21:00:00'),
(2, '«Реал» продаст Бэйла за сумму свыше 80 миллионов евро', 'По информации источника, в клуб предложений по футболисту не поступало. Сам игрок не намерен покидать «Реал».', 'Ворчун', '', '2019-07-16 15:54:01', '2019-07-16 15:54:01'),
(3, 'Воспитанник «Барселоны» назвал «Реал» лучшим клубом в мире', 'Кубо является воспитанником «Барселоны», но летом перебрался в стан принципиального соперника. По данным испанских СМИ, за форварда было заплачено чуть более € 2 млн.', 'Футболист', '', '2019-07-16 15:55:20', '2019-07-16 15:55:20'),
(4, '«ВКонтакте» представила нового операционного директора', 'Социальная сеть «ВКонтакте» представила своего нового операционного директора. Как сообщает пресс-служба организации, операционным директором стал Сергей Кубасов.', 'Гувер', '', '2019-08-19 20:38:00', '2019-08-19 20:38:00'),
(5, 'NVIDIA представила Watch Dogs: Legion с RTX-трассировкой лучей', 'NVIDIA представила Watch Dogs: Legion с RTX-трассировкой лучей\r\nNVIDIA продолжает показывать новые игры с поддержкой RTX-трассировки лучей: вслед за Minecraft, Call of Duty: Modern Warfare и Vampire: The Masquerade — Bloodlines 2 настал черёд Watch Dogs: Legion.\r\nДо релиза ещё долго, поэтому, вероятно, это лишь ранняя работа «зелёных»\r\nспециалистов, а к марту нас ждут ещё более впечатляющие отражения в реальном времени, которые заменяют ставшие стандартом кубические карты и отражение на основе сведений экрана (SSR).\r\nТрассировка лучей распространяется на окна, лужи, машины и остальные зеркальные поверхности, также сказываясь и на освещении других предметов окружения и людей. \r\nВыход Watch Dogs: Legion состоится 6 марта на PS4, Xbox One и РС. ', 'Гувер', '', '2019-08-19 20:39:48', '2019-08-19 20:39:48');

-- --------------------------------------------------------

--
-- Структура таблицы `articl_comment`
--

CREATE TABLE `articl_comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articl_comment`
--

INSERT INTO `articl_comment` (`id`, `article_id`, `comment_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-08-19 21:13:33', '2019-08-19 21:13:33'),
(2, 2, 2, '2019-08-19 21:14:00', '2019-08-19 21:14:00'),
(3, 3, 3, '2019-08-19 21:14:29', '2019-08-19 21:14:29');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Игры', NULL, '2019-08-19 21:03:57', '2019-08-19 21:03:57'),
(2, 'Бизнес', NULL, '2019-08-19 21:03:57', '2019-08-19 21:03:57'),
(3, 'Спорт', NULL, '2019-08-19 21:04:46', '2019-08-19 21:04:46'),
(4, 'Инвестиции', NULL, '2019-08-19 21:04:46', '2019-08-19 21:04:46'),
(5, 'АйТи', NULL, '2019-08-19 21:06:01', '2019-08-19 21:06:01'),
(6, 'Музыка', NULL, '2019-08-19 21:06:01', '2019-08-19 21:06:01');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `type` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `public` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `article_id`, `parent_id`, `type`, `user`, `email`, `message`, `public`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '', 'igor', 'igor193@mail.ru', 'Комментарий на статью номер 1', '1', '2019-08-19 21:16:12', '2019-08-19 21:16:12'),
(2, 2, 0, '', 'ivan', 'ivan@mail.ru', 'Комментарий к статье номер 2', '1', '2019-08-19 21:15:52', '2019-08-19 21:15:52'),
(3, 3, 0, '', 'Petr', 'petr@mail.ru', 'Комментарий к статье номер 3', '1', '2019-08-19 21:16:28', '2019-08-19 21:16:28'),
(4, 1, 1, '', 'Nikola', 'nicola@mail.ru', 'Субкоментарий 1 на комментарий уровня 1 на статью номер 1', '1', '2019-08-16 12:41:29', '2019-08-16 12:41:29'),
(5, 1, 1, '', 'Vasil', 'vasil@mail.ru', 'Субкоментарий 2 на комментарий уровня 1 на статью номер 1', '1', '2019-08-16 12:42:55', '2019-08-16 12:42:55');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2019_07_11_053431_create_articls_table', 2),
('2017_06_26_095610_CreateCommentsTable', 3),
('2019_08_13_202933_creat_comments_table', 4),
('2019_08_17_140218_create_articl_comment_table', 5),
('2019_08_19_202940_create_categories_table', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'igor', 'igor193@mail.ru', '$2y$10$Agqw0TQAncva4X3gFAiNZuAEtY.RncGS4A9ZzdFZHxfBBG/cRZrc2', 'oRp107LJxnt9agxALcY48bnACFjjAgT8I8PW6bbtMTGNBLhUiNXYEWTxFEyk', '2019-07-16 10:59:41', '2019-07-16 10:59:41');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articls`
--
ALTER TABLE `articls`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `articl_comment`
--
ALTER TABLE `articl_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articl_comment_article_id_foreign` (`article_id`),
  ADD KEY `articl_comment_comment_id_foreign` (`comment_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articls`
--
ALTER TABLE `articls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `articl_comment`
--
ALTER TABLE `articl_comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `articl_comment`
--
ALTER TABLE `articl_comment`
  ADD CONSTRAINT `articl_comment_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articl_comment_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

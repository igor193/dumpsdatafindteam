-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 29 2019 г., 15:37
-- Версия сервера: 10.1.30-MariaDB
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `findteamv1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_category`
--

CREATE TABLE `attribute_category` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `avatars`
--

CREATE TABLE `avatars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `slug`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'business', 'Бизнес', NULL, NULL, NULL),
(2, 0, 'music', 'Музыка', NULL, NULL, NULL),
(3, 0, 'games', 'Игры', NULL, NULL, NULL),
(4, 0, 'sport', 'Спорт', NULL, NULL, NULL),
(5, 0, 'invest', 'Инвестиции', NULL, NULL, NULL),
(6, 0, 'it', 'ИТ технологии', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `category_post`
--

CREATE TABLE `category_post` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category_post`
--

INSERT INTO `category_post` (`post_id`, `category_id`) VALUES
(10, 6),
(1, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `messege` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(80, '2014_10_12_000000_create_users_table', 1),
(81, '2014_10_12_100000_create_password_resets_table', 1),
(82, '2019_09_17_193853_create_posts_table', 1),
(83, '2019_09_17_194152_create_comments_table', 1),
(84, '2019_09_17_194459_create_categories_table', 1),
(85, '2019_09_17_194901_create_attributes_table', 1),
(86, '2019_09_17_195124_create_value_attributes_table', 1),
(87, '2019_09_17_195717_create_category_post_table', 1),
(88, '2019_09_17_200021_create_attribute_category_table', 1),
(89, '2019_09_20_153732_create_avatars_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `topic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic`, `slug`, `entry`, `body`, `publication`, `created_at`, `updated_at`) VALUES
(1, 6, 'Rerum error commodi.', 'dicta', 'Sed est repellat dolore nihil maxime. Voluptatem illo odit laborum a ea et voluptatem. Eos sit asperiores ipsum. Et ipsam error minima est. Ea commodi delectus dolores voluptatum odit.', 'Tenetur aspernatur consequuntur placeat ipsa nulla adipisci corporis quaerat. Consectetur qui sunt aut aut amet. Sed voluptatum eos fugit quo quo quasi magni sunt. Aut dolorum velit incidunt voluptatem excepturi accusamus ratione. Modi nihil ducimus est. Nemo asperiores sapiente quo odit officiis quaerat sit. Laudantium quia quisquam dolorem voluptates sunt quia. Ut porro cupiditate voluptatibus consectetur nihil aperiam debitis. Quibusdam omnis dolores magnam itaque quis.', 1, '2019-09-28 17:21:17', '2019-09-28 17:21:17'),
(2, 6, 'Et excepturi.', 'minima', 'Voluptatibus eius ducimus totam ab ut voluptas explicabo. Distinctio distinctio nisi blanditiis ipsam provident modi et. Nisi mollitia tenetur et dolor.', 'Ut quis maxime ut quas debitis qui voluptatum. Rerum fuga iste saepe et facilis. Corrupti aut pariatur quia quis molestiae amet dolorum. Veniam magni voluptatum eius debitis qui. Quis qui placeat et et. Et numquam illo aspernatur unde sed. Nihil voluptates corrupti alias. Voluptatum esse sed doloribus necessitatibus deleniti. Suscipit repellat consectetur accusamus molestiae. Accusamus nulla similique quas eligendi porro minima perspiciatis. Quos dignissimos ad voluptate quia rerum.', 1, '2019-09-28 17:21:17', '2019-09-28 17:21:17'),
(3, 6, 'Nam expedita sapiente.', 'possimus', 'Ducimus quam excepturi explicabo vero dolorum qui natus. Consectetur explicabo enim nulla totam modi. Alias temporibus molestias nemo necessitatibus accusamus. Harum quibusdam quibusdam illum ut.', 'Nesciunt velit aspernatur ipsam totam autem minima. Explicabo explicabo et deleniti ut ab eos. Libero saepe voluptatem doloribus cupiditate libero beatae sunt. Repudiandae itaque dolores rerum neque reiciendis. Nulla ea voluptatum et laudantium et itaque minus rerum. Unde modi aut debitis numquam dolores eaque nam. Non non quos aperiam tempore. Magnam consequatur ad harum maiores tenetur libero pariatur. Aut doloremque ipsum consequatur. Ipsum aut consequatur porro similique deleniti quam.', 1, '2019-09-28 17:21:17', '2019-09-28 17:21:17'),
(4, 6, 'Et nam est.', 'et', 'Hic dolorem aut ipsa sit temporibus aliquam quisquam. Et doloribus et rerum id fugiat modi. Suscipit rerum corporis tempore. Est ut maxime et nihil eum deserunt.', 'Consequatur eaque aut provident iusto recusandae dolorem eum. In id recusandae autem repellat corrupti. Libero voluptas quasi odit mollitia vitae enim repudiandae reprehenderit. Voluptatem doloribus harum expedita enim hic debitis voluptas. Quo qui recusandae possimus. Dolorem inventore nihil expedita vel expedita. Iste harum ducimus id et. Excepturi iste dolorum culpa sed nihil et aspernatur. Esse excepturi quos id maxime velit perferendis. Maxime qui odio reprehenderit quos. Odit ut omnis eaque. Commodi labore est illo ut sunt id deleniti et.', 1, '2019-09-28 17:21:17', '2019-09-28 17:21:17'),
(5, 6, 'Sapiente architecto.', 'corrupti', 'Harum voluptatem sit animi facilis a et error. Corporis magnam error rem neque esse consectetur asperiores vel. Et aut omnis ipsam quae.', 'Hic quos vitae quia dolorem similique ea numquam. Et voluptatem iusto consequatur molestias id. Nesciunt nesciunt optio hic quaerat qui. Et quasi et qui ex excepturi suscipit dolore quaerat. Est eaque et illo sed vero nobis dolorum. Aut nisi consequatur id architecto dolores impedit. Cum aut cupiditate dolores enim quis aut minus dolorum. Exercitationem enim iste consectetur eaque ea similique ex ducimus. Nemo ut assumenda accusamus enim.', 0, '2019-09-28 17:21:17', '2019-09-28 17:21:17'),
(6, 6, 'Laudantium assumenda.', 'sit', 'Est et omnis ullam facere voluptates quas laboriosam earum. Nulla reiciendis et mollitia sit. Ipsum minima assumenda a quo perferendis officiis et fugit.', 'Nihil neque harum eos iure dolores. Aut voluptate dolorum consequatur occaecati quibusdam voluptatem quaerat. Officiis dolores autem ea quidem sint excepturi dolores. Qui aut dolorem laudantium officiis voluptatem voluptate distinctio. Libero sed autem recusandae animi consectetur incidunt. Dolores soluta libero magni sequi ab. Esse delectus quia dolorum perspiciatis inventore nihil. Reiciendis adipisci repellendus et labore et. Est quo voluptatem quis. Nobis aut doloremque recusandae laborum vitae doloremque et.', 0, '2019-09-28 17:21:17', '2019-09-28 17:21:17'),
(7, 6, 'Eos magnam.', 'modi', 'Velit nihil voluptas qui deleniti autem est ut aut. Quasi optio consequuntur officia aspernatur ad incidunt. Praesentium assumenda quibusdam porro sapiente eos molestiae amet.', 'Consectetur at sunt sit maiores. Veniam illum voluptatem eius qui voluptas ea praesentium cum. Necessitatibus aperiam et qui ea sit rerum. Aut aut deleniti voluptatem. Libero praesentium veritatis optio quae. Tempore quis aliquam ipsum qui est doloribus velit. Vero maiores asperiores nisi velit dolore eum mollitia. Cum voluptate cumque vel consequuntur aliquam. Ipsum consequatur adipisci eligendi praesentium consequatur sequi quia.', 1, '2019-09-28 17:21:17', '2019-09-28 17:21:17'),
(8, 6, 'Sint optio ab.', 'deserunt', 'Dolor quis et quia dolorem ut maxime. Esse ut voluptatem id et eum. Quasi id est placeat accusamus quas nobis.', 'Tempore dolores dolore quidem sed accusantium aut sed. Et quibusdam magnam sint nostrum perferendis necessitatibus reiciendis. Voluptatem quia exercitationem et deserunt id. Inventore rerum perspiciatis sit. Porro eum et ab ab dolore sint. Animi perferendis eveniet sunt vero omnis corrupti perspiciatis. Odit ut voluptatem quos quis sapiente velit. Consequuntur repudiandae deserunt a eum quidem velit.', 0, '2019-09-28 17:21:17', '2019-09-28 17:21:17'),
(9, 6, 'Accusamus omnis officiis.', 'omnis', 'Ipsam distinctio veniam consectetur quas dignissimos. Autem reprehenderit eos itaque quidem molestias. Ipsum reprehenderit et dolorum distinctio occaecati.', 'Fugiat tempora dolorem aliquam molestias voluptatem. Dolor velit illo iste ad ab autem. Ab doloribus dolorem alias incidunt eos. Consequatur omnis autem aut excepturi. Tenetur repellat sed necessitatibus qui occaecati. Debitis et enim nostrum doloribus provident optio blanditiis. Nisi ad omnis quasi itaque aut et. Et voluptatem qui impedit ipsum debitis omnis excepturi. Et assumenda iste perferendis et incidunt aut totam. Provident quo odio quasi. Accusantium suscipit sint distinctio vitae eos quo unde.', 0, '2019-09-28 17:21:17', '2019-09-28 17:21:17'),
(10, 6, 'Aliquam sed.', 'tenetur', 'Necessitatibus ducimus et quo dignissimos. Excepturi dolorem voluptate sed exercitationem ea. Asperiores magni minus consequuntur similique est. Expedita velit occaecati amet commodi nesciunt magnam.', 'Sed sed a voluptatem ratione. Soluta et quo in reprehenderit porro. Explicabo possimus ut omnis explicabo officiis ut qui. Nesciunt rerum est mollitia labore fugiat aspernatur aut. Repellendus vero corporis perspiciatis magnam ullam. Unde tempora enim et maiores ut tenetur. Odit id earum ut asperiores ullam. Sed praesentium at impedit vitae dolorem. Quis nesciunt provident repudiandae repellendus illum aut. Et atque exercitationem sit sed. Quae aut quo repellat. Itaque natus et voluptatem corrupti.', 0, '2019-09-28 17:21:17', '2019-09-28 17:21:17');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Chaz Runolfsson', 'wjacobson@example.net', '2019-09-28 17:21:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v6ULg3SSfO', '2019-09-28 17:21:17', '2019-09-28 17:21:17'),
(2, 'Caroline Reilly', 'vthiel@example.com', '2019-09-28 17:21:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OPUOvlLeml', '2019-09-28 17:21:17', '2019-09-28 17:21:17'),
(3, 'Jeramy Upton', 'murray.destany@example.net', '2019-09-28 17:21:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '348DGkhjNu', '2019-09-28 17:21:17', '2019-09-28 17:21:17'),
(4, 'Susana Bashirian', 'opouros@example.com', '2019-09-28 17:21:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DfOTUkVfGi', '2019-09-28 17:21:17', '2019-09-28 17:21:17'),
(5, 'Myrtie Braun', 'ritchie.bud@example.com', '2019-09-28 17:21:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sgIXwEAMd3', '2019-09-28 17:21:17', '2019-09-28 17:21:17'),
(6, 'Kimberly Schumm', 'reva08@example.org', '2019-09-28 17:21:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0yEtxev0zB', '2019-09-28 17:21:17', '2019-09-28 17:21:17'),
(7, 'Aliza Batz', 'omaggio@example.net', '2019-09-28 17:21:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QRYmJoRlDu', '2019-09-28 17:21:17', '2019-09-28 17:21:17'),
(8, 'Vivianne Zboncak', 'lafayette87@example.org', '2019-09-28 17:21:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H93O1D5K8y', '2019-09-28 17:21:17', '2019-09-28 17:21:17'),
(9, 'Dr. Ramona Erdman Sr.', 'gdietrich@example.com', '2019-09-28 17:21:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'X5ycD4fxeX', '2019-09-28 17:21:17', '2019-09-28 17:21:17'),
(10, 'Landen Block II', 'edare@example.net', '2019-09-28 17:21:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tIQRQBjoGp', '2019-09-28 17:21:17', '2019-09-28 17:21:17');

-- --------------------------------------------------------

--
-- Структура таблицы `valueAttributes`
--

CREATE TABLE `valueAttributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `type1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type2` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `attribute_category`
--
ALTER TABLE `attribute_category`
  ADD KEY `attribute_category_category_id_foreign` (`category_id`),
  ADD KEY `attribute_category_attribute_id_foreign` (`attribute_id`);

--
-- Индексы таблицы `avatars`
--
ALTER TABLE `avatars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `avatars_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Индексы таблицы `category_post`
--
ALTER TABLE `category_post`
  ADD KEY `category_post_post_id_foreign` (`post_id`),
  ADD KEY `category_post_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `valueAttributes`
--
ALTER TABLE `valueAttributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `valueattributes_attribute_id_foreign` (`attribute_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `avatars`
--
ALTER TABLE `avatars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `valueAttributes`
--
ALTER TABLE `valueAttributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `attribute_category`
--
ALTER TABLE `attribute_category`
  ADD CONSTRAINT `attribute_category_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `avatars`
--
ALTER TABLE `avatars`
  ADD CONSTRAINT `avatars_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `valueAttributes`
--
ALTER TABLE `valueAttributes`
  ADD CONSTRAINT `valueattributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

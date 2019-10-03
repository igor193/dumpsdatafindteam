-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Окт 03 2019 г., 00:20
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

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
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `attributes`
--

INSERT INTO `attributes` (`id`, `slug`, `name`, `created_at`, `updated_at`) VALUES
(1, 'investments', 'Вложения', NULL, NULL),
(2, 'currentLevel', 'Стадия проекта', NULL, NULL),
(3, 'experience', 'Есть опыт в данной сфере?', NULL, NULL),
(4, 'typeInvest', 'Инновация или нет?', NULL, NULL),
(5, 'typeWork', 'Сетевой или оффлайн?', NULL, NULL),
(6, 'paybackPeriod', 'Примерный срок окупаемости инвестора', NULL, NULL),
(7, 'periodProject', 'Продолжительность проекта', NULL, NULL),
(8, 'fieldActivityIt', 'Выберите сферу ИТ', NULL, NULL),
(9, 'partnerSkill', 'Уровень мастерства партнера', NULL, NULL),
(10, 'partnerInvestment', 'Нужны ли вложения от партнера?', NULL, NULL),
(11, 'timeWork', 'Сколько времени нужно уделять в день?', NULL, NULL),
(12, 'numberMembers', 'Сколько людей нужно в команду?', NULL, NULL),
(13, 'nameGame', 'Название игры', NULL, NULL),
(14, 'shareInvestment', 'Доля партнерства', NULL, NULL),
(15, 'teamGoal', 'Для чего команда', NULL, NULL),
(16, 'totalPlayGame', 'Сколько часов наиграно', NULL, NULL),
(17, 'styleMusic', 'Жанр музыки', NULL, NULL),
(18, 'roleMusician', 'Задача партнера', NULL, NULL),
(19, 'summeInvest', 'Примерная сумма инвестиций', NULL, NULL),
(20, 'typeSport', 'Вид спорта', NULL, NULL);

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
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
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
(1, 4),
(2, 1),
(3, 6),
(4, 1),
(5, 3),
(6, 5),
(7, 6),
(8, 4),
(9, 6),
(10, 1),
(11, 5),
(12, 1),
(13, 1),
(14, 1),
(15, 4),
(16, 4),
(17, 1),
(18, 6),
(19, 3),
(20, 2),
(21, 5),
(22, 1),
(23, 6),
(24, 3),
(25, 1),
(26, 1),
(27, 6),
(28, 4),
(29, 3),
(30, 4),
(31, 4),
(32, 6),
(33, 6),
(34, 5),
(35, 5),
(36, 2),
(37, 5),
(38, 6),
(39, 4),
(40, 2),
(41, 3),
(42, 4),
(43, 3),
(44, 5),
(45, 2),
(46, 1),
(47, 1),
(48, 6),
(49, 1),
(50, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `messege` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `parent_id`, `messege`, `publication`, `created_at`, `updated_at`) VALUES
(1, 5, 40, 10, 'Architecto praesentium dolorem rerum. Animi doloremque asperiores aut sit. Eos minus voluptatem repellendus aut est.', 0, NULL, NULL),
(2, 1, 6, 7, 'Ratione unde rem ex non modi. Non tempore quidem sed placeat rerum praesentium. Explicabo et autem aut sint sed eos eaque.', 1, NULL, NULL),
(3, 4, 43, 9, 'Voluptas impedit illum quos sit porro in voluptatem labore. Quam delectus vel saepe nobis magni aut. Maiores voluptas voluptas et veritatis quidem incidunt voluptatem.', 1, NULL, NULL),
(4, 1, 44, 8, 'Sed sed assumenda ut illum ut cum. Hic consequatur ipsa qui ab placeat rem. Ducimus laudantium assumenda laborum atque.', 0, NULL, NULL),
(5, 3, 38, 6, 'Debitis quis quis similique culpa. Error ex aliquam in dignissimos eum. Qui et est suscipit praesentium dolorem voluptatibus ab. Qui laboriosam hic rerum quis eum possimus debitis.', 1, NULL, NULL),
(6, 4, 6, 3, 'Et odit molestias maxime enim consequuntur illo aut. Voluptatibus distinctio quo sint minima. Id voluptatem blanditiis aut ea at. Dolor ab enim sint aliquam dolorem illo.', 1, NULL, NULL),
(7, 1, 20, 4, 'Laudantium id ullam repudiandae sunt. Accusamus iste illum voluptas quo ullam doloremque. Nihil aut rem unde iure corrupti odio. Consectetur omnis dolores dolor praesentium quam.', 0, NULL, NULL),
(8, 5, 4, 3, 'Quia aut ullam aut aut. Blanditiis ducimus quam est rem magnam adipisci veniam. Optio id dignissimos quae accusamus. Aspernatur iusto quo beatae aut consequatur id.', 0, NULL, NULL),
(9, 5, 29, 4, 'Eveniet consequatur illo laudantium ut. Aliquid sapiente error voluptas ab sit. Quidem quo doloribus est sint expedita sunt. Nesciunt enim repellat iusto iusto voluptate.', 0, NULL, NULL),
(10, 3, 1, 3, 'Qui facilis asperiores repudiandae quisquam. Fugit nisi mollitia optio. Ex aut cumque in non suscipit quis voluptas.', 0, NULL, NULL),
(11, 3, 34, 5, 'Ut amet est aut laudantium dolore voluptatem cupiditate aut. Sit ipsam quam quo distinctio. Voluptas libero ullam ut ullam maxime magnam.', 0, NULL, NULL),
(12, 2, 32, 5, 'Ullam sit magni eum veniam velit et. Eveniet laboriosam nostrum voluptatem qui earum sit quia. Totam harum necessitatibus et provident voluptas unde. Ad repellendus voluptas delectus id ullam.', 0, NULL, NULL),
(13, 3, 19, 3, 'Voluptatibus quisquam illum labore dignissimos fugit exercitationem. Et facere omnis voluptatum ipsam. Odio eligendi neque repellat qui iusto.', 1, NULL, NULL),
(14, 3, 41, 7, 'At velit quas qui enim error tempore et dicta. Fugiat beatae iusto eveniet et expedita. Dicta voluptas vel ex eos exercitationem quos.', 0, NULL, NULL),
(15, 4, 5, 9, 'Laboriosam et velit ut eveniet id aspernatur. Quis sint temporibus ea saepe. Assumenda molestiae est sit.', 0, NULL, NULL),
(16, 2, 13, 5, 'Corporis ullam qui ut debitis doloribus cum qui officiis. A labore non vel nihil reprehenderit. Non numquam maiores eos id est at quia et.', 1, NULL, NULL),
(17, 3, 13, 6, 'Quaerat neque excepturi molestiae officia magni qui sit incidunt. Eum voluptas tenetur sint consequatur. Quod in voluptas sit doloribus. Tempore et molestias optio recusandae facere.', 1, NULL, NULL),
(18, 1, 19, 7, 'Quo voluptates et maxime aperiam dolores libero amet culpa. Aut dolores nam neque qui assumenda molestias. Tempora ut nulla eum sint consequatur aut impedit natus.', 0, NULL, NULL),
(19, 4, 11, 2, 'Voluptatem corrupti et in sint. Maiores sit et beatae autem nesciunt blanditiis quod. Sint adipisci a sunt ullam ipsum temporibus iste architecto.', 0, NULL, NULL),
(20, 3, 20, 4, 'Aliquam quod voluptatum pariatur. Commodi ut ea consequatur neque et est. A et doloremque dolores ut ad officiis repellendus. Amet illo corporis voluptatem rerum accusamus eius nesciunt.', 1, NULL, NULL),
(21, 3, 23, 7, 'Accusamus aut aperiam id in similique quos culpa. Accusantium sit rem distinctio unde est. Ut quis quidem veritatis tempore non. Libero eum cum facilis et aut.', 1, NULL, NULL),
(22, 5, 10, 2, 'Illum numquam rerum distinctio cumque autem. Temporibus quibusdam repellendus nam qui. Ut cumque voluptas quis laborum est.', 1, NULL, NULL),
(23, 3, 39, 7, 'Aut minus qui ut. Minus architecto eum culpa. Ut quae quo rerum rem aut suscipit. Eum eius id enim ex ratione quidem quo. Omnis ut eius tempora alias.', 0, NULL, NULL),
(24, 1, 21, 5, 'Sed cumque ut et soluta provident amet beatae. Libero culpa soluta minima rerum dolor qui. Velit rerum voluptatem optio neque quas excepturi eos occaecati.', 0, NULL, NULL),
(25, 4, 6, 6, 'Veritatis voluptatem deleniti totam laborum est. Quia voluptatem enim repellat. Non eum quis amet aperiam. Vel dignissimos voluptatum qui ut harum nesciunt tenetur.', 0, NULL, NULL),
(26, 2, 46, 4, 'Non aut rerum quaerat. Labore consequatur magni molestias. Velit error ut eum libero. Saepe doloribus ut culpa rerum animi. Rerum voluptatem reprehenderit rerum ea dignissimos earum aut vel.', 0, NULL, NULL),
(27, 2, 8, 5, 'Voluptas quos rerum placeat non accusantium quia blanditiis. Vero ratione quod velit pariatur error illo. Consectetur fugit voluptas aut.', 0, NULL, NULL),
(28, 1, 34, 10, 'Aut ut totam eum incidunt beatae explicabo velit. Autem quo dolores quo ut voluptatem aut.', 0, NULL, NULL),
(29, 1, 14, 10, 'Iusto ad error voluptate consequuntur et et dolores. Voluptas amet accusantium quia dignissimos quo qui nihil. Officia iste deserunt facere. Qui nam alias consequatur ut ut.', 1, NULL, NULL),
(30, 2, 28, 9, 'Voluptatum voluptas debitis minus debitis perferendis officiis. Assumenda ab tempora illo hic vel.', 0, NULL, NULL),
(31, 3, 45, 10, 'Eveniet repellat quia quas quos quidem. Impedit autem ad et non. Earum aut saepe qui assumenda repudiandae accusantium eaque.', 1, NULL, NULL),
(32, 3, 3, 6, 'Nostrum sunt ullam ut nihil quis aut culpa non. Quis ad repellat facere. Id eveniet recusandae debitis cum ut. Commodi ducimus alias eos ipsam consequatur quia omnis.', 1, NULL, NULL),
(33, 1, 15, 4, 'Aliquam aut fuga qui et qui blanditiis vero. Impedit vitae suscipit voluptas consequatur eaque nobis consequatur officia. Consequatur natus ea est quaerat repellendus enim.', 1, NULL, NULL),
(34, 3, 17, 8, 'Recusandae ut suscipit architecto voluptates maiores sint voluptas. Quis in perspiciatis quaerat sit blanditiis. Eum fuga error tenetur libero quia sequi tempora. Doloremque ut quo cum sit tempora.', 1, NULL, NULL),
(35, 3, 21, 4, 'Dicta dignissimos ea rem deleniti corporis. Consequatur tempora explicabo modi quae.', 0, NULL, NULL),
(36, 4, 7, 8, 'Odio ea assumenda velit non. Aut iusto ipsa iste ducimus corrupti quis. Dolore sequi quos pariatur est. Placeat qui non qui molestiae impedit sequi.', 1, NULL, NULL),
(37, 2, 30, 4, 'Aut dignissimos at non ad quaerat eius iure. Asperiores voluptates repellat sequi natus repudiandae eius non.', 0, NULL, NULL),
(38, 2, 37, 1, 'Quasi aut tenetur iste quas ratione unde odio. Ex culpa totam distinctio. Modi aut cupiditate incidunt quaerat ad dolorum.', 1, NULL, NULL),
(39, 1, 28, 5, 'Ducimus facere facere repellendus accusantium. Error omnis et voluptatem doloremque voluptatem. Hic sed aliquam culpa iste quae aut accusantium cupiditate.', 0, NULL, NULL),
(40, 2, 6, 5, 'Rerum et id molestias. Quod nostrum hic reiciendis quod harum error beatae consequuntur. Deserunt velit perspiciatis quas minima impedit enim quia in.', 1, NULL, NULL);

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
(190, '2014_10_12_000000_create_users_table', 1),
(191, '2014_10_12_100000_create_password_resets_table', 1),
(192, '2019_09_17_193853_create_posts_table', 1),
(193, '2019_09_17_194152_create_comments_table', 1),
(194, '2019_09_17_194459_create_categories_table', 1),
(195, '2019_09_17_194901_create_attributes_table', 1),
(196, '2019_09_17_195124_create_value_attributes_table', 1),
(197, '2019_09_17_195717_create_category_post_table', 1),
(198, '2019_09_17_200021_create_attribute_category_table', 1),
(199, '2019_09_20_153732_create_avatars_table', 1),
(200, '2019_09_29_210058_create_roles_table', 1),
(201, '2019_09_29_211551_create_role_user_table', 1),
(202, '2019_09_30_205821_create_pictures_table', 1),
(203, '2019_10_01_183611_create_picture_post_table', 1);

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
-- Структура таблицы `pictures`
--

CREATE TABLE `pictures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `picture_post`
--

CREATE TABLE `picture_post` (
  `picture_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
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
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic`, `slug`, `entry`, `body`, `city`, `publication`, `created_at`, `updated_at`) VALUES
(1, 1, 'Adipisci consequatur.', 'omnis-quos-quos-iure-qui-suscipit-aut-animi', 'Quidem assumenda ad et quas fuga. Dolorem id facere accusantium. Aut maiores molestias tempore itaque quo aut voluptatem ut. Iste et minus nesciunt.', 'Excepturi nesciunt dolor nam. Sed est dolor perspiciatis doloremque sint placeat. Qui consequuntur voluptas numquam delectus. Et est aut laudantium in excepturi. Et voluptas suscipit at qui fugit iste eligendi. Unde quis aut consequatur itaque. Quo omnis sit dolor deleniti voluptatum. Voluptatem voluptas rerum error aspernatur rerum sed atque. Repellendus et distinctio in pariatur neque iste quis. Similique et id ipsum velit voluptatem qui et.', 'East Toney', 1, '2019-10-02 18:05:36', '2019-10-02 18:05:36'),
(2, 1, 'Sapiente labore molestiae.', 'eveniet-et-impedit-impedit-sapiente-soluta-quibusdam-officia-quia', 'Repellendus numquam officia molestiae et ipsum. Id rerum eveniet exercitationem debitis quasi. Dignissimos rerum atque impedit in. Illo debitis deserunt dolorem qui quasi fugit.', 'Iusto facere ea perspiciatis delectus. Voluptatem ad in consequatur et. Maiores minima nulla est et id. Fugiat quibusdam quas ex dolor. Illo sed consequatur soluta dolores maxime. Ducimus sunt vero eaque error nemo et. Rem in perferendis autem voluptatem rerum accusamus. Omnis iure recusandae velit omnis ex natus dignissimos. Delectus aspernatur qui magni officiis quia neque ea. Neque laudantium provident possimus consectetur veritatis officia. Non explicabo harum occaecati incidunt omnis quod nemo rerum.', 'Judgeborough', 0, '2019-10-02 18:05:36', '2019-10-02 18:05:36'),
(3, 1, 'Deserunt qui voluptatem.', 'ut-consequatur-quos-esse-minima-ipsa-ad-velit', 'Temporibus quisquam doloribus quam qui porro. Quos voluptatem blanditiis aut quidem dicta sint eaque. Vitae tempora est eum dolorem aspernatur.', 'Pariatur hic iure aspernatur ipsa eos sit. Ut nihil amet fugiat delectus. Aliquam minima dolores nihil fugiat non ipsam voluptatem. Eveniet nam nihil et suscipit amet voluptates assumenda cumque. Natus rem perspiciatis et quibusdam eum et voluptas. Ullam ut possimus dolorem placeat unde occaecati. Ipsum qui reprehenderit quis est qui. Consequuntur aliquam qui illo voluptas saepe facilis architecto. Error voluptatibus vel et reprehenderit. Modi illo et doloremque optio repudiandae. Modi ipsam consectetur aperiam. Id sint commodi quia impedit. Natus architecto eius accusantium magni.', 'Hudsonton', 0, '2019-10-02 18:05:36', '2019-10-02 18:05:36'),
(4, 1, 'Laudantium alias.', 'qui-necessitatibus-voluptas-similique-atque-fugiat-totam', 'Omnis laborum soluta dignissimos repudiandae sit eaque officia. Est ut nemo nam quae quia. Esse incidunt corporis dolorum rerum. Velit modi id architecto voluptas doloremque.', 'Doloremque voluptatem illum rerum tempore consequuntur illum cum in. Fuga eum est perspiciatis harum voluptatem. Incidunt assumenda quis voluptatum illo dolore. Quia voluptates explicabo et ut voluptatem eius tempore. Nam commodi nemo fuga dicta. Porro sequi sunt expedita omnis fugit. Occaecati et aperiam non enim molestiae. Laboriosam in atque facilis. Provident consequatur esse hic ratione aliquam ea et enim. Perferendis consequuntur ut quis. Voluptatem possimus et aut et et quo molestiae consectetur. Similique neque qui itaque officia qui id sint.', 'West Nestorside', 1, '2019-10-02 18:05:36', '2019-10-02 18:05:36'),
(5, 1, 'Nulla ipsum.', 'voluptatum-sit-quia-fugit-soluta', 'Ipsa blanditiis voluptatibus non nihil sint aperiam. Ad blanditiis sit optio dolorem. Eius nulla officia tempora in cum iusto tempore soluta.', 'Molestias veritatis similique error. Aliquid quia id sint magnam. Eum quos ea voluptatem. Reiciendis error totam natus quia sed. Nulla aliquam optio mollitia est eos. Quod doloremque rerum tenetur autem. Autem et distinctio temporibus molestiae impedit voluptatem. Quia aliquam non ut in dignissimos suscipit voluptatum. Eos minima dicta nihil distinctio ad quo itaque enim. Sapiente provident dolores id laborum quia vero aliquid. Ipsum ipsum ipsa perferendis officia unde ad. Non ad repellat dolores a iste qui quis eaque.', 'South Wilhelminemouth', 1, '2019-10-02 18:05:36', '2019-10-02 18:05:36'),
(6, 1, 'Nam deleniti.', 'maiores-magni-minima-deleniti-distinctio-ducimus-maiores', 'Et praesentium autem voluptatem tempora nostrum fugit. Voluptatem dolore quam earum esse. Vel maiores dolores sint beatae velit et ullam corrupti.', 'Qui dolorum mollitia minima earum debitis. Sed cupiditate non omnis nemo. Non corporis voluptatem occaecati. Et quo commodi sapiente sunt consequuntur animi et. Et dolorem ad ullam consequatur et rerum et. Provident labore officiis a asperiores sint qui. Officia itaque quia quo nihil optio. Iure non voluptas quibusdam et sed corporis. Eum eveniet provident sunt. Et consequuntur neque ut nemo aliquam ad. Quod ea est facere totam praesentium id aliquid labore. Aut consequuntur occaecati ab.', 'North Emmitt', 0, '2019-10-02 18:05:36', '2019-10-02 18:05:36'),
(7, 1, 'Nemo id est.', 'fugit-sint-eum-consequuntur-dolorum-sint-nemo', 'Modi sint officia libero aspernatur. Reprehenderit totam quia eum facere iste harum nobis. Magnam laboriosam ut eos omnis voluptate magni. Explicabo ex rerum et eos voluptatem mollitia sed non.', 'Esse quos assumenda dolor explicabo consequuntur sed. Magni quia voluptatum provident perferendis quia recusandae. Alias voluptatem autem temporibus. Eius eos maiores sit blanditiis odio asperiores. Vel dolores facilis veniam nesciunt. Perferendis ullam et et. Maxime et sunt voluptatem voluptate maxime impedit facilis. Aliquam ea qui inventore. Consequatur aspernatur praesentium sint vero occaecati. Culpa veniam molestias iste vel consequatur modi. Inventore ut eius voluptatem modi et explicabo tempora ut. Reprehenderit quia beatae error nisi iure quod sit.', 'Tremayneburgh', 0, '2019-10-02 18:05:36', '2019-10-02 18:05:36'),
(8, 1, 'Et aut illum.', 'aut-quasi-rerum-ut-et-iusto-eaque-aspernatur-reiciendis', 'Veritatis et ea veniam corrupti ipsam. Consequatur ab quasi earum perferendis cum molestiae qui.', 'Ut sint rerum aut quam aut. Est doloremque ab soluta sequi. Dignissimos nobis corrupti voluptatum similique. Ut ratione illum libero est minima. Corporis sit possimus error quidem voluptatem eveniet aut. Possimus iste veritatis debitis dolores. Id corporis similique in omnis dolores voluptatem fuga eaque. In exercitationem qui vel nihil aut cupiditate. Omnis fuga consequatur repellat ratione culpa ipsum. Odit occaecati dolorem eius quaerat. Voluptate inventore minus commodi doloribus.', 'West Tressahaven', 0, '2019-10-02 18:05:36', '2019-10-02 18:05:36'),
(9, 1, 'Possimus ut distinctio.', 'architecto-voluptatem-doloremque-illo-itaque-et-porro', 'Excepturi eos voluptatum minima voluptas. Aliquam nihil dolorem minus et molestias. Est dolore facilis qui voluptas. Quia ut alias est earum et repellat ratione.', 'Ipsa qui cupiditate quia similique iste minus. Sed et itaque nihil enim. Ratione eaque fuga nihil. Voluptatibus et aut at ab quia quae accusantium. Nam ad facere qui possimus est ex delectus architecto. Fugit placeat tempora id. Omnis autem pariatur ducimus occaecati dolores. Ut velit minus aspernatur consequatur ut reprehenderit debitis. Doloribus voluptatem est omnis quia. Expedita in quia nobis. Maxime aspernatur aut ad. Ut iste facere qui repellat amet officia.', 'Westonhaven', 0, '2019-10-02 18:05:36', '2019-10-02 18:05:36'),
(10, 1, 'Provident quia enim.', 'fugit-necessitatibus-nostrum-minus-sit-optio-non', 'Et est cupiditate debitis sed consectetur aperiam sit. Quia sit dolor in soluta enim. Tempore natus qui error porro minus. Rerum accusamus voluptatem optio quia.', 'Ut eaque quisquam accusamus quasi ut explicabo accusantium porro. Velit et occaecati molestiae unde quia ea qui. Voluptatem officiis aliquam nisi cupiditate tempora. Qui ut eius adipisci ut debitis perferendis dolor. Fuga unde et exercitationem sunt nesciunt. Aspernatur vel et eum exercitationem voluptatem perferendis. Aut molestiae dolorem quia aliquam nam. Est consectetur sed molestiae dicta exercitationem quia. Unde et unde fuga sit laborum. Qui dolorem qui dignissimos qui recusandae id temporibus. Molestiae distinctio beatae quo facere rem.', 'Weldonland', 0, '2019-10-02 18:05:36', '2019-10-02 18:05:36'),
(11, 2, 'Ut omnis.', 'laborum-officiis-ea-voluptas-quis-saepe-et', 'Commodi non corporis delectus recusandae sit. Tempora unde dicta laboriosam velit saepe ut quia. Deleniti numquam velit qui nesciunt alias. Aliquam quaerat sed modi debitis.', 'Illum assumenda iusto repudiandae soluta impedit. Et quaerat inventore autem voluptatum rem accusantium sunt. Occaecati officiis libero rerum. Voluptatem nostrum ipsa minus et. Quisquam error enim voluptatem eum quaerat aut. Alias est sed alias molestias aperiam fugiat. Necessitatibus sunt voluptate dolor magni illo nulla. Sit dolorem qui maxime eaque et voluptatum aperiam. Adipisci qui libero numquam. Dolore ullam corrupti doloremque aspernatur voluptate nostrum. Velit eos ut molestiae natus fugiat. Ab quae mollitia illo quia est repudiandae. Quos illo eius ut sed neque.', 'Camilleberg', 0, '2019-10-02 18:05:36', '2019-10-02 18:05:36'),
(12, 2, 'Laboriosam blanditiis deleniti.', 'enim-id-porro-est', 'Ea inventore in tempora modi laboriosam iste odit eos. Ut quis rerum laboriosam voluptatum laboriosam eligendi ea. Ut velit dolore commodi cupiditate sed et.', 'Doloribus deserunt sunt laudantium doloribus rerum exercitationem. Quo officia et aspernatur et. Magni minus esse eos. Et aperiam soluta voluptatum. Natus suscipit omnis voluptate. Reiciendis cupiditate libero aliquam ut ipsum cupiditate. Qui ea neque qui unde est. Consequatur ea velit beatae enim sit ut. Quaerat officia quia quos hic ut. Nobis et aperiam amet quasi. Iste porro ratione quia in quis magnam. Adipisci nesciunt voluptatem cumque velit ipsum quod qui. Quia dolor praesentium sed molestias distinctio et. In odio ad ullam non.', 'Elinorbury', 0, '2019-10-02 18:05:36', '2019-10-02 18:05:36'),
(13, 2, 'Laborum rerum.', 'ab-animi-quasi-et-repellendus-reprehenderit-voluptatibus', 'Enim impedit est nemo. Minus aut dolorem vel voluptatibus earum. Laudantium quos quia itaque laborum ex. Molestias atque quas quis labore et fugit.', 'Sunt et sed iste iusto ut qui ipsam. Hic dignissimos omnis consequatur. Voluptatibus aperiam dolorem quia non non. Ut esse rerum est debitis dolorum qui. Sunt perspiciatis qui commodi vero possimus. Ab architecto dicta est. Commodi facere magni id similique aliquid. Aliquam velit magni velit culpa ipsam quis. Quo laboriosam soluta aspernatur est et. Modi id dolor numquam id quisquam. Minima voluptas molestias sapiente modi. Et nam magnam molestiae autem ex tempore.', 'Lake Kaia', 0, '2019-10-02 18:05:36', '2019-10-02 18:05:36'),
(14, 2, 'Ut aut.', 'ut-et-optio-sit-non-voluptatum-qui', 'Quia sint quo ab sapiente eos asperiores nisi. Nesciunt blanditiis et iusto. Nisi eaque soluta consequatur non.', 'Nihil occaecati doloribus quia voluptates hic maiores. Aut sed animi iusto sed inventore illo qui nostrum. Dolores alias porro et quia. Labore atque error ut accusamus soluta ab. Et in voluptas fugit consequuntur non quas. Perspiciatis sit ab eos eveniet quaerat minima adipisci. Reprehenderit sapiente quia voluptatem delectus quos sequi ut non. Omnis aut eum molestiae delectus sit sed dignissimos. Quas nulla tempore nulla est dolores aut. Sit quia quia corporis sequi tempora modi et. Id minus omnis ratione earum error. Iure sit accusantium autem consequatur voluptas velit consequatur.', 'North Ethelynfort', 0, '2019-10-02 18:05:37', '2019-10-02 18:05:37'),
(15, 2, 'Provident labore.', 'excepturi-eaque-est-cupiditate-et-reiciendis-debitis', 'Quis quas iure nobis commodi. Temporibus repellendus tempore qui et iusto. Modi ut repudiandae ad omnis reiciendis laboriosam. Velit quia sunt placeat veritatis ut tempora omnis.', 'Consequatur nam voluptates tenetur est modi. Aut consequatur porro tempore sed. Ut corporis sit voluptatem officiis sunt. Sunt voluptas odit non cum at. Consequatur eos exercitationem voluptatem incidunt sed et aliquid. Similique voluptas sint quisquam quis dicta aspernatur. Voluptas distinctio consequatur unde aut atque. Sed ut eos provident corporis at eos eaque. Quidem recusandae amet est consectetur delectus repellendus sunt ut.', 'Nataliamouth', 1, '2019-10-02 18:05:37', '2019-10-02 18:05:37'),
(16, 2, 'Quia consequatur natus.', 'quam-et-est-tempore-magni', 'Cumque iure qui dicta ullam voluptatem voluptatem quis. Sunt maiores qui ab et. Facere aut nesciunt a ad. Et corporis iure cum quia iste atque.', 'Est non impedit eligendi et ipsum pariatur amet. Est doloremque ipsa minus et qui culpa. Magnam voluptas debitis quas non sint non. Voluptatibus eveniet nisi repudiandae voluptatum. Magni nihil alias nesciunt ad est sint. Fugit quia iure quis autem sunt. Possimus enim debitis dolores a ut accusantium aliquid. Occaecati ut dicta nam error qui repudiandae quisquam. Fugiat eum distinctio ducimus nobis architecto aliquid. Id distinctio voluptas asperiores optio velit voluptatem et recusandae.', 'Lake Carlo', 1, '2019-10-02 18:05:37', '2019-10-02 18:05:37'),
(17, 2, 'Laudantium architecto.', 'corrupti-et-laboriosam-porro-quod', 'Sed et voluptate odio ullam. A cumque est nulla debitis. Soluta nam ut et aliquam. Minus et sit odio eum. Ullam et quam est odio.', 'Est cupiditate dolor est non eveniet sunt. Architecto modi hic quo officia ut commodi consequuntur. Quod omnis ut cum sunt illo qui enim. Exercitationem sed dolorem hic placeat facere quas. Sunt velit aliquid quos voluptatem. Sunt ipsum omnis fugit. Aliquam consectetur molestiae dignissimos voluptas aut nemo. Et illum consequatur mollitia voluptatum maiores. Amet qui voluptatibus porro sed. Qui at ut aut porro. Possimus doloremque non quia necessitatibus quis blanditiis et. Aut dolor quis aut eius aliquid quidem voluptas. Dolorem aut iste exercitationem nobis omnis maiores autem.', 'Lake Faustoport', 1, '2019-10-02 18:05:37', '2019-10-02 18:05:37'),
(18, 2, 'Necessitatibus esse.', 'rerum-quia-provident-eum-atque-non-non', 'Voluptates consequatur accusantium quo qui consequatur dolorem rerum. Recusandae asperiores ea et est laborum. Odio et sed unde necessitatibus eum.', 'Est doloribus aliquam eum incidunt autem voluptatem debitis. Quis et amet voluptatum est sint. Quis maxime non molestias omnis qui. Eum eum quod placeat quia id et. Reiciendis aliquid facere et. Corporis corporis ipsum impedit. Deserunt a hic laboriosam et porro impedit. Ad blanditiis pariatur aut minus necessitatibus. Architecto ut placeat aut natus dolores debitis. Iste tenetur facilis eum vel esse et voluptatibus. Sint quis blanditiis repellat nisi facere dolorum. Provident est eius saepe molestias nobis.', 'New Nellefort', 0, '2019-10-02 18:05:37', '2019-10-02 18:05:37'),
(19, 2, 'Voluptate deleniti.', 'nesciunt-asperiores-dolorum-aliquid-id-in-error', 'Sed consectetur expedita architecto consectetur perferendis. Consequatur id nisi id sed ipsa et. Voluptate veniam eius aut deleniti id ut itaque. Rerum ut error dolore nesciunt in.', 'Atque soluta consequatur possimus aliquid. Quia molestias nihil voluptatem occaecati a. Perspiciatis et quidem fuga minima neque id. Est aut voluptatibus rerum. Enim et architecto velit debitis. Est voluptas velit saepe ut quia. Ipsam aut natus voluptates eum dicta. Voluptatem doloremque occaecati commodi qui sunt voluptates culpa odit. In repellat et vitae voluptatem voluptatem. Numquam vel eveniet odit eligendi praesentium saepe quibusdam minus. Dolor a optio reprehenderit ut. Qui magnam sint sed eveniet voluptatum eos pariatur reiciendis. Maxime placeat assumenda aperiam ut.', 'Freddieton', 1, '2019-10-02 18:05:37', '2019-10-02 18:05:37'),
(20, 2, 'Qui ea.', 'cupiditate-qui-eveniet-magni-sequi-corrupti', 'Veniam ea deleniti aut ut exercitationem quae. Nemo eum inventore ut consequatur nisi in vel eveniet. Non blanditiis ea hic recusandae veniam exercitationem quis modi. Quo hic enim totam laudantium.', 'Quas omnis ut temporibus et dolor. Et iste error voluptates in omnis. Cum ipsam non facilis repudiandae. Aspernatur impedit animi in molestias hic dolores. Excepturi nesciunt a fuga rerum atque. Est repellendus magnam est. Autem ut sequi et saepe dolorem dolore quia similique. Eius enim delectus provident nemo. Dolorem exercitationem repellat blanditiis voluptatem. Odit mollitia nisi et voluptate est saepe. Est quae aut quisquam dolores aperiam. Fugit fugit commodi possimus libero eum iste.', 'Justinatown', 1, '2019-10-02 18:05:37', '2019-10-02 18:05:37'),
(21, 3, 'Facere necessitatibus.', 'id-natus-magni-culpa-veniam-vel-dignissimos', 'Tenetur non eos nulla quia numquam atque provident. Aut iure dolorum corporis officia voluptatibus atque. Quasi ducimus numquam qui fugit.', 'Quia laboriosam quo eveniet ea. Eius animi ea unde voluptatum saepe dolorem. Est reiciendis nam atque amet quo ex exercitationem. Aut aperiam nemo non culpa totam illum qui. Deserunt ut eum est neque quae asperiores. Tempore laboriosam non iusto laborum et iste. Veniam quas adipisci ipsum. Dicta vel aut quo possimus deserunt. Accusamus recusandae nobis ab eligendi corporis molestiae. Aut modi incidunt dolores optio nesciunt reiciendis modi. Sit repudiandae soluta cupiditate in nihil. Aut est reiciendis assumenda sed.', 'Beiermouth', 1, '2019-10-02 18:05:37', '2019-10-02 18:05:37'),
(22, 3, 'Temporibus iure enim.', 'est-quasi-aspernatur-et-minus', 'Ut veritatis veritatis officiis porro minus aliquid iste. Et delectus corrupti officia dolorem quos. Ea vel aut voluptas excepturi vel perferendis. Sed consequatur nobis rerum dignissimos.', 'Atque impedit sed officiis et et aliquid. Deleniti provident rem reprehenderit recusandae est quidem ut. Autem ab quae et quia porro suscipit. Possimus qui soluta culpa non culpa pariatur beatae. Qui commodi placeat vel soluta tempora quia illo. Similique culpa inventore rerum culpa nulla sunt iusto. Culpa ut quibusdam vel sed distinctio qui eos. Deleniti at laborum et officia minus. Illum molestiae quod dolore iure recusandae non nihil officiis. Atque consequatur ex eum voluptatibus deserunt architecto magnam. In consectetur sint voluptate nemo provident iste.', 'Mantestad', 0, '2019-10-02 18:05:37', '2019-10-02 18:05:37'),
(23, 3, 'Quia aspernatur aliquid.', 'natus-rem-rem-saepe-vero-vel-aut-ab', 'Beatae repellat id ipsam quia est quaerat reprehenderit. Maxime soluta ex quaerat pariatur nisi libero. Nobis placeat voluptatibus nisi et nihil sunt.', 'Enim tempora repudiandae facere voluptas et. Qui tempora reprehenderit voluptatem dolore qui deserunt itaque. Animi corrupti quos enim blanditiis aut atque tempora. Ad facilis rerum et. Animi impedit assumenda praesentium fugit. Suscipit debitis distinctio architecto. Tempore sit ut ex nulla. Amet dolores similique voluptas et nemo. Aut dolorem non quo qui ducimus voluptatem asperiores. Autem modi quia non sunt. Cum molestiae error qui non. Quidem quidem dolores eaque quo ratione sapiente ex.', 'East Dawsonside', 1, '2019-10-02 18:05:37', '2019-10-02 18:05:37'),
(24, 3, 'Voluptas iste.', 'suscipit-dignissimos-consequuntur-unde-harum-dolores', 'Voluptatum qui amet consectetur. Expedita voluptate qui iusto et quis quae iusto. Id inventore voluptas sunt aut tempore.', 'Quo commodi ut dolorum occaecati. Tenetur quasi beatae quis temporibus omnis voluptates aut et. Aliquam cumque hic at excepturi occaecati iste facere. Vel natus nihil amet eveniet velit. Et corrupti omnis voluptas rerum. Voluptatem repellendus voluptatem earum ut fuga consequatur modi tempora. Incidunt cumque quo aliquam. Laudantium laboriosam rem ratione aut quisquam sapiente. Voluptatibus eum cum et sit. Aut voluptas voluptas modi maxime qui vel dolorem et. Aperiam ex dolor et necessitatibus aperiam quidem dolore et.', 'Scottieburgh', 1, '2019-10-02 18:05:37', '2019-10-02 18:05:37'),
(25, 3, 'Fugit explicabo.', 'et-assumenda-accusamus-voluptatum-labore', 'Quod eum quam ipsa porro. Et quo tempore consequuntur quam ullam repellat. Illum fuga autem vel et odio provident. Aut beatae in saepe deserunt ipsum ut magni.', 'Aperiam quia ut vel tempora ullam laudantium. Facere est molestiae at reiciendis unde reprehenderit impedit. Dicta qui architecto iste neque aspernatur et. Molestiae atque vel asperiores totam laboriosam excepturi vel. Ullam dolore amet debitis hic recusandae id pariatur illum. Hic velit accusantium nihil dolore perspiciatis architecto. Debitis velit tempore harum quia ut minus. Inventore atque aut ut laudantium. Voluptatem atque consectetur qui facere perspiciatis vel.', 'West Kayleehaven', 0, '2019-10-02 18:05:37', '2019-10-02 18:05:37'),
(26, 3, 'Accusamus sed.', 'tempora-facilis-sed-itaque-aut-rerum-ea-eligendi', 'Aspernatur quisquam illo itaque modi ut. Sed consequuntur cumque voluptatem voluptate possimus aut nesciunt. Molestias tempora perferendis quas non ea.', 'Quae quasi ducimus ducimus asperiores dignissimos. Atque consequatur est et. Est debitis natus commodi cum. Eos tenetur dolores qui quas praesentium. Et facilis quae nemo neque voluptatem facere consequatur error. Ducimus eaque autem rem est enim non. Et aut labore odio est accusantium voluptatem. Fuga eius natus consequatur. Qui quidem tenetur est dolore sunt. Corrupti accusantium molestias voluptatem delectus et et. Fugit voluptatem ipsum soluta molestiae quis.', 'New April', 1, '2019-10-02 18:05:37', '2019-10-02 18:05:37'),
(27, 3, 'Consequatur deserunt.', 'at-voluptates-ab-beatae-ut-ea-eum-sit', 'Ut est ut dolores sint fugiat doloremque. Doloremque magni explicabo voluptas cumque perspiciatis quos sit. Facere laborum aut sint deleniti placeat delectus et maxime.', 'Similique molestias quidem unde delectus quasi quia consequatur. Perspiciatis molestiae saepe voluptas aspernatur omnis nulla consequatur. Eveniet quis sit numquam et amet error. Dolore rerum earum eveniet culpa. Laboriosam possimus aut quae. Distinctio nihil sapiente ad accusantium. Omnis repellat sit qui autem laborum velit labore omnis. Vel provident sed illum natus. Quidem aperiam nihil nisi temporibus omnis. Sequi eos veniam sed reiciendis illo iure. Sit enim placeat impedit corporis.', 'Danielstad', 1, '2019-10-02 18:05:37', '2019-10-02 18:05:37'),
(28, 3, 'Qui aliquid asperiores.', 'nihil-aut-reiciendis-ut-dolores-nesciunt-voluptatem-voluptates', 'Sequi minima hic magnam quidem quidem quas vel. Exercitationem aut quo nostrum maxime. Eius numquam voluptates sint ullam adipisci et. Voluptatem maiores sit quas et eaque nam.', 'Iure qui in et et maxime in commodi. Et fugit accusantium ducimus velit sit quaerat. Possimus in ut corporis molestiae in officia. Possimus recusandae eum ratione numquam dignissimos et nam. Blanditiis in hic esse voluptatem quisquam voluptatum. Aspernatur et dolore quisquam nostrum. Debitis id sapiente veniam. Ipsam et alias voluptatibus itaque. Eos ad fugiat quae accusamus suscipit sit ducimus. Voluptatem vel consequatur veritatis quaerat velit ea esse. Repellat animi tempora consequatur ipsa. Consequatur velit quia maxime rerum eius a tenetur. Dolor sed est recusandae.', 'Port Orrinshire', 1, '2019-10-02 18:05:37', '2019-10-02 18:05:37'),
(29, 3, 'Magnam quia.', 'dolores-laboriosam-in-rem-aut-est-nihil-voluptatibus', 'Omnis quibusdam id sunt temporibus in sed eveniet eos. Distinctio velit aperiam fuga voluptatem voluptatum quas. Ipsa maiores ut sint voluptatem et architecto.', 'Rem quaerat dignissimos sed odit fuga et illo. Ducimus ab aperiam unde consequatur numquam atque. Facilis ad modi eos officia id suscipit sed. Voluptatem et alias optio ab eius id quos asperiores. Cupiditate est praesentium illo enim nihil amet. Ut dolore consequatur necessitatibus molestiae perferendis. Nemo ab aut et non suscipit est. Et fugit quia quae facilis neque consectetur. Ut eum est non est. At nulla quisquam in autem esse harum dolor. Praesentium assumenda consequatur error. Et laboriosam atque aut aut sit quia.', 'North Rodolfoland', 0, '2019-10-02 18:05:38', '2019-10-02 18:05:38'),
(30, 3, 'Amet temporibus.', 'laboriosam-ut-laudantium-facilis-et-a-at-in-consequuntur', 'Quaerat debitis voluptas iste corrupti et quisquam. Rem hic culpa itaque quia. Fugit nam eum nihil voluptas id.', 'Nemo consectetur culpa labore architecto necessitatibus fuga ad. Quasi aut dolorem qui nam qui enim. Eveniet harum ut dignissimos dolores aut. Voluptatem quaerat veniam eos temporibus sunt veniam necessitatibus. Voluptas suscipit tempora fugit et. Natus rerum dicta pariatur aut adipisci eum. Alias saepe maxime voluptas dolores. Numquam quia dolore autem ratione. Atque dolor enim quia est iste ipsum vel. Dolor atque sit culpa rerum maiores. Nesciunt et et nostrum accusamus. At explicabo ullam nobis. Impedit labore dolorem cumque sed iste. Sunt quos sit voluptatem quisquam ut cumque alias.', 'Anibalchester', 1, '2019-10-02 18:05:38', '2019-10-02 18:05:38'),
(31, 4, 'Doloribus non.', 'excepturi-consectetur-non-omnis', 'Deserunt est facilis veniam ut doloremque quo sed. Enim sint rerum qui. Aut natus quo sed nesciunt ut in vero. Cupiditate aut tenetur sit atque porro excepturi esse suscipit.', 'Qui in cumque itaque quia recusandae ut. Vitae voluptates non reprehenderit vel harum. Voluptatibus quo tenetur et consectetur. Qui iusto enim nihil doloribus est fugiat neque. Qui et velit illum repellendus saepe dolor perferendis. Fugiat omnis ut aspernatur mollitia. Architecto molestias ullam optio reprehenderit sed commodi mollitia quas. Repellat et quas odit. Eveniet ipsa et porro et. Nulla mollitia quae dolor accusamus nihil unde tempore. Illum et ea rem et vel temporibus voluptatem. Accusantium non est voluptatem omnis. Commodi eos placeat debitis sint sed impedit.', 'Jayceeberg', 1, '2019-10-02 18:05:38', '2019-10-02 18:05:38'),
(32, 4, 'Distinctio amet.', 'aut-dolor-explicabo-praesentium-magnam-sunt-dolorem', 'Iste consequatur modi quis aut est et. Praesentium pariatur totam quaerat pariatur saepe. Eligendi reiciendis quasi ut pariatur.', 'Vitae aspernatur sit quisquam quia. Aut aspernatur reiciendis laborum cumque corrupti tempore quis. Aspernatur placeat vel et. At praesentium aperiam ut qui. Est officiis eius sit vel. Adipisci inventore sunt aperiam ea omnis quidem. Autem consequatur ducimus enim minima assumenda sunt. In commodi sed corporis. Tenetur dolor at saepe aliquam nemo asperiores eligendi officia. Error sit earum minima ex quibusdam.', 'Langborough', 0, '2019-10-02 18:05:38', '2019-10-02 18:05:38'),
(33, 4, 'Dolor sed.', 'illo-est-praesentium-fuga-vel', 'Accusantium ratione culpa perferendis omnis. Unde quia vero dicta quo soluta architecto vel eos.', 'Sint ut aut magnam blanditiis qui aut maiores mollitia. Ipsum et impedit accusantium eos doloremque et voluptatem. Animi voluptatem ut excepturi. Ut mollitia distinctio repudiandae et molestiae velit id rem. Nostrum quia cupiditate ea nemo. Sit dolor eaque in ut numquam. Cumque tempora eos ut doloremque vitae. Culpa nam consequuntur officiis laborum. Accusantium similique aperiam nobis nihil nisi. Maiores eos autem omnis ut et est animi alias. Ut eos et sed et. Vel quasi reiciendis error ut accusantium ut harum. Pariatur quia qui est rerum nesciunt.', 'Hamillstad', 0, '2019-10-02 18:05:38', '2019-10-02 18:05:38'),
(34, 4, 'Perspiciatis accusamus temporibus.', 'praesentium-quisquam-facere-explicabo-id-dolorem-et', 'Suscipit delectus quo recusandae molestiae adipisci dolor laboriosam. Rem esse repudiandae excepturi porro eaque sit. Et repellat et nisi nihil.', 'Omnis eius in est sunt. In non maiores non quod autem reiciendis. Quasi quo corporis aut pariatur. Quam autem ut quasi alias occaecati. Ipsum dolores id quod expedita inventore omnis mollitia architecto. Iste aut reiciendis iusto sed sed quo quasi. Aut in nostrum est aliquid neque ullam ipsam. Rem laborum exercitationem omnis. Aut reiciendis voluptate sed non asperiores non. Ullam et dolor consequatur architecto assumenda ut. Molestiae rerum consectetur ipsa qui magnam quia. Labore et consectetur consectetur non ut amet mollitia. Deserunt ut veritatis perferendis.', 'Norvalmouth', 1, '2019-10-02 18:05:38', '2019-10-02 18:05:38'),
(35, 4, 'Voluptatem consequuntur.', 'blanditiis-earum-qui-aut-quo-quia-veritatis-facilis', 'Voluptatibus modi nulla qui omnis. Qui dicta exercitationem qui vel modi consectetur esse. Ipsa error aperiam praesentium quia. Explicabo nesciunt voluptas incidunt quia sint expedita saepe.', 'Consequatur dolore consectetur ipsam sint tenetur. Omnis quos omnis officiis id facere ipsum velit. Ipsam maxime et fuga ex praesentium. Hic molestiae soluta quis qui et soluta porro. Iure ducimus consequatur atque sint ex qui reiciendis qui. Voluptatum autem perferendis perspiciatis quisquam. Aperiam unde aut velit quo possimus. Expedita error ducimus aperiam unde illum. Aut eius ea rerum consequuntur fugit aliquid officia. Voluptates provident delectus amet dolorem explicabo.', 'North Ben', 1, '2019-10-02 18:05:38', '2019-10-02 18:05:38'),
(36, 4, 'Qui sit tempore.', 'neque-eum-impedit-modi-ipsum', 'Qui eligendi aspernatur et sint consequuntur facere aut voluptatibus. Sit soluta et illo voluptates explicabo et. Quis aut dolores aperiam et vero.', 'Iste ad atque deleniti porro. Voluptas et culpa tenetur doloribus adipisci placeat et sed. Quam ipsam impedit autem repellendus. Est eveniet quis excepturi mollitia ullam. Iste qui doloribus ut. Veritatis non illo similique mollitia ut. Quia magnam accusamus et suscipit. Voluptate repellendus doloremque rerum qui. Optio distinctio quisquam quia eos sequi et dolor. Ad dignissimos autem minima qui beatae. Mollitia unde est est nihil amet voluptatum voluptatibus. Illo vel voluptates et omnis asperiores ratione maiores. Assumenda quasi quis consequatur est molestias voluptatem.', 'Abelardoville', 1, '2019-10-02 18:05:38', '2019-10-02 18:05:38'),
(37, 4, 'Assumenda consectetur iste.', 'dicta-et-nulla-aut-nihil-expedita-tempora-labore', 'Accusantium ex et dolorem quis non consequuntur hic. Enim minima omnis et occaecati voluptatem est. Et at et maxime qui quibusdam cum aliquid.', 'Est aut quia quas quasi voluptatibus. Ullam vero iusto culpa fuga est vel ut. Odit perspiciatis sit aut nostrum eum. Explicabo rerum incidunt voluptas aspernatur. Qui et rerum tempore. Soluta sed sint in similique numquam eum. Eum animi omnis sed dolores id quidem dolores. Culpa quam qui at similique deserunt. Provident maiores atque a voluptas illo consequuntur. Vel mollitia repellendus accusantium beatae aut et at ipsam. Similique enim sequi dolor qui laborum modi maiores. Quia quaerat quia vel. Aut est modi numquam libero numquam id. Sequi temporibus fuga voluptates vel.', 'West Curtis', 1, '2019-10-02 18:05:38', '2019-10-02 18:05:38'),
(38, 4, 'Nemo delectus.', 'quasi-sint-voluptate-sit-cum-et-id', 'Id et omnis perspiciatis sit voluptatem occaecati error. In quas quos et ex consequatur et. Ea dolores voluptatum voluptate nostrum. Id voluptatibus aut ipsa corrupti est sit recusandae.', 'Enim eius officiis facilis officiis in harum. Incidunt voluptatum similique est assumenda cumque autem maiores. Fuga ea itaque commodi voluptas non ut dolorem. Reprehenderit odit ut aut et quo. Aliquam at dignissimos ut dolorem velit optio voluptas voluptatem. Placeat reprehenderit excepturi atque asperiores velit natus blanditiis. Excepturi eos inventore laudantium quia sapiente vero in explicabo. Dolor voluptas quibusdam porro nulla aut ut culpa. Neque officia placeat rerum aut excepturi aut eligendi.', 'Port Houstonmouth', 0, '2019-10-02 18:05:38', '2019-10-02 18:05:38'),
(39, 4, 'Doloribus quaerat.', 'itaque-dolorem-excepturi-mollitia-vero-et', 'Quia esse dolores ab consequatur provident consequatur ipsam. Doloribus est et aut nostrum. Illo facilis molestias quisquam qui nobis.', 'Et et sed consequatur reiciendis. Minima ex qui ea illo recusandae. Quas voluptatem et iste cumque incidunt. Distinctio ut et reiciendis officia consequatur repudiandae. Quisquam tempora et perferendis. Aut quis quo quia consequatur placeat qui sed. Id mollitia tempora aut reprehenderit totam et minima. Est deserunt dignissimos sunt. Molestiae tempore ipsa omnis consequatur et autem. Rerum tenetur ut accusamus. At dolores consequuntur totam.', 'Port Urbanstad', 1, '2019-10-02 18:05:38', '2019-10-02 18:05:38'),
(40, 4, 'Fuga repudiandae.', 'aut-perspiciatis-magnam-ipsum-commodi', 'Cupiditate et et occaecati et aliquid. Saepe nostrum veniam perspiciatis eos asperiores ab ipsam ut. Nesciunt alias id ipsa dicta ut est non.', 'Dignissimos quos et dignissimos sequi modi qui. Et numquam in quisquam distinctio. Ab culpa fugit cum. Eos ipsum adipisci deleniti. Vel laboriosam voluptas libero quibusdam rerum laboriosam quas. Delectus nostrum magnam saepe. Minima optio itaque nesciunt molestias nam aspernatur cumque. Molestias eaque qui assumenda cupiditate. Et in labore dolor. Reiciendis quo distinctio nihil autem id est. Molestiae odio nemo a voluptatem. Saepe quo aliquid officiis perspiciatis vero. Quia excepturi maxime labore perspiciatis eaque.', 'North Michale', 0, '2019-10-02 18:05:39', '2019-10-02 18:05:39'),
(41, 5, 'Sed aperiam odit.', 'minima-velit-laudantium-explicabo', 'Eaque nostrum non perspiciatis sed. Aspernatur debitis consequuntur unde tempora sint sed. Est eos deleniti nihil architecto.', 'Et doloremque omnis et libero exercitationem non. Odio esse occaecati commodi modi ratione exercitationem. Est dignissimos itaque maxime sed eaque. Id placeat nam minus vel eos doloribus culpa. Ea est ea non nam labore et. Et at minus rerum qui nisi aut sequi. Enim quia commodi dolor. Porro provident molestiae quo et laborum. Officiis sed cupiditate sed non aut. Id consectetur nihil rerum eius ut est eius.', 'Orphatown', 0, '2019-10-02 18:05:39', '2019-10-02 18:05:39'),
(42, 5, 'Eum voluptates laudantium.', 'voluptatem-eius-et-aut-dolores-incidunt-in-consequuntur', 'Accusamus expedita odio aut dignissimos quos sit asperiores. Sed optio illo voluptatibus distinctio a ab nihil sed. Error nulla quia ex asperiores culpa voluptatibus ea.', 'Alias et ut quia nulla rem. Natus aliquid in temporibus provident. Commodi temporibus iure debitis dolores. Voluptates et nisi veniam rem adipisci consequuntur non. Impedit harum repellendus et quo sunt sit. Sit temporibus porro et pariatur suscipit numquam. Voluptatem sed quia vel vel. Eos eligendi sed est assumenda quos dolor. Vero dignissimos officia nisi earum nisi recusandae qui natus.', 'Lavinashire', 1, '2019-10-02 18:05:39', '2019-10-02 18:05:39'),
(43, 5, 'Aliquid facilis in.', 'ipsam-explicabo-in-pariatur-eveniet', 'Molestias ad et consequatur quae aperiam dolores aut. Non unde iste doloremque. Debitis eligendi aut sunt. Quibusdam est sit numquam magni autem ullam voluptatem. Eos quis magnam eaque aliquid.', 'Ducimus veniam facilis animi sequi dolorem. Saepe sunt quia sed optio enim ea. Illo doloribus aspernatur aut enim optio. Nobis vel non aut ipsum et voluptas distinctio. Eum rerum dolorem eligendi deserunt ea tenetur. Adipisci voluptatem quisquam corrupti qui. Repellat dolor non necessitatibus odio. Harum ut amet illum enim. Neque natus et cupiditate est ratione explicabo a. Expedita et voluptatem quam occaecati quo quo quam. Sint odio nihil quo delectus omnis consequatur placeat. Mollitia nihil ratione culpa natus. Dolor impedit nihil consequatur officia.', 'Omaribury', 0, '2019-10-02 18:05:39', '2019-10-02 18:05:39'),
(44, 5, 'Omnis esse ut.', 'voluptatum-tenetur-officia-et-et-non-ducimus-dolore', 'Quos exercitationem dolorem sequi ullam laudantium est. Nobis unde ratione numquam. Explicabo et omnis maxime.', 'Placeat est voluptas eum dolores possimus dicta. Beatae dolore in similique qui eos. Quo non aspernatur reprehenderit vel doloribus odit. Rerum nobis qui delectus voluptatem perferendis est numquam tempore. Est perspiciatis delectus et dicta libero molestiae illo. Incidunt nisi recusandae officia dolor atque impedit autem. Praesentium esse qui necessitatibus fuga adipisci. Dicta laboriosam illum quidem unde quos. Placeat rerum rerum quia aut quia. Quos earum dolores nihil nam nihil. Cum est quo sit non.', 'Port Akeemville', 1, '2019-10-02 18:05:39', '2019-10-02 18:05:39'),
(45, 5, 'Earum consequatur omnis.', 'nihil-molestiae-aut-possimus-voluptatibus-repellendus-necessitatibus-beatae', 'Quisquam id maiores quibusdam non. Expedita quos vitae quod eaque reprehenderit. Consequatur qui nesciunt ad nemo ad quia rerum.', 'Iusto est voluptate quis. Ut labore eius possimus voluptatem qui. Molestias est placeat qui veritatis aut dolores ratione natus. In consequatur et ea. Quidem hic placeat ipsum inventore. Fuga quis consequuntur similique. Eos quis quos voluptatem voluptatum totam. Quis ipsum ipsa animi nihil alias est ipsa. Veniam ut odio magnam vero eius cum. Non dolores iure sit a. Est suscipit cumque aut velit facilis. Eos aut temporibus quos quia. Saepe nobis perferendis sint similique. Occaecati inventore quia officiis.', 'Port Alyce', 0, '2019-10-02 18:05:39', '2019-10-02 18:05:39'),
(46, 5, 'Blanditiis et.', 'quis-impedit-sed-quo-sint-voluptas', 'Voluptate debitis molestias facilis in magni. Rerum asperiores aut debitis et earum et. Porro non et modi itaque a. Nihil mollitia corrupti sit aut sit corrupti.', 'Accusamus ducimus et voluptas et. Sed id adipisci aut excepturi laudantium quaerat. Debitis tempora sunt animi sint id accusamus. Eius consequatur ea fuga possimus autem tempora. Beatae et mollitia error quod qui. Labore vitae ipsa cum. Velit incidunt quod eos illo. Sit asperiores ipsam aut ut consequatur. Dolore suscipit voluptas possimus. Molestias qui in corporis aut. Eum eos mollitia et temporibus nihil. Voluptatum rerum quia cum et. Accusantium dolorum quia reprehenderit nihil.', 'East Aritown', 0, '2019-10-02 18:05:39', '2019-10-02 18:05:39'),
(47, 5, 'Est consequatur quos.', 'et-at-doloremque-qui-sit-dolorum-eaque', 'Quaerat odit aliquid rerum fuga. Dolor id vitae occaecati aut. Tempora laudantium quo dolorem iste aut quisquam consequatur possimus. Nihil aut quibusdam quia provident eaque.', 'Qui excepturi doloribus repellendus et excepturi odio quidem. Possimus quasi recusandae assumenda. Explicabo quas fuga omnis in non illo ut repellat. Ullam doloribus ullam omnis enim aut et molestias. Voluptatem error autem sit magni qui. Sit vel perspiciatis enim est dolor nisi. Qui et quis voluptatum qui natus inventore. Est explicabo iste velit et. Quaerat consequatur distinctio deleniti sapiente illo. Impedit voluptatem dolores corrupti.', 'Titoport', 1, '2019-10-02 18:05:39', '2019-10-02 18:05:39'),
(48, 5, 'Dolore qui.', 'ea-natus-alias-accusantium-aspernatur-nihil-quibusdam', 'Consequatur id voluptatibus et. Ab quam et veritatis ullam a temporibus consequuntur. Veritatis corporis vero aperiam veritatis voluptas. Aliquam reiciendis mollitia necessitatibus beatae.', 'Esse quis sit eligendi eius. Temporibus et id impedit consectetur labore. Et voluptatem voluptas debitis voluptas accusamus nihil repellat esse. Et voluptas id sit cum ducimus. Dolorum eveniet eaque qui. Totam quia accusantium reprehenderit ipsum temporibus nisi. Magnam impedit quo aut suscipit. Aliquam sapiente voluptatem perferendis magnam aliquid. Et maxime tenetur aperiam aut cupiditate assumenda blanditiis. Ut odit qui inventore a aut consequatur assumenda. Dolorem repellendus praesentium libero porro minus ratione non beatae. Dolores est cupiditate ut reiciendis quia.', 'Uptonhaven', 0, '2019-10-02 18:05:39', '2019-10-02 18:05:39'),
(49, 5, 'Nesciunt repellat.', 'nisi-amet-aut-rem-libero-non-nemo-occaecati', 'Aut dolor error at sit. Aspernatur officiis alias incidunt non eaque qui. Aut sit tempore repellendus est molestiae dolor sed.', 'Iusto alias numquam facilis quae explicabo velit ut et. Repudiandae tenetur eum ea eum occaecati. Architecto rerum fugit qui molestiae libero accusamus ut. Architecto eveniet fugiat in praesentium tempore dolores voluptates. Saepe veritatis sit hic. Magnam quos est et magnam officia neque ullam. Odit iste quasi vitae et tempore. Et id iure quo et debitis aut magnam officiis. Qui nam magnam expedita culpa. Dolor praesentium sequi aut provident doloremque aut molestiae. Laudantium tempora veniam voluptatibus incidunt. Laboriosam dolorum pariatur ab totam aperiam. Vitae non quas ratione rem ut.', 'Lake Cornellmouth', 0, '2019-10-02 18:05:39', '2019-10-02 18:05:39'),
(50, 5, 'Numquam optio.', 'at-atque-repudiandae-aut-atque', 'Minima exercitationem eos ex earum est a. Reiciendis ut sunt at neque sequi culpa aut. Velit perspiciatis dolorem et amet distinctio tempore. Maiores aliquam voluptatum hic molestiae.', 'Qui laudantium possimus esse dolor perferendis distinctio. Ex nemo voluptates quasi et laborum. Sit omnis labore voluptatum. Culpa voluptatem voluptatum eum est. Repellat delectus iusto voluptatem ut voluptatem. Adipisci dolorem doloribus quos accusamus culpa laudantium assumenda. Sit repudiandae omnis provident ipsam. Optio et odit sint dolore et aut architecto sapiente. Quod modi distinctio consequuntur. At qui molestias mollitia facere distinctio. Dolorem voluptas eum voluptas adipisci ad.', 'Rogahnberg', 1, '2019-10-02 18:05:39', '2019-10-02 18:05:39');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Kiel Veum', 'kelvin32@example.com', '2019-10-02 18:05:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ayuirF7LDZ', '2019-10-02 18:05:35', '2019-10-02 18:05:35'),
(2, 'Norene Schamberger', 'iva.hansen@example.org', '2019-10-02 18:05:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'K0yz3YIQH4', '2019-10-02 18:05:35', '2019-10-02 18:05:35'),
(3, 'Aliza Thiel', 'alysha.quigley@example.net', '2019-10-02 18:05:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jxhv8pAN9s', '2019-10-02 18:05:36', '2019-10-02 18:05:36'),
(4, 'Dariana Prohaska', 'nmarvin@example.net', '2019-10-02 18:05:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Q2ZxHzxoqY', '2019-10-02 18:05:36', '2019-10-02 18:05:36'),
(5, 'Dr. Evalyn Brekke', 'tamia.wolf@example.net', '2019-10-02 18:05:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sSrBdJ5UUj', '2019-10-02 18:05:36', '2019-10-02 18:05:36');

-- --------------------------------------------------------

--
-- Структура таблицы `valueattributes`
--

CREATE TABLE `valueattributes` (
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_slug_unique` (`slug`),
  ADD UNIQUE KEY `attributes_name_unique` (`name`);

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
-- Индексы таблицы `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pictures_post_id_foreign` (`post_id`);

--
-- Индексы таблицы `picture_post`
--
ALTER TABLE `picture_post`
  ADD KEY `picture_post_picture_id_foreign` (`picture_id`),
  ADD KEY `picture_post_post_id_foreign` (`post_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Индексы таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `valueattributes`
--
ALTER TABLE `valueattributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `valueattributes_attribute_id_foreign` (`attribute_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT для таблицы `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `valueattributes`
--
ALTER TABLE `valueattributes`
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
-- Ограничения внешнего ключа таблицы `pictures`
--
ALTER TABLE `pictures`
  ADD CONSTRAINT `pictures_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Ограничения внешнего ключа таблицы `picture_post`
--
ALTER TABLE `picture_post`
  ADD CONSTRAINT `picture_post_picture_id_foreign` FOREIGN KEY (`picture_id`) REFERENCES `pictures` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `picture_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `valueattributes`
--
ALTER TABLE `valueattributes`
  ADD CONSTRAINT `valueattributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

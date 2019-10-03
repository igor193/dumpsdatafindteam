-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Окт 02 2019 г., 06:28
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
(1, 3),
(2, 4),
(3, 2),
(4, 4),
(5, 3),
(6, 1),
(7, 1),
(8, 4),
(9, 6),
(10, 5),
(11, 4),
(12, 4),
(13, 1),
(14, 1),
(15, 4),
(16, 6),
(17, 5),
(18, 5),
(19, 4),
(20, 4),
(21, 6),
(22, 3),
(23, 3),
(24, 2),
(25, 1),
(26, 1),
(27, 1),
(28, 6),
(29, 4),
(30, 3),
(31, 5),
(32, 5),
(33, 4),
(34, 6),
(35, 3),
(36, 1),
(37, 6),
(38, 5),
(39, 4),
(40, 3),
(41, 4),
(42, 3),
(43, 4),
(44, 3),
(45, 6),
(46, 2),
(47, 2),
(48, 6),
(49, 1),
(50, 4);

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
(120, '2014_10_12_000000_create_users_table', 1),
(121, '2014_10_12_100000_create_password_resets_table', 1),
(122, '2019_09_17_193853_create_posts_table', 1),
(123, '2019_09_17_194152_create_comments_table', 1),
(124, '2019_09_17_194459_create_categories_table', 1),
(125, '2019_09_17_194901_create_attributes_table', 1),
(126, '2019_09_17_195124_create_value_attributes_table', 1),
(127, '2019_09_17_195717_create_category_post_table', 1),
(128, '2019_09_17_200021_create_attribute_category_table', 1),
(129, '2019_09_20_153732_create_avatars_table', 1),
(130, '2019_09_29_210058_create_roles_table', 2),
(131, '2019_09_29_211551_create_role_user_table', 3),
(132, '2019_09_30_205821_create_pictures_table', 4),
(133, '2019_10_01_183611_create_picture_post_table', 5);

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
(1, 1, 'Voluptatum laborum.', 'minima-perferendis-omnis-voluptatem-similique', 'Pariatur libero quam autem non ipsa laudantium vitae. Sed minus explicabo accusantium illum in. Quidem fugit est veniam culpa.', 'Ullam sed odio corporis nobis illum. Magnam et et facilis sint. Id sint doloribus occaecati. Aspernatur odit nulla laborum repellat. Et est enim repudiandae. Ea deserunt eos modi eum voluptatem. Rerum debitis est sit qui eos quas a. Officiis aut a itaque neque iusto ut. Animi suscipit et architecto est. Fugiat officiis id vitae qui. Velit quae quidem eos temporibus pariatur ipsum. Doloremque tempora fugiat delectus earum alias. Esse recusandae odit aut sit sed. Est odit animi quos nostrum laborum culpa voluptatum.', 'New Elenoraton', 0, '2019-09-29 17:38:44', '2019-09-29 17:38:44'),
(2, 1, 'Eius earum voluptates.', 'laborum-qui-ad-incidunt-eius', 'Explicabo dolor sequi atque aspernatur provident. Quaerat excepturi qui nam. Vel nostrum error velit itaque.', 'Voluptatum nisi facilis occaecati tempore. Consequatur soluta ipsum maiores eius officia. Earum iste et expedita ut. Quos et expedita ea aut vel. Eius quibusdam adipisci ut velit ullam. Dolores qui ut quaerat autem. Est at quibusdam consequuntur laudantium quae. Dicta modi in cumque eos quod omnis. Repudiandae enim voluptate ex iure corporis. Distinctio sequi modi libero est dolores aperiam dolorem. Architecto enim qui temporibus consequatur eligendi qui voluptatem. Nam id doloremque nulla qui occaecati consequuntur ratione.', 'Grantmouth', 1, '2019-09-29 17:38:44', '2019-09-29 17:38:44'),
(3, 1, 'Laudantium vitae modi.', 'numquam-maxime-quia-quis-veniam', 'Blanditiis voluptatibus nam aut impedit doloribus. Voluptatibus inventore aut ipsum eos sunt nihil eum dolor. Officia autem sint molestiae laudantium ut vel exercitationem.', 'Odio tempora repellat voluptate. Est ducimus accusantium laborum tenetur dicta. Nemo aut doloribus inventore eius tenetur eveniet. Nobis consequatur nihil sit corrupti non pariatur accusantium sit. Vero quos et et dignissimos et veniam odit. Numquam ad tempora aliquam dolor dolorum. Recusandae et minus nobis. Odio quae et molestiae doloremque sint cumque. Et repellendus laboriosam illo doloremque libero. Soluta ipsam beatae totam consectetur rem reprehenderit sed dolores.', 'Brigittefort', 1, '2019-09-29 17:38:44', '2019-09-29 17:38:44'),
(4, 1, 'Aut vitae minus.', 'dolor-enim-quas-iure-sint-est-voluptatem-sed', 'Corporis maxime odio qui ut omnis. Accusamus voluptatem fugiat ipsum soluta repudiandae cupiditate nihil. Unde excepturi adipisci consequuntur praesentium.', 'Nisi eos maiores magni eos. Vero alias nulla aut omnis. Odit qui voluptates numquam quo cum earum sit ut. Officiis veritatis iure magni ratione quos odio harum. Nemo repudiandae ipsa fugiat. Odit ipsam non repudiandae quo magni reprehenderit. Facere officiis laudantium unde dolorum omnis omnis unde. Optio et et non impedit ut doloremque sed unde. Ut non perferendis molestiae quia earum. Eos aperiam facilis iure. Enim maiores facilis qui fugit consequatur inventore. Quas atque maxime sed atque nobis. Illo fugit architecto dolor ea.', 'West Alejandrin', 0, '2019-09-29 17:38:45', '2019-09-29 17:38:45'),
(5, 1, 'Perspiciatis totam enim.', 'voluptates-voluptatem-placeat-deserunt-vel', 'Aut aut aperiam consequatur. Vero eum et eius consequuntur quae. Odio occaecati maxime iste eligendi animi est totam. Eius sint esse rerum in enim doloribus.', 'Dolore sed enim voluptatem eveniet at tenetur mollitia. Et est dolores sed est. Accusantium laboriosam odit est quod ipsa enim praesentium. Sunt vero non non excepturi recusandae magnam eos. Beatae velit est voluptates. Eos perspiciatis quibusdam est libero voluptates accusamus at. Cum neque illo libero culpa molestiae sed nam. Est omnis ducimus odio minus sed est temporibus in. Tempora architecto sapiente totam dolor. Et doloremque maxime earum odit delectus. Voluptas nostrum voluptatem reiciendis quis nostrum labore. Vel odio quasi qui quos.', 'North Princeshire', 1, '2019-09-29 17:38:45', '2019-09-29 17:38:45'),
(6, 1, 'Inventore et incidunt.', 'sunt-aliquid-consequuntur-id-sit', 'Aut debitis corrupti minus odit. Ut illo ratione cumque commodi iusto. Inventore minima earum commodi ut debitis. Consequatur sed omnis asperiores inventore quo vitae dolorum commodi.', 'Molestiae sit eum officiis natus doloremque esse voluptatem. Repellat veniam nihil nihil alias. Fugit sit repudiandae enim quis magnam dolor ut. Accusantium qui voluptatem sunt id sed rerum illum neque. Voluptas expedita et voluptatem odit dignissimos sapiente voluptas. Maxime beatae cupiditate esse rem error adipisci. Ipsam quibusdam accusamus quia aut consequatur beatae. Consequatur aut sapiente et aut. Et dolore facilis quis repudiandae. Sequi aperiam ut natus harum suscipit consequatur unde. Ullam aut incidunt omnis et laudantium velit. Sequi quas optio magni neque.', 'Towneshire', 0, '2019-09-29 17:38:45', '2019-09-29 17:38:45'),
(7, 1, 'Quia labore adipisci.', 'qui-vel-dicta-incidunt-recusandae-porro-totam-esse', 'Doloremque aut animi et eum fugit. Iure sed quia velit repudiandae autem. Porro corporis et distinctio sapiente voluptatem. Earum vel ratione corporis cum exercitationem quas dignissimos.', 'Fugit quasi ducimus enim vitae perspiciatis. Optio eligendi quam corporis dolore expedita odit odio. Est at aliquid quos aliquam occaecati voluptas. Architecto non dolorem et officiis porro qui quaerat. Molestiae est sit ratione aspernatur maxime labore. Illo aliquid ea optio aut voluptatibus debitis sed. Velit in dolores quidem nam omnis. Tempora pariatur autem officia non. Laboriosam reiciendis autem libero delectus eos.', 'West Clovisville', 1, '2019-09-29 17:38:45', '2019-09-29 17:38:45'),
(8, 1, 'Aliquid sit.', 'iste-sequi-adipisci-unde-nam-quod', 'Quo earum labore ab dicta eaque distinctio. Aut illum qui magnam. Dolores repellat quia libero fugit reprehenderit eum illo ad. Fugiat optio est magni amet nesciunt reiciendis.', 'Iste placeat corrupti facilis commodi magni aut. Dolores sunt est sit et. Quam provident rerum non doloribus. Minus non sint tempora facilis sed. Suscipit vel ut dignissimos voluptatum. Ut doloribus atque vitae qui. Officia sit et quia natus cupiditate. Aut repellat sequi sit nulla ipsam quis. Omnis molestias eos et aut sit. Aliquid quia voluptatem unde suscipit. Velit quasi qui sit repudiandae maxime qui. Ex asperiores et qui fuga. Ad quod eligendi ex dolorum culpa quidem.', 'New Juana', 1, '2019-09-29 17:38:45', '2019-09-29 17:38:45'),
(9, 1, 'Odio et.', 'sequi-aut-possimus-pariatur-officia', 'Et et tenetur ut asperiores. Ipsum eos vitae at ut sapiente. Architecto porro ipsam est maxime voluptas rerum.', 'Sint ducimus cum qui numquam. Qui illum qui sed officiis aut ex dolor ipsam. Vero nesciunt quisquam id sit ut. Ad suscipit non debitis nihil ut quo. Nesciunt vel blanditiis deserunt modi aspernatur. Ipsa quod nemo voluptas facilis autem atque dolor voluptatibus. Incidunt ea eaque deserunt velit necessitatibus qui et. Qui dignissimos occaecati optio illum illum itaque odit quia. Totam quidem repellendus provident cupiditate dicta nihil molestias vel. Harum voluptatem minima laborum a voluptate perspiciatis. Ducimus laborum atque in ducimus.', 'North Mozellstad', 1, '2019-09-29 17:38:45', '2019-09-29 17:38:45'),
(10, 1, 'Iusto eaque.', 'dolor-sunt-eos-et-odio-est-est-dolorem', 'Dolor non ipsa quos dolore atque eligendi. Culpa corporis velit sed. Facilis unde et ducimus sed voluptatem sint est cumque. Ipsam aspernatur inventore et neque quidem et omnis.', 'Dolorum voluptatem qui voluptatem qui minima sed commodi. Repellat deleniti illo laborum totam qui tempore. Eligendi laborum atque voluptas eligendi. Veritatis distinctio voluptates corrupti consequuntur ipsa hic eligendi. Temporibus error dolorum laborum ut illo. Sed sunt itaque est dolorum. Qui ipsa cum magnam facilis et natus molestiae impedit. Error debitis possimus quo doloribus aut blanditiis nemo. Et autem voluptates cumque nam et impedit neque. Perferendis aut placeat doloremque saepe molestiae. Hic id aut eos expedita.', 'North Modestafurt', 0, '2019-09-29 17:38:45', '2019-09-29 17:38:45'),
(11, 2, 'Magnam expedita aut.', 'provident-est-aut-voluptas-suscipit-ex', 'In maiores et facere fugit perspiciatis. Sed nobis et et. Harum fuga ut cupiditate consequatur facilis culpa. Minus quia ipsa aliquam et quis dolores.', 'Saepe consequatur eaque earum quia et. Libero tempore et voluptas aut odio tempora facilis. Quis possimus et temporibus soluta vel cum consequatur. Nihil soluta id odio iure qui voluptatem. Possimus velit temporibus quasi autem modi qui ipsum. Necessitatibus deleniti odit et repudiandae sint ipsum. Perferendis eos qui qui saepe velit dicta saepe. Aut et omnis aut nostrum voluptatem nisi. Architecto magnam voluptas iure blanditiis sit est optio. Reiciendis et dignissimos quod necessitatibus.', 'Julesfort', 0, '2019-09-29 17:38:45', '2019-09-29 17:38:45'),
(12, 2, 'Voluptas ut.', 'dolorum-cumque-est-voluptate', 'Eos odio animi rerum quasi animi sint. Qui odit aut non consectetur dignissimos et. Similique error omnis deleniti dolorem voluptas provident quidem. Officiis et non excepturi nobis.', 'Molestias odit saepe voluptatem a reiciendis. Saepe quibusdam blanditiis aut molestiae. Neque qui eius fugiat et rem. Commodi blanditiis omnis qui ipsa maiores. Officia molestiae itaque voluptatum. Ut voluptatibus corporis fugit dicta necessitatibus odit id. Et ut hic ab enim omnis. Quia ex qui aut. Quas inventore nam beatae beatae. Aspernatur sed quidem fugit aliquam eum. Ducimus qui autem dolorem veritatis autem quidem et. Aut rerum fugiat rerum alias. Ut odio quia maxime reprehenderit reprehenderit vero officia ut. Debitis dolores et alias in. Quae non qui doloribus vel.', 'Mullermouth', 0, '2019-09-29 17:38:45', '2019-09-29 17:38:45'),
(13, 2, 'Ducimus harum.', 'minus-alias-et-placeat-ea-quia-consequatur', 'Est nesciunt odio consequatur necessitatibus nisi. Ut quibusdam at aut. Odit temporibus delectus incidunt unde accusamus velit et.', 'Rerum dolor aut autem quibusdam officiis sit. Repellendus et distinctio aut praesentium voluptatem voluptates ut. Architecto quae ullam deleniti numquam. Perspiciatis sed sit amet deleniti non et. Fugiat quia maiores voluptatibus ut beatae est. Aut et deleniti deleniti possimus excepturi sapiente libero. Aliquam dignissimos maxime officia et aspernatur. Omnis quam sit exercitationem molestiae. Voluptas et ab voluptas inventore. Vel qui harum repellendus nihil.', 'Conroystad', 1, '2019-09-29 17:38:45', '2019-09-29 17:38:45'),
(14, 2, 'Debitis dolore.', 'sunt-consequatur-explicabo-nulla-nostrum', 'Cum porro non voluptatibus assumenda debitis molestiae ut. Nemo iusto omnis tempora quia quo dolorem. Beatae a fugiat explicabo. Cupiditate ipsum accusantium est iure aspernatur officiis minima.', 'Consectetur similique harum quia sint. Eveniet voluptatem saepe accusamus ea vitae sit veniam dolores. Recusandae et et necessitatibus voluptatem. Quos aut et voluptate non dolor vero. Et facilis velit nesciunt non. Officiis temporibus asperiores et ipsam quod labore non. Et repellendus quaerat qui asperiores nam. Odio quia aperiam quia tempore est quia sit. Facilis placeat maiores error rerum eligendi. Inventore ut laboriosam delectus qui ipsum dolore rerum. Veritatis voluptates at autem et accusantium. Dicta est est velit quia est aut. Aut dolorem alias odit enim et assumenda aut.', 'West Arielleborough', 0, '2019-09-29 17:38:45', '2019-09-29 17:38:45'),
(15, 2, 'Qui perspiciatis.', 'recusandae-optio-omnis-iure-soluta-rerum-aspernatur-sed', 'Necessitatibus et ducimus eaque vel veritatis minima qui. Autem optio quo error sequi praesentium doloribus officiis. Quisquam voluptatibus facere soluta quae non.', 'Perferendis magni voluptatem qui cupiditate. Suscipit natus eius iure et rerum cupiditate. Excepturi provident deserunt assumenda voluptatibus. Laborum ut molestiae dolorem aut harum. Numquam dolor aspernatur nobis quidem et. Reprehenderit ipsum quos et est minima est unde. Et facilis voluptatibus distinctio doloremque. Architecto similique aspernatur soluta culpa occaecati sunt non. In nemo quos enim. Dignissimos praesentium id omnis quidem. Reprehenderit quidem et ut. Et quos illo qui non necessitatibus totam id.', 'Hudsonchester', 0, '2019-09-29 17:38:45', '2019-09-29 17:38:45'),
(16, 2, 'Quasi aperiam.', 'nisi-dicta-dolore-voluptates-et-minus-molestiae-provident', 'Odio voluptas a recusandae enim animi modi. Ex molestiae ducimus est quod corporis a voluptas fuga. Molestiae aut nesciunt dolore et. Quia ut delectus sunt omnis qui.', 'Cupiditate sed ullam et qui sunt. Fugiat laboriosam dolores aspernatur eos recusandae. Consequatur et velit nam earum. Ullam nihil officia et laboriosam officia delectus quia. Eos est eius veritatis. Consequatur sunt et autem veritatis in. Illum dolorem totam eaque tempora beatae. Vitae et ut possimus. Sequi et incidunt autem totam nesciunt corrupti. Ullam eius quasi ratione. Assumenda magnam minus dolor. Ad aut est cumque ipsa corrupti aut. Nulla corporis aliquam qui non quia id at.', 'Hopemouth', 1, '2019-09-29 17:38:45', '2019-09-29 17:38:45'),
(17, 2, 'Consectetur provident.', 'temporibus-libero-distinctio-aut-ut-eveniet-possimus', 'Nulla sapiente laborum delectus officia. Atque et quia est ratione vero maiores repudiandae voluptatibus. Sunt velit asperiores consequatur voluptas aut aut laboriosam.', 'Porro optio harum est est. Fugit numquam et ipsum. Quia enim voluptas illum non odit ullam eum placeat. Et quam aliquam in sapiente et adipisci. Ea sapiente dolore aliquam omnis sit nihil provident. Laborum vitae libero hic maxime dolores velit incidunt. Aut voluptatum suscipit ratione. Ab ut debitis architecto. Quae est autem excepturi. Adipisci eligendi deleniti quo. Velit et natus suscipit sint. Modi ut dolor et occaecati quis. Totam ab eveniet nisi earum aut suscipit magnam. Incidunt occaecati est ut ratione dignissimos.', 'Jaredton', 0, '2019-09-29 17:38:46', '2019-09-29 17:38:46'),
(18, 2, 'Qui aut.', 'quidem-similique-illum-consectetur-aut', 'Explicabo doloribus nihil vel voluptatem qui tempora aut. Soluta aut est non aspernatur nisi. Et amet exercitationem non quam nisi corrupti reiciendis.', 'Ad vero totam vitae illum et eligendi. Placeat consequatur sit qui. Officiis accusantium non corrupti explicabo consequuntur sunt. Quis quis vero dolores quod omnis voluptas reiciendis molestiae. Beatae temporibus qui aut odit aut fuga. Officia consequatur architecto deleniti similique consequuntur nesciunt vitae. Tempore aliquam minima eos voluptatum aspernatur minima.', 'Hallechester', 0, '2019-09-29 17:38:46', '2019-09-29 17:38:46'),
(19, 2, 'Autem nemo.', 'a-totam-velit-harum-architecto', 'Sint rerum dignissimos et itaque sed quasi aspernatur ab. Veritatis sunt delectus et quia voluptates.', 'Exercitationem non quia sed in consequatur et. Nemo ut eius dolor qui eum quidem. Aliquid nesciunt reiciendis magnam odit incidunt sed mollitia sunt. Sed earum deleniti sed consequuntur nobis soluta. Quo quaerat optio temporibus quam labore voluptatem nobis suscipit. Illo perspiciatis mollitia facilis et explicabo. Nesciunt animi delectus mollitia sint. Doloremque nulla et culpa dicta. Ab earum ratione saepe ut iste vel. Quia quisquam optio provident eius sed. Iste vel illo quidem aut et eos. Eligendi praesentium quibusdam temporibus explicabo.', 'Raeshire', 1, '2019-09-29 17:38:46', '2019-09-29 17:38:46'),
(20, 2, 'Asperiores maxime adipisci.', 'minima-a-et-officiis-et-libero-neque-architecto', 'Accusamus odio voluptate quod voluptate. Enim eius magni quibusdam non aut qui accusamus. Vero fugiat tempore consequatur ratione quis aut vitae maxime. Qui labore quisquam minus dolorem quam.', 'Quis voluptatem nemo doloribus ut dicta dolorum aut. Harum quam exercitationem eum quia incidunt asperiores facilis officiis. Harum voluptatem accusantium sapiente enim. Et deserunt accusantium est cupiditate libero doloremque. Occaecati animi odit incidunt est sunt ad natus. Laboriosam illo dignissimos nisi autem. Animi maiores quia quisquam doloribus. Illo laborum dolor et eaque omnis. Aut veritatis ut reiciendis qui ipsam ea asperiores. Tenetur fugiat voluptate dicta et pariatur sint debitis. Ex odio fugiat excepturi velit qui cupiditate.', 'South Oscarberg', 0, '2019-09-29 17:38:46', '2019-09-29 17:38:46'),
(21, 3, 'Autem id porro.', 'ex-illum-illo-velit-placeat-dolores', 'Placeat impedit nemo mollitia corporis ex ut optio. Consectetur voluptates nostrum corporis voluptatibus. Voluptatem maiores error consequatur omnis libero.', 'Eos dolorem voluptatem explicabo enim incidunt. Vel perspiciatis molestiae eligendi repellendus. Pariatur alias qui consequatur doloremque assumenda. Nobis ea suscipit aliquam et perspiciatis optio possimus a. Esse tempore possimus optio iusto impedit suscipit. Harum eum sit in autem sequi deserunt. Aliquam voluptatem et quia velit facere in minus. Enim tempore enim officiis sed qui. Tempora quisquam repellat pariatur possimus omnis ut molestiae. Aspernatur mollitia earum dolorum repellat possimus.', 'Lonietown', 0, '2019-09-29 17:38:46', '2019-09-29 17:38:46'),
(22, 3, 'Nam sequi vero.', 'aperiam-id-asperiores-quia-eum-accusantium-explicabo-dolorem', 'Cum officia aliquam hic corporis quis nostrum. Quis natus cum sed qui accusantium. Hic omnis blanditiis quae pariatur. Molestiae itaque accusantium dolores cum.', 'Pariatur qui mollitia enim id odio impedit delectus. Maiores odit voluptas fuga qui ex eum. Exercitationem magni ducimus ex quis quia dolores eum. Rerum facilis architecto ad minima. Maxime quia expedita quidem ex tenetur sint iste. Aspernatur totam quos architecto laudantium id iure minus. Fuga odio voluptatum ipsam aliquid accusamus et. Aperiam accusamus rerum ullam nam minima aut aut. Accusamus quos in exercitationem quia pariatur. Dolores et neque magni voluptatem. Enim temporibus molestias dolor quia distinctio debitis totam.', 'Olsonfurt', 1, '2019-09-29 17:38:46', '2019-09-29 17:38:46'),
(23, 3, 'Exercitationem praesentium et.', 'quia-sint-sint-ad-consequatur-occaecati', 'Veniam voluptatum sint ut ipsa voluptatem sapiente reiciendis. Et sint fugiat quidem.', 'Rerum repudiandae voluptatem eligendi fugiat. Blanditiis natus reiciendis minus. Itaque asperiores consequuntur iusto non explicabo. Eaque non consequuntur adipisci occaecati. Et aut et quis eius ullam est omnis. Recusandae sequi qui possimus excepturi voluptate quam tempora. Nihil magnam laudantium nobis officiis voluptas quisquam quos mollitia. Aut aut neque culpa. Enim qui nostrum ex animi cum sint. Quia et vel adipisci repellat eveniet.', 'East Napoleonhaven', 0, '2019-09-29 17:38:46', '2019-09-29 17:38:46'),
(24, 3, 'Amet quia in.', 'at-saepe-dolores-nobis-tempore-corrupti-officia-officia', 'Corrupti vel recusandae natus mollitia velit. Eum sint delectus quam quia voluptas quibusdam. Corrupti consequatur est et facilis veritatis nesciunt.', 'In et qui rerum accusamus. Dignissimos libero qui reiciendis voluptas et qui est. Numquam perspiciatis et vel voluptatem repellat quod mollitia. Nihil laboriosam tempore sapiente ut eum sit maiores. Hic est sint soluta aliquid eum et. Perspiciatis tempora rerum beatae cupiditate ut. Facilis rerum aliquid quae voluptatibus. Eaque amet quia eum velit. Earum perspiciatis qui est dolorem dolores alias voluptatem. Repellat ut cumque et ea fuga non qui. Quaerat dolor minima voluptatibus sed. Et quis sed quos optio cupiditate et. Sed et magni placeat est. Sit asperiores nobis maxime.', 'Beckerview', 1, '2019-09-29 17:38:46', '2019-09-29 17:38:46'),
(25, 3, 'Similique rerum.', 'officiis-dolorem-voluptas-labore-amet-voluptatum', 'Itaque laborum et nisi ea modi. Eaque ut ut veritatis sint. Voluptate nisi et laboriosam et est accusamus.', 'Eveniet quo quas consequatur aut illo quae excepturi. Numquam nulla iusto rerum fugit. Dignissimos quo iste voluptatibus ad et quae veniam distinctio. Et numquam nulla debitis ut. Magni aut sit pariatur non aut. Corrupti consequatur in sapiente quia ab omnis. Ut corporis eum perferendis quia. Vel ea tempore est excepturi consequatur voluptates. Autem et debitis praesentium culpa earum facere. Ducimus doloribus et in facere aperiam unde.', 'Domingomouth', 1, '2019-09-29 17:38:46', '2019-09-29 17:38:46'),
(26, 3, 'Mollitia officia rerum.', 'autem-itaque-praesentium-officiis-possimus', 'Suscipit sunt voluptatem quos ut laboriosam exercitationem. Quas et eius quaerat doloribus molestiae consequatur molestias. Aperiam temporibus aliquid possimus.', 'Odio cumque eos voluptatum sunt non vel qui. Enim quia aut consectetur pariatur praesentium. Recusandae qui earum in accusamus. Officia in alias consequatur. Quos explicabo illo voluptas dolor. Natus fugit tempora omnis repellendus. Consequatur quos nemo et a earum. Enim neque et voluptas aperiam quidem. Illo est eum beatae. Quae dolores odio voluptatum eos doloremque nam. Iure id dolorem quam minus distinctio. Non provident iusto suscipit. Voluptatem ullam aliquid dolor consectetur consectetur quaerat totam magni. Et consequatur dolorem ullam fugiat saepe modi.', 'New Lelahtown', 1, '2019-09-29 17:38:46', '2019-09-29 17:38:46'),
(27, 3, 'Saepe est nisi.', 'autem-nihil-iste-placeat-voluptas-occaecati-tempora-molestiae', 'Corporis deleniti fuga quo. Enim nesciunt earum culpa adipisci. Atque ipsa a aut sunt illo dignissimos est. Aperiam sed nulla ex excepturi iste ut saepe rerum.', 'Adipisci quos velit velit assumenda est excepturi rem sint. Corrupti omnis reiciendis placeat perspiciatis omnis. Et vel assumenda fuga quibusdam inventore. Cupiditate nihil nesciunt accusantium dolorem est maiores minus aut. Iure reprehenderit dolorem esse itaque nesciunt. Sit dignissimos ut nihil cupiditate distinctio. Rerum alias quae ut iste quo. Doloremque consequuntur aliquid quam provident blanditiis qui. Dolor ipsa necessitatibus explicabo minima aut. Et cupiditate natus non omnis voluptatum quia laudantium.', 'Nyasiaside', 0, '2019-09-29 17:38:46', '2019-09-29 17:38:46'),
(28, 3, 'Totam eveniet.', 'qui-magnam-possimus-praesentium-consequatur', 'Autem aspernatur non ipsa reprehenderit. Praesentium quam et et aut. Quae aspernatur asperiores est dolorum facere et.', 'Nesciunt expedita aliquam quaerat molestiae ad. Sed sunt velit dignissimos et libero voluptate. Quo reiciendis rem excepturi nam. Explicabo est aspernatur exercitationem repudiandae cumque aut. Dolore ea non architecto tenetur dolorem in. Eos itaque nemo fugiat rerum. Est voluptatum qui rerum quis numquam et dolorem quae. Temporibus qui accusantium distinctio quaerat facilis in ea. Cum et nemo pariatur ut. Necessitatibus voluptatum amet asperiores optio. Ab magni voluptas totam quisquam unde ipsam.', 'East Dixie', 1, '2019-09-29 17:38:46', '2019-09-29 17:38:46'),
(29, 3, 'Enim natus.', 'expedita-recusandae-libero-nihil-distinctio-facilis-voluptas-nobis', 'Dolorum consequatur atque fugiat aut. Non qui a voluptate et voluptatum iusto iusto. Ut aliquam eveniet soluta perferendis quia inventore.', 'Ea tempora nesciunt laboriosam ab magni eos. Molestiae vero explicabo eveniet quod cupiditate. Sit libero quo cupiditate et quibusdam facere. Velit consectetur laborum hic molestias molestiae qui. Et non aut ea qui atque. Repellendus quasi eum harum minima. Aut delectus debitis mollitia quia. Voluptas quos magnam sequi eum ratione quo qui. Veritatis iusto alias alias voluptas. Eius sunt iusto veniam incidunt qui maxime tempora. Sunt ut et delectus beatae explicabo minus nihil laudantium.', 'Faheyville', 0, '2019-09-29 17:38:46', '2019-09-29 17:38:46'),
(30, 3, 'Labore odio.', 'ratione-nesciunt-quam-ut-cupiditate-rerum-sed', 'Deserunt error enim quas consequatur cum autem. In hic nesciunt impedit est quod voluptatibus et. Recusandae ratione consequuntur veniam veniam est autem.', 'Provident velit sint et inventore odio quia. Quaerat sit omnis sint veritatis tempore. Corrupti nostrum error aperiam qui enim at. Esse facere velit ab qui voluptatem porro consectetur voluptas. Est facere est sequi repellat. Beatae voluptas earum enim est molestiae hic molestiae. Tempore necessitatibus odit fuga non in sit voluptatem. Pariatur debitis provident voluptatem voluptate consequuntur. Ut qui odio tempore. Expedita quia mollitia qui tenetur ratione dolorem eum.', 'North Raleighburgh', 0, '2019-09-29 17:38:46', '2019-09-29 17:38:46'),
(31, 4, 'Doloribus eos.', 'est-eum-rem-sapiente-doloribus-numquam', 'Omnis nam vel qui laboriosam eveniet aut odio vel. In molestiae veniam mollitia voluptatibus. Consequatur eos distinctio velit quo cum est.', 'Nobis necessitatibus quod eos pariatur incidunt perspiciatis. Dolorum molestiae dolore debitis in error quia. Dolorem nostrum impedit ut quos reiciendis neque ex. Possimus cum veritatis qui quo possimus. Velit et nihil quia tempore laudantium dolorem. Tempore autem velit enim. Perferendis eos et dolores ab nihil et in. Cumque quis tempore doloremque est qui voluptatem. Deserunt autem tempore rerum deserunt tempora nam dicta. Aut et inventore nemo ea enim. Eligendi qui temporibus ab necessitatibus et tempore quae nihil. Alias ut pariatur quisquam consectetur.', 'Beierfort', 0, '2019-09-29 17:38:46', '2019-09-29 17:38:46'),
(32, 4, 'In voluptatum.', 'dolore-fugit-repudiandae-vel-minima', 'Aut ad velit omnis nihil alias. Atque aliquid minima suscipit soluta iusto ad placeat. Reprehenderit explicabo fugit soluta qui perspiciatis dolore.', 'Quia quia et officiis velit libero. Consequatur quia aspernatur ipsum. Nesciunt voluptas sequi molestiae sapiente. Quibusdam alias dolorum expedita ea ipsam ipsam. Qui sint est nobis reprehenderit. Nesciunt mollitia earum eos. Ullam et hic nam ipsam accusantium atque voluptatem. Et sequi tenetur placeat qui quos. Aut quos sunt illo velit ut consequatur. Qui laudantium animi totam maiores dolorum eveniet amet. Explicabo architecto quo facilis omnis perspiciatis quod.', 'West Jeanneberg', 1, '2019-09-29 17:38:46', '2019-09-29 17:38:46'),
(33, 4, 'Dolorum ea non.', 'exercitationem-dolores-mollitia-impedit-ex-quas-in', 'Illo voluptatem maxime consequatur placeat quis vitae nesciunt. Nisi est quia dignissimos officia id.', 'Beatae enim temporibus hic explicabo suscipit molestiae. Ad est dolores exercitationem. Officiis eaque enim non. Sit suscipit voluptates et dolorem adipisci. Sit error ex fugiat repudiandae deleniti dicta et rerum. Deleniti animi aut dolore id qui distinctio error. Qui id id cumque culpa sunt accusantium. Inventore delectus necessitatibus earum est est neque odit. Blanditiis cum pariatur qui minima. Corrupti ipsum ratione aut iure vitae. Similique sed nihil vel. Ipsum quas ea numquam voluptatem. Temporibus sed nihil hic aut. Qui reiciendis aut et. Quaerat facilis sunt recusandae ipsam.', 'Lake Baylee', 1, '2019-09-29 17:38:46', '2019-09-29 17:38:46'),
(34, 4, 'Et doloribus quaerat.', 'nisi-autem-earum-quaerat-iusto-veniam', 'Veniam nulla est officiis inventore sed. Officiis beatae aut aut sit. Sequi porro non magni eligendi non id inventore.', 'Odio error dolor pariatur. Ullam quia id cum. Sint dolore fuga ea dolor voluptatem eius aut. Nostrum eum blanditiis ut maxime nihil suscipit. Aliquid tempore molestiae ut est doloribus voluptas enim. Impedit nobis doloremque voluptate quia doloremque. Quia non illo magni voluptate occaecati labore. Non expedita provident sed dignissimos. Excepturi et nihil reprehenderit repellat voluptates deserunt quia. Modi est impedit ea eveniet nisi. Repellat ut eos at ea totam asperiores molestiae.', 'Port Candelarioside', 0, '2019-09-29 17:38:46', '2019-09-29 17:38:46'),
(35, 4, 'Velit molestias.', 'quisquam-rem-et-et-voluptas-accusamus', 'Impedit ullam vero ut aut ullam aliquam. Aspernatur eum velit nemo vel.', 'Placeat quo eius odit et quia aut ducimus. Animi rem fugiat voluptatibus. Quia veritatis aliquid illo non veniam dolorem nobis. Aut mollitia laboriosam officiis quas dolorem nulla rerum. Dignissimos aliquid error explicabo dolor quo nulla. Consequatur ut quam dolor fugit molestiae fugit. Ut quia modi velit quae fugit autem sunt. Saepe velit commodi aut harum excepturi doloribus. Adipisci voluptas maiores et maiores voluptatem. Voluptatem id fugit laborum asperiores.', 'Swiftshire', 1, '2019-09-29 17:38:46', '2019-09-29 17:38:46'),
(36, 4, 'Earum omnis atque.', 'officia-quia-dolor-porro-aliquam-aut-hic-pariatur', 'Magnam dolores tenetur expedita. Similique repellat assumenda pariatur officia et aut amet voluptatibus. Sint est qui sunt debitis quia repellat non. Ducimus veritatis qui sit voluptatem.', 'A debitis labore sed quia. Velit blanditiis aut commodi ad quae officiis alias impedit. In et facilis iste sint nihil dicta. Nostrum molestias temporibus voluptatem repellat impedit voluptatem. Et consectetur eum inventore dolore. Est voluptas autem repudiandae. Non autem optio voluptates itaque ut ipsum. Deserunt numquam architecto consequuntur non. Doloribus quo vel dolor quos. Sequi ratione earum quae unde.', 'Lake Brennantown', 1, '2019-09-29 17:38:47', '2019-09-29 17:38:47'),
(37, 4, 'Qui velit nisi.', 'odit-maxime-et-quidem-est-in-doloribus-sed-ut', 'Est laborum culpa aut corporis provident impedit cupiditate. In aut et voluptas fugit dolores. Consequatur inventore illo alias ea ea rerum.', 'Similique voluptas distinctio quod ratione sunt. Recusandae aut vel cupiditate repellendus et quia quis. Similique ea doloremque nam ut illum voluptas est. Ut minus aliquid exercitationem tempore. Placeat omnis expedita eum et natus. Minus eaque vel veniam earum explicabo. Vitae quis eum modi iste non. Exercitationem sapiente ab autem sequi et reiciendis illo. Est iusto cupiditate ut quo minima alias modi voluptatibus. Occaecati velit cupiditate nulla deserunt veritatis est omnis. Accusamus rerum eius aut et similique accusantium consequuntur itaque. Autem earum et sunt dolore ut sed.', 'Shanelleton', 1, '2019-09-29 17:38:47', '2019-09-29 17:38:47'),
(38, 4, 'Quasi tempora voluptatem.', 'debitis-facilis-voluptas-ex-in-qui-omnis', 'Vel eveniet occaecati iure dolor quibusdam enim ex officiis. Dolorem enim nulla nesciunt non qui. Ut fugit atque vero non. Quasi molestiae facere vero in fugiat.', 'Atque dolor ut voluptas accusantium. Non et sequi ut possimus voluptas. Ipsa non et in atque sint. Sunt qui nihil cumque voluptatem necessitatibus. Recusandae illum totam nihil blanditiis omnis. Aut quidem est est eligendi deserunt accusamus. Aliquam repellat quo voluptas repellat aperiam. Sunt optio atque quia molestiae ullam et temporibus.', 'South Antonia', 0, '2019-09-29 17:38:47', '2019-09-29 17:38:47'),
(39, 4, 'Pariatur exercitationem.', 'quae-illo-consequuntur-nulla-exercitationem-rem-cupiditate', 'Quasi et maxime amet fugit dolore vel. Reprehenderit alias qui minima sint deleniti illum. Sed et dicta numquam quae dicta.', 'Praesentium est error autem voluptatum cum fugiat. Et fugiat et qui placeat aliquam officia. Eaque quaerat quia ratione ipsum ducimus. Animi eum exercitationem est quia. Sint ad cumque nihil qui a aut praesentium eos. Nesciunt enim nemo aut ad animi exercitationem. Voluptates qui sunt magni laborum magnam velit rem. Velit quasi nihil ut odit. Vel perferendis reprehenderit veniam eos quia nulla eaque. Dicta ut sit quaerat quidem ipsum veniam ullam molestiae. Quos fugit et dolores soluta sed at.', 'West Lavonborough', 1, '2019-09-29 17:38:47', '2019-09-29 17:38:47'),
(40, 4, 'Cum autem nemo.', 'facilis-autem-dolorem-assumenda-impedit-at-odio', 'Vel unde doloremque culpa quibusdam natus. Sequi porro velit modi ratione tempore deleniti ut. Accusantium quidem quis dicta saepe id. Possimus saepe eum animi dolores.', 'Dicta quam quisquam aut rerum. Et beatae veniam qui quo voluptas. Saepe recusandae illo quibusdam natus. Minus a odio voluptatem modi voluptas. Vitae blanditiis temporibus aut impedit eum. Commodi ut libero et autem expedita sapiente aspernatur. Earum voluptatem molestiae natus. Et repellat eos voluptatem ipsum sed quia. Et dolorem aut vero iusto. Voluptatibus fugiat molestiae facilis cupiditate voluptate libero fugit quidem. Dolores animi mollitia fugiat earum animi omnis corrupti. Molestiae molestiae sit maiores nisi quia.', 'Miltonton', 0, '2019-09-29 17:38:47', '2019-09-29 17:38:47'),
(41, 5, 'Rerum numquam.', 'veritatis-ex-quis-odit-et', 'Incidunt recusandae voluptas veniam debitis eos molestias accusantium velit. Eos quo sunt est quasi. Laudantium non amet non omnis quos voluptatibus. Adipisci rerum sit aut aut nulla.', 'Voluptas ipsum distinctio incidunt mollitia dolores dolorem et qui. Et doloremque aut et ducimus dignissimos qui nesciunt. A vel sed odio cumque dolorem. Quam quas ut aut quidem sit. Dolores saepe ullam quia ab et atque minus. Quos voluptatem quidem quisquam et ducimus. Quo voluptatem numquam et dolorem et molestias nemo. Placeat laudantium unde earum cum voluptas illo. Perspiciatis iusto repudiandae culpa maxime. Nihil eaque quibusdam fugit sit qui et. Aut laudantium nostrum rerum enim nemo velit. Et optio est sequi.', 'Lake Joelleshire', 0, '2019-09-29 17:38:47', '2019-09-29 17:38:47'),
(42, 5, 'Et possimus quo.', 'doloremque-et-corrupti-et-voluptatum', 'Illum neque sit vel nihil. Ex quidem consectetur omnis.', 'Blanditiis ad quo doloremque ut maxime ea. Voluptatem illo odit eaque autem veniam non id. Corporis enim saepe et dignissimos quisquam iure totam. Quia velit esse quod natus. At dolores molestiae eligendi fugit. Non repellat molestias sequi libero. Accusamus sapiente dolores rerum eum consectetur id. Ducimus ipsum impedit et adipisci. Aut neque nihil enim ut eveniet ab ipsum est. Sint dolores repellat aliquam voluptatem. Impedit ipsa consectetur dolorem. Fuga velit fuga et debitis quas et. Ipsum deleniti et veritatis ipsa quasi dolor maiores quia.', 'New Jasmin', 1, '2019-09-29 17:38:47', '2019-09-29 17:38:47'),
(43, 5, 'Eligendi voluptas.', 'aut-ut-doloremque-corrupti-sit-facilis-qui-ut', 'Temporibus ex eaque ut accusamus recusandae. Enim dolorem nisi recusandae laboriosam deserunt.', 'Doloremque quidem voluptas eveniet eos. Praesentium eius quibusdam magnam et ut veritatis amet. Voluptatem vel id reprehenderit quia quod sed. Autem fuga hic laboriosam facilis necessitatibus deleniti. Quia ipsa repellendus dolores quae. Ullam qui impedit quia et. Et quisquam hic cupiditate inventore dignissimos. Sed repellat at occaecati quidem occaecati et. Sit voluptatem magnam aut et voluptate nostrum. Cumque dolorem suscipit qui ipsum officia sunt maiores. Nemo nulla et amet.', 'Billborough', 1, '2019-09-29 17:38:47', '2019-09-29 17:38:47'),
(44, 5, 'Minus et quas.', 'unde-dignissimos-vero-et-placeat-voluptatem', 'Dolores quae ipsa recusandae autem magnam deleniti vel. Tenetur libero occaecati et nesciunt. Optio quia id culpa consectetur aspernatur dignissimos. Dolore eos eaque beatae corrupti facere.', 'Voluptas qui a ut doloremque quis sit. Et iure consequatur quibusdam aut dolorem. Quae modi numquam totam consequatur sed eos. Animi id corporis dolores dicta eveniet tempora molestias. Libero quis est harum accusantium rerum numquam. Qui atque consequatur est explicabo qui totam. Officiis minus nihil nobis ab magnam dolores ut laudantium. Aut omnis maiores ut distinctio sunt tempora. Animi vitae ducimus quo qui.', 'Gregoriahaven', 1, '2019-09-29 17:38:47', '2019-09-29 17:38:47'),
(45, 5, 'Distinctio aut sint.', 'eveniet-sit-et-sint-sed-natus', 'Soluta natus sunt repudiandae dolor. Nostrum velit aut ut iusto rerum. Repellat aut qui labore nihil sed sit necessitatibus. Velit officiis repellat qui aut.', 'Mollitia ea asperiores minima ut sed sint ex. Rem libero quo rerum error hic facilis adipisci. Molestiae eos qui deserunt et beatae. Aut et omnis commodi dolores praesentium quas unde ullam. Quo ipsum enim voluptas perspiciatis enim. Esse veniam explicabo labore. Magni inventore error qui ad ea aut velit. Porro est minima fugiat fugit quisquam labore. Ducimus ea et voluptatum itaque est tempora. Expedita quos sit magni reprehenderit nemo iusto. Iusto ea qui autem reprehenderit optio quo provident.', 'Kihnland', 0, '2019-09-29 17:38:47', '2019-09-29 17:38:47'),
(46, 5, 'Quod velit occaecati.', 'ut-dignissimos-quia-cupiditate-at', 'Sed dolorum consequuntur laborum ab sed sunt quo. Praesentium excepturi fugit saepe sed. Voluptatem maxime voluptates minus excepturi iste.', 'Inventore reprehenderit et omnis sed quibusdam. Odit ex aut doloremque dolores fugiat. Facere aspernatur tenetur magnam vitae odio. Sunt unde architecto praesentium omnis. Eveniet sunt deleniti vel et alias. Laboriosam similique numquam hic. Unde molestias excepturi aut. Quo commodi aut et excepturi reprehenderit odit ex. Similique omnis dolorem distinctio labore optio iure. Et ut ea saepe voluptatum deserunt quia dolorem. Enim voluptatem sequi ab dolorem eos.', 'South Spencershire', 1, '2019-09-29 17:38:47', '2019-09-29 17:38:47'),
(47, 5, 'Dolorem quam.', 'repudiandae-voluptas-voluptatem-sequi-enim-tempore', 'Fugit accusantium pariatur rerum repellendus voluptatem quod in. Nobis reiciendis sequi vitae non assumenda dolorum. Odit id aut aperiam eveniet. Aut et dolores iure impedit.', 'Sit quos et omnis sit voluptates ut earum. Dolore excepturi unde amet eum sint non debitis sint. Ipsum quibusdam minus vel vel. In laboriosam quasi quod reprehenderit veritatis ullam. Aliquam neque reiciendis aut voluptatem nihil inventore et. Omnis qui soluta nobis placeat non doloribus quaerat. Sequi sit atque omnis dolor sed fugiat est. Eos omnis occaecati quaerat qui inventore mollitia. Quod voluptatibus nisi rerum unde accusantium perferendis sint. Ut in illo excepturi sequi illo distinctio. Voluptas vero quia et enim.', 'Adelberthaven', 1, '2019-09-29 17:38:47', '2019-09-29 17:38:47'),
(48, 5, 'Quam suscipit.', 'et-occaecati-omnis-non-perspiciatis-dolorum-quia', 'Saepe nesciunt qui optio. Qui odio voluptatem dolorem maiores repellat. Commodi molestiae ipsa maxime dolorem facere vitae.', 'Debitis sit mollitia ea rem voluptatem. Quos officiis debitis assumenda maiores harum veniam. Praesentium temporibus beatae dicta ex assumenda commodi iusto. Rerum facilis ex accusantium suscipit molestias aut cumque qui. Modi nemo maxime dolores non soluta consequatur qui qui. Eligendi aut consequatur sit aut dolor voluptas et sint. Alias error earum fugiat similique odio. Adipisci ut adipisci facere iste voluptatem sequi. Et occaecati voluptas tempore voluptatem autem. Esse officiis nihil et est eveniet. Iure voluptatem dignissimos esse suscipit totam ullam eos. Aut aliquid asperiores sit.', 'New Gina', 0, '2019-09-29 17:38:47', '2019-09-29 17:38:47'),
(49, 5, 'Et quo corporis.', 'quia-et-aut-laudantium-ut-aut', 'Adipisci et aut natus expedita tempora quo ea. Optio nesciunt at hic ea aut quaerat est. Omnis et molestiae illo ad.', 'Consequatur a quia nostrum officia itaque. Necessitatibus sint voluptas voluptatem illo dolor voluptas sit at. Natus quia nihil officia odio. Modi est nisi accusamus expedita ut numquam nesciunt qui. Cum ullam ipsum inventore tempora. Error quae quo omnis enim vitae. Aut corrupti eligendi laborum quam rerum repellendus. Nisi ab explicabo et suscipit porro est. Totam commodi quia culpa quia eaque aperiam voluptatum. Omnis velit sunt aspernatur autem aperiam molestias pariatur iusto. Consectetur quia sed est dolorem blanditiis.', 'West Katharina', 1, '2019-09-29 17:38:47', '2019-09-29 17:38:47'),
(50, 5, 'Velit excepturi voluptas.', 'nemo-aperiam-pariatur-laboriosam-aperiam-voluptas-voluptas', 'Minus ad accusamus atque. Ut adipisci assumenda qui accusantium velit et. Mollitia nihil dolorem sapiente aliquam.', 'Reprehenderit quaerat accusamus et at. Error deleniti beatae magni ut adipisci quidem nam. Aut praesentium tempora quos tenetur. Nesciunt odio et rerum. Mollitia molestias doloribus dicta ea. Incidunt soluta accusantium tempora nesciunt assumenda. Illum itaque earum iusto corporis. Modi asperiores architecto veritatis quis autem nostrum. Qui delectus ut ut voluptatem at dolores. Eligendi enim dolores ad dolorem eius quae voluptates. Accusantium et quia neque maxime sapiente nulla quia. Provident repellat quo qui asperiores sit sit.', 'New Crawfordfurt', 1, '2019-09-29 17:38:47', '2019-09-29 17:38:47');

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
(1, 'Keyon Klein DVM', 'rolfson.jerod@example.net', '2019-09-29 17:38:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2MlK2DaT1d', '2019-09-29 17:38:44', '2019-09-29 17:38:44'),
(2, 'Nigel Dach', 'bbarton@example.org', '2019-09-29 17:38:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UNFU4dxQBI', '2019-09-29 17:38:44', '2019-09-29 17:38:44'),
(3, 'Abagail Sporer', 'kris.medhurst@example.com', '2019-09-29 17:38:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Td2lSTqw2j', '2019-09-29 17:38:44', '2019-09-29 17:38:44'),
(4, 'Clare Hauck II', 'dean.gusikowski@example.com', '2019-09-29 17:38:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Knq9zJOBDG', '2019-09-29 17:38:44', '2019-09-29 17:38:44'),
(5, 'Dax Boyle', 'kaleigh.dickinson@example.org', '2019-09-29 17:38:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KgUDnn54oY', '2019-09-29 17:38:44', '2019-09-29 17:38:44');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

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

-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Сен 23 2019 г., 06:21
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
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `category_post`
--

CREATE TABLE `category_post` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(30, '2019_09_17_193853_create_posts_table', 2),
(31, '2019_09_17_194152_create_comments_table', 3),
(32, '2019_09_17_194459_create_categories_table', 4),
(33, '2019_09_17_194901_create_attributes_table', 5),
(34, '2019_09_17_195124_create_value_attributes_table', 6),
(35, '2019_09_17_195717_create_category_post_table', 7),
(36, '2019_09_17_200021_create_attribute_category_table', 8),
(37, '2019_09_20_153732_create_avatars_table', 9);

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
  `publication` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic`, `slug`, `entry`, `body`, `publication`, `created_at`, `updated_at`) VALUES
(1, 1, 'Odit quidem.', 'suscipit-et-vel-quas', 'Sunt sint perferendis ut beatae. Ab officiis est voluptas hic quis. Amet rerum provident qui. Ipsa tempora neque qui.', 'Cupiditate tempora sunt exercitationem doloribus et nihil amet. Ab magni dolor et voluptatem. Sint a nihil repellat ut asperiores est quod. Dolores odit repudiandae magnam quo temporibus quia tempora sunt. Voluptatum quia aut est quasi eum provident cumque. Facere quia dignissimos nulla eaque sit et. Dignissimos ex facere quasi aliquam consequatur. Molestiae iste aut rerum quasi sequi delectus eligendi. Nam numquam assumenda laborum dicta cum. Dolor sit quia et. Aut facilis consequatur et aut ut.', 1, '2019-09-22 15:51:26', '2019-09-22 15:51:26'),
(2, 1, 'Quibusdam.', 'dolorem-ab-et-illum-sequi-commodi', 'Aut dolor molestiae voluptatem expedita a. Vitae eum maxime sit itaque sit repellat est. Et voluptatem magnam aperiam sed repudiandae. At ea accusamus amet sapiente et assumenda nihil.', 'Commodi aut harum molestiae placeat qui aspernatur quae. Quod iure perferendis ut. Ipsam tempora atque explicabo fugit sapiente. Non iure numquam aut tenetur fugit a quia. Rerum dignissimos vel maxime velit ut odio. Consequatur non deleniti aperiam. Voluptates consequatur modi tempora sit. Qui esse iste vitae. Consequuntur voluptatem ut quae ex adipisci. Temporibus iure cum ut quod. Quam laborum explicabo doloribus dolorem odit voluptates.', 0, '2019-09-22 15:51:26', '2019-09-22 15:51:26'),
(3, 1, 'Alias.', 'ut-corporis-perferendis-facilis-magni-commodi-a', 'Animi officiis aliquam sunt voluptate perferendis expedita. Reprehenderit perspiciatis similique ut omnis optio. Ea numquam vitae velit expedita doloremque doloremque.', 'Eius officiis dolor accusantium quidem. Error rerum non sit autem et quae qui. Beatae voluptas in eum aspernatur. Atque sit et quis consequatur. Et quos enim iusto temporibus minima iusto aliquid. Rem distinctio minima et aut rem. Sit veritatis aperiam similique similique tenetur. Esse possimus est error alias maiores. Ducimus consequatur natus et est porro voluptas nam. Aut perspiciatis ut provident labore quia. Nemo molestiae numquam voluptates minus rerum ipsa. Enim deserunt excepturi iusto repellendus error cupiditate.', 0, '2019-09-22 15:51:26', '2019-09-22 15:51:26'),
(4, 1, 'Quia nemo.', 'repellat-voluptatem-ea-corporis-deleniti-ipsum-aliquam-asperiores-earum', 'Asperiores voluptatem impedit aspernatur voluptatem in. Id ipsa accusantium illo quo debitis officiis excepturi. Et non aliquam veritatis error.', 'Dolor doloribus dicta dolorem esse ut. Doloremque libero eum tempora non ducimus porro. Modi quibusdam quo doloremque neque error porro. Minus totam optio id consequuntur omnis. Itaque voluptatem delectus pariatur quod autem voluptas. Dolor excepturi sequi sit consequuntur. Neque nemo fuga aspernatur commodi. Quo facilis vel quia quia. Ducimus corporis est illum rerum aut vel earum. Impedit ad ipsam non. Dolorum fugiat sit quia et suscipit. Voluptatem sed eos unde perspiciatis. Ipsum ut voluptas aspernatur animi et ipsum.', 0, '2019-09-22 15:51:26', '2019-09-22 15:51:26'),
(5, 1, 'Dolor.', 'est-necessitatibus-sint-ipsa-molestiae-mollitia-hic-maxime', 'Minus repellat hic et veritatis optio et. Qui perspiciatis sequi accusantium ipsum dolores est. Facilis dolorum tempore molestias vel dolorem. Aut sit quas doloribus dolorem expedita.', 'Quae eos quasi possimus dolor deserunt. Aliquid hic rerum nostrum dolorem qui non tenetur. Quibusdam molestias accusantium aliquid quas. Optio sed ut officia voluptatum modi non. Sit totam non aspernatur repudiandae odit quaerat voluptatum. Eius rem omnis sunt enim. Delectus aliquam dicta rerum omnis sit. Iste enim fugit voluptatem quaerat est autem cumque. Corrupti et nihil laudantium et quia ut. Eius ut dolorem non esse magnam. Aut molestiae deleniti architecto cumque. Ab dolorem voluptatum repellendus mollitia sunt accusamus consequatur. Excepturi sit hic et sed sunt praesentium eos.', 0, '2019-09-22 15:51:26', '2019-09-22 15:51:26'),
(6, 1, 'Et accusamus.', 'magni-laboriosam-cumque-consequatur-et-non-consequuntur', 'Inventore molestias amet voluptatem vitae. Id consectetur ut saepe non. Unde explicabo inventore iusto odio quisquam vero.', 'Fuga eaque quis cupiditate magni dolores enim quo. Ullam nam et impedit velit sint neque. Sit excepturi a qui nihil est quia. Architecto recusandae quia ex quis voluptates sequi sed. In id aut architecto vero. Fugiat quia voluptatem ipsa ipsa id molestiae. Odit eveniet maiores suscipit provident. Ea voluptates quas laborum cum dolorem. Modi perferendis quasi cum qui culpa sed beatae. Consequuntur eos quia cupiditate temporibus ipsum odio architecto. Minima fugit qui illo nam amet tempore nisi.', 0, '2019-09-22 15:51:26', '2019-09-22 15:51:26'),
(7, 1, 'Veritatis ea.', 'voluptate-aspernatur-accusantium-nihil-incidunt', 'Molestiae mollitia ut quae amet neque veritatis. Enim delectus qui odit et sit a delectus. Quo qui voluptatem necessitatibus ipsum minima.', 'Deleniti aut voluptatum aut distinctio itaque consectetur. Earum atque ut ipsum quibusdam quia non. Perferendis saepe dolores qui vel animi tempore sed. Qui molestias sit at aut quia. Est illo beatae minus ipsam sit reiciendis suscipit. Omnis veniam voluptatem et qui sit ut. Totam dolores omnis ullam quam quia. Dolor sed tempore et. Illum ducimus iste nulla nam ab expedita. Repellendus pariatur non non tempore amet ut. Laborum et voluptas commodi laudantium. Similique perspiciatis mollitia inventore omnis sed aut distinctio. Ut autem corrupti ex et rerum architecto odit.', 0, '2019-09-22 15:51:26', '2019-09-22 15:51:26'),
(8, 1, 'Eveniet.', 'non-beatae-voluptatem-dolorem-delectus', 'Dolores voluptate quis maiores provident harum neque. Et non dolor voluptas. Voluptatem quo vel perspiciatis rerum quae qui maxime blanditiis. Et est vero sequi tenetur blanditiis.', 'Repudiandae commodi veritatis unde repudiandae officiis. Consequatur aut ut quo saepe incidunt. Blanditiis officiis sit ut non. Deserunt laboriosam voluptas repellendus provident sit illum. Nam et ducimus repellendus sit accusamus quos doloremque. Autem quae assumenda magni incidunt tempore dolor quia. Tempora ad vitae maiores qui odit culpa. Modi sit voluptas veniam molestiae expedita laudantium. Totam magnam ullam iste nobis eaque dolor consectetur reprehenderit. Quas ipsa expedita mollitia nihil distinctio quis.', 0, '2019-09-22 15:51:26', '2019-09-22 15:51:26'),
(9, 1, 'Quia cupiditate.', 'adipisci-omnis-qui-perferendis-nesciunt', 'Enim maxime impedit ut alias sed dolores ut. Possimus sit quia aut necessitatibus voluptas. Laudantium sint optio nesciunt mollitia sapiente nesciunt. Omnis accusantium vel sit soluta.', 'Tempora doloribus et eos. Et sed recusandae repellat sint facilis omnis et in. Soluta voluptate quae labore pariatur dolores. Facilis eligendi veniam pariatur culpa beatae fugit. Pariatur aut nihil ut harum. Quam sed eius maxime ut enim. Et corrupti nihil tempora quo. Dolores aperiam dolor sit amet quis facilis. Magnam est expedita unde sed voluptatem dignissimos sint. Dicta corrupti voluptas exercitationem nostrum expedita. Aut fugiat reiciendis dolores aspernatur minima.', 0, '2019-09-22 15:51:26', '2019-09-22 15:51:26'),
(10, 1, 'Sint.', 'nisi-odio-quo-sed-alias-et-quod-labore-deserunt', 'A dolor et quasi dolor necessitatibus fugiat magnam aut. Repudiandae libero aperiam ad ab. Eum est beatae amet voluptas et odio porro.', 'Similique porro doloribus sint inventore aliquid. Commodi quis laboriosam modi. Voluptatem quaerat aperiam voluptates aperiam. Ut recusandae aperiam eum eum. Ipsa nostrum ratione maiores autem. Excepturi eveniet animi neque. Enim quia velit quidem dicta. Ut quam amet cupiditate nobis ratione ea. Sed nobis doloremque aut sit et nostrum veritatis. Aperiam sequi est et maiores perspiciatis minima. Labore fuga aperiam odit iure. Id officiis sed commodi fugiat exercitationem voluptas aut. Quibusdam nesciunt aut quibusdam. Dignissimos qui consequatur ut.', 1, '2019-09-22 15:51:26', '2019-09-22 15:51:26'),
(11, 2, 'Beatae commodi.', 'dolore-amet-perferendis-dolorum-voluptatem', 'Aut eius accusantium assumenda nostrum ratione. Adipisci amet inventore optio quia. Unde sunt quia laboriosam perferendis neque asperiores ducimus.', 'Dolor vel modi sed consequuntur. Repellat rerum architecto architecto. Debitis porro neque incidunt. Qui enim ea officiis. Voluptates porro similique voluptas voluptate. Est autem aliquid rerum illum rem tempora reprehenderit. Deleniti nihil provident vel et. Aut debitis qui suscipit nihil quos rem. Reiciendis eum ullam est quo dolorem quia sequi dolores. Magnam et nulla unde odit fuga non sed officia. Harum illum sint perferendis ut optio dignissimos commodi aut. Et non distinctio itaque ut veritatis. Quis provident alias voluptatem eaque et quia. Dolorem voluptate quia ex sed.', 0, '2019-09-22 15:51:26', '2019-09-22 15:51:26'),
(12, 2, 'Perspiciatis.', 'dignissimos-aut-molestiae-aut-fugit', 'Eum cum optio repellat. Possimus soluta placeat id praesentium expedita est et id. Distinctio dolores cum ut nihil. Aut qui praesentium et dolorum molestiae veniam.', 'Aliquam similique enim voluptatibus ad iusto. Vero magni voluptas nam modi et. Eligendi animi necessitatibus saepe laudantium similique voluptatem. Quis recusandae voluptas vel. Ut at qui quasi explicabo quisquam earum. Rerum placeat qui commodi cum quo aut. Vitae dolore sit aut amet dolorem ea incidunt. Et autem ut iusto. Assumenda unde voluptates doloribus id at repellendus. Ipsum fugit est maxime est. Beatae voluptatem et consequatur sequi et.', 0, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(13, 2, 'Est.', 'nesciunt-repellat-nulla-dolorum-aliquam', 'Aut quis eius repellat vel veritatis tempora a. Nobis est est quis esse.', 'Quibusdam iste est a labore. Fugit aut eos ipsa ea ab numquam. Iste quidem et blanditiis maxime quasi. Quos eligendi omnis est id cum qui ipsa. Magnam eum totam ut ut. Consequatur numquam saepe est velit sit maxime et. Optio non incidunt nihil. Consectetur id ut quod earum error ullam. Repellat accusantium eos qui sit eius sequi. Consectetur et molestias tempore dolorem enim. Nam at vitae quibusdam quis officiis quia ipsam consequuntur. Est aut officia voluptatem aut.', 1, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(14, 2, 'Fugiat ut.', 'voluptates-quae-culpa-quasi-recusandae-sint-qui', 'Enim aliquid nostrum et voluptate et id dolores. Magni ut aut asperiores eum. Fuga nisi perferendis fuga et debitis.', 'Quas et ut laborum repellendus. Et molestiae voluptatem commodi sint voluptas rem illum. Animi ut autem neque eaque. Est aut sunt iste quo. Id sint et quae sint aut. Beatae maxime qui atque nobis ipsam id libero. Temporibus ut iure dolores et ut. Ex consequuntur saepe qui omnis ut est quis veritatis. Officia voluptate blanditiis dolor ducimus autem consequatur quidem. Debitis alias distinctio tempore sit sunt.', 0, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(15, 2, 'Mollitia est.', 'provident-illo-voluptatum-sint-soluta-quo-facere', 'Impedit dolorem vel dolore soluta et voluptatem unde. Non inventore minus sed aliquam numquam eos quae rerum. Magni officiis sunt maiores possimus. Omnis a aspernatur omnis inventore.', 'Et dolorem deserunt et nam ut voluptate est. Illo natus voluptates est quaerat. Possimus beatae impedit autem voluptatem id rerum. Fugiat veritatis ut distinctio et. Eum consequatur dolores et. Laudantium deleniti vitae iste maxime. Et qui ea atque eaque minus occaecati. Qui est officia quam optio. Rerum alias corporis eligendi enim. Sit non doloremque et. A molestiae qui exercitationem ut et et voluptas id. Fugiat et architecto sapiente eum. Quas possimus et voluptatem rerum nihil odio. Nam et error eveniet quos excepturi optio.', 1, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(16, 2, 'Eius.', 'eaque-et-maiores-omnis-similique-dolores-aut-veritatis-accusantium', 'Ullam est explicabo cum. Est quaerat aperiam nisi nemo. Quos doloremque ipsam et. Sed eligendi minus aliquid labore modi exercitationem.', 'Nihil vel odio minima repellendus sit. Accusamus odit eius sit ut facilis impedit. Culpa aut eligendi magnam asperiores nesciunt rerum. Mollitia sit cupiditate aut natus. Molestiae tenetur unde aperiam. Nihil quibusdam placeat omnis facere molestias dignissimos veritatis. In maxime unde vel sed cumque. Maxime et itaque quo veritatis beatae odio est. Quas corporis necessitatibus soluta voluptas. Sit natus iusto fuga deleniti dolor est quasi. Nostrum et enim fugiat numquam libero.', 1, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(17, 2, 'Quia.', 'voluptatum-consequatur-aut-laborum-et-molestiae', 'Et eum consequatur praesentium pariatur. Et ut sed nesciunt maxime corrupti ut. Nihil atque aut eaque magni repudiandae enim autem. Quas voluptatibus tempore ipsam.', 'Hic quia numquam cupiditate molestiae reprehenderit molestiae. Porro minus vero cum eligendi vero enim saepe. Culpa eum veritatis quam reiciendis accusamus dolore. Voluptas hic nisi laborum eum reiciendis nemo. Consequatur illo exercitationem perferendis fuga amet. Atque adipisci ducimus qui id numquam. Officia voluptates earum quia dolorum itaque. Ut officiis sint repellat non ullam. Et mollitia vel provident nihil est iure.', 1, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(18, 2, 'Non.', 'eum-voluptas-maxime-aspernatur-ut-id-eum-unde-consequatur', 'Cupiditate cupiditate provident explicabo. Inventore nihil veniam numquam voluptatibus. Optio similique sed enim nulla.', 'Eos corrupti nam autem rerum non et. Cum velit enim consequatur minima incidunt exercitationem voluptas consequatur. Magnam et veritatis qui aliquam quia error possimus velit. Facilis reprehenderit qui rem non nesciunt. Quasi placeat architecto minus est sunt et. Rem quo excepturi architecto doloribus. Nesciunt sequi quam voluptas in laboriosam laboriosam dolor. Vero voluptatem ullam voluptatem et corrupti iure sed adipisci. Ex natus velit magni animi voluptas.', 1, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(19, 2, 'Delectus amet.', 'praesentium-voluptatem-fugiat-rerum-possimus', 'Rem et libero quibusdam quod distinctio dolor debitis. Sit sunt sit dignissimos consequatur eaque animi. Repudiandae est ut maiores asperiores laboriosam molestiae. Ut et nisi necessitatibus dolorem.', 'Enim nulla dignissimos eos autem sunt veniam optio. Qui fugiat repellendus rerum sint necessitatibus laboriosam. Explicabo vel et ex velit omnis aut. Voluptates ratione repellendus autem ducimus temporibus. Dolores quia provident et nihil maxime similique ipsum. Est possimus architecto voluptate voluptates. Ullam beatae minima quia earum porro occaecati dicta. Suscipit iusto aspernatur consequuntur quod tenetur quidem ad. Voluptas recusandae qui ducimus iure aliquid. Ratione ut iste id qui sed rerum facere.', 1, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(20, 2, 'Officiis.', 'quo-sit-omnis-iusto', 'Nisi amet assumenda a voluptas et possimus et. Voluptates sapiente non quos officia beatae aut officiis. Et qui occaecati inventore optio.', 'Quia illum asperiores necessitatibus molestiae nostrum nulla cum dolorem. Blanditiis eum facere incidunt iure omnis inventore quas. Quae ea quo non exercitationem aut libero non. Aperiam dolor quaerat sed labore quasi velit. Est eum qui temporibus. Ipsa quas doloribus possimus aliquam. Nisi animi commodi quia quibusdam. Ipsa provident eos sunt suscipit consequatur. Tempora molestiae ut maxime in ea. Eum voluptas incidunt dolor expedita. Numquam qui minima et. Id enim reiciendis in necessitatibus aspernatur autem.', 1, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(21, 3, 'Ab fugit.', 'repellendus-velit-inventore-aliquam-neque-laudantium-sint-quisquam-ea', 'A iste corporis sunt corrupti. Debitis consequuntur ad delectus culpa eos doloribus dolorem laborum. Qui aut nisi ipsam iste rerum sint omnis et.', 'Adipisci et et itaque minima doloribus atque. Asperiores et cum architecto explicabo. Doloremque quo maiores consequuntur quia. Accusantium laudantium error vel molestiae exercitationem et. Voluptatem consequuntur sit dolorem in vero dolore. Est tenetur dicta quaerat voluptas natus assumenda et ex. Et quae delectus adipisci. Fuga harum nulla quis sed. Est totam voluptas voluptas qui reprehenderit cupiditate unde tempora. Aut omnis alias deserunt ut. Architecto maiores numquam expedita voluptatem eos quia delectus. Iste rerum iure ab incidunt et quo enim. Et placeat libero voluptatem non.', 0, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(22, 3, 'Facere.', 'cumque-eos-rerum-earum-sunt-porro-sequi-rerum-et', 'Ea et quia debitis debitis consequuntur beatae quo. Eos explicabo excepturi odio occaecati molestiae nobis. Eum ipsam mollitia cumque voluptas minima et. Reiciendis nulla voluptatem iste nemo.', 'In sit sit nobis. Et ipsa qui est quia iste est laudantium. Quisquam maiores delectus at voluptatem fugiat adipisci aliquam magnam. Asperiores aut vel vero enim delectus temporibus. Velit libero ut nemo eum aut dolor. Et natus esse et nam eos temporibus. Numquam exercitationem sunt perferendis qui nihil blanditiis totam. Deleniti rerum expedita et ipsa eius. Consectetur impedit aperiam ullam tenetur. Exercitationem quisquam exercitationem mollitia non quae non beatae. Quasi assumenda saepe amet quod ipsam numquam. Ratione sed facilis perferendis ea.', 1, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(23, 3, 'Aliquid rerum.', 'autem-quam-et-iste-reprehenderit-voluptatibus', 'Officiis nobis laborum rerum cum sint. Enim aut est et quidem et illum quia quo. Ullam et laborum cum alias non a saepe voluptatem. Quam et dicta sunt amet.', 'Odit praesentium sed numquam et rem rerum molestias. Quia autem quia ad aut minus. Quia ullam magnam dolor eos modi. Beatae suscipit magnam odit consequatur voluptates quasi deserunt. Vitae voluptates hic aperiam dolores. Et consequuntur eum qui quam sapiente qui tempora. Ut enim doloribus qui molestias repudiandae laudantium quo. Quam vel et iusto voluptatem. Velit illum cumque maiores qui. Est eaque qui consequuntur odit aut. Quia dolorem vel eligendi aut. Dolorum architecto aliquid animi omnis earum et. Id cum dolor ut. Temporibus voluptas culpa magni aut id.', 1, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(24, 3, 'Quia.', 'eveniet-necessitatibus-enim-nam-veritatis-dolor-provident-quia', 'Qui voluptates non voluptatem quia dolores explicabo voluptatibus. At qui et dignissimos omnis necessitatibus sit assumenda. Est velit dolores rerum quasi asperiores itaque.', 'Veritatis perferendis suscipit labore et voluptate a fugit. Animi ab recusandae optio. Consectetur possimus laborum ut quia animi architecto quis. Ipsa quaerat qui velit dolorum similique ad eos. Vel sint dolorem et mollitia culpa ea aut sint. Debitis sit explicabo temporibus accusamus. Suscipit sint et earum animi repellat dicta iste totam. Quod molestiae laboriosam eos. Tempora eum distinctio nihil illo voluptatem labore. Autem tempora aspernatur et dignissimos cum.', 0, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(25, 3, 'Explicabo.', 'quia-expedita-consequatur-aut-veniam-magni-quos-eaque', 'Qui expedita assumenda in odio. Perspiciatis nisi et sapiente sint perspiciatis consequuntur dolorem. Iure tempore veritatis animi eveniet. Molestias ut et soluta quis totam nostrum.', 'Quasi consectetur totam atque iusto ut. Nesciunt deserunt facere aut alias fugiat. Odit voluptates deserunt corporis corrupti. Quia adipisci eos voluptatem. Dolores ducimus vitae dolor ab ex quia. Molestias odio eum dolores qui. Aut aperiam aspernatur quis nisi. Ea voluptate sed neque consequatur molestiae quia corporis. Non est perspiciatis eveniet eos qui reprehenderit est eos. Quasi officiis quisquam dicta dignissimos dolorem officia. Odio qui quae non molestiae. Est optio quia voluptate non.', 0, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(26, 3, 'At quod.', 'aut-nihil-maxime-temporibus-facere-qui-modi-eveniet-similique', 'Dolores consequuntur repudiandae animi totam facilis enim. Aliquid ut molestiae cum ullam voluptas veritatis. Et perspiciatis est et quas quia. Quae sed dolores aut excepturi in odio repellat.', 'Minus excepturi corrupti nihil quo. Repudiandae quia eum cum earum aliquam. Molestias delectus illo delectus autem rerum magnam. Placeat error rem qui et quaerat. Est adipisci assumenda expedita iusto quia dolor inventore aspernatur. Deleniti quia quae expedita reprehenderit fuga aut. Sunt omnis laborum et enim omnis voluptas omnis pariatur. Dolorem repellat similique aut et dolorem nemo. Aut ipsam fuga similique. Veritatis in qui sint blanditiis cumque quia.', 0, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(27, 3, 'Maiores.', 'quia-molestiae-deleniti-soluta-perspiciatis-veniam-explicabo', 'Eos minima vel cupiditate et quaerat. Sed dolores aut repudiandae facilis inventore assumenda. Optio ipsum voluptates consectetur corrupti voluptates.', 'Dolorum et cupiditate cupiditate sit ut asperiores ipsam. Qui vel sunt possimus itaque odit. Recusandae soluta et ullam officiis ipsum omnis. Adipisci ut voluptatum suscipit animi sed aut rerum placeat. Rerum animi vel vero officia sit ut. Dolores quidem ut cumque porro et ipsa error eum. Sit tempora nulla voluptas occaecati labore. Fugiat placeat vel perferendis sit quisquam et aut. Nostrum maxime voluptatem a asperiores fuga sit impedit. Quia officia esse non incidunt autem. Cumque enim reiciendis rerum porro iste.', 1, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(28, 3, 'Exercitationem velit.', 'occaecati-qui-blanditiis-dolorem-tempora-eos', 'A molestiae ut omnis dignissimos ut quasi unde. Et similique expedita sit animi voluptates porro dignissimos. Harum esse enim veniam suscipit.', 'Aliquam et sunt occaecati tempore corrupti quisquam accusantium. Et ut sapiente libero inventore explicabo cum est. Quidem sunt aut laboriosam repudiandae. Sunt voluptatem nam est cum consequatur ut. Optio possimus aut ipsa repellendus tempora delectus ea. Blanditiis dolor sit fuga velit quasi maxime. Eos suscipit est et enim iusto. Asperiores voluptas eligendi ipsa sed.', 0, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(29, 3, 'Voluptatum et.', 'itaque-qui-culpa-occaecati-ut', 'Quas a est aut numquam. Sequi quia architecto quia nihil neque. Magni impedit impedit laboriosam assumenda nobis omnis quia.', 'Odit enim magni vel voluptatibus dolor minima ad dolorem. Voluptatem animi placeat quod sit cupiditate in. Sed aut doloribus iste est quis quisquam. Dolor consequatur excepturi soluta vel debitis. Laboriosam est ullam aspernatur eum saepe voluptatem. Voluptatum non quam commodi aut est quia. Quis dignissimos provident eos molestias minima sunt placeat tempore. Aut sit aut id ab velit nemo. Inventore dolorum enim odio voluptatem perferendis quibusdam recusandae fugit.', 0, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(30, 3, 'Molestiae quis.', 'ut-in-illum-reiciendis', 'Temporibus reiciendis et recusandae explicabo. Animi recusandae rem dolorem omnis corrupti. Quo adipisci ad quod est aut. Minus enim recusandae dolorem veritatis aperiam vero.', 'Minima nulla quibusdam quo magnam eveniet omnis. Sunt autem rerum autem commodi inventore totam esse. Quae at eos esse dolor. Excepturi qui repellendus doloremque at rerum quo dignissimos. Omnis incidunt harum dolorum id. Doloremque corporis officia aut aut reprehenderit. Ad sit magnam assumenda soluta quibusdam natus sunt et. Eligendi cupiditate quia occaecati ex. Harum pariatur quisquam itaque quibusdam omnis vero. Officiis eius nihil consequuntur. Autem eligendi nam beatae nemo possimus quod. Et aperiam beatae reprehenderit illum illum tenetur qui. Est voluptatem sit eius.', 0, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(31, 4, 'Voluptas praesentium.', 'velit-earum-sunt-quibusdam', 'Et et autem saepe eum. Vero qui aut quia magni voluptates fuga excepturi voluptas. Non et dolorem omnis est quam. Nesciunt voluptatum dolor minima est.', 'Et architecto consequatur est omnis porro reprehenderit. Repudiandae autem quia rerum perspiciatis fugiat quam. Quia placeat dolor odio modi quaerat harum tempore. Neque qui et odio est. Non magnam et et eos. Et quisquam reprehenderit aut consequatur. Numquam totam qui ut officia accusamus ea non. Asperiores facere nesciunt ipsa et commodi. Maiores qui accusantium eos fugit maiores iste suscipit adipisci. Ut quo culpa illo est voluptatem. Omnis consequatur neque quasi a et voluptas et.', 1, '2019-09-22 15:51:27', '2019-09-22 15:51:27'),
(32, 4, 'Voluptatum sapiente.', 'illum-maxime-tempore-doloremque-et-quod-voluptas-hic', 'Ut aut eum enim dolorem ullam eos rerum. Ut excepturi rerum ea fugit.', 'Deleniti quae voluptates laboriosam dolorem. Sint asperiores omnis vel accusamus perspiciatis aliquam doloremque hic. Consequuntur soluta cupiditate et deserunt maiores. Sequi facere aut voluptatem. Beatae consequuntur natus qui sunt dicta architecto saepe eum. In repudiandae optio quia in architecto autem sed ratione. Consequuntur incidunt et dolore aut id sapiente. Mollitia numquam distinctio non corrupti. Veniam et sit alias quidem. Ut laborum iure est saepe ratione. Fugiat eligendi unde est. Quisquam dolorum quibusdam ab et eius voluptates expedita.', 0, '2019-09-22 15:51:28', '2019-09-22 15:51:28'),
(33, 4, 'Hic.', 'ad-et-culpa-alias-dicta-modi-incidunt-nesciunt-nesciunt', 'Illo quo non minima perferendis dolor. Quo sequi voluptas non. Nostrum neque ut sit nihil. Dolor rerum quo et aspernatur. Repellat blanditiis reiciendis repellat incidunt.', 'Aut corrupti sed totam omnis molestias. Earum ipsum magni modi neque. Qui dolores voluptatem et sit. Et eaque cupiditate accusamus et consequatur in. Accusantium amet aut culpa sed. Ut perspiciatis explicabo et quia asperiores unde natus. Doloremque vel facere maxime natus qui veniam omnis. Alias similique architecto voluptatibus enim. Dolores illum non a illo libero. Minima quod eligendi cumque explicabo iusto. Cumque odio commodi corporis et. Totam esse sed dolorum. Voluptas officiis et sint voluptas est accusamus enim nisi.', 1, '2019-09-22 15:51:28', '2019-09-22 15:51:28'),
(34, 4, 'Sit.', 'qui-consequatur-quia-et-ut', 'Dolorem occaecati suscipit quaerat accusantium dolor. Amet in et reprehenderit aperiam voluptatem fugiat. Et non suscipit rerum dicta repudiandae. Et earum aspernatur harum illo a voluptatem quis.', 'Id maxime aut sequi. Nam voluptatem omnis assumenda quis quam animi ut. Sequi aut beatae corporis voluptatem suscipit aut mollitia saepe. Accusantium mollitia qui fuga voluptatem optio eligendi. Alias doloribus vel et cumque consequatur dolorem. Alias nihil provident voluptates voluptatum ratione at consectetur. Dolorem sint aspernatur at quia. Similique ut dignissimos ea dolorem exercitationem et quia. Est eaque labore et aut. Quis et ipsum sit exercitationem non.', 1, '2019-09-22 15:51:28', '2019-09-22 15:51:28'),
(35, 4, 'Corporis nesciunt.', 'quam-itaque-fugiat-reprehenderit-vero-doloremque-minima', 'Est culpa omnis a omnis libero numquam est. Vero recusandae atque illo. Occaecati sapiente velit veritatis officiis. Veritatis voluptatem porro aperiam quis praesentium suscipit in.', 'Officiis velit mollitia sed rerum eum repellendus aliquam. Voluptate veniam modi consequatur placeat. Id modi aliquid ipsum officia dolore harum. Et assumenda laboriosam dolorem amet aut. Debitis tempore numquam minus dolores non suscipit debitis et. Qui et architecto ratione quibusdam ullam qui rerum et. Labore animi sed placeat quos et nemo. Ea sunt doloribus voluptatum vero sed vero quia. Ipsa dolorum beatae voluptates veniam aut rem nobis nihil. Quae libero repellendus laudantium quasi fugit neque.', 0, '2019-09-22 15:51:28', '2019-09-22 15:51:28'),
(36, 4, 'Aut sunt.', 'incidunt-excepturi-est-maxime-ut', 'Totam ut consequatur sapiente omnis. Voluptatem nisi consectetur animi. Quis accusantium quod doloribus libero et. Itaque commodi similique tempore.', 'Ad ut ut aut. Impedit quae quia in nesciunt. Nobis enim eligendi qui perferendis dolore. Et aut culpa quo sit perspiciatis. Sint dolor tenetur qui voluptatem voluptatibus. Ut consequatur nam autem iusto occaecati accusantium commodi laboriosam. Alias et eius aliquid nesciunt. Aperiam non eum sunt est voluptate inventore rem qui. Quibusdam dignissimos quidem hic non necessitatibus. Praesentium veniam et nesciunt praesentium earum ipsam ex. Est id similique architecto beatae id consectetur.', 1, '2019-09-22 15:51:28', '2019-09-22 15:51:28'),
(37, 4, 'Molestiae possimus.', 'est-quia-a-accusantium-maxime-eius-est', 'Ut mollitia itaque neque perferendis impedit vero. Dolor voluptates maxime eligendi magni doloremque accusantium aliquid. Voluptatibus unde eligendi velit ut quia eos occaecati qui.', 'Ratione sit aut rerum odio sit. Et est enim et iusto natus numquam ad. Dicta impedit qui quibusdam impedit velit. Possimus inventore assumenda quos ut ipsum doloremque. Illum maxime assumenda et quis officia rerum. Nisi a ut et quia. Assumenda vel perspiciatis totam tempora cumque corrupti voluptas. Est non dolorem earum facere. Maxime quia corporis vero corporis. Doloremque blanditiis laborum recusandae recusandae non architecto dolorum. Est aut eaque quo at aperiam modi illum sunt.', 1, '2019-09-22 15:51:28', '2019-09-22 15:51:28'),
(38, 4, 'Repellendus.', 'consectetur-aut-similique-ea-dolorem-laborum-sint', 'Totam sed sequi eos nemo eos. Quos rem repellendus quisquam mollitia tenetur molestiae. Veritatis dolorum vero sint suscipit quia. Vel molestias et aut sit distinctio.', 'Excepturi dolor quia quis atque perspiciatis. Et inventore ea animi quia sunt quas eaque necessitatibus. Voluptatum repudiandae sequi sed eius tenetur id. Saepe rerum minima provident commodi distinctio quidem. Qui nesciunt est quia ad nobis ad ea ut. Ea dolorem velit accusantium qui et. Eum quod magnam voluptatem voluptate quam consequatur consequatur. Occaecati quidem commodi omnis consequatur optio iusto. Quo sunt eligendi dolore possimus doloremque earum. Blanditiis ea et ex. Et labore iure perferendis rem. Omnis est consectetur voluptate quos quae.', 0, '2019-09-22 15:51:28', '2019-09-22 15:51:28'),
(39, 4, 'Fuga.', 'sint-dolores-officiis-facere-accusamus', 'Minus iusto doloremque quaerat sed eaque. Sint ratione commodi dolorum expedita.', 'Facere eos non eos quisquam a aliquid. Quasi quo suscipit fugit quis hic. Alias voluptas suscipit molestiae est voluptatem quia animi. Eligendi commodi architecto est ut consectetur doloremque. A quisquam quaerat autem est inventore porro. Sit voluptatem ea et maxime assumenda magni. Cum aut repudiandae omnis eum ut quia eos. A quam a qui vitae voluptas aperiam atque magni. Modi occaecati et illo quo aut. Dolore optio maxime nulla et. Voluptate iste quia repudiandae iste ullam.', 1, '2019-09-22 15:51:28', '2019-09-22 15:51:28'),
(40, 4, 'Est.', 'dicta-earum-aut-aliquid-sint-id-harum-nihil', 'Alias rerum est est qui provident. Corporis sint voluptates beatae vero inventore quia. Aliquam sapiente blanditiis hic facilis deleniti quisquam eum rerum.', 'Consequatur natus repellat voluptatem assumenda deleniti facere esse et. Ut qui recusandae nam qui necessitatibus. Distinctio perspiciatis nostrum nulla est eius. Aliquid ut explicabo dolores dolorem temporibus sequi consequatur. Odit quia nam accusamus qui at. Nostrum saepe ut est quia tenetur quae architecto. Qui hic aspernatur et necessitatibus voluptate quas voluptatibus. Nulla consequatur consequatur consectetur tempore. Et vero itaque consectetur nam blanditiis minus aut numquam.', 1, '2019-09-22 15:51:28', '2019-09-22 15:51:28'),
(41, 5, 'Tenetur.', 'dolorem-porro-nostrum-assumenda', 'Nesciunt vel ea similique repudiandae. Dolorum reprehenderit ad commodi. Commodi voluptatem impedit qui hic. Ipsum consequatur animi reprehenderit odio. Et et quia occaecati nam qui.', 'Temporibus culpa expedita vel eveniet totam. Ducimus ut quidem voluptates velit et. Expedita eos mollitia architecto voluptatem vitae. Itaque perferendis qui repellendus nemo adipisci ut qui. Enim iure ea qui quos qui provident mollitia similique. Aperiam quidem corrupti blanditiis ducimus consequatur. Est esse temporibus temporibus maxime odio. Unde voluptatibus aut maxime fugiat quod nisi. Sit nihil deleniti ut fugiat ipsa eveniet inventore. Accusantium sit nesciunt laboriosam quis. Sint perferendis nisi necessitatibus molestias. Sunt ipsam debitis hic aut.', 0, '2019-09-22 15:51:28', '2019-09-22 15:51:28'),
(42, 5, 'Consequatur ea.', 'sint-ut-rerum-qui-vel-dolorum', 'Corrupti ex adipisci eius nesciunt ratione veniam. Consequuntur deleniti atque ipsa voluptatum illo voluptas qui. Sapiente autem corrupti architecto impedit qui ut.', 'Quia qui quisquam magni nam. Aut temporibus sapiente consequuntur eos. Deleniti est aspernatur repellendus aut. Corrupti suscipit est maxime. Soluta tempora eum odio doloribus rerum temporibus. Asperiores repellendus dolor dolores voluptatem consequuntur dolorum. Id in nihil magnam animi laudantium ipsum. Earum doloribus et ex non quae. Voluptatem maiores et quae sit voluptatem id. Qui cumque sit vero enim qui ut maiores. Esse qui molestiae odio voluptatem id alias. Est id consequatur consequatur esse officia. Asperiores reiciendis voluptas voluptatum illo hic consequatur.', 0, '2019-09-22 15:51:28', '2019-09-22 15:51:28'),
(43, 5, 'Id nemo.', 'quo-ea-quibusdam-ut-ratione', 'Qui delectus corrupti qui eaque omnis fugiat. Quis id dolorum aut nostrum laudantium. Consequatur velit dolores dolorem accusantium. Adipisci eaque ut ratione est.', 'Fugiat consequuntur recusandae necessitatibus voluptatum. Sequi minima incidunt blanditiis. Odit cumque ipsum illum at. Eveniet necessitatibus veritatis velit quia. Reprehenderit eaque quis reiciendis vel aut velit quod. Atque ut ut laborum est ipsa alias aut et. Aut possimus velit aut rerum. Quod autem voluptates cupiditate a exercitationem et quia. Vero accusantium voluptatem minima autem modi et similique dolor. Vitae sapiente et modi quo. Neque rerum qui in iste et.', 1, '2019-09-22 15:51:28', '2019-09-22 15:51:28'),
(44, 5, 'Illo aperiam.', 'fuga-incidunt-nobis-dolores-ut-iste', 'Et sunt eius et tenetur omnis ut. A est quod saepe at in. Ex animi repudiandae et vel tempora. Quo veritatis officia saepe consectetur. Rerum quia est quod cupiditate.', 'Maiores perspiciatis numquam minus accusamus nostrum. Debitis in nihil deserunt voluptatem. Ut quae cum laborum esse expedita dolor. Reprehenderit ipsa modi porro sit minus. Aut qui rerum laboriosam reiciendis occaecati qui. Tempore debitis dolor voluptas sunt sit aut et. Eum possimus aliquam non sint. Odit neque aut et mollitia omnis in. Enim modi est commodi fuga beatae ipsum ut. Laborum eveniet recusandae aut sed eum architecto. Nobis suscipit ipsam aut laboriosam. Asperiores in vel laborum. Et vitae quas itaque assumenda consectetur in in.', 0, '2019-09-22 15:51:28', '2019-09-22 15:51:28'),
(45, 5, 'Distinctio assumenda.', 'molestiae-nostrum-numquam-velit', 'Recusandae necessitatibus modi occaecati delectus. Magni placeat iste possimus repellendus voluptatum similique. Quisquam eligendi fuga ut magnam qui autem.', 'Fuga ea ipsam non perspiciatis. Ea dolor enim similique modi recusandae. Voluptatibus totam aliquid sit qui nisi ducimus non. Autem omnis repellendus quo vel in sint totam. Ab impedit quam voluptates autem facere dolorem non. Tempore reprehenderit delectus expedita est ut. Qui perferendis eos quae quod enim. Adipisci velit quia et distinctio porro non. Nesciunt repellat labore reiciendis quis. Qui ad sint dicta magnam. Fuga consequatur et exercitationem ea. Nemo provident necessitatibus velit reprehenderit et fugit.', 1, '2019-09-22 15:51:28', '2019-09-22 15:51:28'),
(46, 5, 'Culpa perspiciatis.', 'quidem-et-autem-omnis-consequatur', 'Sit consequatur qui necessitatibus quas voluptatem. Illo qui id exercitationem repellendus adipisci. Laboriosam quas id harum.', 'Sed occaecati perferendis quia temporibus id tempora. Quod ut quasi vel sint nesciunt est. Sint minima eius placeat sit laboriosam. Ea soluta ut praesentium odit officia. Suscipit consequatur debitis earum rerum. Dolorem et fugit distinctio nam dolor voluptatem a. Deleniti cupiditate aut sit occaecati earum. At in non beatae dolore illo est voluptatem. Suscipit praesentium reprehenderit sit fuga. Quibusdam consequatur placeat nihil commodi. Qui in quia harum autem tenetur quia.', 0, '2019-09-22 15:51:28', '2019-09-22 15:51:28'),
(47, 5, 'Rem non.', 'magnam-quia-minima-molestiae-doloremque-dignissimos', 'Officiis ad vel fuga accusantium architecto. Accusantium quo sed ipsa quia ad rerum nihil. Ratione placeat corrupti earum dicta perspiciatis aliquid aut est.', 'Occaecati quas voluptas dolorum eaque. Minima molestias aut nam veniam optio. Modi vitae sit accusamus voluptatum ex. Velit amet in inventore blanditiis nisi. Numquam iure vel voluptatem ut rerum et. Officiis quis quis dolorem tempora aut mollitia suscipit neque. Qui explicabo et voluptatem blanditiis. Iure incidunt ex totam minima commodi. Ut vel accusantium minima vel nobis ut dolorum.', 1, '2019-09-22 15:51:28', '2019-09-22 15:51:28'),
(48, 5, 'Tenetur totam.', 'neque-quaerat-nulla-distinctio-ab-sint', 'Ut consequatur itaque omnis culpa fugit ipsam. Similique labore rerum accusamus magni dolorum dolor est autem. Rerum aut qui dolores atque sequi.', 'Ut laboriosam optio debitis. Recusandae similique rerum distinctio qui cum dolores aliquid. Fugiat maiores esse ut numquam inventore ea sed. Quo qui quaerat iure totam delectus omnis eum. Qui architecto sit assumenda occaecati sequi vero quasi. Possimus provident quia animi aut fugit. Explicabo sapiente et omnis. Dolor tenetur expedita quae perspiciatis magni. Aspernatur temporibus odio rem et est. Sit ut qui tenetur et ab repellendus autem. Id voluptatem qui explicabo aut. Voluptas alias aut est accusantium et.', 0, '2019-09-22 15:51:28', '2019-09-22 15:51:28'),
(49, 5, 'Ab et.', 'voluptatem-sunt-fugit-laboriosam-quia-id', 'Quisquam nihil a laborum error. Quos qui suscipit nostrum. Et quo porro aspernatur eum. Quis eos odit labore tempora exercitationem voluptas aut.', 'Ducimus expedita commodi voluptates tenetur. Quam veritatis voluptas quis est. Voluptates voluptas inventore impedit quibusdam. Similique eaque illum iusto voluptatem blanditiis et. Dolores nihil quia accusantium ea. Aut autem aliquam deleniti a. Pariatur delectus repudiandae dolor praesentium libero saepe esse velit. Rem ea aut sit nulla optio illo eaque excepturi. Officia accusantium beatae vel et corporis repellat. Eveniet iusto quod doloremque laudantium. Ad nobis et itaque et sed.', 1, '2019-09-22 15:51:28', '2019-09-22 15:51:28'),
(50, 5, 'Veritatis.', 'quia-eveniet-quis-atque-et-in', 'Et veniam nihil magnam quisquam ipsam. Dolores iste vel doloribus. Optio ullam voluptatum consequatur.', 'Doloribus natus quo dolorem illum. Aperiam temporibus rerum molestiae illo minima molestiae. Consequatur non sint explicabo expedita voluptatem voluptas doloribus. Dolore tempora ipsum veritatis nihil non harum eos commodi. Et non beatae sed ab harum est maxime. Inventore omnis vitae molestiae est consequatur fuga vel. Ut voluptas delectus sunt sit. Ad alias at veritatis deleniti et quia. Voluptatum suscipit sunt id blanditiis. Ea totam non sint nesciunt fuga. Repellat autem occaecati adipisci ullam id dolorum repudiandae. Magni et dolores in voluptas non numquam culpa et. Ut ut magni quidem.', 0, '2019-09-22 15:51:28', '2019-09-22 15:51:28');

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
(1, 'Lila O\'Reilly', 'alfredo40@example.com', '2019-09-22 15:51:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's3glUkVy9C', '2019-09-22 15:51:26', '2019-09-22 15:51:26'),
(2, 'Skylar Abshire', 'barton.nigel@example.com', '2019-09-22 15:51:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eyzGanWsz9', '2019-09-22 15:51:26', '2019-09-22 15:51:26'),
(3, 'Esta Stroman', 'eemard@example.net', '2019-09-22 15:51:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2SScjfYzh3', '2019-09-22 15:51:26', '2019-09-22 15:51:26'),
(4, 'Emery Welch', 'schneider.fermin@example.org', '2019-09-22 15:51:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UN1dnHqJIz', '2019-09-22 15:51:26', '2019-09-22 15:51:26'),
(5, 'Terence Cremin III', 'ternser@example.com', '2019-09-22 15:51:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6u8NhhIt38', '2019-09-22 15:51:26', '2019-09-22 15:51:26');

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
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `valueattributes`
--
ALTER TABLE `valueattributes`
  ADD CONSTRAINT `valueattributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

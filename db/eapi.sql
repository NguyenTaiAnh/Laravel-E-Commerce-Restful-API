-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 31, 2021 lúc 05:47 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `eapi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_08_21_095503_create_products_table', 1),
(6, '2021_08_21_095526_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'Annalise Fahey', 'Aut similique itaque est amet nihil unde. Quos illum sit cum at placeat. Tempore dicta neque facere ex accusamus quis. Nam omnis temporibus ratione. Modi voluptatem maiores eaque modi autem ipsum.', 737, 9, 5, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(2, 'Briana Deckow PhD', 'Dolores ab quaerat quos. Ratione nobis qui aut odio ut qui. Dolorum amet voluptatem voluptas sunt impedit quod.', 137, 0, 27, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(3, 'Prof. Darrel Lang', 'Ducimus explicabo modi quos vel suscipit cupiditate saepe. Ut consequatur ratione similique alias asperiores vel. Quia aut eum sunt vero nulla recusandae adipisci.', 320, 1, 8, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(4, 'Andy Haag', 'Soluta recusandae corporis et et magnam nihil mollitia. Molestias quibusdam dolore explicabo a atque.', 282, 7, 20, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(5, 'Destiny Carroll', 'Quibusdam aliquam assumenda ea eveniet numquam provident. Officiis minima velit doloribus itaque deleniti et impedit error. Consequatur voluptatem ipsum sapiente provident.', 204, 1, 29, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(6, 'Kiara Kihn', 'Quibusdam blanditiis deleniti corporis. In et inventore dolorum qui vero accusamus. Quam qui aut necessitatibus et excepturi aut rem. Fuga aut corrupti sunt magni voluptatem quas aut neque. Facere accusantium eius officia quam nam magni.', 883, 0, 19, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(7, 'Tomas Little', 'Tempore eos consequatur qui. Asperiores eos ipsum sequi accusantium nemo at animi. Ea iure voluptatum explicabo quaerat. Labore nihil iste beatae et est molestiae quis nihil.', 657, 2, 17, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(8, 'Mrs. Carlie Fritsch V', 'Dignissimos harum dolorum et odio quia. Dolores ducimus unde deserunt. Incidunt quaerat rerum qui voluptates officiis doloribus. Quo odio similique ipsa autem nihil eos. Maxime repudiandae omnis et quae enim harum.', 351, 7, 18, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(9, 'Javon Balistreri', 'Et et sit cupiditate placeat distinctio est quos. Quo mollitia incidunt aut consequuntur impedit. Sit deleniti sapiente velit voluptate. Aliquid autem aspernatur inventore sit.', 399, 4, 10, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(10, 'Autumn Simonis', 'Quaerat amet et vitae et asperiores quisquam. Illo iusto voluptates quaerat asperiores accusamus. Autem nihil rem sit magni et. Necessitatibus nihil facere exercitationem sint cupiditate culpa nemo mollitia.', 321, 0, 6, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(11, 'Laila Torp V', 'Omnis et sed ipsum nobis. Repellat optio nam ut. Quo excepturi assumenda quod voluptas ut sequi sed. Et accusamus voluptatem eaque autem.', 227, 4, 3, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(12, 'Antonetta Becker', 'Voluptatem qui aspernatur amet est eligendi consectetur quidem. Quis quasi vitae voluptate sit.', 943, 2, 21, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(13, 'Alivia Toy', 'Labore dolor eos voluptas fugit voluptas. Eum saepe ipsam ipsam vero vero. Quis harum quia blanditiis ipsa sit.', 223, 9, 4, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(14, 'Dino Donnelly', 'Nam doloremque doloremque sit pariatur ipsum neque. In veniam eius debitis illum enim eaque. Eveniet et veniam cupiditate. Voluptas et quam esse qui adipisci dolor. Esse sed quae commodi iste expedita sunt impedit.', 456, 8, 9, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(15, 'Johathan Hill', 'Tenetur vel laudantium dicta aperiam libero. Sunt vitae eos qui. Nihil voluptas eos et adipisci repellendus magni mollitia.', 320, 9, 22, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(16, 'Emma Lind', 'Architecto ut veritatis qui et quis. Quia adipisci nihil delectus reprehenderit animi veniam eos. Doloremque impedit minus aut consequatur ipsa ad. Tempora minima possimus ut aut aspernatur.', 671, 9, 13, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(17, 'Prof. Felix Pfannerstill', 'Exercitationem in ullam minima praesentium consequuntur. Deleniti quis doloribus dolore modi officia voluptatem et. Repudiandae enim quia consequatur ea.', 849, 1, 15, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(18, 'Prof. Amya McLaughlin', 'Aliquam et sit molestias ad itaque rerum aut. Possimus ad est omnis alias. Laboriosam pariatur quae quisquam facere.', 124, 2, 12, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(19, 'Miss Destini Rohan DDS', 'Officiis inventore est in dolore in. Nam corrupti consectetur accusamus repellendus. Voluptatibus enim odio illum voluptatem.', 606, 3, 8, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(20, 'Quentin Hermann', 'Omnis iusto non similique et. Et amet veritatis laboriosam ipsum non voluptatum quisquam cumque.', 100, 1, 17, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(21, 'Sigrid Fadel PhD', 'Illo omnis esse distinctio repudiandae. Sit rem eos beatae consequuntur quia sequi non. Quo nisi et tenetur eum. Ut voluptas sequi culpa voluptatem.', 949, 7, 2, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(22, 'Hilda Harris', 'Eos harum ut quam officia culpa consequatur. Harum possimus atque sit blanditiis. Quia ab iure molestias harum quia aut placeat. Facere corrupti temporibus ipsam repellat assumenda assumenda.', 543, 7, 11, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(23, 'Hazel Weber IV', 'Neque est est veritatis. Qui rerum at magnam suscipit dignissimos voluptatem nam. Quis et architecto sed quisquam.', 864, 5, 19, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(24, 'Mrs. Maeve Cartwright III', 'Qui modi repellat dolorum natus necessitatibus nisi eos aliquid. Autem beatae cum nemo est explicabo dolor dolore. Voluptate impedit iste itaque et praesentium.', 119, 6, 25, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(25, 'Mathilde Gorczany', 'Ipsum qui aliquam quas omnis ut. Aut est recusandae odit quae atque laborum et.', 311, 1, 26, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(26, 'Yesenia Renner', 'Et nisi aliquid delectus exercitationem voluptatem. Iste laudantium tenetur maxime porro ut et ullam. Magnam aut cumque aut. Non atque sunt nihil. Cumque optio ipsam non consequuntur itaque.', 959, 0, 17, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(27, 'Eliane Wilkinson', 'Qui et eum cupiditate consequuntur odit excepturi. Numquam sit voluptatum fugit animi quos. Et adipisci molestiae aperiam nam delectus.', 489, 7, 22, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(28, 'Ms. Adrianna Rice', 'Cumque occaecati consequatur laudantium maiores laudantium nemo itaque. Eum accusantium non animi eos officiis sit. Eius sit illum est necessitatibus.', 694, 6, 18, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(29, 'Mr. Immanuel Padberg MD', 'Sint ea repudiandae nesciunt non voluptatum doloremque consequatur. Expedita est et et doloribus sunt totam. Illo qui voluptatibus ratione.', 707, 1, 22, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(30, 'Yazmin Kris', 'Voluptas nemo blanditiis et asperiores autem neque dolores. Hic reprehenderit delectus deleniti totam quo.', 643, 1, 17, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(31, 'Trystan Wolff II', 'Laboriosam illum aspernatur assumenda aut. Velit ea est aut. Non delectus officiis officiis non.', 136, 3, 24, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(32, 'Forrest Mitchell PhD', 'Ut animi reiciendis sint autem suscipit quia qui. Accusamus quisquam quo cum repellat qui est corrupti. Ut quia vitae quis labore facere id est. Omnis et illum eveniet mollitia vero non.', 412, 6, 29, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(33, 'Alvera Reinger', 'Nihil a magnam facere consequatur rerum. Quod odit earum eos et ut. Nobis culpa ut doloribus vitae eos.', 112, 1, 21, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(34, 'Oleta Rolfson', 'Est esse rem omnis delectus. Nisi autem quod in sit placeat eius voluptatem. Aut praesentium ducimus consequatur quos. Harum explicabo quasi dolor dolor molestiae.', 897, 7, 27, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(35, 'Christopher Denesik', 'Reiciendis rerum architecto saepe. Voluptas eaque cum consequuntur neque et. Debitis qui deleniti deserunt autem fugiat. Alias repellat ut tenetur.', 830, 4, 17, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(36, 'Emmanuel Rempel II', 'Quis sequi ut minima ab. Commodi at recusandae voluptatem voluptate dolore cum et veritatis. Doloribus similique autem blanditiis veniam velit esse molestiae distinctio.', 295, 9, 25, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(37, 'Ima Lakin DVM', 'Distinctio dignissimos sint animi repellat deserunt. Veniam facere laboriosam incidunt autem. Ut odit odio dolorum aliquam sint excepturi reprehenderit.', 641, 9, 3, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(38, 'Murl Howell', 'Rerum ut odit labore et cum. Dicta quas repellat sed. Molestias magni tempora quod qui aspernatur.', 283, 4, 9, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(39, 'Emery Torp', 'Impedit neque in et fugit. Aut consectetur atque voluptas saepe quo. Mollitia modi ea et consequatur. Ab quae ut unde ut inventore sit esse dolor.', 620, 3, 19, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(40, 'Amira Carter PhD', 'Aperiam cum a nemo voluptas aut. Possimus alias sed sit et ipsam ducimus ea. Optio ab est qui.', 139, 5, 20, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(41, 'Mrs. Dessie Luettgen III', 'Odio incidunt nemo saepe quo qui non et. Harum odio ut nesciunt consectetur vel dolores ut. Libero sint ipsa ut repudiandae.', 603, 2, 7, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(42, 'Emmalee Hilpert', 'Exercitationem et et nobis velit ea ipsum at ducimus. Illo reprehenderit deserunt consequatur. Quam animi sint cupiditate sunt debitis rem veritatis repudiandae.', 690, 7, 14, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(43, 'Dallin Pouros DVM', 'Non iure magnam fugiat quis. Enim corporis dolor reprehenderit excepturi consectetur. Et nemo dolorem mollitia aut sed exercitationem.', 900, 7, 27, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(44, 'Miss Katarina Gerhold Sr.', 'Adipisci rerum et ducimus officia. Cupiditate aut et eos sit qui dicta sed. Nihil quaerat ea laborum non esse.', 814, 9, 25, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(45, 'Candelario Bogan', 'Autem reiciendis recusandae cumque. Aut nostrum atque ipsam earum aliquam. Rerum veniam libero qui voluptas. Non eligendi omnis veniam officia recusandae non.', 105, 4, 18, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(46, 'Madisen Gulgowski', 'Eos error quidem rerum numquam. Ea ut qui repellat minus qui aut repellendus cumque. Quisquam rerum vitae vel dolor. Repudiandae et et quidem et ipsam qui nemo.', 192, 7, 12, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(47, 'Beau Durgan', 'Harum ut enim est odio et nobis nemo aut. Inventore quia voluptatem porro repellat cumque nam ratione. Inventore assumenda id tempore impedit sit et et. Fuga officia voluptatem illo dolores ut quo voluptate.', 483, 2, 28, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(48, 'Nellie Becker', 'Voluptatibus quas odio alias accusantium. Consequuntur voluptatem voluptas sed. Ut neque nobis ea assumenda adipisci perferendis ipsa.', 833, 0, 20, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(49, 'Elyssa Kemmer', 'Ut veniam non porro et sit praesentium explicabo. Consequatur nam omnis ut libero qui ex et. Tenetur distinctio sed non occaecati.', 385, 1, 24, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(50, 'Antonietta Streich', 'Dolore a eaque velit consectetur assumenda inventore rerum blanditiis. Quia a ad quibusdam unde repellat aliquam. A ut nihil et consequatur rerum adipisci quia. Veniam explicabo enim tempora nemo nobis et.', 291, 3, 27, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(51, 'Rocky Harvey IV', 'Id possimus assumenda fugit quia. Veniam rerum quis quia eos ducimus. Neque quia omnis fugiat iusto quo omnis eos dolorum.', 393, 8, 29, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(52, 'Prof. Clovis Metz DDS', 'Asperiores numquam vero excepturi repellendus recusandae illum totam. Voluptas voluptatem praesentium omnis non ex odio. Quidem rerum libero expedita enim eos ea similique possimus.', 674, 2, 28, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(53, 'Dr. Christian Carroll Jr.', 'Voluptatum veniam consequuntur totam quidem. Est aliquid quisquam mollitia enim facilis autem voluptas. Provident nisi et consequatur illo sint.', 578, 9, 20, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(54, 'Nasir Leuschke', 'Voluptatum dolor perspiciatis molestiae quis. Officia laborum quia esse aut pariatur reprehenderit incidunt. Aperiam fugiat expedita enim animi id expedita explicabo. Ratione eum earum velit corrupti. Soluta est et et impedit est.', 436, 7, 26, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(55, 'Fatima Tremblay MD', 'Tempore quis odio harum sint vitae eos. Voluptas ipsam harum consequuntur aspernatur sunt. Sint ea illo assumenda ratione sed vel pariatur.', 631, 2, 27, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(56, 'Mrs. Rebeka Bode', 'Odit quo eos voluptatem qui. Non perspiciatis autem atque totam sit. Dolore eum ipsum voluptatibus eos libero dolorem minima.', 687, 3, 21, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(57, 'Dr. Samson Will Sr.', 'Dolore quia autem aut dignissimos est et omnis. Laborum autem assumenda harum cum eum. Sint sapiente nulla ratione ut saepe fuga. Sit iure voluptas libero rerum enim praesentium explicabo.', 254, 4, 15, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(58, 'Clemmie Bashirian', 'Molestiae modi deleniti quos sed impedit. Et praesentium dolorem nemo in. Quae rem ea dignissimos et commodi.', 437, 6, 16, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(59, 'Jesse Langworth DDS', 'Culpa ea cumque illo delectus delectus eos ea. Doloremque excepturi fuga porro dignissimos qui eum. Aliquam mollitia quia eligendi laudantium voluptas soluta. Culpa enim ea qui doloremque.', 367, 6, 12, '2021-08-31 08:45:52', '2021-08-31 08:45:52'),
(60, 'Christine Doyle I', 'Rerum quisquam inventore aliquid voluptatem sapiente vero eius sed. Error deserunt aut tenetur. Impedit rerum laboriosam fuga qui omnis enim. Id doloribus at aspernatur nesciunt enim soluta.', 298, 0, 28, '2021-08-31 08:45:52', '2021-08-31 08:45:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 10, 'Kyleigh Hagenes', 'Cum voluptate assumenda dignissimos. Voluptates ea qui et sapiente minima fugiat. Quo perferendis voluptas facilis eum totam aperiam possimus. Laborum dolores quisquam quia et voluptatem numquam. Mollitia id repudiandae iusto delectus ratione.', 4, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(2, 2, 'Chyna Schowalter', 'Voluptatum accusantium vel accusamus veniam quo dignissimos dolor. Unde libero perferendis et optio. Ipsa aut aut cum quis velit autem minus.', 2, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(3, 6, 'Braeden Schoen IV', 'Reiciendis at velit vero a vero sit. Tempore in quae reprehenderit eveniet provident id eveniet deleniti. Illo nemo deleniti eum totam labore eos natus.', 3, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(4, 8, 'Maddison Shields', 'Quibusdam rerum ducimus voluptatem sequi nemo quibusdam. Deserunt deserunt asperiores quis at. Inventore neque repudiandae iure quam possimus modi id.', 3, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(5, 6, 'Timmothy Runolfsson', 'Corporis tempore vel repudiandae dolor odit ipsum. Vel voluptatum nihil voluptas officia sint repellat. In quo officiis fuga id ab. Voluptas facere quis est nobis in laborum.', 3, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(6, 4, 'Rosendo Berge', 'Placeat odio eos nihil eveniet. Consectetur et sunt ea et doloribus expedita eligendi cumque. Omnis aut odit consequuntur nobis qui qui eos ut. Et rerum porro non recusandae.', 0, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(7, 9, 'Mrs. Geraldine Murazik', 'Et ut fugiat et omnis. Fuga quo quia accusamus esse error et pariatur. Eveniet voluptatem amet repellat aut incidunt pariatur expedita sit. Excepturi expedita facilis quasi sit dolores. Eos tenetur similique debitis voluptatibus consequatur sunt maxime fuga.', 2, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(8, 8, 'Lon Homenick', 'Velit officia quisquam accusantium magnam. Maxime facilis dolor voluptatem doloribus. Excepturi sint autem minus in.', 1, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(9, 2, 'Jocelyn Gorczany', 'Sed quibusdam perferendis quam facilis doloribus. Pariatur officia modi eos quis aperiam et est. Sit saepe amet voluptatem aut hic quia. Earum perferendis aperiam iusto tenetur et.', 3, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(10, 1, 'Prof. Angela White Jr.', 'Dolores eos vero et fugiat quisquam consequuntur qui et. Cupiditate voluptatem architecto sunt ut quibusdam dolores. Nesciunt ducimus dolores ut vero architecto facilis consectetur enim. Et beatae distinctio quia.', 2, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(11, 2, 'Miss Mina Hickle', 'Tempore ut facere quia. Omnis quaerat est rerum quasi. Ad ea voluptatem commodi autem. Sed voluptas quas natus veritatis quasi eos.', 5, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(12, 10, 'Maeve Bechtelar V', 'Vero deserunt quae dolorem est. Nisi et id praesentium qui. Incidunt dolor voluptas perferendis dolor.', 4, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(13, 2, 'Kian Littel PhD', 'Quasi cumque eum eligendi labore sit itaque eum. Cumque ipsa possimus quia est. Autem reiciendis qui qui temporibus. Culpa consequatur rerum delectus minus et sit illum. Assumenda sed velit alias velit non tempore aut.', 3, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(14, 5, 'Carson Von', 'Amet non hic autem pariatur quae dolorum. Dolores cupiditate et eligendi est at nesciunt. Sapiente nulla voluptas atque sed qui ad. Excepturi perferendis ipsa voluptate libero voluptatem inventore.', 1, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(15, 10, 'Roslyn Grady', 'Repudiandae fuga blanditiis molestiae. Eos ut aut recusandae et. Iusto unde quia et minus.', 5, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(16, 7, 'Joseph Ondricka', 'Iusto enim aperiam sunt labore tempore. Voluptatum et minus magni qui et cumque soluta. Est natus rerum quis mollitia. Unde corporis qui tempore quam reiciendis repellat.', 4, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(17, 5, 'Haylee Grady MD', 'Animi ducimus temporibus beatae perspiciatis quis quae. Eaque ea iste suscipit praesentium nisi. Cumque vel quod enim animi quam.', 1, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(18, 10, 'Okey Steuber', 'Debitis dolorem et aspernatur consequuntur fugit error et autem. Soluta in quidem minus quo. Nihil reprehenderit magni dicta asperiores architecto quae.', 4, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(19, 2, 'Ilene Kirlin', 'Incidunt est quia maxime rerum debitis repellat recusandae. Est consequuntur est voluptate fuga distinctio facere consequatur vitae. Iusto dignissimos quae dolore consequatur repudiandae qui reprehenderit. Ipsam qui quo dolor assumenda eius quam quia.', 0, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(20, 6, 'Dr. Buford Raynor DDS', 'Ipsam ipsam provident et iste quia modi expedita. Commodi velit eveniet ut. Nostrum tempora et possimus et doloribus quisquam. Corrupti quia expedita molestiae ut enim.', 2, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(21, 4, 'Ms. Rosalee Boyer V', 'Similique quae aut fuga molestias est. Est quas consequatur sit voluptas ea. Et dolore dolores nihil officiis hic nobis. Autem et aut commodi ea est similique vel.', 4, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(22, 3, 'Zachariah Pagac', 'Commodi vero pariatur exercitationem cum hic id esse. Totam non accusamus omnis deleniti asperiores id ducimus.', 1, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(23, 9, 'Madalyn Cummerata', 'Et nemo adipisci dolorum. Non dicta quia non dolorem iste. Vel officiis quo velit. Id fuga quis debitis illo nobis.', 0, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(24, 1, 'Mr. Berta Herzog', 'Voluptatem voluptate odio quos ipsa nihil tempore. Quasi earum totam rerum sequi praesentium voluptatem tempore. Dolorem perferendis qui suscipit perferendis tenetur est rerum.', 5, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(25, 2, 'Wellington Cremin', 'Voluptatem et consequatur molestiae temporibus. Temporibus et enim qui. Id dolorem quia eum quia reiciendis.', 2, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(26, 10, 'Rowland Hintz', 'Ipsa consequatur et nemo culpa. Ut quasi asperiores porro et et voluptatem. Qui sit quam ut qui ut non quis. Consequatur aut itaque modi totam esse.', 3, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(27, 2, 'Eden Lowe', 'Et quia pariatur atque labore corporis. Vero corporis dignissimos commodi quidem.', 3, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(28, 10, 'Travon Cartwright PhD', 'Vel saepe consequatur quia qui qui. Iste ipsa modi porro tempore dolore aut. Omnis ratione doloremque omnis ex numquam odit ipsa.', 2, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(29, 1, 'Viviane Fahey II', 'Assumenda excepturi ipsam animi. Non repellendus error minima cupiditate harum. Aliquam est voluptatum et dolore. Ipsam ut qui ab dolor vero consequatur odio.', 3, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(30, 8, 'Ashly Heaney', 'Est atque voluptate esse. Natus vitae illum est molestiae. Sint est aut fuga est quis. Labore voluptas id commodi totam quam voluptatem dolore.', 3, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(31, 4, 'Prof. Samir Ward V', 'Quaerat excepturi placeat id occaecati aut autem molestiae. Cum iste voluptatem sapiente vel praesentium voluptatem. Sint repudiandae dignissimos minima sit enim. Voluptate consequatur velit error.', 1, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(32, 3, 'Mr. Samir Denesik', 'Similique eius et unde vel consequatur commodi. Officiis laborum debitis reiciendis placeat. Eum repudiandae magni corporis sequi voluptate et accusamus ut. Repellat sapiente assumenda non autem ex mollitia.', 3, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(33, 1, 'Eulah Marquardt', 'Nobis assumenda tempora quas quia id maiores vel sed. Deserunt at non ipsa harum amet quam inventore quam. Expedita molestias dolor porro dignissimos.', 3, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(34, 4, 'Payton Sipes', 'Iure qui quia dolor porro temporibus rerum adipisci. Eos aut rem architecto corrupti at. Ipsa explicabo odio suscipit id. Ullam assumenda quisquam molestiae iusto.', 0, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(35, 8, 'Prof. Madisyn Hayes Sr.', 'Iste porro dolor repellendus vel natus et praesentium. Ut earum libero praesentium tempore veniam quidem. Adipisci natus id accusantium quis iure et deserunt. Laboriosam placeat nemo iure omnis mollitia.', 2, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(36, 4, 'Patience Roob', 'Magni cum recusandae consequatur sed. Sed qui beatae in nemo a. Consequatur consectetur consectetur autem cum inventore. Unde harum aut distinctio cum labore doloremque sed.', 3, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(37, 7, 'Sadie Weimann', 'Est expedita quis illum voluptatem mollitia. Quia laboriosam illo illum id asperiores ut. Aperiam voluptas hic perspiciatis eos minima sint provident. Et doloribus ea aut iusto culpa qui.', 3, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(38, 5, 'Mr. Eino VonRueden DVM', 'Aspernatur porro aut et sit quaerat ea. Quia aspernatur error quasi voluptatem quibusdam.', 1, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(39, 8, 'Ms. Thelma Kling', 'Repellendus ab quae nisi cumque est ut. Omnis at exercitationem fuga est et. In non aut quo rem officiis officiis.', 2, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(40, 6, 'Ms. Maritza Lebsack', 'Eos veniam aut eveniet impedit. Beatae temporibus consequatur nihil temporibus soluta non. Voluptatibus qui eius temporibus harum. Enim et ullam laborum qui aliquam quia ipsum nostrum.', 2, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(41, 7, 'Prof. Frankie Kreiger', 'Veritatis non ducimus provident temporibus inventore. Enim amet repudiandae quis quia. Est nesciunt voluptatem sit sapiente. Esse optio dolorem porro rerum tenetur aspernatur amet vitae.', 3, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(42, 1, 'Ms. Olga Beer Sr.', 'Autem dolor velit molestiae doloremque. Temporibus soluta numquam perspiciatis. Consectetur rerum consequatur autem officiis suscipit porro. Aut similique voluptas nobis officia.', 1, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(43, 4, 'Taurean Mills', 'Veniam possimus enim sint earum ab optio labore. Voluptatem maiores culpa delectus quia. Suscipit ratione eius consequatur maxime ut rerum quis. Omnis et dolore dolore omnis.', 0, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(44, 8, 'Arnaldo Veum', 'Culpa minus nisi et similique. Beatae occaecati praesentium beatae consectetur. Modi et molestiae consectetur ut et neque itaque. Aliquam eaque animi dolorem dolor dolorum magnam. Quidem pariatur ipsum est.', 1, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(45, 10, 'Ms. Maegan Bailey I', 'Est enim est est impedit aut ut. Alias fuga adipisci ea optio aspernatur dolor nam. Beatae itaque qui est sapiente occaecati quia.', 0, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(46, 9, 'Marley Dicki', 'Quod ut hic itaque quaerat voluptate impedit. Culpa qui est et nostrum fuga magni. Eum esse sit sit nulla quisquam ducimus accusantium et.', 4, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(47, 9, 'Theodora Cremin', 'Animi non quia blanditiis odio. Odio sit enim at et mollitia assumenda dolor. Ullam quia et sed eos vitae.', 4, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(48, 2, 'Wayne Veum', 'Velit consequatur nam et. Enim necessitatibus animi soluta perferendis earum velit autem. Ab quisquam libero aut nulla corporis et rerum.', 2, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(49, 5, 'Ms. Karine Zieme DDS', 'Quia explicabo aspernatur est sed corporis quia eos. Ad quia suscipit qui eum. Aut nihil necessitatibus quia quae maxime et explicabo mollitia.', 3, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(50, 8, 'Prof. Alvena Abbott IV', 'Tenetur sit fugit dolorem quia quidem qui laboriosam aut. Dolorem natus ea illo ut omnis reprehenderit. Blanditiis odit laudantium praesentium.', 5, '2021-08-31 08:44:39', '2021-08-31 08:44:39'),
(51, 18, 'Ford Emard', 'Quod pariatur est facilis at. Aut qui accusamus mollitia dolor et ad veritatis.', 5, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(52, 39, 'Harrison Wuckert', 'Provident qui animi quis dolorem quidem. Tempora repudiandae quasi molestiae quas illo magnam blanditiis fugiat. Enim autem voluptatibus commodi illo tenetur enim.', 4, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(53, 4, 'Alexane Olson Jr.', 'Maxime omnis asperiores aut ipsum et rerum. Eos cum pariatur atque tempora enim quia in. Id eaque dolor mollitia necessitatibus iure libero.', 4, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(54, 29, 'Tara Harber', 'Non deserunt magnam exercitationem est recusandae. Natus et occaecati sit non minus quisquam est.', 0, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(55, 15, 'Ms. Sallie Jacobi DVM', 'Et qui ut odio at dolorem aperiam rerum. In tempora praesentium illo necessitatibus nostrum.', 0, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(56, 10, 'Lilyan Wintheiser', 'Eligendi harum totam quibusdam quo excepturi qui vitae. Maxime atque odit non natus autem perferendis. Animi ipsam et et dolorem optio voluptate placeat. Minima a sint aut quis eum ducimus eum.', 5, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(57, 24, 'Maribel Steuber', 'Molestiae sunt sed et eum. Vero aut sint quibusdam impedit et. Error accusamus esse sequi vel aut.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(58, 17, 'Marlen Schmidt II', 'Tempore explicabo eum explicabo omnis veniam beatae quidem. Eum quisquam ut temporibus veritatis voluptate voluptas. Quos quisquam est impedit enim est enim illo.', 4, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(59, 43, 'Gail Purdy', 'Veritatis sit ut doloremque unde. Quasi voluptatem optio vel voluptas qui. Reiciendis voluptas aut repellat. Dignissimos aperiam id accusamus nihil in quia.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(60, 6, 'Gaylord Flatley', 'Voluptatem et et est sapiente sed ea voluptatum. Non repellat neque adipisci in. Accusamus omnis voluptatem dolor aut numquam et voluptatem facere. Cumque rerum iste veniam architecto qui minus.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(61, 46, 'Dedric McGlynn', 'Soluta tenetur ullam voluptatem aspernatur quidem consectetur quia. Suscipit blanditiis consectetur aut temporibus nihil eos.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(62, 2, 'Brenda Wilkinson', 'Voluptatum temporibus ut omnis fugit. Iure ullam dolorem possimus aut. Commodi rerum ex modi quia doloribus ratione reiciendis. Magnam id enim explicabo reiciendis similique qui enim iste.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(63, 55, 'Guido Bradtke', 'Est aliquam id est nostrum fuga assumenda adipisci dolores. Similique veniam ea a eveniet sit consectetur et.', 2, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(64, 20, 'Saul Johnston', 'Voluptatum eius ea consequatur architecto quos. Excepturi suscipit fuga et voluptatum reprehenderit. Illo eligendi repellat quam doloremque rerum omnis. Ullam minima quibusdam consequuntur voluptatem odio.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(65, 25, 'Rachael Roob DDS', 'Esse ullam reprehenderit alias ipsam. Et accusamus enim excepturi tempore quibusdam voluptates qui. Mollitia eveniet voluptatem odio quos. Dolor cum error consectetur sunt.', 1, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(66, 33, 'Ruben Muller Jr.', 'Repudiandae aut aspernatur eum nam. Culpa quod quos sequi. Nesciunt qui voluptas voluptate distinctio minus omnis quos.', 0, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(67, 24, 'Vivian Hane', 'Accusamus iure non aut tenetur aut. Omnis odit quia suscipit reprehenderit voluptatem repudiandae saepe. In et facilis enim et itaque veniam dolorem. Dolore enim ipsam tempore rerum tenetur suscipit qui.', 5, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(68, 58, 'Waldo Mraz', 'Inventore et occaecati aut odit. Necessitatibus maxime qui quo aut animi. Voluptatum harum id et et enim voluptatem.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(69, 42, 'Hilbert Dickens', 'Incidunt cumque illo magnam amet. Ab repellendus dignissimos incidunt reiciendis eius sit perferendis. Sit fuga illum doloremque est minus nihil.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(70, 60, 'Norwood Klein', 'Vitae saepe ipsum est adipisci. Labore voluptatem et ducimus voluptas adipisci quia et. Laboriosam sint aut tempore sit sapiente.', 2, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(71, 43, 'Dr. Enrique Morissette DVM', 'Deserunt nam hic alias. Error ipsam dignissimos doloremque dolorum unde quibusdam pariatur. Omnis iste aut libero quo eius ut ducimus. Sit voluptatem non sed tempora minus.', 0, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(72, 48, 'Wilmer Hamill', 'Magnam in aut atque similique sed. Magnam et placeat ut nihil assumenda. Omnis et pariatur ipsum error et est illo. Ut est possimus qui expedita voluptatem.', 1, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(73, 22, 'Mr. Arnulfo McKenzie', 'Laboriosam qui itaque voluptas velit natus sint. Et sit molestiae et qui velit et. Et voluptatum quae iusto.', 0, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(74, 3, 'Marcus Kreiger', 'Sint non non iste odio et. Repudiandae excepturi ipsam perspiciatis veniam. Suscipit velit nihil modi beatae iure.', 0, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(75, 58, 'Alberta Pfannerstill', 'Temporibus fuga et iure qui est et vel asperiores. Dolor dignissimos sunt neque iusto repellendus nihil. Quis impedit asperiores facere velit.', 4, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(76, 7, 'Olin Dickens', 'Reiciendis magnam expedita sunt omnis. Ea nam doloremque esse dolorem aliquam sed. Et odit modi aut.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(77, 39, 'Mr. Jerrold Jaskolski', 'Dignissimos nostrum veniam voluptatum eum est et. Placeat et atque eveniet omnis repellendus. Unde minus veritatis est et est nulla sit. Nam rerum aperiam omnis eos.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(78, 9, 'Cullen Zemlak', 'Omnis et animi esse quia est. Modi qui ut voluptas quasi saepe vel repellendus.', 1, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(79, 2, 'Velma Tromp', 'Veniam minima officia qui eius. Adipisci qui ab voluptas officiis atque enim ut. Officia aliquid suscipit consequuntur ad sunt quae accusantium. Rerum autem beatae repellat sed necessitatibus.', 2, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(80, 22, 'Dr. Seamus Fay', 'Adipisci vel qui pariatur enim. Praesentium culpa tenetur eaque illum. Ad ut optio doloribus et. Aliquid sit id vel repudiandae ut.', 4, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(81, 58, 'Guadalupe Altenwerth', 'Pariatur minima inventore blanditiis adipisci. Assumenda perferendis dolores iure pariatur. Ullam ab repellendus reprehenderit eaque autem placeat quidem consectetur. Voluptatibus sunt aut velit a ipsa aspernatur vel.', 4, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(82, 28, 'Dr. Darius Predovic', 'Tenetur dignissimos et repellendus hic ut quia. Quibusdam vitae repudiandae quis est error eos. Ea quo explicabo quia ut unde voluptate impedit temporibus.', 1, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(83, 22, 'Brisa Stracke DDS', 'Qui labore esse recusandae perferendis in modi omnis. Qui et rerum temporibus veritatis et laborum magni illo. Esse officiis et libero et distinctio accusantium illo. Sed sapiente doloribus praesentium qui.', 4, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(84, 32, 'Delores Considine', 'Ea iusto non in perspiciatis est debitis. Velit ipsa possimus porro ad. Suscipit distinctio recusandae ducimus sint. Unde dolores nobis non omnis.', 5, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(85, 59, 'Thora Bednar', 'Cupiditate perferendis rerum quidem sapiente dolore error quia. Rerum illo iste enim aperiam error aut. Saepe delectus ipsum incidunt vitae. Architecto blanditiis architecto dolorem qui. Nihil magnam voluptatem voluptatum ut deleniti qui.', 1, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(86, 32, 'Estelle Jacobs', 'Aperiam aut ullam non ut sed. Illo et ea qui expedita. Voluptatum ullam ipsa doloribus ut repellendus tenetur unde hic.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(87, 27, 'Molly Walter', 'Qui distinctio cumque vel suscipit et ut modi. Quia aut molestiae ipsum architecto ipsam illum voluptate. Vitae est error cum repellendus ut repudiandae. Saepe blanditiis occaecati ut laborum fugit. Mollitia sed debitis earum quia dolor ut.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(88, 40, 'Mrs. Simone Nitzsche III', 'Molestias cum sed iure rem et id. Distinctio quis possimus repellat impedit quas. Asperiores laudantium consequatur repellat quia vitae ut qui.', 4, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(89, 33, 'Antonia Kertzmann', 'Mollitia labore culpa omnis occaecati cupiditate et voluptatem. Assumenda officiis explicabo voluptatum vero beatae aliquam non. Cum voluptatem labore non.', 4, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(90, 51, 'Mohammed Lowe', 'Quia voluptatum deleniti error nihil consequatur minus. Ab sunt provident qui inventore aliquid. Vel autem dolores beatae illum. Quidem accusantium sapiente blanditiis doloremque dolor.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(91, 7, 'Erik O\'Connell', 'Quo excepturi aut ullam. Commodi porro tempora magnam deleniti. Architecto dolor sed aut pariatur.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(92, 46, 'Mrs. Kaylin DuBuque I', 'Est debitis possimus vitae atque voluptates culpa. Vel provident aliquid est ab.', 1, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(93, 34, 'Miguel Franecki', 'Ut voluptas consequuntur voluptas et est. Doloribus dolorum in architecto autem maxime et.', 5, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(94, 53, 'Thelma Monahan', 'Non sunt similique impedit voluptate et. Animi sit in fugit molestias saepe nostrum qui. Doloribus magni neque sit quae suscipit. Iusto error consequatur ducimus amet est.', 5, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(95, 43, 'Jaquelin Thiel', 'Commodi necessitatibus aut ratione dolores dolorem nostrum. Quo vero et maxime. Ex velit eum et mollitia in earum minus.', 0, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(96, 20, 'Jimmie DuBuque', 'Dicta quaerat excepturi aut ut repellat. Quae expedita consectetur enim natus ut veritatis et. Dolor similique quis ut architecto. Dicta quos at veniam rerum et accusantium.', 5, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(97, 33, 'Marilou Tremblay', 'Maxime consequatur et aperiam ipsam. Nihil ut nobis eveniet iure ut deleniti et. Sit sed mollitia dolore voluptas vero unde deleniti. Delectus occaecati corporis neque velit.', 1, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(98, 43, 'Heber Renner', 'Voluptatum corporis accusantium et magni quam impedit. Occaecati ad nam nihil et harum. Voluptatem aut iusto facilis. Harum eos assumenda perferendis architecto.', 5, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(99, 57, 'Mittie Walsh', 'Alias nisi tempora velit dolore enim facilis quia. In corrupti expedita aut itaque. Corrupti fuga velit minus distinctio rerum doloribus. Eum ipsam tempore voluptate aliquid at ducimus et.', 1, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(100, 32, 'Dr. Kaley Ortiz', 'Iusto enim magni nostrum voluptas et qui. Dolorum ut quas quia ratione nesciunt est. Facere molestiae inventore in maxime excepturi qui ab. Nisi perspiciatis adipisci deleniti dolorem dolore non eligendi alias.', 4, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(101, 49, 'Prof. Maximillia Thiel DDS', 'Consectetur sint sed autem incidunt id. Quae dolores et et aut ea adipisci. Id in rerum voluptas qui.', 1, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(102, 48, 'Anya Morissette', 'Neque rerum quaerat perferendis. Eos laborum nam tempora iste mollitia. Aspernatur quibusdam et quis est laboriosam sit exercitationem adipisci. Magni aut accusamus voluptates voluptas veritatis iusto officiis quia.', 2, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(103, 54, 'Kadin Russel', 'Perferendis provident voluptas qui ipsam aut ipsum velit. Atque sapiente ea ipsa quis perspiciatis non et sit. Modi harum nihil vitae corporis nobis. Deserunt sunt consectetur et qui vel tenetur. Ratione tempore consequatur et impedit est sit sint.', 5, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(104, 11, 'Prof. Leopold Koepp', 'Cupiditate reiciendis provident voluptate labore. Qui doloribus id non libero nobis. Sint sed totam eos natus odio.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(105, 36, 'Theodora Cronin', 'Ab nihil placeat repellendus aliquam. Nihil quo perferendis molestiae dolor sed iure enim. Tempore accusamus eos nobis tenetur et. Eos architecto commodi delectus ut quod et error.', 5, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(106, 32, 'Cordia Simonis PhD', 'Dolores et fuga omnis sunt in. Quisquam reiciendis explicabo corrupti odio id voluptates. Odit quo culpa corrupti culpa.', 2, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(107, 17, 'Amaya Effertz II', 'Quibusdam et ut est sit sunt consectetur. Harum voluptas velit autem voluptate dolor aliquid. Et dolor repudiandae dolore alias a. Velit aspernatur atque eius ut et non facere mollitia.', 4, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(108, 11, 'Sandy Nader', 'Voluptatibus placeat quia vitae. Sapiente quidem error et dignissimos voluptas sapiente ut. Est omnis deserunt iure soluta omnis magni. Enim rerum neque et quaerat incidunt.', 5, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(109, 34, 'Magali Yundt', 'Nulla quas nostrum excepturi consequuntur. Similique ratione cupiditate quibusdam sit provident in rerum. Nulla nulla consequuntur atque voluptates. Provident unde fugiat in.', 0, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(110, 15, 'Jalon Blick', 'Pariatur omnis molestiae sit est quisquam voluptas. Ea ut quis consequatur minus quis. Et tempora enim voluptas consequatur est unde ut.', 4, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(111, 19, 'Stewart Fay', 'Nisi error est enim dolorum. Nihil harum nemo vel sunt. Consequatur adipisci est reiciendis dicta.', 4, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(112, 55, 'Prof. Ethel Hills DVM', 'Culpa et voluptatem sapiente. Maxime dolorum velit omnis sit autem repudiandae omnis. Quam qui aliquam ut praesentium corporis. Animi omnis nihil dolor quidem.', 1, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(113, 40, 'Isobel Witting', 'Eum omnis fugit perspiciatis officiis similique sit ab. Error et consectetur ut quas et sit. Consectetur quas provident esse iste assumenda esse maxime aspernatur.', 1, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(114, 11, 'Bridget Harvey', 'Ex aperiam praesentium tempore est in. Error repudiandae fugit atque necessitatibus a quis nihil. Eos nisi dolor quia.', 5, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(115, 39, 'Dr. Nina Kub', 'Sit numquam quo exercitationem sapiente. Soluta aliquam doloremque quo doloribus officia eos et. Consequatur dolor omnis ut totam eum id. Iusto facilis perferendis quia quia.', 1, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(116, 29, 'Josue Rempel I', 'Possimus facere consequuntur molestiae et delectus omnis. Molestiae debitis consequatur et quos quos necessitatibus. Autem est qui quae quo. Optio id exercitationem quis error.', 5, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(117, 42, 'Hazle Stoltenberg', 'Ut unde ea earum delectus qui beatae nesciunt. Eos magni molestiae sed ullam debitis omnis. Consequatur ut voluptatem et suscipit voluptas aut dolores.', 1, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(118, 44, 'Luigi Ziemann', 'Rerum sed possimus voluptatem et. Accusantium fugiat est eos officia.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(119, 5, 'Dr. Zachery Hudson III', 'Minus et facilis sint voluptatem omnis dicta nisi blanditiis. Explicabo labore quod ipsam earum commodi. Quam libero voluptas quia quia ipsa.', 4, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(120, 22, 'Astrid Shanahan', 'Facilis tempore illo modi quo voluptas totam est perferendis. Tempora a eum maxime enim velit nisi numquam ipsa. Quisquam exercitationem ratione cupiditate magnam sunt. Tempora assumenda quae nobis sint ut provident.', 1, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(121, 59, 'Clarabelle Wiegand', 'Rerum distinctio et temporibus est est non ut. Tenetur assumenda voluptates natus debitis possimus blanditiis.', 4, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(122, 42, 'Ms. Tessie Schneider', 'Fugit odio atque et praesentium libero. Unde illum sequi minus qui et in cumque minima. Optio ea magnam deleniti est sed voluptate.', 5, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(123, 2, 'Tyrell Romaguera', 'Laudantium excepturi et ullam dolor. Amet ipsum nesciunt provident provident dignissimos velit quibusdam. Sint cupiditate ipsa repudiandae qui amet.', 0, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(124, 5, 'Mr. Wilber Rogahn', 'Exercitationem enim occaecati et est voluptas sed. Quae ratione soluta odio reprehenderit ea. Rerum a aliquid voluptas reiciendis.', 0, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(125, 13, 'Prof. Grayce Kessler II', 'Esse ipsa non aperiam voluptatum ratione quaerat consequatur. Quas nesciunt ipsa quia repellendus. Maiores magnam ipsam deleniti.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(126, 3, 'Mr. Scottie Hintz DDS', 'Libero beatae rerum qui numquam. Et dolorem similique labore velit dolores ut sunt. Impedit quibusdam consequatur est necessitatibus laboriosam vero rerum. Velit commodi rerum hic sed.', 0, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(127, 48, 'Mrs. Beaulah Luettgen', 'Esse ut eligendi occaecati soluta quae consequatur quia. Occaecati quos et nobis ducimus expedita natus reiciendis saepe. Inventore ut officiis porro corrupti sit odio commodi.', 5, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(128, 38, 'Aaliyah Lehner', 'Non veritatis rem sit explicabo. Ullam quasi architecto vitae quis.', 4, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(129, 44, 'Dee Hoppe', 'Sed fuga rerum et debitis voluptate. Necessitatibus aut qui hic quam dolorem maiores unde. Est voluptatibus est cumque quos quae in.', 1, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(130, 47, 'Hannah Satterfield', 'Eligendi omnis commodi tempore repudiandae. Dolores autem accusantium est culpa ad sit iste. Consequuntur accusamus id sint hic omnis est quidem. Dolorem expedita autem voluptates voluptatibus id vel aut.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(131, 4, 'Benton Waelchi', 'Culpa nulla distinctio minima ducimus. Eos quos tempore laborum. Saepe autem laboriosam aut praesentium. Alias hic ea fuga adipisci earum dolor temporibus.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(132, 59, 'Graciela Kihn I', 'Nostrum iusto impedit sunt asperiores incidunt debitis et. Sit eligendi dolores dolor velit quaerat.', 2, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(133, 16, 'Prof. Buck Ward', 'Amet minima libero explicabo voluptatum. Voluptatibus nisi quia ad expedita. Qui sed dolorum quia. Et aperiam dolore tenetur ullam.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(134, 33, 'Verna Wunsch', 'Molestiae facilis omnis quisquam sequi dolores. Modi corrupti odio aut odio eos maiores explicabo. Iusto quis cumque tenetur qui ex. Rerum culpa est odio praesentium cupiditate est in.', 5, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(135, 16, 'Miss Abbigail Ankunding DDS', 'Natus illo aut id id facilis voluptates. Sunt quidem molestiae culpa. Inventore culpa quam culpa rerum unde magnam consequatur vero.', 4, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(136, 16, 'Oran Zulauf III', 'Id delectus ea aut sit. Ea sint eum ipsam delectus saepe dolore. Nihil odit omnis aspernatur reiciendis non quis aut.', 1, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(137, 51, 'Hope Barton', 'Temporibus deserunt dolorum perspiciatis sit nihil. Reiciendis qui explicabo nemo qui dignissimos ut tempora. Vel cumque et minima qui velit non corrupti perspiciatis.', 1, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(138, 13, 'Jed Rosenbaum', 'Sequi porro deserunt ipsa at qui ut. Reiciendis facilis in ipsum veniam earum natus quo. Harum omnis qui ut atque.', 2, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(139, 50, 'Enrico Wintheiser', 'Similique eveniet aut qui commodi quod unde. Dignissimos quo provident sequi delectus ducimus voluptatem rerum. Repellendus quibusdam illo et similique. Nostrum quia repellendus molestias aliquid et beatae.', 5, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(140, 28, 'Miss Kaylee Huel', 'Repellendus odio possimus assumenda et. Ipsum dolore ipsa enim odio in. Laborum tempore aperiam porro.', 0, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(141, 3, 'Prof. Rene Schuppe', 'Nihil earum et quo id consequatur doloremque. Et non doloribus nostrum provident voluptatum consequuntur architecto. Fugiat numquam atque amet beatae officia delectus et natus. Et dolor est delectus rerum mollitia repudiandae voluptatem. Necessitatibus velit necessitatibus ut est eum laboriosam id.', 2, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(142, 31, 'Marques Rosenbaum', 'Id voluptatibus pariatur et sit molestiae. Rerum veritatis vel omnis quia exercitationem qui ut. Consequuntur minus dicta illo dicta beatae.', 5, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(143, 51, 'Mr. Frankie Willms', 'Labore exercitationem dolorem soluta tempore accusamus. Vel illo et quae dolores qui. Et repudiandae aliquam nemo saepe perferendis veritatis. Provident incidunt impedit ut ea sint corporis illum esse.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(144, 55, 'Kathleen Olson IV', 'Deserunt qui aut delectus. Quia ut quasi harum et quod vel. Adipisci vel optio autem molestiae debitis nesciunt ipsum. Ratione quia et sed soluta eveniet ipsam.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(145, 50, 'Jimmy Watsica DDS', 'Quam deleniti accusantium pariatur perferendis. Optio repellendus ea consequatur aut autem qui quo. Rerum quidem perferendis quia ullam qui illo iste.', 0, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(146, 3, 'Mr. Jerome Vandervort III', 'Aut dolores omnis dolor fugit amet. Quo vero voluptatum cumque aliquid non consectetur. Aut neque sit sed quos sint.', 5, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(147, 4, 'Kendra Pacocha', 'Earum autem dolorum quia vel. Quo in omnis autem odio natus quis. Natus cumque aut iusto.', 3, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(148, 51, 'Prof. Percy Marks I', 'Necessitatibus quod placeat laboriosam esse et eum ratione molestiae. Eum sit adipisci ab laudantium quibusdam sit harum suscipit. Eaque harum voluptatem molestiae.', 0, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(149, 37, 'Cleveland Boyer', 'Aperiam dolor sunt et. Consequatur est mollitia reiciendis corporis quidem. Quia fugiat est ea et dicta. Laboriosam a optio laboriosam omnis exercitationem.', 0, '2021-08-31 08:45:53', '2021-08-31 08:45:53'),
(150, 51, 'Mr. Napoleon Connelly', 'Sunt labore voluptas ipsum quaerat in. Corporis eius nemo aut repellat blanditiis qui autem. Ut veritatis mollitia corrupti omnis. Autem quis delectus totam aut ad omnis.', 0, '2021-08-31 08:45:53', '2021-08-31 08:45:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

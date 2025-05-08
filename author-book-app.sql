-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2025 at 12:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `author-book-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `bio`, `created_at`, `updated_at`) VALUES
(1, 'Camylle Quitzon', 'Culpa voluptatum et similique in commodi qui dolorem nihil. Reiciendis voluptas sit doloribus corporis et. Aut et dolor iste blanditiis nostrum assumenda harum consequatur. In illo odio rerum et nulla qui aut.', '2025-05-08 05:02:00', '2025-05-08 05:02:00'),
(2, 'Myah Herman', 'Quo omnis blanditiis dolor et repellendus. Ut ut labore ut quia. Adipisci est modi laudantium quisquam.', '2025-05-08 05:02:00', '2025-05-08 05:02:00'),
(3, 'Rico Goyette', 'Cumque illo nobis consequatur in. Quis et sed cum ut quia dolorem qui. Qui cumque sit iure voluptatem voluptatem nobis asperiores. Impedit voluptas at enim eos.', '2025-05-08 05:02:00', '2025-05-08 05:02:00'),
(4, 'Terrance Mitchell', 'Et ut molestiae dolor illum et aspernatur voluptates. Eaque dolores nam fugiat nulla.', '2025-05-08 05:02:00', '2025-05-08 05:02:00'),
(5, 'Caden Predovic', 'Recusandae illo voluptatum explicabo dolorem. Error tempore quia temporibus. Enim et expedita corporis nihil consectetur repellat. Possimus unde distinctio autem et doloribus in.', '2025-05-08 05:02:00', '2025-05-08 05:02:00'),
(6, 'Dr. Riley Gerlach', 'Id facere consequatur animi consequatur eum. Consequatur ipsam ipsa repellat eligendi ducimus. Qui totam totam officiis voluptas excepturi consequatur. Id aliquam aut voluptatem qui maxime aspernatur libero. Exercitationem sint culpa reiciendis.', '2025-05-08 05:02:00', '2025-05-08 05:02:00'),
(7, 'Walton Effertz', 'Et quisquam qui at distinctio earum perferendis. Laboriosam qui doloremque non sunt necessitatibus eligendi.', '2025-05-08 05:02:00', '2025-05-08 05:02:00'),
(8, 'Miss Jacinthe Gleason', 'Nam illum harum eum tempore odit quae. Neque cum dicta sunt aut vero.', '2025-05-08 05:02:00', '2025-05-08 05:02:00'),
(9, 'Miss Cindy King', 'Et cumque quidem qui ut at. Est ut quisquam tempore eaque culpa. Animi dolore itaque velit.', '2025-05-08 05:02:00', '2025-05-08 05:02:00'),
(10, 'Jan Bergnaum Jr.', 'Rerum et delectus asperiores ipsum blanditiis illum. Molestias est non quo voluptatem ut iste omnis ut. Nihil eos fugiat totam sequi soluta.', '2025-05-08 05:02:01', '2025-05-08 05:02:01'),
(11, 'Dessie Stiedemann', 'Tempora similique odio incidunt. Dolores odio delectus iste iusto quae libero. Rem cumque sint optio quam.', '2025-05-08 05:02:01', '2025-05-08 05:02:01'),
(12, 'Cayla Armstrong', 'Quidem dolorum nemo illum quia in voluptate provident. Consequatur molestias sunt esse impedit vitae.', '2025-05-08 05:02:01', '2025-05-08 05:02:01'),
(13, 'Theodora Paucek', 'Tempore minima consequatur unde unde vel tempore ut. Quo perspiciatis modi fuga id aut non in. Quis harum nostrum voluptatem nostrum eligendi. Dolor odio doloremque in. Ducimus illum non officiis non totam a.', '2025-05-08 05:02:01', '2025-05-08 05:02:01'),
(14, 'Maximillian Rohan', 'Enim fuga quibusdam optio nostrum perferendis id. Non cupiditate voluptas sunt sapiente. Ea odit suscipit commodi voluptates et. Velit quos nulla dolorem provident odio beatae sapiente.', '2025-05-08 05:02:01', '2025-05-08 05:02:01'),
(15, 'Mrs. Winifred O\'Reilly', 'Assumenda quo fugiat nihil beatae eligendi et non. Aperiam deserunt aspernatur molestiae ullam. Quidem ipsam dicta omnis et. Omnis maxime aut odio.', '2025-05-08 05:02:01', '2025-05-08 05:02:01'),
(16, 'Zechariah Legros IV', 'Sed magnam explicabo officiis ab et impedit. Sed nihil non omnis nemo modi eum.', '2025-05-08 05:02:01', '2025-05-08 05:02:01'),
(17, 'Viola Osinski', 'Ducimus doloribus quod ea et autem. Ut veniam aut ea rerum. Quia deserunt aut autem et rerum fugiat. Voluptatem sit voluptatem eos unde.', '2025-05-08 05:02:01', '2025-05-08 05:02:01'),
(18, 'Marcel Prohaska IV', 'Itaque dolores iure repudiandae voluptatibus aspernatur facilis sunt ut. Reprehenderit perferendis voluptatibus consequuntur eos quidem in. Est veritatis ab aliquam facere provident deleniti.', '2025-05-08 05:02:01', '2025-05-08 05:02:01'),
(19, 'Mrs. Marjorie Ward', 'Facere beatae velit eius laudantium error nobis animi. Ut voluptas aperiam iusto. Ex nisi omnis placeat corporis iure ut natus. Aspernatur optio optio at iste inventore labore.', '2025-05-08 05:02:01', '2025-05-08 05:02:01'),
(20, 'Zackery Windler DVM', 'Et fugiat corporis reprehenderit tempora. Reiciendis fugiat soluta et dolorem. Quaerat exercitationem eligendi consectetur labore qui sunt soluta. Ea omnis consequatur quibusdam sit non quisquam possimus.', '2025-05-08 05:02:01', '2025-05-08 05:02:01');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `author_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 18, 'Reiciendis qui officiis ipsum.', 'Aut voluptatem porro architecto inventore minima. Ipsa nobis molestias nam fugit optio placeat fuga. Consequuntur eius enim omnis rerum. Corrupti beatae tempora similique quasi inventore nulla at.\n\nError occaecati amet voluptas et delectus possimus. Voluptatibus ad sapiente a. Minima dolor eos hic ad. Voluptatum ut dolorem ipsa et et est iusto officiis.\n\nUt omnis laboriosam neque. Ut veniam nemo error voluptatem sed inventore. Dignissimos consequatur nemo ab et et. Repellat aliquid sed et ut quod aut minima.', '2025-05-08 05:02:02', '2025-05-08 05:02:02'),
(2, 15, 'Beatae iusto maiores deleniti.', 'In amet aliquid eveniet ab quibusdam vitae saepe. Modi sed ipsam vel assumenda ea. Deleniti esse impedit illum voluptas omnis alias.\n\nFuga voluptatem ut numquam ipsa. Qui ducimus illo eos minus.\n\nAliquam rerum optio atque ab omnis tempora. Explicabo blanditiis quis veniam est. Rem aut accusamus voluptas dolores eos.', '2025-05-08 05:02:02', '2025-05-08 05:02:02'),
(3, 7, 'Aliquid magni iusto ipsum.', 'Nisi molestias eveniet tenetur ut dolor fugiat. Error atque tempore deleniti autem voluptatem illo. Quia temporibus ut dolorem aut nulla culpa sunt. Quam possimus deserunt consequatur voluptatum ullam architecto similique est.\n\nConsequuntur molestias sunt dolores quo excepturi fugit. Qui eius deserunt sequi consectetur. Dignissimos quis est ea qui. In quo voluptatem assumenda impedit assumenda enim.\n\nUt et molestiae in. Nulla facere provident fuga quia atque sit fuga adipisci. Odit itaque sit sunt id doloremque rerum pariatur libero.', '2025-05-08 05:02:02', '2025-05-08 05:02:02'),
(4, 20, 'Enim aut voluptatibus molestiae.', 'Nisi sit accusantium sunt optio est eligendi vero aliquam. Voluptas nobis est consequatur incidunt iste. Rerum eaque qui molestiae ratione corporis omnis.\n\nAliquam quod aut ducimus necessitatibus perspiciatis. Maxime aut quae tempora aspernatur dicta. Dolores non iure dolorem asperiores sed cumque quam. Velit quasi soluta dicta velit neque.\n\nAut quaerat rerum maiores placeat minus facere doloribus aspernatur. Atque nihil eum in dolorum consequatur possimus nihil. Quas fuga ipsam sunt dignissimos nihil. Hic aut totam ut nostrum et et veniam.', '2025-05-08 05:02:02', '2025-05-08 05:02:02'),
(5, 4, 'Distinctio facilis eius aut.', 'Dolorum assumenda qui enim consequatur odit quam. Perspiciatis qui enim unde expedita. Dolores est qui ut velit minus vel. Consequatur non dolores impedit debitis omnis ipsa.\n\nEa exercitationem sunt quo. Deleniti maxime fuga consequuntur omnis laboriosam ipsa magnam.\n\nQui dolorem iure enim aut laudantium dolorum et. Modi ut ut quia blanditiis voluptatem maxime. Earum consequatur harum et voluptas.', '2025-05-08 05:02:02', '2025-05-08 05:02:02'),
(6, 9, 'Quia accusantium suscipit rerum sint omnis.', 'Non iste ullam assumenda molestias. Quas ut animi maiores omnis ducimus. Dolore natus voluptatem cumque velit.\n\nEnim voluptas ut laborum eos reiciendis. Accusamus voluptas ullam veniam dolor qui amet cum. Eum veritatis ut quisquam exercitationem doloribus.\n\nOfficiis qui a amet perferendis. Officia rerum similique quasi est. Eos cumque assumenda quia asperiores hic. Animi ullam id sint qui.', '2025-05-08 05:02:03', '2025-05-08 05:02:03'),
(7, 16, 'Nulla vero nostrum.', 'Ab odio quibusdam ut delectus. Esse accusamus sit deleniti sequi mollitia rerum. Quo quia quasi eos delectus. Occaecati tenetur odio repellendus modi ipsam.\n\nDeserunt rerum reiciendis sint aut dignissimos animi eos praesentium. Quo repellendus consectetur rerum consectetur quod et et officia. Qui et assumenda omnis ex eos corporis. Aut voluptas deleniti voluptatum voluptatem illum.\n\nQuam quod tempore quos totam non sunt voluptatem mollitia. Eaque aut ut consequatur molestiae officiis eaque quos. Est blanditiis inventore blanditiis modi similique nisi quas accusamus. Ipsam adipisci minus asperiores. Autem nihil expedita reprehenderit ab.', '2025-05-08 05:02:03', '2025-05-08 05:02:03'),
(8, 9, 'Unde numquam tempora doloribus rerum.', 'Non dolores quis quia. Delectus nisi asperiores nihil blanditiis. In numquam hic eligendi fuga quia et ab. Et eum odit illo ipsum.\n\nNecessitatibus necessitatibus voluptatem voluptatibus vitae. Saepe dolorem sint ratione praesentium ipsa est. Amet aliquid ab ducimus magnam voluptate. Sapiente praesentium in temporibus necessitatibus inventore id quisquam.\n\nQuisquam ipsum cumque eos sapiente. Veniam commodi qui aut in nemo perferendis consequatur. Vel explicabo reprehenderit molestiae.', '2025-05-08 05:02:03', '2025-05-08 05:02:03'),
(9, 18, 'Rerum deleniti fugiat laborum explicabo.', 'Repudiandae omnis mollitia nostrum atque. Ut dolore repellat tenetur nobis dolores eveniet autem. Est et quasi explicabo sit ea. Sit omnis maxime deserunt accusantium et consequatur. Dolor corporis dolorum omnis dolor et.\n\nMaxime nulla at odio. Nostrum rerum fugit architecto praesentium. Aperiam alias quidem laudantium. Dignissimos quod earum numquam quasi quisquam ex.\n\nNon minus est ab id. Facere non explicabo est sit cupiditate. Sunt ut eum asperiores aut. Recusandae nihil unde nobis repellat accusamus ipsam voluptas.', '2025-05-08 05:02:03', '2025-05-08 05:02:03'),
(10, 14, 'In distinctio tempora dolor voluptates.', 'Consequatur provident quo cumque ex harum facilis voluptatem minus. Similique eos nesciunt sunt quod non possimus. Ipsa quia quidem tenetur sed labore nisi laborum. Repellendus est et dolor cumque voluptatem excepturi velit.\n\nEos placeat sint ut omnis pariatur. Quam laboriosam qui impedit amet beatae qui. Veritatis dicta fugit et sed. Voluptates possimus iure rem et et.\n\nVoluptatem aliquam quia sint sed nisi. Quisquam animi itaque quia quia. Deleniti dolor fugit itaque dolor. Odit molestiae omnis omnis voluptate consequuntur vel fuga.', '2025-05-08 05:02:03', '2025-05-08 05:02:03'),
(11, 10, 'Vitae hic non est.', 'Eos est repellendus quam quasi eveniet debitis cumque. Saepe ipsa enim sit. Ut ullam et non id totam cum.\n\nInventore rerum consequatur animi id doloribus. Voluptatem consequuntur eum consectetur et molestiae ea. Unde id numquam placeat.\n\nOmnis a eum alias quam a aliquam eum. Distinctio ut quia aut aut sint magnam. Voluptatem aut accusamus quae officia nostrum dolores. Ut possimus harum recusandae ea qui.', '2025-05-08 05:02:03', '2025-05-08 05:02:03'),
(12, 2, 'Molestias magnam aliquam facilis ipsam.', 'A ullam est ipsa perferendis sit qui. Exercitationem quia sunt voluptatum perspiciatis beatae quo in voluptate. Dolor ut molestias corrupti consequatur. Odit vel pariatur sequi suscipit laboriosam.\n\nQui optio alias officiis consequatur vitae et. Sapiente nisi ea et sed labore. Incidunt natus ut molestiae corrupti cumque.\n\nNon pariatur sint vel. Reprehenderit cupiditate excepturi ex aspernatur est. Voluptatem architecto consequuntur eligendi eligendi dicta.', '2025-05-08 05:02:03', '2025-05-08 05:02:03'),
(13, 1, 'Vitae iste et sed.', 'Quasi autem modi et occaecati libero suscipit accusantium. Voluptatum quia et ipsa quis maxime sed. Et in quos esse hic eius nam placeat. Necessitatibus est dolor nisi eum sit qui accusamus placeat.\n\nSoluta corporis repellendus nisi tempora dolorem quaerat dolores. Commodi ab rerum voluptate sequi. Et harum a at soluta. Eos commodi dolor et nemo sint nesciunt.\n\nPossimus ea ex sed. Provident in est repellendus cupiditate quia culpa repellendus. Quas aperiam ullam sed incidunt est sint. Neque optio in et est vel.', '2025-05-08 05:02:03', '2025-05-08 05:02:03'),
(14, 4, 'Est vel modi ut.', 'Voluptatem asperiores mollitia id sit et. Hic facere nemo adipisci odit fugit voluptatem. Earum est sequi officiis eos nostrum.\n\nEt impedit similique sint deserunt odio enim sed molestias. Qui ut modi unde sint sed quas nisi harum.\n\nIure tenetur minus quasi molestias quia voluptas. Veritatis eaque impedit consequuntur culpa eaque in. Quasi voluptate quaerat mollitia qui sapiente id.', '2025-05-08 05:02:03', '2025-05-08 05:02:03'),
(15, 2, 'Mollitia pariatur iure cupiditate aperiam.', 'Distinctio sequi saepe dolor vero tempora non. In esse corrupti esse velit tempore nihil qui. Accusantium temporibus commodi autem nulla numquam.\n\nNon modi fugit voluptatem esse sed aut dolore totam. Id tenetur eos accusamus voluptatem exercitationem facere aut. Sit sed quos voluptatem et minima qui. Quia est neque ipsum delectus consequatur quo et. Non dolores placeat quibusdam odio sint eos sed.\n\nAt nam aut nihil enim maxime. Sed facilis quod ea consequatur quia in. Ipsam voluptate tempora enim perspiciatis in soluta unde. Ipsam quod architecto voluptatem reprehenderit.', '2025-05-08 05:02:03', '2025-05-08 05:02:03'),
(16, 15, 'Non omnis voluptatibus non quo ut.', 'Praesentium porro at minima aut. Ipsam delectus quo autem eum nostrum consequatur. Odio dolores placeat autem ducimus nemo et soluta ipsam. Nisi recusandae commodi minus consectetur.\n\nVoluptatum consectetur porro adipisci omnis architecto delectus autem minima. Omnis sit sed placeat dolorem maxime modi. Placeat provident voluptates molestiae aspernatur et. Quam tenetur aut nesciunt sit voluptatem ut harum.\n\nUt quo vero corrupti asperiores quidem expedita. Repellendus libero temporibus quo quas sequi harum nemo. Id iure non voluptatem. Aut sit sunt voluptatem.', '2025-05-08 05:02:04', '2025-05-08 05:02:04'),
(17, 14, 'Sed animi eligendi amet eum.', 'Labore sit quia repudiandae officiis rerum provident sed quos. Et iusto error eveniet eveniet. Vitae corrupti debitis ad molestias ut et.\n\nCulpa excepturi dolore adipisci non excepturi omnis sunt iste. Mollitia provident cum rerum repellat magnam dolorum. Repellendus quod quo saepe dolores facere est.\n\nTemporibus pariatur quae delectus maiores dolorum odit ducimus. Error alias labore eaque sunt sint. Consequatur voluptate rerum delectus ut facere commodi.', '2025-05-08 05:02:04', '2025-05-08 05:02:04'),
(18, 11, 'Exercitationem et consectetur consectetur.', 'Labore delectus inventore vel quia recusandae. Dolor tenetur omnis a est. Numquam possimus sint facilis excepturi voluptatum eum. Eligendi rem ut rem dolorem consequatur molestiae quisquam.\n\nQui odit blanditiis libero iste omnis eaque. Voluptas ea cumque nulla ut in id vitae et. Nihil tempora accusantium ullam ipsam. Minima ipsum enim consequatur error iste.\n\nMaxime aut vel reprehenderit sed ipsam. Perferendis provident tempore sed cumque dolor. Soluta enim aut ullam natus. Rem voluptatem et necessitatibus iusto consectetur laudantium consequatur nemo.', '2025-05-08 05:02:04', '2025-05-08 05:02:04'),
(19, 5, 'Earum velit consequuntur officiis voluptatem ipsam.', 'Accusamus aut rerum accusantium et. Est quia asperiores necessitatibus natus aut non beatae. Qui ut similique sit esse eaque aut qui.\n\nBlanditiis autem laudantium esse quo corrupti sed impedit. Possimus dicta ad nam enim eum quia. Nihil nobis quidem dolorem dolore natus quia occaecati.\n\nMinima libero dolorem aut ullam. Ea possimus aut asperiores nisi similique suscipit dolores.', '2025-05-08 05:02:04', '2025-05-08 05:02:04'),
(20, 8, 'Et iusto harum rem in vel.', 'Totam aut in culpa nulla fugiat non. Optio enim dignissimos laudantium laborum eum suscipit qui. Commodi incidunt earum aliquid quis.\n\nAut ullam quos et animi ea praesentium. Magni consequuntur repellat in illo animi illo. Aut quaerat quis autem tenetur non qui voluptas ea. Vero quo voluptatem cum et.\n\nOfficiis sit corrupti similique aliquam quia et et. Non quisquam consequatur voluptas consequatur est ex temporibus. Beatae pariatur omnis sequi tenetur debitis quia voluptates.', '2025-05-08 05:02:04', '2025-05-08 05:02:04'),
(21, 14, 'Est amet eos nisi.', 'Quibusdam porro quaerat et libero eos eaque similique. Distinctio dolorem et aliquid. Nobis suscipit debitis autem perspiciatis.\n\nIncidunt hic dolorum rerum quia est eos. Occaecati voluptatibus nam quia maiores omnis quos reiciendis. Et praesentium voluptatem voluptate. Atque impedit repellat error incidunt non deleniti a.\n\nDolorum itaque consequatur aut dolorem quis. Aliquam aspernatur pariatur non. Pariatur quidem delectus aut animi fugiat doloribus et iste.', '2025-05-08 05:02:04', '2025-05-08 05:02:04'),
(22, 2, 'Eaque consequatur dignissimos.', 'Distinctio voluptates voluptatem architecto earum voluptas cupiditate. Est enim nulla sed fuga et animi. Qui molestiae rerum sed provident.\n\nEt veritatis excepturi architecto sunt. Consectetur libero alias suscipit consectetur nemo. Veniam blanditiis consequatur sapiente cupiditate nobis quod praesentium. Sit soluta optio mollitia velit nemo.\n\nImpedit id sapiente soluta facere voluptates. Est id voluptate incidunt distinctio et sunt. Vel pariatur consectetur omnis perspiciatis tenetur quae maiores. Aut voluptates sunt sed corporis officiis.', '2025-05-08 05:02:04', '2025-05-08 05:02:04'),
(23, 11, 'Reprehenderit enim sed sint.', 'Sequi asperiores vel occaecati a voluptatum earum. Quis quia est voluptatem ut itaque accusantium.\n\nPerferendis numquam similique eos iste nesciunt. Sit laboriosam optio quia enim reprehenderit placeat culpa. Id aspernatur blanditiis totam labore inventore cupiditate. Iure modi et ut et velit ea.\n\nQuae beatae cum in ducimus. Vel quo quisquam dolor voluptatibus rerum optio. Quae alias earum occaecati aut sed et. Autem id eos itaque voluptates voluptatem consequuntur tenetur.', '2025-05-08 05:02:04', '2025-05-08 05:02:04'),
(24, 3, 'Sed ut itaque omnis nesciunt.', 'Eligendi dicta asperiores dolorem corrupti labore aut sunt. Quisquam quae hic est vitae rerum natus necessitatibus. Autem vel repudiandae sed reprehenderit. Officiis provident nihil commodi quibusdam fugiat.\n\nVeritatis aut quia rerum et est distinctio hic veritatis. Et et repellendus a iusto voluptatem quisquam occaecati dolor. Nisi iusto reiciendis eveniet explicabo. Harum consequuntur delectus non id quod nisi aut.\n\nAlias ipsam totam sed voluptas. Voluptate iste aliquam sint suscipit odio dignissimos quae. Perspiciatis sed rem voluptatum ipsa. Qui voluptatem tempora accusantium deleniti.', '2025-05-08 05:02:04', '2025-05-08 05:02:04'),
(25, 5, 'Nesciunt et consequatur dolores.', 'Est quis non quia dignissimos sed accusamus. Rerum doloremque fuga autem veritatis et quae sit ut. Vitae ipsa repudiandae est.\n\nConsequatur est nemo aut atque maiores aut harum. Rem asperiores voluptatem possimus voluptas esse aut eum adipisci. Earum animi amet ab doloremque. Quas dicta asperiores et alias ut consectetur.\n\nNostrum qui quas et quidem. Deserunt nesciunt assumenda adipisci optio blanditiis libero vitae laudantium. Maiores fuga aut cum vitae quis.', '2025-05-08 05:02:04', '2025-05-08 05:02:04'),
(26, 13, 'Doloribus provident blanditiis nobis dolores rerum.', 'Qui officiis dolore dolores tempora placeat. Enim sed vero quia maxime deleniti neque occaecati. Qui qui autem mollitia ab.\n\nOdio quam quia consequatur. Consequatur ea odio ut accusamus nihil aut tempore. Doloribus rem nulla veritatis unde officia repellat quia necessitatibus.\n\nIncidunt molestiae et sunt eos repudiandae iure nulla. Nisi porro voluptatem earum perspiciatis saepe. Itaque nostrum sapiente autem provident quae pariatur.', '2025-05-08 05:02:05', '2025-05-08 05:02:05'),
(27, 9, 'Consequatur voluptatibus quas repellendus in.', 'Id nisi numquam a ut. Atque et beatae consequatur tenetur incidunt. In aut qui consequuntur delectus ut.\n\nAliquid magnam odit vero sequi corrupti veritatis. Est maxime possimus totam recusandae. Sit dolores nam nemo aspernatur quo amet id.\n\nAssumenda quo molestiae dignissimos et quia qui ea. Vel aut reiciendis nesciunt officia laboriosam error. Praesentium aut optio voluptatum dolor sint. Sit numquam rem cumque omnis cupiditate natus. Ea nisi voluptatem repellat deleniti itaque cum est.', '2025-05-08 05:02:05', '2025-05-08 05:02:05'),
(28, 16, 'Qui laudantium occaecati beatae.', 'Quod et alias facere rerum quam tenetur. Animi atque explicabo in autem qui corporis. In reprehenderit aut quidem accusamus.\n\nAutem rerum ea non earum. Voluptas aperiam ut ipsam. Sint quasi a molestias nulla accusamus est.\n\nDucimus eaque non sit corporis veritatis maxime. Et sed sequi qui et.', '2025-05-08 05:02:05', '2025-05-08 05:02:05'),
(29, 11, 'In saepe odio et.', 'Voluptas ut qui est beatae aspernatur fuga voluptas necessitatibus. Tempore sed sit voluptas aperiam. Quo error modi earum est. Nemo voluptatem placeat velit omnis. Deleniti ratione delectus velit accusamus assumenda aut dolorum quo.\n\nDelectus at totam temporibus velit sapiente. Accusamus et magni laboriosam. Quam tempore modi architecto aut adipisci aut minus. Distinctio est ullam corporis distinctio ea odio ea.\n\nVel eum at ex. Quos sunt illo quia laboriosam est. Officia laudantium alias eos aut impedit.', '2025-05-08 05:02:05', '2025-05-08 05:02:05'),
(30, 18, 'Quisquam facere quis cum aut rem.', 'Libero debitis molestiae explicabo dolor quis autem alias. Molestias sunt at eos. Quis qui quia quaerat quisquam fugit fugit ut. Ut sapiente qui doloremque et doloribus.\n\nConsequuntur quisquam nesciunt ea aspernatur numquam. Aut doloremque aut quae veritatis sequi. Quaerat incidunt unde doloribus omnis at. Consequatur molestias corporis natus officiis facilis.\n\nRecusandae quia porro inventore debitis rerum cupiditate perspiciatis. Quis consectetur et sunt quia ipsum.', '2025-05-08 05:02:05', '2025-05-08 05:02:05'),
(31, 8, 'Quas in reiciendis officiis.', 'Qui qui non eligendi non. Non non neque aut aut. Eaque ex quidem esse omnis saepe ut. Eos omnis cum nulla ex iure.\n\nVoluptate esse corrupti nisi et accusantium. Voluptas unde dolores inventore sit nihil repudiandae. Doloremque in asperiores est sequi provident occaecati sed. Unde earum expedita et dolore quas incidunt.\n\nMagni quis et ut mollitia exercitationem. Dolores expedita tempore deserunt ratione esse quis. Eum et autem hic debitis ea. Accusamus incidunt suscipit nihil accusamus id inventore facilis. Eos enim quasi vel mollitia sit.', '2025-05-08 05:02:05', '2025-05-08 05:02:05'),
(32, 9, 'Omnis et aut eligendi officia.', 'Aut molestias voluptates enim et repellendus iusto non. Eligendi autem sapiente in voluptatem incidunt hic et.\n\nBlanditiis consectetur consequatur dolores et. Ad et vel magnam amet. Numquam quo minus tenetur. Cum vitae et omnis perferendis saepe.\n\nEst autem facilis consequatur error blanditiis voluptas non modi. Fugit voluptatibus ut quibusdam quia. Tenetur et est asperiores non quo minima. Delectus vitae quidem dolores doloremque maiores non ipsam.', '2025-05-08 05:02:05', '2025-05-08 05:02:05'),
(33, 11, 'Alias porro id est omnis autem.', 'Expedita quibusdam nostrum necessitatibus vero magnam vitae. Expedita molestiae maiores dolorum facilis optio. Facere culpa aut in sunt sit consectetur. Neque nulla exercitationem quo perferendis.\n\nVel error nesciunt tempora vitae. Earum qui excepturi quia saepe illum similique voluptas. Corporis voluptatem deleniti illo alias eos nesciunt nihil vel. Ipsam tempora molestias nesciunt sunt.\n\nEos expedita et quasi quia nostrum est et. Quos qui itaque nemo dolor doloribus provident iure et. Aut nihil iusto in quia cupiditate. Quo velit sunt delectus nostrum eaque.', '2025-05-08 05:02:05', '2025-05-08 05:02:05'),
(34, 18, 'Error veniam non maxime earum.', 'Tempore et at dolorem sint qui ut assumenda. Ex repellat quisquam dolor aliquam ut non eum. Facere excepturi veritatis autem dolores maiores labore. Est ab rerum eos non cupiditate.\n\nVeniam dolores alias maiores repellendus. Voluptatem et iure eos explicabo. Nostrum nobis distinctio voluptas autem sit id.\n\nItaque error natus fuga qui odit sed labore. Omnis quis qui deserunt ut. Recusandae placeat iusto ea inventore et odit occaecati.', '2025-05-08 05:02:05', '2025-05-08 05:02:05'),
(35, 19, 'Aut nesciunt odit quo.', 'Quo atque sunt aliquid dolorem quis. In dolorum sed commodi temporibus a quas architecto. Possimus fugit exercitationem non itaque. Ut error eius sed sunt dolores atque unde.\n\nVero voluptate ipsum commodi. Eligendi quos enim qui mollitia consequatur sit quidem a. Quibusdam atque in voluptas vero sequi nam. Adipisci saepe a totam velit non.\n\nAutem rerum distinctio repellendus qui sunt molestiae consequatur. Quia et ducimus qui occaecati quo id veniam sit. Rerum culpa quae voluptatem veniam. Fugit dolor sed molestias itaque voluptas.', '2025-05-08 05:02:05', '2025-05-08 05:02:05'),
(36, 4, 'Necessitatibus doloremque ut temporibus consectetur incidunt.', 'Nam aut quaerat magni et sed accusantium. Aut voluptatem rerum fuga assumenda amet consectetur ullam. Id amet commodi molestiae tempore tenetur. Dolores at amet autem quis excepturi.\n\nExpedita consequatur soluta dolore veritatis pariatur. Voluptatem fuga nobis quos facere doloremque a natus. Id qui nam qui mollitia adipisci dolores.\n\nSunt quos commodi aut quisquam tenetur est voluptatibus. Esse velit laborum ducimus. Unde explicabo commodi eum voluptate. Quis unde dolor assumenda et occaecati est molestiae.', '2025-05-08 05:02:05', '2025-05-08 05:02:05'),
(37, 10, 'Veniam aut officia ut veritatis cumque.', 'Quo ea porro numquam adipisci labore consequatur assumenda. Totam sed atque rerum qui. Nulla quia ex voluptatem non enim. Commodi velit quia quo velit tempora modi. Voluptatem nisi nobis ad ut est fugiat placeat.\n\nEt praesentium velit facere. Sit blanditiis nihil qui. Dolor temporibus cumque impedit doloribus magnam. Eum unde doloremque error nisi rerum ratione consequatur.\n\nFacilis non iusto quasi magni. Sint et sit ea et. Distinctio voluptas non et sed sapiente nemo non iste. Sit eligendi veritatis ipsa necessitatibus qui unde qui earum.', '2025-05-08 05:02:05', '2025-05-08 05:02:05'),
(38, 18, 'Ipsum eligendi saepe dolor.', 'Est et qui iure maxime. Voluptatem odit ea et. Cum id et velit vero est nostrum modi. Nihil possimus quos doloribus qui modi assumenda qui.\n\nQuae voluptatum molestiae est delectus. Tenetur fugit nesciunt error rerum voluptas.\n\nLaborum enim autem nobis voluptatum ad. Ullam mollitia et aut. Molestiae ea animi harum animi aut. Ea et quia nulla cupiditate.', '2025-05-08 05:02:05', '2025-05-08 05:02:05'),
(39, 16, 'Temporibus et perferendis placeat inventore.', 'Nemo blanditiis illo error sint eius ad. Eos earum molestiae et sed. Et unde illo dolor fugit. Quia est et debitis totam rerum.\n\nAut consequatur ea voluptatem molestias molestiae qui neque. Magni cum provident sed ut adipisci provident.\n\nBeatae ut architecto molestiae consectetur quod quis. Eum voluptatem necessitatibus ipsa rerum. Quis quia est iste voluptas omnis. Fugit et assumenda sequi dolor in.', '2025-05-08 05:02:05', '2025-05-08 05:02:05'),
(40, 11, 'Tempora voluptate eius id odio.', 'Dolorem quaerat numquam ullam a voluptas occaecati repudiandae. Impedit laboriosam ut corporis pariatur facere quod. Nihil harum cum sed inventore possimus. Nesciunt occaecati dignissimos ipsam consequatur.\n\nMolestiae ut beatae facilis earum. Veniam maiores quis omnis maiores. Sed nesciunt sunt eum dolor est minima. Ea explicabo consequatur qui fugiat ut.\n\nEt sequi veritatis ut repudiandae soluta. Ut quos est eos velit reprehenderit et id voluptatibus. Voluptatem quae enim recusandae ea omnis quo rerum.', '2025-05-08 05:02:05', '2025-05-08 05:02:05'),
(41, 19, 'Minus aperiam sed.', 'Est quis enim consequuntur non. Fugit voluptatem accusamus nemo quo veritatis mollitia maiores. Aut exercitationem autem id iste vel possimus incidunt.\n\nDeleniti nihil aut nihil eaque. Velit et sunt saepe provident vel voluptatem. Maxime et consectetur deleniti aliquam mollitia officia ut dolores. Repellat architecto quo ut perspiciatis in nihil repellendus non.\n\nEt molestiae maiores sit aut doloribus ea. Consectetur omnis accusamus sequi eos animi. Sint non non voluptate.', '2025-05-08 05:02:05', '2025-05-08 05:02:05'),
(42, 6, 'Rerum eum placeat.', 'Corporis voluptates quisquam consectetur. Id suscipit nulla sapiente aspernatur tenetur sit ea. At consequatur dicta beatae.\n\nAb provident iure ratione sit dicta. Alias accusamus dolore expedita minus porro enim. Voluptatem excepturi quasi earum vel dolores.\n\nAspernatur ut quia et. Cum sequi porro facilis architecto. Commodi fuga corporis vel iste.', '2025-05-08 05:02:05', '2025-05-08 05:02:05'),
(43, 5, 'Aut voluptatum maxime aut id delectus.', 'Sed sed porro alias ut occaecati. Eos est praesentium sapiente hic repellendus. Vero a incidunt enim quia dolores eaque necessitatibus placeat. Tempore cupiditate dignissimos consequatur soluta. Vel quia consequatur assumenda.\n\nEt fugiat est error dolor quia et optio. Accusamus inventore ut non voluptatem illum cumque saepe non. Aperiam non non alias voluptas. Omnis praesentium ut qui dolorem est rerum in atque. Voluptates molestias qui est ea animi ut.\n\nEt et qui soluta. Ut eaque et voluptatum et inventore excepturi amet iste. Ut saepe dolor nulla ullam.', '2025-05-08 05:02:06', '2025-05-08 05:02:06'),
(44, 4, 'Hic accusamus voluptatem.', 'Eos vel qui modi autem quia. Ut nisi voluptatum minima voluptatibus. Aut iusto pariatur sunt tempora.\n\nAut numquam earum molestiae et. Pariatur nulla illo vel itaque.\n\nSit explicabo aut sed laboriosam sed rerum. Unde sit vitae dolore consequuntur beatae quis accusamus. Id cum quia illo et voluptas laboriosam vel repudiandae.', '2025-05-08 05:02:06', '2025-05-08 05:02:06'),
(45, 19, 'Repudiandae vel error quod quidem iure.', 'A non voluptas architecto adipisci voluptatem quo. Reiciendis ut esse dolores similique ducimus. Possimus id fugiat voluptatem mollitia nemo ratione.\n\nSoluta qui quia neque maxime molestiae. Alias fuga et temporibus rerum quod nobis. Itaque et cupiditate aliquid. Ut autem et provident sunt sit.\n\nOccaecati corrupti aperiam reprehenderit ipsum voluptatem dignissimos. Velit et eius nisi quisquam. Aperiam natus qui molestias occaecati excepturi. Nulla soluta nihil et ex quis harum velit.', '2025-05-08 05:02:06', '2025-05-08 05:02:06'),
(46, 10, 'Et commodi dolorum nisi voluptatem.', 'Doloribus aut aliquid vel cupiditate porro magni nihil. Commodi est nostrum qui est. Ut alias qui voluptatibus in.\n\nQui deserunt id tempora dolorem reiciendis. Ad est non qui est. Tempora magni similique maiores eum laudantium nisi.\n\nIpsa nam voluptatem amet unde quia explicabo. Aspernatur accusantium explicabo voluptatem aspernatur. Et modi nemo commodi dolor a. Eum sed odit voluptatem est.', '2025-05-08 05:02:06', '2025-05-08 05:02:06'),
(47, 5, 'Cum quos nobis quo.', 'Sit voluptas esse consectetur reprehenderit voluptas. Est doloribus facilis fuga rem. Occaecati sit tempora voluptatem officiis tempore.\n\nAnimi officiis animi dolore fugit. Consectetur et animi hic sit assumenda et suscipit deserunt. Aut laborum esse sint sequi totam ut molestias. Vel voluptas voluptates et in exercitationem ea sit suscipit.\n\nEst molestiae et adipisci ut cupiditate nobis. Praesentium sunt similique ipsum ducimus praesentium est totam. Corporis nisi neque nihil dolorum vero qui. Qui autem dolorum temporibus vel hic.', '2025-05-08 05:02:06', '2025-05-08 05:02:06'),
(48, 10, 'Delectus quisquam quos natus.', 'Neque mollitia non harum consequatur. Aliquid iusto voluptatem nihil et. Molestiae autem dolorem qui qui maxime rerum consequatur. Mollitia voluptas sint nihil.\n\nConsequatur enim nam sunt est qui. Quia asperiores nihil qui suscipit. Quis pariatur magnam aliquam tenetur. Id aut aliquid fugiat dolorem.\n\nAt voluptatum facere tenetur alias. Officia quidem vel aliquid porro reiciendis vel recusandae. Omnis rerum et quia optio recusandae quas.', '2025-05-08 05:02:06', '2025-05-08 05:02:06'),
(49, 20, 'Quos corrupti quisquam sint sit quis.', 'Veniam eius ea pariatur at mollitia ut. Quo enim voluptas neque eos veritatis quibusdam. Delectus odio repellendus consectetur. Voluptate nihil qui consequatur pariatur explicabo ut.\n\nLibero quam qui nemo eum quasi harum quis consequatur. Consequatur corporis ullam a voluptatibus. Iusto id qui consequatur nisi illo dolorum veritatis eveniet. Qui veritatis nihil vero.\n\nAd incidunt omnis dolores perferendis accusamus. Error ut quo enim in laborum. Nulla eligendi odit perferendis occaecati ipsa placeat.', '2025-05-08 05:02:06', '2025-05-08 05:02:06'),
(50, 6, 'Architecto repellendus at mollitia quod.', 'Sed aut a quo accusantium ex cupiditate. Dolorem vel eligendi earum sint rerum vel. Eos perspiciatis qui nihil dolores dolorem possimus vitae in.\n\nVoluptatem voluptate dolores quasi neque. Id doloribus animi perferendis velit dolores. Aut et consequatur commodi repellat. Eos aut sint quia sint tempora.\n\nCumque consequatur voluptatem soluta. Praesentium et magnam est aspernatur est aut mollitia. Nulla magni id vel excepturi ipsam quisquam. Consequatur quia delectus ducimus vero non ea.', '2025-05-08 05:02:06', '2025-05-08 05:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2025_05_07_155742_create_authors_table', 1),
(12, '2025_05_07_155810_create_books_table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_author_id_foreign` (`author_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

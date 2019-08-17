-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 22-Maio-2019 às 16:50
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cadastro_estudo`
--
CREATE DATABASE IF NOT EXISTS `cadastro_estudo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cadastro_estudo`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dependentes`
--

CREATE TABLE `dependentes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datanascimento` date NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `dependentes`
--

INSERT INTO `dependentes` (`id`, `nome`, `datanascimento`, `user_id`, `created_at`, `updated_at`) VALUES
(13, 'teste', '2019-05-20', 17, NULL, NULL),
(14, 'teste 13', '2019-05-13', 19, NULL, NULL),
(16, 'aaaa', '2019-05-22', 41, NULL, NULL),
(17, 'aaaaa', '2019-05-22', 41, NULL, NULL),
(18, 'eeeu', '2019-05-22', 17, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datanascimento` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `foto`, `email`, `datanascimento`, `created_at`, `updated_at`) VALUES
(17, 'aaa', '17.jpg', 'aaaaa@aaa.com', '2019-06-01', '2019-05-22 03:00:00', '2019-05-22 03:00:00'),
(18, 'teste12', 'a45ee3d8c194eb725e49c34647d103f2.jpg', 'aaaa@aaa.com', '2019-05-22', '2019-05-22 03:00:00', '2019-05-22 03:00:00'),
(19, 'teste13', 'a45ee3d8c194eb725e49c34647d103f2.jpg', 'aaaa@aaa.com', '2019-05-22', '2019-05-22 03:00:00', '2019-05-22 03:00:00'),
(20, 'teste15', 'a45ee3d8c194eb725e49c34647d103f2.jpg', 'aaaa@aaa.com', '2019-05-22', '2019-05-22 03:00:00', '2019-05-22 03:00:00'),
(21, 'teste16', 'a45ee3d8c194eb725e49c34647d103f2.jpg', 'aaaa@aaa.com', '2019-05-22', '2019-05-22 03:00:00', '2019-05-22 03:00:00'),
(22, 'teste17', 'a45ee3d8c194eb725e49c34647d103f2.jpg', 'aaaa@aaa.com', '2019-05-22', '2019-05-22 03:00:00', '2019-05-22 03:00:00'),
(23, 'teste18', 'a45ee3d8c194eb725e49c34647d103f2.jpg', 'aaaa@aaa.com', '2019-05-22', '2019-05-22 03:00:00', '2019-05-22 03:00:00'),
(24, 'teste19', 'a45ee3d8c194eb725e49c34647d103f2.jpg', 'aaaa@aaa.com', '2019-05-22', '2019-05-22 03:00:00', '2019-05-22 03:00:00'),
(25, 'teste20', 'a45ee3d8c194eb725e49c34647d103f2.jpg', 'aaaa@aaa.com', '2019-05-22', '2019-05-22 03:00:00', '2019-05-22 03:00:00'),
(26, 'teste21', 'a45ee3d8c194eb725e49c34647d103f2.jpg', 'aaaa@aaa.com', '2019-05-22', '2019-05-22 03:00:00', '2019-05-22 03:00:00'),
(27, 'teste22', 'a45ee3d8c194eb725e49c34647d103f2.jpg', 'aaaa@aaa.com', '2019-05-22', '2019-05-22 03:00:00', '2019-05-22 03:00:00'),
(28, 'teste23', 'a45ee3d8c194eb725e49c34647d103f2.jpg', 'aaaa@aaa.com', '2019-05-22', '2019-05-22 03:00:00', '2019-05-22 03:00:00'),
(29, 'teste24', 'a45ee3d8c194eb725e49c34647d103f2.jpg', 'aaaa@aaa.com', '2019-05-22', '2019-05-22 03:00:00', '2019-05-22 03:00:00'),
(35, 'augusto', 'ba298ce3dee338bd3b87dca423fba901.jpg', 'kkkkeeke@email.com', '2019-05-23', NULL, NULL),
(36, 'aaaaaaaa', '8457441fe248f45b52b5609644292279.gif', 'aaaaa@aaa.com', '2019-05-22', NULL, NULL),
(37, 'aaaaaaaa', '2774c430e3e3927c733a451ab3673186.gif', 'aaaaa@aaa.com', '2019-05-30', NULL, NULL),
(38, 'aaaaa', '1818f1e234f306aceba4b0f5ec6a72bb', '', '2019-05-22', NULL, NULL),
(39, 'foi eeee', '75dee03a17a04fc1ac690e5d237ecbd8.gif', 'aaaaaa@aaaaa', '2019-05-22', NULL, NULL),
(40, 'aaaaa', '9e6d52254f0eed2f805361d719ae4c88', 'aaaaa@aaa.com', '2019-05-22', NULL, NULL),
(41, 'aaaaaa', 'b3944100e6000320b3e5dec00978b303.jpg', 'aaaaa@gmail.com', '2019-05-22', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_22_024405_create_funcionarios_table', 1),
(4, '2019_05_22_024752_create_dependentes_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
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
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'augusto', 'augustoperez696@live.com', NULL, '$2y$10$WB8n1cQeUFU4kq.f8IB9Le7zJahHtxdF5rv.1f9Se1o3/xrW7cUwq', NULL, '2019-05-22 07:29:34', '2019-05-22 07:29:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dependentes`
--
ALTER TABLE `dependentes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dependentes_user_id_foreign` (`user_id`);

--
-- Indexes for table `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dependentes`
--
ALTER TABLE `dependentes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `dependentes`
--
ALTER TABLE `dependentes`
  ADD CONSTRAINT `dependentes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `funcionarios` (`id`) ON DELETE CASCADE;
--
-- Database: `cursopg`
--
CREATE DATABASE IF NOT EXISTS `cursopg` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cursopg`;
--
-- Database: `restaurantes`
--
CREATE DATABASE IF NOT EXISTS `restaurantes` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `restaurantes`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_03_27_181042_products', 1),
(14, '2019_03_27_181138_create__table__products', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
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
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alda Hessel', 'isauer@example.com', '2019-03-27 22:23:10', '$2y$10$aVMZ0hA0.TJ7RFfqJqeud.HKY1tJzIxCs/QDr.Q9Lb0xleuzuqB7m', 'BvpuGH3qwd', '2019-03-27 22:23:13', '2019-03-27 22:23:13'),
(2, 'Alysson Steuber', 'leonard86@example.org', '2019-03-27 22:23:11', '$2y$10$p9bHCUTYtDuu7ZqD/fAMLOUZJB8z0.AmUjmC.PgXERxpalbg8qCFO', 'jSviAz4G2D', '2019-03-27 22:23:13', '2019-03-27 22:23:13'),
(3, 'Rupert Cartwright', 'mertz.alta@example.com', '2019-03-27 22:23:11', '$2y$10$5wdzbyJBLRMHgpLshFGRpuxqBVyn3O0iL.77VauONyRt/QJ9Ro7.C', 'wV26a0v2kU', '2019-03-27 22:23:13', '2019-03-27 22:23:13'),
(4, 'Adriel Gleason PhD', 'ckuhic@example.org', '2019-03-27 22:23:11', '$2y$10$/Cr//43l7uxq6vDmnc3lM..jr4yvQ5S8v9YnogZMc27YxLGJWr0Hi', 'LmMLCoXeeP', '2019-03-27 22:23:13', '2019-03-27 22:23:13'),
(5, 'Omer Towne', 'schaden.laney@example.com', '2019-03-27 22:23:11', '$2y$10$WNBHrurWeMcW4N27hR4qiuHla.1uTYlaPBZZJaXC4jM02B4MgjXh6', 'RjpXz8DFS9', '2019-03-27 22:23:13', '2019-03-27 22:23:13'),
(6, 'Miss Cleta Kertzmann', 'hdooley@example.net', '2019-03-27 22:23:11', '$2y$10$a4xDhe4t20/Hss/iJ2g1G.uAUt3QrkpXZclSlSIPEY074PSG5MGjm', 'aABN7dUP7D', '2019-03-27 22:23:13', '2019-03-27 22:23:13'),
(7, 'Prof. Kenna Stamm', 'aschowalter@example.net', '2019-03-27 22:23:11', '$2y$10$9Z0784Ey.C5wOM8N3Q1AH.W45s3lTrSclDwGZ1mbTS6jcNo.v0JNu', 'jXM4SgnIBs', '2019-03-27 22:23:13', '2019-03-27 22:23:13'),
(8, 'Adelle Ritchie', 'keira34@example.net', '2019-03-27 22:23:11', '$2y$10$beGMOR2KHqByZU8yURyoxO0cAkOainETOtfFH/3LMBofYCYQw1WYW', 'qWZ5X4QN8C', '2019-03-27 22:23:13', '2019-03-27 22:23:13'),
(9, 'Cristobal Greenfelder', 'emely.schultz@example.com', '2019-03-27 22:23:11', '$2y$10$zhu/xP62FnGZWTiaEZnWWelQ8u53D.ZJf3CgTalh44N7bz6yWlXXG', 'SzO22UcPA7', '2019-03-27 22:23:13', '2019-03-27 22:23:13'),
(10, 'Rylee Cartwright DDS', 'jjacobson@example.com', '2019-03-27 22:23:11', '$2y$10$W6nex5rAKvj3QkTikYpcaOBzN.NLjsL0515Mc0M1J7weJnqt1LT..', 'aK8EDUwFrm', '2019-03-27 22:23:13', '2019-03-27 22:23:13'),
(11, 'Hailey Bednar', 'jensen.emard@example.org', '2019-03-27 22:23:11', '$2y$10$btpv4eK3Cg5dNDbPECIxNObF0HnpOsa.4ZKbDI008AEHOtsb397Wq', 'AFS7VNZpDx', '2019-03-27 22:23:14', '2019-03-27 22:23:14'),
(12, 'Mack Bayer', 'jaycee69@example.com', '2019-03-27 22:23:11', '$2y$10$qtMTwwavkkpZpCZ412nWw.XYjrfG3fkkU2p3j2iILyDmfKxEhjV/S', 'w7l4guZsqO', '2019-03-27 22:23:14', '2019-03-27 22:23:14'),
(13, 'Jaunita Schuppe Sr.', 'altenwerth.edwardo@example.org', '2019-03-27 22:23:11', '$2y$10$elLhP2A6XvhM7KJzxJONfex4UX.EuE1Ig8JSXaNAWvZJsKmXbiQSS', 'CEE5pyUFJG', '2019-03-27 22:23:14', '2019-03-27 22:23:14'),
(14, 'Monte Lynch', 'brohan@example.net', '2019-03-27 22:23:11', '$2y$10$JqdqcLQAeZyRSPmh8phjhu6WJtqm9Kn/aYmxoqQeis9nx7Pqk2ymS', 'LyfVl2XA5e', '2019-03-27 22:23:14', '2019-03-27 22:23:14'),
(15, 'Flossie Block', 'michaela31@example.com', '2019-03-27 22:23:12', '$2y$10$VPHqeyVmFufZLsTZXEMWV.Va3PhIeqwDoGdtBgcl9D3KLCJyQXEsu', 'iXwXP2CrMN', '2019-03-27 22:23:14', '2019-03-27 22:23:14'),
(16, 'Werner Cronin', 'raegan.gerlach@example.net', '2019-03-27 22:23:12', '$2y$10$5K0/PN69uzGhA0WVvUUPoedEJ9J4L4jBZbadqM/hDZM/e7BydzDxi', 'c0FCKaMdbx', '2019-03-27 22:23:14', '2019-03-27 22:23:14'),
(17, 'Maeve Romaguera', 'gusikowski.wanda@example.com', '2019-03-27 22:23:12', '$2y$10$/reby/NsKM9vzcgofiBlzuxWDQ603a41ml6OrmxAGYTsx3s9gCriO', '0mp0A45zUs', '2019-03-27 22:23:14', '2019-03-27 22:23:14'),
(18, 'Kenneth Kiehn', 'khayes@example.net', '2019-03-27 22:23:12', '$2y$10$MQmC0R/ZQt2QoUAJGnktx.D27.cQDQ3ZcGwdDmrwrkre1IAad4vs6', 'rxQo5fMAmY', '2019-03-27 22:23:14', '2019-03-27 22:23:14'),
(19, 'Wilfredo Erdman V', 'mayert.audra@example.com', '2019-03-27 22:23:12', '$2y$10$.IR4FqGVZaGKLJmunXZ1r.bQTHwu5EkAbqMhi.FlDSc.nvXDMVsMG', 'PDkgx96I1k', '2019-03-27 22:23:14', '2019-03-27 22:23:14'),
(20, 'Muhammad Goldner', 'emely87@example.net', '2019-03-27 22:23:12', '$2y$10$Z0jt4xhtgG1HOk81X3X59OmPDC1ECWHTA71jnbznyFo9v0F6I4.9S', 'ssWLXIjOIK', '2019-03-27 22:23:14', '2019-03-27 22:23:14'),
(21, 'Cecilia Fisher', 'opredovic@example.net', '2019-03-27 22:23:12', '$2y$10$aR/75Mn9G/1XiVM73CuGveheAatHUmp94QLfslXB4HsvAHXv5y7ui', 'jyXOPM38LH', '2019-03-27 22:23:14', '2019-03-27 22:23:14'),
(22, 'Wilber O\'Conner II', 'claud.miller@example.org', '2019-03-27 22:23:12', '$2y$10$SBV/hFZXGnZpXM7v/sVGNu4HOwz2P7BraJMlbXEigeLaJDJ3d5yTC', 'FpjJzyHXFQ', '2019-03-27 22:23:14', '2019-03-27 22:23:14'),
(23, 'Ella Ziemann', 'raynor.wendell@example.net', '2019-03-27 22:23:12', '$2y$10$2PS19gGEGivIpsZ6aCFMJeIns6ka.Gh5tbUxxS5ptHZlI.o9qAtOi', 'EnBnFFFLq5', '2019-03-27 22:23:14', '2019-03-27 22:23:14'),
(24, 'Mrs. Vergie Gutkowski DVM', 'gerhold.carlo@example.net', '2019-03-27 22:23:12', '$2y$10$LooMxmx.ShGMTXvuyg/1SePlwA4jZNlYnuMsEt60Ja.Hac620uei2', '4N4kiZUmhZ', '2019-03-27 22:23:14', '2019-03-27 22:23:14'),
(25, 'Kiel Connelly', 'gabriel.gaylord@example.org', '2019-03-27 22:23:12', '$2y$10$Mnmq2xMN9GRtJVFRUCCe0.zd9LNX7FKG0gctxxlWadLbo.mTo5jfi', '6u8qWtOZ9J', '2019-03-27 22:23:14', '2019-03-27 22:23:14'),
(26, 'Jennie Romaguera', 'randi.doyle@example.com', '2019-03-27 22:23:12', '$2y$10$u8phKteZ8/3sa5NNW82dtOcUDkrZ8zMPatk7xV56nbj4HNwbc9y6a', 'j35iomFeWz', '2019-03-27 22:23:14', '2019-03-27 22:23:14'),
(27, 'Dr. Otilia Wuckert', 'mmitchell@example.net', '2019-03-27 22:23:13', '$2y$10$erJIP9A5KBsCDA/cnYcF4OPxO6TkOvnMXf1fFMXqDiMzd7nbolEDW', 'EbWP3fSUYe', '2019-03-27 22:23:14', '2019-03-27 22:23:14'),
(30, 'Brendan Casper PhD', 'zprosacco@example.org', '2019-03-27 22:23:13', '$2y$10$Q/C6IkLe7B.F9SC3J/bII.dGZ9FdkvcAOpfM.ZjNvSMNBrlp.N/ia', 'z1kZU4IIwU', '2019-03-27 22:23:14', '2019-03-27 22:23:14'),
(31, 'augusto cezar', 'augustoperez696@live.com', NULL, '$2y$10$pASFYarPx2gKme49f8epM.2RRlnSt8jbYU5ud8z4ueYQS33TC6zpG', NULL, '2019-03-27 22:53:08', '2019-03-27 22:58:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2023 at 07:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestion-pfe`
--

-- --------------------------------------------------------

--
-- Table structure for table `desponibilites`
--

CREATE TABLE `desponibilites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prof_id` bigint(20) UNSIGNED NOT NULL,
  `jour` varchar(255) NOT NULL,
  `t8_10` tinyint(1) NOT NULL DEFAULT 0,
  `t10_12` tinyint(1) NOT NULL DEFAULT 0,
  `t14_16` tinyint(1) NOT NULL DEFAULT 0,
  `t16_18` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `professeur_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `desponibilites`
--

INSERT INTO `desponibilites` (`id`, `prof_id`, `jour`, `t8_10`, `t10_12`, `t14_16`, `t16_18`, `created_at`, `updated_at`, `professeur_id`) VALUES
(7, 1, 'Samedi', 0, 0, 0, 0, '2023-05-05 10:16:38', '2023-05-05 10:50:54', NULL),
(11, 1, 'Vendredi', 1, 0, 0, 0, '2023-05-05 16:42:58', '2023-05-05 23:52:55', 8),
(14, 1, 'Lundi', 1, 0, 0, 0, '2023-05-05 23:52:20', '2023-05-05 23:53:58', 8),
(15, 1, 'Samudi', 0, 1, 0, 0, '2023-05-05 23:52:20', '2023-05-05 23:54:04', 8);

-- --------------------------------------------------------

--
-- Table structure for table `emplois`
--

CREATE TABLE `emplois` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_04_08_033731_create_professeurs_table', 1),
(7, '2023_04_10_135223_create_desponibilites_table', 1),
(8, '2023_04_14_013012_create_emplois_table', 1),
(9, '2023_04_14_034900_add_speciality_to_users_table', 1),
(10, '2023_04_14_045848_create_modules_table', 1),
(11, '2023_04_14_140833_create_salles_table', 1),
(12, '2023_05_03_101613_add_column_classe_to_desponibilites_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_module` varchar(255) NOT NULL,
  `semestre` varchar(255) NOT NULL,
  `filliere` varchar(255) NOT NULL,
  `specialite` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `nom_module`, `semestre`, `filliere`, `specialite`, `created_at`, `updated_at`) VALUES
(1, 'informatique 1', 's1', 'SMI', 'informatique', NULL, NULL),
(2, 'ANALYSE 1', 's1', 'SMI', 'mathematiques', NULL, NULL),
(3, 'ALGEBRE 1', 's1', 'SMI', 'mathematiques', NULL, NULL),
(4, 'ALGEBRE 2', 's1', 'SMI', 'mathematiques', NULL, NULL),
(5, 'Physique 1', 's1', 'SMI', 'physique', NULL, NULL),
(6, 'Physique 2', 's1', 'SMI', 'physique', NULL, NULL),
(7, 'LTI', 's1', 'SMI', 'Langue', NULL, NULL),
(8, 'Analyse 2', 's2', 'SMI', 'mathematiques', NULL, NULL),
(9, 'ALGEBRE 3', 's2', 'SMI', 'mathematiques', NULL, NULL),
(10, 'Physique 3', 's2', 'SMI', 'physique', NULL, NULL),
(11, 'Physique 4', 's2', 'SMI', 'physique', NULL, NULL),
(12, 'Algorithmique I', 's2', 'SMI', 'informatique', NULL, NULL),
(13, 'LT II', 's2', 'SMI', 'Langue', NULL, NULL),
(14, 'Analyse 3', 's2', 'SMI', 'mathematiques', NULL, NULL),
(15, 'PROGRAMMATION I', 's3', 'SMI', 'informatique', NULL, NULL),
(16, 'ALGORITHMIQUE II', 's3', 'SMI', 'informatique', NULL, NULL),
(17, 'SYSTEME D’EXPLOITATION I', 's3', 'SMI', 'informatique', NULL, NULL),
(18, 'TECHNOLOGIE DU WEB', 's3', 'SMI', 'informatique', NULL, NULL),
(19, 'ELECTRONIQUE', 's3', 'SMI', 'physique', NULL, NULL),
(20, 'PROBABILITES –STATISTIQUES', 's3', 'SMI', 'mathematiques', NULL, NULL),
(21, 'PROGRAMMATION II', 's4', 'SMI', 'informatique', NULL, NULL),
(22, 'SYSTEME D’EXPLOITATION II', 's4', 'SMI', 'informatique', NULL, NULL),
(23, ' STRUCTURES DE DONNEES', 's4', 'SMI', 'informatique', NULL, NULL),
(24, 'ARCHITECTURE DES ORDINATEURS', 's4', 'SMI', 'informatique', NULL, NULL),
(25, 'ELECTROMAGNETISME', 's4', 'SMI', 'physique', NULL, NULL),
(26, 'ANALYSE NUMERIQUE', 's4', 'SMI', 'mathematiques', NULL, NULL),
(27, 'BASES DE DONNEES', 's5', 'SMI', 'informatique', NULL, NULL),
(28, 'COMPILATION', 's5', 'SMI', 'informatique', NULL, NULL),
(29, ' RESEAUX', 's5', 'SMI', 'informatique', NULL, NULL),
(30, 'CONCEPTION ORIENTEE OBJETS (UML)', 's5', 'SMI', 'informatique', NULL, NULL),
(31, 'PROGRAMMATION ORIENTEE OBJETS (LANGAGE : JAVA ou C++)\r\n', 's5', 'SMI', 'informatique', NULL, NULL),
(32, 'RECHERCHE OPERATIONNELLE', 's5', 'SMI', 'mathematiques', NULL, NULL),
(33, 'génie logiciel', 's6', 'SMI', 'informatique', NULL, NULL),
(35, ' interaction Homme-machine', 's6', 'SMI', 'informatique', NULL, NULL),
(37, 'MODELMODÉLISATION ', 's6', 'SMI', 'mathematiques', NULL, NULL),
(38, 'mécanique du point matériel', 's1', 'SMP', 'physique', NULL, NULL),
(39, 'Thermodynamique 1', 's1', 'SMP', 'physique', NULL, NULL),
(40, 'Atomistique ', 's1', 'SMP', 'physique', NULL, NULL),
(41, '	Thermochimie  ', 's1', 'SMP', 'physique', NULL, NULL),
(42, ' Analyse 1 ', 's1', 'SMP', 'mathematiques', NULL, NULL),
(43, ' Algèbre 1 ', 's1', 'SMP', 'mathematiques', NULL, NULL),
(44, ' LT I ', 's1', 'SMP', 'Langue', NULL, NULL),
(46, ' LT II', 's2', 'SMP', 'Langue', NULL, NULL),
(48, 'Electrostatique et Electrocinétique', 's2', 'SMP', 'physique', NULL, NULL),
(49, ' Optique Géométrique', 's2', 'SMP', 'physique', NULL, NULL),
(50, ' Liaisons Chimiques', 's2', 'SMP', 'physique', NULL, NULL),
(51, 'Chimie des Solutions', 's2', 'SMP', 'physique', NULL, NULL),
(52, ' Analyse 2', 's2', 'SMP', 'mathematiques', NULL, NULL),
(53, '  Algèbre 2', 's2', 'SMP', 'mathematiques', NULL, NULL),
(54, '  Mécanique du Solide ', 's3', 'SMP', 'physique', NULL, NULL),
(55, 'Thermodynamique 2', 's3', 'SMP', 'physique', NULL, NULL),
(56, 'Electromagnétisme dans le vide', 's3', 'SMP', 'Physique', NULL, NULL),
(57, ' Chimie Organique générale', 's3', 'SMP', 'physique', NULL, NULL),
(58, 'Analyse 3 et Probabilités', 's3', 'SMP', 'mathematiques', NULL, NULL),
(59, 'Analyse numérique et Algorithme', 's3', 'SMP', 'mathematiques', NULL, NULL),
(60, ' Electronique de base', 's4', 'SMP', 'physique', NULL, NULL),
(61, ' Optique Physique', 's4', 'SMP', 'physique', NULL, NULL),
(62, ' Electricité 3', 's4', 'SMP', 'physique', NULL, NULL),
(63, 'Mécanique quantique', 's4', 'SMP', 'physique', NULL, NULL),
(64, 'Cristallographie géométrique et cristallochimie', 's4', 'SMP', 'physique', NULL, NULL),
(65, 'Informatique', 's4', 'SMP', 'informatique', NULL, NULL),
(66, ' Electronique Analogique', 's5', 'SMP', 'physique', NULL, NULL),
(67, 'Mécanique analytique et vibrations ', 's5', 'SMP', 'physique', NULL, NULL),
(68, 'Physique nucléaire ', 's5', 'SMP', 'physique', NULL, NULL),
(69, ' Physique des matériaux', 's5', 'SMP', 'physique', NULL, NULL),
(70, 'Physique quantique', 's5', 'SMP', 'physique', NULL, NULL),
(71, 'Physique statistique', 's5', 'SMP', 'physique', NULL, NULL),
(72, 'Electronique Numérique', 's6', 'SMP', 'physique', NULL, NULL),
(73, 'Traitement du signal ', 's6', 'SMP', 'physique', NULL, NULL),
(74, ' Automatique', 's6', 'SMP', 'physique', NULL, NULL),
(75, '  Hyperfréquences', 's6', 'SMP', 'physique', NULL, NULL),
(76, '  Mécanique du fluides & M.M.C.', 's6', 'SMP', 'physique', NULL, NULL),
(77, 'Exploitation des Energies Renouvelables', 's6', 'SMP', 'physique', NULL, NULL),
(78, 'Transferts thermiques', 's6', 'SMP', 'physique', NULL, NULL),
(79, 'Méthodes & calcul numérique ', 's6', 'SMP', 'physique', NULL, NULL),
(80, 'programmation web dynamique', 's6', 'SMI', 'informatique', NULL, NULL),
(81, 'Statistiques descriptives', 'S1', 'IGE', 'mathematiques', NULL, NULL),
(82, 'ANALYSE 1', 's1', 'IGE', 'mathematiques', NULL, NULL),
(83, 'MACROECONOMIE', 's1', 'IGE', 'Economic', NULL, NULL),
(84, 'MICROECONOMIE', 's1', 'IGE', 'Economic', NULL, NULL),
(85, 'INTRODUCTION A Etude droit', 's1', 'IGE', 'Economic', NULL, NULL),
(86, 'INTRODUCTION A INFORMATIQUE', 's1', 'IGE', 'informatique', NULL, NULL),
(87, 'LANGUES ET TERMINOLOGIE I', 's1', 'IGE', 'langue', NULL, NULL),
(88, 'ALGEBRE 2', 's2', 'IGE', 'mathematiques', NULL, NULL),
(89, ' MATHEMATIQUES FINANCIERES', 's2', 'IGE', 'mathematiques', NULL, NULL),
(90, 'COMPTABILITE GENERALE', 's2', 'IGE', 'mathematiques', NULL, NULL),
(91, 'MANAGEMENT', 's2', 'IGE', 'Economic', NULL, NULL),
(92, 'Initiation aux bases de données et merise', 's2', 'IGE', 'informatique', NULL, NULL),
(93, 'VISUAL BASIC ET ACCESS', 's2', 'IGE', 'informatique', NULL, NULL),
(94, ' LANGUES ET TERMINOLOGIE II', 's2', 'IGE', 'langue', NULL, NULL),
(95, 'PROGRAMMATION I', 's3', 'IGE', 'informatique', NULL, NULL),
(96, ' ALGORITHMIQUE II', 's3', 'IGE', 'informatique', NULL, NULL),
(97, 'MARKETING', 's3', 'IGE', 'Economic', NULL, NULL),
(98, 'PROBABILITES-STATISTIQUE', 's3', 'IGE', 'mathematiques', NULL, NULL),
(99, 'PROBABILITES-STATISTIQUE', 's3', 'IGE', 'mathematiques', NULL, NULL),
(100, 'TECHNOLOGIE DU WEB', 's3', 'IGE', 'informatique', NULL, NULL),
(101, ' FISCALITE', 's3', 'IGE', 'Gestion', NULL, NULL),
(102, 'DIAGNOSTIC ET ANALYSE FINANCIERE', 's4', 'IGE', 'Economic', NULL, NULL),
(103, ' Analyse des données', 's4', 'IGE', 'informatique', NULL, NULL),
(104, 'COMPTABILITE ANALYTIQUE', 's4', 'IGE', 'Economic', NULL, NULL),
(105, 'GESTION DES RESSOURCES HUMAINES.', 's4', 'IGE', 'Gestion', NULL, NULL),
(106, 'ROGRAMMATION WEB DYNAMIQUE', 's4', 'IGE', 'informatique', NULL, NULL),
(107, 'SQL', 's4', 'IGE', 'informatique', NULL, NULL),
(108, 'RECHERCHE OPERATIONNELLE', 's5', 'IGE', 'mathematiques', NULL, NULL),
(109, ' ORACLE', 's5', 'IGE', 'informatique', NULL, NULL),
(110, ' GESTION FINANCIERES', 's5', 'IGE', 'Gestion', NULL, NULL),
(111, 'MANAGEMENT STRATEGIQUE', 's5', 'IGE', 'Economic', NULL, NULL),
(112, 'CONCEPTION ORIENTEE OBJETS (UML)', 's5', 'IGE', 'informatique', NULL, NULL),
(113, 'JAVA', 's5', 'IGE', 'informatique', NULL, NULL),
(114, ' SYSTEME D INFORMATION INTEGRES', 's6', 'IGE', 'informatique', NULL, NULL),
(115, 'ENTREPRENARIAT', 's6', 'IGE', 'Gestion', NULL, NULL),
(116, 'CONTROLE DE GESTION ', 's6', 'IGE', 'Gestion', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `professeurs`
--

CREATE TABLE `professeurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prof_id` bigint(20) UNSIGNED NOT NULL,
  `specialite` varchar(255) NOT NULL,
  `fillier` varchar(255) NOT NULL,
  `semestre` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `professeurs`
--

INSERT INTO `professeurs` (`id`, `prof_id`, `specialite`, `fillier`, `semestre`, `module`, `created_at`, `updated_at`) VALUES
(8, 1, 'informatique', 'SMP', 's4', 'Informatique', '2023-05-05 22:31:14', '2023-05-05 22:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `salles`
--

CREATE TABLE `salles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `nombre-tchese` int(11) NOT NULL,
  `bloc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salles`
--

INSERT INTO `salles` (`id`, `name`, `nombre-tchese`, `bloc`, `created_at`, `updated_at`) VALUES
(1, 'A1', 82, 'A', NULL, NULL),
(2, 'A2', 82, 'A', NULL, NULL),
(3, 'A3', 82, 'A', NULL, NULL),
(4, 'A4', 82, 'A', NULL, NULL),
(5, 'A4', 82, 'A', NULL, NULL),
(6, 'A5', 82, 'A', NULL, NULL),
(7, 'A6', 82, 'A', NULL, NULL),
(8, 'B1', 67, 'B', NULL, NULL),
(9, 'B2', 67, 'B', NULL, NULL),
(10, 'B3', 67, 'B', NULL, NULL),
(11, 'B4', 67, 'B', NULL, NULL),
(12, 'B5', 67, 'B', NULL, NULL),
(13, 'B6', 67, 'B', NULL, NULL),
(14, 'Amghi A', 300, '', NULL, NULL),
(15, 'Amghi B', 300, '', NULL, NULL),
(16, 'Amghi C', 300, '', NULL, NULL),
(17, 'Amghi S', 300, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `speciality` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `is_admin`, `created_at`, `updated_at`, `speciality`) VALUES
(1, 'Abdellah Ennajari', 'abdellahennajari2018@gmail.com', NULL, '$2y$10$6vyRJdYqb6514O0bnyWuiOGr//GRvh9i4eDvc5R0w0ErH2.fOoG2K', NULL, 0, '2023-05-04 15:44:01', '2023-05-04 15:44:01', 'informatique'),
(2, 'Abdellah Ennajari', 'ari2018@gmail.com', NULL, '$2y$10$rgAyxyLxwQ0ojfg40kGUoeOVPNhXF/2LvGTrhj1dGLpQIgvAzBe2W', NULL, 0, '2023-05-04 16:33:46', '2023-05-04 16:33:46', 'physique'),
(3, 'Abdellah Ennajari', 'AAA@gmail.com', NULL, '$2y$10$rsYjMiRe3NkdLQHUMAzCCeaYfZ902vijJdudyWZ2mEXbPCuT6.kY2', NULL, 0, '2023-05-04 16:39:14', '2023-05-04 16:39:14', 'mathematiques'),
(4, 'Abdellah Ennajari', 'ajari2018@gmail.com', NULL, '$2y$10$R86IMyBaUsm5.u8wISg6ZOwX5ih0588faQNgcxp88F12EyIPR33fS', NULL, 0, '2023-05-05 16:41:25', '2023-05-05 16:41:25', 'mathematiques');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `desponibilites`
--
ALTER TABLE `desponibilites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `desponibilites_prof_id_foreign` (`prof_id`),
  ADD KEY `desponibilites_professeur_id_foreign` (`professeur_id`);

--
-- Indexes for table `emplois`
--
ALTER TABLE `emplois`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `professeurs`
--
ALTER TABLE `professeurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `professeurs_prof_id_foreign` (`prof_id`);

--
-- Indexes for table `salles`
--
ALTER TABLE `salles`
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
-- AUTO_INCREMENT for table `desponibilites`
--
ALTER TABLE `desponibilites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `emplois`
--
ALTER TABLE `emplois`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `professeurs`
--
ALTER TABLE `professeurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `salles`
--
ALTER TABLE `salles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `desponibilites`
--
ALTER TABLE `desponibilites`
  ADD CONSTRAINT `desponibilites_prof_id_foreign` FOREIGN KEY (`prof_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `desponibilites_professeur_id_foreign` FOREIGN KEY (`professeur_id`) REFERENCES `professeurs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `professeurs`
--
ALTER TABLE `professeurs`
  ADD CONSTRAINT `professeurs_prof_id_foreign` FOREIGN KEY (`prof_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

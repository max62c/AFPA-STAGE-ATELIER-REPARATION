-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 09 mars 2023 à 16:09
-- Version du serveur : 8.0.31
-- Version de PHP : 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `afpa_ai`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `infos_comp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `telephone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C7440455E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `email`, `roles`, `password`, `nom`, `prenom`, `infos_comp`, `adresse`, `postal`, `ville`, `created_at`, `updated_at`, `telephone`, `active`) VALUES
(5, 'max62c@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$mKM3h37NdIH1GQvGlkvzSeHMAr8u2V8ddXEdd3wwe7i1xFFqqoJQe', 'CATHELAIN', 'Maxime', NULL, '6 rue de la republique', '45000', 'ORLEANS', '2023-02-01 08:00:00', '2023-02-02 08:00:00', '0606060606', 1),
(7, 'max45.serveur@orange.fr', '[\"ROLE_USER\"]', '$2y$13$BMF66HcEwawr51yPX4h1KODGbA5qx8GeOyoPDHEM.uGuriONR4L46', 'MENVU', 'gerard', NULL, '--', '45000', '--', '2023-02-01 08:00:00', '2023-02-01 08:00:00', '0606060630', 0),
(10, 'technicien1@gmail.com', '[\"ROLE_TECH\"]', 'azertyuiopqsdfgh', 'TECHNICIEN1', 'TECHNICIEN1', NULL, '--', '00000', '--', '2023-03-03 11:00:00', '2023-03-03 11:00:00', '0000000000', 1),
(11, 'kim.alaya@orange.fr', '[]', '$2y$13$v7hn0W7/3hCPB3gGtsmLVui5P2R9tgpECUaCRul/bMbTlbNmll5U.', 'ALAYA', 'Kim', NULL, '6 rue de la montagne', '45000', 'ORLEANS', '2023-03-08 14:02:56', '2023-03-08 14:02:56', '0606060102', 1);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230301084332', '2023-03-01 08:45:46', 153),
('DoctrineMigrations\\Version20230301092421', '2023-03-01 09:24:48', 87),
('DoctrineMigrations\\Version20230302122222', '2023-03-02 12:23:30', 266),
('DoctrineMigrations\\Version20230302151802', '2023-03-02 15:18:15', 184),
('DoctrineMigrations\\Version20230303090745', '2023-03-03 09:08:04', 126),
('DoctrineMigrations\\Version20230303092032', '2023-03-03 09:20:38', 154),
('DoctrineMigrations\\Version20230303092831', '2023-03-03 09:28:37', 58),
('DoctrineMigrations\\Version20230303095543', '2023-03-03 09:55:48', 86),
('DoctrineMigrations\\Version20230307130831', '2023-03-07 13:08:42', 133),
('DoctrineMigrations\\Version20230307131812', '2023-03-07 13:18:25', 303),
('DoctrineMigrations\\Version20230307131949', '2023-03-07 13:19:54', 54);

-- --------------------------------------------------------

--
-- Structure de la table `materiel`
--

DROP TABLE IF EXISTS `materiel`;
CREATE TABLE IF NOT EXISTS `materiel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numserie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `divers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processeur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disquedur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disquedur1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cartemere` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ecran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memoire` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memoire1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date NOT NULL,
  `exited_at` date DEFAULT NULL,
  `type_materiel_id` int NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_18D2B0915D91DD3E` (`type_materiel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `materiel`
--

INSERT INTO `materiel` (`id`, `numserie`, `description`, `divers`, `processeur`, `os`, `disquedur`, `disquedur1`, `cartemere`, `ecran`, `memoire`, `memoire1`, `photo`, `photo_titre`, `photo_description`, `created_at`, `exited_at`, `type_materiel_id`, `is_active`) VALUES
(3, '1111-2222-3333-4444', '<div>Intel Core i7-12700H 32 Go SSD 2 To 17\" LED QHD NVIDIA GeForce RTX 3070 Ti 8 Go Wi-Fi 6E/Bluetooth Webcam Windows 11 Professionnel<br><br></div>', NULL, 'Intel Core i7', 'Windows 11 Professionnel', 'SSD 2 To', NULL, 'MSI', 'intégré', '16 Go', '16 Go', '5bbfd9488ec3994fc666094504d8c5657bb45529.jpg', NULL, NULL, '2023-03-07', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reset_password`
--

DROP TABLE IF EXISTS `reset_password`;
CREATE TABLE IF NOT EXISTS `reset_password` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_B9983CE519EB6921` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reset_password`
--

INSERT INTO `reset_password` (`id`, `client_id`, `token`, `created_at`) VALUES
(1, 5, '64009872d74c8', '2023-03-02 12:37:06');

-- --------------------------------------------------------

--
-- Structure de la table `type_materiel`
--

DROP TABLE IF EXISTS `type_materiel`;
CREATE TABLE IF NOT EXISTS `type_materiel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marque` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modele` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` date NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_materiel`
--

INSERT INTO `type_materiel` (`id`, `marque`, `modele`, `categorie`, `type1`, `description`, `created_at`, `is_active`) VALUES
(1, 'MSI', '9S7-17N112-013', 'PORTABLE', '--', 'MSI Creator Z17 A12UGST-013FR', '2023-03-07', 1),
(2, 'MSI', '9S7-17N112-014', 'PORTABLE', '--', NULL, '2023-03-07', 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `materiel`
--
ALTER TABLE `materiel`
  ADD CONSTRAINT `FK_18D2B0915D91DD3E` FOREIGN KEY (`type_materiel_id`) REFERENCES `type_materiel` (`id`);

--
-- Contraintes pour la table `reset_password`
--
ALTER TABLE `reset_password`
  ADD CONSTRAINT `FK_B9983CE519EB6921` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

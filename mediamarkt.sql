-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 30 oct. 2026 à 11:59
-- Version du serveur : 8.4.7
-- Version de PHP : 8.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mediamarkt`
--

-- --------------------------------------------------------

--
-- Structure de la table `smartphone`
--

DROP TABLE IF EXISTS `smartphone`;
CREATE TABLE IF NOT EXISTS `smartphone` (
  ` id_nomdelatable` int NOT NULL AUTO_INCREMENT,
  `Nom_smartphone` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `marque_smartphone` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `date_de_sortie` date NOT NULL,
  PRIMARY KEY (` id_nomdelatable`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `smartphone`
--

INSERT INTO `smartphone` (` id_nomdelatable`, `Nom_smartphone`, `marque_smartphone`, `date_de_sortie`) VALUES
(1, 'iPhone 16', 'Apple', '2024-09-20'),
(2, 'Galaxy S25', 'Samsung', '2025-02-01'),
(3, 'Pixel 9', 'Google', '2024-08-22');

-- --------------------------------------------------------

--
-- Structure de la table `tvs`
--

DROP TABLE IF EXISTS `tvs`;
CREATE TABLE IF NOT EXISTS `tvs` (
  ` id_nomdelatable` int NOT NULL AUTO_INCREMENT,
  `Nom_de_tv` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `Marque_tv` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `taille` float NOT NULL,
  PRIMARY KEY (` id_nomdelatable`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tvs`
--

INSERT INTO `tvs` (` id_nomdelatable`, `Nom_de_tv`, `Marque_tv`, `taille`) VALUES
(1, 'S90D', 'Samsung', 65),
(2, 'OLED55C4', 'LG', 55),
(3, 'Bravia 9 XR90', 'Sony', 75);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `Nom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Prénom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Age` int NOT NULL,
  `date_of_birth` date NOT NULL,
  `adresse` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `id_nomde_laTable` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nomde_laTable`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`Nom`, `Prénom`, `Age`, `date_of_birth`, `adresse`, `email`, `id_nomde_laTable`) VALUES
('Greg', 'Gui', 25, '2001-03-15', '12 Rue de Paris, Bruxelles', 'greg.gui@gmail.com', 1),
('MoHamed', 'sala', 30, '1996-07-22', '45 Avenue Louise, Bruxelles', 'Mohamed.sala@gmail.com', 2),
('Marco', 'spano', 25, '2001-02-01', '8 Rue Royale, Bruxelles', 'Marco.spano@gmail.com', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

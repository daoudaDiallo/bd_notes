-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 03 juil. 2018 à 11:50
-- Version du serveur :  5.7.19
-- Version de PHP :  7.2.0RC2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bd_notes`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_etudiant`
--

CREATE TABLE `t_etudiant` (
  `id_etudiant` int(11) NOT NULL,
  `matricule` varchar(128) NOT NULL,
  `nom` varchar(128) NOT NULL,
  `prenom` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_etudiant`
--

INSERT INTO `t_etudiant` (`id_etudiant`, `matricule`, `nom`, `prenom`) VALUES
(1, '100', 'Boundi', 'Hassan'),
(2, '101', 'Daouda', 'Diallo'),
(3, '102', 'TEST', 'TEST'),
(4, 'vgdfghdf', 'dfdfdgh', 'hdhdfh'),
(5, '103', 'TEST', 'TET');

-- --------------------------------------------------------

--
-- Structure de la table `t_matiere`
--

CREATE TABLE `t_matiere` (
  `id_matire` int(11) NOT NULL,
  `libelle` varchar(128) NOT NULL,
  `coefficient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_matiere`
--

INSERT INTO `t_matiere` (`id_matire`, `libelle`, `coefficient`) VALUES
(1, 'Anglais', 2),
(2, 'Espagnol', 2),
(7, 'Droit', 3),
(8, 'Test', 1),
(9, 'Allemand', 2),
(10, 'test', 1);

-- --------------------------------------------------------

--
-- Structure de la table `t_note`
--

CREATE TABLE `t_note` (
  `id_note` int(11) NOT NULL,
  `valeur` int(11) NOT NULL,
  `date_creation` datetime NOT NULL,
  `id_matiere` int(11) NOT NULL,
  `id_etudiant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_note`
--

INSERT INTO `t_note` (`id_note`, `valeur`, `date_creation`, `id_matiere`, `id_etudiant`) VALUES
(1, 14, '2017-08-10 12:38:27', 1, 1),
(2, 15, '2017-08-10 12:39:42', 1, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_etudiant`
--
ALTER TABLE `t_etudiant`
  ADD PRIMARY KEY (`id_etudiant`);

--
-- Index pour la table `t_matiere`
--
ALTER TABLE `t_matiere`
  ADD PRIMARY KEY (`id_matire`);

--
-- Index pour la table `t_note`
--
ALTER TABLE `t_note`
  ADD PRIMARY KEY (`id_note`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_etudiant`
--
ALTER TABLE `t_etudiant`
  MODIFY `id_etudiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `t_matiere`
--
ALTER TABLE `t_matiere`
  MODIFY `id_matire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `t_note`
--
ALTER TABLE `t_note`
  MODIFY `id_note` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

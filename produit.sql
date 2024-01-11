-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 31 déc. 2023 à 07:42
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `demo_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` bigint(20) NOT NULL,
  `date_creation` date DEFAULT NULL,
  `nom_produit` longtext DEFAULT NULL,
  `prix_produit` double DEFAULT NULL,
  `categorie_id_cat` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `date_creation`, `nom_produit`, `prix_produit`, `categorie_id_cat`) VALUES
(1, '2023-12-28', '{\"img\":\"https://img-c.udemycdn.com/course/750x422/4965902_1592_9.jpg\",\"nom\":\"The Ultimate Redux Course 2023\",\"cat\":\"Front-end\",\"time\":\"6:80\",\"parts\":\"8\",\"lang\":\"TypeScript\",\"discount\":\"FREE\",\"level\":\"Intermediate\",\"rate\":\"3\"}', 200, NULL),
(2, NULL, '{\"img\":\"https://img-c.udemycdn.com/course/240x135/4618194_39c8_4.jpg\",\"nom\":\"Docker for the Absolute Beginner - Hands On - DevOps\",\"cat\":\"DevOps\",\"time\":\"30:00\",\"parts\":\"15\",\"lang\":\"BASH\",\"discount\":\"\",\"level\":\"Advanced\",\"rate\":\"4\"}', 999.99, 1),
(3, NULL, '{\"img\":\"https://img-c.udemycdn.com/course/240x135/2263870_8dc7_29.jpg\",\"nom\":\"Master Laravel PHP with basic to advanced project\",\"cat\":\"Back-End\",\"time\":\"15:20\",\"parts\":\"9\",\"lang\":\"PHP\",\"discount\":\"%10 Discount\",\"level\":\"Advanced\",\"rate\":\"5\"}', 150, 1),
(4, NULL, '{\"img\":\"https://img-c.udemycdn.com/course/240x135/4786732_6f82_7.jpg\",\"nom\":\"Flutter UI Coding Course for Designers and Beginners\",\"cat\":\"mobile\",\"time\":\"18:00\",\"parts\":\"8\",\"lang\":\"Dart\",\"discount\":\"\",\"level\":\"Intermediate\",\"rate\":\"4\"}', 50.99, NULL),
(5, NULL, '{\"img\":\"https://img-c.udemycdn.com/course/240x135/3654420_6ef3_8.jpg\",\"nom\":\"Cyber Security: From Beginner to Expert\",\"cat\":\"IT\",\"time\":\"38:00\",\"parts\":\"25\",\"lang\":\"Genarale\",\"discount\":\"%10 Discount\",\"level\":\"Expert\",\"rate\":\"3\"}', 300, NULL),
(6, NULL, '{\"img\":\"https://img-c.udemycdn.com/course/240x135/4592070_03cd_4.jpg\",\"nom\":\"UX/UI Design\",\"cat\":\"design\",\"time\":\"3:00\",\"parts\":\"6\",\"lang\":\"Figma\",\"discount\":\"\",\"level\":\"Expert\",\"rate\":\"4\"}', 100.99, NULL),
(7, NULL, '{\"img\":\"https://img-c.udemycdn.com/course/240x135/3613402_dd1f_9.jpg\",\"nom\":\"Linux Administration\",\"cat\":\"IT\",\"time\":\"20:40\",\"parts\":\"40\",\"lang\":\"Generale\",\"discount\":\"\",\"level\":\"Expert\",\"rate\":\"4\"}', 600, NULL),
(8, NULL, '{\"img\":\"https://img-c.udemycdn.com/course/240x135/4188320_d3e3_3.jpg\",\"nom\":\"Git & GitHub - The Practical Guide\",\"cat\":\"Generale\",\"time\":\"5:40\",\"parts\":\"4\",\"lang\":\"Git\",\"discount\":\"%5 Discount\",\"level\":\"Bigenner\",\"rate\":\"2\"}', 50.99, NULL),
(9, NULL, '{\"img\":\"https://img-c.udemycdn.com/course/240x135/5519220_96dd_3.jpg\",\"nom\":\"Become a certified Cybersecurity professional\",\"cat\":\"Cybersecurity\",\"time\":\"30:40\",\"parts\":\"25\",\"lang\":\"Cybersecurity\",\"discount\":\"\",\"level\":\"Expert\",\"rate\":\"5\"}', 2100, NULL),
(10, NULL, '{\"img\":\"https://img-c.udemycdn.com/course/240x135/5489710_c151.jpg\",\"nom\":\"Kubernetes Unleashed \",\"cat\":\"DEVOPS\",\"time\":\"10:20\",\"parts\":\"10\",\"lang\":\"DEVOPS\",\"discount\":\"FREE\",\"level\":\"Expert\",\"rate\":\"5\"}', 500.99, NULL),
(11, NULL, '{\"img\":\"https://img-c.udemycdn.com/course/240x135/5388180_e8c2_2.jpg\",\"nom\":\"Ansible & Ansible-Playbooks For Automation\",\"cat\":\"IT\",\"time\":\"30:40\",\"parts\":\"10\",\"lang\":\"Geneeral\",\"discount\":\"FREE\",\"level\":\"Expert\",\"rate\":\"5\"}', 50, NULL),
(12, NULL, '{\"img\":\"https://img-c.udemycdn.com/course/240x135/4724272_7916_4.jpg\",\"nom\":\"Cisco CCNA 200-301 CCNA Networking Course\",\"cat\":\"IT\",\"time\":\"30:00\",\"parts\":\"10\",\"lang\":\"IT\",\"discount\":\"\",\"level\":\"Expert\",\"rate\":\"5\"}', 600, NULL),
(16, '2023-12-28', '{\"img\":\"https://img-c.udemycdn.com/course/750x422/3873464_403c_3.jpg\",\"nom\":\"Next.js 14 & React - The Complete Guide\",\"cat\":\"Front-end\",\"time\":\"1:30\",\"parts\":\"3\",\"lang\":\"javascript\",\"discount\":\"%20 Discount\",\"level\":\"Intermediate\",\"rate\":\"4\"}', 69.99, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`),
  ADD KEY `FKsu6ikhfh3e1shoow8pb5v2yie` (`categorie_id_cat`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `FKsu6ikhfh3e1shoow8pb5v2yie` FOREIGN KEY (`categorie_id_cat`) REFERENCES `categorie` (`id_cat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

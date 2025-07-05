-- PHPMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Ven. 05 Juil. 2025 à 00:00
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `flyingtravel_DP`
-- Base de données utilisateur : `flyingtravel_USER`
-- Base de données mot de passe : `flyingtravel@01PASSWORD`
--

-- --------------------------------------------------------

--
-- Structure de la table `agences`
--

CREATE TABLE `agences` (
  `id` int NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `inboxEmail` varchar(100) NOT NULL,
  `telfix` varchar(25) NOT NULL,
  `gsm1` varchar(25) NOT NULL,
  `gsm2` varchar(25) NOT NULL,
  `gsm3` varchar(25) NOT NULL,
  `fax` varchar(25) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `youtube` varchar(100) NOT NULL,
  `tiktok` varchar(100) NOT NULL,
  `ice` varchar(100) NOT NULL,
  `patante` varchar(100) NOT NULL,
  `rc` varchar(100) NOT NULL,
  `taxepro` varchar(100) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `codepostal` varchar(8) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `pays` varchar(50) NOT NULL,
  `map` varchar(1000) NOT NULL,
  `info1` text NOT NULL,
  `info2` text NOT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `api_access_log`
--

CREATE TABLE `api_access_log` (
  `id` int NOT NULL,
  `api_key_id` int DEFAULT NULL,
  `endpoint` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `status_code` int NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `request_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `response_time` int NOT NULL COMMENT 'Response time in milliseconds',
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `api_keys`
--

CREATE TABLE `api_keys` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `service` varchar(50) NOT NULL,
  `permissions` text COMMENT 'JSON array of permissions',
  `expires_at` date DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` BIGINT UNSIGNED DEFAULT NULL, -- Changed to BIGINT UNSIGNED
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `audit_log`
--

CREATE TABLE `audit_log` (
  `id` int NOT NULL,
  `utilisateur_id` BIGINT UNSIGNED DEFAULT NULL, -- Changed to BIGINT UNSIGNED
  `action` varchar(50) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `record_id` int NOT NULL,
  `old_value` text,
  `new_value` text,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) DEFAULT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `avoirs`
--

CREATE TABLE `avoirs` (
  `id` int NOT NULL,
  `date` datetime NOT NULL,
  `facture` int NOT NULL,
  `ref` varchar(15) NOT NULL,
  `montant` float NOT NULL,
  `remarque` text NOT NULL,
  `expiration` date DEFAULT NULL,
  `dispo` int NOT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `titre` varchar(150) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `titrePage` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `color` varchar(7) NOT NULL,
  `image` varchar(255) NOT NULL,
  `titre_en` varchar(150) DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `metadesc_en` varchar(255) DEFAULT NULL,
  `metakey_en` varchar(255) DEFAULT NULL,
  `titre_es` varchar(150) DEFAULT NULL,
  `description_es` text DEFAULT NULL,
  `metadesc_es` varchar(255) DEFAULT NULL,
  `metakey_es` varchar(255) DEFAULT NULL,
  `titre_ar` varchar(150) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `metadesc_ar` varchar(255) DEFAULT NULL,
  `metakey_ar` varchar(255) DEFAULT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `chambres`
--

CREATE TABLE `chambres` (
  `id` int NOT NULL,
  `titre` varchar(150) NOT NULL,
  `Hotel_id` int NOT NULL,
  `Saison_id` int NOT NULL,
  `prix1Adulte_prix_achat` float DEFAULT NULL,
  `prix2Adulte_prix_achat` float DEFAULT NULL,
  `prix3Adulte_prix_achat` float DEFAULT NULL,
  `prix4Adulte_prix_achat` float DEFAULT NULL,
  `prix5Adulte_prix_achat` float NOT NULL,
  `prix6Adulte_prix_achat` float NOT NULL,
  `prix1Adulte1Enfant_prix_achat` float DEFAULT NULL,
  `prix1Adulte2Enfant_prix_achat` float DEFAULT NULL,
  `prix1Adulte3Enfant_prix_achat` float DEFAULT NULL,
  `prix1Adulte4Enfant_prix_achat` float DEFAULT NULL,
  `prix1Adulte5Enfant_prix_achat` float DEFAULT NULL,
  `prix1Adulte6Enfant_prix_achat` float DEFAULT NULL,
  `prix2Adulte1Enfant_prix_achat` float DEFAULT NULL,
  `prix2Adulte2Enfant_prix_achat` float DEFAULT NULL,
  `prix2Adulte3Enfant_prix_achat` float DEFAULT NULL,
  `prix2Adulte4Enfant_prix_achat` float DEFAULT NULL,
  `prix2Adulte5Enfant_prix_achat` float DEFAULT NULL,
  `prix2Adulte6Enfant_prix_achat` float DEFAULT NULL,
  `prix3Adulte1Enfant_prix_achat` float DEFAULT NULL,
  `prix3Adulte2Enfant_prix_achat` float DEFAULT NULL,
  `prix3Adulte3Enfant_prix_achat` float DEFAULT NULL,
  `prix3Adulte4Enfant_prix_achat` float DEFAULT NULL,
  `prix3Adulte5Enfant_prix_achat` float DEFAULT NULL,
  `prix3Adulte6Enfant_prix_achat` float DEFAULT NULL,
  `prix4Adulte1Enfant_prix_achat` float DEFAULT NULL,
  `prix4Adulte2Enfant_prix_achat` float DEFAULT NULL,
  `prix4Adulte3Enfant_prix_achat` float DEFAULT NULL,
  `prix4Adulte4Enfant_prix_achat` float DEFAULT NULL,
  `prix4Adulte5Enfant_prix_achat` float DEFAULT NULL,
  `prix4Adulte6Enfant_prix_achat` float DEFAULT NULL,
  `prix5Adulte1Enfant_prix_achat` float DEFAULT NULL,
  `prix5Adulte2Enfant_prix_achat` float DEFAULT NULL,
  `prix5Adulte3Enfant_prix_achat` float DEFAULT NULL,
  `prix5Adulte4Enfant_prix_achat` float DEFAULT NULL,
  `prix5Adulte5Enfant_prix_achat` float DEFAULT NULL,
  `prix5Adulte6Enfant_prix_achat` float DEFAULT NULL,
  `prix6Adulte1Enfant_prix_achat` float DEFAULT NULL,
  `prix6Adulte2Enfant_prix_achat` float DEFAULT NULL,
  `prix6Adulte3Enfant_prix_achat` float DEFAULT NULL,
  `prix6Adulte4Enfant_prix_achat` float DEFAULT NULL,
  `prix6Adulte5Enfant_prix_achat` float DEFAULT NULL,
  `prix6Adulte6Enfant_prix_achat` float DEFAULT NULL,
  `prix1Adulte_prix_vente` float DEFAULT NULL,
  `prix2Adulte_prix_vente` float DEFAULT NULL,
  `prix3Adulte_prix_vente` float DEFAULT NULL,
  `prix4Adulte_prix_vente` float DEFAULT NULL,
  `prix5Adulte_prix_vente` float NOT NULL,
  `prix6Adulte_prix_vente` float NOT NULL,
  `prix1Adulte1Enfant_prix_vente` float DEFAULT NULL,
  `prix1Adulte2Enfant_prix_vente` float DEFAULT NULL,
  `prix1Adulte3Enfant_prix_vente` float DEFAULT NULL,
  `prix1Adulte4Enfant_prix_vente` float DEFAULT NULL,
  `prix1Adulte5Enfant_prix_vente` float DEFAULT NULL,
  `prix1Adulte6Enfant_prix_vente` float DEFAULT NULL,
  `prix2Adulte1Enfant_prix_vente` float DEFAULT NULL,
  `prix2Adulte2Enfant_prix_vente` float DEFAULT NULL,
  `prix2Adulte3Enfant_prix_vente` float DEFAULT NULL,
  `prix2Adulte4Enfant_prix_vente` float DEFAULT NULL,
  `prix2Adulte5Enfant_prix_vente` float DEFAULT NULL,
  `prix2Adulte6Enfant_prix_vente` float DEFAULT NULL,
  `prix3Adulte1Enfant_prix_vente` float DEFAULT NULL,
  `prix3Adulte2Enfant_prix_vente` float DEFAULT NULL,
  `prix3Adulte3Enfant_prix_vente` float DEFAULT NULL,
  `prix3Adulte4Enfant_prix_vente` float DEFAULT NULL,
  `prix3Adulte5Enfant_prix_vente` float DEFAULT NULL,
  `prix3Adulte6Enfant_prix_vente` float DEFAULT NULL,
  `prix4Adulte1Enfant_prix_vente` float DEFAULT NULL,
  `prix4Adulte2Enfant_prix_vente` float DEFAULT NULL,
  `prix4Adulte3Enfant_prix_vente` float DEFAULT NULL,
  `prix4Adulte4Enfant_prix_vente` float DEFAULT NULL,
  `prix4Adulte5Enfant_prix_vente` float DEFAULT NULL,
  `prix4Adulte6Enfant_prix_vente` float DEFAULT NULL,
  `prix5Adulte1Enfant_prix_vente` float DEFAULT NULL,
  `prix5Adulte2Enfant_prix_vente` float DEFAULT NULL,
  `prix5Adulte3Enfant_prix_vente` float DEFAULT NULL,
  `prix5Adulte4Enfant_prix_vente` float DEFAULT NULL,
  `prix5Adulte5Enfant_prix_vente` float DEFAULT NULL,
  `prix5Adulte6Enfant_prix_vente` float DEFAULT NULL,
  `prix6Adulte1Enfant_prix_vente` float DEFAULT NULL,
  `prix6Adulte2Enfant_prix_vente` float DEFAULT NULL,
  `prix6Adulte3Enfant_prix_vente` float DEFAULT NULL,
  `prix6Adulte4Enfant_prix_vente` float DEFAULT NULL,
  `prix6Adulte5Enfant_prix_vente` float DEFAULT NULL,
  `prix6Adulte6Enfant_prix_vente` float DEFAULT NULL,
  `maxBebe` int NOT NULL,
  `unite` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `adresse` text NOT NULL,
  `res` int NOT NULL,
  -- `voucher` int NOT NULL, -- Removed as per previous discussion, handled by dedicated `vouchers` table
  `date_insc` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `etat` int NOT NULL,
  `ice` varchar(255) NOT NULL,
  `etat_client` int NOT NULL,
  `id_passport` int DEFAULT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client_documents`
--

CREATE TABLE `client_documents` (
  `id` int NOT NULL,
  `client_id` int NOT NULL,
  `document_type` enum('passport','id_card','visa','driver_license','other') NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expiry_date` date DEFAULT NULL,
  `notes` text,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client_loyalty`
--

CREATE TABLE `client_loyalty` (
  `id` int NOT NULL,
  `client_id` int NOT NULL,
  `program_id` int NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `points_balance` int NOT NULL DEFAULT '0',
  `join_date` date NOT NULL,
  `last_activity` date DEFAULT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commentaires_voyages`
--

CREATE TABLE `commentaires_voyages` (
  `id` int NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `commentaire` varchar(800) NOT NULL,
  `voyage_id` int NOT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `details`
--

CREATE TABLE `details` (
  `id` int NOT NULL,
  `titre` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(250) NOT NULL,
  `titre_en` varchar(100) DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `titre_es` varchar(100) DEFAULT NULL,
  `description_es` text DEFAULT NULL,
  `titre_ar` varchar(100) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int NOT NULL,
  `template_key` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `variables` text NOT NULL COMMENT 'JSON array of available variables',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `flights`
--

CREATE TABLE `flights` (
  `id` int NOT NULL,
  `airline` varchar(100) NOT NULL,
  `flight_number` varchar(20) NOT NULL,
  `departure_airport` varchar(10) NOT NULL,
  `arrival_airport` varchar(10) NOT NULL,
  `departure_time` datetime NOT NULL,
  `arrival_time` datetime NOT NULL,
  `duration` int NOT NULL COMMENT 'Duration in minutes',
  `price` decimal(10,2) NOT NULL,
  `baggage_allowance` varchar(100) DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `flight_reservations`
--

CREATE TABLE `flight_reservations` (
  `id` int NOT NULL,
  `reservation_id` int NOT NULL,
  `flight_id` int NOT NULL,
  `passenger_name` varchar(100) NOT NULL,
  `ticket_number` varchar(50) DEFAULT NULL,
  `seat_number` varchar(10) DEFAULT NULL,
  `status` enum('confirmed','cancelled','completed') NOT NULL DEFAULT 'confirmed',
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hotels`
--

CREATE TABLE `hotels` (
  `id` int NOT NULL,
  `titre` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `description` text,
  `etoile` varchar(50) DEFAULT '1',
  `pays` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `refHotel` varchar(100) NOT NULL,
  `textenfantgratuit` varchar(100) NOT NULL,
  `onHomePage` int NOT NULL,
  `onPromo` int NOT NULL,
  `map` text NOT NULL,
  `tel` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `chaine` varchar(100) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `regimeAvant` varchar(255) NOT NULL,
  `ageBebeDe` int NOT NULL,
  `ageEnfantDe` int NOT NULL,
  `ageBebeA` int NOT NULL,
  `ageEnfantA` int NOT NULL,
  `petitDejAdult` float NOT NULL,
  `demiPensionAdult` float NOT NULL,
  `PensionCompleteAdulte` float NOT NULL,
  `petitDejEnfant` float NOT NULL,
  `demiPensionEnfant` float NOT NULL,
  `PensionCompleteEnfant` float NOT NULL,
  `aiAdulte` float NOT NULL,
  `aiEnfant` float NOT NULL,
  `ndPetitDej` int NOT NULL,
  `ndDemiPension` int NOT NULL,
  `ndPensionComplete` int NOT NULL,
  `ndAI` int NOT NULL,
  `commissionPension` int NOT NULL,
  `roomOnly` int NOT NULL,
  `nomResp` int NOT NULL,
  `fonctionResp` int NOT NULL,
  `emailResp` int NOT NULL,
  `fixResp` int NOT NULL,
  `telResp` int NOT NULL,
  `adresseBanqueHotel` text NOT NULL,
  `rib` varchar(50) NOT NULL,
  `commission` int NOT NULL,
  `tax` float NOT NULL,
  `annulationAvant` varchar(100) NOT NULL,
  `remise` int NOT NULL,
  `web` int NOT NULL,
  `non_remboursable` int NOT NULL DEFAULT '0',
  `non_annulable` int NOT NULL DEFAULT '0',
  `taxeSejour` int NOT NULL,
  `stopSell1From` date DEFAULT NULL,
  `stopSell1To` date DEFAULT NULL,
  `stopSell2From` date DEFAULT NULL,
  `stopSell2To` date DEFAULT NULL,
  `stopSell3From` date DEFAULT NULL,
  `stopSell3To` date DEFAULT NULL,
  `animation` int NOT NULL,
  `kids_club` int NOT NULL,
  `pieds_eau` int NOT NULL,
  `aqua_park` int NOT NULL,
  `adult_only` int NOT NULL,
  `longstay` varchar(100) DEFAULT NULL,
  `early_booking` varchar(100) DEFAULT NULL,
  `enfants_promo` varchar(10) DEFAULT NULL,
  `annul_modif` varchar(100) DEFAULT NULL,
  `etatContrat` int NOT NULL,
  `dteDebutValidite` date NOT NULL,
  `dteFinValidite` date NOT NULL,
  `imagepricipale` varchar(255) NOT NULL,
  `titre_en` varchar(150) DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `titre_es` varchar(150) DEFAULT NULL,
  `description_es` text DEFAULT NULL,
  `titre_ar` varchar(150) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hotelscatsdetails`
--

CREATE TABLE `hotelscatsdetails` (
  `id` int NOT NULL,
  `titre` varchar(100) NOT NULL,
  `hotel_id` int NOT NULL,
  `description` text NOT NULL,
  `image` varchar(250) NOT NULL,
  `titre_en` varchar(100) DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `titre_es` varchar(100) DEFAULT NULL,
  `description_es` text DEFAULT NULL,
  `titre_ar` varchar(100) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hotel_equipements`
--

CREATE TABLE `hotel_equipements` (
  `id` int NOT NULL,
  `titre` varchar(100) NOT NULL,
  `icon` text NOT NULL,
  `hotel_id` int NOT NULL,
  `titre_en` varchar(100) DEFAULT NULL,
  `titre_es` varchar(100) DEFAULT NULL,
  `titre_ar` varchar(100) DEFAULT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hotel_images`
--

CREATE TABLE `hotel_images` (
  `id` int NOT NULL,
  `titre` varchar(150) NOT NULL,
  `alt` varchar(152) NOT NULL,
  `src` varchar(255) NOT NULL,
  `hotel_id` int NOT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hotel_periode_promos`
--

CREATE TABLE `hotel_periode_promos` (
  `id` int NOT NULL,
  `titre` varchar(100) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `hotel_id` int NOT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hotel_promos`
--

CREATE TABLE `hotel_promos` (
  `id` int NOT NULL,
  `min` int NOT NULL,
  `max` int NOT NULL,
  `remise` float NOT NULL,
  `hotel_periode_promos_id` int NOT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hotel_resa_anti_periodes`
--

CREATE TABLE `hotel_resa_anti_periodes` (
  `id` int NOT NULL,
  `titre` varchar(100) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `hotel_id` int NOT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hotel_resa_anti_promos`
--

CREATE TABLE `hotel_resa_anti_promos` (
  `id` int NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `remise` float NOT NULL,
  `hotel_resa_anti_periodes_id` int NOT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `insurance_options`
--

CREATE TABLE `insurance_options` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `coverage_details` text NOT NULL,
  `price_per_day` decimal(10,2) NOT NULL,
  `supplier_id` int DEFAULT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `insurance_reservations`
--

CREATE TABLE `insurance_reservations` (
  `id` int NOT NULL,
  `reservation_id` int NOT NULL,
  `insurance_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `status` enum('active','cancelled','claimed') NOT NULL DEFAULT 'active',
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `loyalty_programs`
--

CREATE TABLE `loyalty_programs` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `points_per_euro` decimal(10,2) NOT NULL DEFAULT '1.00',
  `signup_bonus` int NOT NULL DEFAULT '0',
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `loyalty_transactions`
--

CREATE TABLE `loyalty_transactions` (
  `id` int NOT NULL,
  `loyalty_account_id` int NOT NULL,
  `reservation_id` int DEFAULT NULL,
  `transaction_date` datetime NOT NULL,
  `points` int NOT NULL,
  `type` enum('earn','redeem','expire','adjust') NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `methodes_paiements`
--

CREATE TABLE `methodes_paiements` (
  `id` int NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `titre_en` varchar(255) DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `titre_es` varchar(255) DEFAULT NULL,
  `description_es` text DEFAULT NULL,
  `titre_ar` varchar(255) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

CREATE TABLE `modules` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `alias2` varchar(255) NOT NULL,
  `type` int NOT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `id` int NOT NULL,
  `date` datetime NOT NULL,
  `agent` BIGINT UNSIGNED NOT NULL, -- Changed to BIGINT UNSIGNED
  `note` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `reservation_id` int NOT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `category` int NOT NULL,
  `titrePage` varchar(255) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `ordre` int NOT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `titrePage_en` varchar(255) DEFAULT NULL,
  `metakey_en` TEXT DEFAULT NULL,
  `metadesc_en` TEXT DEFAULT NULL,
  `title_es` varchar(255) DEFAULT NULL,
  `description_es` text DEFAULT NULL,
  `titrePage_es` varchar(255) DEFAULT NULL,
  `metakey_es` TEXT DEFAULT NULL,
  `metadesc_es` TEXT DEFAULT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `titrePage_ar` varchar(255) DEFAULT NULL,
  `metakey_ar` TEXT DEFAULT NULL,
  `metadesc_ar` TEXT DEFAULT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pages_categories`
--

CREATE TABLE `pages_categories` (
  `id` int NOT NULL,
  `titre` varchar(150) NOT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Passports`
--

CREATE TABLE `Passports` (
  `id` int NOT NULL,
  `document_type_raw` varchar(10) DEFAULT NULL,
  `document_type_readable` varchar(10) DEFAULT NULL,
  `issuing_country` varchar(10) DEFAULT NULL,
  `surname` varchar(20) DEFAULT NULL,
  `given_names_readable` varchar(20) DEFAULT NULL,
  `document_number` varchar(15) DEFAULT NULL,
  `nationality` varchar(5) DEFAULT NULL,
  `dob_raw` varchar(10) DEFAULT NULL,
  `dob_readable` varchar(25) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `expiration_date_with_check_digit` varchar(10) DEFAULT NULL,
  `expiration_date_readable` varchar(25) DEFAULT NULL,
  `num_national` varchar(10) DEFAULT NULL,
  `optional` varchar(25) DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payment_transactions`
--

CREATE TABLE `payment_transactions` (
  `id` int NOT NULL,
  `reservation_id` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `status` enum('pending','completed','failed','refunded') NOT NULL,
  `gateway_response` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `periodes`
--

CREATE TABLE `periodes` (
  `id` int NOT NULL,
  `datedepart` date NOT NULL,
  `datearriver` date NOT NULL,
  `prixPersDbl` decimal(10,2) DEFAULT NULL,
  `prixPersSingle` decimal(10,2) DEFAULT NULL,
  `prixPers3eme` decimal(10,2) DEFAULT NULL,
  `prixPers4eme` decimal(10,2) DEFAULT NULL,
  `prix1erEnfant` decimal(10,2) DEFAULT NULL,
  `prix2emeEnfant` decimal(10,2) DEFAULT NULL,
  `prixBebe` decimal(10,2) DEFAULT NULL,
  `agemaxEnfant` decimal(10,2) DEFAULT NULL,
  `agemaxBebe` decimal(10,2) DEFAULT NULL,
  `voyage_id` int NOT NULL,
  `allotement` int NOT NULL,
  `nom_hotel` varchar(255) NOT NULL,
  `nom_company` varchar(255) NOT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `promotions`
--

CREATE TABLE `promotions` (
  `id` int NOT NULL,
  `code` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `discount_type` enum('percentage','fixed','nights') NOT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `min_booking_amount` decimal(10,2) DEFAULT NULL,
  `max_discount` decimal(10,2) DEFAULT NULL,
  `applicable_to` enum('all','hotels','voyages') NOT NULL DEFAULT 'all',
  `specific_hotel_id` int DEFAULT NULL,
  `specific_voyage_id` int DEFAULT NULL,
  `uses_per_customer` int DEFAULT '1',
  `total_uses` int DEFAULT '0',
  `max_uses` int DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `promotion_usage`
--

CREATE TABLE `promotion_usage` (
  `id` int NOT NULL,
  `promotion_id` int NOT NULL,
  `reservation_id` int NOT NULL,
  `client_id` int NOT NULL,
  `usage_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `discount_amount` decimal(10,2) NOT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `raisons`
--

CREATE TABLE `raisons` (
  `id` int NOT NULL,
  `raison` varchar(255) NOT NULL,
  `raison_en` varchar(255) DEFAULT NULL,
  `raison_es` varchar(255) DEFAULT NULL,
  `raison_ar` varchar(255) DEFAULT NULL,
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `id` int NOT NULL,
  `ref` varchar(12) NOT NULL,
  `hotel` int DEFAULT NULL,
  `voyage` int NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `total_orig` decimal(10,2) DEFAULT NULL,
  `devise` char(10) NOT NULL,
  `client` int NOT NULL,
  `agent` BIGINT UNSIGNED NOT NULL, -- Changed to BIGINT UNSIGNED
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `Saison_id` int NOT NULL,
  `periode` int NOT NULL,
  `etat` ENUM('Nouveau', 'Traiter', 'Confirmer', 'Annuler', 'Depasse') NOT NULL, -- Changed to ENUM
  `raison_reject` varchar(255) NOT NULL,
  `mpTitre` varchar(255) NOT NULL,
  `date_reservation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `titre` varchar(100) NOT NULL,
  `etoile` int NOT NULL,
  `pays` varchar(30) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `hotels` varchar(255) NOT NULL,
  `jours` int NOT NULL,
  `nuits` int NOT NULL,
  `formule` varchar(100) NOT NULL,
  `regime` varchar(50) NOT NULL,
  `ageEnfant1` varchar(5) NOT NULL,
  `ageEnfant2` varchar(5) NOT NULL,
  `weekm` int NOT NULL,
  `notif` int NOT NULL DEFAULT '0',
  `offline` tinyint NOT NULL DEFAULT '0',
  -- `debFacture` varchar(100) DEFAULT NULL, -- Removed
  -- `numFacture` int DEFAULT NULL,         -- Removed
  -- `dateFacture` datetime DEFAULT NULL,    -- Removed
  -- `agentFacture` int NOT NULL,          -- Removed
  `traiteeBy` BIGINT UNSIGNED NOT NULL DEFAULT '0', -- Changed to BIGINT UNSIGNED
  `devis_notes` text NOT NULL,
  `taxeSejour` int DEFAULT NULL,
  `etatTaxeSejour` int DEFAULT NULL,
  -- `forniseur1_id` int DEFAULT NULL,         -- Removed
  -- `typePrestation1Fornie` varchar(50) NOT NULL, -- Removed
  -- `prixAchatPrestation1` decimal(10,2) DEFAULT NULL, -- Removed
  -- `forniseur2_id` int DEFAULT NULL,         -- Removed
  -- `typePrestation2Fornie` varchar(50) NOT NULL, -- Removed
  -- `prixAchatPrestation2` decimal(10,2) DEFAULT NULL, -- Removed
  -- `forniseur3_id` int DEFAULT NULL,         -- Removed
  -- `typePrestation3Fornie` varchar(50) NOT NULL, -- Removed
  -- `prixAchatPrestation3` decimal(10,2) DEFAULT NULL, -- Removed
  -- `forniseur4_id` int DEFAULT NULL,         -- Removed
  -- `typePrestation4Fornie` varchar(50) NOT NULL, -- Removed
  -- `prixAchatPrestation4` decimal(10,2) DEFAULT NULL, -- Removed
  -- `forniseur5_id` int DEFAULT NULL,         -- Removed
  -- `typePrestation5Fornie` varchar(50) NOT NULL, -- Removed
  -- `prixAchatPrestation5` decimal(10,2) DEFAULT NULL, -- Removed
  -- `forniseur6_id` int DEFAULT NULL,         -- Removed
  -- `typePrestation6Fornie` varchar(50) NOT NULL, -- Removed
  -- `prixAchatPrestation6` decimal(10,2) DEFAULT NULL, -- Removed
  `has_voucher` TINYINT(1) NOT NULL DEFAULT '0', -- Added
  `opt01` varchar(50) DEFAULT NULL,
  `opt02` varchar(50) DEFAULT NULL,
  `opt03` varchar(50) DEFAULT NULL,
  `opt04` varchar(50) DEFAULT NULL,
  `opt05` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déclencheurs `reservations` (Updated to reflect ENUM for etat and new columns)
--
DELIMITER $$
DROP TRIGGER IF EXISTS `after_reservation_insert`$$
CREATE TRIGGER `after_reservation_insert` AFTER INSERT ON `reservations` FOR EACH ROW BEGIN
    INSERT INTO reservations_audit (
        reservation_id,
        utilisateur_id,
        action,
        new_values,
        ip_address
    ) VALUES (
        NEW.id,
        @current_utilisateur_id,
        'INSERT',
        JSON_OBJECT(
            'ref', NEW.ref,
            'hotel', NEW.hotel,
            'voyage', NEW.voyage,
            'total', NEW.total,
            'client', NEW.client,
            'agent', NEW.agent,
            'check_in', NEW.check_in,
            'check_out', NEW.check_out,
            'etat', NEW.etat,
            'traiteeBy', NEW.traiteeBy,
            'has_voucher', NEW.has_voucher
        ),
        @current_utilisateur_ip
    );
END$$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS `before_reservation_delete`$$
CREATE TRIGGER `before_reservation_delete` BEFORE DELETE ON `reservations` FOR EACH ROW BEGIN
    INSERT INTO reservations_audit (
        reservation_id,
        utilisateur_id,
        action,
        old_values,
        ip_address
    ) VALUES (
        OLD.id,
        @current_utilisateur_id,
        'DELETE',
        JSON_OBJECT(
            'ref', OLD.ref,
            'hotel', OLD.hotel,
            'voyage', OLD.voyage,
            'total', OLD.total,
            'client', OLD.client,
            'agent', OLD.agent,
            'check_in', OLD.check_in,
            'check_out', OLD.check_out,
            'etat', OLD.etat,
            'traiteeBy', OLD.traiteeBy,
            'has_voucher', OLD.has_voucher
        ),
        @current_utilisateur_ip
    );
END$$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS `before_reservation_update`$$
CREATE TRIGGER `before_reservation_update` BEFORE UPDATE ON `reservations` FOR EACH ROW BEGIN
    DECLARE changed_fields TEXT DEFAULT '';
    DECLARE old_vals JSON DEFAULT JSON_OBJECT();
    DECLARE new_vals JSON DEFAULT JSON_OBJECT();

    -- Vérifier chaque champ pour les modifications
    IF NEW.ref != OLD.ref THEN
        SET changed_fields = CONCAT(changed_fields, 'ref,');
        SET old_vals = JSON_SET(old_vals, '$.ref', OLD.ref);
        SET new_vals = JSON_SET(new_vals, '$.ref', NEW.ref);
    END IF;

    IF NEW.hotel != OLD.hotel THEN
        SET changed_fields = CONCAT(changed_fields, 'hotel,');
        SET old_vals = JSON_SET(old_vals, '$.hotel', OLD.hotel);
        SET new_vals = JSON_SET(new_vals, '$.hotel', NEW.hotel);
    END IF;

    IF NEW.voyage != OLD.voyage THEN
        SET changed_fields = CONCAT(changed_fields, 'voyage,');
        SET old_vals = JSON_SET(old_vals, '$.voyage', OLD.voyage);
        SET new_vals = JSON_SET(new_vals, '$.voyage', NEW.voyage);
    END IF;

    IF NEW.total != OLD.total THEN
        SET changed_fields = CONCAT(changed_fields, 'total,');
        SET old_vals = JSON_SET(old_vals, '$.total', OLD.total);
        SET new_vals = JSON_SET(new_vals, '$.total', NEW.total);
    END IF;

    IF NEW.client != OLD.client THEN
        SET changed_fields = CONCAT(changed_fields, 'client,');
        SET old_vals = JSON_SET(old_vals, '$.client', OLD.client);
        SET new_vals = JSON_SET(new_vals, '$.client', NEW.client);
    END IF;

    IF NEW.agent != OLD.agent THEN
        SET changed_fields = CONCAT(changed_fields, 'agent,');
        SET old_vals = JSON_SET(old_vals, '$.agent', OLD.agent);
        SET new_vals = JSON_SET(new_vals, '$.agent', NEW.agent);
    END IF;

    IF NEW.check_in != OLD.check_in THEN
        SET changed_fields = CONCAT(changed_fields, 'check_in,');
        SET old_vals = JSON_SET(old_vals, '$.check_in', OLD.check_in);
        SET new_vals = JSON_SET(new_vals, '$.check_in', NEW.check_in);
    END IF;

    IF NEW.check_out != OLD.check_out THEN
        SET changed_fields = CONCAT(changed_fields, 'check_out,');
        SET old_vals = JSON_SET(old_vals, '$.check_out', OLD.check_out);
        SET new_vals = JSON_SET(new_vals, '$.check_out', NEW.check_out);
    END IF;

    IF NEW.etat != OLD.etat THEN
        SET changed_fields = CONCAT(changed_fields, 'etat,');
        SET old_vals = JSON_SET(old_vals, '$.etat', OLD.etat);
        SET new_vals = JSON_SET(new_vals, '$.etat', NEW.etat);
    END IF;

    IF NEW.traiteeBy != OLD.traiteeBy THEN
        SET changed_fields = CONCAT(changed_fields, 'traiteeBy,');
        SET old_vals = JSON_SET(old_vals, '$.traiteeBy', OLD.traiteeBy);
        SET new_vals = JSON_SET(new_vals, '$.traiteeBy', NEW.traiteeBy);
    END IF;

    IF NEW.has_voucher != OLD.has_voucher THEN
        SET changed_fields = CONCAT(changed_fields, 'has_voucher,');
        SET old_vals = JSON_SET(old_vals, '$.has_voucher', OLD.has_voucher);
        SET new_vals = JSON_SET(new_vals, '$.has_voucher', NEW.has_voucher);
    END IF;

    -- Enregistrer uniquement si des changements ont été détectés
    IF changed_fields != '' THEN
        -- Supprimer la virgule finale
        SET changed_fields = LEFT(changed_fields, LENGTH(changed_fields) - 1);

        INSERT INTO reservations_audit (
            reservation_id,
            utilisateur_id,
            action,
            changed_fields,
            old_values,
            new_values,
            ip_address
        ) VALUES (
            NEW.id,
            @current_utilisateur_id,
            'UPDATE',
            changed_fields,
            old_vals,
            new_vals,
            @current_utilisateur_ip
        );
    END IF;
END$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `reservations_audit`
--

CREATE TABLE `reservations_audit` (
  `id` int NOT NULL,
  `reservation_id` int NOT NULL,
  `utilisateur_id` BIGINT UNSIGNED DEFAULT NULL, -- Changed to BIGINT UNSIGNED
  `action` enum('INSERT','UPDATE','DELETE') NOT NULL,
  `changed_fields` text,
  `old_values` text,
  `new_values` text,
  `action_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reservation_chambre`
--

CREATE TABLE `reservation_chambre` (
  `id` int NOT NULL,
  `reservation_id` int NOT NULL,
  `type` varchar(5000) NOT NULL,
  `nom_prenom_client` varchar(100) NOT NULL,
  `prix` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reservation_voyage_supps`
--

CREATE TABLE `reservation_voyage_supps` (
  `id` int NOT NULL,
  `titre` varchar(255) NOT NULL,
  `nb_supp` int NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `reservation_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `id` int NOT NULL,
  `client_id` int NOT NULL,
  `hotel_id` int DEFAULT NULL,
  `voyage_id` int DEFAULT NULL,
  `rating` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `review` text NOT NULL,
  `review_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- Added ENGINE and CHARSET

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--
-- This table is considered redundant by the new `user_roles`/`permissions` system.
-- If it has a specific, separate purpose (e.g., legacy module permissions), its `utilisateur_id` should be BIGINT UNSIGNED.
-- For a cleaner design, it is recommended to drop this table if its functionality is fully covered by the new RBAC.
-- Assuming for now it is kept, but with the user_id type fixed:
CREATE TABLE `roles` (
  `id` int NOT NULL,
  `utilisateur_id` BIGINT UNSIGNED NOT NULL, -- Changed to BIGINT UNSIGNED
  `Module_id` int NOT NULL,
  `edit` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- --------------------------------------------------------

--
-- Structure de la table `rooms`
--

CREATE TABLE `rooms` (
  `id` int NOT NULL,
  `titre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `saisons`
--

CREATE TABLE `saisons` (
  `id` int NOT NULL,
  `titre` varchar(100) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `date_debut2` date DEFAULT NULL,
  `date_fin2` date DEFAULT NULL,
  `date_debut3` date DEFAULT NULL,
  `date_fin3` date DEFAULT NULL,
  `date_debut4` date DEFAULT NULL,
  `date_fin4` date DEFAULT NULL,
  `minSejour` int NOT NULL,
  `Hotel_id` int NOT NULL,
  `debut_promo` date DEFAULT NULL,
  `fin_promo` date DEFAULT NULL,
  `remise` int DEFAULT NULL,
  `petitDejAdult_prix_achat` float DEFAULT '0',
  `demiPensionAdult_prix_achat` float DEFAULT '0',
  `PensionCompleteAdulte_prix_achat` float DEFAULT '0',
  `petitDejEnfant_prix_achat` float DEFAULT '0',
  `demiPensionEnfant_prix_achat` float DEFAULT '0',
  `PensionCompleteEnfant_prix_achat` float DEFAULT '0',
  `aiAdulte_prix_achat` float DEFAULT '0',
  `aiEnfant_prix_achat` float DEFAULT '0',
  `petitDejAdult` float DEFAULT '0',
  `demiPensionAdult` float DEFAULT '0',
  `PensionCompleteAdulte` float DEFAULT '0',
  `petitDejEnfant` float DEFAULT '0',
  `demiPensionEnfant` float DEFAULT '0',
  `PensionCompleteEnfant` float DEFAULT '0',
  `aiAdulte` float DEFAULT '0',
  `aiEnfant` float DEFAULT '0',
  `tarifs_auto` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `scheduled_tasks`
--

CREATE TABLE `scheduled_tasks` (
  `id` int NOT NULL,
  `task_name` varchar(100) NOT NULL,
  `description` text,
  `command` varchar(255) NOT NULL,
  `schedule` varchar(50) NOT NULL COMMENT 'Cron expression',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_run` datetime DEFAULT NULL,
  `next_run` datetime DEFAULT NULL,
  `last_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `seos`
--

CREATE TABLE `seos` (
  `id` int NOT NULL,
  `metadesc` text NOT NULL,
  `metakey` text NOT NULL,
  `titre` varchar(255) NOT NULL,
  `googleAnalytic` text NOT NULL,
  `metadesc_en` TEXT DEFAULT NULL,
  `metakey_en` TEXT DEFAULT NULL,
  `titre_en` varchar(255) DEFAULT NULL,
  `metadesc_es` TEXT DEFAULT NULL,
  `metakey_es` TEXT DEFAULT NULL,
  `titre_es` varchar(255) DEFAULT NULL,
  `metadesc_ar` TEXT DEFAULT NULL,
  `metakey_ar` TEXT DEFAULT NULL,
  `titre_ar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sliders`
--

CREATE TABLE `sliders` (
  `id` int NOT NULL,
  `titre` varchar(150) NOT NULL,
  `src` varchar(250) NOT NULL,
  `url` varchar(255) NOT NULL,
  `home` int NOT NULL,
  `hotels` int NOT NULL,
  `home_ar` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int NOT NULL,
  `type` enum('all','hotel','airline','transfer','excursion','visa','insurance','other') NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `banque` varchar(255) NOT NULL,
  `code_banque` varchar(255) NOT NULL,
  `swift_code` varchar(255) NOT NULL,
  `rib_banque` varchar(255) NOT NULL,
  `api_configuration` JSON DEFAULT NULL -- Added for external API details
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reservation_suppliers`
--

CREATE TABLE reservation_suppliers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  reservation_id INT,
  supplier_id INT,
  prestation_type VARCHAR(50),
  achat_price DECIMAL(10,2),
  payment_status ENUM('pending', 'paid', 'partially_paid') NOT NULL DEFAULT 'pending', -- Added
  amount_due DECIMAL(10,2) NOT NULL, -- Added
  FOREIGN KEY (reservation_id) REFERENCES reservations(id),
  FOREIGN KEY (supplier_id) REFERENCES suppliers(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text NOT NULL,
  `description` text,
  `is_public` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `task_execution_log`
--

CREATE TABLE `task_execution_log` (
  `id` int NOT NULL,
  `task_id` int NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `output` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `themes`
--

CREATE TABLE `themes` (
  `id` int NOT NULL,
  `slug` varchar(100) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `home` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `transactions`
--

CREATE TABLE `transactions` (
  `id` int NOT NULL,
  `mode_reglement` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `montant` decimal(10,2) NOT NULL,
  `libelle` varchar(250) NOT NULL,
  `reservation_id` int NOT NULL,
  `type` varchar(20) NOT NULL,
  `justificatif` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL UNIQUE,
  `email_verified_at` TIMESTAMP NULL DEFAULT NULL,
  `password` VARCHAR(255) NOT NULL,
  `remember_token` VARCHAR(100) DEFAULT NULL,
  -- `role` VARCHAR(50) NOT NULL DEFAULT 'utilisateur', -- Removed as per previous discussion, replaced by user_role_id
  `is_active` TINYINT(1) NOT NULL DEFAULT 1,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `user_role_id` INT DEFAULT NULL, -- Added for new RBAC system
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_utilisateur_user_role` FOREIGN KEY (`user_role_id`) REFERENCES `user_roles` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `pays_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `visa_applications`
--

CREATE TABLE `visa_applications` (
  `id` int NOT NULL,
  `reservation_id` int NOT NULL,
  `client_id` int NOT NULL,
  `visa_requirement_id` int NOT NULL,
  `application_date` date NOT NULL,
  `status` enum('pending','approved','rejected','processing') NOT NULL DEFAULT 'pending',
  `documents_submitted` text,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `visa_requirements`
--

CREATE TABLE `visa_requirements` (
  `id` int NOT NULL,
  `country_code` varchar(3) NOT NULL,
  `nationality_code` varchar(3) NOT NULL,
  `visa_required` tinyint(1) NOT NULL DEFAULT '1',
  `notes` text,
  `processing_time` varchar(50) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `voyages`
--

CREATE TABLE `voyages` (
  `id` int NOT NULL,
  `slug` varchar(255) NOT NULL,
  `titre` varchar(150) NOT NULL,
  `jours` int NOT NULL,
  `nuits` int NOT NULL,
  `vol` varchar(50) NOT NULL,
  `transfert_gratuit` int NOT NULL,
  `excursion` int NOT NULL,
  `guide` int NOT NULL,
  `bagage` int NOT NULL,
  `vol_option` int NOT NULL,
  `description` text NOT NULL,
  `shortdesc` text NOT NULL,
  `situation` varchar(150) NOT NULL,
  `formule` varchar(100) NOT NULL,
  `regime` varchar(50) NOT NULL,
  `prix` int DEFAULT NULL,
  `category` int NOT NULL,
  `villeDepart` varchar(100) NOT NULL,
  `paysDestination` varchar(100) NOT NULL,
  `villeDestination` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `homePage` tinyint(1) NOT NULL DEFAULT '0',
  `map` text NOT NULL,
  `promo` int NOT NULL,
  `remise` int DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `droite` varchar(150) DEFAULT NULL,
  `gauche` varchar(500) DEFAULT NULL,
  `nombrejours` varchar(255) DEFAULT NULL,
  `infosup` text,
  `hotels` varchar(255) DEFAULT NULL,
  `Hotel_id` int DEFAULT NULL,
  `etoile` int DEFAULT NULL,
  `web` int NOT NULL,
  `ageEnfant1` varchar(10) NOT NULL,
  `ageEnfant2` varchar(10) NOT NULL,
  `room` varchar(100) NOT NULL,
  `bestof` int NOT NULL,
  `active` int NOT NULL,
  `ordre` int NOT NULL DEFAULT '7',
  `gtitre` varchar(100) NOT NULL,
  `gdesc` varchar(250) NOT NULL,
  `program_pdf_file` VARCHAR(255) DEFAULT NULL, -- Added
  `titre_en` varchar(150) DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `shortdesc_en` text DEFAULT NULL,
  `infosup_en` text DEFAULT NULL,
  `titre_es` varchar(150) DEFAULT NULL,
  `description_es` text DEFAULT NULL,
  `shortdesc_es` text DEFAULT NULL,
  `infosup_es` text DEFAULT NULL,
  `titre_ar` varchar(150) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `shortdesc_ar` text DEFAULT NULL,
  `infosup_ar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `voyagescatsdetails`
--

CREATE TABLE `voyagescatsdetails` (
  `id` int NOT NULL,
  `titre` varchar(100) NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `image` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `voyage_id` int NOT NULL,
  `titre_en` varchar(100) DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `titre_es` varchar(100) DEFAULT NULL,
  `description_es` text DEFAULT NULL,
  `titre_ar` varchar(100) DEFAULT NULL,
  `description_ar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `voyages_images`
--

CREATE TABLE `voyages_images` (
  `id` int NOT NULL,
  `titre` varchar(150) NOT NULL,
  `src` text NOT NULL,
  `voyage_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `voyages_supplements`
--

CREATE TABLE `voyages_supplements` (
  `id` int NOT NULL,
  `titre` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `descsupp` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `voyage_id` int NOT NULL,
  `titre_en` varchar(255) DEFAULT NULL,
  `descsupp_en` varchar(255) DEFAULT NULL,
  `titre_es` varchar(255) DEFAULT NULL,
  `descsupp_es` varchar(255) DEFAULT NULL,
  `titre_ar` varchar(255) DEFAULT NULL,
  `descsupp_ar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `voyage_credit`
--

CREATE TABLE `voyage_credit` (
  `id` int NOT NULL,
  `reservation` int NOT NULL,
  `CIN` varchar(255) NOT NULL,
  `bulletins_paie` varchar(255) NOT NULL,
  `attestation_travail` varchar(255) NOT NULL,
  `quittance_utilities` varchar(255) NOT NULL,
  `releves_bancaires` varchar(255) NOT NULL,
  `specimen_cheque` varchar(255) NOT NULL,
  `etat_engagement` varchar(255) NOT NULL,
  `carte_professionnelle` varchar(255) NOT NULL,
  `contrats_locations` varchar(255) NOT NULL,
  `titres_fonciers` varchar(255) NOT NULL,
  `RC` varchar(255) NOT NULL,
  `attestation_inscription_taxe` varchar(255) NOT NULL,
  `justificatif_adresse` varchar(255) NOT NULL,
  `facture_proforma` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- NEW TABLES --

-- Structure de la table `invoices`
CREATE TABLE `invoices` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `reservation_id` INT NOT NULL UNIQUE,
  `invoice_number` VARCHAR(50) NOT NULL UNIQUE,
  `invoice_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_amount` DECIMAL(10,2) NOT NULL,
  `currency` VARCHAR(3) NOT NULL,
  `generated_by_user_id` BIGINT UNSIGNED NOT NULL, -- Changed to BIGINT UNSIGNED
  `status` ENUM('paid', 'pending', 'cancelled') NOT NULL DEFAULT 'pending',
  `pdf_path` VARCHAR(255) DEFAULT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_invoice_reservation` (`reservation_id`),
  KEY `idx_invoice_number` (`invoice_number`),
  KEY `idx_invoice_generated_by` (`generated_by_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Structure de la table `supplier_payments`
CREATE TABLE `supplier_payments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `supplier_id` INT NOT NULL,
  `payment_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` DECIMAL(10,2) NOT NULL,
  `currency` VARCHAR(3) NOT NULL,
  `payment_method` VARCHAR(50) NOT NULL,
  `justification_file` VARCHAR(255) DEFAULT NULL, -- Path to PDF/image
  `notes` TEXT,
  `paid_by_user_id` BIGINT UNSIGNED NOT NULL, -- Changed to BIGINT UNSIGNED
  PRIMARY KEY (`id`),
  KEY `idx_suppay_supplier` (`supplier_id`),
  KEY `idx_suppay_date` (`payment_date`),
  KEY `idx_suppay_paid_by` (`paid_by_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Structure de la table `supplier_payment_items`
CREATE TABLE `supplier_payment_items` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `supplier_payment_id` INT NOT NULL,
  `reservation_supplier_id` INT NOT NULL, -- Link to specific service provided by supplier for a reservation
  `amount_paid` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_suppayitem_unique` (`supplier_payment_id`, `reservation_supplier_id`),
  KEY `idx_suppayitem_payment` (`supplier_payment_id`),
  KEY `idx_suppayitem_res_supp` (`reservation_supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Structure de la table `vouchers`
CREATE TABLE `vouchers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `reservation_id` INT NOT NULL UNIQUE,
  `voucher_code` VARCHAR(50) NOT NULL UNIQUE,
  `issue_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expiry_date` DATE DEFAULT NULL,
  `details` TEXT, -- JSON for dynamic details of the voucher
  `generated_by_user_id` BIGINT UNSIGNED NOT NULL, -- Changed to BIGINT UNSIGNED
  `pdf_path` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_voucher_reservation` (`reservation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Structure de la table `payment_gateways`
CREATE TABLE `payment_gateways` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL UNIQUE,
  `type` ENUM('bank_transfer', 'cmi', 'in_agency', 'pay_in_x_times', 'other') NOT NULL,
  `configuration` JSON DEFAULT NULL, -- Store specific configuration details (API keys, bank details, etc.)
  `is_active` TINYINT(1) NOT NULL DEFAULT '1',
  `description` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Structure de la table `user_roles`
CREATE TABLE `user_roles` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL UNIQUE, -- 'admin', 'agent', 'comptable', 'client'
  `description` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Structure de la table `permissions`
CREATE TABLE `permissions` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL UNIQUE, -- e.g., 'manage_invoices', 'create_voyage', 'view_backend_logs'
  `description` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Structure de la table `role_permissions`
CREATE TABLE `role_permissions` (
  `role_id` INT NOT NULL,
  `permission_id` INT NOT NULL,
  PRIMARY KEY (`role_id`, `permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Structure de la table `tailor_made_requests`
CREATE TABLE `tailor_made_requests` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `client_id` INT DEFAULT NULL, -- Can be null for guest requests
  `contact_name` VARCHAR(100) NOT NULL,
  `contact_email` VARCHAR(100) NOT NULL,
  `contact_phone` VARCHAR(30) DEFAULT NULL,
  `destination_preference` VARCHAR(255),
  `travel_dates_flexible` TINYINT(1) DEFAULT '0',
  `preferred_departure_date` DATE,
  `preferred_return_date` DATE,
  `number_of_adults` INT NOT NULL DEFAULT '1',
  `number_of_children` INT NOT NULL DEFAULT '0',
  `children_ages` VARCHAR(100), -- Comma separated ages
  `budget_per_person` DECIMAL(10,2) DEFAULT NULL,
  `accommodation_preference` VARCHAR(255),
  `activities_preference` TEXT,
  `notes` TEXT,
  `request_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` ENUM('pending', 'in_progress', 'quoted', 'booked', 'cancelled') NOT NULL DEFAULT 'pending',
  `assigned_to_user_id` BIGINT UNSIGNED DEFAULT NULL, -- Changed to BIGINT UNSIGNED
  PRIMARY KEY (`id`),
  KEY `idx_tmr_client` (`client_id`),
  KEY `idx_tmr_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Structure de la table `alerts`
CREATE TABLE `alerts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` BIGINT UNSIGNED DEFAULT NULL, -- Changed to BIGINT UNSIGNED
  `alert_type` VARCHAR(50) NOT NULL, -- e.g., 'payment_due', 'passport_expiry', 'reservation_status_mismatch'
  `entity_type` VARCHAR(50) DEFAULT NULL, -- e.g., 'reservation', 'client'
  `entity_id` INT DEFAULT NULL,
  `message` TEXT NOT NULL,
  `status` ENUM('new', 'seen', 'resolved') NOT NULL DEFAULT 'new',
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_alert_user` (`user_id`),
  KEY `idx_alert_type` (`alert_type`),
  KEY `idx_alert_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agences`
--
ALTER TABLE `agences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_agence_email` (`email`),
  ADD KEY `idx_agence_nom` (`nom`);

--
-- Index pour la table `api_access_log`
--
ALTER TABLE `api_access_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_apilog_key` (`api_key_id`),
  ADD KEY `idx_apilog_endpoint` (`endpoint`),
  ADD KEY `idx_apilog_time` (`request_time`);

--
-- Index pour la table `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_api_key` (`api_key`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `idx_apikey_service` (`service`),
  ADD KEY `idx_apikey_active` (`is_active`);

--
-- Index pour la table `audit_log`
--
ALTER TABLE `audit_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_audit_utilisateur` (`utilisateur_id`),
  ADD KEY `idx_audit_table` (`table_name`),
  ADD KEY `idx_audit_record` (`record_id`),
  ADD KEY `idx_audit_date` (`change_date`);

--
-- Index pour la table `avoirs`
--
ALTER TABLE `avoirs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_avoir_facture` (`facture`),
  ADD KEY `idx_avoir_ref` (`ref`),
  ADD KEY `idx_avoir_expiration` (`expiration`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_category_slug` (`slug`),
  ADD KEY `idx_category_titre` (`titre`);

--
-- Index pour la table `chambres`
--
ALTER TABLE `chambres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_chambre_hotel` (`Hotel_id`),
  ADD KEY `idx_chambre_saison` (`Saison_id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_client_email` (`email`),
  ADD KEY `idx_client_nom` (`nom`),
  ADD KEY `idx_client_prenom` (`prenom`),
  ADD KEY `idx_client_tel` (`tel`),
  ADD KEY `fk_client_passport` (`id_passport`);

--
-- Index pour la table `client_documents`
--
ALTER TABLE `client_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_clientdoc_client` (`client_id`),
  ADD KEY `idx_clientdoc_type` (`document_type`),
  ADD KEY `idx_clientdoc_expiry` (`expiry_date`);

--
-- Index pour la table `client_loyalty`
--
ALTER TABLE `client_loyalty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_client_program` (`client_id`,`program_id`),
  ADD KEY `idx_clientloyalty_client` (`client_id`),
  ADD KEY `idx_clientloyalty_program` (`program_id`);

--
-- Index pour la table `commentaires_voyages`
--
ALTER TABLE `commentaires_voyages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_comment_voyage` (`voyage_id`);

--
-- Index pour la table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_template_key` (`template_key`);

--
-- Index pour la table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `idx_flight_airline` (`airline`),
  ADD KEY `idx_flight_departure` (`departure_airport`),
  ADD KEY `idx_flight_arrival` (`arrival_airport`),
  ADD KEY `idx_flight_dates` (`departure_time`,`arrival_time`);

--
-- Index pour la table `flight_reservations`
--
ALTER TABLE `flight_reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_flightres_reservation` (`reservation_id`),
  ADD KEY `idx_flightres_flight` (`flight_id`);

--
-- Index pour la table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_hotel_slug` (`slug`),
  ADD KEY `idx_hotel_titre` (`titre`),
  ADD KEY `idx_hotel_pays` (`pays`),
  ADD KEY `idx_hotel_ville` (`ville`),
  ADD KEY `idx_hotel_etoile` (`etoile`),
  ADD KEY `idx_hotel_onHomePage` (`onHomePage`),
  ADD KEY `idx_hotel_onPromo` (`onPromo`);

--
-- Index pour la table `hotelscatsdetails`
--
ALTER TABLE `hotelscatsdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hotelcat_hotel` (`hotel_id`);

--
-- Index pour la table `hotel_equipements`
--
ALTER TABLE `hotel_equipements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_equipement_hotel` (`hotel_id`);

--
-- Index pour la table `hotel_images`
--
ALTER TABLE `hotel_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hotelimage_hotel` (`hotel_id`);

--
-- Index pour la table `hotel_periode_promos`
--
ALTER TABLE `hotel_periode_promos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hotelpromo_hotel` (`hotel_id`),
  ADD KEY `idx_hotelpromo_dates` (`date_debut`,`date_fin`);

--
-- Index pour la table `hotel_promos`
--
ALTER TABLE `hotel_promos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_promo_periode` (`hotel_periode_promos_id`);

--
-- Index pour la table `hotel_resa_anti_periodes`
--
ALTER TABLE `hotel_resa_anti_periodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_antip_hotel` (`hotel_id`),
  ADD KEY `idx_antip_dates` (`date_debut`,`date_fin`);

--
-- Index pour la table `hotel_resa_anti_promos`
--
ALTER TABLE `hotel_resa_anti_promos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_antipromo_periode` (`hotel_resa_anti_periodes_id`);

--
-- Index pour la table `insurance_options`
--
ALTER TABLE `insurance_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Index pour la table `insurance_reservations`
--
ALTER TABLE `insurance_reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_insuranceres_reservation` (`reservation_id`),
  ADD KEY `idx_insuranceres_insurance` (`insurance_id`);

--
-- Index pour la table `loyalty_programs`
--
ALTER TABLE `loyalty_programs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `loyalty_transactions`
--
ALTER TABLE `loyalty_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_loyaltytrans_account` (`loyalty_account_id`),
  ADD KEY `idx_loyaltytrans_reservation` (`reservation_id`),
  ADD KEY `idx_loyaltytrans_date` (`transaction_date`);

--
-- Index pour la table `methodes_paiements`
--
ALTER TABLE `methodes_paiements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_newsletter_email` (`email`);

--
-- Index pour la table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_note_reservation` (`reservation_id`),
  ADD KEY `idx_note_agent` (`agent`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_page_slug` (`slug`),
  ADD KEY `idx_page_category` (`category`);

--
-- Index pour la table `pages_categories`
--
ALTER TABLE `pages_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Passports`
--
ALTER TABLE `Passports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_passport_client` (`client_id`),
  ADD KEY `idx_passport_number` (`document_number`);

--
-- Index pour la table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_payment_reservation` (`reservation_id`),
  ADD KEY `idx_payment_status` (`status`),
  ADD KEY `idx_payment_method` (`payment_method`),
  ADD KEY `idx_payment_created` (`created_at`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `periodes`
--
ALTER TABLE `periodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_periode_voyage` (`voyage_id`),
  ADD KEY `idx_periode_dates` (`datedepart`,`datearriver`);

--
-- Index pour la table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_promotion_code` (`code`),
  ADD KEY `specific_hotel_id` (`specific_hotel_id`),
  ADD KEY `specific_voyage_id` (`specific_voyage_id`),
  ADD KEY `idx_promotion_dates` (`start_date`,`end_date`),
  ADD KEY `idx_promotion_active` (`active`);

--
-- Index pour la table `promotion_usage`
--
ALTER TABLE `promotion_usage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_promouse_promotion` (`promotion_id`),
  ADD KEY `idx_promouse_reservation` (`reservation_id`),
  ADD KEY `idx_promouse_client` (`client_id`);

--
-- Index pour la table `raisons`
--
ALTER TABLE `raisons`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_reservation_ref` (`ref`),
  ADD KEY `idx_reservation_client` (`client`),
  ADD KEY `idx_reservation_agent` (`agent`),
  ADD KEY `idx_reservation_hotel` (`hotel`),
  ADD KEY `idx_reservation_voyage` (`voyage`),
  ADD KEY `idx_reservation_saison` (`Saison_id`),
  ADD KEY `idx_reservation_periode` (`periode`),
  ADD KEY `idx_reservation_dates` (`check_in`,`check_out`),
  ADD KEY `idx_reservation_etat` (`etat`);

--
-- Index pour la table `reservations_audit`
--
ALTER TABLE `reservations_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_resaudit_reservation` (`reservation_id`),
  ADD KEY `idx_resaudit_utilisateur` (`utilisateur_id`),
  ADD KEY `idx_resaudit_action` (`action`),
  ADD KEY `idx_resaudit_date` (`action_date`);

--
-- Index pour la table `reservation_chambre`
--
ALTER TABLE `reservation_chambre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reschambre_reservation` (`reservation_id`);

--
-- Index pour la table `reservation_voyage_supps`
--
ALTER TABLE `reservation_voyage_supps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ressupp_reservation` (`reservation_id`);

--
-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_review_client` (`client_id`),
  ADD KEY `idx_review_hotel` (`hotel_id`),
  ADD KEY `idx_review_voyage` (`voyage_id`),
  ADD KEY `idx_review_status` (`status`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_role_utilisateur_module` (`utilisateur_id`,`Module_id`),
  ADD KEY `Module_id` (`Module_id`);

--
-- Index pour la table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `saisons`
--
ALTER TABLE `saisons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_saison_hotel` (`Hotel_id`),
  ADD KEY `idx_saison_dates` (`date_debut`,`date_fin`);

--
-- Index pour la table `scheduled_tasks`
--
ALTER TABLE `scheduled_tasks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_task_name` (`task_name`),
  ADD KEY `idx_task_active` (`is_active`),
  ADD KEY `idx_task_nextrun` (`next_run`);

--
-- Index pour la table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_slider_home` (`home`),
  ADD KEY `idx_slider_hotels` (`hotels`),
  ADD KEY `idx_slider_home_ar` (`home_ar`);

--
-- Index pour la table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_supplier_type` (`type`),
  ADD KEY `idx_supplier_name` (`name`);

--
-- Index pour la table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_setting_key` (`setting_key`);

--
-- Index pour la table `task_execution_log`
--
ALTER TABLE `task_execution_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tasklog_task` (`task_id`),
  ADD KEY `idx_tasklog_time` (`start_time`,`end_time`),
  ADD KEY `idx_tasklog_status` (`status`);

--
-- Index pour la table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_theme_slug` (`slug`);

--
-- Index pour la table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_transaction_reservation` (`reservation_id`),
  ADD KEY `idx_transaction_date` (`date`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD UNIQUE KEY `uk_utilisateur_name` (`name`),
  ADD UNIQUE KEY `uk_utilisateur_email` (`email`),
  ADD KEY `user_role_id` (`user_role_id`); -- Added index for new FK

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ville_pays` (`pays_id`);

--
-- Index pour la table `visa_applications`
--
ALTER TABLE `visa_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_visaapp_reservation` (`reservation_id`),
  ADD KEY `idx_visaapp_client` (`client_id`),
  ADD KEY `idx_visaapp_requirement` (`visa_requirement_id`);

--
-- Index pour la table `visa_requirements`
--
ALTER TABLE `visa_requirements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_visa_country_nationality` (`country_code`,`nationality_code`),
  ADD KEY `idx_visa_country` (`country_code`),
  ADD KEY `idx_visa_nationality` (`nationality_code`);

--
-- Index pour la table `voyages`
--
ALTER TABLE `voyages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_voyage_slug` (`slug`),
  ADD KEY `idx_voyage_category` (`category`),
  ADD KEY `idx_voyage_hotel` (`Hotel_id`),
  ADD KEY `idx_voyage_homePage` (`homePage`),
  ADD KEY `idx_voyage_promo` (`promo`),
  ADD KEY `idx_voyage_active` (`active`);

--
-- Index pour la table `voyagescatsdetails`
--
ALTER TABLE `voyagescatsdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_voyagecat_voyage` (`voyage_id`);

--
-- Index pour la table `voyages_images`
--
ALTER TABLE `voyages_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_voyageimage_voyage` (`voyage_id`);

--
-- Index pour la table `voyages_supplements`
--
ALTER TABLE `voyages_supplements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_voyagesupp_voyage` (`voyage_id`);

--
-- Index pour la table `voyage_credit`
--
ALTER TABLE `voyage_credit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_voyagecredit_reservation` (`reservation`);

-- NEW TABLES INDEXES --
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice_number` (`invoice_number`),
  ADD KEY `idx_invoice_reservation` (`reservation_id`),
  ADD KEY `idx_invoice_generated_by` (`generated_by_user_id`);

ALTER TABLE `supplier_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_suppay_supplier` (`supplier_id`),
  ADD KEY `idx_suppay_date` (`payment_date`),
  ADD KEY `idx_suppay_paid_by` (`paid_by_user_id`);

ALTER TABLE `supplier_payment_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_suppayitem_unique` (`supplier_payment_id`,`reservation_supplier_id`),
  ADD KEY `idx_suppayitem_payment` (`supplier_payment_id`),
  ADD KEY `idx_suppayitem_res_supp` (`reservation_supplier_id`);

ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `voucher_code` (`voucher_code`),
  ADD KEY `idx_voucher_reservation` (`reservation_id`);

ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `fk_roleperm_permission` (`permission_id`);

ALTER TABLE `tailor_made_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tmr_client` (`client_id`),
  ADD KEY `idx_tmr_status` (`status`);

ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_alert_user` (`user_id`),
  ADD KEY `idx_alert_type` (`alert_type`),
  ADD KEY `idx_alert_status` (`status`);


--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `agences`
--
ALTER TABLE `agences`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `api_access_log`
--
ALTER TABLE `api_access_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `avoirs`
--
ALTER TABLE `avoirs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `chambres`
--
ALTER TABLE `chambres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `client_documents`
--
ALTER TABLE `client_documents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `client_loyalty`
--
ALTER TABLE `client_loyalty`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commentaires_voyages`
--
ALTER TABLE `commentaires_voyages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `details`
--
ALTER TABLE `details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `flight_reservations`
--
ALTER TABLE `flight_reservations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hotelscatsdetails`
--
ALTER TABLE `hotelscatsdetails`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hotel_equipements`
--
ALTER TABLE `hotel_equipements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hotel_images`
--
ALTER TABLE `hotel_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hotel_periode_promos`
--
ALTER TABLE `hotel_periode_promos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hotel_promos`
--
ALTER TABLE `hotel_promos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hotel_resa_anti_periodes`
--
ALTER TABLE `hotel_resa_anti_periodes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hotel_resa_anti_promos`
--
ALTER TABLE `hotel_resa_anti_promos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `insurance_options`
--
ALTER TABLE `insurance_options`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `insurance_reservations`
--
ALTER TABLE `insurance_reservations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `loyalty_programs`
--
ALTER TABLE `loyalty_programs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `loyalty_transactions`
--
ALTER TABLE `loyalty_transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `methodes_paiements`
--
ALTER TABLE `methodes_paiements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pages_categories`
--
ALTER TABLE `pages_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Passports`
--
ALTER TABLE `Passports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `periodes`
--
ALTER TABLE `periodes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `promotion_usage`
--
ALTER TABLE `promotion_usage`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `raisons`
--
ALTER TABLE `raisons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservations_audit`
--
ALTER TABLE `reservations_audit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservation_chambre`
--
ALTER TABLE `reservation_chambre`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservation_voyage_supps`
--
ALTER TABLE `reservation_voyage_supps`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `saisons`
--
ALTER TABLE `saisons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `scheduled_tasks`
--
ALTER TABLE `scheduled_tasks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservation_suppliers`
--
ALTER TABLE `reservation_suppliers`
  MODIFY `id` INT NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `task_execution_log`
--
ALTER TABLE `task_execution_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `visa_applications`
--
ALTER TABLE `visa_applications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `visa_requirements`
--
ALTER TABLE `visa_requirements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `voyages`
--
ALTER TABLE `voyages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `voyagescatsdetails`
--
ALTER TABLE `voyagescatsdetails`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `voyages_images`
--
ALTER TABLE `voyages_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `voyages_supplements`
--
ALTER TABLE `voyages_supplements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `voyage_credit`
--
ALTER TABLE `voyage_credit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

-- NEW TABLES AUTO_INCREMENTS --
ALTER TABLE `invoices`
  MODIFY `id` INT NOT NULL AUTO_INCREMENT;
ALTER TABLE `supplier_payments`
  MODIFY `id` INT NOT NULL AUTO_INCREMENT;
ALTER TABLE `supplier_payment_items`
  MODIFY `id` INT NOT NULL AUTO_INCREMENT;
ALTER TABLE `vouchers`
  MODIFY `id` INT NOT NULL AUTO_INCREMENT;
ALTER TABLE `payment_gateways`
  MODIFY `id` INT NOT NULL AUTO_INCREMENT;
ALTER TABLE `user_roles`
  MODIFY `id` INT NOT NULL AUTO_INCREMENT;
ALTER TABLE `permissions`
  MODIFY `id` INT NOT NULL AUTO_INCREMENT;
ALTER TABLE `tailor_made_requests`
  MODIFY `id` INT NOT NULL AUTO_INCREMENT;
ALTER TABLE `alerts`
  MODIFY `id` INT NOT NULL AUTO_INCREMENT;


--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `api_access_log`
--
ALTER TABLE `api_access_log`
  ADD CONSTRAINT `api_access_log_ibfk_1` FOREIGN KEY (`api_key_id`) REFERENCES `api_keys` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `api_keys`
--
ALTER TABLE `api_keys`
  ADD CONSTRAINT `api_keys_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `utilisateurs` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `audit_log`
--
ALTER TABLE `audit_log`
  ADD CONSTRAINT `audit_log_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `chambres`
--
ALTER TABLE `chambres`
  ADD CONSTRAINT `chambres_ibfk_1` FOREIGN KEY (`Hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chambres_ibfk_2` FOREIGN KEY (`Saison_id`) REFERENCES `saisons` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `fk_client_passport` FOREIGN KEY (`id_passport`) REFERENCES `Passports` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `client_documents`
--
ALTER TABLE `client_documents`
  ADD CONSTRAINT `client_documents_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `client_loyalty`
--
ALTER TABLE `client_loyalty`
  ADD CONSTRAINT `client_loyalty_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `client_loyalty_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `loyalty_programs` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `commentaires_voyages`
--
ALTER TABLE `commentaires_voyages`
  ADD CONSTRAINT `commentaires_voyages_ibfk_1` FOREIGN KEY (`voyage_id`) REFERENCES `voyages` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `flights_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `flight_reservations`
--
ALTER TABLE `flight_reservations`
  ADD CONSTRAINT `flight_reservations_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flight_reservations_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `hotelscatsdetails`
--
ALTER TABLE `hotelscatsdetails`
  ADD CONSTRAINT `hotelscatsdetails_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `hotel_equipements`
--
ALTER TABLE `hotel_equipements`
  ADD CONSTRAINT `hotel_equipements_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `hotel_images`
--
ALTER TABLE `hotel_images`
  ADD CONSTRAINT `hotel_images_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `hotel_periode_promos`
--
ALTER TABLE `hotel_periode_promos`
  ADD CONSTRAINT `hotel_periode_promos_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `hotel_promos`
--
ALTER TABLE `hotel_promos`
  ADD CONSTRAINT `hotel_promos_ibfk_1` FOREIGN KEY (`hotel_periode_promos_id`) REFERENCES `hotel_periode_promos` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `hotel_resa_anti_periodes`
--
ALTER TABLE `hotel_resa_anti_periodes`
  ADD CONSTRAINT `hotel_resa_anti_periodes_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `hotel_resa_anti_promos`
--
ALTER TABLE `hotel_resa_anti_promos`
  ADD CONSTRAINT `hotel_resa_anti_promos_ibfk_1` FOREIGN KEY (`hotel_resa_anti_periodes_id`) REFERENCES `hotel_resa_anti_periodes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `insurance_options`
--
ALTER TABLE `insurance_options`
  ADD CONSTRAINT `insurance_options_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `insurance_reservations`
--
ALTER TABLE `insurance_reservations`
  ADD CONSTRAINT `insurance_reservations_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `insurance_reservations_ibfk_2` FOREIGN KEY (`insurance_id`) REFERENCES `insurance_options` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `loyalty_transactions`
--
ALTER TABLE `loyalty_transactions`
  ADD CONSTRAINT `loyalty_transactions_ibfk_1` FOREIGN KEY (`loyalty_account_id`) REFERENCES `client_loyalty` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `loyalty_transactions_ibfk_2` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notes_ibfk_2` FOREIGN KEY (`agent`) REFERENCES `utilisateurs` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`category`) REFERENCES `pages_categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `Passports`
--
ALTER TABLE `Passports`
  ADD CONSTRAINT `Passports_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD CONSTRAINT `payment_transactions_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `periodes`
--
ALTER TABLE `periodes`
  ADD CONSTRAINT `periodes_ibfk_1` FOREIGN KEY (`voyage_id`) REFERENCES `voyages` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_ibfk_1` FOREIGN KEY (`specific_hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_ibfk_2` FOREIGN KEY (`specific_voyage_id`) REFERENCES `voyages` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `promotion_usage`
--
ALTER TABLE `promotion_usage`
  ADD CONSTRAINT `promotion_usage_ibfk_1` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotion_usage_ibfk_2` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotion_usage_ibfk_3` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`client`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`agent`) REFERENCES `utilisateurs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_ibfk_3` FOREIGN KEY (`hotel`) REFERENCES `hotels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `reservations_ibfk_4` FOREIGN KEY (`voyage`) REFERENCES `voyages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_ibfk_5` FOREIGN KEY (`Saison_id`) REFERENCES `saisons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_ibfk_6` FOREIGN KEY (`periode`) REFERENCES `periodes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_ibfk_7` FOREIGN KEY (`traiteeBy`) REFERENCES `utilisateurs` (`id`) ON DELETE CASCADE;


--
-- Contraintes pour la table `reservations_audit`
--
ALTER TABLE `reservations_audit`
  ADD CONSTRAINT `reservations_audit_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `reservations_audit_ibfk_2` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reservation_chambre`
--
ALTER TABLE `reservation_chambre`
  ADD CONSTRAINT `reservation_chambre_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reservation_voyage_supps`
--
ALTER TABLE `reservation_voyage_supps`
  ADD CONSTRAINT `reservation_voyage_supps_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `reviews_ibfk_3` FOREIGN KEY (`voyage_id`) REFERENCES `voyages` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_ibfk_2` FOREIGN KEY (`Module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `saisons`
--
ALTER TABLE `saisons`
  ADD CONSTRAINT `saisons_ibfk_1` FOREIGN KEY (`Hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `task_execution_log`
--
ALTER TABLE `task_execution_log`
  ADD CONSTRAINT `task_execution_log_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `scheduled_tasks` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `fk_utilisateur_user_role` FOREIGN KEY (`user_role_id`) REFERENCES `user_roles` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `villes`
--
ALTER TABLE `villes`
  ADD CONSTRAINT `villes_ibfk_1` FOREIGN KEY (`pays_id`) REFERENCES `pays` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `visa_applications`
--
ALTER TABLE `visa_applications`
  ADD CONSTRAINT `visa_applications_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `visa_applications_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `visa_applications_ibfk_3` FOREIGN KEY (`visa_requirement_id`) REFERENCES `visa_requirements` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `voyages`
--
ALTER TABLE `voyages`
  ADD CONSTRAINT `voyages_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `voyages_ibfk_2` FOREIGN KEY (`Hotel_id`) REFERENCES `hotels` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `voyagescatsdetails`
--
ALTER TABLE `voyagescatsdetails`
  ADD CONSTRAINT `voyagescatsdetails_ibfk_1` FOREIGN KEY (`voyage_id`) REFERENCES `voyages` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `voyages_images`
--
ALTER TABLE `voyages_images`
  ADD CONSTRAINT `voyages_images_ibfk_1` FOREIGN KEY (`voyage_id`) REFERENCES `voyages` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `voyages_supplements`
--
ALTER TABLE `voyages_supplements`
  ADD CONSTRAINT `voyages_supplements_ibfk_1` FOREIGN KEY (`voyage_id`) REFERENCES `voyages` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `voyage_credit`
--
ALTER TABLE `voyage_credit`
  ADD CONSTRAINT `voyage_credit_ibfk_1` FOREIGN KEY (`reservation`) REFERENCES `reservations` (`id`) ON DELETE CASCADE;


-- NEW TABLES FOREIGN KEYS --
ALTER TABLE `invoices`
  ADD CONSTRAINT `fk_invoice_reservation` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_invoice_generated_by` FOREIGN KEY (`generated_by_user_id`) REFERENCES `utilisateurs` (`id`) ON DELETE RESTRICT;

ALTER TABLE `supplier_payments`
  ADD CONSTRAINT `fk_suppay_supplier` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `fk_suppay_paid_by_user` FOREIGN KEY (`paid_by_user_id`) REFERENCES `utilisateurs` (`id`) ON DELETE RESTRICT;

ALTER TABLE `supplier_payment_items`
  ADD CONSTRAINT `fk_suppayitem_payment` FOREIGN KEY (`supplier_payment_id`) REFERENCES `supplier_payments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_suppayitem_res_supp` FOREIGN KEY (`reservation_supplier_id`) REFERENCES `reservation_suppliers` (`id`) ON DELETE RESTRICT;

ALTER TABLE `vouchers`
  ADD CONSTRAINT `fk_voucher_reservation` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_voucher_generated_by` FOREIGN KEY (`generated_by_user_id`) REFERENCES `utilisateurs` (`id`) ON DELETE RESTRICT;

ALTER TABLE `role_permissions`
  ADD CONSTRAINT `fk_roleperm_role` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_roleperm_permission` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

ALTER TABLE `tailor_made_requests`
  ADD CONSTRAINT `fk_tmr_client` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_tmr_assigned_user` FOREIGN KEY (`assigned_to_user_id`) REFERENCES `utilisateurs` (`id`) ON DELETE SET NULL;

ALTER TABLE `alerts`
  ADD CONSTRAINT `fk_alert_user` FOREIGN KEY (`user_id`) REFERENCES `utilisateurs` (`id`) ON DELETE SET NULL;

COMMIT;

-- Initial Seed Data for user_roles, permissions, and admin user
-- Ensure `user_roles` are created before `utilisateurs` insertion, if user_role_id is not null

INSERT INTO `user_roles` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Full control over the system.'),
(2, 'agent', 'Can manage reservations and clients, but not invoices or admin users.'),
(3, 'comptable', 'Can manage invoices and payments, but not create voyages or hotels.'),
(4, 'client', 'Can only access and pay their own reservations.');

INSERT INTO `permissions` (`id`, `name`, `description`) VALUES
(1, 'manage_users', 'Allows creation, editing, and deletion of users and roles.'),
(2, 'manage_invoices', 'Allows creation, editing, and deletion of invoices.'),
(3, 'create_voyage', 'Allows creation of new voyage packages.'),
(4, 'create_hotel', 'Allows creation of new hotel entries.'),
(5, 'manage_reservations', 'Allows creation, editing, and deletion of reservations.'),
(6, 'view_backend_logs', 'Allows viewing of audit logs.'),
(7, 'manage_clients', 'Allows creation, editing, and deletion of client profiles.'),
(8, 'view_supplier_payments', 'Allows viewing of supplier payment information.'),
(9, 'make_supplier_payments', 'Allows processing of supplier payments.');

INSERT INTO `role_permissions` (`role_id`, `permission_id`) VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), -- Admin
(2, 5), (2, 7), -- Agent (can manage reservations, clients; create offline reservations)
(3, 2), (3, 5), (3, 8), (3, 9), -- Comptable (can manage invoices, reservations, supplier payments)
(4, 5); -- Client (access own reservations, pay) - Note: Specific client permissions are typically handled at application level based on `client_id`

-- Admin User Initial Seed (password 'admin' hashed with bcrypt, cost 10)
INSERT INTO `utilisateurs` (`name`, `email`, `password`, `is_active`, `created_at`, `updated_at`, `user_role_id`) VALUES
('Admin User', 'admin@admin.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NOW(), NOW(), 1);

-- Comment for audit log retention policy:
-- This is handled by application logic (e.g., a daily cron job) to delete records older than 7 days.
-- No direct SQL schema change, but important for operations.
-- Example for a cron job entry:
-- 0 0 * * * mysql -uYOUR_USER -pYOUR_PASSWORD YOUR_DB_NAME -e "DELETE FROM audit_log WHERE change_date < NOW() - INTERVAL 7 DAY;"
-- 0 0 * * * mysql -uYOUR_USER -pYOUR_PASSWORD YOUR_DB_NAME -e "DELETE FROM reservations_audit WHERE action_date < NOW() - INTERVAL 7 DAY;"

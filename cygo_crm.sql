-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 209.38.64.73:3306
-- Tiempo de generación: 26-10-2025 a las 22:22:57
-- Versión del servidor: 11.8.3-MariaDB-ubu2404-log
-- Versión de PHP: 8.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cygo_crm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accessories_vehicles`
--

CREATE TABLE `accessories_vehicles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `id_accessory_s` int(11) DEFAULT NULL,
  `type_accessory_s` varchar(45) DEFAULT NULL,
  `type_control` varchar(45) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `date_promise` date NOT NULL,
  `hour_promise` time NOT NULL,
  `notify_client` tinyint(1) NOT NULL,
  `activity_confirmation` tinyint(1) DEFAULT NULL,
  `client_arrival` tinyint(1) DEFAULT 0,
  `comments` text DEFAULT NULL,
  `id_user_adviser` int(11) DEFAULT NULL,
  `id_status_activity` int(11) DEFAULT NULL,
  `id_type_activity` int(11) NOT NULL,
  `id_type_appointment` int(11) DEFAULT NULL,
  `id_oportunity` int(11) DEFAULT NULL,
  `id_user_generate` int(11) DEFAULT NULL,
  `id_type_task` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `id_old` int(11) DEFAULT NULL,
  `brand_old` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activities_new`
--

CREATE TABLE `activities_new` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `date_promise` date NOT NULL,
  `hour_promise` time NOT NULL,
  `notify_client` tinyint(1) NOT NULL,
  `activity_confirmation` tinyint(1) DEFAULT NULL,
  `client_arrival` tinyint(1) DEFAULT 0,
  `comments` mediumtext DEFAULT NULL,
  `id_user_adviser` int(11) DEFAULT NULL,
  `id_status_activity` int(11) DEFAULT NULL,
  `id_type_activity` int(11) NOT NULL,
  `id_type_appointment` int(11) DEFAULT NULL,
  `id_oportunity` int(11) DEFAULT NULL,
  `id_user_generate` int(11) DEFAULT NULL,
  `id_type_task` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `id_old` int(11) DEFAULT NULL,
  `brand_old` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activity_business_line_corporate_purpose`
--

CREATE TABLE `activity_business_line_corporate_purpose` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activity_happy_call_surveys`
--

CREATE TABLE `activity_happy_call_surveys` (
  `id` int(11) NOT NULL,
  `id_activity` int(11) NOT NULL COMMENT 'Actividad Happy Call - Activities',
  `id_type_contact` int(11) NOT NULL COMMENT 'Medio de contacto - Catalogo',
  `satisfaction_score` int(11) DEFAULT 0 COMMENT 'Puntaje de satisfaccion',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activity_occupation_profession`
--

CREATE TABLE `activity_occupation_profession` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `id_brand` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adviser_change_history`
--

CREATE TABLE `adviser_change_history` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `id_contact` int(11) NOT NULL,
  `id_user_adviser` int(11) NOT NULL,
  `id_user_movement` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agencies`
--

CREATE TABLE `agencies` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `id_state` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anti_money_address`
--

CREATE TABLE `anti_money_address` (
  `id` int(11) NOT NULL,
  `street` mediumtext DEFAULT NULL,
  `number_exterior` varchar(50) DEFAULT NULL,
  `number_interior` varchar(50) DEFAULT NULL,
  `colony` varchar(100) DEFAULT NULL,
  `cp` varchar(20) DEFAULT NULL,
  `number_folio` varchar(150) DEFAULT NULL,
  `issuing_authority` varchar(100) DEFAULT NULL,
  `id_city` int(11) DEFAULT NULL,
  `id_state` int(11) DEFAULT NULL,
  `id_country` int(11) DEFAULT NULL,
  `id_identification` int(11) DEFAULT NULL,
  `id_country_birth` int(11) DEFAULT NULL,
  `id_country_nationality` int(11) DEFAULT NULL,
  `id_activity_occupation_profession` int(11) DEFAULT NULL,
  `id_activity_business_line_corporate_purpose` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `id_purchase_old` int(11) DEFAULT NULL,
  `brand_old` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anti_money_laundering`
--

CREATE TABLE `anti_money_laundering` (
  `id` int(11) NOT NULL,
  `id_opportunity` int(11) DEFAULT NULL,
  `id_purchase_order` int(11) NOT NULL,
  `has_official_id` tinyint(1) DEFAULT NULL,
  `has_proof_address` tinyint(1) DEFAULT NULL,
  `has_proof_address_company` tinyint(1) DEFAULT NULL,
  `has_curp` tinyint(1) DEFAULT NULL,
  `has_rfc` tinyint(1) DEFAULT NULL,
  `has_curp_rfc` tinyint(1) DEFAULT NULL,
  `has_constitutive_act` tinyint(1) DEFAULT NULL,
  `has_doc_constitutive_act` tinyint(1) DEFAULT NULL,
  `has_doc_sat` tinyint(1) DEFAULT NULL,
  `has_doc_legal_representative` tinyint(1) DEFAULT NULL,
  `has_doc_accredit_profession` tinyint(1) DEFAULT NULL,
  `clause_benefit` tinyint(1) DEFAULT NULL,
  `clause_use` tinyint(1) DEFAULT NULL,
  `clause_resources` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anti_money_laundering_beneficiary`
--

CREATE TABLE `anti_money_laundering_beneficiary` (
  `id` int(11) NOT NULL,
  `id_anti_money_laundering` int(11) NOT NULL,
  `names` text DEFAULT NULL,
  `first_last_name` text DEFAULT NULL,
  `second_last_name` text DEFAULT NULL,
  `rfc` varchar(13) DEFAULT NULL,
  `curp` varchar(18) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `id_country_birth` int(11) DEFAULT NULL,
  `nationality` varchar(40) DEFAULT NULL,
  `occupation` text DEFAULT NULL,
  `id_identification` int(11) DEFAULT NULL,
  `folio_identification` varchar(15) DEFAULT NULL,
  `street` text DEFAULT NULL,
  `ext_number` varchar(10) DEFAULT NULL,
  `int_number` varchar(10) DEFAULT NULL,
  `colony` text DEFAULT NULL,
  `cp` varchar(10) DEFAULT NULL,
  `id_city` int(11) DEFAULT NULL,
  `id_state` int(11) DEFAULT NULL,
  `id_country` int(11) DEFAULT NULL,
  `has_doc_official_identification` tinyint(1) DEFAULT NULL,
  `has_doc_sat` tinyint(1) DEFAULT NULL,
  `has_doc_curp` tinyint(1) DEFAULT NULL,
  `has_doc_proof_address` tinyint(1) DEFAULT NULL,
  `has_doc_profession` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anti_money_laundering_moral`
--

CREATE TABLE `anti_money_laundering_moral` (
  `id` int(11) NOT NULL,
  `id_opportunity` int(11) NOT NULL,
  `nationality` varchar(20) DEFAULT NULL,
  `articles_incorporation` tinyint(1) NOT NULL,
  `sat` tinyint(1) NOT NULL,
  `proof_address_company` tinyint(1) NOT NULL,
  `legal_representative` tinyint(1) NOT NULL,
  `oficial_id` tinyint(1) NOT NULL,
  `curp_rfc` tinyint(1) NOT NULL,
  `proof_address` tinyint(1) NOT NULL,
  `constitutive_act` int(11) NOT NULL,
  `accredit_profession` int(11) NOT NULL,
  `clause_benefit` tinyint(1) NOT NULL,
  `clause_use` tinyint(1) NOT NULL,
  `clause_resources` tinyint(1) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `adviser_validate` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anti_money_laundering_moral_controller`
--

CREATE TABLE `anti_money_laundering_moral_controller` (
  `id` int(11) NOT NULL,
  `id_opportunity` int(11) NOT NULL,
  `first_last_name` varchar(50) NOT NULL,
  `second_last_name` varchar(50) NOT NULL,
  `names` varchar(50) NOT NULL,
  `rfc` varchar(13) NOT NULL,
  `curp` varchar(18) NOT NULL,
  `birth_date` date NOT NULL,
  `id_country_birth` int(11) NOT NULL,
  `nacionality` varchar(15) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `id_identification` int(11) NOT NULL,
  `no_folio` varchar(15) NOT NULL,
  `street` varchar(100) NOT NULL,
  `ext_number` varchar(10) NOT NULL,
  `int_number` varchar(10) NOT NULL,
  `colony` varchar(100) NOT NULL,
  `id_city` int(11) NOT NULL,
  `id_federal_entity` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `document_official_identification` int(11) NOT NULL,
  `document_sat` int(11) NOT NULL,
  `document_curp` int(11) NOT NULL,
  `document_proof_address` int(11) NOT NULL,
  `document_profession` int(11) NOT NULL,
  `adviser_validate` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anti_money_laundering_moral_references`
--

CREATE TABLE `anti_money_laundering_moral_references` (
  `id` int(11) NOT NULL,
  `id_opportunity` int(11) NOT NULL,
  `full_name` text NOT NULL,
  `cellphone` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `number_reference` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `type` varchar(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anti_money_laundering_references`
--

CREATE TABLE `anti_money_laundering_references` (
  `id` int(11) NOT NULL,
  `id_anti_money_laundering` int(11) NOT NULL,
  `full_name` text DEFAULT NULL,
  `cellphone` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `number_reference` int(11) DEFAULT NULL COMMENT '1 - Referencia uno\\r\\n2 - Referencia dos',
  `type` varchar(45) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anti_money_moral_address`
--

CREATE TABLE `anti_money_moral_address` (
  `id` int(11) NOT NULL,
  `id_client` int(11) DEFAULT NULL,
  `id_anti_money_address` int(11) DEFAULT NULL,
  `id_activity_business_line_corporate_purpose` int(11) DEFAULT NULL,
  `id_country_birth_nationality` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `approved_checklist`
--

CREATE TABLE `approved_checklist` (
  `id` int(11) NOT NULL,
  `id_signature` int(11) NOT NULL,
  `id_purchase_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `approved_checklist_answer`
--

CREATE TABLE `approved_checklist_answer` (
  `id` int(11) NOT NULL,
  `answer` tinyint(1) NOT NULL,
  `id_question` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `approved_checklist_question`
--

CREATE TABLE `approved_checklist_question` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `id_brand` int(11) DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `approved_checklist_questions_answers`
--

CREATE TABLE `approved_checklist_questions_answers` (
  `id` int(11) NOT NULL,
  `id_approved_checklist` int(11) NOT NULL,
  `id_approved_checklist_question` int(11) DEFAULT NULL,
  `id_approved_checklist_answer` int(11) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apps_sygo`
--

CREATE TABLE `apps_sygo` (
  `id` int(11) NOT NULL,
  `l_vin` varchar(50) NOT NULL,
  `l_app` varchar(10) NOT NULL,
  `l_log` varchar(10) NOT NULL,
  `l_servicio` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas_tracking_preowned`
--

CREATE TABLE `areas_tracking_preowned` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `audit_log`
--

CREATE TABLE `audit_log` (
  `id` int(11) NOT NULL,
  `action_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `action_type` varchar(50) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `affected_rows` int(11) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `audit_log_review`
--

CREATE TABLE `audit_log_review` (
  `id` int(11) NOT NULL,
  `id_purchase_order` int(11) DEFAULT NULL,
  `id_type_audit_phase` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `current` tinyint(1) DEFAULT NULL,
  `date_received` timestamp NULL DEFAULT NULL COMMENT 'Fecha de recepcion para revisar',
  `date_request` timestamp NULL DEFAULT NULL COMMENT 'Fecha de solictud de cambios',
  `date_response` timestamp NULL DEFAULT NULL COMMENT 'Fecha de correcion de cambios',
  `date_signature` timestamp NULL DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `audit_review_checklist`
--

CREATE TABLE `audit_review_checklist` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `id_repository_folder` int(11) DEFAULT NULL,
  `is_moral` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `audit_review_sections`
--

CREATE TABLE `audit_review_sections` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `audit_review_section_checklist_type_brand`
--

CREATE TABLE `audit_review_section_checklist_type_brand` (
  `id` int(11) NOT NULL,
  `id_type_audit_phase` int(11) DEFAULT NULL,
  `id_audit_review_section` int(11) NOT NULL,
  `id_audit_review_checklist` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `audit_tracking_checklist`
--

CREATE TABLE `audit_tracking_checklist` (
  `id` int(11) NOT NULL,
  `id_audit_review_checklist` int(11) NOT NULL,
  `id_audit_log_review` int(11) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_refresh_tokens`
--

CREATE TABLE `auth_refresh_tokens` (
  `id` int(11) NOT NULL,
  `refresh_token` mediumtext DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autometrica_catalog`
--

CREATE TABLE `autometrica_catalog` (
  `id` int(11) NOT NULL,
  `autometrica_id` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `sub_brand` varchar(150) NOT NULL,
  `version` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autometrica_mapping`
--

CREATE TABLE `autometrica_mapping` (
  `id` int(11) NOT NULL,
  `id_inventory` int(11) NOT NULL,
  `id_autometrica_catalog` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autometrica_prices_cache`
--

CREATE TABLE `autometrica_prices_cache` (
  `id` int(11) NOT NULL,
  `id_inventory` int(11) NOT NULL,
  `kilometraje` int(11) NOT NULL,
  `sale` decimal(12,2) NOT NULL,
  `purchase` decimal(12,2) NOT NULL,
  `km_group` varchar(5) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `back_orders`
--

CREATE TABLE `back_orders` (
  `id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `date_receipt` datetime NOT NULL,
  `number_receipt` varchar(45) DEFAULT NULL,
  `reserved_date` datetime DEFAULT NULL,
  `comments` varchar(45) DEFAULT NULL,
  `id_model_color_opt_one` int(11) DEFAULT NULL,
  `id_model_color_opt_two` int(11) DEFAULT NULL,
  `id_adviser_user` int(11) NOT NULL,
  `id_opportunity` int(11) NOT NULL,
  `id_status_inventory` int(11) NOT NULL,
  `id_brand_agency` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `back_orders_bk`
--

CREATE TABLE `back_orders_bk` (
  `id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `date_receipt` datetime NOT NULL,
  `number_receipt` varchar(45) DEFAULT NULL,
  `reserved_date` datetime DEFAULT NULL,
  `comments` varchar(45) DEFAULT NULL,
  `id_model_color_opt_one` int(11) DEFAULT NULL,
  `id_model_color_opt_two` int(11) DEFAULT NULL,
  `id_adviser_user` int(11) NOT NULL,
  `id_opportunity` int(11) NOT NULL,
  `id_status_inventory` int(11) NOT NULL,
  `id_brand_agency` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `back_order_preowned`
--

CREATE TABLE `back_order_preowned` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `year_one` int(11) DEFAULT NULL,
  `year_two` int(11) DEFAULT NULL,
  `model_one` mediumtext DEFAULT NULL,
  `model_two` mediumtext DEFAULT NULL,
  `id_brand_external_one` int(11) DEFAULT NULL,
  `version_one` mediumtext DEFAULT NULL,
  `color_one` mediumtext DEFAULT NULL,
  `id_brand_external_two` int(11) DEFAULT NULL,
  `version_two` mediumtext DEFAULT NULL,
  `color_two` mediumtext DEFAULT NULL,
  `date_receipt` date DEFAULT NULL,
  `number_receipt` mediumtext DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `id_opportunity` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `deletedAt` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `base_crv`
--

CREATE TABLE `base_crv` (
  `id_contacto` int(11) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `asesor` varchar(50) DEFAULT NULL,
  `vin` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `anio` varchar(10) DEFAULT NULL,
  `nvo_dmo_semi` varchar(10) DEFAULT NULL,
  `fecha_factura` date NOT NULL,
  `credito_contado` varchar(20) DEFAULT NULL,
  `financiera` varchar(20) DEFAULT NULL,
  `tipo_seguro` varchar(20) DEFAULT NULL,
  `aseguradora` varchar(20) DEFAULT NULL,
  `cliente` varchar(200) DEFAULT NULL,
  `celular` varchar(40) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `behavior_facebook`
--

CREATE TABLE `behavior_facebook` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `band` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `billing_address`
--

CREATE TABLE `billing_address` (
  `id` int(11) NOT NULL,
  `street_number` mediumtext NOT NULL,
  `colony_fractionation` mediumtext DEFAULT NULL,
  `municipality` varchar(100) DEFAULT NULL,
  `cp` varchar(20) NOT NULL,
  `id_city` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `id_purchase_old` int(11) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lng` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `brand_old` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `rfc` varchar(15) DEFAULT NULL,
  `url_politic_privacy` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands_agencies`
--

CREATE TABLE `brands_agencies` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` char(10) DEFAULT NULL,
  `description` mediumtext NOT NULL,
  `cellphone` varchar(25) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `neighborhood` varchar(150) DEFAULT NULL,
  `street` varchar(150) DEFAULT NULL,
  `landmark` varchar(50) DEFAULT NULL,
  `external_number` int(11) DEFAULT NULL,
  `code_postal` varchar(15) DEFAULT NULL,
  `public_accountant` varchar(100) DEFAULT NULL,
  `position` varchar(60) DEFAULT NULL,
  `schedules` mediumtext DEFAULT NULL,
  `other_cellphone` mediumtext DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `id_brand` int(11) DEFAULT NULL,
  `id_agencie` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands_categories_templates`
--

CREATE TABLE `brands_categories_templates` (
  `id` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `id_category_template` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands_external`
--

CREATE TABLE `brands_external` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `breakdown_operations`
--

CREATE TABLE `breakdown_operations` (
  `id` int(11) NOT NULL,
  `total_additional_expenses` double(10,2) NOT NULL,
  `repurchase_used` double(10,2) NOT NULL,
  `total_down_payment` double(10,2) NOT NULL,
  `balance_pay_bank` double(10,2) NOT NULL,
  `total_operation` double(10,2) NOT NULL,
  `car_price` double(10,2) DEFAULT NULL,
  `iva` double(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `id_purchase_old` int(11) DEFAULT NULL,
  `brand_old` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `car_acquisition`
--

CREATE TABLE `car_acquisition` (
  `id` int(11) NOT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `version` varchar(100) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `purchase_no` varchar(50) DEFAULT NULL,
  `serie_no` varchar(50) DEFAULT NULL,
  `id_color_exterior` int(11) DEFAULT NULL,
  `id_type_take` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `id_purchase_old` int(11) DEFAULT NULL,
  `brand_old` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `car_categories`
--

CREATE TABLE `car_categories` (
  `id` int(11) NOT NULL,
  `name` mediumtext DEFAULT NULL,
  `id_category_s` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `car_data`
--

CREATE TABLE `car_data` (
  `id` int(11) NOT NULL,
  `car_name` varchar(250) DEFAULT NULL,
  `bodywork` varchar(100) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `repuve` varchar(100) DEFAULT NULL,
  `engine_number` varchar(100) DEFAULT NULL,
  `keys_code` varchar(100) DEFAULT NULL,
  `radio_code` varchar(100) DEFAULT NULL,
  `number_plates` varchar(45) DEFAULT NULL,
  `km_miles` varchar(45) DEFAULT NULL,
  `id_inventory_reserved` int(11) DEFAULT NULL,
  `has_warranty` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `id_purchase_old` int(11) DEFAULT NULL,
  `brand_old` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `car_takes`
--

CREATE TABLE `car_takes` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `id_brand_agency` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp(),
  `deletedAt` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories_templates`
--

CREATE TABLE `categories_templates` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_template_variables`
--

CREATE TABLE `category_template_variables` (
  `id` int(11) NOT NULL,
  `id_category_template` int(11) NOT NULL,
  `id_variable` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cc_emails`
--

CREATE TABLE `cc_emails` (
  `id` int(11) NOT NULL,
  `email` mediumtext DEFAULT NULL,
  `id_type_sent_email` int(11) DEFAULT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities_states`
--

CREATE TABLE `cities_states` (
  `id` int(11) NOT NULL,
  `id_city` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `civil_status`
--

CREATE TABLE `civil_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `classifications`
--

CREATE TABLE `classifications` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `relationship` varchar(50) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `second_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `mothers_last_name` varchar(100) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `homoclave` varchar(50) DEFAULT NULL,
  `curp` varchar(50) DEFAULT NULL,
  `rfc` varchar(50) DEFAULT NULL,
  `home_phone` varchar(50) DEFAULT NULL,
  `office_phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `contact_full_name` varchar(255) DEFAULT NULL,
  `is_moral_client` tinyint(1) DEFAULT NULL,
  `id_gender` int(11) NOT NULL,
  `id_profession` int(11) NOT NULL,
  `id_civil_status` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `id_purchase_old` int(11) DEFAULT NULL,
  `brand_old` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colors_interior`
--

CREATE TABLE `colors_interior` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `short_name` varchar(3) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commissionable_item`
--

CREATE TABLE `commissionable_item` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `version` text DEFAULT NULL,
  `scheme_type` enum('fixed','percent') NOT NULL,
  `fixed_amount` decimal(10,2) DEFAULT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date DEFAULT NULL,
  `is_catalog` tinyint(1) NOT NULL DEFAULT 0,
  `id_commissionable_item_type` int(11) NOT NULL,
  `id_type_schema` int(11) NOT NULL DEFAULT 2,
  `id_brand` int(11) DEFAULT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `is_partial` tinyint(1) DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commissionable_item_tiers`
--

CREATE TABLE `commissionable_item_tiers` (
  `id` int(11) NOT NULL,
  `min_units` decimal(5,2) NOT NULL,
  `max_units` decimal(5,2) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  `term_months` int(11) DEFAULT NULL,
  `id_commissionable_item` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commissionable_item_type`
--

CREATE TABLE `commissionable_item_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commission_credit_aperture`
--

CREATE TABLE `commission_credit_aperture` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `calculated_amount` decimal(10,2) DEFAULT NULL,
  `id_purchase_order` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commission_mystery_shopper`
--

CREATE TABLE `commission_mystery_shopper` (
  `id` int(11) NOT NULL,
  `period` varchar(7) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_model_version_year` int(11) DEFAULT NULL,
  `score` decimal(5,2) NOT NULL,
  `id_unit_mystery_shopper` int(11) NOT NULL,
  `id_commission_payment_request` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commission_payment_purchase_order`
--

CREATE TABLE `commission_payment_purchase_order` (
  `id` int(11) NOT NULL,
  `id_purchase_order` int(11) NOT NULL,
  `id_commission_payment_request` int(11) NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commission_payment_request`
--

CREATE TABLE `commission_payment_request` (
  `id` int(11) NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `id_status_commission` int(11) NOT NULL,
  `id_type_payment_commission` int(11) NOT NULL,
  `id_user_request` int(11) NOT NULL,
  `gasoline_voucher_amount` decimal(12,2) DEFAULT 0.00,
  `grocery_voucher_amount` decimal(12,2) DEFAULT 0.00,
  `is_partial` tinyint(1) DEFAULT 0,
  `period` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commission_payment_request_files`
--

CREATE TABLE `commission_payment_request_files` (
  `id` int(11) NOT NULL,
  `url` text NOT NULL,
  `id_commission_payment_request` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commission_payment_request_item`
--

CREATE TABLE `commission_payment_request_item` (
  `id` int(11) NOT NULL,
  `calculated_amount` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `notes` text DEFAULT NULL,
  `id_commission_request_purchase_order` int(11) NOT NULL,
  `id_commission_sale_addon` int(11) DEFAULT NULL,
  `id_commission_sale_scheme_applied` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commission_payment_review`
--

CREATE TABLE `commission_payment_review` (
  `id` int(11) NOT NULL,
  `review_status` tinyint(1) NOT NULL DEFAULT 1,
  `review_notes` text DEFAULT NULL,
  `reviewed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_commission_payment_request` int(11) NOT NULL,
  `id_commission_review_signatures` int(11) NOT NULL,
  `id_user_review` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commission_payment_user_request_item`
--

CREATE TABLE `commission_payment_user_request_item` (
  `id` int(11) NOT NULL,
  `calculated_amount` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `client` varchar(255) DEFAULT NULL,
  `vehicle` varchar(125) DEFAULT NULL,
  `vin` varchar(50) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `id_commission_payment_request` int(11) NOT NULL,
  `id_commissionable_item` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commission_review_signatures`
--

CREATE TABLE `commission_review_signatures` (
  `id` int(11) NOT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `id_role` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commission_sale_addon`
--

CREATE TABLE `commission_sale_addon` (
  `id` int(11) NOT NULL,
  `base_amount` decimal(10,2) DEFAULT NULL,
  `calculated_amount` decimal(10,2) NOT NULL,
  `id_purchase_order` int(11) NOT NULL,
  `id_commissionable_item` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commission_sale_scheme_applied`
--

CREATE TABLE `commission_sale_scheme_applied` (
  `id` int(11) NOT NULL,
  `calculated_amount_unit` decimal(10,2) NOT NULL,
  `calculated_amount_volume` decimal(10,2) DEFAULT NULL,
  `id_purchase_order` int(11) NOT NULL,
  `id_commission_scheme` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commission_scheme`
--

CREATE TABLE `commission_scheme` (
  `id` int(11) NOT NULL,
  `regular_amount` decimal(10,2) DEFAULT NULL,
  `corporate_amount` decimal(10,2) DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date DEFAULT NULL,
  `id_model_version_year` int(11) NOT NULL,
  `id_type_schema` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commission_tiers`
--

CREATE TABLE `commission_tiers` (
  `id` int(11) NOT NULL,
  `min_units` int(11) NOT NULL,
  `max_units` int(11) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `id_commission_scheme` int(11) NOT NULL,
  `id_type_commission` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `constitutive_act`
--

CREATE TABLE `constitutive_act` (
  `id` int(11) NOT NULL,
  `public_writing_number` varchar(50) DEFAULT NULL,
  `name_notary` varchar(200) DEFAULT NULL,
  `number_notary` varchar(100) DEFAULT NULL,
  `number_trade` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `date_trade` date DEFAULT NULL,
  `account_client` varchar(100) DEFAULT NULL,
  `account_bank` varchar(50) DEFAULT NULL,
  `id_state` int(11) DEFAULT NULL,
  `id_payment_way` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `id_purchase_old` int(11) DEFAULT NULL,
  `brand_old` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto_pros_cal`
--

CREATE TABLE `contacto_pros_cal` (
  `COL1` varchar(14) NOT NULL,
  `COL 2` varchar(10) DEFAULT NULL,
  `COL 3` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `email_optional` varchar(45) DEFAULT NULL,
  `notes` mediumtext DEFAULT NULL,
  `date_birth` date DEFAULT NULL,
  `cellphone` varchar(200) DEFAULT NULL,
  `home_phone` varchar(120) DEFAULT NULL,
  `folder_name` varchar(50) DEFAULT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `id_event` int(11) DEFAULT NULL,
  `id_gender` int(11) DEFAULT NULL,
  `id_status_contact` int(11) NOT NULL,
  `id_source` int(11) NOT NULL,
  `id_advertising` int(11) NOT NULL,
  `id_contact_favorite` int(11) DEFAULT NULL,
  `id_user_adviser` int(11) DEFAULT NULL,
  `id_brand_agency` int(11) NOT NULL,
  `id_user_adviser_old` int(11) DEFAULT NULL,
  `id_contact_old` int(11) DEFAULT NULL,
  `folder_name_old` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `brand_old` varchar(45) DEFAULT NULL,
  `id_contact_favorite_two` int(11) DEFAULT NULL,
  `new_lead` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts_day`
--

CREATE TABLE `contacts_day` (
  `id` int(11) NOT NULL,
  `date_consignment` date NOT NULL,
  `time_consignment` time NOT NULL,
  `time_deallocation` time DEFAULT '00:00:00',
  `is_last` tinyint(1) DEFAULT 0,
  `id_type_hostess` int(11) NOT NULL,
  `id_user_adviser` int(11) NOT NULL,
  `id_user_hostess` int(11) NOT NULL,
  `id_contact` int(11) NOT NULL,
  `id_user_deleted` int(11) DEFAULT NULL,
  `id_old` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `brand_old` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts_day_sales_point`
--

CREATE TABLE `contacts_day_sales_point` (
  `id` int(11) NOT NULL,
  `date_consignment` date NOT NULL,
  `time_consignment` time NOT NULL,
  `is_last` tinyint(1) DEFAULT 0,
  `id_type_hostess` int(11) NOT NULL,
  `id_user_adviser` int(11) NOT NULL,
  `id_user_hostess` int(11) NOT NULL,
  `id_contact` int(11) NOT NULL,
  `id_user_deleted` int(11) DEFAULT NULL,
  `id_sales_point` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credit_request`
--

CREATE TABLE `credit_request` (
  `id` int(11) NOT NULL,
  `folio` varchar(50) DEFAULT NULL,
  `no_contract` varchar(50) DEFAULT NULL,
  `client_full_name` text NOT NULL,
  `hitch` double DEFAULT NULL,
  `term` int(3) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `accessory` tinyint(1) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `is_current` tinyint(1) NOT NULL DEFAULT 1,
  `id_tracking_credit` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_financial` int(11) NOT NULL,
  `id_status_credit_request` int(11) NOT NULL,
  `id_type_credit_request` int(11) NOT NULL,
  `id_warranty` int(11) DEFAULT NULL,
  `id_insurance` int(11) DEFAULT NULL,
  `id_type_insurance` int(11) DEFAULT NULL,
  `id_reason_rejection` int(11) DEFAULT NULL,
  `id_reason_approval` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credit_status`
--

CREATE TABLE `credit_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cronjobs`
--

CREATE TABLE `cronjobs` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `disable` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cronjobs_logs`
--

CREATE TABLE `cronjobs_logs` (
  `id` int(11) NOT NULL,
  `cronjob_name` varchar(60) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `last_executed_at` text DEFAULT NULL,
  `cronjob_status` varchar(20) NOT NULL,
  `id_cronjob` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_insurance`
--

CREATE TABLE `data_insurance` (
  `id` int(11) NOT NULL,
  `coin_type` varchar(50) DEFAULT NULL,
  `iva` int(11) DEFAULT NULL,
  `invoice_quantity_letter` varchar(150) DEFAULT NULL,
  `no_policy` varchar(150) DEFAULT NULL,
  `policy_start_date` date DEFAULT NULL,
  `policy_pay_due_date` date DEFAULT NULL,
  `net_premium` double DEFAULT NULL,
  `no_contract` varchar(45) DEFAULT NULL,
  `financed_multi_year` tinyint(1) DEFAULT NULL,
  `id_purchase_old` int(11) DEFAULT NULL,
  `id_types_insurance` int(11) DEFAULT NULL,
  `id_term_ext_warranty` int(11) DEFAULT NULL,
  `id_type_vehicle` int(11) DEFAULT NULL,
  `id_type_extension` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `brand_old` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `days`
--

CREATE TABLE `days` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `days_off`
--

CREATE TABLE `days_off` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deadline_payment_order`
--

CREATE TABLE `deadline_payment_order` (
  `id` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `id_type_others_order` int(11) NOT NULL,
  `id_type_deadline_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_logs`
--

CREATE TABLE `delivery_logs` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_purchase_order` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `details_additional_expenses`
--

CREATE TABLE `details_additional_expenses` (
  `id` int(11) NOT NULL,
  `national_auto_insurance` double(10,2) DEFAULT NULL,
  `civil_liability_insurance_usa` double(10,2) DEFAULT NULL,
  `life_insurance` double(10,2) DEFAULT NULL,
  `opening_commission` double(10,2) DEFAULT NULL,
  `plate_tenure` double(10,2) DEFAULT NULL,
  `procedures` double(10,2) DEFAULT NULL,
  `interests` double(10,2) DEFAULT NULL,
  `bodywork` double(10,2) DEFAULT NULL,
  `accessories_append_order` double(10,2) DEFAULT NULL,
  `unemployment_insurance` double(10,2) DEFAULT NULL,
  `warranty_certificate` double(10,2) DEFAULT NULL,
  `observations` mediumtext DEFAULT NULL,
  `iva_breakdown` double(10,2) DEFAULT NULL,
  `exchange_rate` double(10,2) DEFAULT NULL,
  `national_car_insurance_net_premium` double(10,2) DEFAULT NULL,
  `card_usage_commission` double(10,2) DEFAULT NULL,
  `opening_commission_calculation` double(10,2) DEFAULT NULL,
  `rate_subsidy` double(10,2) DEFAULT NULL,
  `id_deadline_payment_order` int(11) DEFAULT NULL,
  `coverage_price` double(10,2) DEFAULT NULL,
  `id_type_gap` int(11) DEFAULT NULL,
  `price_gap` double(10,2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `id_purchase_old` int(11) DEFAULT NULL,
  `brand_old` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `details_payment`
--

CREATE TABLE `details_payment` (
  `id` int(11) NOT NULL,
  `folio` varchar(100) NOT NULL,
  `quantity` double(10,2) NOT NULL,
  `date_payment` date NOT NULL,
  `id_type_payment_order` int(11) NOT NULL,
  `id_purchase_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `brand_old` int(11) DEFAULT NULL,
  `id_old` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `details_tracking_preowned`
--

CREATE TABLE `details_tracking_preowned` (
  `id` int(11) NOT NULL,
  `value` text DEFAULT NULL,
  `id_tracking_preowned` int(11) DEFAULT NULL,
  `id_option_tracking_preowned` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detail_inventory_preowned`
--

CREATE TABLE `detail_inventory_preowned` (
  `id` int(11) NOT NULL,
  `has_promotion` tinyint(1) DEFAULT NULL,
  `promotion_description` mediumtext DEFAULT NULL,
  `promotion_price` double(10,2) DEFAULT NULL,
  `reconditioning` double(10,2) DEFAULT NULL,
  `blue_book_price` double(10,2) DEFAULT NULL,
  `autometric_guide` double(10,2) DEFAULT NULL,
  `subtype` mediumtext DEFAULT NULL,
  `direction` mediumtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `vestments` mediumtext DEFAULT NULL,
  `fuel` mediumtext DEFAULT NULL,
  `traction` mediumtext DEFAULT NULL,
  `glasses` int(11) DEFAULT NULL,
  `current_warranty` mediumtext DEFAULT NULL,
  `suggested_warranty` mediumtext DEFAULT NULL,
  `term_months` int(11) DEFAULT NULL,
  `warranty_price` double(10,2) DEFAULT NULL,
  `car_price` double(10,2) DEFAULT NULL,
  `monthly_payment` double(10,2) DEFAULT NULL,
  `wheels` mediumtext DEFAULT NULL,
  `air_bags` mediumtext DEFAULT NULL,
  `cameras` mediumtext DEFAULT NULL,
  `headlights` mediumtext DEFAULT NULL,
  `air_conditioning` mediumtext DEFAULT NULL,
  `audio` mediumtext DEFAULT NULL,
  `bluetooth` mediumtext DEFAULT NULL,
  `tools` mediumtext DEFAULT NULL,
  `ignition_system` mediumtext DEFAULT NULL,
  `conditioning_sheet` mediumtext DEFAULT NULL,
  `price_sale` double(10,2) DEFAULT NULL,
  `model` mediumtext DEFAULT NULL,
  `characteristics` mediumtext DEFAULT NULL,
  `motor` mediumtext DEFAULT NULL,
  `id_type_received_agency` int(11) DEFAULT NULL,
  `id_tower` int(11) DEFAULT NULL,
  `id_car_category` int(11) DEFAULT NULL,
  `id_inventory` int(11) DEFAULT NULL,
  `id_brand_external` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directory_files`
--

CREATE TABLE `directory_files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(45) NOT NULL,
  `id_directory_folder` int(11) DEFAULT NULL,
  `id_model_year` int(11) DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directory_files_agencies`
--

CREATE TABLE `directory_files_agencies` (
  `id` int(11) NOT NULL,
  `id_directory_file` int(11) NOT NULL,
  `path_file` mediumtext NOT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `id_intranet_folder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directory_folders`
--

CREATE TABLE `directory_folders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` mediumtext NOT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents_brand`
--

CREATE TABLE `documents_brand` (
  `id` int(11) NOT NULL,
  `id_type_document_config` int(11) DEFAULT NULL,
  `id_brand` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents_brand_agency`
--

CREATE TABLE `documents_brand_agency` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` mediumtext NOT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `id_type_document_config` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document_audit`
--

CREATE TABLE `document_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phase` int(1) DEFAULT NULL,
  `is_moral` tinyint(1) DEFAULT 0,
  `id_section_document_audit` int(11) NOT NULL,
  `id_repository_folder` int(11) DEFAULT NULL,
  `id_brand` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `driving_test`
--

CREATE TABLE `driving_test` (
  `id` int(11) NOT NULL,
  `id_inventory` int(11) NOT NULL,
  `id_contact_day` int(11) NOT NULL,
  `other_contact` varchar(100) DEFAULT NULL,
  `on_driving_test` tinyint(1) NOT NULL DEFAULT 1,
  `id_user_adviser` int(11) NOT NULL,
  `folio` varchar(50) DEFAULT NULL,
  `id_user_hostess` int(11) NOT NULL,
  `id_brand_agency` int(11) NOT NULL,
  `id_opportunity` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `driving_test_signatures`
--

CREATE TABLE `driving_test_signatures` (
  `id` int(11) NOT NULL,
  `url` mediumtext DEFAULT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eo_indicators`
--

CREATE TABLE `eo_indicators` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `reference` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eo_results_indicators`
--

CREATE TABLE `eo_results_indicators` (
  `id` int(11) NOT NULL,
  `id_eo_user_metric` int(11) NOT NULL,
  `id_eo_indicator` int(11) NOT NULL,
  `target` decimal(10,2) DEFAULT 0.00 COMMENT 'Objetivo (Obj_)',
  `result` decimal(10,2) DEFAULT 0.00 COMMENT 'Resultado',
  `weigh` decimal(5,2) DEFAULT 0.00 COMMENT 'Ponderacion',
  `score` decimal(5,2) DEFAULT 0.00 COMMENT 'Calificacion',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eo_user_metrics`
--

CREATE TABLE `eo_user_metrics` (
  `id` int(11) NOT NULL,
  `id_brand_agency` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `period` varchar(7) NOT NULL COMMENT 'MES AÑO',
  `final_score` decimal(5,2) DEFAULT 0.00,
  `percentage_payout` decimal(5,2) DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `id_brand` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `external_tokens`
--

CREATE TABLE `external_tokens` (
  `id` int(11) NOT NULL,
  `provider` varchar(50) DEFAULT NULL,
  `access_token` text NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `financials`
--

CREATE TABLE `financials` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `financing_house` tinyint(1) DEFAULT NULL,
  `has_opening_commission` tinyint(1) DEFAULT NULL,
  `id_brand` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `financing`
--

CREATE TABLE `financing` (
  `id` int(11) NOT NULL,
  `financed_annually` varchar(50) DEFAULT NULL,
  `financed_multi_year` tinyint(1) DEFAULT 0,
  `annual_counted` varchar(50) DEFAULT NULL,
  `multi_annual_counted` varchar(50) DEFAULT NULL,
  `financed_semi_annually` varchar(50) DEFAULT NULL,
  `counted_semi_annual` varchar(50) DEFAULT NULL,
  `id_financial` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `id_purchase_old` int(11) DEFAULT NULL,
  `brand_old` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forms`
--

CREATE TABLE `forms` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `release_grade` tinyint(1) DEFAULT 0,
  `confirmation_message` text DEFAULT NULL,
  `response_receipt` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 0,
  `id_user` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `activation_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forms_answers`
--

CREATE TABLE `forms_answers` (
  `id` int(11) NOT NULL,
  `id_question` int(11) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `id_choice` int(11) DEFAULT NULL,
  `id_form_response` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forms_choices`
--

CREATE TABLE `forms_choices` (
  `id` int(11) NOT NULL,
  `id_question` int(11) DEFAULT NULL,
  `choice` text DEFAULT NULL,
  `is_correct` tinyint(1) DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forms_permissions`
--

CREATE TABLE `forms_permissions` (
  `id` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forms_questions`
--

CREATE TABLE `forms_questions` (
  `id` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `question` text NOT NULL,
  `id_type` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forms_users_responses`
--

CREATE TABLE `forms_users_responses` (
  `id` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `score` decimal(10,2) DEFAULT 0.00,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genders`
--

CREATE TABLE `genders` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hostess`
--

CREATE TABLE `hostess` (
  `id` int(11) NOT NULL,
  `date_consignment` date NOT NULL,
  `time_consignment` time NOT NULL,
  `time_deallocation` time NOT NULL,
  `flag` int(11) NOT NULL DEFAULT 1,
  `id_type_hostess` int(11) NOT NULL,
  `id_user_adviser` int(11) NOT NULL,
  `id_user_hostess` int(11) NOT NULL,
  `id_contact` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hostess_checklist`
--

CREATE TABLE `hostess_checklist` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hostess_checklist_answers`
--

CREATE TABLE `hostess_checklist_answers` (
  `id` int(11) NOT NULL,
  `answer` tinyint(1) DEFAULT NULL,
  `url_photo` varchar(256) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `id_hostess_checklist_question` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hostess_checklist_questions`
--

CREATE TABLE `hostess_checklist_questions` (
  `id` int(11) NOT NULL,
  `question` mediumtext NOT NULL,
  `id_hostess_checklist_section` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hostess_checklist_questions_answers`
--

CREATE TABLE `hostess_checklist_questions_answers` (
  `id` int(11) NOT NULL,
  `id_hostess_checklist_answer` int(11) NOT NULL,
  `id_hostess_checklist` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hostess_checklist_questions_type_control`
--

CREATE TABLE `hostess_checklist_questions_type_control` (
  `id` int(11) NOT NULL,
  `id_hostess_checklist_type_control` int(11) NOT NULL,
  `id_hostess_checklist_questions` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hostess_checklist_type_control`
--

CREATE TABLE `hostess_checklist_type_control` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hostess_checklist_type_sections`
--

CREATE TABLE `hostess_checklist_type_sections` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `id_brand` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hostess_logs`
--

CREATE TABLE `hostess_logs` (
  `id` int(11) NOT NULL,
  `id_user_adviser` int(11) NOT NULL,
  `id_type_status_hostess` int(11) NOT NULL,
  `id_user_responsible` int(11) NOT NULL,
  `status_user_loaned` tinyint(1) DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hostess_notifications`
--

CREATE TABLE `hostess_notifications` (
  `id` int(11) NOT NULL,
  `title` mediumtext NOT NULL,
  `message` mediumtext DEFAULT NULL,
  `resource` varchar(100) DEFAULT NULL,
  `id_user_sender` int(11) DEFAULT NULL,
  `id_user_receiver` int(11) DEFAULT NULL,
  `id_type_status_hostess` int(11) DEFAULT NULL,
  `id_type_notification` int(11) NOT NULL,
  `id_module` int(11) NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hours_room`
--

CREATE TABLE `hours_room` (
  `id` int(11) NOT NULL,
  `timing` varchar(50) NOT NULL,
  `id_room` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identifications`
--

CREATE TABLE `identifications` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insurances`
--

CREATE TABLE `insurances` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insurance_policies`
--

CREATE TABLE `insurance_policies` (
  `id` int(11) NOT NULL,
  `contact_name` mediumtext DEFAULT NULL,
  `email` mediumtext DEFAULT NULL,
  `cellphone` mediumtext DEFAULT NULL,
  `vin` mediumtext DEFAULT NULL,
  `iva` int(11) DEFAULT NULL,
  `coin_type` varchar(50) DEFAULT NULL,
  `invoice_quantity_letter` varchar(150) DEFAULT NULL,
  `no_policy` varchar(150) DEFAULT NULL,
  `policy_start_date` date DEFAULT NULL,
  `policy_pay_due_date` date DEFAULT NULL,
  `no_contract` varchar(45) DEFAULT NULL,
  `net_premium` double DEFAULT NULL,
  `total_premium` double DEFAULT NULL,
  `comments` mediumtext DEFAULT NULL,
  `motor` mediumtext DEFAULT NULL,
  `insurance_name` mediumtext DEFAULT NULL,
  `city` mediumtext DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `car` mediumtext DEFAULT NULL,
  `financed_multi_year` tinyint(1) DEFAULT NULL,
  `responded` tinyint(1) DEFAULT NULL,
  `date_renewal` date DEFAULT NULL,
  `is_renewal` tinyint(1) DEFAULT NULL,
  `is_extemporaneous_renewal` tinyint(1) DEFAULT 0,
  `needs_information` tinyint(1) DEFAULT NULL,
  `has_car` tinyint(1) DEFAULT 1,
  `whatsapp` tinyint(1) DEFAULT 0,
  `id_parent` int(11) DEFAULT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `id_opportunity` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_contact` int(11) DEFAULT NULL,
  `id_type_purchase` int(11) DEFAULT NULL,
  `id_reason_rejection` int(11) DEFAULT NULL,
  `id_financial` int(11) DEFAULT NULL,
  `id_types_insurance` int(11) DEFAULT NULL,
  `id_term_ext_warranty` int(11) DEFAULT NULL,
  `id_type_vehicle` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `id_data_insurance` int(11) DEFAULT NULL,
  `is_excel` tinyint(1) DEFAULT 0,
  `is_form` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intranet_files`
--

CREATE TABLE `intranet_files` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `path` mediumtext DEFAULT NULL,
  `id_intranet_folder` int(11) DEFAULT NULL,
  `id_model_year` int(11) DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intranet_folders`
--

CREATE TABLE `intranet_folders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` mediumtext NOT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `path` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intranet_logs`
--

CREATE TABLE `intranet_logs` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `id_folder` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intranet_permissions`
--

CREATE TABLE `intranet_permissions` (
  `id` int(11) NOT NULL,
  `id_intranet_folder` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `can_create` tinyint(1) DEFAULT 0,
  `can_update` tinyint(1) DEFAULT 0,
  `can_delete` tinyint(1) DEFAULT 0,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Inventario_test_actual`
--

CREATE TABLE `Inventario_test_actual` (
  `vin_actual` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Inventario_test_intel`
--

CREATE TABLE `Inventario_test_intel` (
  `vin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventories`
--

CREATE TABLE `inventories` (
  `id` int(11) NOT NULL,
  `cd` varchar(60) NOT NULL,
  `number` varchar(60) DEFAULT NULL,
  `arrival` date DEFAULT NULL COMMENT 'fecha llegada de Intelisis',
  `year` varchar(60) NOT NULL,
  `car` varchar(100) NOT NULL,
  `vin` varchar(60) DEFAULT NULL,
  `type_motor` varchar(60) DEFAULT NULL,
  `days_inventory` int(11) DEFAULT NULL,
  `vco` int(11) DEFAULT NULL,
  `cylinders` int(11) DEFAULT NULL,
  `doors` int(11) DEFAULT NULL,
  `passenger` int(11) DEFAULT NULL,
  `tower` varchar(3) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `date_arrival` datetime DEFAULT current_timestamp(),
  `status_kms` varchar(100) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  `isSale` tinyint(1) DEFAULT 0,
  `plates` varchar(100) DEFAULT NULL,
  `on_driving_test` tinyint(1) DEFAULT 0,
  `id_type_inventory` int(11) NOT NULL,
  `id_status_inventory` int(11) NOT NULL,
  `id_model_version` int(11) DEFAULT NULL,
  `id_model_version_year` int(11) DEFAULT NULL,
  `id_location` int(11) DEFAULT NULL,
  `id_inventory_floor` int(11) DEFAULT NULL,
  `id_transmission` int(11) DEFAULT NULL,
  `id_color` int(11) DEFAULT NULL,
  `id_color_interior` int(11) DEFAULT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `id_inventory_s` int(11) DEFAULT NULL,
  `id_status_s` int(11) DEFAULT NULL,
  `is_web_published` tinyint(1) DEFAULT 0,
  `price_checkmark` double NOT NULL DEFAULT 9999999,
  `status_intelisis` tinyint(1) DEFAULT NULL,
  `reported_plant` tinyint(1) DEFAULT 0,
  `reported_plant_brand` tinyint(1) DEFAULT 0,
  `reported_plant_date` datetime DEFAULT NULL,
  `brand_old` int(11) DEFAULT NULL,
  `exist_sas_logistic` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0) No existe\r\n1) Existe',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventories_bk`
--

CREATE TABLE `inventories_bk` (
  `id` int(11) NOT NULL,
  `cd` varchar(60) NOT NULL,
  `number` varchar(60) DEFAULT NULL,
  `arrival` varchar(60) DEFAULT NULL,
  `year` varchar(60) NOT NULL,
  `car` varchar(60) NOT NULL,
  `vin` varchar(60) DEFAULT NULL,
  `type_motor` varchar(60) DEFAULT NULL,
  `days_inventory` int(11) DEFAULT NULL,
  `vco` int(11) DEFAULT NULL,
  `cylinders` int(11) DEFAULT NULL,
  `doors` int(11) DEFAULT NULL,
  `passenger` int(11) DEFAULT NULL,
  `tower` varchar(3) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `date_arrival` datetime DEFAULT current_timestamp(),
  `status_kms` varchar(100) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  `isSale` tinyint(1) DEFAULT 0,
  `plates` varchar(100) DEFAULT NULL,
  `id_type_inventory` int(11) NOT NULL,
  `id_status_inventory` int(11) NOT NULL,
  `id_model_version` int(11) DEFAULT NULL,
  `id_model_version_year` int(11) DEFAULT NULL,
  `id_location` int(11) DEFAULT NULL,
  `id_inventory_floor` int(11) DEFAULT NULL,
  `id_transmission` int(11) DEFAULT NULL,
  `id_color` int(11) DEFAULT NULL,
  `id_color_interior` int(11) DEFAULT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `reported_plant` tinyint(1) DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventories_checkmark_photos`
--

CREATE TABLE `inventories_checkmark_photos` (
  `id` int(11) NOT NULL,
  `path` mediumtext DEFAULT NULL,
  `id_inventory` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventories_deleted`
--

CREATE TABLE `inventories_deleted` (
  `id` int(11) NOT NULL,
  `cd` varchar(60) NOT NULL,
  `number` varchar(60) DEFAULT NULL,
  `arrival` varchar(60) DEFAULT NULL,
  `year` varchar(60) NOT NULL,
  `car` varchar(60) NOT NULL,
  `vin` varchar(60) DEFAULT NULL,
  `type_motor` varchar(60) DEFAULT NULL,
  `days_inventory` int(11) DEFAULT NULL,
  `vco` int(11) DEFAULT NULL,
  `cylinders` int(11) DEFAULT NULL,
  `doors` int(11) DEFAULT NULL,
  `passenger` int(11) DEFAULT NULL,
  `tower` varchar(3) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `date_arrival` datetime DEFAULT current_timestamp(),
  `status_kms` varchar(100) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  `isSale` tinyint(1) DEFAULT 0,
  `plates` varchar(100) DEFAULT NULL,
  `id_type_inventory` int(11) NOT NULL,
  `id_status_inventory` int(11) NOT NULL,
  `id_model_version` int(11) DEFAULT NULL,
  `id_model_version_year` int(11) DEFAULT NULL,
  `id_location` int(11) DEFAULT NULL,
  `id_inventory_floor` int(11) DEFAULT NULL,
  `id_transmission` int(11) DEFAULT NULL,
  `id_color` int(11) DEFAULT NULL,
  `id_color_interior` int(11) DEFAULT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `reported_plant` tinyint(1) DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventories_details_confirmed`
--

CREATE TABLE `inventories_details_confirmed` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `int_color` varchar(60) DEFAULT NULL,
  `ext_color` varchar(60) DEFAULT NULL,
  `shipping` varchar(80) DEFAULT NULL,
  `order_status` mediumtext DEFAULT NULL,
  `type` varchar(80) DEFAULT NULL,
  `id_inventory` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventories_floor`
--

CREATE TABLE `inventories_floor` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventories_mvy`
--

CREATE TABLE `inventories_mvy` (
  `id` int(11) NOT NULL,
  `cd` varchar(60) NOT NULL,
  `number` varchar(60) DEFAULT NULL,
  `arrival` date DEFAULT NULL COMMENT 'fecha llegada de Intelisis',
  `year` varchar(60) NOT NULL,
  `car` varchar(60) NOT NULL,
  `vin` varchar(60) DEFAULT NULL,
  `type_motor` varchar(60) DEFAULT NULL,
  `days_inventory` int(11) DEFAULT NULL,
  `vco` int(11) DEFAULT NULL,
  `cylinders` int(11) DEFAULT NULL,
  `doors` int(11) DEFAULT NULL,
  `passenger` int(11) DEFAULT NULL,
  `tower` varchar(3) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `date_arrival` datetime DEFAULT current_timestamp(),
  `status_kms` varchar(100) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  `isSale` tinyint(1) DEFAULT 0,
  `plates` varchar(100) DEFAULT NULL,
  `id_type_inventory` int(11) NOT NULL,
  `id_status_inventory` int(11) NOT NULL,
  `id_model_version` int(11) DEFAULT NULL,
  `id_model_version_year` int(11) DEFAULT NULL,
  `id_location` int(11) DEFAULT NULL,
  `id_inventory_floor` int(11) DEFAULT NULL,
  `id_transmission` int(11) DEFAULT NULL,
  `id_color` int(11) DEFAULT NULL,
  `id_color_interior` int(11) DEFAULT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `reported_plant` tinyint(1) DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `status_intelisis` tinyint(1) DEFAULT NULL,
  `brand_old` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventories_reserved`
--

CREATE TABLE `inventories_reserved` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` double(20,2) DEFAULT NULL,
  `receipt` varchar(45) DEFAULT NULL,
  `id_inventory` int(11) NOT NULL,
  `id_opportunity` int(11) NOT NULL,
  `id_user_adviser` int(11) DEFAULT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `id_user_request` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `brand_old` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventories_reserved_deleted`
--

CREATE TABLE `inventories_reserved_deleted` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `receipt` varchar(45) DEFAULT NULL,
  `id_inventory` int(11) NOT NULL,
  `id_opportunity` int(11) NOT NULL,
  `id_user_adviser` int(11) DEFAULT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory_accessories`
--

CREATE TABLE `inventory_accessories` (
  `id` int(11) NOT NULL,
  `id_inventory` int(11) NOT NULL,
  `id_accessory` int(11) NOT NULL,
  `other` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory_descriptions`
--

CREATE TABLE `inventory_descriptions` (
  `id` int(11) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `id_inventory` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory_detail`
--

CREATE TABLE `inventory_detail` (
  `id` int(11) NOT NULL,
  `path_contract` text DEFAULT NULL,
  `id_inventory` int(11) NOT NULL,
  `contract_date_sale` date DEFAULT NULL,
  `contract_date_arrival` date DEFAULT NULL,
  `os` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory_floor_logs`
--

CREATE TABLE `inventory_floor_logs` (
  `id` int(11) NOT NULL,
  `vin` mediumtext NOT NULL,
  `last_data` mediumtext DEFAULT NULL,
  `update_data` mediumtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory_general_info`
--

CREATE TABLE `inventory_general_info` (
  `id` int(11) NOT NULL,
  `id_inventory` int(11) NOT NULL,
  `id_status_reception` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `link_yt` varchar(150) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory_mechanical_info`
--

CREATE TABLE `inventory_mechanical_info` (
  `id` int(11) NOT NULL,
  `id_inventory` int(11) NOT NULL,
  `id_traction` int(11) DEFAULT NULL,
  `id_transmission` int(11) DEFAULT NULL,
  `id_steering` int(11) DEFAULT NULL,
  `id_fuel` int(11) DEFAULT NULL,
  `engine` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory_photos`
--

CREATE TABLE `inventory_photos` (
  `id` int(11) NOT NULL,
  `url` mediumtext DEFAULT NULL,
  `id_photo_type` int(11) DEFAULT NULL,
  `id_inventory` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `id_photo_s` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory_prices`
--

CREATE TABLE `inventory_prices` (
  `id` int(11) NOT NULL,
  `id_inventory` int(11) NOT NULL,
  `reconditioning_cost` decimal(12,2) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `monthly_payment` decimal(12,2) DEFAULT NULL,
  `blue_book_price` decimal(12,2) DEFAULT NULL,
  `automotive_guide_price` decimal(12,2) DEFAULT NULL,
  `has_promotion` tinyint(4) DEFAULT 0,
  `promotion_description` text DEFAULT NULL,
  `promotion_price` decimal(12,2) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory_seminuevos_info`
--

CREATE TABLE `inventory_seminuevos_info` (
  `id` int(11) NOT NULL,
  `id_inventory` int(11) NOT NULL,
  `id_reference_color` int(11) NOT NULL,
  `text_color` varchar(50) DEFAULT NULL,
  `id_reference_brand` int(11) NOT NULL,
  `text_brand` varchar(50) DEFAULT NULL,
  `id_reference_model` int(11) NOT NULL,
  `text_model` varchar(50) DEFAULT NULL,
  `id_status_s` int(11) DEFAULT 3,
  `status` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory_type_history`
--

CREATE TABLE `inventory_type_history` (
  `id` int(11) NOT NULL,
  `id_inventory` int(11) NOT NULL COMMENT 'Referencia al inventario',
  `id_type_inventory_before` int(11) NOT NULL COMMENT 'Tipo de inventario antes del cambio',
  `id_type_inventory_after` int(11) NOT NULL COMMENT 'Tipo de inventario después del cambio',
  `id_changed_by` int(11) DEFAULT NULL COMMENT 'Usuario que realizó el cambio',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory_warranties`
--

CREATE TABLE `inventory_warranties` (
  `id` int(11) NOT NULL,
  `id_inventory` int(11) NOT NULL,
  `current_warranty` text DEFAULT NULL,
  `suggested_warranty` text DEFAULT NULL,
  `term_months` smallint(6) DEFAULT NULL,
  `warranty_cost` decimal(12,2) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `isan`
--

CREATE TABLE `isan` (
  `id` int(11) NOT NULL,
  `lower_limit` double NOT NULL,
  `upper_limit` double NOT NULL,
  `fixed_fee` double DEFAULT NULL,
  `marginal_rate` int(11) NOT NULL,
  `id_type_isan` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leads_api_sirena`
--

CREATE TABLE `leads_api_sirena` (
  `id` int(11) NOT NULL,
  `id_api` varchar(50) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `model` varchar(255) NOT NULL,
  `year` varchar(20) NOT NULL,
  `hus_name` varchar(255) DEFAULT NULL,
  `hus_email` varchar(50) NOT NULL,
  `advertising` varchar(30) NOT NULL,
  `comment` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `idBrand` int(11) NOT NULL,
  `id_brand_agency` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `license_plates_cost`
--

CREATE TABLE `license_plates_cost` (
  `id` int(11) NOT NULL,
  `cost` double(10,2) NOT NULL,
  `id_agency` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_brand_agency` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_activity`
--

CREATE TABLE `log_activity` (
  `id` int(11) NOT NULL,
  `id_last_activity` int(11) DEFAULT NULL,
  `id_next_activity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `log_activity_v`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `log_activity_v` (
`idBrandAgency` int(11)
,`id` int(11)
,`idOpportunity` int(11)
,`idContact` int(11)
,`idLastActivity` int(11)
,`idNextActivity` int(11)
,`idCouchingActivity` int(11)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_credit_request`
--

CREATE TABLE `log_credit_request` (
  `id` int(11) NOT NULL,
  `id_credit_request` int(11) NOT NULL,
  `id_financial` int(11) NOT NULL,
  `id_status_credit_request` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_inventory_intelisis`
--

CREATE TABLE `log_inventory_intelisis` (
  `id` int(11) NOT NULL,
  `data_current` mediumtext DEFAULT NULL,
  `data_update` mediumtext DEFAULT NULL,
  `id_inventory` int(11) NOT NULL,
  `id_type_operation_intelisis` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_review_audit`
--

CREATE TABLE `log_review_audit` (
  `id` int(11) NOT NULL,
  `id_purchase_order` int(11) DEFAULT NULL,
  `id_opportunity` int(11) DEFAULT NULL,
  `id_type_process_log` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `current` tinyint(1) NOT NULL DEFAULT 1,
  `phase` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_transfer_contacts`
--

CREATE TABLE `log_transfer_contacts` (
  `id` int(11) NOT NULL,
  `id_contact` int(11) DEFAULT NULL,
  `id_oportunity` int(11) DEFAULT NULL,
  `id_activity` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lotes_20jun24_xlsx___hoja_1`
--

CREATE TABLE `lotes_20jun24_xlsx___hoja_1` (
  `id` int(11) NOT NULL,
  `mes_vta` varchar(9) DEFAULT NULL,
  `origen` varchar(10) DEFAULT NULL,
  `nada` varchar(10) DEFAULT NULL,
  `lote` varchar(6) DEFAULT NULL,
  `no_subir` varchar(8) DEFAULT NULL,
  `mod` varchar(8) DEFAULT NULL,
  `mod_col` varchar(9) DEFAULT NULL,
  `anio` varchar(4) DEFAULT NULL,
  `condiciones` varchar(9) DEFAULT NULL,
  `modelo` varchar(25) DEFAULT NULL,
  `mod_name` varchar(7) DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `int` varchar(3) DEFAULT NULL,
  `lote_2` varchar(6) DEFAULT NULL,
  `arribo` varchar(23) DEFAULT NULL,
  `COL 16` varchar(6) DEFAULT NULL,
  `COL 17` varchar(12) DEFAULT NULL,
  `COL 18` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manage_reserved`
--

CREATE TABLE `manage_reserved` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `id_inventory` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_brand_agency` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metrics`
--

CREATE TABLE `metrics` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metrics_assignment_metrics`
--

CREATE TABLE `metrics_assignment_metrics` (
  `id` int(11) NOT NULL,
  `id_quarter` int(11) NOT NULL,
  `id_agency` int(11) NOT NULL,
  `id_metric` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metrics_assignment_targets`
--

CREATE TABLE `metrics_assignment_targets` (
  `id` int(11) NOT NULL,
  `id_quarter` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_target` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metrics_brands_agencies`
--

CREATE TABLE `metrics_brands_agencies` (
  `id` int(11) NOT NULL,
  `brand` text NOT NULL,
  `agency` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metrics_meetings`
--

CREATE TABLE `metrics_meetings` (
  `id` int(11) NOT NULL,
  `id_quarter` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `meeting_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metrics_meeting_brand_quarters`
--

CREATE TABLE `metrics_meeting_brand_quarters` (
  `id` int(11) NOT NULL,
  `id_metrics_assigment_metric` int(11) NOT NULL,
  `week` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metrics_meeting_score`
--

CREATE TABLE `metrics_meeting_score` (
  `id` int(11) NOT NULL,
  `id_metrics_meeting` int(11) NOT NULL,
  `id_metrics_meeting_user` int(11) NOT NULL DEFAULT 1,
  `score` float(11,1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metrics_meeting_users`
--

CREATE TABLE `metrics_meeting_users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metrics_pendings`
--

CREATE TABLE `metrics_pendings` (
  `id` int(11) NOT NULL,
  `id_metrics_meeting` int(11) NOT NULL,
  `id_metrics_meeting_users` int(11) NOT NULL,
  `description` text NOT NULL,
  `progress` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metrics_quarters`
--

CREATE TABLE `metrics_quarters` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `period` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metrics_targets`
--

CREATE TABLE `metrics_targets` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metrics_targets_progress`
--

CREATE TABLE `metrics_targets_progress` (
  `id` int(11) NOT NULL,
  `id_metrics_meeting` int(11) NOT NULL,
  `id_metrics_target_users` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metrics_target_users`
--

CREATE TABLE `metrics_target_users` (
  `id` int(11) NOT NULL,
  `id_quarter` int(11) NOT NULL,
  `id_metrics_assigment_targets` int(11) NOT NULL,
  `quarter_goal` int(11) NOT NULL,
  `monthly_goal` int(11) NOT NULL,
  `progress` varchar(30) DEFAULT 'En proceso',
  `comments` text DEFAULT NULL,
  `year` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `models`
--

CREATE TABLE `models` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `is_external` tinyint(1) DEFAULT 0,
  `is_obsolete` tinyint(1) DEFAULT 0,
  `previa` double DEFAULT NULL,
  `id_brand` int(11) DEFAULT NULL,
  `id_brand_external` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `models_colors`
--

CREATE TABLE `models_colors` (
  `id` int(11) NOT NULL,
  `id_model_version_year` int(11) NOT NULL,
  `id_color` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `models_extension`
--

CREATE TABLE `models_extension` (
  `id` int(11) NOT NULL,
  `warranty_extension_12_months` double(10,2) NOT NULL,
  `warranty_extension_24_months` double(10,2) NOT NULL,
  `warranty_extension_36_months` double(10,2) NOT NULL,
  `warranty_extension_48_months` double(10,2) NOT NULL,
  `id_model` int(11) NOT NULL,
  `id_type_extension` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `models_maintenance`
--

CREATE TABLE `models_maintenance` (
  `id` int(11) NOT NULL,
  `maintenance_5k` double NOT NULL,
  `maintenance_10k` double NOT NULL,
  `maintenance_20k` double NOT NULL,
  `id_model_year` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `models_photo`
--

CREATE TABLE `models_photo` (
  `id` int(11) NOT NULL,
  `photo_url` mediumtext NOT NULL,
  `id_photo_type` int(11) NOT NULL,
  `id_model_year` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `models_versions`
--

CREATE TABLE `models_versions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `id_version` int(11) NOT NULL,
  `id_model` int(11) DEFAULT NULL,
  `id_model_year` int(11) DEFAULT NULL,
  `id_crm_models_versions` int(11) DEFAULT NULL COMMENT 'relacionado a CRM2.0, Tabla:com_mod_version',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `models_versions_colors`
--

CREATE TABLE `models_versions_colors` (
  `id` int(11) NOT NULL,
  `id_color` int(11) NOT NULL,
  `id_model_version` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `models_versions_years`
--

CREATE TABLE `models_versions_years` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(20) NOT NULL,
  `isan_exemption_hybrid` tinyint(1) NOT NULL DEFAULT 0,
  `id_model_version` int(11) NOT NULL,
  `id_model_year` int(11) NOT NULL,
  `is_visible_app` tinyint(1) NOT NULL DEFAULT 1,
  `id_crm_models_versions` int(11) DEFAULT NULL COMMENT 'relacionado a CRM2.0, Tabla:com_mod_version',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `create_intelisis` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `models_years`
--

CREATE TABLE `models_years` (
  `id` int(11) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `id_year` int(11) NOT NULL,
  `id_model` int(11) NOT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `component` varchar(50) DEFAULT NULL,
  `route` varchar(250) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `id_module_type` int(11) NOT NULL,
  `id_module_system` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modules_system`
--

CREATE TABLE `modules_system` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modules_type`
--

CREATE TABLE `modules_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `months`
--

CREATE TABLE `months` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mystery_shopper`
--

CREATE TABLE `mystery_shopper` (
  `id` int(11) NOT NULL,
  `answer` mediumtext DEFAULT NULL,
  `id_question_mystery_shopper` int(11) NOT NULL,
  `id_opportunity` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification_config`
--

CREATE TABLE `notification_config` (
  `id` int(11) NOT NULL,
  `id_module` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `id_brand_agency` int(11) NOT NULL,
  `allowed_actions` text DEFAULT NULL COMMENT 'Acciones permitidas con detalles',
  `email_recipients` text DEFAULT NULL COMMENT 'Lista de correos en formato JSON',
  `notification_type` enum('ALL','SPECIFIC') DEFAULT 'ALL',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification_groups`
--

CREATE TABLE `notification_groups` (
  `id` int(11) NOT NULL,
  `id_module` int(11) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT 'Nombre del grupo de notificación',
  `code` varchar(50) NOT NULL COMMENT 'Código único del grupo',
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification_modules`
--

CREATE TABLE `notification_modules` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT 'Nombre del módulo o servicio',
  `code` varchar(50) NOT NULL COMMENT 'Código único para identificación',
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operations_data`
--

CREATE TABLE `operations_data` (
  `id` int(11) NOT NULL,
  `check_car_price` int(11) DEFAULT NULL,
  `check_iva` int(11) DEFAULT NULL,
  `check_national_car_insurance` int(11) DEFAULT NULL,
  `check_civil_liability_insurance` int(11) DEFAULT NULL,
  `check_life_insurance` int(11) DEFAULT NULL,
  `check_interests` int(11) DEFAULT NULL,
  `check_accessories` int(11) DEFAULT NULL,
  `check_extended_warranty` int(11) DEFAULT NULL,
  `check_others_time` int(11) DEFAULT NULL,
  `check_open_commission` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `id_purchase_old` int(11) DEFAULT NULL,
  `check_price_gap` int(11) DEFAULT NULL,
  `brand_old` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oportunities`
--

CREATE TABLE `oportunities` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `folio` varchar(45) DEFAULT NULL,
  `date_change_purchase` datetime DEFAULT NULL,
  `credit_request` tinyint(1) DEFAULT NULL,
  `other_models` varchar(250) DEFAULT NULL,
  `id_model` int(11) NOT NULL,
  `id_version` int(11) DEFAULT NULL,
  `id_color` int(11) DEFAULT NULL,
  `id_type_vehicle` int(11) DEFAULT NULL,
  `id_type_purchase` int(11) DEFAULT NULL,
  `id_status_oportunity` int(11) NOT NULL,
  `id_purchase_description` int(11) DEFAULT NULL,
  `id_purchase_buyback` int(11) DEFAULT NULL,
  `id_contact` int(11) DEFAULT NULL,
  `id_status_purchase` int(11) NOT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `id_last_template` int(11) DEFAULT NULL,
  `is_block` tinyint(1) DEFAULT 0,
  `id_opportunity_old` int(11) DEFAULT NULL,
  `id_source` int(11) DEFAULT NULL,
  `id_type_use` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `id_log_activity` int(11) DEFAULT NULL,
  `vin_old` varchar(100) DEFAULT NULL,
  `brand_old` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opo_financial`
--

CREATE TABLE `opo_financial` (
  `id` int(11) NOT NULL,
  `id_oportunidad` int(11) NOT NULL,
  `id_financial` int(11) DEFAULT NULL,
  `brand` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opportunity_files`
--

CREATE TABLE `opportunity_files` (
  `id` int(11) NOT NULL,
  `url` mediumtext NOT NULL,
  `size` int(11) NOT NULL,
  `id_repository_files_limit` int(11) NOT NULL,
  `id_opportunity` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opportunity_no_sale`
--

CREATE TABLE `opportunity_no_sale` (
  `id` int(11) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `description_reason` mediumtext DEFAULT NULL,
  `id_opportunity` int(11) DEFAULT NULL,
  `id_brand_external` int(11) DEFAULT NULL,
  `id_reason_no_sale` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `options_tracking_preowned`
--

CREATE TABLE `options_tracking_preowned` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `id_areas_tracking_preowned` int(11) DEFAULT NULL,
  `id_type_control` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_purchase_answer`
--

CREATE TABLE `order_purchase_answer` (
  `id` int(11) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `id_order_purchase_question` int(11) NOT NULL,
  `id_purchase_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_purchase_form`
--

CREATE TABLE `order_purchase_form` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_purchase_questions`
--

CREATE TABLE `order_purchase_questions` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `id_order_purchase_section` int(11) NOT NULL,
  `id_type_control` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_purchase_section`
--

CREATE TABLE `order_purchase_section` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` mediumtext NOT NULL,
  `id_order_purchase_form` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `others_contacts`
--

CREATE TABLE `others_contacts` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_deadlines`
--

CREATE TABLE `payment_deadlines` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_way`
--

CREATE TABLE `payment_way` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id_payment_method` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_folders`
--

CREATE TABLE `personal_folders` (
  `id` int(11) NOT NULL,
  `id_directory_folder` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phone_guide`
--

CREATE TABLE `phone_guide` (
  `id` int(11) NOT NULL,
  `date_promise` timestamp NULL DEFAULT NULL,
  `id_opportunity` int(11) NOT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `photos_type`
--

CREATE TABLE `photos_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `power_incorporation`
--

CREATE TABLE `power_incorporation` (
  `id` int(11) NOT NULL,
  `public_writing_number` varchar(50) DEFAULT NULL,
  `name_notary` varchar(200) DEFAULT NULL,
  `number_notary` varchar(100) DEFAULT NULL,
  `rfc` varchar(100) DEFAULT NULL,
  `tax_effects` varchar(100) DEFAULT NULL,
  `id_state` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `id_purchase_old` int(11) DEFAULT NULL,
  `brand_old` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preparation_models`
--

CREATE TABLE `preparation_models` (
  `id` int(11) NOT NULL,
  `liter` double DEFAULT NULL,
  `price_liter` double DEFAULT NULL,
  `hours` double DEFAULT NULL,
  `price_hour` double DEFAULT NULL,
  `gasoline` double DEFAULT NULL,
  `labor` double DEFAULT NULL,
  `detail` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prices_model_version`
--

CREATE TABLE `prices_model_version` (
  `id` int(11) NOT NULL,
  `price` double NOT NULL,
  `border_price` double DEFAULT NULL,
  `rebate` double NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `isan` double NOT NULL DEFAULT 0,
  `iva` double NOT NULL DEFAULT 0,
  `is_visible` tinyint(4) NOT NULL DEFAULT 1,
  `id_model_version` int(11) DEFAULT NULL,
  `id_model_version_year` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prices_services`
--

CREATE TABLE `prices_services` (
  `id` int(11) NOT NULL,
  `image_banner` varchar(255) NOT NULL,
  `ext_warranty_12_months` decimal(10,2) DEFAULT NULL,
  `ext_warranty_24_months` decimal(10,2) DEFAULT NULL,
  `ext_warranty_36_months` decimal(10,2) DEFAULT NULL,
  `ext_warranty_48_months` decimal(10,2) DEFAULT NULL,
  `maintenance_5k_units` decimal(10,2) DEFAULT NULL,
  `maintenance_10k_units` decimal(10,2) DEFAULT NULL,
  `maintenance_20k_units` decimal(10,2) DEFAULT NULL,
  `id_model_version` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profession`
--

CREATE TABLE `profession` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchases_buyback`
--

CREATE TABLE `purchases_buyback` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchases_description`
--

CREATE TABLE `purchases_description` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_black_list`
--

CREATE TABLE `purchase_black_list` (
  `id` int(11) NOT NULL,
  `user_email` varchar(80) NOT NULL,
  `searched_name` text NOT NULL,
  `search_date` varchar(80) DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  `database` longtext DEFAULT NULL,
  `type` longtext DEFAULT NULL,
  `update_date` longtext DEFAULT NULL,
  `nationality` longtext DEFAULT NULL,
  `aliases` longtext DEFAULT NULL,
  `related_entities` longtext DEFAULT NULL,
  `information` longtext DEFAULT NULL,
  `birth_date` longtext DEFAULT NULL,
  `birth_place` longtext DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `id_purchase_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_data`
--

CREATE TABLE `purchase_data` (
  `id` int(11) NOT NULL,
  `warranty_year` varchar(50) DEFAULT NULL,
  `warranty_kms` varchar(50) DEFAULT NULL,
  `no_invoice` varchar(50) DEFAULT NULL,
  `hitch_percent` double(10,2) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `exchange_rate` double(10,2) DEFAULT NULL,
  `billing_amount` double(10,2) DEFAULT NULL,
  `rate` varchar(50) DEFAULT NULL,
  `term_months` int(11) DEFAULT NULL,
  `monthly_amount` varchar(50) DEFAULT NULL,
  `no_note` int(11) DEFAULT NULL,
  `no_note_amount` double(10,2) DEFAULT NULL,
  `note_pay_due_date` varchar(50) DEFAULT NULL,
  `data_request` varchar(50) DEFAULT NULL,
  `billing_date` date DEFAULT NULL,
  `no_client` varchar(50) DEFAULT NULL,
  `id_type_purchase` int(11) DEFAULT NULL,
  `id_type_sale` int(11) DEFAULT NULL,
  `id_buyback_type` int(11) DEFAULT NULL,
  `id_type_commission` int(11) DEFAULT NULL,
  `start_date_warranty` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `id_purchase_old` int(11) DEFAULT NULL,
  `brand_old` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_order`
--

CREATE TABLE `purchase_order` (
  `id` int(11) NOT NULL,
  `id_opportunity` int(11) DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  `id_purchase_data` int(11) DEFAULT NULL,
  `id_billing_address` int(11) DEFAULT NULL,
  `id_constitutive_act` int(11) DEFAULT NULL,
  `id_power_incorporation` int(11) DEFAULT NULL,
  `id_anti_money` int(11) DEFAULT NULL,
  `id_car_data` int(11) DEFAULT NULL,
  `id_car_acquisition` int(11) DEFAULT NULL,
  `id_data_insurance` int(11) DEFAULT NULL,
  `id_financing` int(11) DEFAULT NULL,
  `id_details_additional_expenses` int(11) DEFAULT NULL,
  `id_breakdown_operations` int(11) DEFAULT NULL,
  `id_operations_data` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `id_status_purchase_order` int(11) NOT NULL DEFAULT 1,
  `id_purchase_old` int(11) DEFAULT NULL,
  `documents` tinyint(1) DEFAULT 0,
  `repuve` tinyint(1) DEFAULT 0,
  `delivery` int(11) DEFAULT 1,
  `release` int(11) DEFAULT NULL,
  `is_black_list` tinyint(1) DEFAULT 0,
  `insurance_tracking` tinyint(1) DEFAULT NULL,
  `is_block` tinyint(4) DEFAULT 0,
  `review_audit` tinyint(1) DEFAULT 0,
  `is_received_audit` tinyint(1) DEFAULT 0,
  `comment_audit` mediumtext DEFAULT NULL,
  `comment_audit_phase_2` mediumtext DEFAULT NULL,
  `unlock_repository` tinyint(1) DEFAULT 0,
  `unlock_payments` tinyint(1) DEFAULT 0,
  `unlock_finance` tinyint(1) DEFAULT 0,
  `unlock_billing` tinyint(1) DEFAULT 0,
  `need_pld_two_review` tinyint(1) DEFAULT NULL COMMENT 'Bandera para indicar si necesita o no revision de PLD 2',
  `access_power_attorney` tinyint(1) DEFAULT NULL COMMENT 'Bandera para permitir acceso al formato para imprimir ''Carta poder''',
  `date_review_update` timestamp NULL DEFAULT NULL,
  `date_review_update_account` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `brand_old` int(11) DEFAULT NULL,
  `id_tracking_status_invoices` int(11) DEFAULT NULL,
  `date_tracking_status_invoices` datetime DEFAULT NULL,
  `commission` tinyint(1) DEFAULT NULL,
  `date_release` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_order_approved`
--

CREATE TABLE `purchase_order_approved` (
  `id` int(11) NOT NULL,
  `date_approved` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_user` int(11) NOT NULL,
  `is_pending` tinyint(1) DEFAULT NULL,
  `id_signature` int(11) DEFAULT NULL,
  `id_purchase_order` int(11) DEFAULT NULL,
  `id_user_config` int(11) DEFAULT NULL,
  `id_user_delete` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_order_cancel_log`
--

CREATE TABLE `purchase_order_cancel_log` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_purchase_order` int(11) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_order_comment`
--

CREATE TABLE `purchase_order_comment` (
  `id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `id_purchase_order` int(11) NOT NULL,
  `id_type_comment` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_order_notification`
--

CREATE TABLE `purchase_order_notification` (
  `id` int(11) NOT NULL,
  `email` text DEFAULT NULL,
  `confirm_oc` tinyint(1) DEFAULT NULL,
  `renew_oc` tinyint(1) DEFAULT NULL,
  `signature` varchar(60) DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_order_signatures`
--

CREATE TABLE `purchase_order_signatures` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL,
  `signature` varchar(60) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quarterly`
--

CREATE TABLE `quarterly` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `period` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions_mystery_shopper`
--

CREATE TABLE `questions_mystery_shopper` (
  `id` int(11) NOT NULL,
  `question` mediumtext NOT NULL,
  `id_brand` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL,
  `notes` mediumtext NOT NULL,
  `client_name` varchar(90) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_contact` int(11) NOT NULL,
  `id_opportunity` int(11) DEFAULT NULL,
  `id_model_year` int(11) NOT NULL,
  `id_type_quote` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quotes_details`
--

CREATE TABLE `quotes_details` (
  `id` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `vehicle_hitch` double(10,2) NOT NULL,
  `vehicle_insurance` double(10,2) NOT NULL,
  `life_insurance` double(10,2) NOT NULL,
  `accessories` double(10,2) NOT NULL,
  `opening_commission` double(10,2) NOT NULL,
  `license_plates` double(10,2) NOT NULL,
  `initial_investment` double(10,2) NOT NULL,
  `insurance` double(10,2) NOT NULL,
  `bonus_hdm` double(10,2) NOT NULL,
  `vehicle_intake` double(10,2) NOT NULL,
  `total` double(10,2) NOT NULL,
  `monthly_payment` double(10,2) NOT NULL,
  `down_payment_percentage` double(10,2) NOT NULL,
  `preowned_car` tinyint(1) NOT NULL DEFAULT 0,
  `id_financial` int(11) NOT NULL,
  `id_payment_deadline` int(11) DEFAULT NULL,
  `id_tire_coverage` int(11) DEFAULT NULL,
  `id_version` int(11) DEFAULT NULL,
  `id_quote` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quotes_express`
--

CREATE TABLE `quotes_express` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quotes_express_models`
--

CREATE TABLE `quotes_express_models` (
  `id` int(11) NOT NULL,
  `id_model` int(11) DEFAULT NULL,
  `id_model_year` int(11) DEFAULT NULL,
  `id_quote_express` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reasons_no_sale`
--

CREATE TABLE `reasons_no_sale` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reason_approval`
--

CREATE TABLE `reason_approval` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reason_rejection`
--

CREATE TABLE `reason_rejection` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `id_rejection_module` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reason_sheet`
--

CREATE TABLE `reason_sheet` (
  `id` int(11) NOT NULL,
  `cellphone_better` varchar(10) DEFAULT NULL,
  `cellphone_second_best` varchar(10) DEFAULT NULL,
  `other_cellphone` varchar(10) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `other_email` varchar(150) DEFAULT NULL,
  `question_one` mediumtext NOT NULL,
  `question_two` mediumtext NOT NULL,
  `question_three` mediumtext NOT NULL,
  `question_four` mediumtext NOT NULL,
  `question_five` mediumtext NOT NULL,
  `question_six` mediumtext NOT NULL,
  `comments` mediumtext DEFAULT NULL,
  `application_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_opportunity` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rejection_module`
--

CREATE TABLE `rejection_module` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repository`
--

CREATE TABLE `repository` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_opportunity` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repository_files`
--

CREATE TABLE `repository_files` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repository_files_limit`
--

CREATE TABLE `repository_files_limit` (
  `id` int(11) NOT NULL,
  `id_repository_folder` int(11) NOT NULL,
  `id_repository_file` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repository_folders`
--

CREATE TABLE `repository_folders` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repository_others_contact`
--

CREATE TABLE `repository_others_contact` (
  `id` int(11) NOT NULL,
  `id_others_contact` int(11) NOT NULL,
  `id_opportunity_file` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserved_schedule`
--

CREATE TABLE `reserved_schedule` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL COMMENT 'la fecha viene directo de la agenda',
  `time_start` varchar(50) NOT NULL,
  `is_all_day` tinyint(1) DEFAULT 0,
  `time_end` varchar(50) DEFAULT NULL,
  `id_room` int(11) DEFAULT NULL,
  `id_schedule` int(11) DEFAULT NULL,
  `id_opportunity` int(11) DEFAULT NULL,
  `id_type_reserved_room` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'convertir de UTC a Hora de Tijuana',
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `approved_purchase_order` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_modules_permissions`
--

CREATE TABLE `roles_modules_permissions` (
  `id` int(11) NOT NULL,
  `id_module` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_permission` int(11) NOT NULL,
  `id_brand_agency` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_access_folders`
--

CREATE TABLE `role_access_folders` (
  `id` int(11) NOT NULL,
  `id_directory_folder` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_brand_agency` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales_plan`
--

CREATE TABLE `sales_plan` (
  `id` int(11) NOT NULL,
  `id_brand_agency` int(11) NOT NULL,
  `id_model` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `id_month` int(11) NOT NULL,
  `year` varchar(4) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales_points`
--

CREATE TABLE `sales_points` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales_year`
--

CREATE TABLE `sales_year` (
  `id` int(11) NOT NULL,
  `sales` int(11) NOT NULL,
  `goal` int(11) NOT NULL,
  `lastYear` int(11) NOT NULL,
  `id_brand_agency` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `id_hour_room` int(11) NOT NULL,
  `id_day` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `section_document_audit`
--

CREATE TABLE `section_document_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phase` int(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `base_price` double NOT NULL,
  `fee_amecah` double NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socket_connected`
--

CREATE TABLE `socket_connected` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_client_socket` varchar(100) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sources`
--

CREATE TABLE `sources` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_name` char(5) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_activity`
--

CREATE TABLE `status_activity` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_assignment`
--

CREATE TABLE `status_assignment` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_commission`
--

CREATE TABLE `status_commission` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_contacts`
--

CREATE TABLE `status_contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_credit_request`
--

CREATE TABLE `status_credit_request` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_inventory`
--

CREATE TABLE `status_inventory` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_oportunities`
--

CREATE TABLE `status_oportunities` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_purchases`
--

CREATE TABLE `status_purchases` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_purchase_order`
--

CREATE TABLE `status_purchase_order` (
  `id` int(11) NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_tracking_credit`
--

CREATE TABLE `status_tracking_credit` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_tracking_details`
--

CREATE TABLE `status_tracking_details` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temp-preowned`
--

CREATE TABLE `temp-preowned` (
  `vin` mediumtext DEFAULT NULL,
  `sem_IDseminuevos` int(11) DEFAULT NULL,
  `sem_vin` mediumtext DEFAULT NULL,
  `sem_km` int(11) DEFAULT NULL,
  `sem_precio` int(11) DEFAULT NULL,
  `sem_precio_promocion` int(11) DEFAULT NULL,
  `sem_garantia` mediumtext DEFAULT NULL,
  `sem_status` mediumtext DEFAULT NULL,
  `sem_vencimiento` mediumtext DEFAULT NULL,
  `sem_ext_plazo` int(11) DEFAULT NULL,
  `sem_ext_valor` int(11) DEFAULT NULL,
  `sem_recibido` mediumtext DEFAULT NULL,
  `sem_aplica` mediumtext DEFAULT NULL,
  `sem_descripcion` mediumtext DEFAULT NULL,
  `sem_comentario` mediumtext DEFAULT NULL,
  `costo_unidad` int(11) DEFAULT NULL,
  `sem_comision` mediumtext DEFAULT NULL,
  `seminuevoscol` mediumtext DEFAULT NULL,
  `sem_recibo` mediumtext DEFAULT NULL,
  `sem_subtipo` mediumtext DEFAULT NULL,
  `sem_traccion` mediumtext DEFAULT NULL,
  `sem_vidrios` mediumtext DEFAULT NULL,
  `sem_transmision` mediumtext DEFAULT NULL,
  `sem_direccion` mediumtext DEFAULT NULL,
  `sem_cilindraje` mediumtext DEFAULT NULL,
  `sem_tapizado` mediumtext DEFAULT NULL,
  `sem_combustible` mediumtext DEFAULT NULL,
  `sem_placa` mediumtext DEFAULT NULL,
  `sem_outlet` int(11) DEFAULT NULL,
  `sem_marca` mediumtext DEFAULT NULL,
  `sem_modelo` mediumtext DEFAULT NULL,
  `sem_mensualidad` int(11) DEFAULT NULL,
  `sem_rines` mediumtext DEFAULT NULL,
  `sem_bolsas_aire` mediumtext DEFAULT NULL,
  `sem_camaras` mediumtext DEFAULT NULL,
  `sem_faros` mediumtext DEFAULT NULL,
  `sem_aire_acondicionado` mediumtext DEFAULT NULL,
  `sem_audio` mediumtext DEFAULT NULL,
  `sem_conexion_bluetooth` mediumtext DEFAULT NULL,
  `sem_capacidad_pasajeros` mediumtext DEFAULT NULL,
  `sem_instrumentos` mediumtext DEFAULT NULL,
  `sem_sistema_encendido` mediumtext DEFAULT NULL,
  `sem_torre` mediumtext DEFAULT NULL,
  `sem_status_venta` mediumtext DEFAULT NULL,
  `sem_promocion` int(11) DEFAULT NULL,
  `sem_promocion_descripcion` mediumtext DEFAULT NULL,
  `sem_anio` mediumtext DEFAULT NULL,
  `sem_colorext` mediumtext DEFAULT NULL,
  `sem_sugerido` mediumtext DEFAULT NULL,
  `sem_reacondicionamiento` mediumtext DEFAULT NULL,
  `sem_libroazul` mediumtext DEFAULT NULL,
  `sem_guiaautometrica` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `templates`
--

CREATE TABLE `templates` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `days` int(11) DEFAULT 0,
  `id_last_template` int(11) DEFAULT NULL,
  `id_next_template` int(11) DEFAULT NULL,
  `template` mediumtext NOT NULL,
  `id_category_template` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `templates_logs`
--

CREATE TABLE `templates_logs` (
  `id` int(11) NOT NULL,
  `id_template` int(11) DEFAULT NULL,
  `id_opportunity` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temp_contactos`
--

CREATE TABLE `temp_contactos` (
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `term_ext_warranty`
--

CREATE TABLE `term_ext_warranty` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tire_coverage`
--

CREATE TABLE `tire_coverage` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cost` double DEFAULT NULL,
  `id_brand` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tower`
--

CREATE TABLE `tower` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tracking_credit`
--

CREATE TABLE `tracking_credit` (
  `id` int(11) NOT NULL,
  `amount` double DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  `id_version` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `id_type_vehicle` int(11) DEFAULT NULL,
  `id_color` int(11) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `id_opportunity` int(11) NOT NULL,
  `id_status_tracking_credit` int(11) NOT NULL,
  `id_financial_final` int(11) DEFAULT NULL,
  `id_status_credit_request_final` int(11) DEFAULT NULL,
  `id_credit_request` int(11) DEFAULT NULL,
  `id_type_price` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tracking_document_audit`
--

CREATE TABLE `tracking_document_audit` (
  `id` int(11) NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  `is_edited` tinyint(1) NOT NULL DEFAULT 0,
  `date_request` timestamp NULL DEFAULT NULL,
  `date_response` timestamp NULL DEFAULT NULL,
  `id_purchase_order` int(11) DEFAULT NULL,
  `id_opportunity` int(11) DEFAULT NULL,
  `id_document_audit` int(11) NOT NULL,
  `id_log_review_audit` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tracking_preowned`
--

CREATE TABLE `tracking_preowned` (
  `id` int(11) NOT NULL,
  `id_areas_tracking_preowned` int(11) DEFAULT NULL,
  `id_tracking_status` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_inventory` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tracking_status`
--

CREATE TABLE `tracking_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transfer_base_datos`
--

CREATE TABLE `transfer_base_datos` (
  `id` int(11) NOT NULL,
  `id_contacto` int(11) NOT NULL,
  `id_oportunidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transfer_contact_logs`
--

CREATE TABLE `transfer_contact_logs` (
  `id` int(11) NOT NULL,
  `id_contact` int(11) DEFAULT NULL,
  `id_old_user` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_user_cdc` int(11) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transfer_inventory_logs`
--

CREATE TABLE `transfer_inventory_logs` (
  `id` int(11) NOT NULL,
  `message` mediumtext DEFAULT NULL,
  `status_api` tinyint(1) DEFAULT NULL,
  `id_inventory` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `types_insurances`
--

CREATE TABLE `types_insurances` (
  `id` int(11) NOT NULL,
  `id_insurance` int(11) NOT NULL,
  `id_type_insurance` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `types_use`
--

CREATE TABLE `types_use` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_activity`
--

CREATE TABLE `type_activity` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_appointments`
--

CREATE TABLE `type_appointments` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_audit_phases`
--

CREATE TABLE `type_audit_phases` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_car_acquisition`
--

CREATE TABLE `type_car_acquisition` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_comment`
--

CREATE TABLE `type_comment` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_commission`
--

CREATE TABLE `type_commission` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_contact_favorites`
--

CREATE TABLE `type_contact_favorites` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_control`
--

CREATE TABLE `type_control` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `forms` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_credit_request`
--

CREATE TABLE `type_credit_request` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_deadline_order`
--

CREATE TABLE `type_deadline_order` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_document_config`
--

CREATE TABLE `type_document_config` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `active_print` tinyint(1) NOT NULL DEFAULT 0,
  `is_moral` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_extension`
--

CREATE TABLE `type_extension` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_fuels`
--

CREATE TABLE `type_fuels` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `id_fuel_s` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_gap`
--

CREATE TABLE `type_gap` (
  `id` int(11) NOT NULL,
  `name` mediumtext DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_hostess`
--

CREATE TABLE `type_hostess` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_insurance`
--

CREATE TABLE `type_insurance` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_inventory`
--

CREATE TABLE `type_inventory` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_isan`
--

CREATE TABLE `type_isan` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_notifications`
--

CREATE TABLE `type_notifications` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_operation_intelisis`
--

CREATE TABLE `type_operation_intelisis` (
  `id` int(11) NOT NULL,
  `name` mediumtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_others_order`
--

CREATE TABLE `type_others_order` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_payment_commission`
--

CREATE TABLE `type_payment_commission` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_payment_order`
--

CREATE TABLE `type_payment_order` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `short_name` varchar(15) DEFAULT NULL,
  `change_commission` tinyint(1) NOT NULL DEFAULT 0,
  `enable` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_price`
--

CREATE TABLE `type_price` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_process_log`
--

CREATE TABLE `type_process_log` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_purchase`
--

CREATE TABLE `type_purchase` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_quote`
--

CREATE TABLE `type_quote` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_received_agency`
--

CREATE TABLE `type_received_agency` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_reserved_room`
--

CREATE TABLE `type_reserved_room` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_sale`
--

CREATE TABLE `type_sale` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_scheme`
--

CREATE TABLE `type_scheme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_sent_email`
--

CREATE TABLE `type_sent_email` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_status_hostess`
--

CREATE TABLE `type_status_hostess` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_steering`
--

CREATE TABLE `type_steering` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `id_steering_s` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_task`
--

CREATE TABLE `type_task` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_traction`
--

CREATE TABLE `type_traction` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `id_traction_s` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_transmission`
--

CREATE TABLE `type_transmission` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_transmission_s` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_vehicles`
--

CREATE TABLE `type_vehicles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ucan_amda`
--

CREATE TABLE `ucan_amda` (
  `id` int(11) NOT NULL,
  `id_ucan_brand` int(11) DEFAULT NULL,
  `period` varchar(7) NOT NULL,
  `id_month` int(11) NOT NULL,
  `year` varchar(4) NOT NULL,
  `qty` int(11) NOT NULL,
  `acc` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ucan_amda_images`
--

CREATE TABLE `ucan_amda_images` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `path` mediumtext NOT NULL,
  `period` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ucan_brands`
--

CREATE TABLE `ucan_brands` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `references` text NOT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ucan_brands_agencies`
--

CREATE TABLE `ucan_brands_agencies` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `references` text NOT NULL,
  `period` varchar(7) NOT NULL,
  `sells_used_cars` tinyint(1) DEFAULT 1,
  `id_city` int(11) DEFAULT NULL,
  `id_dealer_group` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ucan_dealer_groups`
--

CREATE TABLE `ucan_dealer_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(25) NOT NULL,
  `references` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ucan_sales`
--

CREATE TABLE `ucan_sales` (
  `id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `id_ucan_brand_agency` int(11) NOT NULL,
  `id_month` int(11) NOT NULL,
  `year` varchar(4) NOT NULL,
  `is_last` tinyint(1) NOT NULL,
  `period` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_new` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unit_mystery_shopper`
--

CREATE TABLE `unit_mystery_shopper` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_brand` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `antiquity` date DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `vcf` varchar(100) DEFAULT NULL,
  `rfc` varchar(30) NOT NULL,
  `photo_url` varchar(250) DEFAULT NULL,
  `disable` tinyint(1) DEFAULT 0 COMMENT '1=Renuncio\r\n0=Activo',
  `first_login` tinyint(1) DEFAULT 1,
  `survey` tinyint(1) DEFAULT 1,
  `id_role` int(11) DEFAULT NULL,
  `id_brand_agency` int(11) NOT NULL,
  `id_user_old` int(11) DEFAULT NULL,
  `brand_old` varchar(45) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `is_adh_signer` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_commission`
--

CREATE TABLE `user_commission` (
  `id` int(11) NOT NULL,
  `has_pending` tinyint(1) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `commission_date` date DEFAULT NULL,
  `vin` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_hostess`
--

CREATE TABLE `user_hostess` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_scheme` int(11) NOT NULL DEFAULT 2,
  `id_type_status_hostess` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `item_helper` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_logs_notifications`
--

CREATE TABLE `user_logs_notifications` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `id_hostess_notification` int(11) DEFAULT NULL,
  `id_contact` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `variables`
--

CREATE TABLE `variables` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `ventas_totales_v`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `ventas_totales_v` (
`idop` int(11)
,`idpo` int(11)
,`id_user` int(11)
,`idc` int(11)
,`idBrandAgency` int(11)
,`ciudad` varchar(100)
,`asesor` varchar(100)
,`vin` varchar(60)
,`id_status_purchase` int(11)
,`nvo_dmo_sn` varchar(50)
,`billing_date` date
,`credito_contado` varchar(50)
,`financiera` varchar(100)
,`financiera_casa` tinyint(1)
,`tipo_seguro` varchar(100)
,`aseguradora` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `versions`
--

CREATE TABLE `versions` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `is_external` int(11) DEFAULT 0,
  `is_obsolete` tinyint(1) DEFAULT 0,
  `id_brand` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `versions_brands`
--

CREATE TABLE `versions_brands` (
  `id` int(11) NOT NULL,
  `id_version` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_full_data_model`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_full_data_model` (
`id_model_version_year` int(11)
,`model_version_year` varchar(100)
,`id_model_version` int(11)
,`id_model_year` int(11)
,`id_model` int(11)
,`id_version` int(11)
,`model` varchar(60)
,`version` varchar(60)
,`year` int(11)
,`id_type_extension` int(11)
,`type_extension` varchar(50)
,`id_brand_external` int(11)
,`brand_external` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_include_credit_request`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_include_credit_request` (
`id` int(11)
,`statusCreditRequestName` varchar(50)
,`typeCreditRequestName` varchar(50)
,`financialName` varchar(100)
,`typeExtensionName` varchar(50)
,`insurancesName` varchar(100)
,`typeInsuranceName` varchar(100)
,`reasonRejectionName` varchar(50)
,`reasonApprovalName` varchar(50)
,`fieldSearch` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_include_tracking_credit`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_include_tracking_credit` (
`id` int(11)
,`statusTrackingCreditName` varchar(50)
,`financialsName` varchar(100)
,`statusCreditRequestName` varchar(50)
,`typePriceName` varchar(50)
,`modelsName` varchar(60)
,`versionsName` varchar(60)
,`typeVehiclesName` varchar(50)
,`colorsName` varchar(50)
,`modelName` varchar(133)
,`fieldSearch` varchar(477)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_apvs_activos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_apvs_activos` (
`agencia` varchar(100)
,`id` int(11)
,`name` varchar(100)
,`lastname` varchar(100)
,`phone` varchar(50)
,`email` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_calendario_entregas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_calendario_entregas` (
`idr` int(11)
,`iop` int(11)
,`idpo` int(11)
,`idba` int(11)
,`name` varchar(100)
,`fecha_entrega` date
,`description` text
,`status` tinyint(1)
,`timing` varchar(50)
,`dia` varchar(50)
,`apv_n` varchar(100)
,`apv_l` varchar(100)
,`cliente_n` varchar(100)
,`cliente_sn` varchar(100)
,`cliente_ln` varchar(100)
,`cliente_mln` varchar(100)
,`cliente_phone` varchar(50)
,`cliente_email` varchar(100)
,`vin` varchar(60)
,`car` varchar(100)
,`year` varchar(60)
,`color_e` varchar(50)
,`sala` varchar(50)
,`delivery` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_contacts_chapultepec`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_contacts_chapultepec` (
`idc` int(11)
,`Agencia` varchar(100)
,`Nombre Completo` varchar(146)
,`Asesor chapultepec` varchar(201)
,`Asesor del contacto` varchar(201)
,`Fecha de alta contacto` varchar(10)
,`Fecha de visita` date
,`Último apartado` varchar(10)
,`Fecha de facturacion` date
,`Cantidad de apartados` bigint(21)
,`vin` varchar(60)
,`Citas Agendadas` bigint(21)
,`Visito agencia` varchar(2)
,`tipo_visita` varchar(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_data_lavadodinero`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_data_lavadodinero` (
`idpo` int(11)
,`idop` int(11)
,`billing_date` date
,`id_anti_money_laundering` int(11)
,`user_name` varchar(100)
,`user_lastname` varchar(100)
,`id_client` int(11)
,`is_moral_client` tinyint(1)
,`client_first_name` varchar(100)
,`client_second_name` varchar(100)
,`client_last_name` varchar(100)
,`client_mothers_last_name` varchar(100)
,`email` varchar(100)
,`home_phone` varchar(50)
,`telephone` varchar(50)
,`birthdate` date
,`client_curp` varchar(50)
,`client_rfc` varchar(50)
,`company_name` varchar(200)
,`company_rfc` varchar(100)
,`date_trade_constitutive` date
,`public_writing_number_constitutive` varchar(50)
,`name_notary_constitutive` varchar(200)
,`number_notary_constitutive` varchar(100)
,`number_trade_constitutive` varchar(50)
,`date_constitutive` date
,`public_writing_number_power` varchar(50)
,`number_notary_power` varchar(100)
,`name_notary_power` varchar(200)
,`state_power` varchar(255)
,`street` mediumtext
,`number_exterior` varchar(50)
,`number_interior` varchar(50)
,`colony` varchar(100)
,`cp` varchar(20)
,`client_birthplace` varchar(255)
,`client_country` varchar(255)
,`client_country_nationality` varchar(255)
,`city` varchar(255)
,`state` varchar(255)
,`identification` varchar(255)
,`number_folio` varchar(150)
,`identi_desc` varchar(100)
,`occupation` varchar(255)
,`occupation_moral` varchar(255)
,`has_official_id` tinyint(1)
,`has_proof_address` tinyint(1)
,`has_proof_address_company` tinyint(1)
,`has_curp` tinyint(1)
,`has_rfc` tinyint(1)
,`has_curp_rfc` tinyint(1)
,`has_constitutive_act` tinyint(1)
,`has_doc_constitutive_act` tinyint(1)
,`has_doc_sat` tinyint(1)
,`has_doc_legal_representative` tinyint(1)
,`has_doc_accredit_profession` tinyint(1)
,`clause_benefit` tinyint(1)
,`clause_use` tinyint(1)
,`clause_resources` tinyint(1)
,`bene_name` text
,`bene_first_last_name` text
,`bebe_second_last_name` text
,`bene_rfc` varchar(13)
,`bene_curp` varchar(18)
,`bene_birth_date` date
,`bene_occupation` text
,`bene_country_birth` varchar(255)
,`bene_identification` varchar(255)
,`bene_folio` varchar(15)
,`bene_identi_desc` varchar(100)
,`bene_streer` text
,`bene_ext_number` varchar(10)
,`bene_int_number` varchar(10)
,`bene_colony` text
,`bene_cp` varchar(10)
,`bene_city` varchar(255)
,`bene_state` varchar(255)
,`bene_country` varchar(255)
,`bene_has_doc_official_identification` tinyint(1)
,`bene_has_doc_sat` tinyint(1)
,`bene_has_doc_curp` tinyint(1)
,`bene_has_doc_proof_address` tinyint(1)
,`bene_has_doc_profession` tinyint(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_inventario_confirmado`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_inventario_confirmado` (
`id` int(11)
,`cd` varchar(60)
,`number` varchar(60)
,`arrival` date
,`year` varchar(60)
,`car` varchar(100)
,`vin` varchar(60)
,`type_motor` varchar(60)
,`days_inventory` int(11)
,`vco` int(11)
,`cylinders` int(11)
,`doors` int(11)
,`passenger` int(11)
,`tower` varchar(3)
,`cost` double
,`code` varchar(100)
,`date_arrival` datetime
,`status_kms` varchar(100)
,`month` int(11)
,`order_status` varchar(100)
,`isSale` tinyint(1)
,`plates` varchar(100)
,`id_type_inventory` int(11)
,`id_status_inventory` int(11)
,`id_model_version` int(11)
,`id_model_version_year` int(11)
,`id_location` int(11)
,`id_inventory_floor` int(11)
,`id_transmission` int(11)
,`id_color` int(11)
,`id_color_interior` int(11)
,`id_brand_agency` int(11)
,`reported_plant` tinyint(1)
,`status` tinyint(1)
,`createdAt` timestamp
,`updatedAt` timestamp
,`deletedAt` timestamp
,`status_intelisis` tinyint(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_inventories`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_inventories` (
`id` int(11)
,`cd` varchar(60)
,`number` varchar(60)
,`arrival` date
,`year` varchar(60)
,`car` varchar(100)
,`vin` varchar(60)
,`type_motor` varchar(60)
,`days_inventory` int(11)
,`vco` int(11)
,`cylinders` int(11)
,`doors` int(11)
,`passenger` int(11)
,`tower` varchar(3)
,`cost` double
,`code` varchar(100)
,`date_arrival` datetime
,`status_kms` varchar(100)
,`month` int(11)
,`order_status` varchar(100)
,`isSale` tinyint(1)
,`plates` varchar(100)
,`id_type_inventory` int(11)
,`status_inventory` varchar(50)
,`id_status_inventory` int(11)
,`type_inventory` varchar(50)
,`id_model_version` int(11)
,`id_model_version_year` int(11)
,`id_location` int(11)
,`id_inventory_floor` int(11)
,`id_transmission` int(11)
,`id_color` int(11)
,`color` varchar(50)
,`id_color_interior` int(11)
,`id_brand` int(11)
,`id_brand_agency` int(11)
,`reported_plant` tinyint(1)
,`exist_sas_logistic` tinyint(1)
,`status` tinyint(1)
,`createdAt` timestamp
,`updatedAt` timestamp
,`deletedAt` timestamp
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_precios_activos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_precios_activos` (
`Modelo version` varchar(100)
,`Precio optima` double
,`Precio frontera` double
,`id_brand` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_reason_sheet`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_reason_sheet` (
`ciudad` varchar(100)
,`idu` int(11)
,`idc` int(11)
,`op` int(11)
,`idrs` int(11)
,`apv` varchar(100)
,`apv_last` varchar(100)
,`contacto` varchar(100)
,`contacto_last` varchar(45)
,`email_c` varchar(45)
,`cellphone` varchar(200)
,`id` int(11)
,`cellphone_better` varchar(10)
,`cellphone_second_best` varchar(10)
,`other_cellphone` varchar(10)
,`email` varchar(150)
,`other_email` varchar(150)
,`question_one` mediumtext
,`question_two` mediumtext
,`question_three` mediumtext
,`question_four` mediumtext
,`question_five` mediumtext
,`question_six` mediumtext
,`comments` mediumtext
,`name_car` varchar(60)
,`application_date` timestamp
,`id_opportunity` int(11)
,`status` tinyint(1)
,`status_oportuniti` varchar(50)
,`createdAt` timestamp
,`createdAt_h` timestamp
,`updatedAt` timestamp
,`deletedAt` timestamp
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_ventas_totales`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_ventas_totales` (
`idop` int(11)
,`idpo` int(11)
,`id_user` int(11)
,`idc` int(11)
,`ciudad` varchar(100)
,`asesor` varchar(100)
,`vin` varchar(60)
,`id_status_purchase` int(11)
,`nvo_dmo_sn` varchar(50)
,`billing_date` date
,`credito_contado` varchar(50)
,`financiera` varchar(100)
,`financiera_casa` tinyint(1)
,`tipo_seguro` varchar(100)
,`aseguradora` varchar(100)
,`delivery` int(11)
,`release` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_ventas_totales_v2`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_ventas_totales_v2` (
`idop` int(11)
,`idpo` int(11)
,`id_user` int(11)
,`idc` int(11)
,`idBrandAgency` int(11)
,`ciudad` varchar(100)
,`asesor` varchar(100)
,`asesor_a` varchar(100)
,`vin` varchar(60)
,`auto` varchar(100)
,`year_car` varchar(60)
,`id_status_purchase` int(11)
,`nvo_dmo_sn` varchar(50)
,`billing_date` date
,`billing_amount` double(10,2)
,`credito_contado` varchar(50)
,`financiera` varchar(100)
,`financiera_casa` tinyint(1)
,`tipo_seguro` varchar(100)
,`aseguradora` varchar(100)
,`iva` int(11)
,`iva_monto` double(10,2)
,`nombre` varchar(100)
,`s_nombre` varchar(100)
,`apellido` varchar(100)
,`s_apellido` varchar(100)
,`telefono` varchar(50)
,`telefono_oficina` varchar(50)
,`email` varchar(100)
,`moral` tinyint(1)
,`rfc` varchar(50)
,`name_client_moral` varchar(255)
,`address` mediumtext
,`modelo` varchar(100)
,`version` varchar(100)
,`car_year` int(11)
,`calle` mediumtext
,`colonia` mediumtext
,`cp` varchar(20)
,`estado` varchar(255)
,`extension_garantia` int(11)
,`precio_extension_txt` varchar(150)
,`plazo` int(11)
,`fecha_aprobacion` timestamp
,`precio_extension` double(10,2)
,`Estatus_entregado` varchar(9)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_ventas_totales_v3`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_ventas_totales_v3` (
`idop` int(11)
,`idpo` int(11)
,`id_user` int(11)
,`idc` int(11)
,`marca` int(11)
,`idBrandAgency` int(11)
,`ciudad` varchar(100)
,`asesor` varchar(100)
,`vin` varchar(60)
,`auto` varchar(100)
,`id_status_purchase` int(11)
,`nvo_dmo_sn` varchar(50)
,`billing_date` date
,`credito_contado` varchar(50)
,`financiera` varchar(100)
,`financiera_casa` tinyint(1)
,`tipo_seguro` varchar(100)
,`aseguradora` varchar(100)
,`nombre` varchar(100)
,`s_nombre` varchar(100)
,`apellido` varchar(100)
,`s_apellido` varchar(100)
,`telefono` varchar(50)
,`telefono_oficina` varchar(50)
,`email` varchar(100)
,`moral` tinyint(1)
,`rfc` varchar(50)
,`name_client_moral` varchar(255)
,`address` mediumtext
,`modelo` varchar(100)
,`version` varchar(100)
,`car_year` int(11)
,`engine_number` varchar(100)
,`colors` varchar(50)
,`calle` mediumtext
,`colonia` mediumtext
,`cp` varchar(20)
,`estado` varchar(255)
,`extension_garantia` int(11)
,`precio_extension_txt` varchar(150)
,`plazo` int(11)
,`fecha_aprobacion` timestamp
,`precio_extension` double(10,2)
,`Estatus_entregado` varchar(9)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_ventas_totales_v4`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_ventas_totales_v4` (
`idop` int(11)
,`idpo` int(11)
,`id_user` int(11)
,`idc` int(11)
,`idBrandAgency` int(11)
,`ciudad` varchar(100)
,`asesor` varchar(100)
,`vin` varchar(60)
,`auto` varchar(100)
,`id_status_purchase` int(11)
,`nvo_dmo_sn` varchar(50)
,`billing_date` date
,`credito_contado` varchar(50)
,`financiera` varchar(100)
,`financiera_casa` tinyint(1)
,`tipo_seguro` varchar(100)
,`aseguradora` varchar(100)
,`nombre` varchar(100)
,`s_nombre` varchar(100)
,`apellido` varchar(100)
,`s_apellido` varchar(100)
,`telefono` varchar(50)
,`telefono_oficina` varchar(50)
,`email` varchar(100)
,`moral` tinyint(1)
,`rfc` varchar(50)
,`name_client_moral` varchar(255)
,`address` mediumtext
,`modelo` varchar(100)
,`version` varchar(100)
,`car_year` int(11)
,`calle` mediumtext
,`colonia` mediumtext
,`cp` varchar(20)
,`estado` varchar(255)
,`extension_garantia` int(11)
,`precio_extension_txt` varchar(150)
,`plazo` int(11)
,`fecha_aprobacion` timestamp
,`precio_extension` double(10,2)
,`Estatus_entregado` varchar(9)
,`anio` varchar(60)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_ventas_totales_v5`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_ventas_totales_v5` (
`idop` int(11)
,`idpo` int(11)
,`id_user` int(11)
,`idc` int(11)
,`idBrandAgency` int(11)
,`ciudad` varchar(100)
,`asesor` varchar(100)
,`asesor_a` varchar(100)
,`vin` varchar(60)
,`auto` varchar(100)
,`id_status_purchase` int(11)
,`nvo_dmo_sn` varchar(50)
,`billing_date` date
,`credito_contado` varchar(50)
,`financiera` varchar(100)
,`financiera_casa` tinyint(1)
,`tipo_seguro` varchar(100)
,`aseguradora` varchar(100)
,`nombre` varchar(100)
,`s_nombre` varchar(100)
,`apellido` varchar(100)
,`s_apellido` varchar(100)
,`telefono` varchar(50)
,`telefono_oficina` varchar(50)
,`email` varchar(100)
,`moral` tinyint(1)
,`rfc` varchar(50)
,`name_client_moral` varchar(255)
,`address` mediumtext
,`modelo` varchar(100)
,`version` varchar(100)
,`car_year` int(11)
,`calle` mediumtext
,`colonia` mediumtext
,`cp` varchar(20)
,`estado` varchar(255)
,`extension_garantia` int(11)
,`precio_extension_txt` varchar(150)
,`plazo` int(11)
,`fecha_aprobacion` timestamp
,`precio_extension` double(10,2)
,`Estatus_entregado` varchar(9)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_ventas_totales_v6`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_ventas_totales_v6` (
`idop` int(11)
,`idpo` int(11)
,`id_user` int(11)
,`idc` int(11)
,`idBrandAgency` int(11)
,`ciudad` varchar(100)
,`asesor` varchar(100)
,`asesor_a` varchar(100)
,`vin` varchar(60)
,`auto` varchar(100)
,`id_status_purchase` int(11)
,`nvo_dmo_sn` varchar(50)
,`billing_date` date
,`credito_contado` varchar(50)
,`financiera` varchar(100)
,`financiera_casa` tinyint(1)
,`tipo_seguro` varchar(100)
,`aseguradora` varchar(100)
,`nombre` varchar(100)
,`s_nombre` varchar(100)
,`apellido` varchar(100)
,`s_apellido` varchar(100)
,`telefono` varchar(50)
,`telefono_oficina` varchar(50)
,`email` varchar(100)
,`moral` tinyint(1)
,`rfc` varchar(50)
,`name_client_moral` varchar(255)
,`address` mediumtext
,`modelo` varchar(100)
,`version` varchar(100)
,`car_year` int(11)
,`calle` mediumtext
,`colonia` mediumtext
,`cp` varchar(20)
,`estado` varchar(255)
,`extension_garantia` int(11)
,`precio_extension_txt` varchar(150)
,`plazo` int(11)
,`fecha_aprobacion` timestamp
,`precio_extension` double(10,2)
,`Estatus_entregado` varchar(9)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_ventas_totales_v22`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_ventas_totales_v22` (
`idop` int(11)
,`idpo` int(11)
,`id_user` int(11)
,`idc` int(11)
,`idBrandAgency` int(11)
,`ciudad` varchar(100)
,`asesor` varchar(100)
,`asesor_a` varchar(100)
,`vin` varchar(60)
,`auto` varchar(100)
,`id_status_purchase` int(11)
,`nvo_dmo_sn` varchar(50)
,`billing_date` date
,`credito_contado` varchar(50)
,`financiera` varchar(100)
,`financiera_casa` tinyint(1)
,`tipo_seguro` varchar(100)
,`aseguradora` varchar(100)
,`nombre` varchar(100)
,`s_nombre` varchar(100)
,`apellido` varchar(100)
,`s_apellido` varchar(100)
,`telefono` varchar(50)
,`telefono_oficina` varchar(50)
,`email` varchar(100)
,`moral` tinyint(1)
,`rfc` varchar(50)
,`name_client_moral` varchar(255)
,`address` mediumtext
,`modelo` varchar(100)
,`version` varchar(100)
,`car_year` int(11)
,`calle` mediumtext
,`colonia` mediumtext
,`cp` varchar(20)
,`estado` varchar(255)
,`extension_garantia` int(11)
,`precio_extension_txt` varchar(150)
,`plazo` int(11)
,`fecha_aprobacion` timestamp
,`precio_extension` double(10,2)
,`Estatus_entregado` varchar(9)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_inventories`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_inventories` (
`id` int(11)
,`cd` varchar(60)
,`number` varchar(60)
,`arrival` date
,`year` varchar(60)
,`car` varchar(100)
,`vin` varchar(60)
,`type_motor` varchar(60)
,`days_inventory` int(11)
,`vco` int(11)
,`cylinders` int(11)
,`doors` int(11)
,`passenger` int(11)
,`tower` varchar(3)
,`cost` double
,`code` varchar(100)
,`date_arrival` datetime
,`status_kms` varchar(100)
,`month` int(11)
,`order_status` varchar(100)
,`isSale` tinyint(1)
,`plates` varchar(100)
,`id_type_inventory` int(11)
,`status_inventory` varchar(50)
,`id_status_inventory` int(11)
,`type_inventory` varchar(50)
,`id_model_version` int(11)
,`id_model_version_year` int(11)
,`id_location` int(11)
,`id_inventory_floor` int(11)
,`id_transmission` int(11)
,`id_color` int(11)
,`color` varchar(50)
,`id_color_interior` int(11)
,`id_brand` int(11)
,`id_brand_agency` int(11)
,`reported_plant` tinyint(1)
,`status` tinyint(1)
,`createdAt` timestamp
,`updatedAt` timestamp
,`deletedAt` timestamp
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wharehouse`
--

CREATE TABLE `wharehouse` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `with_waiting_list`
--

CREATE TABLE `with_waiting_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `date` varchar(10) NOT NULL,
  `hour` time NOT NULL,
  `date_assignment` datetime NOT NULL,
  `status_clp` int(11) NOT NULL,
  `identify` longtext DEFAULT NULL,
  `transfer_reason` longtext DEFAULT NULL,
  `city` varchar(20) NOT NULL,
  `archived` int(11) NOT NULL DEFAULT 0,
  `mermaid_origin` varchar(50) NOT NULL,
  `id_source` int(11) DEFAULT NULL,
  `id_advertising` int(11) DEFAULT NULL,
  `id_contact` int(11) DEFAULT NULL,
  `id_behavior` int(11) DEFAULT NULL,
  `id_brand_agency` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL COMMENT 'Delete this column',
  `id_classification` int(11) DEFAULT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `years`
--

CREATE TABLE `years` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accessories_vehicles`
--
ALTER TABLE `accessories_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_type_activity` (`id_type_activity`),
  ADD KEY `fk_id_user_adviser_a` (`id_user_adviser`),
  ADD KEY `fk_id_type_appointment` (`id_type_appointment`),
  ADD KEY `fk_id_status_activity` (`id_status_activity`),
  ADD KEY `fk_id_oportunity` (`id_oportunity`),
  ADD KEY `fk_id_type_task` (`id_type_task`),
  ADD KEY `idx_id_user_generate` (`id_user_generate`),
  ADD KEY `idx_activities_user_adviser` (`id_user_adviser`,`status`,`date_promise`,`id_status_activity`,`id_type_activity`),
  ADD KEY `idx_activities_full_filter` (`id_type_activity`,`status`,`date_promise`,`hour_promise`,`id_oportunity`);

--
-- Indices de la tabla `activities_new`
--
ALTER TABLE `activities_new`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_type_activity` (`id_type_activity`),
  ADD KEY `fk_id_user_adviser_a` (`id_user_adviser`),
  ADD KEY `fk_id_type_appointment` (`id_type_appointment`),
  ADD KEY `fk_id_status_activity` (`id_status_activity`),
  ADD KEY `fk_id_oportunity` (`id_oportunity`),
  ADD KEY `fk_id_type_task` (`id_type_task`),
  ADD KEY `idx_id_user_generate` (`id_user_generate`),
  ADD KEY `idx_activities_user_adviser` (`id_user_adviser`,`status`,`date_promise`,`id_status_activity`,`id_type_activity`);

--
-- Indices de la tabla `activity_business_line_corporate_purpose`
--
ALTER TABLE `activity_business_line_corporate_purpose`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `activity_happy_call_surveys`
--
ALTER TABLE `activity_happy_call_surveys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_activity_ahcs` (`id_activity`),
  ADD KEY `fk_id_type_contact_favorites_ahcs_idx` (`id_type_contact`);

--
-- Indices de la tabla `activity_occupation_profession`
--
ALTER TABLE `activity_occupation_profession`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `adviser_change_history`
--
ALTER TABLE `adviser_change_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_contact_ach` (`id_contact`),
  ADD KEY `fk_id_user_adviser_ach` (`id_user_adviser`),
  ADD KEY `fk_id_user_movement_ach` (`id_user_movement`);

--
-- Indices de la tabla `agencies`
--
ALTER TABLE `agencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_state` (`id_state`),
  ADD KEY `idx_agencies_id` (`id`);

--
-- Indices de la tabla `anti_money_address`
--
ALTER TABLE `anti_money_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_city_am` (`id_city`),
  ADD KEY `fk_id_state_am` (`id_state`),
  ADD KEY `fk_id_country_am` (`id_country`),
  ADD KEY `fk_id_identification_am` (`id_identification`),
  ADD KEY `fk_id_country_birth_am` (`id_country_birth`),
  ADD KEY `fk_id_activity_occupation_profession_am` (`id_activity_occupation_profession`),
  ADD KEY `fk_id_activity_business_line_corporate_purpose_ana_idx` (`id_activity_business_line_corporate_purpose`),
  ADD KEY `fk_id_country_nationality_ama_idx` (`id_country_nationality`);

--
-- Indices de la tabla `anti_money_laundering`
--
ALTER TABLE `anti_money_laundering`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_purchase_order_aml` (`id_purchase_order`);

--
-- Indices de la tabla `anti_money_laundering_beneficiary`
--
ALTER TABLE `anti_money_laundering_beneficiary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_anti_money_laundering_amlb` (`id_anti_money_laundering`),
  ADD KEY `fk_id_country_birth_amlb` (`id_country_birth`),
  ADD KEY `fk_id_city_amlb` (`id_city`),
  ADD KEY `fk_id_state_amlb` (`id_state`),
  ADD KEY `fk_id_country_amlb` (`id_country`),
  ADD KEY `fk_id_identification_amlb` (`id_identification`);

--
-- Indices de la tabla `anti_money_laundering_moral`
--
ALTER TABLE `anti_money_laundering_moral`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `anti_money_laundering_moral_controller`
--
ALTER TABLE `anti_money_laundering_moral_controller`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `anti_money_laundering_moral_references`
--
ALTER TABLE `anti_money_laundering_moral_references`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `anti_money_laundering_references`
--
ALTER TABLE `anti_money_laundering_references`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_anti_money_laundering` (`id_anti_money_laundering`);

--
-- Indices de la tabla `anti_money_moral_address`
--
ALTER TABLE `anti_money_moral_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_activity_business_line_corporate_purpose_a` (`id_activity_business_line_corporate_purpose`),
  ADD KEY `fk_id_country_birth_nationality_a` (`id_country_birth_nationality`),
  ADD KEY `id_anti_money_address` (`id_anti_money_address`),
  ADD KEY `id_client` (`id_client`);

--
-- Indices de la tabla `approved_checklist`
--
ALTER TABLE `approved_checklist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ id_signature_ac_idx` (`id_signature`),
  ADD KEY `fk_ id_purchase_order_ac_idx` (`id_purchase_order`);

--
-- Indices de la tabla `approved_checklist_answer`
--
ALTER TABLE `approved_checklist_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_question_aca_idx` (`id_question`);

--
-- Indices de la tabla `approved_checklist_question`
--
ALTER TABLE `approved_checklist_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_brand_acq_idx` (`id_brand`),
  ADD KEY `fk_id_role_acq` (`id_role`);

--
-- Indices de la tabla `approved_checklist_questions_answers`
--
ALTER TABLE `approved_checklist_questions_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_approved_checklist_acqa_idx` (`id_approved_checklist`),
  ADD KEY `fk_answer_acqa` (`id_approved_checklist_answer`),
  ADD KEY `fk_question_acqa` (`id_approved_checklist_question`);

--
-- Indices de la tabla `apps_sygo`
--
ALTER TABLE `apps_sygo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `areas_tracking_preowned`
--
ALTER TABLE `areas_tracking_preowned`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `audit_log`
--
ALTER TABLE `audit_log`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `audit_log_review`
--
ALTER TABLE `audit_log_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_purchase_order_alr` (`id_purchase_order`),
  ADD KEY `fk_id_user_alr` (`id_user`),
  ADD KEY `fk_id_type_audit_phase_alr` (`id_type_audit_phase`);

--
-- Indices de la tabla `audit_review_checklist`
--
ALTER TABLE `audit_review_checklist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_repository_folder_arc_idx` (`id_repository_folder`);

--
-- Indices de la tabla `audit_review_sections`
--
ALTER TABLE `audit_review_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `audit_review_section_checklist_type_brand`
--
ALTER TABLE `audit_review_section_checklist_type_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_type_audit_phases_arsct_idx` (`id_type_audit_phase`),
  ADD KEY `fk_id_audit_review_sections_arsct_idx` (`id_audit_review_section`),
  ADD KEY `fk_id_audit_review_checklist_arsct_idx` (`id_audit_review_checklist`),
  ADD KEY `fk_id_brand_arsctb_idx` (`id_brand`);

--
-- Indices de la tabla `audit_tracking_checklist`
--
ALTER TABLE `audit_tracking_checklist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_audit_log_review_atd` (`id_audit_log_review`);

--
-- Indices de la tabla `auth_refresh_tokens`
--
ALTER TABLE `auth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id_u_idx` (`user_id`);

--
-- Indices de la tabla `autometrica_catalog`
--
ALTER TABLE `autometrica_catalog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_auto_catalog` (`year`,`brand`,`sub_brand`,`version`);

--
-- Indices de la tabla `autometrica_mapping`
--
ALTER TABLE `autometrica_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_inventory_iam` (`id_inventory`),
  ADD KEY `fk_id_autometrica_catalog_iam` (`id_autometrica_catalog`);

--
-- Indices de la tabla `autometrica_prices_cache`
--
ALTER TABLE `autometrica_prices_cache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_inventory_apc` (`id_inventory`);

--
-- Indices de la tabla `back_orders`
--
ALTER TABLE `back_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_status_inventory` (`id_status_inventory`),
  ADD KEY `id_adviser_user` (`id_adviser_user`),
  ADD KEY `id_brand_agency` (`id_brand_agency`),
  ADD KEY `id_opportunity` (`id_opportunity`),
  ADD KEY `fk_id_model_color_opt_one_bo_idx` (`id_model_color_opt_one`),
  ADD KEY `fk_id_model_color_opt_two_bo_idx` (`id_model_color_opt_two`);

--
-- Indices de la tabla `back_orders_bk`
--
ALTER TABLE `back_orders_bk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_status_inventory` (`id_status_inventory`),
  ADD KEY `id_adviser_user` (`id_adviser_user`),
  ADD KEY `id_brand_agency` (`id_brand_agency`),
  ADD KEY `id_opportunity` (`id_opportunity`),
  ADD KEY `fk_id_model_color_opt_one_bo_idx` (`id_model_color_opt_one`),
  ADD KEY `fk_id_model_color_opt_two_bo_idx` (`id_model_color_opt_two`);

--
-- Indices de la tabla `back_order_preowned`
--
ALTER TABLE `back_order_preowned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_brand_external_one` (`id_brand_external_one`),
  ADD KEY `id_brand_external_two` (`id_brand_external_two`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_brand_agency` (`id_brand_agency`),
  ADD KEY `id_opportunity` (`id_opportunity`);

--
-- Indices de la tabla `base_crv`
--
ALTER TABLE `base_crv`
  ADD KEY `idx_id_contacto_ss` (`id_contacto`);

--
-- Indices de la tabla `behavior_facebook`
--
ALTER TABLE `behavior_facebook`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `billing_address`
--
ALTER TABLE `billing_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_city_b` (`id_city`),
  ADD KEY `fk_id_state_b` (`id_state`);

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `brands_agencies`
--
ALTER TABLE `brands_agencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_agencie` (`id_brand`),
  ADD KEY `id_brand` (`id_agencie`),
  ADD KEY `idx_brand_agency` (`id_brand`,`id_agencie`),
  ADD KEY `idx_brand_agencies_agencie` (`id_agencie`);

--
-- Indices de la tabla `brands_categories_templates`
--
ALTER TABLE `brands_categories_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_brand_bct` (`id_brand`),
  ADD KEY `fk_id_category_template_bct` (`id_category_template`);

--
-- Indices de la tabla `brands_external`
--
ALTER TABLE `brands_external`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `breakdown_operations`
--
ALTER TABLE `breakdown_operations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `car_acquisition`
--
ALTER TABLE `car_acquisition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_color_exterior_tc` (`id_color_exterior`),
  ADD KEY `fk_id_type_take_tc` (`id_type_take`);

--
-- Indices de la tabla `car_categories`
--
ALTER TABLE `car_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `car_data`
--
ALTER TABLE `car_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_data_ibfk_1` (`id_inventory_reserved`);

--
-- Indices de la tabla `car_takes`
--
ALTER TABLE `car_takes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_brand_agency_ct` (`id_brand_agency`);

--
-- Indices de la tabla `categories_templates`
--
ALTER TABLE `categories_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category_template_variables`
--
ALTER TABLE `category_template_variables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category_template` (`id_category_template`),
  ADD KEY `id_variable` (`id_variable`);

--
-- Indices de la tabla `cc_emails`
--
ALTER TABLE `cc_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_type_sent_email_ce` (`id_type_sent_email`),
  ADD KEY `fk_id_brand_agency_ce` (`id_brand_agency`);

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cities_states`
--
ALTER TABLE `cities_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_city_cs` (`id_city`),
  ADD KEY `fk_id_state_cs` (`id_state`);

--
-- Indices de la tabla `civil_status`
--
ALTER TABLE `civil_status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `classifications`
--
ALTER TABLE `classifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_gender_c` (`id_gender`),
  ADD KEY `fk_id_profession_c` (`id_profession`),
  ADD KEY `fk_id_civil_status_c` (`id_civil_status`),
  ADD KEY `idx_client_id` (`id`),
  ADD KEY `idx_client_name` (`first_name`,`second_name`,`last_name`,`mothers_last_name`);

--
-- Indices de la tabla `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `colors_interior`
--
ALTER TABLE `colors_interior`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `commissionable_item`
--
ALTER TABLE `commissionable_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_commissionable_item_type_ci` (`id_commissionable_item_type`),
  ADD KEY `fk_id_brand_ci` (`id_brand`),
  ADD KEY `fk_id_brand_agency_ci` (`id_brand_agency`),
  ADD KEY `fk_id_type_schema_cs` (`id_type_schema`);

--
-- Indices de la tabla `commissionable_item_tiers`
--
ALTER TABLE `commissionable_item_tiers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_commissionable_item_cit` (`id_commissionable_item`);

--
-- Indices de la tabla `commissionable_item_type`
--
ALTER TABLE `commissionable_item_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `commission_credit_aperture`
--
ALTER TABLE `commission_credit_aperture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user_cca_idx` (`id_user`),
  ADD KEY `fk_id_purchase_order_cca_idx` (`id_purchase_order`);

--
-- Indices de la tabla `commission_mystery_shopper`
--
ALTER TABLE `commission_mystery_shopper`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user_ms` (`id_user`),
  ADD KEY `fk_id_model_version_year_ms` (`id_model_version_year`),
  ADD KEY `fk_id_unit_mystery_shopper_ms` (`id_unit_mystery_shopper`),
  ADD KEY `fk_id_commission_payment_request_ms` (`id_commission_payment_request`);

--
-- Indices de la tabla `commission_payment_purchase_order`
--
ALTER TABLE `commission_payment_purchase_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_purchase_order_cppo` (`id_purchase_order`),
  ADD KEY `fk_id_commission_payment_request_cppo` (`id_commission_payment_request`);

--
-- Indices de la tabla `commission_payment_request`
--
ALTER TABLE `commission_payment_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_status_comission_cpr` (`id_status_commission`),
  ADD KEY `fk_id_type_payment_commision_cpr` (`id_type_payment_commission`),
  ADD KEY `fk_id_user_request_cpr` (`id_user_request`);

--
-- Indices de la tabla `commission_payment_request_files`
--
ALTER TABLE `commission_payment_request_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_commission_payment_request_files_cprf_idx` (`id_commission_payment_request`);

--
-- Indices de la tabla `commission_payment_request_item`
--
ALTER TABLE `commission_payment_request_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_commission_payment_request_cpri` (`id_commission_request_purchase_order`),
  ADD KEY `fk_id_commission_request_purchase_order_cpri` (`id_commission_sale_addon`),
  ADD KEY `fk_id_commission_sale_scheme_applied_cpri` (`id_commission_sale_scheme_applied`);

--
-- Indices de la tabla `commission_payment_review`
--
ALTER TABLE `commission_payment_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_commission_payment_request_cpr` (`id_commission_payment_request`),
  ADD KEY `fk_id_commission_review_signatures_cpr` (`id_commission_review_signatures`),
  ADD KEY `fk_id_user_review_cpr` (`id_user_review`);

--
-- Indices de la tabla `commission_payment_user_request_item`
--
ALTER TABLE `commission_payment_user_request_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_commission_payment_request_cpri` (`id_commission_payment_request`),
  ADD KEY `fk_id_commissionable_item_cpri` (`id_commissionable_item`),
  ADD KEY `fk_id_user_cpri` (`id_user`);

--
-- Indices de la tabla `commission_review_signatures`
--
ALTER TABLE `commission_review_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_brand_agency_commission_sig` (`id_brand_agency`),
  ADD KEY `fk_id_rol_commission_sig` (`id_role`);

--
-- Indices de la tabla `commission_sale_addon`
--
ALTER TABLE `commission_sale_addon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_purchase_order_sac` (`id_purchase_order`),
  ADD KEY `fk_id_commissionable_item_sac` (`id_commissionable_item`);

--
-- Indices de la tabla `commission_sale_scheme_applied`
--
ALTER TABLE `commission_sale_scheme_applied`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_purchase_order_scsa` (`id_purchase_order`),
  ADD KEY `fk_id_commission_scheme_scsa` (`id_commission_scheme`);

--
-- Indices de la tabla `commission_scheme`
--
ALTER TABLE `commission_scheme`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_model_version_year_cs` (`id_model_version_year`),
  ADD KEY `fk_id_type_schema_cs` (`id_type_schema`),
  ADD KEY `fk_id_brand_cs` (`id_brand`);

--
-- Indices de la tabla `commission_tiers`
--
ALTER TABLE `commission_tiers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_commission_scheme_ct` (`id_commission_scheme`),
  ADD KEY `fk_id_type_commission_ct` (`id_type_commission`);

--
-- Indices de la tabla `constitutive_act`
--
ALTER TABLE `constitutive_act`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_state_ca` (`id_state`),
  ADD KEY `fk_id_way_pay_ca` (`id_payment_way`);

--
-- Indices de la tabla `contacto_pros_cal`
--
ALTER TABLE `contacto_pros_cal`
  ADD PRIMARY KEY (`COL1`),
  ADD KEY `COL 1` (`COL1`),
  ADD KEY `COL1` (`COL1`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_status_contact` (`id_status_contact`),
  ADD KEY `fk_id_source` (`id_source`),
  ADD KEY `fk_id_advertising` (`id_advertising`),
  ADD KEY `fk_id_contact_favorite` (`id_contact_favorite`),
  ADD KEY `fk_id_event` (`id_event`),
  ADD KEY `fk_id_type_gender` (`id_gender`),
  ADD KEY `fk_id_user_adviser_c` (`id_user_adviser`),
  ADD KEY `fk_id_brand_agency` (`id_brand_agency`) USING BTREE,
  ADD KEY `idx_contacts_id` (`id`),
  ADD KEY `idx_contacts_name` (`name`),
  ADD KEY `idx_contacts_lastname` (`lastname`),
  ADD KEY `idx_contacts_email` (`email`),
  ADD KEY `idx_contact_cellphone` (`cellphone`),
  ADD KEY `idx_user_adviser` (`id_user_adviser`),
  ADD KEY `idx_contacts_performance_boost` (`id_user_adviser`,`id`,`id_brand_agency`);
ALTER TABLE `contacts` ADD FULLTEXT KEY `fulltext_index` (`name`,`lastname`);

--
-- Indices de la tabla `contacts_day`
--
ALTER TABLE `contacts_day`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTypeHostess` (`id_type_hostess`),
  ADD KEY `idUserAdviser` (`id_user_adviser`),
  ADD KEY `idUserHostess` (`id_user_hostess`),
  ADD KEY `fk_id_user_deleted` (`id_user_deleted`),
  ADD KEY `fk_id_contact` (`id_contact`),
  ADD KEY `date_consignment` (`date_consignment`);

--
-- Indices de la tabla `contacts_day_sales_point`
--
ALTER TABLE `contacts_day_sales_point`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTypeHostess` (`id_type_hostess`),
  ADD KEY `idUserAdviser` (`id_user_adviser`),
  ADD KEY `idUserHostess` (`id_user_hostess`),
  ADD KEY `fk_id_user_deleted` (`id_user_deleted`),
  ADD KEY `fk_id_contact` (`id_contact`),
  ADD KEY `idSalesPoint` (`id_sales_point`);

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `credit_request`
--
ALTER TABLE `credit_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_tracking_credit_cr` (`id_tracking_credit`),
  ADD KEY `fk_id_user_cr` (`id_user`),
  ADD KEY `fk_id_financial_cr` (`id_financial`),
  ADD KEY `fk_id_status_credit_request_cr` (`id_status_credit_request`),
  ADD KEY `fk_id_type_credit_request_cr` (`id_type_credit_request`),
  ADD KEY `fk_id_warranty_cr` (`id_warranty`),
  ADD KEY `fk_id_insurance_cr` (`id_insurance`),
  ADD KEY `fk_id_type_insurance_cr` (`id_type_insurance`),
  ADD KEY `fk_id_reason_rejection_lcr` (`id_reason_rejection`),
  ADD KEY `fk_id_reason_approval_lcr` (`id_reason_approval`);

--
-- Indices de la tabla `credit_status`
--
ALTER TABLE `credit_status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cronjobs`
--
ALTER TABLE `cronjobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cronjobs_logs`
--
ALTER TABLE `cronjobs_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_cronjob` (`id_cronjob`);

--
-- Indices de la tabla `data_insurance`
--
ALTER TABLE `data_insurance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_term_ext_warranty_d` (`id_term_ext_warranty`),
  ADD KEY `fk_id_type_vehicle_d` (`id_type_vehicle`),
  ADD KEY `fk_id_types_insurance_d` (`id_types_insurance`),
  ADD KEY `fk_id_type_extension_di` (`id_type_extension`);

--
-- Indices de la tabla `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `days_off`
--
ALTER TABLE `days_off`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deadline_payment_order`
--
ALTER TABLE `deadline_payment_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_type_others_order_tpo` (`id_type_others_order`),
  ADD KEY `fk_id_type_deadline_order_tpo` (`id_type_deadline_order`);

--
-- Indices de la tabla `delivery_logs`
--
ALTER TABLE `delivery_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user_delivery_logs` (`id_user`),
  ADD KEY `id_purchase_order` (`id_purchase_order`);

--
-- Indices de la tabla `details_additional_expenses`
--
ALTER TABLE `details_additional_expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fk_id_deadline_payment_order_dae` (`id_deadline_payment_order`);

--
-- Indices de la tabla `details_payment`
--
ALTER TABLE `details_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_purchase_order_dp` (`id_purchase_order`),
  ADD KEY `fk_id_type_payment` (`id_type_payment_order`);

--
-- Indices de la tabla `details_tracking_preowned`
--
ALTER TABLE `details_tracking_preowned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_tracking_preowned_dtp` (`id_tracking_preowned`),
  ADD KEY `fk_id_option_tracking_preowned_dtp` (`id_option_tracking_preowned`);

--
-- Indices de la tabla `detail_inventory_preowned`
--
ALTER TABLE `detail_inventory_preowned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_inventory` (`id_inventory`),
  ADD KEY `fk_id_type_received_agency` (`id_type_received_agency`),
  ADD KEY `fk_id_car_category` (`id_car_category`),
  ADD KEY `fk_id_tower` (`id_tower`),
  ADD KEY `fk_id_brand_external` (`id_brand_external`);

--
-- Indices de la tabla `directory_files`
--
ALTER TABLE `directory_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_directory_folder` (`id_directory_folder`),
  ADD KEY `fk_id_model_df` (`id_model`),
  ADD KEY `id_model_year` (`id_model_year`);

--
-- Indices de la tabla `directory_files_agencies`
--
ALTER TABLE `directory_files_agencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_directory_file_dfba` (`id_directory_file`),
  ADD KEY `fk_id_brand_agency_directory` (`id_brand_agency`),
  ADD KEY `fk_id_intranet_folder_tif` (`id_intranet_folder`);

--
-- Indices de la tabla `directory_folders`
--
ALTER TABLE `directory_folders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documents_brand`
--
ALTER TABLE `documents_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_brand_doc` (`id_brand`),
  ADD KEY `fk_type_document_config` (`id_type_document_config`);

--
-- Indices de la tabla `documents_brand_agency`
--
ALTER TABLE `documents_brand_agency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_brand_agency_doc` (`id_brand_agency`),
  ADD KEY `fk_id_type_document_config` (`id_type_document_config`);

--
-- Indices de la tabla `document_audit`
--
ALTER TABLE `document_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_section_document_audit_du` (`id_section_document_audit`),
  ADD KEY `fk_id_repository_folder_da` (`id_repository_folder`),
  ADD KEY `fk_id_brand_da` (`id_brand`);

--
-- Indices de la tabla `driving_test`
--
ALTER TABLE `driving_test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user_adviser_dt` (`id_user_adviser`),
  ADD KEY `fk_id_brand_agency_dt` (`id_brand_agency`),
  ADD KEY `fk_id_user_hostess_dt` (`id_user_hostess`),
  ADD KEY `fk_id_driving_test_others_contact_dt` (`other_contact`),
  ADD KEY `fk_id_inventory_dt` (`id_inventory`),
  ADD KEY `id_contact` (`id_contact_day`),
  ADD KEY `id_opportunity` (`id_opportunity`);

--
-- Indices de la tabla `driving_test_signatures`
--
ALTER TABLE `driving_test_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_agency_signatures` (`id_brand_agency`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `eo_indicators`
--
ALTER TABLE `eo_indicators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `reference` (`reference`);

--
-- Indices de la tabla `eo_results_indicators`
--
ALTER TABLE `eo_results_indicators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_eo_user_metric_eri` (`id_eo_user_metric`),
  ADD KEY `fk_id_eo_indicator_eri` (`id_eo_indicator`);

--
-- Indices de la tabla `eo_user_metrics`
--
ALTER TABLE `eo_user_metrics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_brand_agency_eum` (`id_brand_agency`),
  ADD KEY `fk_id_user_eum` (`id_user`);

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_brand` (`id_brand`);

--
-- Indices de la tabla `external_tokens`
--
ALTER TABLE `external_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `provider_UNIQUE` (`provider`);

--
-- Indices de la tabla `financials`
--
ALTER TABLE `financials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_brand` (`id_brand`);

--
-- Indices de la tabla `financing`
--
ALTER TABLE `financing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_type_insurance_f` (`id_financial`);

--
-- Indices de la tabla `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `forms_answers`
--
ALTER TABLE `forms_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_question` (`id_question`),
  ADD KEY `id_choice` (`id_choice`),
  ADD KEY `id_form_response` (`id_form_response`);

--
-- Indices de la tabla `forms_choices`
--
ALTER TABLE `forms_choices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_question` (`id_question`);

--
-- Indices de la tabla `forms_permissions`
--
ALTER TABLE `forms_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_form` (`id_form`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_brand_agency` (`id_brand_agency`);

--
-- Indices de la tabla `forms_questions`
--
ALTER TABLE `forms_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`),
  ADD KEY `id_form` (`id_form`);

--
-- Indices de la tabla `forms_users_responses`
--
ALTER TABLE `forms_users_responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_form` (`id_form`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hostess`
--
ALTER TABLE `hostess`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTypeHostess` (`id_type_hostess`),
  ADD KEY `idUserAdviser` (`id_user_adviser`),
  ADD KEY `idUserHostess` (`id_user_hostess`);

--
-- Indices de la tabla `hostess_checklist`
--
ALTER TABLE `hostess_checklist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user_hc` (`id_user`),
  ADD KEY `id_brand_agency` (`id_brand_agency`);

--
-- Indices de la tabla `hostess_checklist_answers`
--
ALTER TABLE `hostess_checklist_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_hostess_checklist_question_hca` (`id_hostess_checklist_question`);

--
-- Indices de la tabla `hostess_checklist_questions`
--
ALTER TABLE `hostess_checklist_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_hostess_checklist_section_hcq` (`id_hostess_checklist_section`),
  ADD KEY `fk_id_role_hcq` (`id_role`);

--
-- Indices de la tabla `hostess_checklist_questions_answers`
--
ALTER TABLE `hostess_checklist_questions_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_hostess_checklist_hcqa` (`id_hostess_checklist`),
  ADD KEY `fk_id_hostess_checklist_answer_hcqa` (`id_hostess_checklist_answer`);

--
-- Indices de la tabla `hostess_checklist_questions_type_control`
--
ALTER TABLE `hostess_checklist_questions_type_control`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_hostess_checklist_type_control_ho` (`id_hostess_checklist_type_control`),
  ADD KEY `fk_id_hostess_checklist_questions_ho` (`id_hostess_checklist_questions`);

--
-- Indices de la tabla `hostess_checklist_type_control`
--
ALTER TABLE `hostess_checklist_type_control`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hostess_checklist_type_sections`
--
ALTER TABLE `hostess_checklist_type_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_brand_hcts` (`id_brand`);

--
-- Indices de la tabla `hostess_logs`
--
ALTER TABLE `hostess_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUserAd` (`id_user_adviser`),
  ADD KEY `idTypeSH` (`id_type_status_hostess`),
  ADD KEY `idUserRes` (`id_user_responsible`);

--
-- Indices de la tabla `hostess_notifications`
--
ALTER TABLE `hostess_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_type_s_hostess` (`id_type_status_hostess`),
  ADD KEY `fk_id_user_sender` (`id_user_sender`),
  ADD KEY `fk_id_type_notification` (`id_type_notification`),
  ADD KEY `fk_id_user_receiver` (`id_user_receiver`),
  ADD KEY `fk_id_module_hn` (`id_module`);

--
-- Indices de la tabla `hours_room`
--
ALTER TABLE `hours_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_room_1` (`id_room`);

--
-- Indices de la tabla `identifications`
--
ALTER TABLE `identifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `insurances`
--
ALTER TABLE `insurances`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `insurance_policies`
--
ALTER TABLE `insurance_policies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_term_ext_warranty_d` (`id_term_ext_warranty`),
  ADD KEY `fk_id_type_vehicle_d` (`id_type_vehicle`),
  ADD KEY `fk_id_types_insurance_d` (`id_types_insurance`),
  ADD KEY `fk_id_parent_ip_idx` (`id_parent`),
  ADD KEY `fk_id_brand_agency_ip_idx` (`id_brand_agency`),
  ADD KEY `fk_id_opportunity_ip_idx` (`id_opportunity`),
  ADD KEY `fk_id_user_ip_idx` (`id_user`),
  ADD KEY `fk_id_type_purchase_ip_idx` (`id_type_purchase`),
  ADD KEY `fk_id_reason_rejection_ip_idx` (`id_reason_rejection`),
  ADD KEY `fk_id_financial_ip_idx` (`id_financial`),
  ADD KEY `id_contact` (`id_contact`),
  ADD KEY `id_data_insurance` (`id_data_insurance`);

--
-- Indices de la tabla `intranet_files`
--
ALTER TABLE `intranet_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_intranet_folder_if_idx` (`id_intranet_folder`);

--
-- Indices de la tabla `intranet_folders`
--
ALTER TABLE `intranet_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_parent_if_idx` (`id_parent`);

--
-- Indices de la tabla `intranet_logs`
--
ALTER TABLE `intranet_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_folder` (`id_folder`),
  ADD KEY `id_file` (`id_file`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `intranet_permissions`
--
ALTER TABLE `intranet_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user_u_idx` (`id_user`),
  ADD KEY `fk_id_role_r_idx` (`id_role`),
  ADD KEY `fk_id_brand_agency_idx` (`id_brand_agency`),
  ADD KEY `fk_id_intranet_folde_if_idx` (`id_intranet_folder`);

--
-- Indices de la tabla `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_vin_status_inventory` (`vin`,`status`,`id_type_inventory`,`number`,`arrival`) USING BTREE,
  ADD KEY `vin` (`vin`),
  ADD KEY `fk_id_location` (`id_location`),
  ADD KEY `fk_id_inventory_floor` (`id_inventory_floor`),
  ADD KEY `fk_id_transmission` (`id_transmission`),
  ADD KEY `fk_id_color_i` (`id_color`),
  ADD KEY `fk_id_color_interior_i` (`id_color_interior`),
  ADD KEY `fk_id_model_version_i` (`id_model_version`),
  ADD KEY `fk_id_status_inventory_i` (`id_status_inventory`),
  ADD KEY `fk_id_type_inventory_i` (`id_type_inventory`),
  ADD KEY `fk_id_brand_agency_o` (`id_brand_agency`),
  ADD KEY `inventario_sygo_ibfk_1` (`id_model_version_year`),
  ADD KEY `idx_inventories_id` (`id`),
  ADD KEY `idx_inventories_brand_date` (`id_brand_agency`,`createdAt`);

--
-- Indices de la tabla `inventories_bk`
--
ALTER TABLE `inventories_bk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vin` (`vin`),
  ADD KEY `fk_id_location` (`id_location`),
  ADD KEY `fk_id_inventory_floor` (`id_inventory_floor`),
  ADD KEY `fk_id_transmission` (`id_transmission`),
  ADD KEY `fk_id_color_i` (`id_color`),
  ADD KEY `fk_id_color_interior_i` (`id_color_interior`),
  ADD KEY `fk_id_model_version_i` (`id_model_version`),
  ADD KEY `fk_id_status_inventory_i` (`id_status_inventory`),
  ADD KEY `fk_id_type_inventory_i` (`id_type_inventory`),
  ADD KEY `fk_id_brand_agency_o` (`id_brand_agency`),
  ADD KEY `inventario_sygo_ibfk_1` (`id_model_version_year`),
  ADD KEY `idx_inventories_bk_id` (`id`);

--
-- Indices de la tabla `inventories_checkmark_photos`
--
ALTER TABLE `inventories_checkmark_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_inventory_icp` (`id_inventory`);

--
-- Indices de la tabla `inventories_deleted`
--
ALTER TABLE `inventories_deleted`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vin` (`vin`),
  ADD KEY `fk_id_location` (`id_location`),
  ADD KEY `fk_id_inventory_floor` (`id_inventory_floor`),
  ADD KEY `fk_id_transmission` (`id_transmission`),
  ADD KEY `fk_id_color_i` (`id_color`),
  ADD KEY `fk_id_color_interior_i` (`id_color_interior`),
  ADD KEY `fk_id_model_version_i` (`id_model_version`),
  ADD KEY `fk_id_status_inventory_i` (`id_status_inventory`),
  ADD KEY `fk_id_type_inventory_i` (`id_type_inventory`),
  ADD KEY `fk_id_brand_agency_o` (`id_brand_agency`),
  ADD KEY `inventario_sygo_ibfk_1` (`id_model_version_year`),
  ADD KEY `idx_inventories_deleted_id` (`id`);

--
-- Indices de la tabla `inventories_details_confirmed`
--
ALTER TABLE `inventories_details_confirmed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_inventory_iv_idx` (`id_inventory`);

--
-- Indices de la tabla `inventories_floor`
--
ALTER TABLE `inventories_floor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventories_mvy`
--
ALTER TABLE `inventories_mvy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_vin_status_inventory` (`vin`,`status`,`id_type_inventory`,`number`,`arrival`) USING BTREE,
  ADD KEY `vin` (`vin`),
  ADD KEY `fk_id_location` (`id_location`),
  ADD KEY `fk_id_inventory_floor` (`id_inventory_floor`),
  ADD KEY `fk_id_transmission` (`id_transmission`),
  ADD KEY `fk_id_color_i` (`id_color`),
  ADD KEY `fk_id_color_interior_i` (`id_color_interior`),
  ADD KEY `fk_id_model_version_i` (`id_model_version`),
  ADD KEY `fk_id_status_inventory_i` (`id_status_inventory`),
  ADD KEY `fk_id_type_inventory_i` (`id_type_inventory`),
  ADD KEY `fk_id_brand_agency_o` (`id_brand_agency`),
  ADD KEY `inventario_sygo_ibfk_1` (`id_model_version_year`),
  ADD KEY `idx_inventories_mvy_id` (`id`);

--
-- Indices de la tabla `inventories_reserved`
--
ALTER TABLE `inventories_reserved`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_opportunity_reserved` (`id_opportunity`),
  ADD KEY `fk_user_reserved` (`id_user_adviser`),
  ADD KEY `fk_inventory_reserved` (`id_inventory`),
  ADD KEY `fk_brand_agency` (`id_brand_agency`),
  ADD KEY `idx_inventories_reserved_idOpportunity` (`id_opportunity`),
  ADD KEY `fk_id_user_request_ir` (`id_user_request`);

--
-- Indices de la tabla `inventories_reserved_deleted`
--
ALTER TABLE `inventories_reserved_deleted`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_opportunity_reserved` (`id_opportunity`),
  ADD KEY `fk_user_reserved` (`id_user_adviser`),
  ADD KEY `fk_inventory_reserved` (`id_inventory`),
  ADD KEY `fk_brand_agency` (`id_brand_agency`),
  ADD KEY `idx_inventories_reserved_deleted_idOpportunity` (`id_opportunity`);

--
-- Indices de la tabla `inventory_accessories`
--
ALTER TABLE `inventory_accessories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_inventory_ia` (`id_inventory`),
  ADD KEY `fk_id_accessory_ia` (`id_accessory`);

--
-- Indices de la tabla `inventory_descriptions`
--
ALTER TABLE `inventory_descriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_inventory` (`id_inventory`);

--
-- Indices de la tabla `inventory_detail`
--
ALTER TABLE `inventory_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_inventory_id` (`id_inventory`);

--
-- Indices de la tabla `inventory_floor_logs`
--
ALTER TABLE `inventory_floor_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventory_general_info`
--
ALTER TABLE `inventory_general_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_inventory_gi` (`id_inventory`),
  ADD KEY `fk_id_category_gi` (`id_category`),
  ADD KEY `fk_id_status_reception_gi` (`id_status_reception`);

--
-- Indices de la tabla `inventory_mechanical_info`
--
ALTER TABLE `inventory_mechanical_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_inventory_imf` (`id_inventory`),
  ADD KEY `fk_id_traction_imf` (`id_traction`),
  ADD KEY `fk_id_transmission_imf` (`id_transmission`),
  ADD KEY `fk_id_steering_imf` (`id_steering`),
  ADD KEY `fk_id_fuel_imf` (`id_fuel`);

--
-- Indices de la tabla `inventory_photos`
--
ALTER TABLE `inventory_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_inventory` (`id_inventory`),
  ADD KEY `id_photo_type` (`id_photo_type`);

--
-- Indices de la tabla `inventory_prices`
--
ALTER TABLE `inventory_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_inventory_ip` (`id_inventory`);

--
-- Indices de la tabla `inventory_seminuevos_info`
--
ALTER TABLE `inventory_seminuevos_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_inventory_si` (`id_inventory`);

--
-- Indices de la tabla `inventory_type_history`
--
ALTER TABLE `inventory_type_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_inventory_i` (`id_inventory`),
  ADD KEY `fk_id_type_inventory_before_i` (`id_type_inventory_before`),
  ADD KEY `fk_id_type_inventory_after_i` (`id_type_inventory_after`),
  ADD KEY `fk_id_changed_by_i` (`id_changed_by`);

--
-- Indices de la tabla `inventory_warranties`
--
ALTER TABLE `inventory_warranties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_inventory_iw` (`id_inventory`);

--
-- Indices de la tabla `isan`
--
ALTER TABLE `isan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTypeIsan` (`id_type_isan`);

--
-- Indices de la tabla `leads_api_sirena`
--
ALTER TABLE `leads_api_sirena`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `license_plates_cost`
--
ALTER TABLE `license_plates_cost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_agency_lpc` (`id_agency`);

--
-- Indices de la tabla `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_brand_agency_l` (`id_brand_agency`);

--
-- Indices de la tabla `log_activity`
--
ALTER TABLE `log_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `log_credit_request`
--
ALTER TABLE `log_credit_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_credit_request_lcr` (`id_credit_request`),
  ADD KEY `fk_id_financial_lcr` (`id_financial`),
  ADD KEY `fk_id_status_credit_request_lcr` (`id_status_credit_request`);

--
-- Indices de la tabla `log_inventory_intelisis`
--
ALTER TABLE `log_inventory_intelisis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_inventory_lii` (`id_inventory`),
  ADD KEY `fk_id_type_operation_intelisis_lii` (`id_type_operation_intelisis`);

--
-- Indices de la tabla `log_review_audit`
--
ALTER TABLE `log_review_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_type_process_log_lra` (`id_type_process_log`),
  ADD KEY `fk_id_purchase_order_lra` (`id_purchase_order`),
  ADD KEY `fk_id_role_lra` (`id_role`),
  ADD KEY `fk_id_user_lra` (`id_user`);

--
-- Indices de la tabla `log_transfer_contacts`
--
ALTER TABLE `log_transfer_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_contact_log_transfer` (`id_contact`),
  ADD KEY `id_oportunity_log_transfer` (`id_oportunity`),
  ADD KEY `id_activity_log_transfer` (`id_activity`);

--
-- Indices de la tabla `lotes_20jun24_xlsx___hoja_1`
--
ALTER TABLE `lotes_20jun24_xlsx___hoja_1`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `manage_reserved`
--
ALTER TABLE `manage_reserved`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_manage_reserved` (`id_user`),
  ADD KEY `fk_inventory_manage_reserved` (`id_inventory`),
  ADD KEY `fk_brand_agency_manage_reserved` (`id_brand_agency`);

--
-- Indices de la tabla `metrics`
--
ALTER TABLE `metrics`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metrics_assignment_metrics`
--
ALTER TABLE `metrics_assignment_metrics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_quarter_mam` (`id_quarter`),
  ADD KEY `fk_id_metric_mam` (`id_metric`),
  ADD KEY `fk_id_agency_mam` (`id_agency`);

--
-- Indices de la tabla `metrics_assignment_targets`
--
ALTER TABLE `metrics_assignment_targets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user_mat` (`id_user`),
  ADD KEY `fk_id_target_mat` (`id_target`),
  ADD KEY `fk_id_quarter_mat` (`id_quarter`);

--
-- Indices de la tabla `metrics_brands_agencies`
--
ALTER TABLE `metrics_brands_agencies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metrics_meetings`
--
ALTER TABLE `metrics_meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user_mm` (`id_user`),
  ADD KEY `fk_id_quarter_mm` (`id_quarter`);

--
-- Indices de la tabla `metrics_meeting_brand_quarters`
--
ALTER TABLE `metrics_meeting_brand_quarters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_metrics_assigment_metric_mmbq` (`id_metrics_assigment_metric`);

--
-- Indices de la tabla `metrics_meeting_score`
--
ALTER TABLE `metrics_meeting_score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_metrics_meeting_mms` (`id_metrics_meeting`),
  ADD KEY `fk_id_metrics_meeting_user_mms` (`id_metrics_meeting_user`);

--
-- Indices de la tabla `metrics_meeting_users`
--
ALTER TABLE `metrics_meeting_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metrics_pendings`
--
ALTER TABLE `metrics_pendings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_metrics_meeting_users_mp` (`id_metrics_meeting_users`),
  ADD KEY `fk_id_metrics_meeting_mp` (`id_metrics_meeting`);

--
-- Indices de la tabla `metrics_quarters`
--
ALTER TABLE `metrics_quarters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metrics_targets`
--
ALTER TABLE `metrics_targets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metrics_targets_progress`
--
ALTER TABLE `metrics_targets_progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_metrics_target_users_mtp` (`id_metrics_target_users`),
  ADD KEY `fk_id_metrics_meeting_mtp` (`id_metrics_meeting`);

--
-- Indices de la tabla `metrics_target_users`
--
ALTER TABLE `metrics_target_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_quarter_mtu` (`id_quarter`),
  ADD KEY `fk_id_metrics_assigment_targets_mtu` (`id_metrics_assigment_targets`);

--
-- Indices de la tabla `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idBrandm` (`id_brand`),
  ADD KEY `fk_id_brand_external_m_idx` (`id_brand_external`);

--
-- Indices de la tabla `models_colors`
--
ALTER TABLE `models_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_color_mc` (`id_color`),
  ADD KEY `fk_id_model_mc_idx` (`id_model_version_year`);

--
-- Indices de la tabla `models_extension`
--
ALTER TABLE `models_extension`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_model_extension` (`id_model`),
  ADD KEY `fk_id_type_extension_me` (`id_type_extension`);

--
-- Indices de la tabla `models_maintenance`
--
ALTER TABLE `models_maintenance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_model_maintenance` (`id_model_year`);

--
-- Indices de la tabla `models_photo`
--
ALTER TABLE `models_photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPhotoType` (`id_photo_type`),
  ADD KEY `fk_id_module` (`id_model_year`);

--
-- Indices de la tabla `models_versions`
--
ALTER TABLE `models_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idVers` (`id_version`),
  ADD KEY `fk_model_year` (`id_model_year`),
  ADD KEY `fk_id_model_mv` (`id_model`);

--
-- Indices de la tabla `models_versions_colors`
--
ALTER TABLE `models_versions_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idColor` (`id_color`),
  ADD KEY `id_model_version` (`id_model_version`);

--
-- Indices de la tabla `models_versions_years`
--
ALTER TABLE `models_versions_years`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_model_version_mvy` (`id_model_version`),
  ADD KEY `fk_id_year_mvy` (`id_model_year`);

--
-- Indices de la tabla `models_years`
--
ALTER TABLE `models_years`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_year` (`id_year`),
  ADD KEY `fk_id_model_my` (`id_model`);

--
-- Indices de la tabla `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_module_type` (`id_module_type`),
  ADD KEY `id_parent` (`id_parent`),
  ADD KEY `fk_id_module_system_m` (`id_module_system`);

--
-- Indices de la tabla `modules_system`
--
ALTER TABLE `modules_system`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modules_type`
--
ALTER TABLE `modules_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `months`
--
ALTER TABLE `months`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mystery_shopper`
--
ALTER TABLE `mystery_shopper`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_question_mistery_shoper_ams` (`id_question_mystery_shopper`),
  ADD KEY `fk_id_opportunity_ams` (`id_opportunity`);

--
-- Indices de la tabla `notification_config`
--
ALTER TABLE `notification_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_notification_config` (`id_module`,`id_group`,`id_role`,`id_brand_agency`),
  ADD KEY `fk_id_module_nc` (`id_module`),
  ADD KEY `fk_id_group_nc` (`id_group`),
  ADD KEY `fk_id_role_nc` (`id_role`),
  ADD KEY `fk_id_brand_agency_nc` (`id_brand_agency`);

--
-- Indices de la tabla `notification_groups`
--
ALTER TABLE `notification_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_module_group` (`id_module`,`code`),
  ADD KEY `fk_id_module_cr` (`id_module`);

--
-- Indices de la tabla `notification_modules`
--
ALTER TABLE `notification_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indices de la tabla `operations_data`
--
ALTER TABLE `operations_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_check_car_price` (`check_car_price`),
  ADD KEY `id_check_iva` (`check_iva`),
  ADD KEY `id_check_national_car_insurance` (`check_national_car_insurance`),
  ADD KEY `id_check_civil_liability_insurance` (`check_civil_liability_insurance`),
  ADD KEY `id_check_life_insurance` (`check_life_insurance`),
  ADD KEY `id_check_interests` (`check_interests`),
  ADD KEY `id_check_accessories` (`check_accessories`),
  ADD KEY `id_check_extended_warranty` (`check_extended_warranty`),
  ADD KEY `id_check_coverage` (`check_others_time`),
  ADD KEY `fk_check_open_commission_od` (`check_open_commission`);

--
-- Indices de la tabla `oportunities`
--
ALTER TABLE `oportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_type_vehicle_o` (`id_type_vehicle`),
  ADD KEY `fk_id_status_oportunity` (`id_status_oportunity`),
  ADD KEY `fk_id_purchase_description` (`id_purchase_description`),
  ADD KEY `fk_id_contact_o` (`id_contact`),
  ADD KEY `fk_id_version_o` (`id_version`),
  ADD KEY `fk_id_type_purchase` (`id_type_purchase`),
  ADD KEY `fk_id_purchase_buyback` (`id_purchase_buyback`),
  ADD KEY `fk_id_model_o` (`id_model`),
  ADD KEY `fk_id_color_o` (`id_color`),
  ADD KEY `fk_id_status_purchase_o` (`id_status_purchase`),
  ADD KEY `id_brand_agency` (`id_brand_agency`),
  ADD KEY `id_last_template` (`id_last_template`),
  ADD KEY `oportunities_ibfk_3` (`id_source`),
  ADD KEY `idx_opo_createdAt` (`createdAt`),
  ADD KEY `idx_opo_id_opportunity_old` (`id_opportunity_old`),
  ADD KEY `idx_oportunities_id` (`id`),
  ADD KEY `fk_id_type_use_o` (`id_type_use`),
  ADD KEY `idx_oportunities_filter` (`id`,`status`,`id_brand_agency`);

--
-- Indices de la tabla `opo_financial`
--
ALTER TABLE `opo_financial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_oportunidad` (`id_oportunidad`);

--
-- Indices de la tabla `opportunity_files`
--
ALTER TABLE `opportunity_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_repository_files_limit_of` (`id_repository_files_limit`),
  ADD KEY `fk_id_opportunity_of` (`id_opportunity`);

--
-- Indices de la tabla `opportunity_no_sale`
--
ALTER TABLE `opportunity_no_sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_opportunity_ons` (`id_opportunity`),
  ADD KEY `fk_id_brand_external_ons` (`id_brand_external`),
  ADD KEY `fk_id_reason_no_sale_ons` (`id_reason_no_sale`);

--
-- Indices de la tabla `options_tracking_preowned`
--
ALTER TABLE `options_tracking_preowned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_areas_tracking_preowned_otp` (`id_areas_tracking_preowned`),
  ADD KEY `fk_id_type_control_otp` (`id_type_control`);

--
-- Indices de la tabla `order_purchase_answer`
--
ALTER TABLE `order_purchase_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_order_purchase_question_o` (`id_order_purchase_question`),
  ADD KEY `fk_id_purchase_order_o` (`id_purchase_order`);

--
-- Indices de la tabla `order_purchase_form`
--
ALTER TABLE `order_purchase_form`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_brand_o` (`id_brand`);

--
-- Indices de la tabla `order_purchase_questions`
--
ALTER TABLE `order_purchase_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_order_purchase_section_o` (`id_order_purchase_section`),
  ADD KEY `fk_id_type_control_o` (`id_type_control`);

--
-- Indices de la tabla `order_purchase_section`
--
ALTER TABLE `order_purchase_section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_order_purchase_form_o` (`id_order_purchase_form`);

--
-- Indices de la tabla `others_contacts`
--
ALTER TABLE `others_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payment_deadlines`
--
ALTER TABLE `payment_deadlines`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payment_way`
--
ALTER TABLE `payment_way`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_payment_method_w` (`id_payment_method`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_folders`
--
ALTER TABLE `personal_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_directory_folder_personal` (`id_directory_folder`),
  ADD KEY `fk_id_user_personal` (`id_user`);

--
-- Indices de la tabla `phone_guide`
--
ALTER TABLE `phone_guide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_opportunity_o` (`id_opportunity`);

--
-- Indices de la tabla `photos_type`
--
ALTER TABLE `photos_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `power_incorporation`
--
ALTER TABLE `power_incorporation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_state_pi` (`id_state`);

--
-- Indices de la tabla `preparation_models`
--
ALTER TABLE `preparation_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_pm` (`id_model`);

--
-- Indices de la tabla `prices_model_version`
--
ALTER TABLE `prices_model_version`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idModelVersion` (`id_model_version`),
  ADD KEY `fk_id_model_version_year_pmv_idx` (`id_model_version_year`);

--
-- Indices de la tabla `prices_services`
--
ALTER TABLE `prices_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idModelVersionPS` (`id_model_version`);

--
-- Indices de la tabla `profession`
--
ALTER TABLE `profession`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `purchases_buyback`
--
ALTER TABLE `purchases_buyback`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `purchases_description`
--
ALTER TABLE `purchases_description`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `purchase_black_list`
--
ALTER TABLE `purchase_black_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_purchase_order_pbl_idx` (`id_purchase_order`);

--
-- Indices de la tabla `purchase_data`
--
ALTER TABLE `purchase_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_type_purchase_p` (`id_type_purchase`),
  ADD KEY `fk_id_type_sale_p2` (`id_type_sale`),
  ADD KEY `fk_id_buyback_type_p` (`id_buyback_type`),
  ADD KEY `fk_id_type_commission` (`id_type_commission`);

--
-- Indices de la tabla `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_opportunity_p` (`id_opportunity`),
  ADD KEY `fk_id_anti_money_p` (`id_anti_money`),
  ADD KEY `fk_id_billing_address_p` (`id_billing_address`),
  ADD KEY `fk_id_client_p` (`id_client`),
  ADD KEY `fk_id_constitutive_act_p` (`id_constitutive_act`),
  ADD KEY `fk_id_power_incorporation_p` (`id_power_incorporation`),
  ADD KEY `fk_id_purchase_data_p` (`id_purchase_data`),
  ADD KEY `fk_id_car_acquisition_p` (`id_car_acquisition`),
  ADD KEY `fk_id_car_data_p` (`id_car_data`),
  ADD KEY `fk_id_data_insurance_p` (`id_data_insurance`),
  ADD KEY `fk_id_financing_p` (`id_financing`),
  ADD KEY `fk_id_details_additional_expenses_p` (`id_details_additional_expenses`),
  ADD KEY `fk_id_breakdown_operations_p` (`id_breakdown_operations`),
  ADD KEY `fk_id_operations_data_p` (`id_operations_data`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_brand_agency` (`id_brand_agency`),
  ADD KEY `delivery` (`delivery`),
  ADD KEY `release` (`release`),
  ADD KEY `idx_purchase_old` (`id_purchase_old`),
  ADD KEY `purchase_order_ibfk_5` (`id_status_purchase_order`),
  ADD KEY `id_tracking_status_invoices` (`id_tracking_status_invoices`);

--
-- Indices de la tabla `purchase_order_approved`
--
ALTER TABLE `purchase_order_approved`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_op` (`id_purchase_order`),
  ADD KEY `id_signature` (`id_signature`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `fk_id_user_config_ap` (`id_user_config`),
  ADD KEY `id_user_delete` (`id_user_delete`);

--
-- Indices de la tabla `purchase_order_cancel_log`
--
ALTER TABLE `purchase_order_cancel_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_pocl` (`id_user`),
  ADD KEY `fk_purchase_pocl` (`id_purchase_order`);

--
-- Indices de la tabla `purchase_order_comment`
--
ALTER TABLE `purchase_order_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_purchase_order_poc_idx` (`id_purchase_order`),
  ADD KEY `fk_id_type_comment_poc_idx` (`id_type_comment`);

--
-- Indices de la tabla `purchase_order_notification`
--
ALTER TABLE `purchase_order_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_brand_agency_am` (`id_brand_agency`),
  ADD KEY `fk_id_rol_am` (`id_role`),
  ADD KEY `fk_id_user_am` (`id_user`);

--
-- Indices de la tabla `purchase_order_signatures`
--
ALTER TABLE `purchase_order_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user_sig` (`id_user`),
  ADD KEY `fk_id_brand_agency_sig` (`id_brand_agency`),
  ADD KEY `fk_id_rol_sig` (`id_role`);

--
-- Indices de la tabla `quarterly`
--
ALTER TABLE `quarterly`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `questions_mystery_shopper`
--
ALTER TABLE `questions_mystery_shopper`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_brand` (`id_brand`);

--
-- Indices de la tabla `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_contact_q` (`id_contact`),
  ADD KEY `fk_id_opportunity_q` (`id_opportunity`),
  ADD KEY `fk_id_model_year_q` (`id_model_year`),
  ADD KEY `id_type_quote` (`id_type_quote`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `quotes_details`
--
ALTER TABLE `quotes_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_financial` (`id_financial`),
  ADD KEY `fk_id_payment_deadline` (`id_payment_deadline`),
  ADD KEY `fk_id_tire_coverage` (`id_tire_coverage`),
  ADD KEY `fk_id_quote` (`id_quote`),
  ADD KEY `fk_id_version_qd` (`id_version`);

--
-- Indices de la tabla `quotes_express`
--
ALTER TABLE `quotes_express`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user_qe` (`id_user`);

--
-- Indices de la tabla `quotes_express_models`
--
ALTER TABLE `quotes_express_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_model` (`id_model`),
  ADD KEY `fk_id_quote_express` (`id_quote_express`),
  ADD KEY `fk_id_model_year_qem` (`id_model_year`);

--
-- Indices de la tabla `reasons_no_sale`
--
ALTER TABLE `reasons_no_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reason_approval`
--
ALTER TABLE `reason_approval`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reason_rejection`
--
ALTER TABLE `reason_rejection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rejection_module` (`id_rejection_module`);

--
-- Indices de la tabla `reason_sheet`
--
ALTER TABLE `reason_sheet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_opportunity` (`id_opportunity`);

--
-- Indices de la tabla `rejection_module`
--
ALTER TABLE `rejection_module`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `repository`
--
ALTER TABLE `repository`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_oportunity_r` (`id_opportunity`);

--
-- Indices de la tabla `repository_files`
--
ALTER TABLE `repository_files`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `repository_files_limit`
--
ALTER TABLE `repository_files_limit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_repository_folder_re` (`id_repository_folder`),
  ADD KEY `fk_id_repository_file_re` (`id_repository_file`);

--
-- Indices de la tabla `repository_folders`
--
ALTER TABLE `repository_folders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `repository_others_contact`
--
ALTER TABLE `repository_others_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_opportunity_file_roc` (`id_opportunity_file`),
  ADD KEY `fk_id_driving_test_others_contact_roc` (`id_others_contact`);

--
-- Indices de la tabla `reserved_schedule`
--
ALTER TABLE `reserved_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_schedule` (`id_schedule`),
  ADD KEY `fk_id_type_reserved_room` (`id_type_reserved_room`),
  ADD KEY `id_opportunity` (`id_opportunity`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `reserved_schedule_ibfk_3` (`id_room`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles_modules_permissions`
--
ALTER TABLE `roles_modules_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_module` (`id_module`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_permission` (`id_permission`),
  ADD KEY `fk_id_brand_agency_rmp` (`id_brand_agency`);

--
-- Indices de la tabla `role_access_folders`
--
ALTER TABLE `role_access_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_directory_folder_position` (`id_directory_folder`),
  ADD KEY `fk_id_role` (`id_role`);

--
-- Indices de la tabla `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_brand_agency_room_1` (`id_brand_agency`);

--
-- Indices de la tabla `sales_plan`
--
ALTER TABLE `sales_plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_model_sp` (`id_model`),
  ADD KEY `fk_id_month_sp` (`id_month`),
  ADD KEY `fk_id_brand_agency_sp` (`id_brand_agency`);

--
-- Indices de la tabla `sales_points`
--
ALTER TABLE `sales_points`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sales_year`
--
ALTER TABLE `sales_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_brand_agency` (`id_brand_agency`);

--
-- Indices de la tabla `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hour_room` (`id_hour_room`),
  ADD KEY `fk_day` (`id_day`);

--
-- Indices de la tabla `section_document_audit`
--
ALTER TABLE `section_document_audit`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idBrandSettings` (`id_brand`);

--
-- Indices de la tabla `socket_connected`
--
ALTER TABLE `socket_connected`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_socket` (`id_user`);

--
-- Indices de la tabla `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `status_activity`
--
ALTER TABLE `status_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `status_assignment`
--
ALTER TABLE `status_assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `status_commission`
--
ALTER TABLE `status_commission`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `status_contacts`
--
ALTER TABLE `status_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `status_credit_request`
--
ALTER TABLE `status_credit_request`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `status_inventory`
--
ALTER TABLE `status_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `status_oportunities`
--
ALTER TABLE `status_oportunities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `status_purchases`
--
ALTER TABLE `status_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `status_purchase_order`
--
ALTER TABLE `status_purchase_order`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `status_tracking_credit`
--
ALTER TABLE `status_tracking_credit`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `status_tracking_details`
--
ALTER TABLE `status_tracking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_category_template` (`id_category_template`);

--
-- Indices de la tabla `templates_logs`
--
ALTER TABLE `templates_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_template_log` (`id_template`),
  ADD KEY `fk_id_opportunity_log` (`id_opportunity`);

--
-- Indices de la tabla `term_ext_warranty`
--
ALTER TABLE `term_ext_warranty`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tire_coverage`
--
ALTER TABLE `tire_coverage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_brand` (`id_brand`);

--
-- Indices de la tabla `tower`
--
ALTER TABLE `tower`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tracking_credit`
--
ALTER TABLE `tracking_credit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_opportunity_tc` (`id_opportunity`),
  ADD KEY `fk_id_status_tracking_credit_tc` (`id_status_tracking_credit`),
  ADD KEY `fk_id_financial_final_tc` (`id_financial_final`),
  ADD KEY `fk_id_status_credit_request_final_tc` (`id_status_credit_request_final`),
  ADD KEY `fk_id_type_vehicle_tc` (`id_type_vehicle`),
  ADD KEY `fk_id_model_tc` (`id_model`),
  ADD KEY `fk_id_version_tc` (`id_version`),
  ADD KEY `fk_id_color_tc` (`id_color`),
  ADD KEY `fk_id_type_price_tc` (`id_type_price`),
  ADD KEY `fk_id_credit_request_tc` (`id_credit_request`);

--
-- Indices de la tabla `tracking_document_audit`
--
ALTER TABLE `tracking_document_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_document_pld_tdp` (`id_document_audit`),
  ADD KEY `fk_id_log_review_audit_tda_idx` (`id_log_review_audit`),
  ADD KEY `fk_id_purchase_order_tda` (`id_purchase_order`);

--
-- Indices de la tabla `tracking_preowned`
--
ALTER TABLE `tracking_preowned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_inventory` (`id_inventory`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_areas_tracking_preowned` (`id_areas_tracking_preowned`),
  ADD KEY `id_tracking_status` (`id_tracking_status`);

--
-- Indices de la tabla `tracking_status`
--
ALTER TABLE `tracking_status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transfer_base_datos`
--
ALTER TABLE `transfer_base_datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transfer_contact_logs`
--
ALTER TABLE `transfer_contact_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idCTCL` (`id_contact`),
  ADD KEY `fk_idOUTCL` (`id_old_user`),
  ADD KEY `fk_idUTCL` (`id_user`),
  ADD KEY `id_user_cdc` (`id_user_cdc`);

--
-- Indices de la tabla `transfer_inventory_logs`
--
ALTER TABLE `transfer_inventory_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_inventory_log` (`id_inventory`);

--
-- Indices de la tabla `types_insurances`
--
ALTER TABLE `types_insurances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_insurance_i` (`id_insurance`),
  ADD KEY `fk_id_type_insurance_i` (`id_type_insurance`);

--
-- Indices de la tabla `types_use`
--
ALTER TABLE `types_use`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_activity`
--
ALTER TABLE `type_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_appointments`
--
ALTER TABLE `type_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_audit_phases`
--
ALTER TABLE `type_audit_phases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_car_acquisition`
--
ALTER TABLE `type_car_acquisition`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_comment`
--
ALTER TABLE `type_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_commission`
--
ALTER TABLE `type_commission`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_contact_favorites`
--
ALTER TABLE `type_contact_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_control`
--
ALTER TABLE `type_control`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_credit_request`
--
ALTER TABLE `type_credit_request`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_deadline_order`
--
ALTER TABLE `type_deadline_order`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_document_config`
--
ALTER TABLE `type_document_config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_extension`
--
ALTER TABLE `type_extension`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_fuels`
--
ALTER TABLE `type_fuels`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_gap`
--
ALTER TABLE `type_gap`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_hostess`
--
ALTER TABLE `type_hostess`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_insurance`
--
ALTER TABLE `type_insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_inventory`
--
ALTER TABLE `type_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_isan`
--
ALTER TABLE `type_isan`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_notifications`
--
ALTER TABLE `type_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_operation_intelisis`
--
ALTER TABLE `type_operation_intelisis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_others_order`
--
ALTER TABLE `type_others_order`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_payment_commission`
--
ALTER TABLE `type_payment_commission`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_payment_order`
--
ALTER TABLE `type_payment_order`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_price`
--
ALTER TABLE `type_price`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_process_log`
--
ALTER TABLE `type_process_log`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_purchase`
--
ALTER TABLE `type_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_quote`
--
ALTER TABLE `type_quote`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_received_agency`
--
ALTER TABLE `type_received_agency`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_reserved_room`
--
ALTER TABLE `type_reserved_room`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_sale`
--
ALTER TABLE `type_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_scheme`
--
ALTER TABLE `type_scheme`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_sent_email`
--
ALTER TABLE `type_sent_email`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_status_hostess`
--
ALTER TABLE `type_status_hostess`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_steering`
--
ALTER TABLE `type_steering`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_task`
--
ALTER TABLE `type_task`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_traction`
--
ALTER TABLE `type_traction`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_transmission`
--
ALTER TABLE `type_transmission`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_vehicles`
--
ALTER TABLE `type_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ucan_amda`
--
ALTER TABLE `ucan_amda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_month_ua` (`id_month`),
  ADD KEY `fk_id_ucan_brand_ua` (`id_ucan_brand`);

--
-- Indices de la tabla `ucan_amda_images`
--
ALTER TABLE `ucan_amda_images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ucan_brands`
--
ALTER TABLE `ucan_brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parent` (`id_parent`);

--
-- Indices de la tabla `ucan_brands_agencies`
--
ALTER TABLE `ucan_brands_agencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_dealer_group_uba` (`id_dealer_group`),
  ADD KEY `fk_id_city_uba` (`id_city`);

--
-- Indices de la tabla `ucan_dealer_groups`
--
ALTER TABLE `ucan_dealer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ucan_sales`
--
ALTER TABLE `ucan_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ucan_brand_agency` (`id_ucan_brand_agency`),
  ADD KEY `id_month` (`id_month`);

--
-- Indices de la tabla `unit_mystery_shopper`
--
ALTER TABLE `unit_mystery_shopper`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_brand_ums` (`id_brand`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `email` (`email`),
  ADD KEY `idBrandAgency` (`id_brand_agency`),
  ADD KEY `idx_user_adviser` (`id`,`status`,`disable`,`id_brand_agency`);

--
-- Indices de la tabla `user_commission`
--
ALTER TABLE `user_commission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user_uc` (`id_user`);

--
-- Indices de la tabla `user_hostess`
--
ALTER TABLE `user_hostess`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUs` (`id_user`),
  ADD KEY `idScheme` (`id_scheme`),
  ADD KEY `idTypeSS` (`id_type_status_hostess`);

--
-- Indices de la tabla `user_logs_notifications`
--
ALTER TABLE `user_logs_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user` (`id_user`),
  ADD KEY `fk_id_hostess_notification` (`id_hostess_notification`),
  ADD KEY `user_logs_notifications_ibfk_1` (`id_contact`);

--
-- Indices de la tabla `variables`
--
ALTER TABLE `variables`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_brand` (`id_brand`);

--
-- Indices de la tabla `versions_brands`
--
ALTER TABLE `versions_brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_version_brand` (`id_version`,`id_brand`),
  ADD KEY `fk_id_version_vb` (`id_version`),
  ADD KEY `fk_id_brand_vb` (`id_brand`);

--
-- Indices de la tabla `wharehouse`
--
ALTER TABLE `wharehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `with_waiting_list`
--
ALTER TABLE `with_waiting_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_advertising_wwl2` (`id_advertising`),
  ADD KEY `fk_id_brand_agency_wwl2` (`id_brand_agency`),
  ADD KEY `fk_id_contact_wwl2` (`id_contact`),
  ADD KEY `fk_id_source_wwl2` (`id_source`),
  ADD KEY `with_waiting_list_ibfk_12` (`id_classification`),
  ADD KEY `fk_id_behavior_wwl2` (`id_behavior`);

--
-- Indices de la tabla `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accessories_vehicles`
--
ALTER TABLE `accessories_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `activities_new`
--
ALTER TABLE `activities_new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `activity_business_line_corporate_purpose`
--
ALTER TABLE `activity_business_line_corporate_purpose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `activity_happy_call_surveys`
--
ALTER TABLE `activity_happy_call_surveys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `activity_occupation_profession`
--
ALTER TABLE `activity_occupation_profession`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `adviser_change_history`
--
ALTER TABLE `adviser_change_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `agencies`
--
ALTER TABLE `agencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anti_money_address`
--
ALTER TABLE `anti_money_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anti_money_laundering`
--
ALTER TABLE `anti_money_laundering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anti_money_laundering_beneficiary`
--
ALTER TABLE `anti_money_laundering_beneficiary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anti_money_laundering_moral`
--
ALTER TABLE `anti_money_laundering_moral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anti_money_laundering_moral_controller`
--
ALTER TABLE `anti_money_laundering_moral_controller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anti_money_laundering_moral_references`
--
ALTER TABLE `anti_money_laundering_moral_references`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anti_money_laundering_references`
--
ALTER TABLE `anti_money_laundering_references`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anti_money_moral_address`
--
ALTER TABLE `anti_money_moral_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `approved_checklist`
--
ALTER TABLE `approved_checklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `approved_checklist_answer`
--
ALTER TABLE `approved_checklist_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `approved_checklist_question`
--
ALTER TABLE `approved_checklist_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `approved_checklist_questions_answers`
--
ALTER TABLE `approved_checklist_questions_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `apps_sygo`
--
ALTER TABLE `apps_sygo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `areas_tracking_preowned`
--
ALTER TABLE `areas_tracking_preowned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `audit_log_review`
--
ALTER TABLE `audit_log_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `audit_review_checklist`
--
ALTER TABLE `audit_review_checklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `audit_review_sections`
--
ALTER TABLE `audit_review_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `audit_review_section_checklist_type_brand`
--
ALTER TABLE `audit_review_section_checklist_type_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `audit_tracking_checklist`
--
ALTER TABLE `audit_tracking_checklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_refresh_tokens`
--
ALTER TABLE `auth_refresh_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `autometrica_catalog`
--
ALTER TABLE `autometrica_catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `autometrica_mapping`
--
ALTER TABLE `autometrica_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `autometrica_prices_cache`
--
ALTER TABLE `autometrica_prices_cache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `back_orders`
--
ALTER TABLE `back_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `back_orders_bk`
--
ALTER TABLE `back_orders_bk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `back_order_preowned`
--
ALTER TABLE `back_order_preowned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `behavior_facebook`
--
ALTER TABLE `behavior_facebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `billing_address`
--
ALTER TABLE `billing_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `brands_agencies`
--
ALTER TABLE `brands_agencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `brands_categories_templates`
--
ALTER TABLE `brands_categories_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `brands_external`
--
ALTER TABLE `brands_external`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `breakdown_operations`
--
ALTER TABLE `breakdown_operations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `car_acquisition`
--
ALTER TABLE `car_acquisition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `car_categories`
--
ALTER TABLE `car_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `car_data`
--
ALTER TABLE `car_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `car_takes`
--
ALTER TABLE `car_takes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories_templates`
--
ALTER TABLE `categories_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `category_template_variables`
--
ALTER TABLE `category_template_variables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cc_emails`
--
ALTER TABLE `cc_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cities_states`
--
ALTER TABLE `cities_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `civil_status`
--
ALTER TABLE `civil_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `classifications`
--
ALTER TABLE `classifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `colors_interior`
--
ALTER TABLE `colors_interior`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `commissionable_item`
--
ALTER TABLE `commissionable_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `commissionable_item_tiers`
--
ALTER TABLE `commissionable_item_tiers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `commissionable_item_type`
--
ALTER TABLE `commissionable_item_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `commission_credit_aperture`
--
ALTER TABLE `commission_credit_aperture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `commission_mystery_shopper`
--
ALTER TABLE `commission_mystery_shopper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `commission_payment_purchase_order`
--
ALTER TABLE `commission_payment_purchase_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `commission_payment_request`
--
ALTER TABLE `commission_payment_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `commission_payment_request_files`
--
ALTER TABLE `commission_payment_request_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `commission_payment_request_item`
--
ALTER TABLE `commission_payment_request_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `commission_payment_review`
--
ALTER TABLE `commission_payment_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `commission_payment_user_request_item`
--
ALTER TABLE `commission_payment_user_request_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `commission_review_signatures`
--
ALTER TABLE `commission_review_signatures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `commission_sale_addon`
--
ALTER TABLE `commission_sale_addon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `commission_sale_scheme_applied`
--
ALTER TABLE `commission_sale_scheme_applied`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `commission_scheme`
--
ALTER TABLE `commission_scheme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `commission_tiers`
--
ALTER TABLE `commission_tiers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `constitutive_act`
--
ALTER TABLE `constitutive_act`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contacts_day`
--
ALTER TABLE `contacts_day`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contacts_day_sales_point`
--
ALTER TABLE `contacts_day_sales_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `credit_request`
--
ALTER TABLE `credit_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `credit_status`
--
ALTER TABLE `credit_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cronjobs`
--
ALTER TABLE `cronjobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cronjobs_logs`
--
ALTER TABLE `cronjobs_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `data_insurance`
--
ALTER TABLE `data_insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `days`
--
ALTER TABLE `days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `days_off`
--
ALTER TABLE `days_off`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `deadline_payment_order`
--
ALTER TABLE `deadline_payment_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `delivery_logs`
--
ALTER TABLE `delivery_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `details_additional_expenses`
--
ALTER TABLE `details_additional_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `details_payment`
--
ALTER TABLE `details_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `details_tracking_preowned`
--
ALTER TABLE `details_tracking_preowned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detail_inventory_preowned`
--
ALTER TABLE `detail_inventory_preowned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `directory_files`
--
ALTER TABLE `directory_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `directory_files_agencies`
--
ALTER TABLE `directory_files_agencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `directory_folders`
--
ALTER TABLE `directory_folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documents_brand`
--
ALTER TABLE `documents_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documents_brand_agency`
--
ALTER TABLE `documents_brand_agency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `document_audit`
--
ALTER TABLE `document_audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `driving_test`
--
ALTER TABLE `driving_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `driving_test_signatures`
--
ALTER TABLE `driving_test_signatures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `eo_indicators`
--
ALTER TABLE `eo_indicators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `eo_results_indicators`
--
ALTER TABLE `eo_results_indicators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `eo_user_metrics`
--
ALTER TABLE `eo_user_metrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `external_tokens`
--
ALTER TABLE `external_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `financials`
--
ALTER TABLE `financials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `financing`
--
ALTER TABLE `financing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `forms_answers`
--
ALTER TABLE `forms_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `forms_choices`
--
ALTER TABLE `forms_choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `forms_permissions`
--
ALTER TABLE `forms_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `forms_questions`
--
ALTER TABLE `forms_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `forms_users_responses`
--
ALTER TABLE `forms_users_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hostess`
--
ALTER TABLE `hostess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hostess_checklist`
--
ALTER TABLE `hostess_checklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hostess_checklist_answers`
--
ALTER TABLE `hostess_checklist_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hostess_checklist_questions`
--
ALTER TABLE `hostess_checklist_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hostess_checklist_questions_answers`
--
ALTER TABLE `hostess_checklist_questions_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hostess_checklist_questions_type_control`
--
ALTER TABLE `hostess_checklist_questions_type_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hostess_checklist_type_control`
--
ALTER TABLE `hostess_checklist_type_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hostess_checklist_type_sections`
--
ALTER TABLE `hostess_checklist_type_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hostess_logs`
--
ALTER TABLE `hostess_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hostess_notifications`
--
ALTER TABLE `hostess_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hours_room`
--
ALTER TABLE `hours_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `identifications`
--
ALTER TABLE `identifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `insurances`
--
ALTER TABLE `insurances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `insurance_policies`
--
ALTER TABLE `insurance_policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `intranet_files`
--
ALTER TABLE `intranet_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `intranet_folders`
--
ALTER TABLE `intranet_folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `intranet_logs`
--
ALTER TABLE `intranet_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `intranet_permissions`
--
ALTER TABLE `intranet_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventories_bk`
--
ALTER TABLE `inventories_bk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventories_checkmark_photos`
--
ALTER TABLE `inventories_checkmark_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventories_deleted`
--
ALTER TABLE `inventories_deleted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventories_details_confirmed`
--
ALTER TABLE `inventories_details_confirmed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventories_floor`
--
ALTER TABLE `inventories_floor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventories_mvy`
--
ALTER TABLE `inventories_mvy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventories_reserved`
--
ALTER TABLE `inventories_reserved`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventories_reserved_deleted`
--
ALTER TABLE `inventories_reserved_deleted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventory_accessories`
--
ALTER TABLE `inventory_accessories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventory_descriptions`
--
ALTER TABLE `inventory_descriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventory_detail`
--
ALTER TABLE `inventory_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventory_floor_logs`
--
ALTER TABLE `inventory_floor_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventory_general_info`
--
ALTER TABLE `inventory_general_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventory_mechanical_info`
--
ALTER TABLE `inventory_mechanical_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventory_photos`
--
ALTER TABLE `inventory_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventory_prices`
--
ALTER TABLE `inventory_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventory_seminuevos_info`
--
ALTER TABLE `inventory_seminuevos_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventory_type_history`
--
ALTER TABLE `inventory_type_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventory_warranties`
--
ALTER TABLE `inventory_warranties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `isan`
--
ALTER TABLE `isan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `leads_api_sirena`
--
ALTER TABLE `leads_api_sirena`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `license_plates_cost`
--
ALTER TABLE `license_plates_cost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `log_credit_request`
--
ALTER TABLE `log_credit_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `log_inventory_intelisis`
--
ALTER TABLE `log_inventory_intelisis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `log_review_audit`
--
ALTER TABLE `log_review_audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `log_transfer_contacts`
--
ALTER TABLE `log_transfer_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lotes_20jun24_xlsx___hoja_1`
--
ALTER TABLE `lotes_20jun24_xlsx___hoja_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `manage_reserved`
--
ALTER TABLE `manage_reserved`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metrics`
--
ALTER TABLE `metrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metrics_assignment_metrics`
--
ALTER TABLE `metrics_assignment_metrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metrics_assignment_targets`
--
ALTER TABLE `metrics_assignment_targets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metrics_brands_agencies`
--
ALTER TABLE `metrics_brands_agencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metrics_meetings`
--
ALTER TABLE `metrics_meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metrics_meeting_brand_quarters`
--
ALTER TABLE `metrics_meeting_brand_quarters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metrics_meeting_score`
--
ALTER TABLE `metrics_meeting_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metrics_meeting_users`
--
ALTER TABLE `metrics_meeting_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metrics_pendings`
--
ALTER TABLE `metrics_pendings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metrics_quarters`
--
ALTER TABLE `metrics_quarters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metrics_targets`
--
ALTER TABLE `metrics_targets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metrics_targets_progress`
--
ALTER TABLE `metrics_targets_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metrics_target_users`
--
ALTER TABLE `metrics_target_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `models`
--
ALTER TABLE `models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `models_colors`
--
ALTER TABLE `models_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `models_extension`
--
ALTER TABLE `models_extension`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `models_maintenance`
--
ALTER TABLE `models_maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `models_photo`
--
ALTER TABLE `models_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `models_versions`
--
ALTER TABLE `models_versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `models_versions_colors`
--
ALTER TABLE `models_versions_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `models_versions_years`
--
ALTER TABLE `models_versions_years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `models_years`
--
ALTER TABLE `models_years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modules_system`
--
ALTER TABLE `modules_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modules_type`
--
ALTER TABLE `modules_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `months`
--
ALTER TABLE `months`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mystery_shopper`
--
ALTER TABLE `mystery_shopper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notification_config`
--
ALTER TABLE `notification_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notification_groups`
--
ALTER TABLE `notification_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notification_modules`
--
ALTER TABLE `notification_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `operations_data`
--
ALTER TABLE `operations_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oportunities`
--
ALTER TABLE `oportunities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `opo_financial`
--
ALTER TABLE `opo_financial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `opportunity_files`
--
ALTER TABLE `opportunity_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `opportunity_no_sale`
--
ALTER TABLE `opportunity_no_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `options_tracking_preowned`
--
ALTER TABLE `options_tracking_preowned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_purchase_answer`
--
ALTER TABLE `order_purchase_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_purchase_form`
--
ALTER TABLE `order_purchase_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_purchase_questions`
--
ALTER TABLE `order_purchase_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_purchase_section`
--
ALTER TABLE `order_purchase_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `others_contacts`
--
ALTER TABLE `others_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_deadlines`
--
ALTER TABLE `payment_deadlines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_way`
--
ALTER TABLE `payment_way`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_folders`
--
ALTER TABLE `personal_folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phone_guide`
--
ALTER TABLE `phone_guide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `photos_type`
--
ALTER TABLE `photos_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `power_incorporation`
--
ALTER TABLE `power_incorporation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `preparation_models`
--
ALTER TABLE `preparation_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prices_model_version`
--
ALTER TABLE `prices_model_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prices_services`
--
ALTER TABLE `prices_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `profession`
--
ALTER TABLE `profession`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `purchases_buyback`
--
ALTER TABLE `purchases_buyback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `purchases_description`
--
ALTER TABLE `purchases_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `purchase_black_list`
--
ALTER TABLE `purchase_black_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `purchase_data`
--
ALTER TABLE `purchase_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `purchase_order_approved`
--
ALTER TABLE `purchase_order_approved`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `purchase_order_cancel_log`
--
ALTER TABLE `purchase_order_cancel_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `purchase_order_comment`
--
ALTER TABLE `purchase_order_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `purchase_order_notification`
--
ALTER TABLE `purchase_order_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `purchase_order_signatures`
--
ALTER TABLE `purchase_order_signatures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `quarterly`
--
ALTER TABLE `quarterly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `questions_mystery_shopper`
--
ALTER TABLE `questions_mystery_shopper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `quotes_details`
--
ALTER TABLE `quotes_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `quotes_express`
--
ALTER TABLE `quotes_express`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `quotes_express_models`
--
ALTER TABLE `quotes_express_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reasons_no_sale`
--
ALTER TABLE `reasons_no_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reason_approval`
--
ALTER TABLE `reason_approval`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reason_rejection`
--
ALTER TABLE `reason_rejection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reason_sheet`
--
ALTER TABLE `reason_sheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rejection_module`
--
ALTER TABLE `rejection_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `repository`
--
ALTER TABLE `repository`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `repository_files`
--
ALTER TABLE `repository_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `repository_files_limit`
--
ALTER TABLE `repository_files_limit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `repository_folders`
--
ALTER TABLE `repository_folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `repository_others_contact`
--
ALTER TABLE `repository_others_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reserved_schedule`
--
ALTER TABLE `reserved_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles_modules_permissions`
--
ALTER TABLE `roles_modules_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `role_access_folders`
--
ALTER TABLE `role_access_folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sales_plan`
--
ALTER TABLE `sales_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sales_points`
--
ALTER TABLE `sales_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sales_year`
--
ALTER TABLE `sales_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `section_document_audit`
--
ALTER TABLE `section_document_audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `socket_connected`
--
ALTER TABLE `socket_connected`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sources`
--
ALTER TABLE `sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `status_activity`
--
ALTER TABLE `status_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `status_assignment`
--
ALTER TABLE `status_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `status_commission`
--
ALTER TABLE `status_commission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `status_contacts`
--
ALTER TABLE `status_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `status_credit_request`
--
ALTER TABLE `status_credit_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `status_inventory`
--
ALTER TABLE `status_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `status_oportunities`
--
ALTER TABLE `status_oportunities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `status_purchases`
--
ALTER TABLE `status_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `status_purchase_order`
--
ALTER TABLE `status_purchase_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `status_tracking_credit`
--
ALTER TABLE `status_tracking_credit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `status_tracking_details`
--
ALTER TABLE `status_tracking_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `templates_logs`
--
ALTER TABLE `templates_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `term_ext_warranty`
--
ALTER TABLE `term_ext_warranty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tire_coverage`
--
ALTER TABLE `tire_coverage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tower`
--
ALTER TABLE `tower`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tracking_credit`
--
ALTER TABLE `tracking_credit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tracking_document_audit`
--
ALTER TABLE `tracking_document_audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tracking_preowned`
--
ALTER TABLE `tracking_preowned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tracking_status`
--
ALTER TABLE `tracking_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transfer_base_datos`
--
ALTER TABLE `transfer_base_datos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transfer_contact_logs`
--
ALTER TABLE `transfer_contact_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transfer_inventory_logs`
--
ALTER TABLE `transfer_inventory_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `types_insurances`
--
ALTER TABLE `types_insurances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `types_use`
--
ALTER TABLE `types_use`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_activity`
--
ALTER TABLE `type_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_appointments`
--
ALTER TABLE `type_appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_audit_phases`
--
ALTER TABLE `type_audit_phases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_car_acquisition`
--
ALTER TABLE `type_car_acquisition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_comment`
--
ALTER TABLE `type_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_commission`
--
ALTER TABLE `type_commission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_contact_favorites`
--
ALTER TABLE `type_contact_favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_control`
--
ALTER TABLE `type_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_credit_request`
--
ALTER TABLE `type_credit_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_deadline_order`
--
ALTER TABLE `type_deadline_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_document_config`
--
ALTER TABLE `type_document_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_extension`
--
ALTER TABLE `type_extension`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_fuels`
--
ALTER TABLE `type_fuels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_gap`
--
ALTER TABLE `type_gap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_hostess`
--
ALTER TABLE `type_hostess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_insurance`
--
ALTER TABLE `type_insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_inventory`
--
ALTER TABLE `type_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_isan`
--
ALTER TABLE `type_isan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_notifications`
--
ALTER TABLE `type_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_operation_intelisis`
--
ALTER TABLE `type_operation_intelisis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_others_order`
--
ALTER TABLE `type_others_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_payment_commission`
--
ALTER TABLE `type_payment_commission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_payment_order`
--
ALTER TABLE `type_payment_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_price`
--
ALTER TABLE `type_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_process_log`
--
ALTER TABLE `type_process_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_purchase`
--
ALTER TABLE `type_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_quote`
--
ALTER TABLE `type_quote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_received_agency`
--
ALTER TABLE `type_received_agency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_reserved_room`
--
ALTER TABLE `type_reserved_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_sale`
--
ALTER TABLE `type_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_scheme`
--
ALTER TABLE `type_scheme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_sent_email`
--
ALTER TABLE `type_sent_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_status_hostess`
--
ALTER TABLE `type_status_hostess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_steering`
--
ALTER TABLE `type_steering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_task`
--
ALTER TABLE `type_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_traction`
--
ALTER TABLE `type_traction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_transmission`
--
ALTER TABLE `type_transmission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_vehicles`
--
ALTER TABLE `type_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ucan_amda`
--
ALTER TABLE `ucan_amda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ucan_amda_images`
--
ALTER TABLE `ucan_amda_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ucan_brands`
--
ALTER TABLE `ucan_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ucan_brands_agencies`
--
ALTER TABLE `ucan_brands_agencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ucan_dealer_groups`
--
ALTER TABLE `ucan_dealer_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ucan_sales`
--
ALTER TABLE `ucan_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `unit_mystery_shopper`
--
ALTER TABLE `unit_mystery_shopper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user_commission`
--
ALTER TABLE `user_commission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user_hostess`
--
ALTER TABLE `user_hostess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user_logs_notifications`
--
ALTER TABLE `user_logs_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `variables`
--
ALTER TABLE `variables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `versions`
--
ALTER TABLE `versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `versions_brands`
--
ALTER TABLE `versions_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wharehouse`
--
ALTER TABLE `wharehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `with_waiting_list`
--
ALTER TABLE `with_waiting_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `years`
--
ALTER TABLE `years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

-- --------------------------------------------------------

--
-- Estructura para la vista `log_activity_v`
--
DROP TABLE IF EXISTS `log_activity_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sygo_crm`@`%` SQL SECURITY DEFINER VIEW `log_activity_v`  AS SELECT `op`.`id_brand_agency` AS `idBrandAgency`, `op`.`id` AS `id`, `op`.`id` AS `idOpportunity`, `op`.`id_contact` AS `idContact`, (select `a`.`id` from `activities` `a` where `a`.`id_oportunity` = `op`.`id` and `a`.`id_status_activity` = 2 and `a`.`date_promise` <= date_format(convert_tz(current_timestamp(),'+00:00','-07:00'),'%Y-%m-%d') and `a`.`status` is true order by `a`.`date_promise` desc limit 1) AS `idLastActivity`, (select `a`.`id` from `activities` `a` where `a`.`id_oportunity` = `op`.`id` and `a`.`status` is true and `a`.`id_status_activity` = 1 and `a`.`date_promise` >= date_format(convert_tz(current_timestamp(),'+00:00','-07:00'),'%Y-%m-%d') order by `a`.`date_promise` limit 1) AS `idNextActivity`, (select `a`.`id` from `activities` `a` where `a`.`status` is true and `a`.`id_oportunity` = `op`.`id` and `a`.`id_type_activity` = 6 order by `a`.`createdAt` desc limit 1) AS `idCouchingActivity` FROM `oportunities` AS `op` WHERE `op`.`status` is true ;

-- --------------------------------------------------------

--
-- Estructura para la vista `ventas_totales_v`
--
DROP TABLE IF EXISTS `ventas_totales_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sygo_crm`@`%` SQL SECURITY DEFINER VIEW `ventas_totales_v`  AS SELECT `oportunities`.`id` AS `idop`, `po`.`id` AS `idpo`, `po`.`id_user` AS `id_user`, `oportunities`.`id_contact` AS `idc`, `brandag`.`id` AS `idBrandAgency`, `brandag`.`name` AS `ciudad`, `users`.`name` AS `asesor`, `inventories`.`vin` AS `vin`, `oportunities`.`id_status_purchase` AS `id_status_purchase`, `type_vehicles`.`name` AS `nvo_dmo_sn`, `pd`.`billing_date` AS `billing_date`, `tp`.`name` AS `credito_contado`, `financials`.`name` AS `financiera`, `financials`.`financing_house` AS `financiera_casa`, `type_insurance`.`name` AS `tipo_seguro`, `insurances`.`name` AS `aseguradora` FROM (((((((((((((((`oportunities` join `purchase_order` `po` on(`oportunities`.`id` = `po`.`id_opportunity` and `po`.`status` = 1)) join `purchase_data` `pd` on(`pd`.`id` = `po`.`id_purchase_data`)) join `users` on(`users`.`id` = `po`.`id_user`)) join `brands_agencies` `brandag` on(`brandag`.`id` = `users`.`id_brand_agency`)) join `data_insurance` on(`data_insurance`.`id` = `po`.`id_data_insurance`)) join `type_vehicles` on(`data_insurance`.`id_type_vehicle` = `type_vehicles`.`id`)) left join `car_data` `card` on(`card`.`id` = `po`.`id_car_data`)) left join `inventories_reserved` `invres` on(`card`.`id_inventory_reserved` = `invres`.`id`)) left join `inventories` on(`inventories`.`id` = `invres`.`id_inventory`)) left join `financing` on(`financing`.`id` = `po`.`id_financing`)) left join `financials` on(`financials`.`id` = `financing`.`id_financial`)) left join `type_purchase` `tp` on(`pd`.`id_type_purchase` = `tp`.`id`)) left join `types_insurances` on(`types_insurances`.`id` = `data_insurance`.`id_types_insurance`)) left join `insurances` on(`insurances`.`id` = `types_insurances`.`id_insurance`)) left join `type_insurance` on(`type_insurance`.`id` = `types_insurances`.`id_type_insurance`)) WHERE `oportunities`.`id_status_purchase` in (7,10) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_full_data_model`
--
DROP TABLE IF EXISTS `view_full_data_model`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sygo_crm`@`%` SQL SECURITY DEFINER VIEW `view_full_data_model`  AS SELECT `mvy`.`id` AS `id_model_version_year`, `mvy`.`name` AS `model_version_year`, `my`.`id` AS `id_model_version`, `mv`.`id` AS `id_model_year`, `m`.`id` AS `id_model`, `v`.`id` AS `id_version`, `m`.`name` AS `model`, `v`.`name` AS `version`, `y`.`year` AS `year`, `tp`.`id` AS `id_type_extension`, `tp`.`name` AS `type_extension`, `be`.`id` AS `id_brand_external`, `be`.`name` AS `brand_external` FROM ((((((((`models_versions_years` `mvy` join `models_years` `my` on(`my`.`id` = `mvy`.`id_model_year`)) join `years` `y` on(`y`.`id` = `my`.`id_year`)) join `models_versions` `mv` on(`mv`.`id` = `mvy`.`id_model_version`)) join `versions` `v` on(`v`.`id` = `mv`.`id_version`)) join `models` `m` on(`m`.`id` = `mv`.`id_model`)) left join `models_extension` `me` on(`me`.`id_model` = `m`.`id` and `me`.`status` is true)) left join `type_extension` `tp` on(`tp`.`id` = `me`.`id_type_extension`)) left join `brands_external` `be` on(`be`.`id` = `m`.`id_brand_external`)) WHERE `mvy`.`status` is true AND `my`.`status` is true AND `mv`.`status` is true AND `v`.`status` is true AND `m`.`status` is true ORDER BY `mvy`.`id` ASC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_include_credit_request`
--
DROP TABLE IF EXISTS `view_include_credit_request`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sygo_crm`@`%` SQL SECURITY DEFINER VIEW `view_include_credit_request`  AS SELECT `cr`.`id` AS `id`, `sct`.`name` AS `statusCreditRequestName`, `tcr`.`name` AS `typeCreditRequestName`, `f`.`name` AS `financialName`, `te`.`name` AS `typeExtensionName`, `i`.`name` AS `insurancesName`, `ti`.`name` AS `typeInsuranceName`, `rr`.`name` AS `reasonRejectionName`, `ra`.`name` AS `reasonApprovalName`, concat_ws(' ',`sct`.`name`,`tcr`.`name`,`f`.`name`,`te`.`name`,`i`.`name`,`ti`.`name`,`rr`.`name`,`ra`.`name`) AS `fieldSearch` FROM ((((((((`credit_request` `cr` left join `status_credit_request` `sct` on(`sct`.`id` = `cr`.`id_status_credit_request` and `sct`.`status` is true)) left join `type_credit_request` `tcr` on(`tcr`.`id` = `cr`.`id_type_credit_request` and `tcr`.`status` is true)) left join `financials` `f` on(`f`.`id` = `cr`.`id_financial` and `f`.`status` is true)) left join `type_extension` `te` on(`te`.`id` = `cr`.`id_warranty` and `te`.`status` is true)) left join `insurances` `i` on(`i`.`id` = `cr`.`id_insurance` and `i`.`status` is true)) left join `type_insurance` `ti` on(`ti`.`id` = `cr`.`id_type_insurance` and `ti`.`status` is true)) left join `reason_rejection` `rr` on(`rr`.`id` = `cr`.`id_reason_rejection` and `rr`.`status` is true)) left join `reason_approval` `ra` on(`ra`.`id` = `cr`.`id_reason_approval` and `ra`.`status` is true)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_include_tracking_credit`
--
DROP TABLE IF EXISTS `view_include_tracking_credit`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sygo_crm`@`%` SQL SECURITY DEFINER VIEW `view_include_tracking_credit`  AS SELECT `tc`.`id` AS `id`, `stc`.`name` AS `statusTrackingCreditName`, `f`.`name` AS `financialsName`, `scr`.`name` AS `statusCreditRequestName`, `tp`.`name` AS `typePriceName`, `m`.`name` AS `modelsName`, `v`.`name` AS `versionsName`, `tv`.`name` AS `typeVehiclesName`, `c`.`name` AS `colorsName`, concat_ws(' ',`m`.`name`,`v`.`name`,`tc`.`year`) AS `modelName`, concat_ws(' ',`stc`.`name`,`f`.`name`,`scr`.`name`,`tp`.`name`,`m`.`name`,`v`.`name`,`tv`.`name`,`c`.`name`) AS `fieldSearch` FROM (((((((((`tracking_credit` `tc` left join `status_tracking_credit` `stc` on(`tc`.`id_status_tracking_credit` = `stc`.`id` and `stc`.`status` is true)) left join `credit_request` `cr` on(`tc`.`id_credit_request` = `cr`.`id` and `cr`.`status` is true)) left join `financials` `f` on(`f`.`id` = `cr`.`id_financial` and `f`.`status` is true)) left join `status_credit_request` `scr` on(`scr`.`id` = `cr`.`id_status_credit_request` and `scr`.`status` is true)) left join `type_price` `tp` on(`tp`.`id` = `tc`.`id_type_price` and `tp`.`status` is true)) left join `models` `m` on(`m`.`id` = `tc`.`id_model` and `m`.`status` is true)) left join `versions` `v` on(`v`.`id` = `tc`.`id_version` and `v`.`status` is true)) left join `type_vehicles` `tv` on(`tv`.`id` = `tc`.`id_type_vehicle` and `tv`.`status` is true)) left join `colors` `c` on(`c`.`id` = `tc`.`id_color` and `c`.`status` is true)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_apvs_activos`
--
DROP TABLE IF EXISTS `vw_apvs_activos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_apvs_activos`  AS SELECT `brands_agencies`.`name` AS `agencia`, `users`.`id` AS `id`, `users`.`name` AS `name`, `users`.`lastname` AS `lastname`, `users`.`phone` AS `phone`, `users`.`email` AS `email` FROM (`users` join `brands_agencies`) WHERE `users`.`id_brand_agency` = `brands_agencies`.`id` AND `users`.`id_role` = 5 AND `users`.`status` = 1 AND `users`.`disable` = 0 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_calendario_entregas`
--
DROP TABLE IF EXISTS `vw_calendario_entregas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sygo_external`@`%` SQL SECURITY DEFINER VIEW `vw_calendario_entregas`  AS SELECT `reserved_schedule`.`id` AS `idr`, `oportunities`.`id` AS `iop`, `po`.`id` AS `idpo`, `brandag`.`id` AS `idba`, `brandag`.`name` AS `name`, `reserved_schedule`.`date` AS `fecha_entrega`, `reserved_schedule`.`description` AS `description`, `reserved_schedule`.`status` AS `status`, `hours_room`.`timing` AS `timing`, `days`.`name` AS `dia`, `users`.`name` AS `apv_n`, `users`.`lastname` AS `apv_l`, `client`.`first_name` AS `cliente_n`, `client`.`second_name` AS `cliente_sn`, `client`.`last_name` AS `cliente_ln`, `client`.`mothers_last_name` AS `cliente_mln`, `client`.`telephone` AS `cliente_phone`, `client`.`email` AS `cliente_email`, `inventories`.`vin` AS `vin`, `inventories`.`car` AS `car`, `inventories`.`year` AS `year`, `colors`.`name` AS `color_e`, `rooms`.`name` AS `sala`, `po`.`delivery` AS `delivery` FROM (((((((((((((((`reserved_schedule` join `schedules` on(`schedules`.`id` = `reserved_schedule`.`id_schedule`)) join `hours_room` on(`hours_room`.`id` = `schedules`.`id_hour_room`)) join `rooms` on(`rooms`.`id` = `hours_room`.`id_room`)) join `days` on(`days`.`id` = `schedules`.`id_day`)) join `oportunities` on(`oportunities`.`id` = `reserved_schedule`.`id_opportunity`)) join `purchase_order` `po` on(`oportunities`.`id` = `po`.`id_opportunity` and `po`.`status` = 1)) join `purchase_data` `pd` on(`pd`.`id` = `po`.`id_purchase_data`)) join `users` on(`users`.`id` = `po`.`id_user`)) join `brands_agencies` `brandag` on(`brandag`.`id` = `users`.`id_brand_agency`)) join `data_insurance` on(`data_insurance`.`id` = `po`.`id_data_insurance`)) join `type_vehicles` on(`data_insurance`.`id_type_vehicle` = `type_vehicles`.`id`)) left join `inventories_reserved` `invres` on(`oportunities`.`id` = `invres`.`id_opportunity` and `invres`.`status` = 1)) left join `inventories` on(`inventories`.`id` = `invres`.`id_inventory`)) left join `client` on(`client`.`id` = `po`.`id_client`)) left join `colors` on(`colors`.`id` = `inventories`.`id_color`)) WHERE `reserved_schedule`.`status` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_contacts_chapultepec`
--
DROP TABLE IF EXISTS `vw_contacts_chapultepec`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sygo_crm`@`%` SQL SECURITY DEFINER VIEW `vw_contacts_chapultepec`  AS WITH ApartadosRanked AS (SELECT `op`.`id_contact` AS `id_contact`, `ivr`.`createdAt` AS `createdAt`, row_number() over ( partition by `op`.`id_contact` order by `ivr`.`createdAt` desc) AS `rn`, count(0) over ( partition by `op`.`id_contact`) AS `total_apartados`, `pd`.`billing_date` AS `fecha_facturacion`, `iv`.`vin` AS `vin` FROM ((((`oportunities` `op` join `inventories_reserved` `ivr` on(`op`.`id` = `ivr`.`id_opportunity`)) join `inventories` `iv` on(`iv`.`id` = `ivr`.`id_inventory`)) join `purchase_order` `po` on(`op`.`id` = `po`.`id_opportunity`)) join `purchase_data` `pd` on(`po`.`id_purchase_data` = `pd`.`id`)) WHERE `op`.`status` is true AND `ivr`.`status` is true), Appointments AS (SELECT `op`.`id_contact` AS `id_contact`, count(`a`.`id`) AS `total_citas` FROM ((`oportunities` `op` join `activities` `a` on(`a`.`id_oportunity` = `op`.`id` and `a`.`id_type_activity` in (7,8))) join `users` `u` on(`a`.`id_user_generate` = `u`.`id` and `u`.`id_brand_agency` = 36 and `u`.`id_role` = 7 and `a`.`status` = 1)) WHERE `op`.`status` is true GROUP BY `op`.`id_contact`), InvReserved AS (SELECT `ApartadosRanked`.`id_contact` AS `id_contact`, convert_tz(`ApartadosRanked`.`createdAt`,'+00:00','America/Tijuana') AS `ultimo_apartado`, `ApartadosRanked`.`total_apartados` AS `total_apartados`, `ApartadosRanked`.`fecha_facturacion` AS `fecha_facturacion`, `ApartadosRanked`.`vin` AS `vin` FROM `ApartadosRanked` WHERE `ApartadosRanked`.`rn` = 1) SELECT `c`.`id` AS `idc`, `ba`.`name` AS `Agencia`, concat(`c`.`name`,' ',`c`.`lastname`) AS `Nombre Completo`, concat(`ua`.`name`,' ',`ua`.`lastname`) AS `Asesor chapultepec`, concat(`uc`.`name`,' ',`uc`.`lastname`) AS `Asesor del contacto`, date_format(`c`.`createdAt`,'%Y-%m-%d') AS `Fecha de alta contacto`, `cdsp`.`date_consignment` AS `Fecha de visita`, date_format(`ivr`.`ultimo_apartado`,'%Y-%m-%d') AS `Último apartado`, `ivr`.`fecha_facturacion` AS `Fecha de facturacion`, `ivr`.`total_apartados` AS `Cantidad de apartados`, `ivr`.`vin` AS `vin`, `ap`.`total_citas` AS `Citas Agendadas`, CASE WHEN exists(select 1 from `contacts_day` `cd` where `cd`.`id_contact` = `c`.`id` AND `cd`.`createdAt` > `cdsp`.`createdAt` AND `cd`.`status` is true limit 1) THEN 'Sí' ELSE 'No' END AS `Visito agencia`, CASE WHEN exists(select `cd`.`id_type_hostess` from `contacts_day` `cd` where `cd`.`id_contact` = `c`.`id` AND `cd`.`createdAt` > `cdsp`.`createdAt` AND `cd`.`status` is true limit 1) THEN `cdsp`.`id_type_hostess` ELSE 'No' END AS `tipo_visita` FROM ((((((`contacts_day_sales_point` `cdsp` join `users` `ua` on(`cdsp`.`id_user_adviser` = `ua`.`id`)) join `contacts` `c` on(`cdsp`.`id_contact` = `c`.`id`)) join `brands_agencies` `ba` on(`c`.`id_brand_agency` = `ba`.`id`)) join `users` `uc` on(`c`.`id_user_adviser` = `uc`.`id`)) left join `InvReserved` `ivr` on(`c`.`id` = `ivr`.`id_contact`)) left join `Appointments` `ap` on(`c`.`id` = `ap`.`id_contact`)) WHERE `cdsp`.`status` is true GROUP BY `cdsp`.`id_contact``id_contact`  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_data_lavadodinero`
--
DROP TABLE IF EXISTS `vw_data_lavadodinero`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sygo_crm`@`%` SQL SECURITY DEFINER VIEW `vw_data_lavadodinero`  AS SELECT `po`.`id` AS `idpo`, `po`.`id_opportunity` AS `idop`, `pd`.`billing_date` AS `billing_date`, `laun`.`id` AS `id_anti_money_laundering`, `u`.`name` AS `user_name`, `u`.`lastname` AS `user_lastname`, `po`.`id_client` AS `id_client`, `c`.`is_moral_client` AS `is_moral_client`, `c`.`first_name` AS `client_first_name`, `c`.`second_name` AS `client_second_name`, `c`.`last_name` AS `client_last_name`, `c`.`mothers_last_name` AS `client_mothers_last_name`, `c`.`email` AS `email`, `c`.`home_phone` AS `home_phone`, `c`.`telephone` AS `telephone`, `c`.`birthdate` AS `birthdate`, `c`.`curp` AS `client_curp`, `c`.`rfc` AS `client_rfc`, `c`.`company_name` AS `company_name`, `pi`.`rfc` AS `company_rfc`, `ca`.`date_trade` AS `date_trade_constitutive`, `ca`.`public_writing_number` AS `public_writing_number_constitutive`, `ca`.`name_notary` AS `name_notary_constitutive`, `ca`.`number_notary` AS `number_notary_constitutive`, `ca`.`number_trade` AS `number_trade_constitutive`, `ca`.`date` AS `date_constitutive`, `pi`.`public_writing_number` AS `public_writing_number_power`, `pi`.`number_notary` AS `number_notary_power`, `pi`.`name_notary` AS `name_notary_power`, `state3`.`name` AS `state_power`, `ama`.`street` AS `street`, `ama`.`number_exterior` AS `number_exterior`, `ama`.`number_interior` AS `number_interior`, `ama`.`colony` AS `colony`, `ama`.`cp` AS `cp`, `country3`.`name` AS `client_birthplace`, `country4`.`name` AS `client_country`, `country5`.`name` AS `client_country_nationality`, `city`.`name` AS `city`, `state`.`name` AS `state`, `identi`.`name` AS `identification`, `ama`.`number_folio` AS `number_folio`, `identi`.`description` AS `identi_desc`, `aop`.`name` AS `occupation`, `ablcp`.`name` AS `occupation_moral`, `laun`.`has_official_id` AS `has_official_id`, `laun`.`has_proof_address` AS `has_proof_address`, `laun`.`has_proof_address_company` AS `has_proof_address_company`, `laun`.`has_curp` AS `has_curp`, `laun`.`has_rfc` AS `has_rfc`, `laun`.`has_curp_rfc` AS `has_curp_rfc`, `laun`.`has_constitutive_act` AS `has_constitutive_act`, `laun`.`has_doc_constitutive_act` AS `has_doc_constitutive_act`, `laun`.`has_doc_sat` AS `has_doc_sat`, `laun`.`has_doc_legal_representative` AS `has_doc_legal_representative`, `laun`.`has_doc_accredit_profession` AS `has_doc_accredit_profession`, `laun`.`clause_benefit` AS `clause_benefit`, `laun`.`clause_use` AS `clause_use`, `laun`.`clause_resources` AS `clause_resources`, `bene`.`names` AS `bene_name`, `bene`.`first_last_name` AS `bene_first_last_name`, `bene`.`second_last_name` AS `bebe_second_last_name`, `bene`.`rfc` AS `bene_rfc`, `bene`.`curp` AS `bene_curp`, `bene`.`birth_date` AS `bene_birth_date`, `bene`.`occupation` AS `bene_occupation`, `country`.`name` AS `bene_country_birth`, `identi2`.`name` AS `bene_identification`, `bene`.`folio_identification` AS `bene_folio`, `identi2`.`description` AS `bene_identi_desc`, `bene`.`street` AS `bene_streer`, `bene`.`ext_number` AS `bene_ext_number`, `bene`.`int_number` AS `bene_int_number`, `bene`.`colony` AS `bene_colony`, `bene`.`cp` AS `bene_cp`, `city2`.`name` AS `bene_city`, `state2`.`name` AS `bene_state`, `country2`.`name` AS `bene_country`, `bene`.`has_doc_official_identification` AS `bene_has_doc_official_identification`, `bene`.`has_doc_sat` AS `bene_has_doc_sat`, `bene`.`has_doc_curp` AS `bene_has_doc_curp`, `bene`.`has_doc_proof_address` AS `bene_has_doc_proof_address`, `bene`.`has_doc_profession` AS `bene_has_doc_profession` FROM ((((((((((((((((((((((`purchase_order` `po` join `purchase_data` `pd` on(`pd`.`id` = `po`.`id_purchase_data` and `pd`.`status` is true)) join `client` `c` on(`c`.`id` = `po`.`id_client` and `c`.`status` is true)) join `anti_money_address` `ama` on(`ama`.`id` = `po`.`id_anti_money` and `ama`.`status` is true)) join `cities` `city` on(`city`.`id` = `ama`.`id_city` and `city`.`status` is true)) join `states` `state` on(`state`.`id` = `ama`.`id_state` and `state`.`status` is true)) join `identifications` `identi` on(`identi`.`id` = `ama`.`id_identification` and `identi`.`status` is true)) left join `activity_occupation_profession` `aop` on(`aop`.`id` = `ama`.`id_activity_occupation_profession` and `aop`.`status` is true)) left join `activity_business_line_corporate_purpose` `ablcp` on(`ablcp`.`id` = `ama`.`id_activity_business_line_corporate_purpose` and `ablcp`.`status` is true)) join `users` `u` on(`u`.`id` = `po`.`id_user` and `u`.`status` is true)) join `anti_money_laundering` `laun` on(`laun`.`id_purchase_order` = `po`.`id` and `laun`.`status` is true)) left join `anti_money_laundering_beneficiary` `bene` on(`bene`.`id_anti_money_laundering` = `laun`.`id` and `bene`.`status` is true)) left join `countries` `country` on(`country`.`id` = `bene`.`id_country_birth` and `country`.`status` is true)) left join `identifications` `identi2` on(`identi2`.`id` = `bene`.`id_identification` and `identi2`.`status` is true)) left join `cities` `city2` on(`city2`.`id` = `bene`.`id_city` and `city2`.`status` is true)) left join `states` `state2` on(`state2`.`id` = `bene`.`id_state` and `state2`.`status` is true)) left join `countries` `country2` on(`country2`.`id` = `bene`.`id_country` and `country2`.`status` is true)) left join `countries` `country3` on(`country3`.`id` = `ama`.`id_country_birth` and `country3`.`status` is true)) left join `countries` `country4` on(`country4`.`id` = `ama`.`id_country` and `country4`.`status` is true)) left join `countries` `country5` on(`country5`.`id` = `ama`.`id_country_nationality` and `country5`.`status` is true)) left join `power_incorporation` `pi` on(`pi`.`id` = `po`.`id_power_incorporation` and `pi`.`status` is true)) join `constitutive_act` `ca` on(`ca`.`id` = `po`.`id_constitutive_act` and `ca`.`status` is true)) left join `states` `state3` on(`state3`.`id` = `pi`.`id_state` and `state3`.`status` is true)) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_inventario_confirmado`
--
DROP TABLE IF EXISTS `vw_inventario_confirmado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sygo_crm`@`%` SQL SECURITY DEFINER VIEW `vw_inventario_confirmado`  AS SELECT `inventories`.`id` AS `id`, `inventories`.`cd` AS `cd`, `inventories`.`number` AS `number`, `inventories`.`arrival` AS `arrival`, `inventories`.`year` AS `year`, `inventories`.`car` AS `car`, `inventories`.`vin` AS `vin`, `inventories`.`type_motor` AS `type_motor`, `inventories`.`days_inventory` AS `days_inventory`, `inventories`.`vco` AS `vco`, `inventories`.`cylinders` AS `cylinders`, `inventories`.`doors` AS `doors`, `inventories`.`passenger` AS `passenger`, `inventories`.`tower` AS `tower`, `inventories`.`cost` AS `cost`, `inventories`.`code` AS `code`, `inventories`.`date_arrival` AS `date_arrival`, `inventories`.`status_kms` AS `status_kms`, `inventories`.`month` AS `month`, `inventories`.`order_status` AS `order_status`, `inventories`.`isSale` AS `isSale`, `inventories`.`plates` AS `plates`, `inventories`.`id_type_inventory` AS `id_type_inventory`, `inventories`.`id_status_inventory` AS `id_status_inventory`, `inventories`.`id_model_version` AS `id_model_version`, `inventories`.`id_model_version_year` AS `id_model_version_year`, `inventories`.`id_location` AS `id_location`, `inventories`.`id_inventory_floor` AS `id_inventory_floor`, `inventories`.`id_transmission` AS `id_transmission`, `inventories`.`id_color` AS `id_color`, `inventories`.`id_color_interior` AS `id_color_interior`, `inventories`.`id_brand_agency` AS `id_brand_agency`, `inventories`.`reported_plant` AS `reported_plant`, `inventories`.`status` AS `status`, `inventories`.`createdAt` AS `createdAt`, `inventories`.`updatedAt` AS `updatedAt`, `inventories`.`deletedAt` AS `deletedAt`, `inventories`.`status_intelisis` AS `status_intelisis` FROM `inventories` WHERE `inventories`.`status` = 1 AND `inventories`.`id_type_inventory` = 2 AND `inventories`.`id_status_inventory` in (1,2,8) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_inventories`
--
DROP TABLE IF EXISTS `vw_inventories`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sygo_external`@`%` SQL SECURITY DEFINER VIEW `vw_inventories`  AS SELECT `inv`.`id` AS `id`, `inv`.`cd` AS `cd`, `inv`.`number` AS `number`, `inv`.`arrival` AS `arrival`, `inv`.`year` AS `year`, `inv`.`car` AS `car`, `inv`.`vin` AS `vin`, `inv`.`type_motor` AS `type_motor`, `inv`.`days_inventory` AS `days_inventory`, `inv`.`vco` AS `vco`, `inv`.`cylinders` AS `cylinders`, `inv`.`doors` AS `doors`, `inv`.`passenger` AS `passenger`, `inv`.`tower` AS `tower`, `inv`.`cost` AS `cost`, `inv`.`code` AS `code`, `inv`.`date_arrival` AS `date_arrival`, `inv`.`status_kms` AS `status_kms`, `inv`.`month` AS `month`, `inv`.`order_status` AS `order_status`, `inv`.`isSale` AS `isSale`, `inv`.`plates` AS `plates`, `inv`.`id_type_inventory` AS `id_type_inventory`, `ti`.`name` AS `status_inventory`, `inv`.`id_status_inventory` AS `id_status_inventory`, `si`.`name` AS `type_inventory`, `inv`.`id_model_version` AS `id_model_version`, `inv`.`id_model_version_year` AS `id_model_version_year`, `inv`.`id_location` AS `id_location`, `inv`.`id_inventory_floor` AS `id_inventory_floor`, `inv`.`id_transmission` AS `id_transmission`, `inv`.`id_color` AS `id_color`, `c`.`name` AS `color`, `inv`.`id_color_interior` AS `id_color_interior`, `ba`.`id_brand` AS `id_brand`, `inv`.`id_brand_agency` AS `id_brand_agency`, `inv`.`reported_plant` AS `reported_plant`, `inv`.`exist_sas_logistic` AS `exist_sas_logistic`, `inv`.`status` AS `status`, `inv`.`createdAt` AS `createdAt`, `inv`.`updatedAt` AS `updatedAt`, `inv`.`deletedAt` AS `deletedAt` FROM ((((`inventories` `inv` left join `status_inventory` `si` on(`si`.`id` = `inv`.`id_status_inventory`)) left join `type_inventory` `ti` on(`ti`.`id` = `inv`.`id_type_inventory`)) left join `colors` `c` on(`c`.`id` = `inv`.`id_color`)) left join `brands_agencies` `ba` on(`ba`.`id` = `inv`.`id_brand_agency`)) WHERE `inv`.`id_status_inventory` in (1,2,5,8) AND `inv`.`status` is true AND `inv`.`id_type_inventory` in (1,5,6,7,8,9) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_precios_activos`
--
DROP TABLE IF EXISTS `vw_precios_activos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sygo_crm`@`%` SQL SECURITY DEFINER VIEW `vw_precios_activos`  AS   (select `mvy`.`model_version_year` AS `Modelo version`,`pmv`.`price` AS `Precio optima`,`pmv`.`border_price` AS `Precio frontera`,`m`.`id_brand` AS `id_brand` from ((`prices_model_version` `pmv` join `view_full_data_model` `mvy` on(`pmv`.`id_model_version_year` = `mvy`.`id_model_version_year`)) join `models` `m` on(`m`.`id` = `mvy`.`id_model`)) where `pmv`.`is_visible` is true and `pmv`.`status` is true)  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_reason_sheet`
--
DROP TABLE IF EXISTS `vw_reason_sheet`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sygo_crm`@`%` SQL SECURITY DEFINER VIEW `vw_reason_sheet`  AS SELECT `brands_agencies`.`name` AS `ciudad`, `users`.`id` AS `idu`, `contacts`.`id` AS `idc`, `oportunities`.`id` AS `op`, `reason_sheet`.`id` AS `idrs`, `users`.`name` AS `apv`, `users`.`lastname` AS `apv_last`, `contacts`.`name` AS `contacto`, `contacts`.`lastname` AS `contacto_last`, `contacts`.`email` AS `email_c`, `contacts`.`cellphone` AS `cellphone`, `reason_sheet`.`id` AS `id`, `reason_sheet`.`cellphone_better` AS `cellphone_better`, `reason_sheet`.`cellphone_second_best` AS `cellphone_second_best`, `reason_sheet`.`other_cellphone` AS `other_cellphone`, `reason_sheet`.`email` AS `email`, `reason_sheet`.`other_email` AS `other_email`, `reason_sheet`.`question_one` AS `question_one`, `reason_sheet`.`question_two` AS `question_two`, `reason_sheet`.`question_three` AS `question_three`, `reason_sheet`.`question_four` AS `question_four`, `reason_sheet`.`question_five` AS `question_five`, `reason_sheet`.`question_six` AS `question_six`, `reason_sheet`.`comments` AS `comments`, `models`.`name` AS `name_car`, `reason_sheet`.`application_date` AS `application_date`, `reason_sheet`.`id_opportunity` AS `id_opportunity`, `reason_sheet`.`status` AS `status`, `status_purchases`.`name` AS `status_oportuniti`, `contacts`.`createdAt` AS `createdAt`, `reason_sheet`.`createdAt` AS `createdAt_h`, `reason_sheet`.`updatedAt` AS `updatedAt`, `reason_sheet`.`deletedAt` AS `deletedAt` FROM ((((((`reason_sheet` join `oportunities` on(`oportunities`.`id` = `reason_sheet`.`id_opportunity`)) join `status_purchases` on(`oportunities`.`id_status_purchase` = `status_purchases`.`id`)) join `models` on(`oportunities`.`id_model` = `models`.`id`)) join `contacts` on(`contacts`.`id` = `oportunities`.`id_contact`)) join `users` on(`users`.`id` = `contacts`.`id_user_adviser`)) join `brands_agencies` on(`brands_agencies`.`id` = `users`.`id_brand_agency`)) ORDER BY `reason_sheet`.`id` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_ventas_totales`
--
DROP TABLE IF EXISTS `vw_ventas_totales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sygo_crm`@`%` SQL SECURITY DEFINER VIEW `vw_ventas_totales`  AS SELECT `oportunities`.`id` AS `idop`, `po`.`id` AS `idpo`, `po`.`id_user` AS `id_user`, `oportunities`.`id_contact` AS `idc`, `brandag`.`name` AS `ciudad`, `users`.`name` AS `asesor`, `inventories`.`vin` AS `vin`, `oportunities`.`id_status_purchase` AS `id_status_purchase`, `type_vehicles`.`name` AS `nvo_dmo_sn`, `pd`.`billing_date` AS `billing_date`, `tp`.`name` AS `credito_contado`, `financials`.`name` AS `financiera`, `financials`.`financing_house` AS `financiera_casa`, `type_insurance`.`name` AS `tipo_seguro`, `insurances`.`name` AS `aseguradora`, `po`.`delivery` AS `delivery`, `po`.`release` AS `release` FROM (((((((((((((((`oportunities` join `purchase_order` `po` on(`oportunities`.`id` = `po`.`id_opportunity` and `po`.`status` = 1)) join `purchase_data` `pd` on(`pd`.`id` = `po`.`id_purchase_data`)) join `users` on(`users`.`id` = `po`.`id_user`)) join `brands_agencies` `brandag` on(`brandag`.`id` = `users`.`id_brand_agency`)) join `data_insurance` on(`data_insurance`.`id` = `po`.`id_data_insurance`)) join `type_vehicles` on(`data_insurance`.`id_type_vehicle` = `type_vehicles`.`id`)) left join `car_data` `card` on(`card`.`id` = `po`.`id_car_data`)) left join `inventories_reserved` `invres` on(`card`.`id_inventory_reserved` = `invres`.`id`)) left join `inventories` on(`inventories`.`id` = `invres`.`id_inventory`)) left join `financing` on(`financing`.`id` = `po`.`id_financing`)) left join `financials` on(`financials`.`id` = `financing`.`id_financial`)) left join `type_purchase` `tp` on(`pd`.`id_type_purchase` = `tp`.`id`)) left join `types_insurances` on(`types_insurances`.`id` = `data_insurance`.`id_types_insurance`)) left join `insurances` on(`insurances`.`id` = `types_insurances`.`id_insurance`)) left join `type_insurance` on(`type_insurance`.`id` = `types_insurances`.`id_type_insurance`)) WHERE `oportunities`.`id_status_purchase` in (7,10) AND `invres`.`status` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_ventas_totales_v2`
--
DROP TABLE IF EXISTS `vw_ventas_totales_v2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sygo_crm`@`%` SQL SECURITY DEFINER VIEW `vw_ventas_totales_v2`  AS SELECT `oportunities`.`id` AS `idop`, `po`.`id` AS `idpo`, `po`.`id_user` AS `id_user`, `oportunities`.`id_contact` AS `idc`, `brandag`.`id` AS `idBrandAgency`, `brandag`.`name` AS `ciudad`, `users`.`name` AS `asesor`, `users`.`lastname` AS `asesor_a`, `inventories`.`vin` AS `vin`, `inventories`.`car` AS `auto`, `inventories`.`year` AS `year_car`, `oportunities`.`id_status_purchase` AS `id_status_purchase`, `type_vehicles`.`name` AS `nvo_dmo_sn`, `pd`.`billing_date` AS `billing_date`, `pd`.`billing_amount` AS `billing_amount`, `tp`.`name` AS `credito_contado`, `financials`.`name` AS `financiera`, `financials`.`financing_house` AS `financiera_casa`, `type_insurance`.`name` AS `tipo_seguro`, `insurances`.`name` AS `aseguradora`, `data_insurance`.`iva` AS `iva`, `breakdown_operations`.`iva` AS `iva_monto`, `client`.`first_name` AS `nombre`, `client`.`second_name` AS `s_nombre`, `client`.`last_name` AS `apellido`, `client`.`mothers_last_name` AS `s_apellido`, `client`.`telephone` AS `telefono`, `client`.`office_phone` AS `telefono_oficina`, `client`.`email` AS `email`, `client`.`is_moral_client` AS `moral`, `client`.`rfc` AS `rfc`, `client`.`contact_full_name` AS `name_client_moral`, `client`.`address` AS `address`, `car_acquisition`.`model` AS `modelo`, `car_acquisition`.`version` AS `version`, `car_acquisition`.`year` AS `car_year`, `billing_address`.`street_number` AS `calle`, `billing_address`.`colony_fractionation` AS `colonia`, `billing_address`.`cp` AS `cp`, `states`.`name` AS `estado`, `data_insurance`.`id_term_ext_warranty` AS `extension_garantia`, `data_insurance`.`invoice_quantity_letter` AS `precio_extension_txt`, `pd`.`term_months` AS `plazo`, `purchase_order_approved`.`date_approved` AS `fecha_aprobacion`, `details_expenses`.`warranty_certificate` AS `precio_extension`, if(`po`.`delivery` = 4,'Entregado','Facturado') AS `Estatus_entregado` FROM (((((((((((((((((((((((`oportunities` join `purchase_order` `po` on(`oportunities`.`id` = `po`.`id_opportunity` and `po`.`status` = 1)) join `purchase_data` `pd` on(`pd`.`id` = `po`.`id_purchase_data`)) join `users` on(`users`.`id` = `po`.`id_user`)) left join `details_additional_expenses` `details_expenses` on(`details_expenses`.`id` = `po`.`id_details_additional_expenses`)) join `brands_agencies` `brandag` on(`brandag`.`id` = `users`.`id_brand_agency`)) join `data_insurance` on(`data_insurance`.`id` = `po`.`id_data_insurance`)) join `type_vehicles` on(`data_insurance`.`id_type_vehicle` = `type_vehicles`.`id`)) join `inventories_reserved` `invres` on(`oportunities`.`id` = `invres`.`id_opportunity` and `invres`.`status` = 1)) join `inventories` on(`inventories`.`id` = `invres`.`id_inventory`)) join `purchase_order_approved` on(`purchase_order_approved`.`id_purchase_order` = `po`.`id` and `purchase_order_approved`.`status` = 1)) join `purchase_order_signatures` on(`purchase_order_signatures`.`id` = `purchase_order_approved`.`id_signature` and `purchase_order_signatures`.`status` = 1 and `purchase_order_signatures`.`id_role` = 39)) left join `car_data` `card` on(`card`.`id` = `po`.`id_car_data`)) left join `financing` on(`financing`.`id` = `po`.`id_financing`)) left join `financials` on(`financials`.`id` = `financing`.`id_financial` and `financials`.`status` is true)) left join `type_purchase` `tp` on(`pd`.`id_type_purchase` = `tp`.`id`)) left join `types_insurances` on(`types_insurances`.`id` = `data_insurance`.`id_types_insurance`)) left join `insurances` on(`insurances`.`id` = `types_insurances`.`id_insurance`)) left join `type_insurance` on(`type_insurance`.`id` = `types_insurances`.`id_type_insurance`)) left join `client` on(`client`.`id` = `po`.`id_client`)) left join `car_acquisition` on(`car_acquisition`.`id` = `po`.`id_car_acquisition`)) left join `billing_address` on(`billing_address`.`id` = `po`.`id_billing_address`)) left join `breakdown_operations` on(`breakdown_operations`.`id` = `po`.`id_breakdown_operations`)) left join `states` on(`states`.`id` = `billing_address`.`id_state`)) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_ventas_totales_v3`
--
DROP TABLE IF EXISTS `vw_ventas_totales_v3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sygo_crm`@`%` SQL SECURITY DEFINER VIEW `vw_ventas_totales_v3`  AS SELECT `oportunities`.`id` AS `idop`, `po`.`id` AS `idpo`, `po`.`id_user` AS `id_user`, `oportunities`.`id_contact` AS `idc`, `brandag`.`id_brand` AS `marca`, `brandag`.`id` AS `idBrandAgency`, `brandag`.`name` AS `ciudad`, `users`.`name` AS `asesor`, `inventories`.`vin` AS `vin`, `inventories`.`car` AS `auto`, `oportunities`.`id_status_purchase` AS `id_status_purchase`, `type_vehicles`.`name` AS `nvo_dmo_sn`, `pd`.`billing_date` AS `billing_date`, `tp`.`name` AS `credito_contado`, `financials`.`name` AS `financiera`, `financials`.`financing_house` AS `financiera_casa`, `type_insurance`.`name` AS `tipo_seguro`, `insurances`.`name` AS `aseguradora`, `client`.`first_name` AS `nombre`, `client`.`second_name` AS `s_nombre`, `client`.`last_name` AS `apellido`, `client`.`mothers_last_name` AS `s_apellido`, `client`.`telephone` AS `telefono`, `client`.`office_phone` AS `telefono_oficina`, `client`.`email` AS `email`, `client`.`is_moral_client` AS `moral`, `client`.`rfc` AS `rfc`, `client`.`contact_full_name` AS `name_client_moral`, `client`.`address` AS `address`, `car_acquisition`.`model` AS `modelo`, `car_acquisition`.`version` AS `version`, `car_acquisition`.`year` AS `car_year`, `card`.`engine_number` AS `engine_number`, `colors`.`name` AS `colors`, `billing_address`.`street_number` AS `calle`, `billing_address`.`colony_fractionation` AS `colonia`, `billing_address`.`cp` AS `cp`, `states`.`name` AS `estado`, `data_insurance`.`id_term_ext_warranty` AS `extension_garantia`, `data_insurance`.`invoice_quantity_letter` AS `precio_extension_txt`, `pd`.`term_months` AS `plazo`, `purchase_order_approved`.`date_approved` AS `fecha_aprobacion`, `details_expenses`.`warranty_certificate` AS `precio_extension`, CASE WHEN `po`.`delivery` = 4 THEN 'Entregado' ELSE 'Facturado' END AS `Estatus_entregado` FROM (((((((((((((((((((((((`oportunities` join `purchase_order` `po` on(`oportunities`.`id` = `po`.`id_opportunity` and `po`.`status` = 1)) join `purchase_data` `pd` on(`pd`.`id` = `po`.`id_purchase_data`)) join `users` on(`users`.`id` = `po`.`id_user`)) left join `details_additional_expenses` `details_expenses` on(`details_expenses`.`id` = `po`.`id_details_additional_expenses`)) join `brands_agencies` `brandag` on(`brandag`.`id` = `users`.`id_brand_agency`)) join `data_insurance` on(`data_insurance`.`id` = `po`.`id_data_insurance`)) join `type_vehicles` on(`data_insurance`.`id_type_vehicle` = `type_vehicles`.`id`)) join `inventories_reserved` `invres` on(`oportunities`.`id` = `invres`.`id_opportunity` and `invres`.`status` = 1)) join `inventories` on(`inventories`.`id` = `invres`.`id_inventory`)) join `purchase_order_approved` on(`purchase_order_approved`.`id_purchase_order` = `po`.`id` and `purchase_order_approved`.`status` = 1)) join `purchase_order_signatures` on(`purchase_order_signatures`.`id` = `purchase_order_approved`.`id_signature` and `purchase_order_signatures`.`status` = 1 and `purchase_order_signatures`.`id_role` = 39)) left join `car_data` `card` on(`card`.`id` = `po`.`id_car_data`)) left join `financing` on(`financing`.`id` = `po`.`id_financing`)) left join `financials` on(`financials`.`id` = `financing`.`id_financial`)) left join `type_purchase` `tp` on(`pd`.`id_type_purchase` = `tp`.`id`)) left join `types_insurances` on(`types_insurances`.`id` = `data_insurance`.`id_types_insurance`)) left join `insurances` on(`insurances`.`id` = `types_insurances`.`id_insurance`)) left join `type_insurance` on(`type_insurance`.`id` = `types_insurances`.`id_type_insurance`)) left join `client` on(`client`.`id` = `po`.`id_client`)) left join `car_acquisition` on(`car_acquisition`.`id` = `po`.`id_car_acquisition`)) left join `billing_address` on(`billing_address`.`id` = `po`.`id_billing_address`)) left join `states` on(`states`.`id` = `billing_address`.`id_state`)) join `colors` on(`colors`.`id` = `car_acquisition`.`id_color_exterior`)) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_ventas_totales_v4`
--
DROP TABLE IF EXISTS `vw_ventas_totales_v4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sygo_crm`@`%` SQL SECURITY DEFINER VIEW `vw_ventas_totales_v4`  AS SELECT `oportunities`.`id` AS `idop`, `po`.`id` AS `idpo`, `po`.`id_user` AS `id_user`, `oportunities`.`id_contact` AS `idc`, `brandag`.`id` AS `idBrandAgency`, `brandag`.`name` AS `ciudad`, `users`.`name` AS `asesor`, `inventories`.`vin` AS `vin`, `inventories`.`car` AS `auto`, `oportunities`.`id_status_purchase` AS `id_status_purchase`, `type_vehicles`.`name` AS `nvo_dmo_sn`, `pd`.`billing_date` AS `billing_date`, `tp`.`name` AS `credito_contado`, `financials`.`name` AS `financiera`, `financials`.`financing_house` AS `financiera_casa`, `type_insurance`.`name` AS `tipo_seguro`, `insurances`.`name` AS `aseguradora`, `client`.`first_name` AS `nombre`, `client`.`second_name` AS `s_nombre`, `client`.`last_name` AS `apellido`, `client`.`mothers_last_name` AS `s_apellido`, `client`.`telephone` AS `telefono`, `client`.`office_phone` AS `telefono_oficina`, `client`.`email` AS `email`, `client`.`is_moral_client` AS `moral`, `client`.`rfc` AS `rfc`, `client`.`contact_full_name` AS `name_client_moral`, `client`.`address` AS `address`, `car_acquisition`.`model` AS `modelo`, `car_acquisition`.`version` AS `version`, `car_acquisition`.`year` AS `car_year`, `billing_address`.`street_number` AS `calle`, `billing_address`.`colony_fractionation` AS `colonia`, `billing_address`.`cp` AS `cp`, `states`.`name` AS `estado`, `data_insurance`.`id_term_ext_warranty` AS `extension_garantia`, `data_insurance`.`invoice_quantity_letter` AS `precio_extension_txt`, `pd`.`term_months` AS `plazo`, `purchase_order_approved`.`date_approved` AS `fecha_aprobacion`, `details_expenses`.`warranty_certificate` AS `precio_extension`, CASE WHEN `po`.`delivery` = 4 THEN 'Entregado' ELSE 'Facturado' END AS `Estatus_entregado`, `inventories`.`year` AS `anio` FROM ((((((((((((((((((((((`oportunities` join `purchase_order` `po` on(`oportunities`.`id` = `po`.`id_opportunity` and `po`.`status` = 1)) join `purchase_data` `pd` on(`pd`.`id` = `po`.`id_purchase_data`)) join `users` on(`users`.`id` = `po`.`id_user`)) left join `details_additional_expenses` `details_expenses` on(`details_expenses`.`id` = `po`.`id_details_additional_expenses`)) join `brands_agencies` `brandag` on(`brandag`.`id` = `users`.`id_brand_agency`)) join `data_insurance` on(`data_insurance`.`id` = `po`.`id_data_insurance`)) join `type_vehicles` on(`data_insurance`.`id_type_vehicle` = `type_vehicles`.`id`)) join `inventories_reserved` `invres` on(`oportunities`.`id` = `invres`.`id_opportunity` and `invres`.`status` = 1)) join `inventories` on(`inventories`.`id` = `invres`.`id_inventory`)) join `purchase_order_approved` on(`purchase_order_approved`.`id_purchase_order` = `po`.`id` and `purchase_order_approved`.`status` = 1)) join `purchase_order_signatures` on(`purchase_order_signatures`.`id` = `purchase_order_approved`.`id_signature` and `purchase_order_signatures`.`status` = 1 and `purchase_order_signatures`.`id_role` = 39)) left join `car_data` `card` on(`card`.`id` = `po`.`id_car_data`)) left join `financing` on(`financing`.`id` = `po`.`id_financing`)) left join `financials` on(`financials`.`id` = `financing`.`id_financial`)) left join `type_purchase` `tp` on(`pd`.`id_type_purchase` = `tp`.`id`)) left join `types_insurances` on(`types_insurances`.`id` = `data_insurance`.`id_types_insurance`)) left join `insurances` on(`insurances`.`id` = `types_insurances`.`id_insurance`)) left join `type_insurance` on(`type_insurance`.`id` = `types_insurances`.`id_type_insurance`)) left join `client` on(`client`.`id` = `po`.`id_client`)) left join `car_acquisition` on(`car_acquisition`.`id` = `po`.`id_car_acquisition`)) left join `billing_address` on(`billing_address`.`id` = `po`.`id_billing_address`)) left join `states` on(`states`.`id` = `billing_address`.`id_state`)) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_ventas_totales_v5`
--
DROP TABLE IF EXISTS `vw_ventas_totales_v5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_ventas_totales_v5`  AS SELECT `oportunities`.`id` AS `idop`, `po`.`id` AS `idpo`, `po`.`id_user` AS `id_user`, `oportunities`.`id_contact` AS `idc`, `brandag`.`id` AS `idBrandAgency`, `brandag`.`name` AS `ciudad`, `users`.`name` AS `asesor`, `users`.`lastname` AS `asesor_a`, `inventories`.`vin` AS `vin`, `inventories`.`car` AS `auto`, `oportunities`.`id_status_purchase` AS `id_status_purchase`, `type_vehicles`.`name` AS `nvo_dmo_sn`, `pd`.`billing_date` AS `billing_date`, `tp`.`name` AS `credito_contado`, `financials`.`name` AS `financiera`, `financials`.`financing_house` AS `financiera_casa`, `type_insurance`.`name` AS `tipo_seguro`, `insurances`.`name` AS `aseguradora`, `client`.`first_name` AS `nombre`, `client`.`second_name` AS `s_nombre`, `client`.`last_name` AS `apellido`, `client`.`mothers_last_name` AS `s_apellido`, `client`.`telephone` AS `telefono`, `client`.`office_phone` AS `telefono_oficina`, `client`.`email` AS `email`, `client`.`is_moral_client` AS `moral`, `client`.`rfc` AS `rfc`, `client`.`contact_full_name` AS `name_client_moral`, `client`.`address` AS `address`, `car_acquisition`.`model` AS `modelo`, `car_acquisition`.`version` AS `version`, `car_acquisition`.`year` AS `car_year`, `billing_address`.`street_number` AS `calle`, `billing_address`.`colony_fractionation` AS `colonia`, `billing_address`.`cp` AS `cp`, `states`.`name` AS `estado`, `data_insurance`.`id_term_ext_warranty` AS `extension_garantia`, `data_insurance`.`invoice_quantity_letter` AS `precio_extension_txt`, `pd`.`term_months` AS `plazo`, `purchase_order_approved`.`date_approved` AS `fecha_aprobacion`, `details_expenses`.`warranty_certificate` AS `precio_extension`, CASE WHEN `po`.`delivery` = 4 THEN 'Entregado' ELSE 'Facturado' END AS `Estatus_entregado` FROM ((((((((((((((((((((((`oportunities` join `purchase_order` `po` on(`oportunities`.`id` = `po`.`id_opportunity` and `po`.`status` = 1)) join `purchase_data` `pd` on(`pd`.`id` = `po`.`id_purchase_data`)) join `users` on(`users`.`id` = `po`.`id_user`)) left join `details_additional_expenses` `details_expenses` on(`details_expenses`.`id` = `po`.`id_details_additional_expenses`)) join `brands_agencies` `brandag` on(`brandag`.`id` = `users`.`id_brand_agency`)) join `data_insurance` on(`data_insurance`.`id` = `po`.`id_data_insurance`)) join `type_vehicles` on(`data_insurance`.`id_type_vehicle` = `type_vehicles`.`id`)) join `inventories_reserved` `invres` on(`oportunities`.`id` = `invres`.`id_opportunity` and `invres`.`status` = 1)) join `inventories` on(`inventories`.`id` = `invres`.`id_inventory`)) join `purchase_order_approved` on(`purchase_order_approved`.`id_purchase_order` = `po`.`id` and `purchase_order_approved`.`status` = 1)) join `purchase_order_signatures` on(`purchase_order_signatures`.`id` = `purchase_order_approved`.`id_signature` and `purchase_order_signatures`.`status` = 1 and `purchase_order_signatures`.`id_role` = 39)) left join `car_data` `card` on(`card`.`id` = `po`.`id_car_data`)) left join `financing` on(`financing`.`id` = `po`.`id_financing`)) left join `financials` on(`financials`.`id` = `financing`.`id_financial`)) left join `type_purchase` `tp` on(`pd`.`id_type_purchase` = `tp`.`id`)) left join `types_insurances` on(`types_insurances`.`id` = `data_insurance`.`id_types_insurance`)) left join `insurances` on(`insurances`.`id` = `types_insurances`.`id_insurance`)) left join `type_insurance` on(`type_insurance`.`id` = `types_insurances`.`id_type_insurance`)) left join `client` on(`client`.`id` = `po`.`id_client`)) left join `car_acquisition` on(`car_acquisition`.`id` = `po`.`id_car_acquisition`)) left join `billing_address` on(`billing_address`.`id` = `po`.`id_billing_address`)) left join `states` on(`states`.`id` = `billing_address`.`id_state`)) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_ventas_totales_v6`
--
DROP TABLE IF EXISTS `vw_ventas_totales_v6`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_ventas_totales_v6`  AS SELECT `oportunities`.`id` AS `idop`, `po`.`id` AS `idpo`, `po`.`id_user` AS `id_user`, `oportunities`.`id_contact` AS `idc`, `brandag`.`id` AS `idBrandAgency`, `brandag`.`name` AS `ciudad`, `users`.`name` AS `asesor`, `users`.`lastname` AS `asesor_a`, `inventories`.`vin` AS `vin`, `inventories`.`car` AS `auto`, `oportunities`.`id_status_purchase` AS `id_status_purchase`, `type_vehicles`.`name` AS `nvo_dmo_sn`, `pd`.`billing_date` AS `billing_date`, `tp`.`name` AS `credito_contado`, `financials`.`name` AS `financiera`, `financials`.`financing_house` AS `financiera_casa`, `type_insurance`.`name` AS `tipo_seguro`, `insurances`.`name` AS `aseguradora`, `client`.`first_name` AS `nombre`, `client`.`second_name` AS `s_nombre`, `client`.`last_name` AS `apellido`, `client`.`mothers_last_name` AS `s_apellido`, `client`.`telephone` AS `telefono`, `client`.`office_phone` AS `telefono_oficina`, `client`.`email` AS `email`, `client`.`is_moral_client` AS `moral`, `client`.`rfc` AS `rfc`, `client`.`contact_full_name` AS `name_client_moral`, `client`.`address` AS `address`, `car_acquisition`.`model` AS `modelo`, `car_acquisition`.`version` AS `version`, `car_acquisition`.`year` AS `car_year`, `billing_address`.`street_number` AS `calle`, `billing_address`.`colony_fractionation` AS `colonia`, `billing_address`.`cp` AS `cp`, `states`.`name` AS `estado`, `data_insurance`.`id_term_ext_warranty` AS `extension_garantia`, `data_insurance`.`invoice_quantity_letter` AS `precio_extension_txt`, `pd`.`term_months` AS `plazo`, `purchase_order_approved`.`date_approved` AS `fecha_aprobacion`, `details_expenses`.`warranty_certificate` AS `precio_extension`, CASE WHEN `po`.`delivery` = 4 THEN 'Entregado' ELSE 'Facturado' END AS `Estatus_entregado` FROM ((((((((((((((((((((((`oportunities` join `purchase_order` `po` on(`oportunities`.`id` = `po`.`id_opportunity` and `po`.`status` = 1)) join `purchase_data` `pd` on(`pd`.`id` = `po`.`id_purchase_data`)) join `users` on(`users`.`id` = `po`.`id_user`)) left join `details_additional_expenses` `details_expenses` on(`details_expenses`.`id` = `po`.`id_details_additional_expenses`)) join `brands_agencies` `brandag` on(`brandag`.`id` = `users`.`id_brand_agency`)) join `data_insurance` on(`data_insurance`.`id` = `po`.`id_data_insurance`)) join `type_vehicles` on(`data_insurance`.`id_type_vehicle` = `type_vehicles`.`id`)) join `inventories_reserved` `invres` on(`oportunities`.`id` = `invres`.`id_opportunity` and `invres`.`status` = 1)) join `inventories` on(`inventories`.`id` = `invres`.`id_inventory`)) join `purchase_order_approved` on(`purchase_order_approved`.`id_purchase_order` = `po`.`id` and `purchase_order_approved`.`status` = 1)) join `purchase_order_signatures` on(`purchase_order_signatures`.`id` = `purchase_order_approved`.`id_signature` and `purchase_order_signatures`.`status` = 1 and `purchase_order_signatures`.`id_role` = 39)) left join `car_data` `card` on(`card`.`id` = `po`.`id_car_data`)) left join `financing` on(`financing`.`id` = `po`.`id_financing`)) left join `financials` on(`financials`.`id` = `financing`.`id_financial`)) left join `type_purchase` `tp` on(`pd`.`id_type_purchase` = `tp`.`id`)) left join `types_insurances` on(`types_insurances`.`id` = `data_insurance`.`id_types_insurance`)) left join `insurances` on(`insurances`.`id` = `types_insurances`.`id_insurance`)) left join `type_insurance` on(`type_insurance`.`id` = `types_insurances`.`id_type_insurance`)) left join `client` on(`client`.`id` = `po`.`id_client`)) left join `car_acquisition` on(`car_acquisition`.`id` = `po`.`id_car_acquisition`)) left join `billing_address` on(`billing_address`.`id` = `po`.`id_billing_address`)) left join `states` on(`states`.`id` = `billing_address`.`id_state`)) WHERE 1 GROUP BY `po`.`id` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_ventas_totales_v22`
--
DROP TABLE IF EXISTS `vw_ventas_totales_v22`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sygo_crm`@`%` SQL SECURITY DEFINER VIEW `vw_ventas_totales_v22`  AS SELECT `oportunities`.`id` AS `idop`, `po`.`id` AS `idpo`, `po`.`id_user` AS `id_user`, `oportunities`.`id_contact` AS `idc`, `brandag`.`id` AS `idBrandAgency`, `brandag`.`name` AS `ciudad`, `users`.`name` AS `asesor`, `users`.`lastname` AS `asesor_a`, `inventories`.`vin` AS `vin`, `inventories`.`car` AS `auto`, `oportunities`.`id_status_purchase` AS `id_status_purchase`, `type_vehicles`.`name` AS `nvo_dmo_sn`, `pd`.`billing_date` AS `billing_date`, `tp`.`name` AS `credito_contado`, `financials`.`name` AS `financiera`, `financials`.`financing_house` AS `financiera_casa`, `type_insurance`.`name` AS `tipo_seguro`, `insurances`.`name` AS `aseguradora`, `client`.`first_name` AS `nombre`, `client`.`second_name` AS `s_nombre`, `client`.`last_name` AS `apellido`, `client`.`mothers_last_name` AS `s_apellido`, `client`.`telephone` AS `telefono`, `client`.`office_phone` AS `telefono_oficina`, `client`.`email` AS `email`, `client`.`is_moral_client` AS `moral`, `client`.`rfc` AS `rfc`, `client`.`contact_full_name` AS `name_client_moral`, `client`.`address` AS `address`, `car_acquisition`.`model` AS `modelo`, `car_acquisition`.`version` AS `version`, `car_acquisition`.`year` AS `car_year`, `billing_address`.`street_number` AS `calle`, `billing_address`.`colony_fractionation` AS `colonia`, `billing_address`.`cp` AS `cp`, `states`.`name` AS `estado`, `data_insurance`.`id_term_ext_warranty` AS `extension_garantia`, `data_insurance`.`invoice_quantity_letter` AS `precio_extension_txt`, `pd`.`term_months` AS `plazo`, `purchase_order_approved`.`date_approved` AS `fecha_aprobacion`, `details_expenses`.`warranty_certificate` AS `precio_extension`, CASE WHEN `po`.`delivery` = 4 THEN 'Entregado' ELSE 'Facturado' END AS `Estatus_entregado` FROM ((((((((((((((((((((((`oportunities` join `purchase_order` `po` on(`oportunities`.`id` = `po`.`id_opportunity` and `po`.`status` = 1)) join `purchase_data` `pd` on(`pd`.`id` = `po`.`id_purchase_data`)) join `users` on(`users`.`id` = `po`.`id_user`)) left join `details_additional_expenses` `details_expenses` on(`details_expenses`.`id` = `po`.`id_details_additional_expenses`)) join `brands_agencies` `brandag` on(`brandag`.`id` = `users`.`id_brand_agency`)) join `data_insurance` on(`data_insurance`.`id` = `po`.`id_data_insurance`)) join `type_vehicles` on(`data_insurance`.`id_type_vehicle` = `type_vehicles`.`id`)) join `inventories_reserved` `invres` on(`oportunities`.`id` = `invres`.`id_opportunity` and `invres`.`status` = 1)) join `inventories` on(`inventories`.`id` = `invres`.`id_inventory`)) join `purchase_order_approved` on(`purchase_order_approved`.`id_purchase_order` = `po`.`id` and `purchase_order_approved`.`status` = 1)) join `purchase_order_signatures` on(`purchase_order_signatures`.`id` = `purchase_order_approved`.`id_signature` and `purchase_order_signatures`.`status` = 1 and `purchase_order_signatures`.`id_role` = 39)) left join `car_data` `card` on(`card`.`id` = `po`.`id_car_data`)) left join `financing` on(`financing`.`id` = `po`.`id_financing`)) left join `financials` on(`financials`.`id` = `financing`.`id_financial`)) left join `type_purchase` `tp` on(`pd`.`id_type_purchase` = `tp`.`id`)) left join `types_insurances` on(`types_insurances`.`id` = `data_insurance`.`id_types_insurance`)) left join `insurances` on(`insurances`.`id` = `types_insurances`.`id_insurance`)) left join `type_insurance` on(`type_insurance`.`id` = `types_insurances`.`id_type_insurance`)) left join `client` on(`client`.`id` = `po`.`id_client`)) left join `car_acquisition` on(`car_acquisition`.`id` = `po`.`id_car_acquisition`)) left join `billing_address` on(`billing_address`.`id` = `po`.`id_billing_address`)) left join `states` on(`states`.`id` = `billing_address`.`id_state`)) WHERE 1 GROUP BY `po`.`id` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_inventories`
--
DROP TABLE IF EXISTS `v_inventories`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sygo_crm`@`%` SQL SECURITY DEFINER VIEW `v_inventories`  AS SELECT `inventories`.`id` AS `id`, `inventories`.`cd` AS `cd`, `inventories`.`number` AS `number`, `inventories`.`arrival` AS `arrival`, `inventories`.`year` AS `year`, `inventories`.`car` AS `car`, `inventories`.`vin` AS `vin`, `inventories`.`type_motor` AS `type_motor`, `inventories`.`days_inventory` AS `days_inventory`, `inventories`.`vco` AS `vco`, `inventories`.`cylinders` AS `cylinders`, `inventories`.`doors` AS `doors`, `inventories`.`passenger` AS `passenger`, `inventories`.`tower` AS `tower`, `inventories`.`cost` AS `cost`, `inventories`.`code` AS `code`, `inventories`.`date_arrival` AS `date_arrival`, `inventories`.`status_kms` AS `status_kms`, `inventories`.`month` AS `month`, `inventories`.`order_status` AS `order_status`, `inventories`.`isSale` AS `isSale`, `inventories`.`plates` AS `plates`, `inventories`.`id_type_inventory` AS `id_type_inventory`, `ti`.`name` AS `status_inventory`, `inventories`.`id_status_inventory` AS `id_status_inventory`, `si`.`name` AS `type_inventory`, `inventories`.`id_model_version` AS `id_model_version`, `inventories`.`id_model_version_year` AS `id_model_version_year`, `inventories`.`id_location` AS `id_location`, `inventories`.`id_inventory_floor` AS `id_inventory_floor`, `inventories`.`id_transmission` AS `id_transmission`, `inventories`.`id_color` AS `id_color`, `c`.`name` AS `color`, `inventories`.`id_color_interior` AS `id_color_interior`, `ba`.`id_brand` AS `id_brand`, `inventories`.`id_brand_agency` AS `id_brand_agency`, `inventories`.`reported_plant` AS `reported_plant`, `inventories`.`status` AS `status`, `inventories`.`createdAt` AS `createdAt`, `inventories`.`updatedAt` AS `updatedAt`, `inventories`.`deletedAt` AS `deletedAt` FROM ((((`inventories` left join `status_inventory` `si` on(`si`.`id` = `inventories`.`id_status_inventory`)) left join `type_inventory` `ti` on(`ti`.`id` = `inventories`.`id_type_inventory`)) left join `colors` `c` on(`c`.`id` = `inventories`.`id_color`)) left join `brands_agencies` `ba` on(`ba`.`id` = `inventories`.`id_brand_agency`)) WHERE `inventories`.`id_status_inventory` in (1,2,5,8) AND `inventories`.`status` is true AND `inventories`.`id_type_inventory` in (1,5,6,7,8,9) ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `fk_id_oportunity` FOREIGN KEY (`id_oportunity`) REFERENCES `oportunities` (`id`),
  ADD CONSTRAINT `fk_id_status_activity` FOREIGN KEY (`id_status_activity`) REFERENCES `status_activity` (`id`),
  ADD CONSTRAINT `fk_id_type_activity` FOREIGN KEY (`id_type_activity`) REFERENCES `type_activity` (`id`),
  ADD CONSTRAINT `fk_id_type_appointment` FOREIGN KEY (`id_type_appointment`) REFERENCES `type_appointments` (`id`),
  ADD CONSTRAINT `fk_id_type_task` FOREIGN KEY (`id_type_task`) REFERENCES `type_task` (`id`),
  ADD CONSTRAINT `fk_id_user_adviser_a` FOREIGN KEY (`id_user_adviser`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `activity_happy_call_surveys`
--
ALTER TABLE `activity_happy_call_surveys`
  ADD CONSTRAINT `fk_id_activity_ahcs` FOREIGN KEY (`id_activity`) REFERENCES `activities` (`id`),
  ADD CONSTRAINT `fk_id_type_contact_favorites_ahcs` FOREIGN KEY (`id_type_contact`) REFERENCES `type_contact_favorites` (`id`);

--
-- Filtros para la tabla `adviser_change_history`
--
ALTER TABLE `adviser_change_history`
  ADD CONSTRAINT `fk_id_contact_ach` FOREIGN KEY (`id_contact`) REFERENCES `contacts` (`id`),
  ADD CONSTRAINT `fk_id_user_adviser_ach` FOREIGN KEY (`id_user_adviser`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_id_user_movement_ach` FOREIGN KEY (`id_user_movement`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `agencies`
--
ALTER TABLE `agencies`
  ADD CONSTRAINT `agencies_ibfk_1` FOREIGN KEY (`id_state`) REFERENCES `states` (`id`);

--
-- Filtros para la tabla `anti_money_address`
--
ALTER TABLE `anti_money_address`
  ADD CONSTRAINT `fk_id_activity_business_line_corporate_purpose_ana` FOREIGN KEY (`id_activity_business_line_corporate_purpose`) REFERENCES `activity_business_line_corporate_purpose` (`id`),
  ADD CONSTRAINT `fk_id_activity_occupation_profession_am` FOREIGN KEY (`id_activity_occupation_profession`) REFERENCES `activity_occupation_profession` (`id`),
  ADD CONSTRAINT `fk_id_city_am` FOREIGN KEY (`id_city`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `fk_id_country_am` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `fk_id_country_birth_ama` FOREIGN KEY (`id_country_birth`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `fk_id_country_nationality_ama` FOREIGN KEY (`id_country_nationality`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `fk_id_identification_am` FOREIGN KEY (`id_identification`) REFERENCES `identifications` (`id`),
  ADD CONSTRAINT `fk_id_state_am` FOREIGN KEY (`id_state`) REFERENCES `states` (`id`);

--
-- Filtros para la tabla `anti_money_laundering`
--
ALTER TABLE `anti_money_laundering`
  ADD CONSTRAINT `fk_id_purchase_order_aml` FOREIGN KEY (`id_purchase_order`) REFERENCES `purchase_order` (`id`);

--
-- Filtros para la tabla `anti_money_laundering_beneficiary`
--
ALTER TABLE `anti_money_laundering_beneficiary`
  ADD CONSTRAINT `fk_id_anti_money_laundering_amlb` FOREIGN KEY (`id_anti_money_laundering`) REFERENCES `anti_money_laundering` (`id`),
  ADD CONSTRAINT `fk_id_city_amlb` FOREIGN KEY (`id_city`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `fk_id_country_amlb` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `fk_id_country_birth_amlb` FOREIGN KEY (`id_country_birth`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `fk_id_identification_amlb` FOREIGN KEY (`id_identification`) REFERENCES `identifications` (`id`),
  ADD CONSTRAINT `fk_id_state_amlb` FOREIGN KEY (`id_state`) REFERENCES `states` (`id`);

--
-- Filtros para la tabla `anti_money_laundering_references`
--
ALTER TABLE `anti_money_laundering_references`
  ADD CONSTRAINT `fk_id_anti_money_laundering_amlr` FOREIGN KEY (`id_anti_money_laundering`) REFERENCES `anti_money_laundering` (`id`);

--
-- Filtros para la tabla `anti_money_moral_address`
--
ALTER TABLE `anti_money_moral_address`
  ADD CONSTRAINT `anti_money_moral_address_ibfk_1` FOREIGN KEY (`id_anti_money_address`) REFERENCES `anti_money_address` (`id`),
  ADD CONSTRAINT `anti_money_moral_address_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `fk_id_activity_business_line_corporate_purpose_a` FOREIGN KEY (`id_activity_business_line_corporate_purpose`) REFERENCES `activity_business_line_corporate_purpose` (`id`),
  ADD CONSTRAINT `fk_id_country_birth_nationality_a` FOREIGN KEY (`id_country_birth_nationality`) REFERENCES `countries` (`id`);

--
-- Filtros para la tabla `approved_checklist`
--
ALTER TABLE `approved_checklist`
  ADD CONSTRAINT `fk_ id_purchase_order_ac` FOREIGN KEY (`id_purchase_order`) REFERENCES `purchase_order` (`id`),
  ADD CONSTRAINT `fk_ id_signature_ac` FOREIGN KEY (`id_signature`) REFERENCES `purchase_order_signatures` (`id`);

--
-- Filtros para la tabla `approved_checklist_answer`
--
ALTER TABLE `approved_checklist_answer`
  ADD CONSTRAINT `fk_id_question_aca` FOREIGN KEY (`id_question`) REFERENCES `approved_checklist_question` (`id`);

--
-- Filtros para la tabla `approved_checklist_question`
--
ALTER TABLE `approved_checklist_question`
  ADD CONSTRAINT `fk_id_brand_acq` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `fk_id_role_acq` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `approved_checklist_questions_answers`
--
ALTER TABLE `approved_checklist_questions_answers`
  ADD CONSTRAINT `fk_answer_acqa` FOREIGN KEY (`id_approved_checklist_answer`) REFERENCES `approved_checklist_answer` (`id`),
  ADD CONSTRAINT `fk_id_approved_checklist_acqa` FOREIGN KEY (`id_approved_checklist`) REFERENCES `approved_checklist` (`id`),
  ADD CONSTRAINT `fk_question_acqa` FOREIGN KEY (`id_approved_checklist_question`) REFERENCES `approved_checklist_question` (`id`);

--
-- Filtros para la tabla `audit_log_review`
--
ALTER TABLE `audit_log_review`
  ADD CONSTRAINT `fk_id_purchase_order_alr` FOREIGN KEY (`id_purchase_order`) REFERENCES `purchase_order` (`id`),
  ADD CONSTRAINT `fk_id_type_audit_phase_alr` FOREIGN KEY (`id_type_audit_phase`) REFERENCES `type_audit_phases` (`id`),
  ADD CONSTRAINT `fk_id_user_alr` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `audit_review_checklist`
--
ALTER TABLE `audit_review_checklist`
  ADD CONSTRAINT `fk_id_repository_folder_arc` FOREIGN KEY (`id_repository_folder`) REFERENCES `repository_folders` (`id`);

--
-- Filtros para la tabla `audit_review_section_checklist_type_brand`
--
ALTER TABLE `audit_review_section_checklist_type_brand`
  ADD CONSTRAINT `fk_id_audit_review_checklist_arsctb` FOREIGN KEY (`id_audit_review_checklist`) REFERENCES `audit_review_checklist` (`id`),
  ADD CONSTRAINT `fk_id_audit_review_section_arsctb` FOREIGN KEY (`id_audit_review_section`) REFERENCES `audit_review_sections` (`id`),
  ADD CONSTRAINT `fk_id_brand_arsctb` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `fk_id_type_audit_phase_arsctb` FOREIGN KEY (`id_type_audit_phase`) REFERENCES `type_audit_phases` (`id`);

--
-- Filtros para la tabla `audit_tracking_checklist`
--
ALTER TABLE `audit_tracking_checklist`
  ADD CONSTRAINT `fk_id_audit_log_review_atd` FOREIGN KEY (`id_audit_log_review`) REFERENCES `audit_log_review` (`id`);

--
-- Filtros para la tabla `auth_refresh_tokens`
--
ALTER TABLE `auth_refresh_tokens`
  ADD CONSTRAINT `fk_user_id_u` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `autometrica_mapping`
--
ALTER TABLE `autometrica_mapping`
  ADD CONSTRAINT `fk_id_autometrica_catalog_iam` FOREIGN KEY (`id_autometrica_catalog`) REFERENCES `autometrica_catalog` (`id`),
  ADD CONSTRAINT `fk_id_inventory_iam` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`);

--
-- Filtros para la tabla `autometrica_prices_cache`
--
ALTER TABLE `autometrica_prices_cache`
  ADD CONSTRAINT `fk_id_inventory_apc` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`);

--
-- Filtros para la tabla `back_orders`
--
ALTER TABLE `back_orders`
  ADD CONSTRAINT `back_orders_ibfk_1` FOREIGN KEY (`id_status_inventory`) REFERENCES `status_inventory` (`id`),
  ADD CONSTRAINT `back_orders_ibfk_3` FOREIGN KEY (`id_adviser_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `back_orders_ibfk_6` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `back_orders_ibfk_7` FOREIGN KEY (`id_opportunity`) REFERENCES `oportunities` (`id`),
  ADD CONSTRAINT `fk_id_adviser_user_b` FOREIGN KEY (`id_adviser_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_id_model_color_opt_one_bo` FOREIGN KEY (`id_model_color_opt_one`) REFERENCES `models_colors` (`id`),
  ADD CONSTRAINT `fk_id_model_color_opt_two_bo` FOREIGN KEY (`id_model_color_opt_two`) REFERENCES `models_colors` (`id`);

--
-- Filtros para la tabla `back_order_preowned`
--
ALTER TABLE `back_order_preowned`
  ADD CONSTRAINT `back_order_preowned_ibfk_1` FOREIGN KEY (`id_brand_external_one`) REFERENCES `brands_external` (`id`),
  ADD CONSTRAINT `back_order_preowned_ibfk_2` FOREIGN KEY (`id_brand_external_two`) REFERENCES `brands_external` (`id`),
  ADD CONSTRAINT `back_order_preowned_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `back_order_preowned_ibfk_4` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `back_order_preowned_ibfk_5` FOREIGN KEY (`id_opportunity`) REFERENCES `oportunities` (`id`);

--
-- Filtros para la tabla `billing_address`
--
ALTER TABLE `billing_address`
  ADD CONSTRAINT `fk_id_city_b` FOREIGN KEY (`id_city`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `fk_id_state_b` FOREIGN KEY (`id_state`) REFERENCES `states` (`id`);

--
-- Filtros para la tabla `brands_agencies`
--
ALTER TABLE `brands_agencies`
  ADD CONSTRAINT `idAgencie` FOREIGN KEY (`id_agencie`) REFERENCES `agencies` (`id`),
  ADD CONSTRAINT `idBrand` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`);

--
-- Filtros para la tabla `brands_categories_templates`
--
ALTER TABLE `brands_categories_templates`
  ADD CONSTRAINT `fk_id_brand_bct` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `fk_id_category_template_bct` FOREIGN KEY (`id_category_template`) REFERENCES `categories_templates` (`id`);

--
-- Filtros para la tabla `car_acquisition`
--
ALTER TABLE `car_acquisition`
  ADD CONSTRAINT `fk_id_color_exterior_tc` FOREIGN KEY (`id_color_exterior`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `fk_id_type_take_tc` FOREIGN KEY (`id_type_take`) REFERENCES `type_car_acquisition` (`id`);

--
-- Filtros para la tabla `car_data`
--
ALTER TABLE `car_data`
  ADD CONSTRAINT `car_data_ibfk_1` FOREIGN KEY (`id_inventory_reserved`) REFERENCES `inventories_reserved` (`id`);

--
-- Filtros para la tabla `car_takes`
--
ALTER TABLE `car_takes`
  ADD CONSTRAINT `fk_id_brand_agency_ct` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`);

--
-- Filtros para la tabla `category_template_variables`
--
ALTER TABLE `category_template_variables`
  ADD CONSTRAINT `category_template_variables_ibfk_1` FOREIGN KEY (`id_category_template`) REFERENCES `categories_templates` (`id`),
  ADD CONSTRAINT `category_template_variables_ibfk_2` FOREIGN KEY (`id_variable`) REFERENCES `variables` (`id`);

--
-- Filtros para la tabla `cc_emails`
--
ALTER TABLE `cc_emails`
  ADD CONSTRAINT `fk_id_brand_agency_ce` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_type_sent_email_ce` FOREIGN KEY (`id_type_sent_email`) REFERENCES `type_sent_email` (`id`);

--
-- Filtros para la tabla `cities_states`
--
ALTER TABLE `cities_states`
  ADD CONSTRAINT `fk_id_city_cs` FOREIGN KEY (`id_city`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `fk_id_state_cs` FOREIGN KEY (`id_state`) REFERENCES `states` (`id`);

--
-- Filtros para la tabla `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `fk_id_civil_status_c` FOREIGN KEY (`id_civil_status`) REFERENCES `civil_status` (`id`),
  ADD CONSTRAINT `fk_id_gender_c` FOREIGN KEY (`id_gender`) REFERENCES `genders` (`id`),
  ADD CONSTRAINT `fk_id_profession_c` FOREIGN KEY (`id_profession`) REFERENCES `profession` (`id`);

--
-- Filtros para la tabla `commissionable_item`
--
ALTER TABLE `commissionable_item`
  ADD CONSTRAINT `fk_id_brand_agency_ci` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_brand_ci` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `fk_id_commissionable_item_type_ci` FOREIGN KEY (`id_commissionable_item_type`) REFERENCES `commissionable_item_type` (`id`),
  ADD CONSTRAINT `fk_id_type_schema_ci` FOREIGN KEY (`id_type_schema`) REFERENCES `type_scheme` (`id`);

--
-- Filtros para la tabla `commissionable_item_tiers`
--
ALTER TABLE `commissionable_item_tiers`
  ADD CONSTRAINT `fk_id_commissionable_item_cit` FOREIGN KEY (`id_commissionable_item`) REFERENCES `commissionable_item` (`id`);

--
-- Filtros para la tabla `commission_credit_aperture`
--
ALTER TABLE `commission_credit_aperture`
  ADD CONSTRAINT `fk_id_purchase_order_cca` FOREIGN KEY (`id_purchase_order`) REFERENCES `purchase_order` (`id`),
  ADD CONSTRAINT `fk_id_user_cca` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `commission_mystery_shopper`
--
ALTER TABLE `commission_mystery_shopper`
  ADD CONSTRAINT `fk_id_commission_payment_request_ms` FOREIGN KEY (`id_commission_payment_request`) REFERENCES `commission_payment_request` (`id`),
  ADD CONSTRAINT `fk_id_model_version_year_ms` FOREIGN KEY (`id_model_version_year`) REFERENCES `models_versions_years` (`id`),
  ADD CONSTRAINT `fk_id_unit_mystery_shopper_ms` FOREIGN KEY (`id_unit_mystery_shopper`) REFERENCES `unit_mystery_shopper` (`id`),
  ADD CONSTRAINT `fk_id_user_ms` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `commission_payment_purchase_order`
--
ALTER TABLE `commission_payment_purchase_order`
  ADD CONSTRAINT `fk_id_commission_payment_request_cppo` FOREIGN KEY (`id_commission_payment_request`) REFERENCES `commission_payment_request` (`id`),
  ADD CONSTRAINT `fk_id_purchase_order_cppo` FOREIGN KEY (`id_purchase_order`) REFERENCES `purchase_order` (`id`);

--
-- Filtros para la tabla `commission_payment_request`
--
ALTER TABLE `commission_payment_request`
  ADD CONSTRAINT `fk_id_status_comission_cpr` FOREIGN KEY (`id_status_commission`) REFERENCES `status_commission` (`id`),
  ADD CONSTRAINT `fk_id_type_payment_commission_cpr` FOREIGN KEY (`id_type_payment_commission`) REFERENCES `type_payment_commission` (`id`),
  ADD CONSTRAINT `fk_id_user_request_cpr` FOREIGN KEY (`id_user_request`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `commission_payment_request_files`
--
ALTER TABLE `commission_payment_request_files`
  ADD CONSTRAINT `fk_commission_payment_request_files_cprf` FOREIGN KEY (`id_commission_payment_request`) REFERENCES `commission_payment_request` (`id`);

--
-- Filtros para la tabla `commission_payment_request_item`
--
ALTER TABLE `commission_payment_request_item`
  ADD CONSTRAINT `fk_id_commission_request_purchase_order_cpri` FOREIGN KEY (`id_commission_request_purchase_order`) REFERENCES `commission_payment_purchase_order` (`id`),
  ADD CONSTRAINT `fk_id_commission_sale_addon_cpri` FOREIGN KEY (`id_commission_sale_addon`) REFERENCES `commission_sale_addon` (`id`),
  ADD CONSTRAINT `fk_id_commission_sale_scheme_applied_cpri` FOREIGN KEY (`id_commission_sale_scheme_applied`) REFERENCES `commission_sale_scheme_applied` (`id`);

--
-- Filtros para la tabla `commission_payment_review`
--
ALTER TABLE `commission_payment_review`
  ADD CONSTRAINT `fk_id_commission_payment_request_cpr` FOREIGN KEY (`id_commission_payment_request`) REFERENCES `commission_payment_request` (`id`),
  ADD CONSTRAINT `fk_id_commission_review_signatures_cpr` FOREIGN KEY (`id_commission_review_signatures`) REFERENCES `commission_review_signatures` (`id`),
  ADD CONSTRAINT `fk_id_user_review_cpr` FOREIGN KEY (`id_user_review`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `commission_payment_user_request_item`
--
ALTER TABLE `commission_payment_user_request_item`
  ADD CONSTRAINT `fk_id_commission_payment_request_cpri` FOREIGN KEY (`id_commission_payment_request`) REFERENCES `commission_payment_request` (`id`),
  ADD CONSTRAINT `fk_id_commissionable_item_cpri` FOREIGN KEY (`id_commissionable_item`) REFERENCES `commissionable_item` (`id`),
  ADD CONSTRAINT `fk_id_user_cpri` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `commission_review_signatures`
--
ALTER TABLE `commission_review_signatures`
  ADD CONSTRAINT `fk_id_brand_agency_commission_sig` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_rol_commission_sig` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `commission_sale_addon`
--
ALTER TABLE `commission_sale_addon`
  ADD CONSTRAINT `fk_id_commissionable_item_sac` FOREIGN KEY (`id_commissionable_item`) REFERENCES `commissionable_item` (`id`),
  ADD CONSTRAINT `fk_id_purchase_order_sac` FOREIGN KEY (`id_purchase_order`) REFERENCES `purchase_order` (`id`);

--
-- Filtros para la tabla `commission_sale_scheme_applied`
--
ALTER TABLE `commission_sale_scheme_applied`
  ADD CONSTRAINT `fk_id_commission_scheme_scsa` FOREIGN KEY (`id_commission_scheme`) REFERENCES `commission_scheme` (`id`),
  ADD CONSTRAINT `fk_id_purchase_order_scsa` FOREIGN KEY (`id_purchase_order`) REFERENCES `purchase_order` (`id`);

--
-- Filtros para la tabla `commission_scheme`
--
ALTER TABLE `commission_scheme`
  ADD CONSTRAINT `fk_id_brand_cs` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `fk_id_model_version_year_cs` FOREIGN KEY (`id_model_version_year`) REFERENCES `models_versions_years` (`id`),
  ADD CONSTRAINT `fk_id_type_schema_cs` FOREIGN KEY (`id_type_schema`) REFERENCES `type_scheme` (`id`);

--
-- Filtros para la tabla `commission_tiers`
--
ALTER TABLE `commission_tiers`
  ADD CONSTRAINT `fk_id_commission_scheme_ct` FOREIGN KEY (`id_commission_scheme`) REFERENCES `commission_scheme` (`id`),
  ADD CONSTRAINT `fk_id_type_commission_ct` FOREIGN KEY (`id_type_commission`) REFERENCES `type_commission` (`id`);

--
-- Filtros para la tabla `constitutive_act`
--
ALTER TABLE `constitutive_act`
  ADD CONSTRAINT `fk_id_way_pay_ca` FOREIGN KEY (`id_payment_way`) REFERENCES `payment_way` (`id`),
  ADD CONSTRAINT `fk_state_ca` FOREIGN KEY (`id_state`) REFERENCES `states` (`id`);

--
-- Filtros para la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`id_status_contact`) REFERENCES `status_contacts` (`id`),
  ADD CONSTRAINT `fk_id_advertising` FOREIGN KEY (`id_advertising`) REFERENCES `advertisements` (`id`),
  ADD CONSTRAINT `fk_id_brand_agency` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_contact_favorite` FOREIGN KEY (`id_contact_favorite`) REFERENCES `type_contact_favorites` (`id`),
  ADD CONSTRAINT `fk_id_event` FOREIGN KEY (`id_event`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `fk_id_source` FOREIGN KEY (`id_source`) REFERENCES `sources` (`id`),
  ADD CONSTRAINT `fk_id_type_gender` FOREIGN KEY (`id_gender`) REFERENCES `genders` (`id`),
  ADD CONSTRAINT `fk_id_user_adviser_c` FOREIGN KEY (`id_user_adviser`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `contacts_day`
--
ALTER TABLE `contacts_day`
  ADD CONSTRAINT `fk_id_contact` FOREIGN KEY (`id_contact`) REFERENCES `contacts` (`id`),
  ADD CONSTRAINT `fk_id_type_hostess` FOREIGN KEY (`id_type_hostess`) REFERENCES `type_hostess` (`id`),
  ADD CONSTRAINT `fk_id_user_adviser` FOREIGN KEY (`id_user_adviser`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_id_user_deleted` FOREIGN KEY (`id_user_deleted`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_id_user_hostess` FOREIGN KEY (`id_user_hostess`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `contacts_day_sales_point`
--
ALTER TABLE `contacts_day_sales_point`
  ADD CONSTRAINT `fk_id_contact_cdc` FOREIGN KEY (`id_contact`) REFERENCES `contacts` (`id`),
  ADD CONSTRAINT `fk_id_id_sales_point_cdc` FOREIGN KEY (`id_sales_point`) REFERENCES `sales_points` (`id`),
  ADD CONSTRAINT `fk_id_type_hostess_cdc` FOREIGN KEY (`id_type_hostess`) REFERENCES `type_hostess` (`id`),
  ADD CONSTRAINT `fk_id_user_adviser_cdc` FOREIGN KEY (`id_user_adviser`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_id_user_deleted_cdc` FOREIGN KEY (`id_user_deleted`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_id_user_hostess_cdc` FOREIGN KEY (`id_user_hostess`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `credit_request`
--
ALTER TABLE `credit_request`
  ADD CONSTRAINT `fk_id_financial_cr` FOREIGN KEY (`id_financial`) REFERENCES `financials` (`id`),
  ADD CONSTRAINT `fk_id_insurance_cr` FOREIGN KEY (`id_insurance`) REFERENCES `insurances` (`id`),
  ADD CONSTRAINT `fk_id_reason_approval_lcr` FOREIGN KEY (`id_reason_approval`) REFERENCES `reason_approval` (`id`),
  ADD CONSTRAINT `fk_id_reason_rejection_lcr` FOREIGN KEY (`id_reason_rejection`) REFERENCES `reason_rejection` (`id`),
  ADD CONSTRAINT `fk_id_status_credit_request_cr` FOREIGN KEY (`id_status_credit_request`) REFERENCES `status_credit_request` (`id`),
  ADD CONSTRAINT `fk_id_tracking_credit_cr` FOREIGN KEY (`id_tracking_credit`) REFERENCES `tracking_credit` (`id`),
  ADD CONSTRAINT `fk_id_type_credit_request_cr` FOREIGN KEY (`id_type_credit_request`) REFERENCES `type_credit_request` (`id`),
  ADD CONSTRAINT `fk_id_type_insurance_cr` FOREIGN KEY (`id_type_insurance`) REFERENCES `type_insurance` (`id`),
  ADD CONSTRAINT `fk_id_user_cr` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_id_warranty_cr` FOREIGN KEY (`id_warranty`) REFERENCES `type_extension` (`id`);

--
-- Filtros para la tabla `cronjobs_logs`
--
ALTER TABLE `cronjobs_logs`
  ADD CONSTRAINT `fk_id_cronjob` FOREIGN KEY (`id_cronjob`) REFERENCES `cronjobs` (`id`);

--
-- Filtros para la tabla `data_insurance`
--
ALTER TABLE `data_insurance`
  ADD CONSTRAINT `fk_id_term_ext_warranty_d` FOREIGN KEY (`id_term_ext_warranty`) REFERENCES `term_ext_warranty` (`id`),
  ADD CONSTRAINT `fk_id_type_extension_di` FOREIGN KEY (`id_type_extension`) REFERENCES `type_extension` (`id`),
  ADD CONSTRAINT `fk_id_type_vehicle_d` FOREIGN KEY (`id_type_vehicle`) REFERENCES `type_vehicles` (`id`),
  ADD CONSTRAINT `fk_id_types_insurance_d` FOREIGN KEY (`id_types_insurance`) REFERENCES `types_insurances` (`id`);

--
-- Filtros para la tabla `deadline_payment_order`
--
ALTER TABLE `deadline_payment_order`
  ADD CONSTRAINT `fk_id_type_deadline_order_tpo` FOREIGN KEY (`id_type_deadline_order`) REFERENCES `type_deadline_order` (`id`),
  ADD CONSTRAINT `fk_id_type_others_order_tpo` FOREIGN KEY (`id_type_others_order`) REFERENCES `type_others_order` (`id`);

--
-- Filtros para la tabla `delivery_logs`
--
ALTER TABLE `delivery_logs`
  ADD CONSTRAINT `delivery_logs_ibfk_1` FOREIGN KEY (`id_purchase_order`) REFERENCES `purchase_order` (`id`),
  ADD CONSTRAINT `fk_id_user_delivery_logs` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `details_additional_expenses`
--
ALTER TABLE `details_additional_expenses`
  ADD CONSTRAINT `fk_fk_id_deadline_payment_order_dae` FOREIGN KEY (`id_deadline_payment_order`) REFERENCES `deadline_payment_order` (`id`);

--
-- Filtros para la tabla `details_payment`
--
ALTER TABLE `details_payment`
  ADD CONSTRAINT `fk_id_purchase_order_dp` FOREIGN KEY (`id_purchase_order`) REFERENCES `purchase_order` (`id`),
  ADD CONSTRAINT `fk_id_type_payment` FOREIGN KEY (`id_type_payment_order`) REFERENCES `type_payment_order` (`id`);

--
-- Filtros para la tabla `details_tracking_preowned`
--
ALTER TABLE `details_tracking_preowned`
  ADD CONSTRAINT `fk_id_option_tracking_preowned_dtp` FOREIGN KEY (`id_option_tracking_preowned`) REFERENCES `options_tracking_preowned` (`id`),
  ADD CONSTRAINT `fk_id_tracking_preowned_dtp` FOREIGN KEY (`id_tracking_preowned`) REFERENCES `tracking_preowned` (`id`);

--
-- Filtros para la tabla `detail_inventory_preowned`
--
ALTER TABLE `detail_inventory_preowned`
  ADD CONSTRAINT `fk_id_brand_external` FOREIGN KEY (`id_brand_external`) REFERENCES `brands_external` (`id`),
  ADD CONSTRAINT `fk_id_car_category_dip` FOREIGN KEY (`id_car_category`) REFERENCES `car_categories` (`id`),
  ADD CONSTRAINT `fk_id_inventory_dip` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `fk_id_tower_dip` FOREIGN KEY (`id_tower`) REFERENCES `tower` (`id`),
  ADD CONSTRAINT `fk_id_type_received_agency_dip` FOREIGN KEY (`id_type_received_agency`) REFERENCES `type_received_agency` (`id`);

--
-- Filtros para la tabla `directory_files`
--
ALTER TABLE `directory_files`
  ADD CONSTRAINT `directory_files_ibfk_1` FOREIGN KEY (`id_model_year`) REFERENCES `models_years` (`id`),
  ADD CONSTRAINT `fk_id_directory_folder` FOREIGN KEY (`id_directory_folder`) REFERENCES `directory_folders` (`id`),
  ADD CONSTRAINT `fk_id_model_df` FOREIGN KEY (`id_model`) REFERENCES `models` (`id`);

--
-- Filtros para la tabla `directory_files_agencies`
--
ALTER TABLE `directory_files_agencies`
  ADD CONSTRAINT `fk_id_brand_agency_directory` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_directory_file_dfba` FOREIGN KEY (`id_directory_file`) REFERENCES `directory_files` (`id`),
  ADD CONSTRAINT `fk_id_intranet_folder_tif` FOREIGN KEY (`id_intranet_folder`) REFERENCES `intranet_folders` (`id`);

--
-- Filtros para la tabla `documents_brand`
--
ALTER TABLE `documents_brand`
  ADD CONSTRAINT `fk_brand_doc` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `fk_type_document_config` FOREIGN KEY (`id_type_document_config`) REFERENCES `type_document_config` (`id`);

--
-- Filtros para la tabla `documents_brand_agency`
--
ALTER TABLE `documents_brand_agency`
  ADD CONSTRAINT `fk_id_brand_agency_doc` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_type_document_config` FOREIGN KEY (`id_type_document_config`) REFERENCES `type_document_config` (`id`);

--
-- Filtros para la tabla `document_audit`
--
ALTER TABLE `document_audit`
  ADD CONSTRAINT `fk_id_brand_da` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `fk_id_repository_folder_da` FOREIGN KEY (`id_repository_folder`) REFERENCES `repository_folders` (`id`),
  ADD CONSTRAINT `fk_id_section_document_audit_du` FOREIGN KEY (`id_section_document_audit`) REFERENCES `section_document_audit` (`id`);

--
-- Filtros para la tabla `driving_test`
--
ALTER TABLE `driving_test`
  ADD CONSTRAINT `driving_test_ibfk_1` FOREIGN KEY (`id_contact_day`) REFERENCES `contacts_day` (`id`),
  ADD CONSTRAINT `driving_test_ibfk_2` FOREIGN KEY (`id_opportunity`) REFERENCES `oportunities` (`id`),
  ADD CONSTRAINT `fk_id_brand_agency_dt` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_inventory_dt` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `fk_id_user_adviser_dt` FOREIGN KEY (`id_user_adviser`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_id_user_hostess_dt` FOREIGN KEY (`id_user_hostess`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `driving_test_signatures`
--
ALTER TABLE `driving_test_signatures`
  ADD CONSTRAINT `driving_test_signatures_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_agency_signatures` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`);

--
-- Filtros para la tabla `eo_results_indicators`
--
ALTER TABLE `eo_results_indicators`
  ADD CONSTRAINT `fk_id_eo_indicator_eri` FOREIGN KEY (`id_eo_indicator`) REFERENCES `eo_indicators` (`id`),
  ADD CONSTRAINT `fk_id_eo_user_metric_eri` FOREIGN KEY (`id_eo_user_metric`) REFERENCES `eo_user_metrics` (`id`);

--
-- Filtros para la tabla `eo_user_metrics`
--
ALTER TABLE `eo_user_metrics`
  ADD CONSTRAINT `fk_id_brand_agency_eum` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_user_eum` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`);

--
-- Filtros para la tabla `financials`
--
ALTER TABLE `financials`
  ADD CONSTRAINT `financials_ibfk_1` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`);

--
-- Filtros para la tabla `financing`
--
ALTER TABLE `financing`
  ADD CONSTRAINT `fk_id_type_insurance_f` FOREIGN KEY (`id_financial`) REFERENCES `financials` (`id`);

--
-- Filtros para la tabla `forms`
--
ALTER TABLE `forms`
  ADD CONSTRAINT `fk_id_user_f` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `forms_answers`
--
ALTER TABLE `forms_answers`
  ADD CONSTRAINT `fk_id_choice_fa` FOREIGN KEY (`id_choice`) REFERENCES `forms_choices` (`id`),
  ADD CONSTRAINT `fk_id_form_response_fa` FOREIGN KEY (`id_form_response`) REFERENCES `forms_users_responses` (`id`),
  ADD CONSTRAINT `fk_id_question_fa` FOREIGN KEY (`id_question`) REFERENCES `forms_questions` (`id`);

--
-- Filtros para la tabla `forms_choices`
--
ALTER TABLE `forms_choices`
  ADD CONSTRAINT `fk_id_question_fc` FOREIGN KEY (`id_question`) REFERENCES `forms_questions` (`id`);

--
-- Filtros para la tabla `forms_permissions`
--
ALTER TABLE `forms_permissions`
  ADD CONSTRAINT `fk_id_brand_agency_fp` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_form_fp` FOREIGN KEY (`id_form`) REFERENCES `forms` (`id`),
  ADD CONSTRAINT `fk_id_role_fp` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `forms_questions`
--
ALTER TABLE `forms_questions`
  ADD CONSTRAINT `fk_id_form_fq` FOREIGN KEY (`id_form`) REFERENCES `forms` (`id`),
  ADD CONSTRAINT `fk_id_type_fq` FOREIGN KEY (`id_type`) REFERENCES `type_control` (`id`);

--
-- Filtros para la tabla `forms_users_responses`
--
ALTER TABLE `forms_users_responses`
  ADD CONSTRAINT `fk_id_form_fur` FOREIGN KEY (`id_form`) REFERENCES `forms` (`id`),
  ADD CONSTRAINT `fk_id_user_fur` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `hostess`
--
ALTER TABLE `hostess`
  ADD CONSTRAINT `idTypeHostess` FOREIGN KEY (`id_type_hostess`) REFERENCES `type_hostess` (`id`),
  ADD CONSTRAINT `idUserAdviser` FOREIGN KEY (`id_user_adviser`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `idUserHostess` FOREIGN KEY (`id_user_hostess`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `hostess_checklist`
--
ALTER TABLE `hostess_checklist`
  ADD CONSTRAINT `fk_id_user_hc` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `hostess_checklist_ibfk_1` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`);

--
-- Filtros para la tabla `hostess_checklist_answers`
--
ALTER TABLE `hostess_checklist_answers`
  ADD CONSTRAINT `fk_id_hostess_checklist_question_hca` FOREIGN KEY (`id_hostess_checklist_question`) REFERENCES `hostess_checklist_questions` (`id`);

--
-- Filtros para la tabla `hostess_checklist_questions`
--
ALTER TABLE `hostess_checklist_questions`
  ADD CONSTRAINT `fk_id_hostess_checklist_section_hcq` FOREIGN KEY (`id_hostess_checklist_section`) REFERENCES `hostess_checklist_type_sections` (`id`),
  ADD CONSTRAINT `fk_id_role_hcq` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `hostess_checklist_questions_answers`
--
ALTER TABLE `hostess_checklist_questions_answers`
  ADD CONSTRAINT `fk_id_hostess_checklist_answer_hcqa` FOREIGN KEY (`id_hostess_checklist_answer`) REFERENCES `hostess_checklist_answers` (`id`),
  ADD CONSTRAINT `fk_id_hostess_checklist_hcqa` FOREIGN KEY (`id_hostess_checklist`) REFERENCES `hostess_checklist` (`id`);

--
-- Filtros para la tabla `hostess_checklist_questions_type_control`
--
ALTER TABLE `hostess_checklist_questions_type_control`
  ADD CONSTRAINT `fk_id_hostess_checklist_questions_ho` FOREIGN KEY (`id_hostess_checklist_questions`) REFERENCES `hostess_checklist_questions` (`id`),
  ADD CONSTRAINT `fk_id_hostess_checklist_type_control_ho` FOREIGN KEY (`id_hostess_checklist_type_control`) REFERENCES `hostess_checklist_type_control` (`id`);

--
-- Filtros para la tabla `hostess_checklist_type_sections`
--
ALTER TABLE `hostess_checklist_type_sections`
  ADD CONSTRAINT `fk_id_brand_hts` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`);

--
-- Filtros para la tabla `hours_room`
--
ALTER TABLE `hours_room`
  ADD CONSTRAINT `fk_room_1` FOREIGN KEY (`id_room`) REFERENCES `rooms` (`id`);

--
-- Filtros para la tabla `insurance_policies`
--
ALTER TABLE `insurance_policies`
  ADD CONSTRAINT `fk_id_brand_agency_ip` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_financial_ip` FOREIGN KEY (`id_financial`) REFERENCES `financials` (`id`),
  ADD CONSTRAINT `fk_id_opportunity_ip` FOREIGN KEY (`id_opportunity`) REFERENCES `oportunities` (`id`),
  ADD CONSTRAINT `fk_id_reason_rejection_ip` FOREIGN KEY (`id_reason_rejection`) REFERENCES `reason_rejection` (`id`),
  ADD CONSTRAINT `fk_id_term_ext_warranty_ip` FOREIGN KEY (`id_term_ext_warranty`) REFERENCES `term_ext_warranty` (`id`),
  ADD CONSTRAINT `fk_id_type_purchase_ip` FOREIGN KEY (`id_type_purchase`) REFERENCES `type_purchase` (`id`),
  ADD CONSTRAINT `fk_id_type_vehicle_ip` FOREIGN KEY (`id_type_vehicle`) REFERENCES `type_vehicles` (`id`),
  ADD CONSTRAINT `fk_id_types_insurance_ip` FOREIGN KEY (`id_types_insurance`) REFERENCES `types_insurances` (`id`),
  ADD CONSTRAINT `fk_id_user_ip` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `insurance_policies_ibfk_1` FOREIGN KEY (`id_contact`) REFERENCES `contacts` (`id`),
  ADD CONSTRAINT `insurance_policies_ibfk_2` FOREIGN KEY (`id_data_insurance`) REFERENCES `data_insurance` (`id`);

--
-- Filtros para la tabla `intranet_files`
--
ALTER TABLE `intranet_files`
  ADD CONSTRAINT `fk_id_intranet_folder_if` FOREIGN KEY (`id_intranet_folder`) REFERENCES `intranet_folders` (`id`);

--
-- Filtros para la tabla `intranet_folders`
--
ALTER TABLE `intranet_folders`
  ADD CONSTRAINT `fk_id_parent_if` FOREIGN KEY (`id_parent`) REFERENCES `intranet_folders` (`id`);

--
-- Filtros para la tabla `intranet_logs`
--
ALTER TABLE `intranet_logs`
  ADD CONSTRAINT `fk_id_file_il` FOREIGN KEY (`id_file`) REFERENCES `intranet_files` (`id`),
  ADD CONSTRAINT `fk_id_folder_il` FOREIGN KEY (`id_folder`) REFERENCES `intranet_folders` (`id`),
  ADD CONSTRAINT `fk_id_user_il` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `intranet_permissions`
--
ALTER TABLE `intranet_permissions`
  ADD CONSTRAINT `fk_id_brand_agency_ba` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_intranet_folde_if` FOREIGN KEY (`id_intranet_folder`) REFERENCES `intranet_folders` (`id`),
  ADD CONSTRAINT `fk_id_role_r` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `fk_id_user_u` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `fk_id_brand_agency_o` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_color_i` FOREIGN KEY (`id_color`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `fk_id_color_interior_i` FOREIGN KEY (`id_color_interior`) REFERENCES `colors_interior` (`id`),
  ADD CONSTRAINT `fk_id_inventory_floor` FOREIGN KEY (`id_inventory_floor`) REFERENCES `inventories_floor` (`id`),
  ADD CONSTRAINT `fk_id_location` FOREIGN KEY (`id_location`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `fk_id_status_inventory_i` FOREIGN KEY (`id_status_inventory`) REFERENCES `status_inventory` (`id`),
  ADD CONSTRAINT `fk_id_transmission` FOREIGN KEY (`id_transmission`) REFERENCES `type_transmission` (`id`),
  ADD CONSTRAINT `fk_id_type_inventory_i` FOREIGN KEY (`id_type_inventory`) REFERENCES `type_inventory` (`id`),
  ADD CONSTRAINT `inventories_ibfk_1` FOREIGN KEY (`id_model_version_year`) REFERENCES `models_versions_years` (`id`);

--
-- Filtros para la tabla `inventories_checkmark_photos`
--
ALTER TABLE `inventories_checkmark_photos`
  ADD CONSTRAINT `fk_id_inventory_icp` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`);

--
-- Filtros para la tabla `inventories_details_confirmed`
--
ALTER TABLE `inventories_details_confirmed`
  ADD CONSTRAINT `fk_id_inventory_iv` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`);

--
-- Filtros para la tabla `inventories_reserved`
--
ALTER TABLE `inventories_reserved`
  ADD CONSTRAINT `fk_id_brand_agency_ir` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_inventory_ir` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `fk_id_opportunity_ir` FOREIGN KEY (`id_opportunity`) REFERENCES `oportunities` (`id`),
  ADD CONSTRAINT `fk_id_user_adviser_ir` FOREIGN KEY (`id_user_adviser`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_id_user_request_ir` FOREIGN KEY (`id_user_request`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `inventory_accessories`
--
ALTER TABLE `inventory_accessories`
  ADD CONSTRAINT `fk_id_accessory_ia` FOREIGN KEY (`id_accessory`) REFERENCES `accessories_vehicles` (`id`),
  ADD CONSTRAINT `fk_id_inventory_ia` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`);

--
-- Filtros para la tabla `inventory_descriptions`
--
ALTER TABLE `inventory_descriptions`
  ADD CONSTRAINT `fk_id_inventory_id` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`);

--
-- Filtros para la tabla `inventory_detail`
--
ALTER TABLE `inventory_detail`
  ADD CONSTRAINT `fk_id_inventory` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`);

--
-- Filtros para la tabla `inventory_general_info`
--
ALTER TABLE `inventory_general_info`
  ADD CONSTRAINT `fk_id_category_gi` FOREIGN KEY (`id_category`) REFERENCES `car_categories` (`id`),
  ADD CONSTRAINT `fk_id_inventory_gi` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `fk_id_status_reception_gi` FOREIGN KEY (`id_status_reception`) REFERENCES `type_received_agency` (`id`);

--
-- Filtros para la tabla `inventory_mechanical_info`
--
ALTER TABLE `inventory_mechanical_info`
  ADD CONSTRAINT `fk_id_fuel_imf` FOREIGN KEY (`id_fuel`) REFERENCES `type_fuels` (`id`),
  ADD CONSTRAINT `fk_id_inventory_imf` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `fk_id_steering_imf` FOREIGN KEY (`id_steering`) REFERENCES `type_steering` (`id`),
  ADD CONSTRAINT `fk_id_traction_imf` FOREIGN KEY (`id_traction`) REFERENCES `type_traction` (`id`),
  ADD CONSTRAINT `fk_id_transmission_imf` FOREIGN KEY (`id_transmission`) REFERENCES `type_transmission` (`id`);

--
-- Filtros para la tabla `inventory_photos`
--
ALTER TABLE `inventory_photos`
  ADD CONSTRAINT `inventory_photos_ibfk_1` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `inventory_photos_ibfk_2` FOREIGN KEY (`id_photo_type`) REFERENCES `photos_type` (`id`);

--
-- Filtros para la tabla `inventory_prices`
--
ALTER TABLE `inventory_prices`
  ADD CONSTRAINT `fk_id_inventory_ip` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`);

--
-- Filtros para la tabla `inventory_seminuevos_info`
--
ALTER TABLE `inventory_seminuevos_info`
  ADD CONSTRAINT `fk_id_inventory_si` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`);

--
-- Filtros para la tabla `inventory_type_history`
--
ALTER TABLE `inventory_type_history`
  ADD CONSTRAINT `fk_id_changed_by_i` FOREIGN KEY (`id_changed_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_id_inventory_i` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `fk_id_type_inventory_after_i` FOREIGN KEY (`id_type_inventory_after`) REFERENCES `type_inventory` (`id`),
  ADD CONSTRAINT `fk_id_type_inventory_before_i` FOREIGN KEY (`id_type_inventory_before`) REFERENCES `type_inventory` (`id`);

--
-- Filtros para la tabla `inventory_warranties`
--
ALTER TABLE `inventory_warranties`
  ADD CONSTRAINT `fk_id_inventory_iw` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`);

--
-- Filtros para la tabla `isan`
--
ALTER TABLE `isan`
  ADD CONSTRAINT `fk_id_type_isan_i` FOREIGN KEY (`id_type_isan`) REFERENCES `type_isan` (`id`);

--
-- Filtros para la tabla `license_plates_cost`
--
ALTER TABLE `license_plates_cost`
  ADD CONSTRAINT `fk_id_agency_lpc` FOREIGN KEY (`id_agency`) REFERENCES `agencies` (`id`);

--
-- Filtros para la tabla `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `fk_id_brand_agency_l` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`);

--
-- Filtros para la tabla `log_credit_request`
--
ALTER TABLE `log_credit_request`
  ADD CONSTRAINT `fk_id_credit_request_lcr` FOREIGN KEY (`id_credit_request`) REFERENCES `credit_request` (`id`),
  ADD CONSTRAINT `fk_id_financial_lcr` FOREIGN KEY (`id_financial`) REFERENCES `financials` (`id`),
  ADD CONSTRAINT `fk_id_status_credit_request_lcr` FOREIGN KEY (`id_status_credit_request`) REFERENCES `status_credit_request` (`id`);

--
-- Filtros para la tabla `log_inventory_intelisis`
--
ALTER TABLE `log_inventory_intelisis`
  ADD CONSTRAINT `fk_id_inventory_lii` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `fk_id_type_operation_intelisis_lii` FOREIGN KEY (`id_type_operation_intelisis`) REFERENCES `type_operation_intelisis` (`id`);

--
-- Filtros para la tabla `log_review_audit`
--
ALTER TABLE `log_review_audit`
  ADD CONSTRAINT `fk_id_purchase_order_lra` FOREIGN KEY (`id_purchase_order`) REFERENCES `purchase_order` (`id`),
  ADD CONSTRAINT `fk_id_role_lra` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `fk_id_type_process_log_lra` FOREIGN KEY (`id_type_process_log`) REFERENCES `type_process_log` (`id`),
  ADD CONSTRAINT `fk_id_user_lra` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `log_transfer_contacts`
--
ALTER TABLE `log_transfer_contacts`
  ADD CONSTRAINT `id_activity_log_transfer` FOREIGN KEY (`id_activity`) REFERENCES `activities` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `id_contact_log_transfer` FOREIGN KEY (`id_contact`) REFERENCES `contacts` (`id`),
  ADD CONSTRAINT `id_oportunity_log_transfer` FOREIGN KEY (`id_oportunity`) REFERENCES `oportunities` (`id`);

--
-- Filtros para la tabla `manage_reserved`
--
ALTER TABLE `manage_reserved`
  ADD CONSTRAINT `fk_id_brand_agency_mr` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_inventory_mr` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `fk_user_adviser_mr` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `metrics_assignment_metrics`
--
ALTER TABLE `metrics_assignment_metrics`
  ADD CONSTRAINT `fk_id_agency_mam` FOREIGN KEY (`id_agency`) REFERENCES `metrics_meeting_brand_quarters` (`id`),
  ADD CONSTRAINT `fk_id_metric_mam` FOREIGN KEY (`id_metric`) REFERENCES `metrics` (`id`),
  ADD CONSTRAINT `fk_id_quarter_mam` FOREIGN KEY (`id_quarter`) REFERENCES `quarterly` (`id`);

--
-- Filtros para la tabla `metrics_assignment_targets`
--
ALTER TABLE `metrics_assignment_targets`
  ADD CONSTRAINT `fk_id_quarter_mat` FOREIGN KEY (`id_quarter`) REFERENCES `quarterly` (`id`),
  ADD CONSTRAINT `fk_id_target_mat` FOREIGN KEY (`id_target`) REFERENCES `metrics_targets` (`id`),
  ADD CONSTRAINT `fk_id_user_mat` FOREIGN KEY (`id_user`) REFERENCES `metrics_meeting_users` (`id`);

--
-- Filtros para la tabla `metrics_meetings`
--
ALTER TABLE `metrics_meetings`
  ADD CONSTRAINT `fk_id_quarter_mm` FOREIGN KEY (`id_quarter`) REFERENCES `metrics_quarters` (`id`),
  ADD CONSTRAINT `fk_id_user_mm` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `metrics_meeting_brand_quarters`
--
ALTER TABLE `metrics_meeting_brand_quarters`
  ADD CONSTRAINT `fk_id_metrics_assigment_metric_mmbq` FOREIGN KEY (`id_metrics_assigment_metric`) REFERENCES `metrics_assignment_metrics` (`id`);

--
-- Filtros para la tabla `metrics_meeting_score`
--
ALTER TABLE `metrics_meeting_score`
  ADD CONSTRAINT `fk_id_metrics_meeting_mms` FOREIGN KEY (`id_metrics_meeting`) REFERENCES `metrics_meetings` (`id`),
  ADD CONSTRAINT `fk_id_metrics_meeting_user_mms` FOREIGN KEY (`id_metrics_meeting_user`) REFERENCES `metrics_meeting_users` (`id`);

--
-- Filtros para la tabla `metrics_pendings`
--
ALTER TABLE `metrics_pendings`
  ADD CONSTRAINT `fk_id_metrics_meeting_mp` FOREIGN KEY (`id_metrics_meeting`) REFERENCES `metrics_meetings` (`id`),
  ADD CONSTRAINT `fk_id_metrics_meeting_users_mp` FOREIGN KEY (`id_metrics_meeting_users`) REFERENCES `metrics_meeting_users` (`id`);

--
-- Filtros para la tabla `metrics_targets_progress`
--
ALTER TABLE `metrics_targets_progress`
  ADD CONSTRAINT `fk_id_metrics_meeting_mtp` FOREIGN KEY (`id_metrics_meeting`) REFERENCES `metrics_meetings` (`id`),
  ADD CONSTRAINT `fk_id_metrics_target_users_mtp` FOREIGN KEY (`id_metrics_target_users`) REFERENCES `metrics_target_users` (`id`);

--
-- Filtros para la tabla `metrics_target_users`
--
ALTER TABLE `metrics_target_users`
  ADD CONSTRAINT `fk_id_metrics_assigment_targets_mtu` FOREIGN KEY (`id_metrics_assigment_targets`) REFERENCES `metrics_assignment_targets` (`id`),
  ADD CONSTRAINT `fk_id_quarter_mtu` FOREIGN KEY (`id_quarter`) REFERENCES `quarterly` (`id`);

--
-- Filtros para la tabla `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `fk_id_brand_external_m` FOREIGN KEY (`id_brand_external`) REFERENCES `brands_external` (`id`),
  ADD CONSTRAINT `fk_id_brand_m` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`);

--
-- Filtros para la tabla `models_colors`
--
ALTER TABLE `models_colors`
  ADD CONSTRAINT `fk_id_color_mc` FOREIGN KEY (`id_color`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `fk_id_model_version_year_mc` FOREIGN KEY (`id_model_version_year`) REFERENCES `models_versions_years` (`id`);

--
-- Filtros para la tabla `models_extension`
--
ALTER TABLE `models_extension`
  ADD CONSTRAINT `fk_id_model_me` FOREIGN KEY (`id_model`) REFERENCES `models` (`id`),
  ADD CONSTRAINT `fk_id_type_extension_me` FOREIGN KEY (`id_type_extension`) REFERENCES `type_extension` (`id`);

--
-- Filtros para la tabla `models_maintenance`
--
ALTER TABLE `models_maintenance`
  ADD CONSTRAINT `fk_id_model_year_mm` FOREIGN KEY (`id_model_year`) REFERENCES `models_years` (`id`);

--
-- Filtros para la tabla `models_photo`
--
ALTER TABLE `models_photo`
  ADD CONSTRAINT `fk_id_model_year_mp` FOREIGN KEY (`id_model_year`) REFERENCES `models_years` (`id`),
  ADD CONSTRAINT `fk_id_photo_type_mp` FOREIGN KEY (`id_photo_type`) REFERENCES `photos_type` (`id`);

--
-- Filtros para la tabla `models_versions`
--
ALTER TABLE `models_versions`
  ADD CONSTRAINT `fk_id_model_mv` FOREIGN KEY (`id_model`) REFERENCES `models` (`id`),
  ADD CONSTRAINT `fk_id_version_mv` FOREIGN KEY (`id_version`) REFERENCES `versions` (`id`),
  ADD CONSTRAINT `fk_model_year_mv` FOREIGN KEY (`id_model_year`) REFERENCES `models_years` (`id`);

--
-- Filtros para la tabla `models_versions_colors`
--
ALTER TABLE `models_versions_colors`
  ADD CONSTRAINT `fk_id_color_mvc` FOREIGN KEY (`id_color`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `fk_id_model_version_mvc` FOREIGN KEY (`id_model_version`) REFERENCES `models_versions` (`id`);

--
-- Filtros para la tabla `models_versions_years`
--
ALTER TABLE `models_versions_years`
  ADD CONSTRAINT `fk_id_model_version_mvy` FOREIGN KEY (`id_model_version`) REFERENCES `models_versions` (`id`),
  ADD CONSTRAINT `fk_id_model_year_mvy` FOREIGN KEY (`id_model_year`) REFERENCES `models_years` (`id`);

--
-- Filtros para la tabla `models_years`
--
ALTER TABLE `models_years`
  ADD CONSTRAINT `fk_id_model_my` FOREIGN KEY (`id_model`) REFERENCES `models` (`id`),
  ADD CONSTRAINT `fk_id_year_my` FOREIGN KEY (`id_year`) REFERENCES `years` (`id`);

--
-- Filtros para la tabla `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `fk_id_module_system_m` FOREIGN KEY (`id_module_system`) REFERENCES `modules_system` (`id`),
  ADD CONSTRAINT `modules_ibfk_1` FOREIGN KEY (`id_parent`) REFERENCES `modules` (`id`),
  ADD CONSTRAINT `modules_ibfk_2` FOREIGN KEY (`id_module_type`) REFERENCES `modules_type` (`id`);

--
-- Filtros para la tabla `mystery_shopper`
--
ALTER TABLE `mystery_shopper`
  ADD CONSTRAINT `fk_id_opportunity_ms` FOREIGN KEY (`id_opportunity`) REFERENCES `oportunities` (`id`),
  ADD CONSTRAINT `fk_id_question_mystery_shopper_ms` FOREIGN KEY (`id_question_mystery_shopper`) REFERENCES `questions_mystery_shopper` (`id`);

--
-- Filtros para la tabla `notification_config`
--
ALTER TABLE `notification_config`
  ADD CONSTRAINT `fk_id_brand_agency_nc` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_group_nc` FOREIGN KEY (`id_group`) REFERENCES `notification_groups` (`id`),
  ADD CONSTRAINT `fk_id_module_nc` FOREIGN KEY (`id_module`) REFERENCES `notification_modules` (`id`),
  ADD CONSTRAINT `fk_id_role_nc` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `notification_groups`
--
ALTER TABLE `notification_groups`
  ADD CONSTRAINT `fk_id_module_cr` FOREIGN KEY (`id_module`) REFERENCES `notification_modules` (`id`);

--
-- Filtros para la tabla `operations_data`
--
ALTER TABLE `operations_data`
  ADD CONSTRAINT `fk_check_open_commission_od` FOREIGN KEY (`check_open_commission`) REFERENCES `type_purchase` (`id`),
  ADD CONSTRAINT `id_check_accessories` FOREIGN KEY (`check_accessories`) REFERENCES `type_purchase` (`id`),
  ADD CONSTRAINT `id_check_car_price` FOREIGN KEY (`check_car_price`) REFERENCES `type_purchase` (`id`),
  ADD CONSTRAINT `id_check_civil_liability_insurance` FOREIGN KEY (`check_civil_liability_insurance`) REFERENCES `type_purchase` (`id`),
  ADD CONSTRAINT `id_check_coverage` FOREIGN KEY (`check_others_time`) REFERENCES `type_purchase` (`id`),
  ADD CONSTRAINT `id_check_extended_warranty` FOREIGN KEY (`check_extended_warranty`) REFERENCES `type_purchase` (`id`),
  ADD CONSTRAINT `id_check_interests` FOREIGN KEY (`check_interests`) REFERENCES `type_purchase` (`id`),
  ADD CONSTRAINT `id_check_iva` FOREIGN KEY (`check_iva`) REFERENCES `type_purchase` (`id`),
  ADD CONSTRAINT `id_check_life_insurance` FOREIGN KEY (`check_life_insurance`) REFERENCES `type_purchase` (`id`),
  ADD CONSTRAINT `id_check_national_car_insurance` FOREIGN KEY (`check_national_car_insurance`) REFERENCES `type_purchase` (`id`);

--
-- Filtros para la tabla `oportunities`
--
ALTER TABLE `oportunities`
  ADD CONSTRAINT `fk_id_brand_agency_opo` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_color_o` FOREIGN KEY (`id_color`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `fk_id_contact_o` FOREIGN KEY (`id_contact`) REFERENCES `contacts` (`id`),
  ADD CONSTRAINT `fk_id_last_template_o` FOREIGN KEY (`id_last_template`) REFERENCES `templates` (`id`),
  ADD CONSTRAINT `fk_id_model_o` FOREIGN KEY (`id_model`) REFERENCES `models` (`id`),
  ADD CONSTRAINT `fk_id_purchase_buyback_o` FOREIGN KEY (`id_purchase_buyback`) REFERENCES `purchases_buyback` (`id`),
  ADD CONSTRAINT `fk_id_purchase_description_o` FOREIGN KEY (`id_purchase_description`) REFERENCES `purchases_description` (`id`),
  ADD CONSTRAINT `fk_id_status_oportunity_o` FOREIGN KEY (`id_status_oportunity`) REFERENCES `status_oportunities` (`id`),
  ADD CONSTRAINT `fk_id_status_purchase_o` FOREIGN KEY (`id_status_purchase`) REFERENCES `status_purchases` (`id`),
  ADD CONSTRAINT `fk_id_type_purchase_o` FOREIGN KEY (`id_type_purchase`) REFERENCES `type_purchase` (`id`),
  ADD CONSTRAINT `fk_id_type_use_o` FOREIGN KEY (`id_type_use`) REFERENCES `types_use` (`id`),
  ADD CONSTRAINT `fk_id_type_vehicle_o` FOREIGN KEY (`id_type_vehicle`) REFERENCES `type_vehicles` (`id`),
  ADD CONSTRAINT `fk_id_version_o` FOREIGN KEY (`id_version`) REFERENCES `versions` (`id`),
  ADD CONSTRAINT `oportunities_ibfk_3` FOREIGN KEY (`id_source`) REFERENCES `sources` (`id`);

--
-- Filtros para la tabla `opportunity_files`
--
ALTER TABLE `opportunity_files`
  ADD CONSTRAINT `fk_id_opportunity_of` FOREIGN KEY (`id_opportunity`) REFERENCES `oportunities` (`id`),
  ADD CONSTRAINT `fk_id_repository_files_limit_of` FOREIGN KEY (`id_repository_files_limit`) REFERENCES `repository_files_limit` (`id`);

--
-- Filtros para la tabla `opportunity_no_sale`
--
ALTER TABLE `opportunity_no_sale`
  ADD CONSTRAINT `fk_id_brand_external_ons` FOREIGN KEY (`id_brand_external`) REFERENCES `brands_external` (`id`),
  ADD CONSTRAINT `fk_id_opportunity_ons` FOREIGN KEY (`id_opportunity`) REFERENCES `oportunities` (`id`),
  ADD CONSTRAINT `fk_id_reason_no_sale_ons` FOREIGN KEY (`id_reason_no_sale`) REFERENCES `reasons_no_sale` (`id`);

--
-- Filtros para la tabla `options_tracking_preowned`
--
ALTER TABLE `options_tracking_preowned`
  ADD CONSTRAINT `fk_id_areas_tracking_preowned_otp` FOREIGN KEY (`id_areas_tracking_preowned`) REFERENCES `areas_tracking_preowned` (`id`),
  ADD CONSTRAINT `fk_id_type_control_otp` FOREIGN KEY (`id_type_control`) REFERENCES `hostess_checklist_questions_type_control` (`id`);

--
-- Filtros para la tabla `order_purchase_answer`
--
ALTER TABLE `order_purchase_answer`
  ADD CONSTRAINT `fk_id_order_purchase_question_o` FOREIGN KEY (`id_order_purchase_question`) REFERENCES `order_purchase_questions` (`id`),
  ADD CONSTRAINT `fk_id_purchase_order_o` FOREIGN KEY (`id_purchase_order`) REFERENCES `purchase_order` (`id`);

--
-- Filtros para la tabla `order_purchase_form`
--
ALTER TABLE `order_purchase_form`
  ADD CONSTRAINT `fk_id_brand_opf` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`);

--
-- Filtros para la tabla `order_purchase_questions`
--
ALTER TABLE `order_purchase_questions`
  ADD CONSTRAINT `fk_id_order_purchase_section_o` FOREIGN KEY (`id_order_purchase_section`) REFERENCES `order_purchase_section` (`id`),
  ADD CONSTRAINT `fk_id_type_control_o` FOREIGN KEY (`id_type_control`) REFERENCES `hostess_checklist_type_control` (`id`);

--
-- Filtros para la tabla `order_purchase_section`
--
ALTER TABLE `order_purchase_section`
  ADD CONSTRAINT `fk_id_order_purchase_form_0` FOREIGN KEY (`id_order_purchase_form`) REFERENCES `order_purchase_form` (`id`);

--
-- Filtros para la tabla `payment_way`
--
ALTER TABLE `payment_way`
  ADD CONSTRAINT `fk_id_payment_method_w` FOREIGN KEY (`id_payment_method`) REFERENCES `payment_method` (`id`);

--
-- Filtros para la tabla `personal_folders`
--
ALTER TABLE `personal_folders`
  ADD CONSTRAINT `fk_id_directory_folder_pf` FOREIGN KEY (`id_directory_folder`) REFERENCES `directory_folders` (`id`),
  ADD CONSTRAINT `fk_id_user_pf` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `phone_guide`
--
ALTER TABLE `phone_guide`
  ADD CONSTRAINT `fk_id_opportunity_o` FOREIGN KEY (`id_opportunity`) REFERENCES `oportunities` (`id`);

--
-- Filtros para la tabla `power_incorporation`
--
ALTER TABLE `power_incorporation`
  ADD CONSTRAINT `fk_id_state_pi` FOREIGN KEY (`id_state`) REFERENCES `states` (`id`);

--
-- Filtros para la tabla `preparation_models`
--
ALTER TABLE `preparation_models`
  ADD CONSTRAINT `fk_id_model_pm` FOREIGN KEY (`id_model`) REFERENCES `models` (`id`);

--
-- Filtros para la tabla `prices_services`
--
ALTER TABLE `prices_services`
  ADD CONSTRAINT `fk_id_model_version_ps` FOREIGN KEY (`id_model_version`) REFERENCES `models_versions` (`id`);

--
-- Filtros para la tabla `purchase_black_list`
--
ALTER TABLE `purchase_black_list`
  ADD CONSTRAINT `fk_id_purchase_order_pbl` FOREIGN KEY (`id_purchase_order`) REFERENCES `purchase_order` (`id`);

--
-- Filtros para la tabla `purchase_data`
--
ALTER TABLE `purchase_data`
  ADD CONSTRAINT `fk_id_buyback_type_p` FOREIGN KEY (`id_buyback_type`) REFERENCES `purchases_buyback` (`id`),
  ADD CONSTRAINT `fk_id_type_commission` FOREIGN KEY (`id_type_commission`) REFERENCES `type_commission` (`id`),
  ADD CONSTRAINT `fk_id_type_purchase_p` FOREIGN KEY (`id_type_purchase`) REFERENCES `type_purchase` (`id`),
  ADD CONSTRAINT `fk_id_type_sale_p2` FOREIGN KEY (`id_type_sale`) REFERENCES `type_purchase` (`id`);

--
-- Filtros para la tabla `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD CONSTRAINT `fk_id_anti_money_p` FOREIGN KEY (`id_anti_money`) REFERENCES `anti_money_address` (`id`),
  ADD CONSTRAINT `fk_id_billing_address_p` FOREIGN KEY (`id_billing_address`) REFERENCES `billing_address` (`id`),
  ADD CONSTRAINT `fk_id_breakdown_operations_p` FOREIGN KEY (`id_breakdown_operations`) REFERENCES `breakdown_operations` (`id`),
  ADD CONSTRAINT `fk_id_car_acquisition_p` FOREIGN KEY (`id_car_acquisition`) REFERENCES `car_acquisition` (`id`),
  ADD CONSTRAINT `fk_id_car_data_p` FOREIGN KEY (`id_car_data`) REFERENCES `car_data` (`id`),
  ADD CONSTRAINT `fk_id_client_p` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `fk_id_constitutive_act_p` FOREIGN KEY (`id_constitutive_act`) REFERENCES `constitutive_act` (`id`),
  ADD CONSTRAINT `fk_id_data_insurance_p` FOREIGN KEY (`id_data_insurance`) REFERENCES `data_insurance` (`id`),
  ADD CONSTRAINT `fk_id_details_additional_expenses_p` FOREIGN KEY (`id_details_additional_expenses`) REFERENCES `details_additional_expenses` (`id`),
  ADD CONSTRAINT `fk_id_financing_p` FOREIGN KEY (`id_financing`) REFERENCES `financing` (`id`),
  ADD CONSTRAINT `fk_id_operations_data_p` FOREIGN KEY (`id_operations_data`) REFERENCES `operations_data` (`id`),
  ADD CONSTRAINT `fk_id_opportunity_p` FOREIGN KEY (`id_opportunity`) REFERENCES `oportunities` (`id`),
  ADD CONSTRAINT `fk_id_power_incorporation_p` FOREIGN KEY (`id_power_incorporation`) REFERENCES `power_incorporation` (`id`),
  ADD CONSTRAINT `fk_id_purchase_data_p` FOREIGN KEY (`id_purchase_data`) REFERENCES `purchase_data` (`id`),
  ADD CONSTRAINT `purchase_order_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchase_order_ibfk_2` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `purchase_order_ibfk_3` FOREIGN KEY (`delivery`) REFERENCES `status_tracking_details` (`id`),
  ADD CONSTRAINT `purchase_order_ibfk_4` FOREIGN KEY (`release`) REFERENCES `status_tracking_details` (`id`),
  ADD CONSTRAINT `purchase_order_ibfk_5` FOREIGN KEY (`id_status_purchase_order`) REFERENCES `status_purchase_order` (`id`),
  ADD CONSTRAINT `purchase_order_ibfk_6` FOREIGN KEY (`id_tracking_status_invoices`) REFERENCES `tracking_status` (`id`);

--
-- Filtros para la tabla `purchase_order_approved`
--
ALTER TABLE `purchase_order_approved`
  ADD CONSTRAINT `fk_id_op` FOREIGN KEY (`id_purchase_order`) REFERENCES `purchase_order` (`id`),
  ADD CONSTRAINT `fk_id_user_config_ap` FOREIGN KEY (`id_user_config`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchase_order_approved_ibfk_1` FOREIGN KEY (`id_signature`) REFERENCES `purchase_order_signatures` (`id`),
  ADD CONSTRAINT `purchase_order_approved_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchase_order_approved_ibfk_3` FOREIGN KEY (`id_user_delete`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `purchase_order_cancel_log`
--
ALTER TABLE `purchase_order_cancel_log`
  ADD CONSTRAINT `fk_purchase_pocl` FOREIGN KEY (`id_purchase_order`) REFERENCES `purchase_order` (`id`),
  ADD CONSTRAINT `fk_user_pocl` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `purchase_order_comment`
--
ALTER TABLE `purchase_order_comment`
  ADD CONSTRAINT `fk_id_purchase_order_poc` FOREIGN KEY (`id_purchase_order`) REFERENCES `purchase_order` (`id`),
  ADD CONSTRAINT `fk_id_type_comment_poc` FOREIGN KEY (`id_type_comment`) REFERENCES `type_comment` (`id`);

--
-- Filtros para la tabla `purchase_order_notification`
--
ALTER TABLE `purchase_order_notification`
  ADD CONSTRAINT `fk_id_brand_agency_am` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_rol_am` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `fk_id_user_am` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `purchase_order_signatures`
--
ALTER TABLE `purchase_order_signatures`
  ADD CONSTRAINT `fk_id_brand_agency_sig` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_rol_sig` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `fk_id_user_sig` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `questions_mystery_shopper`
--
ALTER TABLE `questions_mystery_shopper`
  ADD CONSTRAINT `fk_id_brand_qms` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`);

--
-- Filtros para la tabla `quotes`
--
ALTER TABLE `quotes`
  ADD CONSTRAINT `fk_id_contact_quo` FOREIGN KEY (`id_contact`) REFERENCES `contacts` (`id`),
  ADD CONSTRAINT `fk_id_model_year_quo` FOREIGN KEY (`id_model_year`) REFERENCES `models_years` (`id`),
  ADD CONSTRAINT `fk_id_opportunity_quo` FOREIGN KEY (`id_opportunity`) REFERENCES `oportunities` (`id`),
  ADD CONSTRAINT `fk_id_type_quote_quo` FOREIGN KEY (`id_type_quote`) REFERENCES `type_quote` (`id`),
  ADD CONSTRAINT `fk_id_user_quo` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `quotes_details`
--
ALTER TABLE `quotes_details`
  ADD CONSTRAINT `fk_id_financial_qd` FOREIGN KEY (`id_financial`) REFERENCES `financials` (`id`),
  ADD CONSTRAINT `fk_id_payment_deadline_qd` FOREIGN KEY (`id_payment_deadline`) REFERENCES `payment_deadlines` (`id`),
  ADD CONSTRAINT `fk_id_quote_qd` FOREIGN KEY (`id_quote`) REFERENCES `quotes` (`id`),
  ADD CONSTRAINT `fk_id_tire_coverage_qd` FOREIGN KEY (`id_tire_coverage`) REFERENCES `tire_coverage` (`id`),
  ADD CONSTRAINT `fk_id_version_d` FOREIGN KEY (`id_version`) REFERENCES `versions` (`id`);

--
-- Filtros para la tabla `quotes_express`
--
ALTER TABLE `quotes_express`
  ADD CONSTRAINT `fk_id_user_qe` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `quotes_express_models`
--
ALTER TABLE `quotes_express_models`
  ADD CONSTRAINT `fk_id_model_qem` FOREIGN KEY (`id_model`) REFERENCES `models` (`id`),
  ADD CONSTRAINT `fk_id_model_year_qem` FOREIGN KEY (`id_model_year`) REFERENCES `models_years` (`id`),
  ADD CONSTRAINT `fk_id_quote_express_qem` FOREIGN KEY (`id_quote_express`) REFERENCES `quotes_express` (`id`);

--
-- Filtros para la tabla `reason_rejection`
--
ALTER TABLE `reason_rejection`
  ADD CONSTRAINT `fk_rejection_module` FOREIGN KEY (`id_rejection_module`) REFERENCES `rejection_module` (`id`);

--
-- Filtros para la tabla `reason_sheet`
--
ALTER TABLE `reason_sheet`
  ADD CONSTRAINT `fk_id_opportunity_rs` FOREIGN KEY (`id_opportunity`) REFERENCES `oportunities` (`id`);

--
-- Filtros para la tabla `repository`
--
ALTER TABLE `repository`
  ADD CONSTRAINT `fk_id_opportunity_re` FOREIGN KEY (`id_opportunity`) REFERENCES `oportunities` (`id`);

--
-- Filtros para la tabla `repository_files_limit`
--
ALTER TABLE `repository_files_limit`
  ADD CONSTRAINT `fk_id_repository_file_rfl` FOREIGN KEY (`id_repository_file`) REFERENCES `repository_files` (`id`),
  ADD CONSTRAINT `fk_id_repository_folder_rfl` FOREIGN KEY (`id_repository_folder`) REFERENCES `repository_folders` (`id`);

--
-- Filtros para la tabla `repository_others_contact`
--
ALTER TABLE `repository_others_contact`
  ADD CONSTRAINT `fk_id_opportunity_file_roc` FOREIGN KEY (`id_opportunity_file`) REFERENCES `opportunity_files` (`id`),
  ADD CONSTRAINT `fk_id_others_contact_roc` FOREIGN KEY (`id_others_contact`) REFERENCES `others_contacts` (`id`);

--
-- Filtros para la tabla `reserved_schedule`
--
ALTER TABLE `reserved_schedule`
  ADD CONSTRAINT `fk_id_schedule` FOREIGN KEY (`id_schedule`) REFERENCES `schedules` (`id`),
  ADD CONSTRAINT `fk_id_type_reserved_room` FOREIGN KEY (`id_type_reserved_room`) REFERENCES `type_reserved_room` (`id`),
  ADD CONSTRAINT `reserved_schedule_ibfk_1` FOREIGN KEY (`id_opportunity`) REFERENCES `oportunities` (`id`),
  ADD CONSTRAINT `reserved_schedule_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reserved_schedule_ibfk_3` FOREIGN KEY (`id_room`) REFERENCES `rooms` (`id`);

--
-- Filtros para la tabla `roles_modules_permissions`
--
ALTER TABLE `roles_modules_permissions`
  ADD CONSTRAINT `fk_id_brand_agency_rmp` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `roles_modules_permissions_ibfk_1` FOREIGN KEY (`id_module`) REFERENCES `modules` (`id`),
  ADD CONSTRAINT `roles_modules_permissions_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `roles_modules_permissions_ibfk_3` FOREIGN KEY (`id_permission`) REFERENCES `permissions` (`id`);

--
-- Filtros para la tabla `role_access_folders`
--
ALTER TABLE `role_access_folders`
  ADD CONSTRAINT `fk_id_directory_folder_raf` FOREIGN KEY (`id_directory_folder`) REFERENCES `directory_folders` (`id`),
  ADD CONSTRAINT `fk_id_role_raf` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `fk_id_brand_agency_room_1` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`);

--
-- Filtros para la tabla `sales_plan`
--
ALTER TABLE `sales_plan`
  ADD CONSTRAINT `fk_id_brand_agency_sp` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_model_sp` FOREIGN KEY (`id_model`) REFERENCES `models` (`id`),
  ADD CONSTRAINT `fk_id_month_sp` FOREIGN KEY (`id_month`) REFERENCES `months` (`id`);

--
-- Filtros para la tabla `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `fk_day` FOREIGN KEY (`id_day`) REFERENCES `days` (`id`),
  ADD CONSTRAINT `fk_hour_room` FOREIGN KEY (`id_hour_room`) REFERENCES `hours_room` (`id`);

--
-- Filtros para la tabla `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `fk_id_brand_s` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`);

--
-- Filtros para la tabla `templates`
--
ALTER TABLE `templates`
  ADD CONSTRAINT `fk_id_category_template_t` FOREIGN KEY (`id_category_template`) REFERENCES `categories_templates` (`id`);

--
-- Filtros para la tabla `templates_logs`
--
ALTER TABLE `templates_logs`
  ADD CONSTRAINT `fk_id_opportunity_log` FOREIGN KEY (`id_opportunity`) REFERENCES `oportunities` (`id`),
  ADD CONSTRAINT `fk_id_template_log` FOREIGN KEY (`id_template`) REFERENCES `templates` (`id`);

--
-- Filtros para la tabla `tracking_credit`
--
ALTER TABLE `tracking_credit`
  ADD CONSTRAINT `fk_ id_status_tracking_credit_tc` FOREIGN KEY (`id_status_tracking_credit`) REFERENCES `status_tracking_credit` (`id`),
  ADD CONSTRAINT `fk_id_color_tc` FOREIGN KEY (`id_color`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `fk_id_credit_request_tc` FOREIGN KEY (`id_credit_request`) REFERENCES `credit_request` (`id`),
  ADD CONSTRAINT `fk_id_financial_final_tc` FOREIGN KEY (`id_financial_final`) REFERENCES `financials` (`id`),
  ADD CONSTRAINT `fk_id_model_tc` FOREIGN KEY (`id_model`) REFERENCES `models` (`id`),
  ADD CONSTRAINT `fk_id_opportunity_tc` FOREIGN KEY (`id_opportunity`) REFERENCES `oportunities` (`id`),
  ADD CONSTRAINT `fk_id_status_credit_request_final_tc` FOREIGN KEY (`id_status_credit_request_final`) REFERENCES `status_credit_request` (`id`),
  ADD CONSTRAINT `fk_id_type_price_tc` FOREIGN KEY (`id_type_price`) REFERENCES `type_price` (`id`),
  ADD CONSTRAINT `fk_id_type_vehicle_tc` FOREIGN KEY (`id_type_vehicle`) REFERENCES `type_vehicles` (`id`),
  ADD CONSTRAINT `fk_id_version_tc` FOREIGN KEY (`id_version`) REFERENCES `versions` (`id`);

--
-- Filtros para la tabla `tracking_document_audit`
--
ALTER TABLE `tracking_document_audit`
  ADD CONSTRAINT `fk_id_log_review_audit_tda` FOREIGN KEY (`id_log_review_audit`) REFERENCES `log_review_audit` (`id`),
  ADD CONSTRAINT `fk_id_purchase_order_tda` FOREIGN KEY (`id_purchase_order`) REFERENCES `purchase_order` (`id`),
  ADD CONSTRAINT `id_document_audit_tda` FOREIGN KEY (`id_document_audit`) REFERENCES `document_audit` (`id`);

--
-- Filtros para la tabla `tracking_preowned`
--
ALTER TABLE `tracking_preowned`
  ADD CONSTRAINT `tracking_preowned_ibfk_1` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `tracking_preowned_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tracking_preowned_ibfk_3` FOREIGN KEY (`id_areas_tracking_preowned`) REFERENCES `areas_tracking_preowned` (`id`),
  ADD CONSTRAINT `tracking_preowned_ibfk_4` FOREIGN KEY (`id_tracking_status`) REFERENCES `tracking_status` (`id`);

--
-- Filtros para la tabla `transfer_contact_logs`
--
ALTER TABLE `transfer_contact_logs`
  ADD CONSTRAINT `fk_idCTCL` FOREIGN KEY (`id_contact`) REFERENCES `contacts` (`id`),
  ADD CONSTRAINT `fk_idOUTCL` FOREIGN KEY (`id_old_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_idUTCL` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transfer_contact_logs_ibfk_1` FOREIGN KEY (`id_user_cdc`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `transfer_inventory_logs`
--
ALTER TABLE `transfer_inventory_logs`
  ADD CONSTRAINT `fk_id_inventory_log` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`);

--
-- Filtros para la tabla `types_insurances`
--
ALTER TABLE `types_insurances`
  ADD CONSTRAINT `fk_id_insurance_i` FOREIGN KEY (`id_insurance`) REFERENCES `insurances` (`id`),
  ADD CONSTRAINT `fk_id_type_insurance_i` FOREIGN KEY (`id_type_insurance`) REFERENCES `type_insurance` (`id`);

--
-- Filtros para la tabla `ucan_amda`
--
ALTER TABLE `ucan_amda`
  ADD CONSTRAINT `fk_id_month_ua` FOREIGN KEY (`id_month`) REFERENCES `months` (`id`),
  ADD CONSTRAINT `fk_id_ucan_brand_ua` FOREIGN KEY (`id_ucan_brand`) REFERENCES `ucan_brands` (`id`);

--
-- Filtros para la tabla `ucan_brands`
--
ALTER TABLE `ucan_brands`
  ADD CONSTRAINT `fk_id_parent_ub` FOREIGN KEY (`id_parent`) REFERENCES `ucan_brands` (`id`);

--
-- Filtros para la tabla `ucan_brands_agencies`
--
ALTER TABLE `ucan_brands_agencies`
  ADD CONSTRAINT `fk_id_city_uba` FOREIGN KEY (`id_city`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `fk_id_dealer_group_uba` FOREIGN KEY (`id_dealer_group`) REFERENCES `ucan_dealer_groups` (`id`);

--
-- Filtros para la tabla `ucan_sales`
--
ALTER TABLE `ucan_sales`
  ADD CONSTRAINT `fk_id_month_us` FOREIGN KEY (`id_month`) REFERENCES `months` (`id`),
  ADD CONSTRAINT `fk_id_ucan_brand_agency_us` FOREIGN KEY (`id_ucan_brand_agency`) REFERENCES `ucan_brands_agencies` (`id`);

--
-- Filtros para la tabla `unit_mystery_shopper`
--
ALTER TABLE `unit_mystery_shopper`
  ADD CONSTRAINT `fk_id_brand_ums` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_id_brand_agency_u` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_role_u` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_commission`
--
ALTER TABLE `user_commission`
  ADD CONSTRAINT `fk_id_user_uc` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `user_hostess`
--
ALTER TABLE `user_hostess`
  ADD CONSTRAINT `fk_id_scheme_uh` FOREIGN KEY (`id_scheme`) REFERENCES `type_scheme` (`id`),
  ADD CONSTRAINT `fk_id_type_status_hostess_uh` FOREIGN KEY (`id_type_status_hostess`) REFERENCES `type_status_hostess` (`id`),
  ADD CONSTRAINT `fk_id_user_uh` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `user_logs_notifications`
--
ALTER TABLE `user_logs_notifications`
  ADD CONSTRAINT `fk_id_hostess_notification` FOREIGN KEY (`id_hostess_notification`) REFERENCES `hostess_notifications` (`id`),
  ADD CONSTRAINT `fk_id_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_logs_notifications_ibfk_1` FOREIGN KEY (`id_contact`) REFERENCES `contacts` (`id`);

--
-- Filtros para la tabla `versions_brands`
--
ALTER TABLE `versions_brands`
  ADD CONSTRAINT `fk_id_brand_vb` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `fk_id_version_vb` FOREIGN KEY (`id_version`) REFERENCES `versions` (`id`);

--
-- Filtros para la tabla `with_waiting_list`
--
ALTER TABLE `with_waiting_list`
  ADD CONSTRAINT `fk_id_advertising_wwl2` FOREIGN KEY (`id_advertising`) REFERENCES `advertisements` (`id`),
  ADD CONSTRAINT `fk_id_behavior_wwl2` FOREIGN KEY (`id_behavior`) REFERENCES `behavior_facebook` (`id`),
  ADD CONSTRAINT `fk_id_brand_agency_wwl2` FOREIGN KEY (`id_brand_agency`) REFERENCES `brands_agencies` (`id`),
  ADD CONSTRAINT `fk_id_contact_wwl2` FOREIGN KEY (`id_contact`) REFERENCES `contacts` (`id`),
  ADD CONSTRAINT `fk_id_source_wwl2` FOREIGN KEY (`id_source`) REFERENCES `sources` (`id`),
  ADD CONSTRAINT `with_waiting_list_ibfk_12` FOREIGN KEY (`id_classification`) REFERENCES `classifications` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

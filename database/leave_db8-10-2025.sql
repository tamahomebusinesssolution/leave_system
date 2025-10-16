-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2025 at 10:25 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leave_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `manager` varchar(255) NOT NULL,
  `supervisor` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `manager`, `supervisor`, `date_created`, `date_updated`) VALUES
(4, 'Panlayaan Elementary School', 'PES', 'JESRAEL B. DUMO', 'ANGEL J. RECEBIDO', '2025-02-22 00:30:52', '2025-02-23 19:53:11'),
(5, 'Tublijon Elementary School', 'TES', 'EVA J. FORMARAN', 'ANGEL J. RECEBIDO', '2025-02-22 01:25:55', '2025-02-24 00:39:08'),
(6, 'Rawis National High School', 'Rawis National High School', 'EDSEL D. DOCTAMA', 'MARIA THERESA L. DE RAMON', '2025-02-23 20:09:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designation_list`
--

CREATE TABLE `designation_list` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designation_list`
--

INSERT INTO `designation_list` (`id`, `name`, `description`, `date_created`, `date_updated`) VALUES
(6, 'School Head', 'School Head', '2025-02-22 01:26:26', NULL),
(7, 'Administrative Officer II', 'AOII', '2025-02-22 10:27:58', NULL),
(8, 'Teacher I', 'Teacher I', '2025-02-22 10:36:19', NULL),
(9, 'Teacher III', 'Teacher III', '2025-02-22 10:37:06', NULL),
(10, 'Teacher II', 'Teacher II', '2025-02-22 10:37:39', NULL),
(11, 'Public Schools Division Supervisor', 'Public Schools Division Supervisor', '2025-02-23 19:46:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_meta`
--

CREATE TABLE `employee_meta` (
  `user_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_meta`
--

INSERT INTO `employee_meta` (`user_id`, `meta_field`, `meta_value`, `date_created`) VALUES
(15, 'leave_type_ids', '4', '2025-02-22 11:08:20'),
(15, 'leave_type_credits', '{\"4\":\"20\"}', '2025-02-22 11:08:20'),
(22, 'leave_type_ids', '4', '2025-02-22 20:59:04'),
(22, 'leave_type_credits', '{\"4\":\"20\"}', '2025-02-22 20:59:04'),
(25, 'leave_type_ids', '4', '2025-02-22 21:11:49'),
(25, 'leave_type_credits', '{\"4\":\"20\"}', '2025-02-22 21:11:49'),
(26, 'leave_type_ids', '4', '2025-02-22 21:15:53'),
(26, 'leave_type_credits', '{\"4\":\"20\"}', '2025-02-22 21:15:53'),
(30, 'leave_type_ids', '4', '2025-02-22 21:30:53'),
(30, 'leave_type_credits', '{\"4\":\"20\"}', '2025-02-22 21:30:53'),
(31, 'leave_type_ids', '5,7,2,6,1', '2025-02-23 20:13:10'),
(31, 'leave_type_credits', '{\"5\":\"20\",\"7\":\"5\",\"2\":\"15\",\"6\":\"3\",\"1\":\"10\"}', '2025-02-23 20:13:10'),
(27, 'type', '3', '2025-02-25 15:07:34'),
(27, 'employee_id', '6321307', '2025-02-25 15:07:34'),
(27, 'firstname', 'Cheenee', '2025-02-25 15:07:34'),
(27, 'middlename', 'Lavadia', '2025-02-25 15:07:34'),
(27, 'lastname', 'Oliquino', '2025-02-25 15:07:34'),
(27, 'dob', '1994-08-04', '2025-02-25 15:07:34'),
(27, 'contact', '09162456455', '2025-02-25 15:07:34'),
(27, 'address', '271 Purok 8, Ticol West District, Sorsogon City', '2025-02-25 15:07:34'),
(27, 'department_id', '4', '2025-02-25 15:07:34'),
(27, 'designation_id', '9', '2025-02-25 15:07:34'),
(27, 'username', 'chenee', '2025-02-25 15:07:34'),
(27, 'salary', '34,733.00', '2025-02-25 15:07:34'),
(27, 'approver', 'off', '2025-02-25 15:07:34'),
(31, 'type', '3', '2025-02-25 15:07:49'),
(31, 'employee_id', '5065990', '2025-02-25 15:07:49'),
(31, 'firstname', 'Edsel', '2025-02-25 15:07:49'),
(31, 'middlename', 'Dimaano', '2025-02-25 15:07:49'),
(31, 'lastname', 'Doctama', '2025-02-25 15:07:49'),
(31, 'dob', '1980-11-30', '2025-02-25 15:07:49'),
(31, 'contact', '09634527777', '2025-02-25 15:07:49'),
(31, 'address', 'Sorsogon City', '2025-02-25 15:07:49'),
(31, 'department_id', '6', '2025-02-25 15:07:49'),
(31, 'designation_id', '6', '2025-02-25 15:07:49'),
(31, 'username', 'edsel', '2025-02-25 15:07:49'),
(31, 'salary', '57,165.00', '2025-02-25 15:07:49'),
(31, 'approver', 'off', '2025-02-25 15:07:49'),
(19, 'type', '3', '2025-02-25 15:07:58'),
(19, 'employee_id', '6433463', '2025-02-25 15:07:58'),
(19, 'firstname', 'Erlinda', '2025-02-25 15:07:58'),
(19, 'middlename', 'Diaz', '2025-02-25 15:07:58'),
(19, 'lastname', 'Diesta', '2025-02-25 15:07:58'),
(19, 'dob', '1988-05-19', '2025-02-25 15:07:58'),
(19, 'contact', '0923782770', '2025-02-25 15:07:58'),
(19, 'address', 'Purok1, Brgy. Cambulaga, Sorsogon City', '2025-02-25 15:07:58'),
(19, 'department_id', '4', '2025-02-25 15:07:58'),
(19, 'designation_id', '8', '2025-02-25 15:07:58'),
(19, 'username', 'erlinda', '2025-02-25 15:07:58'),
(19, 'salary', '30,024.05', '2025-02-25 15:07:58'),
(19, 'approver', 'off', '2025-02-25 15:07:58'),
(22, 'type', '3', '2025-02-25 15:08:13'),
(22, 'employee_id', '6321123', '2025-02-25 15:08:13'),
(22, 'firstname', 'Jennilyn', '2025-02-25 15:08:13'),
(22, 'middlename', 'Gallardo', '2025-02-25 15:08:13'),
(22, 'lastname', 'Enovejas', '2025-02-25 15:08:13'),
(22, 'dob', '1988-06-08', '2025-02-25 15:08:13'),
(22, 'contact', '09916453328', '2025-02-25 15:08:13'),
(22, 'address', 'Gate 3, Bibincahan, Sorsogon City', '2025-02-25 15:08:13'),
(22, 'department_id', '4', '2025-02-25 15:08:13'),
(22, 'designation_id', '9', '2025-02-25 15:08:13'),
(22, 'username', 'jennilyn', '2025-02-25 15:08:13'),
(22, 'salary', '34,733.00', '2025-02-25 15:08:13'),
(22, 'approver', 'off', '2025-02-25 15:08:13'),
(16, 'type', '3', '2025-02-25 15:08:22'),
(16, 'employee_id', '4562520', '2025-02-25 15:08:22'),
(16, 'firstname', 'Jesrael', '2025-02-25 15:08:22'),
(16, 'middlename', 'Belen', '2025-02-25 15:08:22'),
(16, 'lastname', 'Dumo', '2025-02-25 15:08:22'),
(16, 'dob', '1988-02-27', '2025-02-25 15:08:22'),
(16, 'contact', '09989795600', '2025-02-25 15:08:22'),
(16, 'address', 'Sorsogon City', '2025-02-25 15:08:22'),
(16, 'department_id', '4', '2025-02-25 15:08:22'),
(16, 'designation_id', '6', '2025-02-25 15:08:22'),
(16, 'username', 'jesrael', '2025-02-25 15:08:22'),
(16, 'salary', '57,165.00', '2025-02-25 15:08:22'),
(16, 'approver', 'off', '2025-02-25 15:08:22'),
(26, 'type', '3', '2025-02-25 15:08:31'),
(26, 'employee_id', '4453328', '2025-02-25 15:08:31'),
(26, 'firstname', 'Kristine Pearl', '2025-02-25 15:08:31'),
(26, 'middlename', 'Peralta', '2025-02-25 15:08:31'),
(26, 'lastname', 'Labitag', '2025-02-25 15:08:31'),
(26, 'dob', '1979-08-08', '2025-02-25 15:08:31'),
(26, 'contact', '123', '2025-02-25 15:08:31'),
(26, 'address', 'Purok 2, Balogo East District, Sorsogon City', '2025-02-25 15:08:31'),
(26, 'department_id', '4', '2025-02-25 15:08:31'),
(26, 'designation_id', '9', '2025-02-25 15:08:31'),
(26, 'username', 'kristine', '2025-02-25 15:08:31'),
(26, 'salary', '34,733.00', '2025-02-25 15:08:31'),
(26, 'approver', 'off', '2025-02-25 15:08:31'),
(15, 'type', '3', '2025-02-25 15:08:49'),
(15, 'employee_id', '6321306', '2025-02-25 15:08:49'),
(15, 'firstname', 'Ma. Jaena', '2025-02-25 15:08:49'),
(15, 'middlename', 'Balanoyos', '2025-02-25 15:08:49'),
(15, 'lastname', 'De Los Reyes', '2025-02-25 15:08:49'),
(15, 'dob', '1995-09-15', '2025-02-25 15:08:49'),
(15, 'contact', '123', '2025-02-25 15:08:49'),
(15, 'address', 'Purok 1, Ticol, Sorsogon City', '2025-02-25 15:08:49'),
(15, 'department_id', '4', '2025-02-25 15:08:49'),
(15, 'designation_id', '9', '2025-02-25 15:08:49'),
(15, 'username', 'jaena', '2025-02-25 15:08:49'),
(15, 'salary', '34,733.00', '2025-02-25 15:08:49'),
(15, 'approver', 'off', '2025-02-25 15:08:49'),
(24, 'type', '3', '2025-02-25 15:09:01'),
(24, 'employee_id', '6321308', '2025-02-25 15:09:01'),
(24, 'firstname', 'Maricor', '2025-02-25 15:09:01'),
(24, 'middlename', 'Lachica', '2025-02-25 15:09:01'),
(24, 'lastname', 'Hubilla', '2025-02-25 15:09:01'),
(24, 'dob', '1985-09-11', '2025-02-25 15:09:01'),
(24, 'contact', '09108627367', '2025-02-25 15:09:01'),
(24, 'address', 'B13 L33 Imperial Ridgeview Subdivision, Pangpang, Sorsogon City', '2025-02-25 15:09:01'),
(24, 'department_id', '4', '2025-02-25 15:09:01'),
(24, 'designation_id', '9', '2025-02-25 15:09:01'),
(24, 'username', 'maricor', '2025-02-25 15:09:01'),
(24, 'salary', '34,733.00', '2025-02-25 15:09:01'),
(24, 'approver', 'off', '2025-02-25 15:09:01'),
(23, 'type', '3', '2025-02-25 15:09:11'),
(23, 'employee_id', '4724696', '2025-02-25 15:09:11'),
(23, 'firstname', 'Marlene', '2025-02-25 15:09:11'),
(23, 'middlename', 'Rivas', '2025-02-25 15:09:11'),
(23, 'lastname', 'Herrera', '2025-02-25 15:09:11'),
(23, 'dob', '1989-12-20', '2025-02-25 15:09:11'),
(23, 'contact', '09488890072', '2025-02-25 15:09:11'),
(23, 'address', 'Sitio Tublijon. Rizal, West District, Sorsogon City', '2025-02-25 15:09:11'),
(23, 'department_id', '4', '2025-02-25 15:09:11'),
(23, 'designation_id', '9', '2025-02-25 15:09:11'),
(23, 'username', 'marlene', '2025-02-25 15:09:11'),
(23, 'salary', '34,733.00', '2025-02-25 15:09:11'),
(23, 'approver', 'off', '2025-02-25 15:09:11'),
(30, 'type', '3', '2025-02-25 15:09:36'),
(30, 'employee_id', '4819551', '2025-02-25 15:09:36'),
(30, 'firstname', 'Mhalit', '2025-02-25 15:09:36'),
(30, 'middlename', 'Furio', '2025-02-25 15:09:36'),
(30, 'lastname', 'Vilchez', '2025-02-25 15:09:36'),
(30, 'dob', '1993-01-03', '2025-02-25 15:09:36'),
(30, 'contact', '123', '2025-02-25 15:09:36'),
(30, 'address', '13th St. OLV, Pangpang, Sorsogon City', '2025-02-25 15:09:36'),
(30, 'department_id', '4', '2025-02-25 15:09:36'),
(30, 'designation_id', '9', '2025-02-25 15:09:36'),
(30, 'username', 'mhalit', '2025-02-25 15:09:36'),
(30, 'salary', '34,733.00', '2025-02-25 15:09:36'),
(30, 'approver', 'off', '2025-02-25 15:09:36'),
(29, 'type', '3', '2025-02-25 15:09:59'),
(29, 'employee_id', '6433597', '2025-02-25 15:09:59'),
(29, 'firstname', 'Rachilda Mae', '2025-02-25 15:09:59'),
(29, 'middlename', 'Grino', '2025-02-25 15:09:59'),
(29, 'lastname', 'Santiago', '2025-02-25 15:09:59'),
(29, 'dob', '1982-09-20', '2025-02-25 15:09:59'),
(29, 'contact', '123', '2025-02-25 15:09:59'),
(29, 'address', '11th St. OLV, Pangpang, Sorsogon City', '2025-02-25 15:09:59'),
(29, 'department_id', '4', '2025-02-25 15:09:59'),
(29, 'designation_id', '8', '2025-02-25 15:09:59'),
(29, 'username', 'rachilda', '2025-02-25 15:09:59'),
(29, 'salary', '30,024.00', '2025-02-25 15:09:59'),
(29, 'approver', 'off', '2025-02-25 15:09:59'),
(17, 'type', '3', '2025-02-25 15:10:08'),
(17, 'employee_id', '4365012', '2025-02-25 15:10:08'),
(17, 'firstname', 'Reynalyn', '2025-02-25 15:10:08'),
(17, 'middlename', 'Jerao', '2025-02-25 15:10:08'),
(17, 'lastname', 'Despolon', '2025-02-25 15:10:08'),
(17, 'dob', '1986-10-03', '2025-02-25 15:10:08'),
(17, 'contact', '123', '2025-02-25 15:10:08'),
(17, 'address', '078, Tugos, Sorsogon City', '2025-02-25 15:10:08'),
(17, 'department_id', '4', '2025-02-25 15:10:08'),
(17, 'designation_id', '9', '2025-02-25 15:10:08'),
(17, 'username', 'reynalyn', '2025-02-25 15:10:08'),
(17, 'salary', '34,733.00', '2025-02-25 15:10:08'),
(17, 'approver', 'off', '2025-02-25 15:10:08'),
(28, 'type', '3', '2025-02-25 15:10:20'),
(28, 'employee_id', '6321309', '2025-02-25 15:10:20'),
(28, 'firstname', 'Ronnie', '2025-02-25 15:10:20'),
(28, 'middlename', 'Echano', '2025-02-25 15:10:20'),
(28, 'lastname', 'Rodolfo', '2025-02-25 15:10:20'),
(28, 'dob', '1987-11-26', '2025-02-25 15:10:20'),
(28, 'contact', '09127183279', '2025-02-25 15:10:20'),
(28, 'address', 'Caricaran, Bacon, Sorsogon City', '2025-02-25 15:10:20'),
(28, 'department_id', '4', '2025-02-25 15:10:20'),
(28, 'designation_id', '8', '2025-02-25 15:10:20'),
(28, 'username', 'ronnie', '2025-02-25 15:10:20'),
(28, 'salary', '30,597.00', '2025-02-25 15:10:20'),
(28, 'approver', 'off', '2025-02-25 15:10:20'),
(21, 'type', '3', '2025-02-25 15:10:39'),
(21, 'employee_id', '6314419', '2025-02-25 15:10:39'),
(21, 'firstname', 'Vilma', '2025-02-25 15:10:39'),
(21, 'middlename', 'Jaso', '2025-02-25 15:10:39'),
(21, 'lastname', 'Dogaojo', '2025-02-25 15:10:39'),
(21, 'dob', '1989-08-16', '2025-02-25 15:10:39'),
(21, 'contact', '09565223476', '2025-02-25 15:10:39'),
(21, 'address', 'Sition Iraya ll, Balete, Bacon District, Sorsogon City', '2025-02-25 15:10:39'),
(21, 'department_id', '4', '2025-02-25 15:10:39'),
(21, 'designation_id', '9', '2025-02-25 15:10:39'),
(21, 'username', 'vilma', '2025-02-25 15:10:39'),
(21, 'salary', '34,733.00', '2025-02-25 15:10:39'),
(21, 'approver', 'off', '2025-02-25 15:10:39'),
(20, 'type', '3', '2025-02-25 15:10:51'),
(20, 'employee_id', '4820399', '2025-02-25 15:10:51'),
(20, 'firstname', 'Zorayna', '2025-02-25 15:10:51'),
(20, 'middlename', 'De Leon', '2025-02-25 15:10:51'),
(20, 'lastname', 'Doctor', '2025-02-25 15:10:51'),
(20, 'dob', '1982-02-05', '2025-02-25 15:10:51'),
(20, 'contact', '09208339111', '2025-02-25 15:10:51'),
(20, 'address', 'Purok 3, Sto. Domingo, Bacon District, Sorsogon City', '2025-02-25 15:10:51'),
(20, 'department_id', '4', '2025-02-25 15:10:51'),
(20, 'designation_id', '9', '2025-02-25 15:10:51'),
(20, 'username', 'zorayna', '2025-02-25 15:10:51'),
(20, 'salary', '34,733.00', '2025-02-25 15:10:51'),
(20, 'approver', 'off', '2025-02-25 15:10:51'),
(24, 'leave_type_ids', '4', '2025-02-25 15:11:48'),
(24, 'leave_type_credits', '{\"4\":\"28\"}', '2025-02-25 15:11:48'),
(23, 'leave_type_ids', '4', '2025-02-25 15:12:50'),
(23, 'leave_type_credits', '{\"4\":\"31\"}', '2025-02-25 15:12:50'),
(28, 'leave_type_ids', '4', '2025-02-25 15:13:41'),
(28, 'leave_type_credits', '{\"4\":\"22\"}', '2025-02-25 15:13:41'),
(21, 'leave_type_ids', '4', '2025-02-25 15:14:19'),
(21, 'leave_type_credits', '{\"4\":\"68\"}', '2025-02-25 15:14:19'),
(19, 'leave_type_ids', '4', '2025-02-25 15:15:46'),
(19, 'leave_type_credits', '{\"4\":\"25\"}', '2025-02-25 15:15:46'),
(29, 'leave_type_ids', '4', '2025-02-25 15:16:25'),
(29, 'leave_type_credits', '{\"4\":\"22\"}', '2025-02-25 15:16:25'),
(17, 'leave_type_ids', '4', '2025-02-25 15:18:29'),
(17, 'leave_type_credits', '{\"4\":\"95\"}', '2025-02-25 15:18:29'),
(20, 'leave_type_ids', '4', '2025-02-25 15:19:45'),
(20, 'leave_type_credits', '{\"4\":\"14\"}', '2025-02-25 15:19:45'),
(34, 'leave_type_ids', '4', '2025-02-25 18:43:05'),
(34, 'leave_type_credits', '{\"4\":\"20\"}', '2025-02-25 18:43:05'),
(34, 'type', '3', '2025-02-25 18:50:46'),
(34, 'employee_id', '12345', '2025-02-25 18:50:46'),
(34, 'firstname', 'user', '2025-02-25 18:50:46'),
(34, 'middlename', 'u', '2025-02-25 18:50:46'),
(34, 'lastname', 'user', '2025-02-25 18:50:46'),
(34, 'dob', '1970-08-08', '2025-02-25 18:50:46'),
(34, 'contact', '123', '2025-02-25 18:50:46'),
(34, 'address', 'catanagan, juban, Sorsogon', '2025-02-25 18:50:46'),
(34, 'department_id', '5', '2025-02-25 18:50:46'),
(34, 'designation_id', '10', '2025-02-25 18:50:46'),
(34, 'username', 'user', '2025-02-25 18:50:46'),
(34, 'salary', '30,024.00', '2025-02-25 18:50:46'),
(34, 'approver', 'off', '2025-02-25 18:50:46'),
(25, 'type', '3', '2025-02-26 00:03:41'),
(25, 'employee_id', '4244362', '2025-02-26 00:03:41'),
(25, 'firstname', 'Myla', '2025-02-26 00:03:41'),
(25, 'middlename', 'Ladub', '2025-02-26 00:03:41'),
(25, 'lastname', 'Jeresano', '2025-02-26 00:03:41'),
(25, 'dob', '1983-02-08', '2025-02-26 00:03:41'),
(25, 'contact', '09569112079', '2025-02-26 00:03:41'),
(25, 'address', 'Bucalbucalan, Sorsogon City', '2025-02-26 00:03:41'),
(25, 'department_id', '4', '2025-02-26 00:03:41'),
(25, 'designation_id', '9', '2025-02-26 00:03:41'),
(25, 'username', 'myla', '2025-02-26 00:03:41'),
(25, 'salary', '34,733.00', '2025-02-26 00:03:41'),
(25, 'approver', 'off', '2025-02-26 00:03:41'),
(12, 'type', '3', '2025-02-26 11:04:28'),
(12, 'employee_id', '5814790', '2025-02-26 11:04:28'),
(12, 'firstname', 'Louie', '2025-02-26 11:04:28'),
(12, 'middlename', 'Ramones', '2025-02-26 11:04:28'),
(12, 'lastname', 'Franco', '2025-02-26 11:04:28'),
(12, 'dob', '1970-08-17', '2025-02-26 11:04:28'),
(12, 'contact', '09605950278', '2025-02-26 11:04:28'),
(12, 'address', 'Catanagan, Juban, Sorsogon', '2025-02-26 11:04:28'),
(12, 'department_id', '4', '2025-02-26 11:04:28'),
(12, 'designation_id', '7', '2025-02-26 11:04:28'),
(12, 'username', 'louie', '2025-02-26 11:04:28'),
(12, 'salary', '30,024.25', '2025-02-26 11:04:28'),
(12, 'approver', 'off', '2025-02-26 11:04:28'),
(36, 'type', '3', '2025-08-08 18:29:23'),
(36, 'employee_id', '1234567', '2025-08-08 18:29:23'),
(36, 'firstname', 'xxx', '2025-08-08 18:29:23'),
(36, 'middlename', 'xxxxx', '2025-08-08 18:29:23'),
(36, 'lastname', 'xxxxx', '2025-08-08 18:29:23'),
(36, 'dob', '2025-08-08', '2025-08-08 18:29:23'),
(36, 'contact', '09605950278', '2025-08-08 18:29:23'),
(36, 'address', 'catanagan, juban, Sorsogon', '2025-08-08 18:29:23'),
(36, 'department_id', '4', '2025-08-08 18:29:23'),
(36, 'designation_id', '8', '2025-08-08 18:29:23'),
(36, 'salary', '30025', '2025-08-08 18:29:23'),
(36, 'username', 'xxxxx', '2025-08-08 18:29:23'),
(36, 'approver', 'off', '2025-08-08 18:29:23'),
(16, 'leave_type_ids', '5,7,2,6,1', '2025-08-09 16:38:25'),
(16, 'leave_type_credits', '{\"5\":\"25\",\"7\":\"0\",\"2\":\"0\",\"6\":\"0\",\"1\":\"0\"}', '2025-08-09 16:38:25'),
(46, 'type', '3', '2025-08-10 14:10:23'),
(46, 'employee_id', '1234568', '2025-08-10 14:10:23'),
(46, 'firstname', 'xxx', '2025-08-10 14:10:23'),
(46, 'middlename', 'xxx', '2025-08-10 14:10:23'),
(46, 'lastname', 'xxx', '2025-08-10 14:10:23'),
(46, 'dob', '2025-07-27', '2025-08-10 14:10:23'),
(46, 'contact', '09989795600', '2025-08-10 14:10:23'),
(46, 'address', 'catanagan, juban, Sorsogon', '2025-08-10 14:10:23'),
(46, 'department_id', '4', '2025-08-10 14:10:23'),
(46, 'designation_id', '8', '2025-08-10 14:10:23'),
(46, 'salary', '30025', '2025-08-10 14:10:23'),
(46, 'username', 'xxx', '2025-08-10 14:10:23'),
(46, 'approver', 'off', '2025-08-10 14:10:23'),
(12, 'leave_type_ids', '18,5,7,4,6,1', '2025-08-10 15:42:41'),
(12, 'leave_type_credits', '{\"18\":\"48.372\",\"5\":\"7\",\"7\":\"12.5\",\"4\":\"2.5\",\"6\":\"8.571\",\"1\":\"22.35\"}', '2025-08-10 15:42:41'),
(27, 'leave_type_ids', '18,8,4,10', '2025-08-10 16:21:58'),
(27, 'leave_type_credits', '{\"18\":\"3\",\"8\":\"105\",\"4\":\"13\",\"10\":\"11.25\"}', '2025-08-10 16:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `leave_type_id` int(30) DEFAULT NULL,
  `reason` text NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `type` tinyint(1) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=approved, 2=denied,3=cancelled',
  `option1` tinyint(1) NOT NULL DEFAULT 0,
  `option2` tinyint(1) NOT NULL,
  `approved_by` int(30) DEFAULT NULL,
  `leave_days` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leave_applications`
--

INSERT INTO `leave_applications` (`id`, `user_id`, `leave_type_id`, `reason`, `date_start`, `date_end`, `type`, `status`, `option1`, `option2`, `approved_by`, `leave_days`, `date_created`, `date_updated`) VALUES
(30, 27, 4, 'kkkk', '2025-08-04 00:00:00', '2025-08-04 00:00:00', 0, 1, 1, 0, 1, 1, '2025-08-05 00:00:00', '2025-08-05 21:13:44'),
(32, 12, 18, 'ggg', '2025-08-04 00:00:00', '2025-08-04 00:00:00', 0, 1, 1, 0, 1, 1, '2025-08-05 00:00:00', '2025-08-05 22:33:54'),
(34, 27, 4, 'www', '2025-08-11 00:00:00', '2025-08-15 00:00:00', 0, 1, 1, 0, 1, 5, '2025-08-06 00:00:00', '2025-08-06 14:38:06'),
(35, 27, 18, 'zzz', '2025-08-08 00:00:00', '2025-08-08 00:00:00', 0, 1, 1, 0, 1, 1, '2025-08-08 00:00:00', '2025-08-06 15:08:26'),
(36, 27, 10, 'ggg', '2025-08-18 00:00:00', '2025-08-26 00:00:00', 0, 1, 1, 0, 1, 7.123, '2025-08-11 00:00:00', '2025-08-07 22:15:41'),
(37, 27, 8, 'dddd', '2025-09-08 00:00:00', '2025-11-07 00:00:00', 0, 1, 1, 0, 35, 105, '2025-09-01 00:00:00', '2025-08-09 09:47:57'),
(38, 12, 18, 'ggg', '2025-08-08 00:00:00', '2025-08-22 00:00:00', 0, 1, 1, 0, 1, 12, '2025-08-07 00:00:00', '2025-08-07 21:46:26'),
(39, 12, 18, 'cccc', '2025-08-07 00:00:00', '2025-08-07 00:00:00', 0, 1, 1, 0, 35, 1, '2025-08-09 09:52:44', '2025-08-09 09:53:11'),
(40, 12, 1, 'vc', '2025-09-09 00:00:00', '2025-09-12 00:00:00', 0, 1, 1, 0, 43, 4, '2025-08-09 15:59:21', '2025-08-09 16:03:32'),
(41, 12, 1, 'vc', '2025-08-29 00:00:00', '2025-08-29 00:00:00', 0, 2, 1, 0, 43, 1, '2025-08-09 16:07:52', '2025-08-09 16:08:58'),
(42, 12, 1, 'vc', '2025-08-29 00:00:00', '2025-08-29 00:00:00', 0, 3, 1, 0, 43, 1, '2025-08-09 16:10:53', '2025-08-09 16:11:37'),
(43, 16, 5, 'coc', '2025-08-11 00:00:00', '2025-08-11 00:00:00', 0, 1, 1, 0, 1, 1, '2025-08-09 16:37:00', '2025-08-09 21:45:16'),
(44, 12, 18, 'b', '2025-09-05 00:00:00', '2025-09-05 00:00:00', 0, 0, 1, 0, 1, 1, '2025-08-10 14:45:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leave_credits`
--

CREATE TABLE `leave_credits` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `leave_type_id` int(30) DEFAULT NULL,
  `reason` text NOT NULL,
  `date_start` datetime NOT NULL DEFAULT current_timestamp(),
  `date_end` datetime NOT NULL DEFAULT current_timestamp(),
  `type` tinyint(1) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending 1=approved 2=denied 3=cancelled',
  `option1` tinyint(1) NOT NULL DEFAULT 0,
  `option2` tinyint(1) NOT NULL,
  `approved_by` int(30) DEFAULT NULL,
  `leave_days` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leave_credits`
--

INSERT INTO `leave_credits` (`id`, `user_id`, `leave_type_id`, `reason`, `date_start`, `date_end`, `type`, `status`, `option1`, `option2`, `approved_by`, `leave_days`, `date_created`, `date_updated`) VALUES
(2, 19, 4, 'hhh', '2025-08-04 00:00:00', '2025-08-04 00:00:00', 0, 0, 1, 0, 1, 1, '2025-08-05 00:00:00', NULL),
(3, 20, 4, 'ooooppppp', '2025-08-09 00:00:00', '2025-08-09 00:00:00', 0, 0, 1, 0, 1, 1, '2025-08-05 21:21:33', '2025-08-05 21:36:47'),
(4, 27, 4, 'hh', '2025-08-02 00:00:00', '2025-08-02 00:00:00', 0, 0, 1, 0, 1, 2, '2025-08-05 21:57:10', NULL),
(5, 12, 18, 'hdfhd', '2025-08-05 00:00:00', '2025-08-05 00:00:00', 0, 0, 1, 0, 1, 2, '2025-08-05 22:33:08', NULL),
(6, 27, 4, 'ccc', '2025-08-06 00:00:00', '2025-08-06 00:00:00', 0, 0, 1, 0, 1, 3, '2025-08-06 14:30:26', NULL),
(7, 27, 4, 'sss', '2025-08-02 00:00:00', '2025-08-02 00:00:00', 0, 0, 1, 0, 1, 3, '2025-08-06 14:36:22', NULL),
(8, 12, 7, 'xxx', '2025-08-06 00:00:00', '2025-08-06 00:00:00', 0, 0, 1, 0, 1, 5, '2025-08-06 14:39:27', NULL),
(9, 27, 18, 'xxx', '2025-08-06 00:00:00', '2025-08-06 00:00:00', 0, 0, 1, 0, 1, 3, '2025-08-06 14:40:19', NULL),
(10, 27, 8, 'mmmm', '2025-08-06 00:00:00', '2025-08-06 00:00:00', 0, 0, 1, 0, 1, 105, '2025-08-06 21:56:23', NULL),
(11, 27, 10, 'good', '2025-08-07 00:00:00', '2025-08-07 00:00:00', 0, 0, 1, 0, 1, 7, '2025-08-06 22:15:24', NULL),
(12, 15, 4, 'cccc', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, NULL, 5, '2025-08-06 23:06:54', NULL),
(14, 27, 4, 'ppp', '2025-08-07 00:00:00', '2025-08-07 00:00:00', 0, 0, 1, 0, 1, 5, '2025-08-07 18:22:07', NULL),
(16, 12, 18, 'bbb', '2025-08-07 00:00:00', '2025-08-07 00:00:00', 0, 0, 0, 0, 1, 1, '2025-08-07 19:11:54', NULL),
(17, 12, 18, 'bbb', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, NULL, 4, '2025-08-07 19:50:55', NULL),
(18, 12, 18, 'b', '2025-08-07 00:00:00', '2025-08-07 00:00:00', 0, 0, 0, 0, 1, 6, '2025-08-07 19:55:17', NULL),
(19, 12, 18, 'm', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 1, 1, '2025-08-07 19:58:37', NULL),
(20, 12, 18, 'n', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 1, 1, '2025-08-07 20:00:32', NULL),
(21, 12, 18, 'nnn', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, NULL, 1, '2025-08-07 21:08:29', NULL),
(22, 12, 18, 'lklj', '2025-08-07 00:00:00', '2025-08-07 00:00:00', 0, 0, 0, 0, NULL, 1, '2025-08-07 21:09:20', NULL),
(23, 12, 18, 'm', '2025-08-07 00:00:00', '2025-08-07 00:00:00', 0, 0, 0, 0, NULL, 1, '2025-08-07 21:24:07', NULL),
(24, 12, 18, 'hhh', '2025-08-07 00:00:00', '2025-08-07 00:00:00', 0, 0, 0, 0, NULL, 1, '2025-08-07 21:39:46', NULL),
(25, 12, 18, '1', '2025-08-07 00:00:00', '2025-08-07 00:00:00', 0, 0, 0, 0, NULL, 1.123, '2025-08-07 21:43:15', '2025-08-07 22:17:32'),
(26, 12, 18, 'h', '2025-08-07 00:00:00', '2025-08-07 00:00:00', 0, 0, 0, 0, NULL, 1, '2025-08-07 22:41:09', NULL),
(27, 12, 18, 'ddd', '2025-08-08 00:00:00', '2025-08-08 00:00:00', 0, 0, 0, 0, NULL, 1.123, '2025-08-08 09:19:15', NULL),
(28, 12, 18, 'v', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, NULL, 10.123, '2025-08-08 09:26:27', NULL),
(29, 12, 18, 'c', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, NULL, 5.123, '2025-08-08 09:42:26', NULL),
(30, 12, 18, 'x', '2025-08-08 00:00:00', '2025-08-08 00:00:00', 0, 0, 0, 0, NULL, 5.123, '0000-00-00 00:00:00', NULL),
(31, 12, 18, 's', '2025-08-08 00:00:00', '2025-08-08 00:00:00', 0, 0, 0, 0, NULL, 5.123, '2025-08-08 09:45:56', NULL),
(32, 12, 18, 'd', '2025-08-08 10:06:56', '2025-08-08 10:06:56', 0, 0, 0, 0, NULL, 5.555, '2025-08-08 10:06:56', NULL),
(33, 12, 18, 'sss', '2025-08-08 10:08:04', '2025-08-08 10:08:04', 0, 0, 0, 0, NULL, 5.321, '2025-08-08 10:08:04', NULL),
(34, 12, 4, 'rrrrrrrrrrrrrr', '2025-08-08 18:51:51', '2025-08-08 18:51:51', 0, 0, 0, 0, NULL, 1.25, '2025-08-08 18:51:51', NULL),
(36, 12, 18, 'l', '2025-08-08 18:55:40', '2025-08-08 18:55:40', 0, 0, 0, 0, NULL, 3.3, '2025-08-08 18:55:40', NULL),
(39, 12, 7, '5', '2025-08-08 19:23:42', '2025-08-08 19:23:42', 0, 0, 0, 0, NULL, 5, '2025-08-08 19:23:42', NULL),
(40, 12, 18, 'j', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, NULL, 1.111, '2025-08-09 09:19:41', NULL),
(41, 12, 18, 'ggg', '2025-08-09 09:20:48', '2025-08-09 09:20:48', 0, 0, 0, 0, NULL, 1.123, '2025-08-09 09:20:48', NULL),
(42, 27, 10, 'fff', '2025-08-09 09:26:20', '2025-08-09 09:26:20', 0, 0, 0, 0, NULL, 4.25, '2025-08-09 09:26:20', NULL),
(44, 12, 18, 'mmm', '2025-08-09 14:58:34', '2025-08-09 14:58:34', 0, 0, 0, 0, NULL, 1.5, '2025-08-09 14:58:34', NULL),
(45, 12, 5, 'hjk', '2025-08-09 15:06:00', '2025-08-09 15:06:00', 0, 0, 0, 0, NULL, 5.55, '2025-08-09 15:06:00', NULL),
(46, 12, 6, 'ccc', '2025-08-09 15:10:19', '2025-08-09 15:10:19', 0, 0, 0, 0, NULL, 3.321, '2025-08-09 15:10:19', NULL),
(47, 12, 18, 'nnn', '2025-08-09 15:13:23', '2025-08-09 15:13:23', 0, 0, 0, 0, NULL, 1.5, '2025-08-09 15:13:23', NULL),
(48, 12, 7, 'mmm', '2025-08-09 15:14:01', '2025-08-09 15:14:01', 0, 0, 0, 0, NULL, 2.5, '2025-08-09 15:14:01', NULL),
(49, 12, 4, 'kkk', '2025-08-09 15:14:33', '2025-08-09 15:14:33', 0, 0, 0, 0, NULL, 1.25, '2025-08-09 15:14:33', NULL),
(50, 12, 6, 'jkl', '2025-08-09 15:15:07', '2025-08-09 15:15:07', 0, 0, 0, 0, NULL, 5.25, '2025-08-09 15:15:07', NULL),
(51, 12, 5, 'fff', '2025-08-09 15:32:06', '2025-08-09 15:32:06', 0, 0, 0, 0, NULL, 1.45, '2025-08-09 15:32:06', NULL),
(52, 12, 1, 'vc', '2025-08-09 15:54:01', '2025-08-09 15:54:01', 0, 0, 0, 0, NULL, 12.35, '2025-08-09 15:54:01', NULL),
(53, 12, 1, 'election', '2025-08-09 16:16:21', '2025-08-09 16:16:21', 0, 0, 0, 0, NULL, 10, '2025-08-09 16:16:21', NULL),
(54, 16, 5, 'coc', '2025-08-09 16:38:06', '2025-08-09 16:38:06', 0, 0, 0, 0, NULL, 25, '2025-08-09 16:38:06', NULL),
(55, 12, 18, 'bb', '2025-08-09 18:31:06', '2025-08-09 18:31:06', 0, 0, 0, 0, NULL, 1.25, '2025-08-09 18:31:06', NULL),
(56, 12, 18, 'vvv', '2025-08-10 14:53:18', '2025-08-10 14:53:18', 0, 0, 0, 0, NULL, 1.111, '2025-08-10 14:53:18', NULL),
(57, 12, 18, '2.22', '2025-08-10 15:36:36', '2025-08-10 15:36:36', 0, 0, 0, 0, NULL, 2.22, '2025-08-10 15:36:36', '2025-08-10 15:37:38');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(30) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `default_credit` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `code`, `name`, `description`, `default_credit`, `status`, `date_created`, `date_updated`) VALUES
(1, 'VL', 'Vacation Leave', 'Vacation Leave with Pay', 10, 1, '2021-08-21 10:39:47', '2025-02-22 10:45:55'),
(2, 'SL', 'Sick Leave', 'Leave type for calling sick with pay', 15, 1, '2021-08-21 13:48:03', '2025-02-22 10:41:10'),
(3, 'LWOP', 'Leave w/o Pay', 'Leave w/o Pay', 365, 1, '2021-08-21 13:49:08', '2025-02-24 00:21:08'),
(4, 'SC', 'Service Credit', 'Service Credit', 0, 1, '2025-02-22 10:38:55', '2025-02-22 22:50:55'),
(5, 'COC', 'Compensatory Overtime Credit', 'Compensatory Overtime Credit', 0, 1, '2025-02-22 10:40:41', '2025-02-22 22:53:49'),
(6, 'SPL', 'Special Privilege Leave', 'Special Privilege Leave', 0, 1, '2025-02-22 10:44:29', '2025-08-09 15:17:30'),
(7, 'MFL', 'Mandatory Force Leave', 'Mandatory Force Leave', 5, 1, '2025-02-22 10:46:42', NULL),
(8, 'ML', 'Maternity Leave', 'Maternity Leave', 105, 1, '2025-02-23 09:33:50', NULL),
(9, 'PL', 'Paternity leave', 'Paternity leave', 7, 1, '2025-02-23 09:34:25', '2025-02-23 09:50:26'),
(10, 'SOLO', '. Solo Parent leave', '. Solo Parent leave', 7, 1, '2025-02-23 09:35:20', NULL),
(11, 'STUDY', 'Study leave', '– up to 6 months', 180, 1, '2025-02-23 09:36:20', '2025-02-23 09:46:35'),
(12, 'VAWC', 'VAWC leave', 'VAWC leave', 10, 1, '2025-02-23 09:38:14', NULL),
(13, 'RL', 'Rehabilitation leave', 'up to 6 months-Application shall be made within one (1) week', 180, 1, '2025-02-23 09:38:47', '2025-02-23 09:53:48'),
(14, 'SLB', 'Special leave benefits for women*', 'Special leave benefits for women* – up to 2 months', 60, 1, '2025-02-23 09:39:51', NULL),
(15, 'SECL', 'Special Emergency (Calamity) leave', 'Special Emergency (Calamity) leave – up to 5 days\r\n', 5, 1, '2025-02-23 09:41:01', NULL),
(16, 'MLC', 'Monetization of leave credits', 'monetization of fifty percent (50%)', 0, 1, '2025-02-23 09:42:45', '2025-02-23 10:01:23'),
(17, 'TL', 'Terminal leave', ' resignation or retirement or separation', 0, 1, '2025-02-23 09:43:30', NULL),
(18, 'AL', 'Adoption Leave', 'Application for adoption leave', 0, 1, '2025-02-23 09:44:22', NULL),
(19, 'OTHERS', 'Others', 'Others', 0, 1, '2025-02-23 17:57:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'DepEd Online Leave System'),
(6, 'short_name', 'DepEd'),
(11, 'logo', 'uploads/1740154500_1739850840_1739719200_1629510720_company_logo.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1740154500_th.jfif'),
(17, 'sds', 'WILLIAM E. GANDO, CESO VI'),
(18, 'asds', 'CHERYLL V. BERMUDO'),
(19, 'hrmo', 'WELMENA M. BERCASIO');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` varchar(250) DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `salary` varchar(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `salary`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', '57,000.00', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2025-08-09 16:31:22'),
(12, 'louie', 'ramones', 'franco', '30,024.00', 'louie', 'bd0c3ed029af8db93d4bdd914e9aebb1', 'uploads/12_user.jpg', NULL, 3, '2025-02-22 00:20:38', '2025-02-25 14:01:32'),
(15, 'Ma. Jaena', 'Balanoyos', 'De Los Reyes', '34,733.00', 'jaena', 'ead639f113b36c607685931cac76279e', NULL, NULL, 3, '2025-02-22 11:07:37', '2025-02-25 14:10:50'),
(16, 'Jesrael', 'Belen', 'Dumo', '57,165.00', 'jesrael', '156c9e22538d71de14cc0af7ac33e627', NULL, NULL, 3, '2025-02-22 11:18:10', '2025-02-25 14:11:29'),
(17, 'Reynalyn', 'Jerao', 'Despolon', '34,733.00', 'reynalyn', 'a34e13cd1f20adb4399bc6b85725b939', NULL, NULL, 3, '2025-02-22 11:30:24', '2025-02-25 14:12:31'),
(19, 'Erlinda', 'Diaz', 'Diesta', '30,024.05', 'erlinda', 'bce98983b6d12c050e013c952933defa', NULL, NULL, 3, '2025-02-22 20:39:58', '2025-02-25 14:13:22'),
(20, 'Zorayna', 'De Leon', 'Doctor,', '34,733.00', 'zorayna', '4ff25144e427f8e93cab416c13c6d546', NULL, NULL, 3, '2025-02-22 20:48:41', '2025-02-25 14:13:57'),
(21, 'Vilma', 'Jaso', 'Dogaojo', '34,733.00', 'vilma', '2442deb07750b8c8c567912d3c1b08d4', NULL, NULL, 3, '2025-02-22 20:54:12', '2025-02-25 14:14:37'),
(22, 'Jennilyn', 'Gallardo', 'Enovejas', '34,733.00', 'jennilyn', '57405dd7fb1f49bd83e612e820113768', NULL, NULL, 3, '2025-02-22 20:58:42', '2025-02-25 14:15:04'),
(23, 'Marlene', 'Rivas', 'Herrera', '34,733.00', 'marlene', '02fbf815e24f35491c7c9ba1c480d1e5', NULL, NULL, 3, '2025-02-22 21:02:40', '2025-02-25 14:15:37'),
(24, 'Maricor', 'Lachica', 'Hubilla', '34,733.00', 'maricor', 'f07cdc9dffd4d04de320bc58385baf79', NULL, NULL, 3, '2025-02-22 21:07:47', '2025-02-25 14:16:06'),
(25, 'Myla', 'Ladub', 'Jeresano', '34,733.00', 'myla', '202cb962ac59075b964b07152d234b70', 'uploads/25_user.JPG', NULL, 3, '2025-02-22 21:11:09', '2025-02-26 00:02:54'),
(26, 'Kristine Pearl', 'Peralta', 'Labitag', '34,733.00', 'kristine', 'f03cbe90f7c04e2b7638983e2a71a608', NULL, NULL, 3, '2025-02-22 21:15:41', '2025-02-25 14:16:44'),
(27, 'Cheenee', 'Lavadia', 'Oliquino', '34,733.00', 'chenee', 'bb286e525cdac4fcc5beba832130ba8d', NULL, NULL, 3, '2025-02-22 21:19:30', '2025-02-25 14:10:14'),
(28, 'Ronnie', 'Echano', 'Rodolfo', '30,597.00', 'ronnie', 'e8527160ac77cc00a9c000a4a4f3bb23', NULL, NULL, 3, '2025-02-22 21:24:28', '2025-02-25 14:17:15'),
(29, 'Rachilda Mae', 'Grino', 'Santiago', '30,024.00', 'rachilda', 'af8fddced3e95e7e26eabb8cd2bc4f26', NULL, NULL, 3, '2025-02-22 21:28:08', '2025-02-25 14:18:02'),
(30, 'Mhalit', 'Furio', 'Vilchez', '34,733.00', 'mhalit', 'ec1aeb61c19bc62766a05fc46bf1023e', NULL, NULL, 3, '2025-02-22 21:30:43', '2025-02-25 14:18:38'),
(31, 'Edsel', 'Dimaano', 'Doctama', '57,165.00', 'edsel', 'b92a67c450d530ec5898e127283130d4', NULL, NULL, 3, '2025-02-23 20:12:23', '2025-02-25 14:19:03'),
(34, 'user', 'u', 'user', '30,024.00', 'user', '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, 3, '2025-02-25 18:41:31', '2025-02-25 18:48:34'),
(36, 'xxx', 'xxxxx', 'xxxxx', '', 'xxxxx', 'fcea920f7412b5da7be0cf42b8c93759', NULL, NULL, 3, '2025-08-08 18:29:23', NULL),
(42, 'super', NULL, 'user', '', 'super', '1959eb9d5a0f7ebc58ebde81d5df400d', NULL, NULL, 1, '2025-08-09 13:57:00', '2025-08-09 16:31:55'),
(43, 'leave', NULL, 'approver', '', 'leave', '6c374e70334072aeeb62ed46ea987838', NULL, NULL, 2, '2025-08-09 13:58:09', '2025-08-09 13:59:28'),
(44, 'credit', NULL, 'approver', '', 'credit', '660cb6fe7437d4b40e4a04b706b93f70', NULL, NULL, 5, '2025-08-09 13:58:56', NULL),
(45, 'creator', NULL, 'credit', '', 'creator', 'ee2433259b0fe399b40e81d2c98a38b6', NULL, NULL, 4, '2025-08-09 14:00:17', '2025-08-09 14:03:41'),
(46, 'xxx', 'xxx', 'xxx', '', 'xxx', 'fe743d8d97aa7dfc6c93ccdc2e749513', NULL, NULL, 3, '2025-08-10 14:10:23', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation_list`
--
ALTER TABLE `designation_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_meta`
--
ALTER TABLE `employee_meta`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `user_id` (`user_id`),
  ADD KEY `leave_type_id` (`leave_type_id`);

--
-- Indexes for table `leave_credits`
--
ALTER TABLE `leave_credits`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `user_id` (`user_id`),
  ADD KEY `leave_type_id` (`leave_type_id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `designation_list`
--
ALTER TABLE `designation_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `leave_credits`
--
ALTER TABLE `leave_credits`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_meta`
--
ALTER TABLE `employee_meta`
  ADD CONSTRAINT `employee_meta_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD CONSTRAINT `leave_applications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `leave_applications_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `leave_credits`
--
ALTER TABLE `leave_credits`
  ADD CONSTRAINT `leave_credits_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `leave_credits_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

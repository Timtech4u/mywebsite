-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 14, 2018 at 12:25 AM
-- Server version: 5.7.22-0ubuntu18.04.1
-- PHP Version: 7.2.6-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hr`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmployeesEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":120,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmployeesEmailJob\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendEmployeesEmailJob\\\":6:{s:4:\\\"data\\\";a:6:{s:10:\\\"first_name\\\";s:4:\\\"Jhon\\\";s:9:\\\"last_name\\\";s:3:\\\"Doe\\\";s:8:\\\"username\\\";s:8:\\\"employee\\\";s:8:\\\"password\\\";s:11:\\\"Employee123\\\";s:5:\\\"email\\\";s:15:\\\"jhon@jhonae.com\\\";s:11:\\\"employee_id\\\";i:40;}s:7:\\\"timeout\\\";i:120;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2018-03-30 07:16:26.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 1, 1522394186, 1522394186, 1522394176),
(2, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmployeesEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":120,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmployeesEmailJob\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendEmployeesEmailJob\\\":6:{s:4:\\\"data\\\";a:6:{s:10:\\\"first_name\\\";s:6:\\\"Michle\\\";s:9:\\\"last_name\\\";s:5:\\\"Smith\\\";s:8:\\\"username\\\";s:8:\\\"accounts\\\";s:8:\\\"password\\\";s:11:\\\"Accounts123\\\";s:5:\\\"email\\\";s:14:\\\"michle-1@m.com\\\";s:11:\\\"employee_id\\\";i:41;}s:7:\\\"timeout\\\";i:120;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2018-03-30 07:18:35.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1522394315, 1522394305),
(3, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmployeesEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":120,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmployeesEmailJob\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendEmployeesEmailJob\\\":6:{s:4:\\\"data\\\";a:6:{s:10:\\\"first_name\\\";s:2:\\\"Hr\\\";s:9:\\\"last_name\\\";s:7:\\\"section\\\";s:8:\\\"username\\\";s:2:\\\"hr\\\";s:8:\\\"password\\\";s:8:\\\"Hr123456\\\";s:5:\\\"email\\\";s:11:\\\"hr@hrs.coms\\\";s:11:\\\"employee_id\\\";i:42;}s:7:\\\"timeout\\\";i:120;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2018-03-30 07:19:51.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1522394391, 1522394381),
(4, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":120,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendCustomerEmailJob\\\":6:{s:4:\\\"data\\\";a:4:{s:10:\\\"first_name\\\";s:8:\\\"customer\\\";s:9:\\\"last_name\\\";s:4:\\\"name\\\";s:11:\\\"template_id\\\";s:2:\\\"16\\\";s:5:\\\"email\\\";s:18:\\\"cutomer@cus123.com\\\";}s:7:\\\"timeout\\\";i:120;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2018-03-30 07:24:21.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1522394661, 1522394651),
(5, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":120,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendCustomerEmailJob\\\":6:{s:4:\\\"data\\\";a:4:{s:10:\\\"first_name\\\";s:7:\\\"Eduardo\\\";s:9:\\\"last_name\\\";s:4:\\\"pauz\\\";s:11:\\\"template_id\\\";s:2:\\\"16\\\";s:5:\\\"email\\\";s:14:\\\"pzau@gail.coma\\\";}s:7:\\\"timeout\\\";i:120;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2018-03-30 07:44:22.924831\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1522395862, 1522395857),
(6, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":120,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendCustomerEmailJob\\\":6:{s:4:\\\"data\\\";a:4:{s:10:\\\"first_name\\\";s:4:\\\"Gary\\\";s:9:\\\"last_name\\\";s:6:\\\"Whyman\\\";s:11:\\\"template_id\\\";s:2:\\\"16\\\";s:5:\\\"email\\\";s:15:\\\"Whyman@abc.coms\\\";}s:7:\\\"timeout\\\";i:120;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2018-03-30 07:45:25.640152\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1522395925, 1522395915),
(7, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":120,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendCustomerEmailJob\\\":6:{s:4:\\\"data\\\";a:4:{s:10:\\\"first_name\\\";s:4:\\\"Marc\\\";s:9:\\\"last_name\\\";s:7:\\\"Brucker\\\";s:11:\\\"template_id\\\";s:2:\\\"16\\\";s:5:\\\"email\\\";s:16:\\\"Brucker@abc.caom\\\";}s:7:\\\"timeout\\\";i:120;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2018-03-30 07:45:56.525901\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1522395956, 1522395946),
(8, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":120,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendCustomerEmailJob\\\":6:{s:4:\\\"data\\\";a:4:{s:10:\\\"first_name\\\";s:4:\\\"Jeff\\\";s:9:\\\"last_name\\\";s:8:\\\"Ackerman\\\";s:11:\\\"template_id\\\";s:2:\\\"16\\\";s:5:\\\"email\\\";s:16:\\\"Ackerman@abc.com\\\";}s:7:\\\"timeout\\\";i:120;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2018-03-30 07:46:27.678045\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1522395987, 1522395977),
(9, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":120,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendCustomerEmailJob\\\":6:{s:4:\\\"data\\\";a:4:{s:10:\\\"first_name\\\";s:16:\\\"Paragon Internet\\\";s:9:\\\"last_name\\\";s:3:\\\"Ltd\\\";s:11:\\\"template_id\\\";s:2:\\\"16\\\";s:5:\\\"email\\\";s:24:\\\"atextiles2009@gmaial.com\\\";}s:7:\\\"timeout\\\";i:120;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2018-03-30 07:47:01.134442\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1522396021, 1522396011),
(10, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":120,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendCustomerEmailJob\\\":6:{s:4:\\\"data\\\";a:4:{s:10:\\\"first_name\\\";s:11:\\\"FERNANDO L.\\\";s:9:\\\"last_name\\\";s:7:\\\"NAZARIO\\\";s:11:\\\"template_id\\\";s:2:\\\"16\\\";s:5:\\\"email\\\";s:16:\\\"NAZARIO@895.coma\\\";}s:7:\\\"timeout\\\";i:120;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2018-03-30 07:47:43.755219\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1522396063, 1522396053),
(11, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":120,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendCustomerEmailJob\\\":6:{s:4:\\\"data\\\";a:4:{s:10:\\\"first_name\\\";s:5:\\\"Larry\\\";s:9:\\\"last_name\\\";s:7:\\\"Wallace\\\";s:11:\\\"template_id\\\";s:2:\\\"16\\\";s:5:\\\"email\\\";s:15:\\\"Wallace@34.acas\\\";}s:7:\\\"timeout\\\";i:120;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2018-03-30 07:48:06.950911\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1522396086, 1522396076),
(12, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":120,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendCustomerEmailJob\\\":6:{s:4:\\\"data\\\";a:4:{s:10:\\\"first_name\\\";s:5:\\\"kerry\\\";s:9:\\\"last_name\\\";s:8:\\\"tillison\\\";s:11:\\\"template_id\\\";s:2:\\\"16\\\";s:5:\\\"email\\\";s:19:\\\"tillison@gmail.coms\\\";}s:7:\\\"timeout\\\";i:120;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2018-03-30 07:48:57.643686\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1522396137, 1522396127),
(13, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":120,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendCustomerEmailJob\\\":6:{s:4:\\\"data\\\";a:4:{s:10:\\\"first_name\\\";s:5:\\\"Josip\\\";s:9:\\\"last_name\\\";s:9:\\\"Preksavec\\\";s:11:\\\"template_id\\\";s:2:\\\"16\\\";s:5:\\\"email\\\";s:20:\\\"Preksavec@gasol.coma\\\";}s:7:\\\"timeout\\\";i:120;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2018-03-30 07:49:24.737841\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1522396164, 1522396154),
(14, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SalaryEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":120,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SalaryEmailJob\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\SalaryEmailJob\\\":6:{s:4:\\\"data\\\";a:1:{i:0;a:14:{s:11:\\\"employee_id\\\";i:42;s:11:\\\"salary_date\\\";s:10:\\\"2018-03-01\\\";s:9:\\\"basic_pay\\\";i:3500;s:13:\\\"generated_pay\\\";d:3340.90999999999985448084771633148193359375;s:8:\\\"overtime\\\";d:0;s:9:\\\"deduction\\\";d:0;s:15:\\\"leave_deduction\\\";d:159.090000000000003410605131648480892181396484375;s:11:\\\"fix_advance\\\";i:0;s:12:\\\"temp_advance\\\";i:0;s:6:\\\"status\\\";s:1:\\\"0\\\";s:10:\\\"created_by\\\";i:34;s:10:\\\"updated_by\\\";i:34;s:10:\\\"created_at\\\";s:19:\\\"2018-03-30 09:08:19\\\";s:10:\\\"updated_at\\\";s:19:\\\"2018-03-30 09:08:19\\\";}}s:7:\\\"timeout\\\";i:120;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2018-03-30 09:08:30.598837\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1522400910, 1522400901),
(15, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SalaryEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":120,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SalaryEmailJob\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\SalaryEmailJob\\\":6:{s:4:\\\"data\\\";a:1:{i:0;a:14:{s:11:\\\"employee_id\\\";i:40;s:11:\\\"salary_date\\\";s:10:\\\"2018-05-01\\\";s:9:\\\"basic_pay\\\";i:5000;s:13:\\\"generated_pay\\\";d:416.67000000000001591615728102624416351318359375;s:8:\\\"overtime\\\";d:0;s:9:\\\"deduction\\\";d:833.3300000000000409272615797817707061767578125;s:15:\\\"leave_deduction\\\";d:3750;s:11:\\\"fix_advance\\\";i:0;s:12:\\\"temp_advance\\\";i:0;s:6:\\\"status\\\";s:1:\\\"0\\\";s:10:\\\"created_by\\\";i:42;s:10:\\\"updated_by\\\";i:42;s:10:\\\"created_at\\\";s:19:\\\"2018-05-16 03:14:52\\\";s:10:\\\"updated_at\\\";s:19:\\\"2018-05-16 03:14:52\\\";}}s:7:\\\"timeout\\\";i:120;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2018-05-16 03:15:02.499881\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1526440502, 1526440492),
(16, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SalaryEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":120,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SalaryEmailJob\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\SalaryEmailJob\\\":6:{s:4:\\\"data\\\";a:1:{i:0;a:14:{s:11:\\\"employee_id\\\";i:41;s:11:\\\"salary_date\\\";s:10:\\\"2018-05-01\\\";s:9:\\\"basic_pay\\\";i:2500;s:13:\\\"generated_pay\\\";d:445.6000000000000227373675443232059478759765625;s:8:\\\"overtime\\\";d:0;s:9:\\\"deduction\\\";d:179.400000000000005684341886080801486968994140625;s:15:\\\"leave_deduction\\\";d:1875;s:11:\\\"fix_advance\\\";i:0;s:12:\\\"temp_advance\\\";i:0;s:6:\\\"status\\\";s:1:\\\"0\\\";s:10:\\\"created_by\\\";i:34;s:10:\\\"updated_by\\\";i:34;s:10:\\\"created_at\\\";s:19:\\\"2018-05-16 05:19:53\\\";s:10:\\\"updated_at\\\";s:19:\\\"2018-05-16 05:19:53\\\";}}s:7:\\\"timeout\\\";i:120;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2018-05-16 05:20:03.891648\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1526448003, 1526447993),
(17, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SalaryEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":120,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SalaryEmailJob\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\SalaryEmailJob\\\":6:{s:4:\\\"data\\\";a:1:{i:0;a:14:{s:11:\\\"employee_id\\\";i:42;s:11:\\\"salary_date\\\";s:10:\\\"2018-05-01\\\";s:9:\\\"basic_pay\\\";i:3500;s:13:\\\"generated_pay\\\";d:875;s:8:\\\"overtime\\\";d:0;s:9:\\\"deduction\\\";d:291.67000000000001591615728102624416351318359375;s:15:\\\"leave_deduction\\\";d:2333.329999999999927240423858165740966796875;s:11:\\\"fix_advance\\\";i:0;s:12:\\\"temp_advance\\\";i:0;s:6:\\\"status\\\";s:1:\\\"0\\\";s:10:\\\"created_by\\\";i:34;s:10:\\\"updated_by\\\";i:34;s:10:\\\"created_at\\\";s:19:\\\"2018-05-16 14:32:57\\\";s:10:\\\"updated_at\\\";s:19:\\\"2018-05-16 14:32:57\\\";}}s:7:\\\"timeout\\\";i:120;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2018-05-16 14:33:08.099600\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1526481188, 1526481178),
(18, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":120,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendCustomerEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendCustomerEmailJob\\\":6:{s:4:\\\"data\\\";a:4:{s:10:\\\"first_name\\\";s:2:\\\"JR\\\";s:9:\\\"last_name\\\";s:3:\\\"365\\\";s:11:\\\"template_id\\\";s:2:\\\"16\\\";s:5:\\\"email\\\";s:30:\\\"davehla@goldenictsolutions.com\\\";}s:7:\\\"timeout\\\";i:120;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2018-05-16 18:42:38.112685\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1526496158, 1526496148);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts_chart`
--

CREATE TABLE `tbl_accounts_chart` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` int(10) UNSIGNED DEFAULT NULL,
  `opening_balance` double UNSIGNED DEFAULT '0',
  `balance_type` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_systemize` tinyint(3) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_accounts_chart`
--

INSERT INTO `tbl_accounts_chart` (`id`, `code`, `name`, `type_id`, `opening_balance`, `balance_type`, `is_systemize`, `created_at`, `updated_at`) VALUES
(1, '010001', 'Accounts Receivable', 2, 0, 'dr', 1, '2017-08-20 09:00:00', '2017-08-20 09:00:00'),
(2, '010002', 'Inventory', 2, 0, 'dr', 1, '2017-08-20 09:00:00', '2017-08-20 09:00:00'),
(3, '010003', 'Office Equipment', 2, 0, 'dr', 1, '2017-08-20 09:00:00', '2017-08-20 09:00:00'),
(5, '020001', 'Accounts Payable', 11, 0, 'dr', 1, '2017-08-21 23:42:18', '2017-08-21 23:42:18'),
(7, '020002', 'Accruals', 11, 0, 'dr', 0, '2017-08-23 01:44:01', '2017-08-23 01:44:01'),
(12, '040001', 'Purchase Discount', 17, 0, 'cr', 1, '2017-08-24 00:36:04', '2017-08-24 00:36:04'),
(13, '040002', 'Sales', 17, 0, 'cr', 0, '2017-08-24 00:36:51', '2017-08-24 00:36:51'),
(14, '040003', 'Interest Income', 17, 0, 'cr', 0, '2017-08-24 00:37:08', '2017-08-24 00:37:08'),
(15, '040004', 'Other Revenue', 17, 0, 'cr', 0, '2017-08-24 00:38:13', '2017-08-24 01:41:11'),
(16, '030001', 'Costs of Goods Sold', 14, 0, 'dr', 1, '2017-08-24 01:22:18', '2017-08-24 01:22:18'),
(20, '030002', 'Advertising', 15, 0, 'dr', 0, '2017-08-24 01:29:50', '2017-08-24 01:29:50'),
(21, '030003', 'Bank Service Charges', 15, 0, 'dr', 0, '2017-08-24 01:30:23', '2017-08-24 01:30:23'),
(22, '030004', 'Janitorial Expenses', 15, 0, 'dr', 0, '2017-08-24 01:31:13', '2017-08-24 01:31:13'),
(23, '030005', 'Consulting & Accounting', 15, 0, 'dr', 0, '2017-08-24 01:31:34', '2017-08-24 01:31:34'),
(24, '030006', 'Entertainment', 15, 0, 'dr', 0, '2017-08-24 01:31:55', '2017-08-24 01:31:55'),
(25, '030007', 'Postage & Delivary', 15, 0, 'dr', 0, '2017-08-24 01:32:14', '2017-08-24 01:32:14'),
(26, '030008', 'General Expenses', 15, 0, 'dr', 0, '2017-08-24 01:32:47', '2017-08-24 01:32:47'),
(27, '030009', 'Insurance', 15, 0, 'dr', 0, '2017-08-24 01:33:01', '2017-08-24 01:33:01'),
(28, '030010', 'Legal Expenses', 15, 0, 'dr', 0, '2017-08-24 01:33:42', '2017-08-24 01:33:42'),
(29, '030011', 'Utilities', 15, 0, 'dr', 1, '2017-08-24 01:34:09', '2017-08-24 01:34:09'),
(30, '030012', 'Automobile Expenses', 15, 0, 'dr', 0, '2017-08-24 01:35:26', '2017-08-24 01:35:26'),
(31, '030013', 'Office Expenses', 15, 0, 'dr', 1, '2017-08-24 01:35:43', '2017-08-24 01:35:43'),
(32, '030014', 'Printing & Stationary', 15, 0, 'dr', 0, '2017-08-24 01:36:21', '2017-08-24 01:36:21'),
(33, '030015', 'Rent', 15, 0, 'dr', 1, '2017-08-24 01:37:43', '2017-08-24 01:37:43'),
(34, '030016', 'Repairs & Maintenance', 15, 0, 'dr', 0, '2017-08-24 01:39:06', '2017-08-24 01:39:06'),
(35, '030017', 'Wages & Salaries', 15, 0, 'dr', 0, '2017-08-24 01:39:26', '2017-08-24 01:39:26'),
(36, '030018', 'Payroll Tax Expense', 15, 0, 'dr', 0, '2017-08-24 01:39:39', '2017-08-24 01:39:39'),
(37, '030019', 'Dues & Subscriptions', 15, 0, 'dr', 0, '2017-08-24 01:40:03', '2017-08-24 01:40:03'),
(38, '030020', 'Telephone & Internet', 15, 0, 'dr', 0, '2017-08-24 01:40:24', '2017-08-24 01:40:24'),
(39, '030021', 'Travel', 15, 0, 'dr', 0, '2017-08-24 01:43:34', '2017-08-24 01:43:34'),
(40, '030022', 'Bad Debts', 15, 0, 'dr', 0, '2017-08-24 01:43:55', '2017-08-24 01:43:55'),
(41, '030023', 'Depreciation', 13, 0, 'dr', 0, '2017-08-24 01:45:44', '2017-08-24 01:45:44'),
(42, '030024', 'Income Tax Expense', 15, 0, 'dr', 0, '2017-08-24 01:46:31', '2017-08-24 01:46:31'),
(43, '030025', 'Employee Benefits Expense', 15, 0, 'dr', 0, '2017-08-24 01:46:53', '2017-08-24 01:46:53'),
(44, '030026', 'Interest Expense', 15, 0, 'dr', 0, '2017-08-24 01:47:08', '2017-08-24 01:47:08'),
(45, '030027', 'Bank Revaluations', 15, 0, 'dr', 0, '2017-08-24 01:47:25', '2017-08-24 01:47:25'),
(46, '030028', 'Unrealized Currency Gains', 15, 0, 'dr', 0, '2017-08-24 01:47:46', '2017-08-24 01:47:46'),
(47, '030029', 'Realized Currency Gains', 15, 0, 'dr', 0, '2017-08-24 01:48:03', '2017-08-24 01:48:03'),
(48, '030030', 'Sales Discount', 15, 0, 'dr', 0, '2017-08-24 01:48:20', '2017-08-24 01:48:20'),
(53, '010004', 'Petty Cash', 9, 0, 'cr', 0, '2017-09-25 23:47:39', '2017-11-06 06:21:06'),
(65, '010006', 'Askari', 9, 0, 'dr', 0, NULL, NULL),
(66, '020003', 'Mr John', 11, 0, 'cr', 0, '2018-02-01 23:01:52', '2018-02-01 23:01:52'),
(67, '020004', 'Sandy Reo', 11, 0, 'cr', 0, '2018-02-01 23:46:15', '2018-02-01 23:46:15'),
(68, '040005', 'Abc Abc', 17, 0, 'dr', 0, '2018-02-02 01:15:08', '2018-02-02 01:15:08'),
(69, '020005', 'Co Admin', 11, 0, 'cr', 0, '2018-02-06 19:08:05', '2018-02-06 19:08:05'),
(70, '020006', 'Employee Employee', 11, 0, 'cr', 0, '2018-02-06 19:11:58', '2018-02-06 19:11:58'),
(71, '020007', 'Willam Strike', 11, 0, 'cr', 0, '2018-02-06 19:25:30', '2018-02-06 19:25:30'),
(72, '010006', 'First Century', 9, 0, 'dr', 0, NULL, NULL),
(73, '020008', 'Jhon Doe', 11, 0, 'cr', 0, '2018-03-30 07:16:15', '2018-03-30 07:16:15'),
(74, '020009', 'Michle Smith', 11, 0, 'cr', 0, '2018-03-30 07:18:25', '2018-03-30 07:18:25'),
(75, '020010', 'Hr section', 11, 0, 'cr', 0, '2018-03-30 07:19:41', '2018-03-30 07:19:41'),
(76, '040006', 'customer name', 17, 0, 'dr', 0, '2018-03-30 07:24:11', '2018-03-30 07:24:11'),
(77, '040007', 'Eduardo pauz', 17, 0, 'dr', 0, '2018-03-30 07:44:03', '2018-03-30 07:44:03'),
(78, '040008', 'Gary Whyman', 17, 0, 'dr', 0, '2018-03-30 07:45:15', '2018-03-30 07:45:15'),
(79, '040009', 'Marc Brucker', 17, 0, 'dr', 0, '2018-03-30 07:45:46', '2018-03-30 07:45:46'),
(80, '040010', 'Jeff Ackerman', 17, 0, 'dr', 0, '2018-03-30 07:46:17', '2018-03-30 07:46:17'),
(81, '040011', 'Paragon Internet Ltd', 17, 0, 'dr', 0, '2018-03-30 07:46:51', '2018-03-30 07:46:51'),
(82, '040012', 'FERNANDO L. NAZARIO', 17, 0, 'dr', 0, '2018-03-30 07:47:33', '2018-03-30 07:47:33'),
(83, '040013', 'Larry Wallace', 17, 0, 'dr', 0, '2018-03-30 07:47:56', '2018-03-30 07:47:56'),
(84, '040014', 'kerry tillison', 17, 0, 'dr', 0, '2018-03-30 07:48:47', '2018-03-30 07:48:47'),
(85, '040015', 'Josip Preksavec', 17, 0, 'dr', 0, '2018-03-30 07:49:14', '2018-03-30 07:49:14'),
(86, '020011', 'Paragon Interneta Ltd', 11, 0, 'cr', 0, '2018-03-30 07:51:12', '2018-03-30 07:51:12'),
(87, '020012', 'Michael Klose', 11, 0, 'cr', 0, '2018-03-30 07:51:36', '2018-03-30 07:51:36'),
(88, '000001', 'Dave Hla', 11, 0, 'cr', 0, '2018-05-16 18:39:57', '2018-05-16 18:39:57'),
(89, '505050502', 'JR 365', 17, 0, 'dr', 0, '2018-05-16 18:42:28', '2018-05-16 18:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts_summery`
--

CREATE TABLE `tbl_accounts_summery` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `reference` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `added_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_accounts_summery`
--

INSERT INTO `tbl_accounts_summery` (`id`, `code`, `date`, `reference`, `description`, `type`, `added_by`, `created_at`, `updated_at`) VALUES
(58, '00001', '2018-03-30', 'cash', 'IN-00004 - Cash', 2, 34, '2018-03-30 08:00:02', '2018-03-30 08:00:02'),
(59, '00002', '2018-03-30', 'E Transfer', 'IN-00001 - E Transfer', 2, 34, '2018-03-30 08:00:54', '2018-03-30 08:00:54'),
(60, '00003', '2018-05-14', NULL, NULL, 2, 34, '2018-05-14 12:30:36', '2018-05-14 12:30:36'),
(61, '00001', '2018-05-16', '', 'Salary Paid: 2018-05-16', 3, 34, NULL, NULL),
(62, '00001', '2018-05-16', NULL, 'm', 4, 34, '2018-05-16 17:28:32', '2018-05-16 17:28:32'),
(63, '00001', '2018-05-16', '', 'Salary Paid: 2018-05-16', 3, 34, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts_summery_detail`
--

CREATE TABLE `tbl_accounts_summery_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `summery_id` int(10) UNSIGNED DEFAULT NULL,
  `account_id` int(10) UNSIGNED DEFAULT NULL,
  `date` date DEFAULT NULL,
  `debit` double UNSIGNED DEFAULT '0',
  `credit` double UNSIGNED DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `added_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_accounts_summery_detail`
--

INSERT INTO `tbl_accounts_summery_detail` (`id`, `summery_id`, `account_id`, `date`, `debit`, `credit`, `description`, `added_by`, `created_at`, `updated_at`) VALUES
(115, 58, 76, '2018-03-30', 5500, 0, 'IN-00004 - Cash', 34, '2018-03-30 08:00:03', '2018-03-30 08:00:03'),
(116, 58, 72, '2018-03-30', 0, 5500, 'IN-00004 - Cash', 34, '2018-03-30 08:00:05', '2018-03-30 08:00:05'),
(117, 59, 76, '2018-03-30', 600, 0, 'IN-00001 - E Transfer', 34, '2018-03-30 08:00:54', '2018-03-30 08:00:54'),
(118, 59, 53, '2018-03-30', 0, 600, 'IN-00001 - E Transfer', 34, '2018-03-30 08:00:54', '2018-03-30 08:00:54'),
(119, 60, 76, '2018-05-14', 44, 0, NULL, 34, '2018-05-14 12:30:36', '2018-05-14 12:30:36'),
(120, 60, 65, '2018-05-14', 0, 44, NULL, 34, '2018-05-14 12:30:36', '2018-05-14 12:30:36'),
(121, 61, 74, '2018-05-16', 0, 445.6, 'Salary Paid: 2018-05-16', 34, NULL, NULL),
(122, 61, 65, '2018-05-16', 445.6, 0, 'Salary Paid: 2018-05-16', 34, NULL, NULL),
(123, 62, 65, '2018-05-16', 1500, 0, NULL, 34, NULL, NULL),
(124, 62, 72, '2018-05-16', 0, 1500, 'm', 34, NULL, NULL),
(125, 63, 75, '2018-05-16', 0, 875, 'Salary Paid: 2018-05-16', 34, NULL, NULL),
(126, 63, 72, '2018-05-16', 875, 0, 'Salary Paid: 2018-05-16', 34, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts_types`
--

CREATE TABLE `tbl_accounts_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` tinyint(3) UNSIGNED DEFAULT '0',
  `type` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_accounts_types`
--

INSERT INTO `tbl_accounts_types` (`id`, `name`, `parent`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Assets', 0, 'dr', '2017-08-20 09:00:00', '2017-08-21 01:20:35'),
(2, 'Current Assets', 1, 'dr', '2017-08-20 09:00:00', '2017-08-21 00:56:30'),
(3, 'Liabilities', 0, 'cr', '2017-08-20 09:00:00', NULL),
(4, 'Fixed Assets', 1, 'dr', '2017-08-20 23:49:14', '2017-08-20 23:49:14'),
(5, 'Non-current Liability', 3, 'dr', '2017-08-21 23:40:30', '2017-08-21 23:40:30'),
(6, 'Inventory', 1, 'dr', '2017-08-23 00:00:33', '2017-08-23 00:00:33'),
(7, 'Non-current Asset', 1, 'dr', '2017-08-23 00:00:48', '2017-08-23 00:00:48'),
(8, 'Prepayment', 1, 'dr', '2017-08-23 00:00:57', '2017-08-23 00:00:57'),
(9, 'Bank & Cash', 1, 'dr', '2017-08-23 00:01:04', '2017-08-23 00:01:04'),
(10, 'Liability', 3, 'dr', '2017-08-23 00:08:21', '2017-08-23 00:09:18'),
(11, 'Current Liability', 3, 'dr', '2017-08-23 00:10:16', '2017-08-23 00:10:16'),
(12, 'Expenses', 0, 'dr', '2017-08-23 00:16:46', '2017-08-23 00:16:46'),
(13, 'Depreciation', 12, 'dr', '2017-08-23 00:16:58', '2017-08-23 00:16:58'),
(14, 'Direct Costs', 12, 'dr', '2017-08-23 00:17:15', '2017-08-23 00:17:15'),
(15, 'Expense', 12, 'dr', '2017-08-23 00:17:24', '2017-08-23 00:17:24'),
(16, 'Income', 0, 'cr', '2017-08-23 00:17:50', '2017-08-23 00:17:50'),
(17, 'Revenue', 16, 'cr', '2017-08-23 00:18:04', '2017-08-23 00:18:04'),
(18, 'Sales', 0, 'dr', '2017-08-23 00:18:13', '2018-05-14 12:29:46'),
(19, 'Other Income', 16, 'cr', '2017-08-23 00:18:22', '2017-08-23 00:18:22'),
(20, 'Equity', 0, 'cr', '2017-08-23 00:18:42', '2017-08-23 00:18:42'),
(21, 'Equity', 20, 'cr', '2017-08-23 00:19:12', '2017-08-23 00:19:12'),
(22, 'HR', 0, 'dr', '2017-08-24 23:30:06', '2017-08-24 23:30:06'),
(23, 'Payroll', 22, 'dr', '2017-08-24 23:30:53', '2017-08-24 23:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(11) NOT NULL,
  `iso_alpha2` varchar(2) DEFAULT NULL,
  `iso_alpha3` varchar(3) DEFAULT NULL,
  `iso_numeric` int(11) DEFAULT NULL,
  `country_code` varchar(3) DEFAULT NULL,
  `country_name` varchar(200) DEFAULT NULL,
  `capital` varchar(200) DEFAULT NULL,
  `areainsqkm` bigint(20) DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `continent` char(2) DEFAULT NULL,
  `tld` varchar(4) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  `currency_name` varchar(32) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `postal_code_format` varchar(64) DEFAULT NULL,
  `postal_code_regex` varchar(256) DEFAULT NULL,
  `languages` varchar(200) DEFAULT NULL,
  `geonameId` int(11) DEFAULT NULL,
  `neighbours` varchar(64) DEFAULT NULL,
  `equivalent_fips_code` varchar(3) DEFAULT NULL,
  `currrency_symbol` varchar(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `iso_alpha2`, `iso_alpha3`, `iso_numeric`, `country_code`, `country_name`, `capital`, `areainsqkm`, `population`, `continent`, `tld`, `currency_code`, `currency_name`, `phone`, `postal_code_format`, `postal_code_regex`, `languages`, `geonameId`, `neighbours`, `equivalent_fips_code`, `currrency_symbol`) VALUES
(1, 'AD', 'AND', 20, 'AN', 'Andorra', 'Andorra la Vella', 468, 72000, 'EU', '.ad', 'EUR', 'Euro', '376', 'AD###', '^(?:AD)*(d{3})$', 'ca,fr-AD,pt', 3041565, 'ES,FR', '', '€'),
(2, 'AE', 'ARE', 784, 'AE', 'United Arab Emirates', 'Abu Dhabi', 82880, 4621000, 'AS', '.ae', 'AED', 'Dirham', '971', '', '', 'ar-AE,fa,en,hi,ur', 290557, 'SA,OM', '', NULL),
(3, 'AF', 'AFG', 4, 'AF', 'Afghanistan', 'Kabul', 647500, 32738000, 'AS', '.af', 'AFN', 'Afghani', '93', '', '', 'fa-AF,ps,uz-AF,tk', 1149361, 'TM,CN,IR,TJ,PK,UZ', '', '؋'),
(4, 'AG', 'ATG', 28, 'AC', 'Antigua and Barbuda', 'St. John\'s', 443, 69000, 'NA', '.ag', 'XCD', 'Dollar', '+1-268', '', '', 'en-AG', 3576396, '', '', '$'),
(5, 'AI', 'AIA', 660, 'AV', 'Anguilla', 'The Valley', 102, 13254, 'NA', '.ai', 'XCD', 'Dollar', '+1-264', '', '', 'en-AI', 3573511, '', '', '$'),
(6, 'AL', 'ALB', 8, 'AL', 'Albania', 'Tirana', 28748, 3619000, 'EU', '.al', 'ALL', 'Lek', '355', '', '', 'sq,el', 783754, 'MK,GR,CS,ME,RS', '', 'Lek'),
(7, 'AM', 'ARM', 51, 'AM', 'Armenia', 'Yerevan', 29800, 2968000, 'AS', '.am', 'AMD', 'Dram', '374', '######', '^(d{6})$', 'hy', 174982, 'GE,IR,AZ,TR', '', NULL),
(8, 'AN', 'ANT', 530, 'NT', 'Netherlands Antilles', 'Willemstad', 960, 136197, 'NA', '.an', 'ANG', 'Guilder', '599', '', '', 'nl-AN,en,es', 3513447, 'GP', '', 'ƒ'),
(9, 'AO', 'AGO', 24, 'AO', 'Angola', 'Luanda', 1246700, 12531000, 'AF', '.ao', 'AOA', 'Kwanza', '244', '', '', 'pt-AO', 3351879, 'CD,NA,ZM,CG', '', 'Kz'),
(10, 'AQ', 'ATA', 10, 'AY', 'Antarctica', '', 14000000, 0, 'AN', '.aq', '', '', '', '', '', '', 6697173, '', '', NULL),
(11, 'AR', 'ARG', 32, 'AR', 'Argentina', 'Buenos Aires', 2766890, 40677000, 'SA', '.ar', 'ARS', 'Peso', '54', '@####@@@', '^([A-Z]d{4}[A-Z]{3})$', 'es-AR,en,it,de,fr', 3865483, 'CL,BO,UY,PY,BR', '', '$'),
(12, 'AS', 'ASM', 16, 'AQ', 'American Samoa', 'Pago Pago', 199, 57881, 'OC', '.as', 'USD', 'Dollar', '+1-684', '', '', 'en-AS,sm,to', 5880801, '', '', '$'),
(13, 'AT', 'AUT', 40, 'AU', 'Austria', 'Vienna', 83858, 8205000, 'EU', '.at', 'EUR', 'Euro', '43', '####', '^(d{4})$', 'de-AT,hr,hu,sl', 2782113, 'CH,DE,HU,SK,CZ,IT,SI,LI', '', '€'),
(14, 'AU', 'AUS', 36, 'AS', 'Australia', 'Canberra', 7686850, 20600000, 'OC', '.au', 'AUD', 'Dollar', '61', '####', '^(d{4})$', 'en-AU', 2077456, '', '', '$'),
(15, 'AW', 'ABW', 533, 'AA', 'Aruba', 'Oranjestad', 193, 71566, 'NA', '.aw', 'AWG', 'Guilder', '297', '', '', 'nl-AW,es,en', 3577279, '', '', 'ƒ'),
(16, 'AX', 'ALA', 248, '', 'Aland Islands', 'Mariehamn', 0, 26711, 'EU', '.ax', 'EUR', 'Euro', '+358-18', '', '', 'sv-AX', 661882, '', 'FI', '€'),
(17, 'AZ', 'AZE', 31, 'AJ', 'Azerbaijan', 'Baku', 86600, 8177000, 'AS', '.az', 'AZN', 'Manat', '994', 'AZ ####', '^(?:AZ)*(d{4})$', 'az,ru,hy', 587116, 'GE,IR,AM,TR,RU', '', 'ман'),
(18, 'BA', 'BIH', 70, 'BK', 'Bosnia and Herzegovina', 'Sarajevo', 51129, 4590000, 'EU', '.ba', 'BAM', 'Marka', '387', '#####', '^(d{5})$', 'bs,hr-BA,sr-BA', 3277605, 'CS,HR,ME,RS', '', 'KM'),
(19, 'BB', 'BRB', 52, 'BB', 'Barbados', 'Bridgetown', 431, 281000, 'NA', '.bb', 'BBD', 'Dollar', '+1-246', 'BB#####', '^(?:BB)*(d{5})$', 'en-BB', 3374084, '', '', '$'),
(20, 'BD', 'BGD', 50, 'BG', 'Bangladesh', 'Dhaka', 144000, 153546000, 'AS', '.bd', 'BDT', 'Taka', '880', '####', '^(d{4})$', 'bn-BD,en', 1210997, 'MM,IN', '', NULL),
(21, 'BE', 'BEL', 56, 'BE', 'Belgium', 'Brussels', 30510, 10403000, 'EU', '.be', 'EUR', 'Euro', '32', '####', '^(d{4})$', 'nl-BE,fr-BE,de-BE', 2802361, 'DE,NL,LU,FR', '', '€'),
(22, 'BF', 'BFA', 854, 'UV', 'Burkina Faso', 'Ouagadougou', 274200, 14761000, 'AF', '.bf', 'XOF', 'Franc', '226', '', '', 'fr-BF', 2361809, 'NE,BJ,GH,CI,TG,ML', '', NULL),
(23, 'BG', 'BGR', 100, 'BU', 'Bulgaria', 'Sofia', 110910, 7262000, 'EU', '.bg', 'BGN', 'Lev', '359', '####', '^(d{4})$', 'bg,tr-BG', 732800, 'MK,GR,RO,CS,TR,RS', '', 'лв'),
(24, 'BH', 'BHR', 48, 'BA', 'Bahrain', 'Manama', 665, 718000, 'AS', '.bh', 'BHD', 'Dinar', '973', '####|###', '^(d{3}d?)$', 'ar-BH,en,fa,ur', 290291, '', '', NULL),
(25, 'BI', 'BDI', 108, 'BY', 'Burundi', 'Bujumbura', 27830, 8691000, 'AF', '.bi', 'BIF', 'Franc', '257', '', '', 'fr-BI,rn', 433561, 'TZ,CD,RW', '', NULL),
(26, 'BJ', 'BEN', 204, 'BN', 'Benin', 'Porto-Novo', 112620, 8294000, 'AF', '.bj', 'XOF', 'Franc', '229', '', '', 'fr-BJ', 2395170, 'NE,TG,BF,NG', '', NULL),
(27, 'BL', 'BLM', 652, 'TB', 'Saint Barthélemy', 'Gustavia', 21, 8450, 'NA', '.gp', 'EUR', 'Euro', '590', '### ###', '', 'fr', 3578476, '', '', '€'),
(28, 'BM', 'BMU', 60, 'BD', 'Bermuda', 'Hamilton', 53, 65365, 'NA', '.bm', 'BMD', 'Dollar', '+1-441', '@@ ##', '^([A-Z]{2}d{2})$', 'en-BM,pt', 3573345, '', '', '$'),
(29, 'BN', 'BRN', 96, 'BX', 'Brunei', 'Bandar Seri Begawan', 5770, 381000, 'AS', '.bn', 'BND', 'Dollar', '673', '@@####', '^([A-Z]{2}d{4})$', 'ms-BN,en-BN', 1820814, 'MY', '', '$'),
(30, 'BO', 'BOL', 68, 'BL', 'Bolivia', 'La Paz', 1098580, 9247000, 'SA', '.bo', 'BOB', 'Boliviano', '591', '', '', 'es-BO,qu,ay', 3923057, 'PE,CL,PY,BR,AR', '', '$b'),
(31, 'BR', 'BRA', 76, 'BR', 'Brazil', 'Brasília', 8511965, 191908000, 'SA', '.br', 'BRL', 'Real', '55', '#####-###', '^(d{8})$', 'pt-BRR,es,en,fr', 3469034, 'SR,PE,BO,UY,GY,PY,GF,VE,CO,AR', '', 'R$'),
(32, 'BS', 'BHS', 44, 'BF', 'Bahamas', 'Nassau', 13940, 301790, 'NA', '.bs', 'BSD', 'Dollar', '+1-242', '', '', 'en-BS', 3572887, '', '', '$'),
(33, 'BT', 'BTN', 64, 'BT', 'Bhutan', 'Thimphu', 47000, 2376000, 'AS', '.bt', 'BTN', 'Ngultrum', '975', '', '', 'dz', 1252634, 'CN,IN', '', NULL),
(34, 'BV', 'BVT', 74, 'BV', 'Bouvet Island', '', 0, 0, 'AN', '.bv', 'NOK', 'Krone', '', '', '', '', 3371123, '', '', 'kr'),
(35, 'BW', 'BWA', 72, 'BC', 'Botswana', 'Gaborone', 600370, 1842000, 'AF', '.bw', 'BWP', 'Pula', '267', '', '', 'en-BW,tn-BW', 933860, 'ZW,ZA,NA', '', 'P'),
(36, 'BY', 'BLR', 112, 'BO', 'Belarus', 'Minsk', 207600, 9685000, 'EU', '.by', 'BYR', 'Ruble', '375', '######', '^(d{6})$', 'be,cru', 630336, 'PL,LT,UA,RU,LV', '', 'p.'),
(37, 'BZ', 'BLZ', 84, 'BH', 'Belize', 'Belmopan', 22966, 301000, 'NA', '.bz', 'BZD', 'Dollar', '501', '', '', 'en-BZ,es', 3582678, 'GT,MX', '', 'BZ$'),
(38, 'CA', 'CAN', 124, 'CA', 'Canada', 'Ottawa', 9984670, 33679000, 'NA', '.ca', 'CAD', 'Dollar', '1', '@#@ #@#', '^([a-zA-Z]d[a-zA-Z]d[a-zA-Z]d)$', 'en-CA,fr-CA', 6251999, 'US', '', '$'),
(39, 'CC', 'CCK', 166, 'CK', 'Cocos Islands', 'West Island', 14, 628, 'AS', '.cc', 'AUD', 'Dollar', '61', '', '', 'ms-CC,en', 1547376, '', '', '$'),
(40, 'CD', 'COD', 180, 'CG', 'Democratic Republic of the Congo', 'Kinshasa', 2345410, 60085004, 'AF', '.cd', 'CDF', 'Franc', '243', '', '', 'fr-CD,ln,kg', 203312, 'TZ,CF,SD,RW,ZM,BI,UG,CG,AO', '', NULL),
(41, 'CF', 'CAF', 140, 'CT', 'Central African Republic', 'Bangui', 622984, 4434000, 'AF', '.cf', 'XAF', 'Franc', '236', '', '', 'fr-CF,ln,kg', 239880, 'TD,SD,CD,CM,CG', '', 'FCF'),
(42, 'CG', 'COG', 178, 'CF', 'Republic of the Congo', 'Brazzaville', 342000, 3039126, 'AF', '.cg', 'XAF', 'Franc', '242', '', '', 'fr-CG,kg,ln-CG', 2260494, 'CF,GA,CD,CM,AO', '', 'FCF'),
(43, 'CH', 'CHE', 756, 'SZ', 'Switzerland', 'Berne', 41290, 7581000, 'EU', '.ch', 'CHF', 'Franc', '41', '####', '^(d{4})$', 'de-CH,fr-CH,it-CH,rm', 2658434, 'DE,IT,LI,FR,AT', '', 'CHF'),
(44, 'CI', 'CIV', 384, 'IV', 'Ivory Coast', 'Yamoussoukro', 322460, 18373000, 'AF', '.ci', 'XOF', 'Franc', '225', '', '', 'fr-CI', 2287781, 'LR,GH,GN,BF,ML', '', NULL),
(45, 'CK', 'COK', 184, 'CW', 'Cook Islands', 'Avarua', 240, 21388, 'OC', '.ck', 'NZD', 'Dollar', '682', '', '', 'en-CK,mi', 1899402, '', '', '$'),
(46, 'CL', 'CHL', 152, 'CI', 'Chile', 'Santiago', 756950, 16432000, 'SA', '.cl', 'CLP', 'Peso', '56', '#######', '^(d{7})$', 'es-CL', 3895114, 'PE,BO,AR', '', NULL),
(47, 'CM', 'CMR', 120, 'CM', 'Cameroon', 'Yaoundé', 475440, 18467000, 'AF', '.cm', 'XAF', 'Franc', '237', '', '', 'en-CM,fr-CM', 2233387, 'TD,CF,GA,GQ,CG,NG', '', 'FCF'),
(48, 'CN', 'CHN', 156, 'CH', 'China', 'Beijing', 9596960, 1330044000, 'AS', '.cn', 'CNY', 'Yuan Renminbi', '86', '######', '^(d{6})$', 'zh-CN,yue,wuu', 1814991, 'LA,BT,TJ,KZ,MN,AF,NP,MM,KG,PK,KP,RU,VN,IN', '', '¥'),
(49, 'CO', 'COL', 170, 'CO', 'Colombia', 'Bogotá', 1138910, 45013000, 'SA', '.co', 'COP', 'Peso', '57', '', '', 'es-CO', 3686110, 'EC,PE,PA,BR,VE', '', '$'),
(50, 'CR', 'CRI', 188, 'CS', 'Costa Rica', 'San José', 51100, 4191000, 'NA', '.cr', 'CRC', 'Colon', '506', '####', '^(d{4})$', 'es-CR,en', 3624060, 'PA,NI', '', '₡'),
(51, 'CU', 'CUB', 192, 'CU', 'Cuba', 'Havana', 110860, 11423000, 'NA', '.cu', 'CUP', 'Peso', '53', 'CP #####', '^(?:CP)*(d{5})$', 'es-CU', 3562981, 'US', '', '₱'),
(52, 'CV', 'CPV', 132, 'CV', 'Cape Verde', 'Praia', 4033, 426000, 'AF', '.cv', 'CVE', 'Escudo', '238', '####', '^(d{4})$', 'pt-CV', 3374766, '', '', NULL),
(53, 'CX', 'CXR', 162, 'KT', 'Christmas Island', 'Flying Fish Cove', 135, 361, 'AS', '.cx', 'AUD', 'Dollar', '61', '####', '^(d{4})$', 'en,zh,ms-CC', 2078138, '', '', '$'),
(54, 'CY', 'CYP', 196, 'CY', 'Cyprus', 'Nicosia', 9250, 792000, 'EU', '.cy', 'CYP', 'Pound', '357', '####', '^(d{4})$', 'el-CY,tr-CY,en', 146669, '', '', NULL),
(55, 'CZ', 'CZE', 203, 'EZ', 'Czech Republic', 'Prague', 78866, 10220000, 'EU', '.cz', 'CZK', 'Koruna', '420', '### ##', '^(d{5})$', 'cs,sk', 3077311, 'PL,DE,SK,AT', '', 'Kč'),
(56, 'DE', 'DEU', 276, 'GM', 'Germany', 'Berlin', 357021, 82369000, 'EU', '.de', 'EUR', 'Euro', '49', '#####', '^(d{5})$', 'de', 2921044, 'CH,PL,NL,DK,BE,CZ,LU,FR,AT', '', '€'),
(57, 'DJ', 'DJI', 262, 'DJ', 'Djibouti', 'Djibouti', 23000, 506000, 'AF', '.dj', 'DJF', 'Franc', '253', '', '', 'fr-DJ,ar,so-DJ,aa', 223816, 'ER,ET,SO', '', NULL),
(58, 'DK', 'DNK', 208, 'DA', 'Denmark', 'Copenhagen', 43094, 5484000, 'EU', '.dk', 'DKK', 'Krone', '45', '####', '^(d{4})$', 'da-DK,en,fo,de-DK', 2623032, 'DE', '', 'kr'),
(59, 'DM', 'DMA', 212, 'DO', 'Dominica', 'Roseau', 754, 72000, 'NA', '.dm', 'XCD', 'Dollar', '+1-767', '', '', 'en-DM', 3575830, '', '', '$'),
(60, 'DO', 'DOM', 214, 'DR', 'Dominican Republic', 'Santo Domingo', 48730, 9507000, 'NA', '.do', 'DOP', 'Peso', '+1-809 and 1-829', '#####', '^(d{5})$', 'es-DO', 3508796, 'HT', '', 'RD$'),
(61, 'DZ', 'DZA', 12, 'AG', 'Algeria', 'Algiers', 2381740, 33739000, 'AF', '.dz', 'DZD', 'Dinar', '213', '#####', '^(d{5})$', 'ar-DZ', 2589581, 'NE,EH,LY,MR,TN,MA,ML', '', NULL),
(62, 'EC', 'ECU', 218, 'EC', 'Ecuador', 'Quito', 283560, 13927000, 'SA', '.ec', 'USD', 'Dollar', '593', '@####@', '^([a-zA-Z]d{4}[a-zA-Z])$', 'es-EC', 3658394, 'PE,CO', '', '$'),
(63, 'EE', 'EST', 233, 'EN', 'Estonia', 'Tallinn', 45226, 1307000, 'EU', '.ee', 'EEK', 'Kroon', '372', '#####', '^(d{5})$', 'et,ru', 453733, 'RU,LV', '', 'kr'),
(64, 'EG', 'EGY', 818, 'EG', 'Egypt', 'Cairo', 1001450, 81713000, 'AF', '.eg', 'EGP', 'Pound', '20', '#####', '^(d{5})$', 'ar-EG,en,fr', 357994, 'LY,SD,IL', '', '£'),
(65, 'EH', 'ESH', 732, 'WI', 'Western Sahara', 'El-Aaiun', 266000, 273008, 'AF', '.eh', 'MAD', 'Dirham', '212', '', '', 'ar,mey', 2461445, 'DZ,MR,MA', '', NULL),
(66, 'ER', 'ERI', 232, 'ER', 'Eritrea', 'Asmara', 121320, 5028000, 'AF', '.er', 'ERN', 'Nakfa', '291', '', '', 'aa-ER,ar,tig,kun,ti-ER', 338010, 'ET,SD,DJ', '', 'Nfk'),
(67, 'ES', 'ESP', 724, 'SP', 'Spain', 'Madrid', 504782, 40491000, 'EU', '.es', 'EUR', 'Euro', '34', '#####', '^(d{5})$', 'es-ES,ca,gl,eu', 2510769, 'AD,PT,GI,FR,MA', '', '€'),
(68, 'ET', 'ETH', 231, 'ET', 'Ethiopia', 'Addis Ababa', 1127127, 78254000, 'AF', '.et', 'ETB', 'Birr', '251', '####', '^(d{4})$', 'am,en-ET,om-ET,ti-ET,so-ET,sid,so-ET', 337996, 'ER,KE,SD,SO,DJ', '', NULL),
(69, 'FI', 'FIN', 246, 'FI', 'Finland', 'Helsinki', 337030, 5244000, 'EU', '.fi', 'EUR', 'Euro', '358', 'FI-#####', '^(?:FI)*(d{5})$', 'fi-FI,sv-FI,smn', 660013, 'NO,RU,SE', '', '€'),
(70, 'FJ', 'FJI', 242, 'FJ', 'Fiji', 'Suva', 18270, 931000, 'OC', '.fj', 'FJD', 'Dollar', '679', '', '', 'en-FJ,fj', 2205218, '', '', '$'),
(71, 'FK', 'FLK', 238, 'FK', 'Falkland Islands', 'Stanley', 12173, 2638, 'SA', '.fk', 'FKP', 'Pound', '500', '', '', 'en-FK', 3474414, '', '', '£'),
(72, 'FM', 'FSM', 583, 'FM', 'Micronesia', 'Palikir', 702, 108105, 'OC', '.fm', 'USD', 'Dollar', '691', '#####', '^(d{5})$', 'en-FM,chk,pon,yap,kos,uli,woe,nkr,kpg', 2081918, '', '', '$'),
(73, 'FO', 'FRO', 234, 'FO', 'Faroe Islands', 'Tórshavn', 1399, 48228, 'EU', '.fo', 'DKK', 'Krone', '298', 'FO-###', '^(?:FO)*(d{3})$', 'fo,da-FO', 2622320, '', '', 'kr'),
(74, 'FR', 'FRA', 250, 'FR', 'France', 'Paris', 547030, 64094000, 'EU', '.fr', 'EUR', 'Euro', '33', '#####', '^(d{5})$', 'fr-FR,frp,br,co,ca,eu', 3017382, 'CH,DE,BE,LU,IT,AD,MC,ES', '', '€'),
(75, 'GA', 'GAB', 266, 'GB', 'Gabon', 'Libreville', 267667, 1484000, 'AF', '.ga', 'XAF', 'Franc', '241', '', '', 'fr-GA', 2400553, 'CM,GQ,CG', '', 'FCF'),
(76, 'GB', 'GBR', 826, 'UK', 'United Kingdom', 'London', 244820, 60943000, 'EU', '.uk', 'GBP', 'Pound', '44', '@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|GIR0AA', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A-Z]{2}d{2}[A-Z]{2})|([A-Z]{2}d{3}[A-Z]{2})|([A-Z]d[A-Z]d[A-Z]{2})|([A-Z]{2}d[A-Z]d[A-Z]{2})|(GIR0AA))$', 'en-GB,cy-GB,gd', 2635167, 'IE', '', '£'),
(77, 'GD', 'GRD', 308, 'GJ', 'Grenada', 'St. George\'s', 344, 90000, 'NA', '.gd', 'XCD', 'Dollar', '+1-473', '', '', 'en-GD', 3580239, '', '', '$'),
(78, 'GE', 'GEO', 268, 'GG', 'Georgia', 'Tbilisi', 69700, 4630000, 'AS', '.ge', 'GEL', 'Lari', '995', '####', '^(d{4})$', 'ka,ru,hy,az', 614540, 'AM,AZ,TR,RU', '', NULL),
(79, 'GF', 'GUF', 254, 'FG', 'French Guiana', 'Cayenne', 91000, 195506, 'SA', '.gf', 'EUR', 'Euro', '594', '#####', '^((97)|(98)3d{2})$', 'fr-GF', 3381670, 'SR,BR', '', '€'),
(80, 'GG', 'GGY', 831, 'GK', 'Guernsey', 'St Peter Port', 78, 65228, 'EU', '.gg', 'GGP', 'Pound', '+44-1481', '@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|GIR0AA', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A-Z]{2}d{2}[A-Z]{2})|([A-Z]{2}d{3}[A-Z]{2})|([A-Z]d[A-Z]d[A-Z]{2})|([A-Z]{2}d[A-Z]d[A-Z]{2})|(GIR0AA))$', 'en,fr', 3042362, '', '', '£'),
(81, 'GH', 'GHA', 288, 'GH', 'Ghana', 'Accra', 239460, 23382000, 'AF', '.gh', 'GHC', 'Cedi', '233', '', '', 'en-GH,ak,ee,tw', 2300660, 'CI,TG,BF', '', '¢'),
(82, 'GI', 'GIB', 292, 'GI', 'Gibraltar', 'Gibraltar', 7, 27884, 'EU', '.gi', 'GIP', 'Pound', '350', '', '', 'en-GI,es,it,pt', 2411586, 'ES', '', '£'),
(83, 'GL', 'GRL', 304, 'GL', 'Greenland', 'Nuuk', 2166086, 56375, 'NA', '.gl', 'DKK', 'Krone', '299', '####', '^(d{4})$', 'kl,da-GL,en', 3425505, '', '', 'kr'),
(84, 'GM', 'GMB', 270, 'GA', 'Gambia', 'Banjul', 11300, 1593256, 'AF', '.gm', 'GMD', 'Dalasi', '220', '', '', 'en-GM,mnk,wof,wo,ff', 2413451, 'SN', '', 'D'),
(85, 'GN', 'GIN', 324, 'GV', 'Guinea', 'Conakry', 245857, 10211000, 'AF', '.gn', 'GNF', 'Franc', '224', '', '', 'fr-GN', 2420477, 'LR,SN,SL,CI,GW,ML', '', NULL),
(86, 'GP', 'GLP', 312, 'GP', 'Guadeloupe', 'Basse-Terre', 1780, 443000, 'NA', '.gp', 'EUR', 'Euro', '590', '#####', '^((97)|(98)d{3})$', 'fr-GP', 3579143, 'AN', '', '€'),
(87, 'GQ', 'GNQ', 226, 'EK', 'Equatorial Guinea', 'Malabo', 28051, 562000, 'AF', '.gq', 'XAF', 'Franc', '240', '', '', 'es-GQ,fr', 2309096, 'GA,CM', '', 'FCF'),
(88, 'GR', 'GRC', 300, 'GR', 'Greece', 'Athens', 131940, 10722000, 'EU', '.gr', 'EUR', 'Euro', '30', '### ##', '^(d{5})$', 'el-GR,en,fr', 390903, 'AL,MK,TR,BG', '', '€'),
(89, 'GS', 'SGS', 239, 'SX', 'South Georgia and the South Sandwich Islands', 'Grytviken', 3903, 100, 'AN', '.gs', 'GBP', 'Pound', '', '', '', 'en', 3474415, '', '', '£'),
(90, 'GT', 'GTM', 320, 'GT', 'Guatemala', 'Guatemala City', 108890, 13002000, 'NA', '.gt', 'GTQ', 'Quetzal', '502', '#####', '^(d{5})$', 'es-GT', 3595528, 'MX,HN,BZ,SV', '', 'Q'),
(91, 'GU', 'GUM', 316, 'GQ', 'Guam', 'Hagåtña', 549, 168564, 'OC', '.gu', 'USD', 'Dollar', '+1-671', '969##', '^(969d{2})$', 'en-GU,ch-GU', 4043988, '', '', '$'),
(92, 'GW', 'GNB', 624, 'PU', 'Guinea-Bissau', 'Bissau', 36120, 1503000, 'AF', '.gw', 'XOF', 'Franc', '245', '####', '^(d{4})$', 'pt-GW,pov', 2372248, 'SN,GN', '', NULL),
(93, 'GY', 'GUY', 328, 'GY', 'Guyana', 'Georgetown', 214970, 770000, 'SA', '.gy', 'GYD', 'Dollar', '592', '', '', 'en-GY', 3378535, 'SR,BR,VE', '', '$'),
(94, 'HK', 'HKG', 344, 'HK', 'Hong Kong', 'Hong Kong', 1092, 6898686, 'AS', '.hk', 'HKD', 'Dollar', '852', '', '', 'zh-HK,yue,zh,en', 1819730, '', '', '$'),
(95, 'HM', 'HMD', 334, 'HM', 'Heard Island and McDonald Islands', '', 412, 0, 'AN', '.hm', 'AUD', 'Dollar', ' ', '', '', '', 1547314, '', '', '$'),
(96, 'HN', 'HND', 340, 'HO', 'Honduras', 'Tegucigalpa', 112090, 7639000, 'NA', '.hn', 'HNL', 'Lempira', '504', '@@####', '^([A-Z]{2}d{4})$', 'es-HN', 3608932, 'GT,NI,SV', '', 'L'),
(97, 'HR', 'HRV', 191, 'HR', 'Croatia', 'Zagreb', 56542, 4491000, 'EU', '.hr', 'HRK', 'Kuna', '385', 'HR-#####', '^(?:HR)*(d{5})$', 'hr-HR,sr', 3202326, 'HU,SI,CS,BA,ME,RS', '', 'kn'),
(98, 'HT', 'HTI', 332, 'HA', 'Haiti', 'Port-au-Prince', 27750, 8924000, 'NA', '.ht', 'HTG', 'Gourde', '509', 'HT####', '^(?:HT)*(d{4})$', 'ht,fr-HT', 3723988, 'DO', '', 'G'),
(99, 'HU', 'HUN', 348, 'HU', 'Hungary', 'Budapest', 93030, 9930000, 'EU', '.hu', 'HUF', 'Forint', '36', '####', '^(d{4})$', 'hu-HU', 719819, 'SK,SI,RO,UA,CS,HR,AT,RS', '', 'Ft'),
(100, 'ID', 'IDN', 360, 'ID', 'Indonesia', 'Jakarta', 1919440, 237512000, 'AS', '.id', 'IDR', 'Rupiah', '62', '#####', '^(d{5})$', 'id,en,nl,jv', 1643084, 'PG,TL,MY', '', 'Rp'),
(101, 'IE', 'IRL', 372, 'EI', 'Ireland', 'Dublin', 70280, 4156000, 'EU', '.ie', 'EUR', 'Euro', '353', '', '', 'en-IE,ga-IE', 2963597, 'GB', '', '€'),
(102, 'IL', 'ISR', 376, 'IS', 'Israel', 'Jerusalem', 20770, 6500000, 'AS', '.il', 'ILS', 'Shekel', '972', '#####', '^(d{5})$', 'he,ar-IL,en-IL,', 294640, 'SY,JO,LB,EG,PS', '', '₪'),
(103, 'IM', 'IMN', 833, 'IM', 'Isle of Man', 'Douglas, Isle of Man', 572, 75049, 'EU', '.im', 'GPD', 'Pound', '+44-1624', '@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|GIR0AA', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A-Z]{2}d{2}[A-Z]{2})|([A-Z]{2}d{3}[A-Z]{2})|([A-Z]d[A-Z]d[A-Z]{2})|([A-Z]{2}d[A-Z]d[A-Z]{2})|(GIR0AA))$', 'en,gv', 3042225, '', '', '£'),
(104, 'IN', 'IND', 356, 'IN', 'India', 'New Delhi', 3287590, 1147995000, 'AS', '.in', 'INR', 'Rupee', '91', '######', '^(d{6})$', 'en-IN,hi,bn,te,mr,ta,ur,gu,ml,kn,or,pa,as,ks,sd,sa,ur-IN', 1269750, 'CN,NP,MM,BT,PK,BD', '', '₨'),
(105, 'IO', 'IOT', 86, 'IO', 'British Indian Ocean Territory', 'Diego Garcia', 60, 0, 'AS', '.io', 'USD', 'Dollar', '246', '', '', 'en-IO', 1282588, '', '', '$'),
(106, 'IQ', 'IRQ', 368, 'IZ', 'Iraq', 'Baghdad', 437072, 28221000, 'AS', '.iq', 'IQD', 'Dinar', '964', '#####', '^(d{5})$', 'ar-IQ,ku,hy', 99237, 'SY,SA,IR,JO,TR,KW', '', NULL),
(107, 'IR', 'IRN', 364, 'IR', 'Iran', 'Tehran', 1648000, 65875000, 'AS', '.ir', 'IRR', 'Rial', '98', '##########', '^(d{10})$', 'fa-IR,ku', 130758, 'TM,AF,IQ,AM,PK,AZ,TR', '', '﷼'),
(108, 'IS', 'ISL', 352, 'IC', 'Iceland', 'Reykjavík', 103000, 304000, 'EU', '.is', 'ISK', 'Krona', '354', '###', '^(d{3})$', 'is,en,de,da,sv,no', 2629691, '', '', 'kr'),
(109, 'IT', 'ITA', 380, 'IT', 'Italy', 'Rome', 301230, 58145000, 'EU', '.it', 'EUR', 'Euro', '39', '####', '^(d{5})$', 'it-IT,de-IT,fr-IT,sl', 3175395, 'CH,VA,SI,SM,FR,AT', '', '€'),
(110, 'JE', 'JEY', 832, 'JE', 'Jersey', 'Saint Helier', 116, 90812, 'EU', '.je', 'JEP', 'Pound', '+44-1534', '@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|GIR0AA', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A-Z]{2}d{2}[A-Z]{2})|([A-Z]{2}d{3}[A-Z]{2})|([A-Z]d[A-Z]d[A-Z]{2})|([A-Z]{2}d[A-Z]d[A-Z]{2})|(GIR0AA))$', 'en,pt', 3042142, '', '', '£'),
(111, 'JM', 'JAM', 388, 'JM', 'Jamaica', 'Kingston', 10991, 2801000, 'NA', '.jm', 'JMD', 'Dollar', '+1-876', '', '', 'en-JM', 3489940, '', '', '$'),
(112, 'JO', 'JOR', 400, 'JO', 'Jordan', 'Amman', 92300, 6198000, 'AS', '.jo', 'JOD', 'Dinar', '962', '#####', '^(d{5})$', 'ar-JO,en', 248816, 'SY,SA,IQ,IL,PS', '', NULL),
(113, 'JP', 'JPN', 392, 'JA', 'Japan', 'Tokyo', 377835, 127288000, 'AS', '.jp', 'JPY', 'Yen', '81', '###-####', '^(d{7})$', 'ja', 1861060, '', '', '¥'),
(114, 'KE', 'KEN', 404, 'KE', 'Kenya', 'Nairobi', 582650, 37953000, 'AF', '.ke', 'KES', 'Shilling', '254', '#####', '^(d{5})$', 'en-KE,sw-KE', 192950, 'ET,TZ,SD,SO,UG', '', NULL),
(115, 'KG', 'KGZ', 417, 'KG', 'Kyrgyzstan', 'Bishkek', 198500, 5356000, 'AS', '.kg', 'KGS', 'Som', '996', '######', '^(d{6})$', 'ky,uz,ru', 1527747, 'CN,TJ,UZ,KZ', '', 'лв'),
(116, 'KH', 'KHM', 116, 'CB', 'Cambodia', 'Phnom Penh', 181040, 14241000, 'AS', '.kh', 'KHR', 'Riels', '855', '#####', '^(d{5})$', 'km,fr,en', 1831722, 'LA,TH,VN', '', '៛'),
(117, 'KI', 'KIR', 296, 'KR', 'Kiribati', 'South Tarawa', 811, 110000, 'OC', '.ki', 'AUD', 'Dollar', '686', '', '', 'en-KI,gil', 4030945, '', '', '$'),
(118, 'KM', 'COM', 174, 'CN', 'Comoros', 'Moroni', 2170, 731000, 'AF', '.km', 'KMF', 'Franc', '269', '', '', 'ar,fr-KM', 921929, '', '', NULL),
(119, 'KN', 'KNA', 659, 'SC', 'Saint Kitts and Nevis', 'Basseterre', 261, 39000, 'NA', '.kn', 'XCD', 'Dollar', '+1-869', '', '', 'en-KN', 3575174, '', '', '$'),
(120, 'KP', 'PRK', 408, 'KN', 'North Korea', 'Pyongyang', 120540, 22912177, 'AS', '.kp', 'KPW', 'Won', '850', '###-###', '^(d{6})$', 'ko-KP', 1873107, 'CN,KR,RU', '', '₩'),
(121, 'KR', 'KOR', 410, 'KS', 'South Korea', 'Seoul', 98480, 48422644, 'AS', '.kr', 'KRW', 'Won', '82', 'SEOUL ###-###', '^(?:SEOUL)*(d{6})$', 'ko-KR,en', 1835841, 'KP', '', '₩'),
(122, 'KW', 'KWT', 414, 'KU', 'Kuwait', 'Kuwait City', 17820, 2596000, 'AS', '.kw', 'KWD', 'Dinar', '965', '#####', '^(d{5})$', 'ar-KW,en', 285570, 'SA,IQ', '', NULL),
(123, 'KY', 'CYM', 136, 'CJ', 'Cayman Islands', 'George Town', 262, 44270, 'NA', '.ky', 'KYD', 'Dollar', '+1-345', '', '', 'en-KY', 3580718, '', '', '$'),
(124, 'KZ', 'KAZ', 398, 'KZ', 'Kazakhstan', 'Astana', 2717300, 15340000, 'AS', '.kz', 'KZT', 'Tenge', '7', '######', '^(d{6})$', 'kk,ru', 1522867, 'TM,CN,KG,UZ,RU', '', 'лв'),
(125, 'LA', 'LAO', 418, 'LA', 'Laos', 'Vientiane', 236800, 6677000, 'AS', '.la', 'LAK', 'Kip', '856', '#####', '^(d{5})$', 'lo,fr,en', 1655842, 'CN,MM,KH,TH,VN', '', '₭'),
(126, 'LB', 'LBN', 422, 'LE', 'Lebanon', 'Beirut', 10400, 3971000, 'AS', '.lb', 'LBP', 'Pound', '961', '#### ####|####', '^(d{4}(d{4})?)$', 'ar-LB,fr-LB,en,hy', 272103, 'SY,IL', '', '£'),
(127, 'LC', 'LCA', 662, 'ST', 'Saint Lucia', 'Castries', 616, 172000, 'NA', '.lc', 'XCD', 'Dollar', '+1-758', '', '', 'en-LC', 3576468, '', '', '$'),
(128, 'LI', 'LIE', 438, 'LS', 'Liechtenstein', 'Vaduz', 160, 34000, 'EU', '.li', 'CHF', 'Franc', '423', '####', '^(d{4})$', 'de-LI', 3042058, 'CH,AT', '', 'CHF'),
(129, 'LK', 'LKA', 144, 'CE', 'Sri Lanka', 'Colombo', 65610, 21128000, 'AS', '.lk', 'LKR', 'Rupee', '94', '#####', '^(d{5})$', 'si,ta,en', 1227603, '', '', '₨'),
(130, 'LR', 'LBR', 430, 'LI', 'Liberia', 'Monrovia', 111370, 3334000, 'AF', '.lr', 'LRD', 'Dollar', '231', '####', '^(d{4})$', 'en-LR', 2275384, 'SL,CI,GN', '', '$'),
(131, 'LS', 'LSO', 426, 'LT', 'Lesotho', 'Maseru', 30355, 2128000, 'AF', '.ls', 'LSL', 'Loti', '266', '###', '^(d{3})$', 'en-LS,st,zu,xh', 932692, 'ZA', '', 'L'),
(132, 'LT', 'LTU', 440, 'LH', 'Lithuania', 'Vilnius', 65200, 3565000, 'EU', '.lt', 'LTL', 'Litas', 'Lt', 'LT-#####', '^(?:LT)*(d{5})$', 'lt,ru,pl', 597427, 'PL,BY,RU,LV', '', 'Lt'),
(133, 'LU', 'LUX', 442, 'LU', 'Luxembourg', 'Luxembourg', 2586, 486000, 'EU', '.lu', 'EUR', 'Euro', '352', '####', '^(d{4})$', 'lb,de-LU,fr-LU', 2960313, 'DE,BE,FR', '', '€'),
(134, 'LV', 'LVA', 428, 'LG', 'Latvia', 'Riga', 64589, 2245000, 'EU', '.lv', 'LVL', 'Lat', '371', 'LV-####', '^(?:LV)*(d{4})$', 'lv,ru,lt', 458258, 'LT,EE,BY,RU', '', 'Ls'),
(135, 'LY', 'LBY', 434, 'LY', 'Libya', 'Tripolis', 1759540, 6173000, 'AF', '.ly', 'LYD', 'Dinar', '218', '', '', 'ar-LY,it,en', 2215636, 'TD,NE,DZ,SD,TN,EG', '', NULL),
(136, 'MA', 'MAR', 504, 'MO', 'Morocco', 'Rabat', 446550, 34272000, 'AF', '.ma', 'MAD', 'Dirham', '212', '#####', '^(d{5})$', 'ar-MA,fr', 2542007, 'DZ,EH,ES', '', NULL),
(137, 'MC', 'MCO', 492, 'MN', 'Monaco', 'Monaco', 2, 32000, 'EU', '.mc', 'EUR', 'Euro', '377', '#####', '^(d{5})$', 'fr-MC,en,it', 2993457, 'FR', '', '€'),
(138, 'MD', 'MDA', 498, 'MD', 'Moldova', 'ChiÅŸinÄƒu', 33843, 4324000, 'EU', '.md', 'MDL', 'Leu', '373', 'MD-####', '^(?:MD)*(d{4})$', 'mo,ro,ru,gag,tr', 617790, 'RO,UA', '', NULL),
(139, 'ME', 'MNE', 499, 'MJ', 'Montenegro', 'Podgorica', 14026, 678000, 'EU', '.cs', 'EUR', 'Euro', '381', '#####', '^(d{5})$', 'sr,hu,bs,sq,hr,rom', 3194884, 'AL,HR,BA,RS', '', '€'),
(140, 'MF', 'MAF', 663, 'RN', 'Saint Martin', 'Marigot', 53, 33100, 'NA', '.gp', 'EUR', 'Euro', '590', '### ###', '', 'fr', 3578421, '', '', '€'),
(141, 'MG', 'MDG', 450, 'MA', 'Madagascar', 'Antananarivo', 587040, 20042000, 'AF', '.mg', 'MGA', 'Ariary', '261', '###', '^(d{3})$', 'fr-MG,mg', 1062947, '', '', NULL),
(142, 'MH', 'MHL', 584, 'RM', 'Marshall Islands', 'Uliga', 181, 11628, 'OC', '.mh', 'USD', 'Dollar', '692', '', '', 'mh,en-MH', 2080185, '', '', '$'),
(143, 'MK', 'MKD', 807, 'MK', 'Macedonia', 'Skopje', 25333, 2061000, 'EU', '.mk', 'MKD', 'Denar', '389', '####', '^(d{4})$', 'mk,sq,tr,rmm,sr', 718075, 'AL,GR,CS,BG,RS', '', 'ден'),
(144, 'ML', 'MLI', 466, 'ML', 'Mali', 'Bamako', 1240000, 12324000, 'AF', '.ml', 'XOF', 'Franc', '223', '', '', 'fr-ML,bm', 2453866, 'SN,NE,DZ,CI,GN,MR,BF', '', NULL),
(145, 'MM', 'MMR', 104, 'BM', 'Myanmar', 'Yangon', 678500, 47758000, 'AS', '.mm', 'MMK', 'Kyat', '95', '#####', '^(d{5})$', 'my', 1327865, 'CN,LA,TH,BD,IN', '', 'K'),
(146, 'MN', 'MNG', 496, 'MG', 'Mongolia', 'Ulan Bator', 1565000, 2996000, 'AS', '.mn', 'MNT', 'Tugrik', '976', '######', '^(d{6})$', 'mn,ru', 2029969, 'CN,RU', '', '₮'),
(147, 'MO', 'MAC', 446, 'MC', 'Macao', 'Macao', 254, 449198, 'AS', '.mo', 'MOP', 'Pataca', '853', '', '', 'zh,zh-MO', 1821275, '', '', 'MOP'),
(148, 'MP', 'MNP', 580, 'CQ', 'Northern Mariana Islands', 'Saipan', 477, 80362, 'OC', '.mp', 'USD', 'Dollar', '+1-670', '', '', 'fil,tl,zh,ch-MP,en-MP', 4041467, '', '', '$'),
(149, 'MQ', 'MTQ', 474, 'MB', 'Martinique', 'Fort-de-France', 1100, 432900, 'NA', '.mq', 'EUR', 'Euro', '596', '#####', '^(d{5})$', 'fr-MQ', 3570311, '', '', '€'),
(150, 'MR', 'MRT', 478, 'MR', 'Mauritania', 'Nouakchott', 1030700, 3364000, 'AF', '.mr', 'MRO', 'Ouguiya', '222', '', '', 'ar-MR,fuc,snk,fr,mey,wo', 2378080, 'SN,DZ,EH,ML', '', 'UM'),
(151, 'MS', 'MSR', 500, 'MH', 'Montserrat', 'Plymouth', 102, 9341, 'NA', '.ms', 'XCD', 'Dollar', '+1-664', '', '', 'en-MS', 3578097, '', '', '$'),
(152, 'MT', 'MLT', 470, 'MT', 'Malta', 'Valletta', 316, 403000, 'EU', '.mt', 'MTL', 'Lira', '356', '@@@ ###|@@@ ##', '^([A-Z]{3}d{2}d?)$', 'mt,en-MT', 2562770, '', '', NULL),
(153, 'MU', 'MUS', 480, 'MP', 'Mauritius', 'Port Louis', 2040, 1260000, 'AF', '.mu', 'MUR', 'Rupee', '230', '', '', 'en-MU,bho,fr', 934292, '', '', '₨'),
(154, 'MV', 'MDV', 462, 'MV', 'Maldives', 'Malé', 300, 379000, 'AS', '.mv', 'MVR', 'Rufiyaa', '960', '#####', '^(d{5})$', 'dv,en', 1282028, '', '', 'Rf'),
(155, 'MW', 'MWI', 454, 'MI', 'Malawi', 'Lilongwe', 118480, 13931000, 'AF', '.mw', 'MWK', 'Kwacha', '265', '', '', 'ny,yao,tum,swk', 927384, 'TZ,MZ,ZM', '', 'MK'),
(156, 'MX', 'MEX', 484, 'MX', 'Mexico', 'Mexico City', 1972550, 109955000, 'NA', '.mx', 'MXN', 'Peso', '52', '#####', '^(d{5})$', 'es-MX', 3996063, 'GT,US,BZ', '', '$'),
(157, 'MY', 'MYS', 458, 'MY', 'Malaysia', 'Kuala Lumpur', 329750, 25259000, 'AS', '.my', 'MYR', 'Ringgit', '60', '#####', '^(d{5})$', 'ms-MY,en,zh,ta,te,ml,pa,th', 1733045, 'BN,TH,ID', '', 'RM'),
(158, 'MZ', 'MOZ', 508, 'MZ', 'Mozambique', 'Maputo', 801590, 21284000, 'AF', '.mz', 'MZN', 'Meticail', '258', '####', '^(d{4})$', 'pt-MZ,vmw', 1036973, 'ZW,TZ,SZ,ZA,ZM,MW', '', 'MT'),
(159, 'NA', 'NAM', 516, 'WA', 'Namibia', 'Windhoek', 825418, 2063000, 'AF', '.na', 'NAD', 'Dollar', '264', '', '', 'en-NA,af,de,hz,naq', 3355338, 'ZA,BW,ZM,AO', '', '$'),
(160, 'NC', 'NCL', 540, 'NC', 'New Caledonia', 'Nouméa', 19060, 216494, 'OC', '.nc', 'XPF', 'Franc', '687', '#####', '^(d{5})$', 'fr-NC', 2139685, '', '', NULL),
(161, 'NE', 'NER', 562, 'NG', 'Niger', 'Niamey', 1267000, 13272000, 'AF', '.ne', 'XOF', 'Franc', '227', '####', '^(d{4})$', 'fr-NE,ha,kr,dje', 2440476, 'TD,BJ,DZ,LY,BF,NG,ML', '', NULL),
(162, 'NF', 'NFK', 574, 'NF', 'Norfolk Island', 'Kingston', 35, 1828, 'OC', '.nf', 'AUD', 'Dollar', '672', '', '', 'en-NF', 2155115, '', '', '$'),
(163, 'NG', 'NGA', 566, 'NI', 'Nigeria', 'Abuja', 923768, 138283000, 'AF', '.ng', 'NGN', 'Naira', '234', '######', '^(d{6})$', 'en-NG,ha,yo,ig,ff', 2328926, 'TD,NE,BJ,CM', '', '₦'),
(164, 'NI', 'NIC', 558, 'NU', 'Nicaragua', 'Managua', 129494, 5780000, 'NA', '.ni', 'NIO', 'Cordoba', '505', '###-###-#', '^(d{7})$', 'es-NI,en', 3617476, 'CR,HN', '', 'C$'),
(165, 'NL', 'NLD', 528, 'NL', 'Netherlands', 'Amsterdam', 41526, 16645000, 'EU', '.nl', 'EUR', 'Euro', '31', '#### @@', '^(d{4}[A-Z]{2})$', 'nl-NL,fy-NL', 2750405, 'DE,BE', '', '€'),
(166, 'NO', 'NOR', 578, 'NO', 'Norway', 'Oslo', 324220, 4644000, 'EU', '.no', 'NOK', 'Krone', '47', '####', '^(d{4})$', 'no,nb,nn', 3144096, 'FI,RU,SE', '', 'kr'),
(167, 'NP', 'NPL', 524, 'NP', 'Nepal', 'Kathmandu', 140800, 29519000, 'AS', '.np', 'NPR', 'Rupee', '977', '#####', '^(d{5})$', 'ne,en', 1282988, 'CN,IN', '', '₨'),
(168, 'NR', 'NRU', 520, 'NR', 'Nauru', 'Yaren', 21, 13000, 'OC', '.nr', 'AUD', 'Dollar', '674', '', '', 'na,en-NR', 2110425, '', '', '$'),
(169, 'NU', 'NIU', 570, 'NE', 'Niue', 'Alofi', 260, 2166, 'OC', '.nu', 'NZD', 'Dollar', '683', '', '', 'niu,en-NU', 4036232, '', '', '$'),
(170, 'NZ', 'NZL', 554, 'NZ', 'New Zealand', 'Wellington', 268680, 4154000, 'OC', '.nz', 'NZD', 'Dollar', '64', '####', '^(d{4})$', 'en-NZ,mi', 2186224, '', '', '$'),
(171, 'OM', 'OMN', 512, 'MU', 'Oman', 'Muscat', 212460, 3309000, 'AS', '.om', 'OMR', 'Rial', '968', '###', '^(d{3})$', 'ar-OM,en,bal,ur', 286963, 'SA,YE,AE', '', '﷼'),
(172, 'PA', 'PAN', 591, 'PM', 'Panama', 'Panama City', 78200, 3292000, 'NA', '.pa', 'PAB', 'Balboa', '507', '', '', 'es-PA,en', 3703430, 'CR,CO', '', 'B/.'),
(173, 'PE', 'PER', 604, 'PE', 'Peru', 'Lima', 1285220, 29041000, 'SA', '.pe', 'PEN', 'Sol', '51', '', '', 'es-PE,qu,ay', 3932488, 'EC,CL,BO,BR,CO', '', 'S/.'),
(174, 'PF', 'PYF', 258, 'FP', 'French Polynesia', 'Papeete', 4167, 270485, 'OC', '.pf', 'XPF', 'Franc', '689', '#####', '^((97)|(98)7d{2})$', 'fr-PF,ty', 4020092, '', '', NULL),
(175, 'PG', 'PNG', 598, 'PP', 'Papua New Guinea', 'Port Moresby', 462840, 5921000, 'OC', '.pg', 'PGK', 'Kina', '675', '###', '^(d{3})$', 'en-PG,ho,meu,tpi', 2088628, 'ID', '', NULL),
(176, 'PH', 'PHL', 608, 'RP', 'Philippines', 'Manila', 300000, 92681000, 'AS', '.ph', 'PHP', 'Peso', '63', '####', '^(d{4})$', 'tl,en-PH,fil', 1694008, '', '', 'Php'),
(177, 'PK', 'PAK', 586, 'PK', 'Pakistan', 'Islamabad', 803940, 167762000, 'AS', '.pk', 'PKR', 'Rupee', '92', '#####', '^(d{5})$', 'ur-PK,en-PK,pa,sd,ps,brh', 1168579, 'CN,AF,IR,IN', '', '₨'),
(178, 'PL', 'POL', 616, 'PL', 'Poland', 'Warsaw', 312685, 38500000, 'EU', '.pl', 'PLN', 'Zloty', '48', '##-###', '^(d{5})$', 'pl', 798544, 'DE,LT,SK,CZ,BY,UA,RU', '', 'zł'),
(179, 'PM', 'SPM', 666, 'SB', 'Saint Pierre and Miquelon', 'Saint-Pierre', 242, 7012, 'NA', '.pm', 'EUR', 'Euro', '508', '', '', 'fr-PM', 3424932, '', '', '€'),
(180, 'PN', 'PCN', 612, 'PC', 'Pitcairn', 'Adamstown', 47, 46, 'OC', '.pn', 'NZD', 'Dollar', '', '', '', 'en-PN', 4030699, '', '', '$'),
(181, 'PR', 'PRI', 630, 'RQ', 'Puerto Rico', 'San Juan', 9104, 3916632, 'NA', '.pr', 'USD', 'Dollar', '+1-787 and 1-939', '#####-####', '^(d{9})$', 'en-PR,es-PR', 4566966, '', '', '$'),
(182, 'PS', 'PSE', 275, 'WE', 'Palestinian Territory', 'East Jerusalem', 5970, 3800000, 'AS', '.ps', 'ILS', 'Shekel', '970', '', '', 'ar-PS', 6254930, 'JO,IL', '', '₪'),
(183, 'PT', 'PRT', 620, 'PO', 'Portugal', 'Lisbon', 92391, 10676000, 'EU', '.pt', 'EUR', 'Euro', '351', '####-###', '^(d{7})$', 'pt-PT,mwl', 2264397, 'ES', '', '€'),
(184, 'PW', 'PLW', 585, 'PS', 'Palau', 'Koror', 458, 20303, 'OC', '.pw', 'USD', 'Dollar', '680', '96940', '^(96940)$', 'pau,sov,en-PW,tox,ja,fil,zh', 1559582, '', '', '$'),
(185, 'PY', 'PRY', 600, 'PA', 'Paraguay', 'Asunción', 406750, 6831000, 'SA', '.py', 'PYG', 'Guarani', '595', '####', '^(d{4})$', 'es-PY,gn', 3437598, 'BO,BR,AR', '', 'Gs'),
(186, 'QA', 'QAT', 634, 'QA', 'Qatar', 'Doha', 11437, 928000, 'AS', '.qa', 'QAR', 'Rial', '974', '', '', 'ar-QA,es', 289688, 'SA', '', '﷼'),
(187, 'RE', 'REU', 638, 'RE', 'Reunion', 'Saint-Denis', 2517, 776948, 'AF', '.re', 'EUR', 'Euro', '262', '#####', '^((97)|(98)(4|7|8)d{2})$', 'fr-RE', 935317, '', '', '€'),
(188, 'RO', 'ROU', 642, 'RO', 'Romania', 'Bucharest', 237500, 22246000, 'EU', '.ro', 'RON', 'Leu', '40', '######', '^(d{6})$', 'ro,hu,rom', 798549, 'MD,HU,UA,CS,BG,RS', '', 'lei'),
(189, 'RS', 'SRB', 688, 'RB', 'Serbia', 'Belgrade', 88361, 10159000, 'EU', '.rs', 'RSD', 'Dinar', '381', '######', '^(d{6})$', 'sr,hu,bs,rom', 6290252, 'AL,HU,MK,RO,HR,BA,BG,ME', '', 'Дин'),
(190, 'RU', 'RUS', 643, 'RS', 'Russia', 'Moscow', 17100000, 140702000, 'EU', '.ru', 'RUB', 'Ruble', '7', '######', '^(d{6})$', 'ru-RU', 2017370, 'GE,CN,BY,UA,KZ,LV,PL,EE,LT,FI,MN,NO,AZ,KP', '', 'руб'),
(191, 'RW', 'RWA', 646, 'RW', 'Rwanda', 'Kigali', 26338, 10186000, 'AF', '.rw', 'RWF', 'Franc', '250', '', '', 'rw,en-RW,fr-RW,sw', 49518, 'TZ,CD,BI,UG', '', NULL),
(192, 'SA', 'SAU', 682, 'SA', 'Saudi Arabia', 'Riyadh', 1960582, 28161000, 'AS', '.sa', 'SAR', 'Rial', '966', '#####', '^(d{5})$', 'ar-SA', 102358, 'QA,OM,IQ,YE,JO,AE,KW', '', '﷼'),
(193, 'SB', 'SLB', 90, 'BP', 'Solomon Islands', 'Honiara', 28450, 581000, 'OC', '.sb', 'SBD', 'Dollar', '677', '', '', 'en-SB,tpi', 2103350, '', '', '$'),
(194, 'SC', 'SYC', 690, 'SE', 'Seychelles', 'Victoria', 455, 82000, 'AF', '.sc', 'SCR', 'Rupee', '248', '', '', 'en-SC,fr-SC', 241170, '', '', '₨'),
(195, 'SD', 'SDN', 736, 'SU', 'Sudan', 'Khartoum', 2505810, 40218000, 'AF', '.sd', 'SDD', 'Dinar', '249', '#####', '^(d{5})$', 'ar-SD,en,fia', 366755, 'TD,ER,ET,LY,KE,CF,CD,UG,EG', '', NULL),
(196, 'SE', 'SWE', 752, 'SW', 'Sweden', 'Stockholm', 449964, 9045000, 'EU', '.se', 'SEK', 'Krona', '46', 'SE-### ##', '^(?:SE)*(d{5})$', 'sv-SE,se,sma,fi-SE', 2661886, 'NO,FI', '', 'kr'),
(197, 'SG', 'SGP', 702, 'SN', 'Singapore', 'Singapur', 693, 4608000, 'AS', '.sg', 'SGD', 'Dollar', '65', '######', '^(d{6})$', 'cmn,en-SG,ms-SG,ta-SG,zh-SG', 1880251, '', '', '$'),
(198, 'SH', 'SHN', 654, 'SH', 'Saint Helena', 'Jamestown', 410, 7460, 'AF', '.sh', 'SHP', 'Pound', '290', 'STHL 1ZZ', '^(STHL1ZZ)$', 'en-SH', 3370751, '', '', '£'),
(199, 'SI', 'SVN', 705, 'SI', 'Slovenia', 'Ljubljana', 20273, 2007000, 'EU', '.si', 'EUR', 'Euro', '386', 'SI- ####', '^(?:SI)*(d{4})$', 'sl,sh', 3190538, 'HU,IT,HR,AT', '', '€'),
(200, 'SJ', 'SJM', 744, 'SV', 'Svalbard and Jan Mayen', 'Longyearbyen', 62049, 2265, 'EU', '.sj', 'NOK', 'Krone', '47', '', '', 'no,ru', 607072, '', '', 'kr'),
(201, 'SK', 'SVK', 703, 'LO', 'Slovakia', 'Bratislava', 48845, 5455000, 'EU', '.sk', 'SKK', 'Koruna', '421', '###  ##', '^(d{5})$', 'sk,hu', 3057568, 'PL,HU,CZ,UA,AT', '', 'Sk'),
(202, 'SL', 'SLE', 694, 'SL', 'Sierra Leone', 'Freetown', 71740, 6286000, 'AF', '.sl', 'SLL', 'Leone', '232', '', '', 'en-SL,men,tem', 2403846, 'LR,GN', '', 'Le'),
(203, 'SM', 'SMR', 674, 'SM', 'San Marino', 'San Marino', 61, 29000, 'EU', '.sm', 'EUR', 'Euro', '378', '4789#', '^(4789d)$', 'it-SM', 3168068, 'IT', '', '€'),
(204, 'SN', 'SEN', 686, 'SG', 'Senegal', 'Dakar', 196190, 12853000, 'AF', '.sn', 'XOF', 'Franc', '221', '#####', '^(d{5})$', 'fr-SN,wo,fuc,mnk', 2245662, 'GN,MR,GW,GM,ML', '', NULL),
(205, 'SO', 'SOM', 706, 'SO', 'Somalia', 'Mogadishu', 637657, 9379000, 'AF', '.so', 'SOS', 'Shilling', '252', '@@  #####', '^([A-Z]{2}d{5})$', 'so-SO,ar-SO,it,en-SO', 51537, 'ET,KE,DJ', '', 'S'),
(206, 'SR', 'SUR', 740, 'NS', 'Suriname', 'Paramaribo', 163270, 475000, 'SA', '.sr', 'SRD', 'Dollar', '597', '', '', 'nl-SR,en,srn,hns,jv', 3382998, 'GY,BR,GF', '', '$'),
(207, 'ST', 'STP', 678, 'TP', 'Sao Tome and Principe', 'São Tomé', 1001, 205000, 'AF', '.st', 'STD', 'Dobra', '239', '', '', 'pt-ST', 2410758, '', '', 'Db'),
(208, 'SV', 'SLV', 222, 'ES', 'El Salvador', 'San Salvador', 21040, 7066000, 'NA', '.sv', 'SVC', 'Colone', '503', 'CP ####', '^(?:CP)*(d{4})$', 'es-SV', 3585968, 'GT,HN', '', '$'),
(209, 'SY', 'SYR', 760, 'SY', 'Syria', 'Damascus', 185180, 19747000, 'AS', '.sy', 'SYP', 'Pound', '963', '', '', 'ar-SY,ku,hy,arc,fr,en', 163843, 'IQ,JO,IL,TR,LB', '', '£'),
(210, 'SZ', 'SWZ', 748, 'WZ', 'Swaziland', 'Mbabane', 17363, 1128000, 'AF', '.sz', 'SZL', 'Lilangeni', '268', '@###', '^([A-Z]d{3})$', 'en-SZ,ss-SZ', 934841, 'ZA,MZ', '', NULL),
(211, 'TC', 'TCA', 796, 'TK', 'Turks and Caicos Islands', 'Cockburn Town', 430, 20556, 'NA', '.tc', 'USD', 'Dollar', '+1-649', 'TKCA 1ZZ', '^(TKCA 1ZZ)$', 'en-TC', 3576916, '', '', '$'),
(212, 'TD', 'TCD', 148, 'CD', 'Chad', 'N\'Djamena', 1284000, 10111000, 'AF', '.td', 'XAF', 'Franc', '235', '', '', 'fr-TD,ar-TD,sre', 2434508, 'NE,LY,CF,SD,CM,NG', '', NULL),
(213, 'TF', 'ATF', 260, 'FS', 'French Southern Territories', 'Martin-de-Viviès', 7829, 0, 'AN', '.tf', 'EUR', 'Euro  ', '', '', '', 'fr', 1546748, '', '', '€'),
(214, 'TG', 'TGO', 768, 'TO', 'Togo', 'Lomé', 56785, 5858000, 'AF', '.tg', 'XOF', 'Franc', '228', '', '', 'fr-TG,ee,hna,kbp,dag,ha', 2363686, 'BJ,GH,BF', '', NULL),
(215, 'TH', 'THA', 764, 'TH', 'Thailand', 'Bangkok', 514000, 65493000, 'AS', '.th', 'THB', 'Baht', '66', '#####', '^(d{5})$', 'th,en', 1605651, 'LA,MM,KH,MY', '', '฿'),
(216, 'TJ', 'TJK', 762, 'TI', 'Tajikistan', 'Dushanbe', 143100, 7211000, 'AS', '.tj', 'TJS', 'Somoni', '992', '######', '^(d{6})$', 'tg,ru', 1220409, 'CN,AF,KG,UZ', '', NULL),
(217, 'TK', 'TKL', 772, 'TL', 'Tokelau', '', 10, 1405, 'OC', '.tk', 'NZD', 'Dollar', '690', '', '', 'tkl,en-TK', 4031074, '', '', '$'),
(218, 'TL', 'TLS', 626, 'TT', 'East Timor', 'Dili', 15007, 1107000, 'OC', '.tp', 'USD', 'Dollar', '670', '', '', 'tet,pt-TL,id,en', 1966436, 'ID', '', '$'),
(219, 'TM', 'TKM', 795, 'TX', 'Turkmenistan', 'Ashgabat', 488100, 5179000, 'AS', '.tm', 'TMM', 'Manat', '993', '######', '^(d{6})$', 'tk,ru,uz', 1218197, 'AF,IR,UZ,KZ', '', 'm'),
(220, 'TN', 'TUN', 788, 'TS', 'Tunisia', 'Tunis', 163610, 10378000, 'AF', '.tn', 'TND', 'Dinar', '216', '####', '^(d{4})$', 'ar-TN,fr', 2464461, 'DZ,LY', '', NULL),
(221, 'TO', 'TON', 776, 'TN', 'Tonga', 'Nuku\'alofa', 748, 118000, 'OC', '.to', 'TOP', 'Pa\'anga', '676', '', '', 'to,en-TO', 4032283, '', '', 'T$'),
(222, 'TR', 'TUR', 792, 'TU', 'Turkey', 'Ankara', 780580, 71892000, 'AS', '.tr', 'TRY', 'Lira', '90', '#####', '^(d{5})$', 'tr-TR,ku,diq,az,av', 298795, 'SY,GE,IQ,IR,GR,AM,AZ,BG', '', 'YTL'),
(223, 'TT', 'TTO', 780, 'TD', 'Trinidad and Tobago', 'Port of Spain', 5128, 1047000, 'NA', '.tt', 'TTD', 'Dollar', '+1-868', '', '', 'en-TT,hns,fr,es,zh', 3573591, '', '', 'TT$'),
(224, 'TV', 'TUV', 798, 'TV', 'Tuvalu', 'Vaiaku', 26, 12000, 'OC', '.tv', 'AUD', 'Dollar', '688', '', '', 'tvl,en,sm,gil', 2110297, '', '', '$'),
(225, 'TW', 'TWN', 158, 'TW', 'Taiwan', 'Taipei', 35980, 22894384, 'AS', '.tw', 'TWD', 'Dollar', '886', '#####', '^(d{5})$', 'zh-TW,zh,nan,hak', 1668284, '', '', 'NT$'),
(226, 'TZ', 'TZA', 834, 'TZ', 'Tanzania', 'Dar es Salaam', 945087, 40213000, 'AF', '.tz', 'TZS', 'Shilling', '255', '', '', 'sw-TZ,en,ar', 149590, 'MZ,KE,CD,RW,ZM,BI,UG,MW', '', NULL),
(227, 'UA', 'UKR', 804, 'UP', 'Ukraine', 'Kiev', 603700, 45994000, 'EU', '.ua', 'UAH', 'Hryvnia', '380', '#####', '^(d{5})$', 'uk,ru-UA,rom,pl,hu', 690791, 'PL,MD,HU,SK,BY,RO,RU', '', '₴'),
(228, 'UG', 'UGA', 800, 'UG', 'Uganda', 'Kampala', 236040, 31367000, 'AF', '.ug', 'UGX', 'Shilling', '256', '', '', 'en-UG,lg,sw,ar', 226074, 'TZ,KE,SD,CD,RW', '', NULL),
(229, 'UM', 'UMI', 581, '', 'United States Minor Outlying Islands', '', 0, 0, 'OC', '.um', 'USD', 'Dollar ', '', '', '', 'en-UM', 5854968, '', '', '$'),
(230, 'US', 'USA', 840, 'US', 'United States', 'Washington', 9629091, 303824000, 'NA', '.us', 'USD', 'Dollar', '1', '#####-####', '^(d{9})$', 'en-US,es-US,haw', 6252001, 'CA,MX,CU', '', '$'),
(231, 'UY', 'URY', 858, 'UY', 'Uruguay', 'Montevideo', 176220, 3477000, 'SA', '.uy', 'UYU', 'Peso', '598', '#####', '^(d{5})$', 'es-UY', 3439705, 'BR,AR', '', '$U'),
(232, 'UZ', 'UZB', 860, 'UZ', 'Uzbekistan', 'Tashkent', 447400, 28268000, 'AS', '.uz', 'UZS', 'Som', '998', '######', '^(d{6})$', 'uz,ru,tg', 1512440, 'TM,AF,KG,TJ,KZ', '', 'лв'),
(233, 'VA', 'VAT', 336, 'VT', 'Vatican', 'Vatican City', 0, 921, 'EU', '.va', 'EUR', 'Euro', '379', '', '', 'la,it,fr', 3164670, 'IT', '', '€'),
(234, 'VC', 'VCT', 670, 'VC', 'Saint Vincent and the Grenadines', 'Kingstown', 389, 117534, 'NA', '.vc', 'XCD', 'Dollar', '+1-784', '', '', 'en-VC,fr', 3577815, '', '', '$'),
(235, 'VE', 'VEN', 862, 'VE', 'Venezuela', 'Caracas', 912050, 26414000, 'SA', '.ve', 'VEF', 'Bolivar', '58', '####', '^(d{4})$', 'es-VE', 3625428, 'GY,BR,CO', '', 'Bs'),
(236, 'VG', 'VGB', 92, 'VI', 'British Virgin Islands', 'Road Town', 153, 21730, 'NA', '.vg', 'USD', 'Dollar', '+1-284', '', '', 'en-VG', 3577718, '', '', '$'),
(237, 'VI', 'VIR', 850, 'VQ', 'U.S. Virgin Islands', 'Charlotte Amalie', 352, 108708, 'NA', '.vi', 'USD', 'Dollar', '+1-340', '', '', 'en-VI', 4796775, '', '', '$'),
(238, 'VN', 'VNM', 704, 'VM', 'Vietnam', 'Hanoi', 329560, 86116000, 'AS', '.vn', 'VND', 'Dong', '84', '######', '^(d{6})$', 'vi,en,fr,zh,km', 1562822, 'CN,LA,KH', '', '₫'),
(239, 'VU', 'VUT', 548, 'NH', 'Vanuatu', 'Port Vila', 12200, 215000, 'OC', '.vu', 'VUV', 'Vatu', '678', '', '', 'bi,en-VU,fr-VU', 2134431, '', '', 'Vt'),
(240, 'WF', 'WLF', 876, 'WF', 'Wallis and Futuna', 'MatÃ¢\'Utu', 274, 16025, 'OC', '.wf', 'XPF', 'Franc', '681', '', '', 'wls,fud,fr-WF', 4034749, '', '', NULL),
(241, 'WS', 'WSM', 882, 'WS', 'Samoa', 'Apia', 2944, 217000, 'OC', '.ws', 'WST', 'Tala', '685', '', '', 'sm,en-WS', 4034894, '', '', 'WS$'),
(242, 'YE', 'YEM', 887, 'YM', 'Yemen', 'San?a?', 527970, 23013000, 'AS', '.ye', 'YER', 'Rial', '967', '', '', 'ar-YE', 69543, 'SA,OM', '', '﷼'),
(243, 'YT', 'MYT', 175, 'MF', 'Mayotte', 'Mamoudzou', 374, 159042, 'AF', '.yt', 'EUR', 'Euro', '269', '#####', '^(d{5})$', 'fr-YT', 1024031, '', '', '€'),
(244, 'ZA', 'ZAF', 710, 'SF', 'South Africa', 'Pretoria', 1219912, 43786000, 'AF', '.za', 'ZAR', 'Rand', '27', '####', '^(d{4})$', 'zu,xh,af,nso,en-ZA,tn,st,ts', 953987, 'ZW,SZ,MZ,BW,NA,LS', '', 'R'),
(245, 'ZM', 'ZMB', 894, 'ZA', 'Zambia', 'Lusaka', 752614, 11669000, 'AF', '.zm', 'ZMK', 'Kwacha', '260', '#####', '^(d{5})$', 'en-ZM,bem,loz,lun,lue,ny,toi', 895949, 'ZW,TZ,MZ,CD,NA,MW,AO', '', 'ZK'),
(246, 'ZW', 'ZWE', 716, 'ZI', 'Zimbabwe', 'Harare', 390580, 12382000, 'AF', '.zw', 'ZWD', 'Dollar', '263', '', '', 'en-ZW,sn,nr,nd', 878675, 'ZA,MZ,BW,ZM', '', 'Z$'),
(247, 'CS', 'SCG', 891, 'YI', 'Serbia and Montenegro', 'Belgrade', 102350, 10829175, 'EU', '.cs', 'RSD', 'Dinar', '+381', '#####', '^(d{5})$', 'cu,hu,sq,sr', 863038, 'AL,HU,MK,RO,HR,BA,BG', '', 'Дин');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries_zone`
--

CREATE TABLE `tbl_countries_zone` (
  `zone_id` int(10) NOT NULL,
  `country_code` char(2) COLLATE utf8_bin NOT NULL,
  `zone_name` varchar(35) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_countries_zone`
--

INSERT INTO `tbl_countries_zone` (`zone_id`, `country_code`, `zone_name`) VALUES
(1, 'AD', 'Europe/Andorra'),
(2, 'AE', 'Asia/Dubai'),
(3, 'AF', 'Asia/Kabul'),
(4, 'AG', 'America/Antigua'),
(5, 'AI', 'America/Anguilla'),
(6, 'AL', 'Europe/Tirane'),
(7, 'AM', 'Asia/Yerevan'),
(8, 'AO', 'Africa/Luanda'),
(9, 'AQ', 'Antarctica/McMurdo'),
(10, 'AQ', 'Antarctica/Casey'),
(11, 'AQ', 'Antarctica/Davis'),
(12, 'AQ', 'Antarctica/DumontDUrville'),
(13, 'AQ', 'Antarctica/Mawson'),
(14, 'AQ', 'Antarctica/Palmer'),
(15, 'AQ', 'Antarctica/Rothera'),
(16, 'AQ', 'Antarctica/Syowa'),
(17, 'AQ', 'Antarctica/Troll'),
(18, 'AQ', 'Antarctica/Vostok'),
(19, 'AR', 'America/Argentina/Buenos_Aires'),
(20, 'AR', 'America/Argentina/Cordoba'),
(21, 'AR', 'America/Argentina/Salta'),
(22, 'AR', 'America/Argentina/Jujuy'),
(23, 'AR', 'America/Argentina/Tucuman'),
(24, 'AR', 'America/Argentina/Catamarca'),
(25, 'AR', 'America/Argentina/La_Rioja'),
(26, 'AR', 'America/Argentina/San_Juan'),
(27, 'AR', 'America/Argentina/Mendoza'),
(28, 'AR', 'America/Argentina/San_Luis'),
(29, 'AR', 'America/Argentina/Rio_Gallegos'),
(30, 'AR', 'America/Argentina/Ushuaia'),
(31, 'AS', 'Pacific/Pago_Pago'),
(32, 'AT', 'Europe/Vienna'),
(33, 'AU', 'Australia/Lord_Howe'),
(34, 'AU', 'Antarctica/Macquarie'),
(35, 'AU', 'Australia/Hobart'),
(36, 'AU', 'Australia/Currie'),
(37, 'AU', 'Australia/Melbourne'),
(38, 'AU', 'Australia/Sydney'),
(39, 'AU', 'Australia/Broken_Hill'),
(40, 'AU', 'Australia/Brisbane'),
(41, 'AU', 'Australia/Lindeman'),
(42, 'AU', 'Australia/Adelaide'),
(43, 'AU', 'Australia/Darwin'),
(44, 'AU', 'Australia/Perth'),
(45, 'AU', 'Australia/Eucla'),
(46, 'AW', 'America/Aruba'),
(47, 'AX', 'Europe/Mariehamn'),
(48, 'AZ', 'Asia/Baku'),
(49, 'BA', 'Europe/Sarajevo'),
(50, 'BB', 'America/Barbados'),
(51, 'BD', 'Asia/Dhaka'),
(52, 'BE', 'Europe/Brussels'),
(53, 'BF', 'Africa/Ouagadougou'),
(54, 'BG', 'Europe/Sofia'),
(55, 'BH', 'Asia/Bahrain'),
(56, 'BI', 'Africa/Bujumbura'),
(57, 'BJ', 'Africa/Porto-Novo'),
(58, 'BL', 'America/St_Barthelemy'),
(59, 'BM', 'Atlantic/Bermuda'),
(60, 'BN', 'Asia/Brunei'),
(61, 'BO', 'America/La_Paz'),
(62, 'BQ', 'America/Kralendijk'),
(63, 'BR', 'America/Noronha'),
(64, 'BR', 'America/Belem'),
(65, 'BR', 'America/Fortaleza'),
(66, 'BR', 'America/Recife'),
(67, 'BR', 'America/Araguaina'),
(68, 'BR', 'America/Maceio'),
(69, 'BR', 'America/Bahia'),
(70, 'BR', 'America/Sao_Paulo'),
(71, 'BR', 'America/Campo_Grande'),
(72, 'BR', 'America/Cuiaba'),
(73, 'BR', 'America/Santarem'),
(74, 'BR', 'America/Porto_Velho'),
(75, 'BR', 'America/Boa_Vista'),
(76, 'BR', 'America/Manaus'),
(77, 'BR', 'America/Eirunepe'),
(78, 'BR', 'America/Rio_Branco'),
(79, 'BS', 'America/Nassau'),
(80, 'BT', 'Asia/Thimphu'),
(81, 'BW', 'Africa/Gaborone'),
(82, 'BY', 'Europe/Minsk'),
(83, 'BZ', 'America/Belize'),
(84, 'CA', 'America/St_Johns'),
(85, 'CA', 'America/Halifax'),
(86, 'CA', 'America/Glace_Bay'),
(87, 'CA', 'America/Moncton'),
(88, 'CA', 'America/Goose_Bay'),
(89, 'CA', 'America/Blanc-Sablon'),
(90, 'CA', 'America/Toronto'),
(91, 'CA', 'America/Nipigon'),
(92, 'CA', 'America/Thunder_Bay'),
(93, 'CA', 'America/Iqaluit'),
(94, 'CA', 'America/Pangnirtung'),
(95, 'CA', 'America/Atikokan'),
(96, 'CA', 'America/Winnipeg'),
(97, 'CA', 'America/Rainy_River'),
(98, 'CA', 'America/Resolute'),
(99, 'CA', 'America/Rankin_Inlet'),
(100, 'CA', 'America/Regina'),
(101, 'CA', 'America/Swift_Current'),
(102, 'CA', 'America/Edmonton'),
(103, 'CA', 'America/Cambridge_Bay'),
(104, 'CA', 'America/Yellowknife'),
(105, 'CA', 'America/Inuvik'),
(106, 'CA', 'America/Creston'),
(107, 'CA', 'America/Dawson_Creek'),
(108, 'CA', 'America/Fort_Nelson'),
(109, 'CA', 'America/Vancouver'),
(110, 'CA', 'America/Whitehorse'),
(111, 'CA', 'America/Dawson'),
(112, 'CC', 'Indian/Cocos'),
(113, 'CD', 'Africa/Kinshasa'),
(114, 'CD', 'Africa/Lubumbashi'),
(115, 'CF', 'Africa/Bangui'),
(116, 'CG', 'Africa/Brazzaville'),
(117, 'CH', 'Europe/Zurich'),
(118, 'CI', 'Africa/Abidjan'),
(119, 'CK', 'Pacific/Rarotonga'),
(120, 'CL', 'America/Santiago'),
(121, 'CL', 'America/Punta_Arenas'),
(122, 'CL', 'Pacific/Easter'),
(123, 'CM', 'Africa/Douala'),
(124, 'CN', 'Asia/Shanghai'),
(125, 'CN', 'Asia/Urumqi'),
(126, 'CO', 'America/Bogota'),
(127, 'CR', 'America/Costa_Rica'),
(128, 'CU', 'America/Havana'),
(129, 'CV', 'Atlantic/Cape_Verde'),
(130, 'CW', 'America/Curacao'),
(131, 'CX', 'Indian/Christmas'),
(132, 'CY', 'Asia/Nicosia'),
(133, 'CY', 'Asia/Famagusta'),
(134, 'CZ', 'Europe/Prague'),
(135, 'DE', 'Europe/Berlin'),
(136, 'DE', 'Europe/Busingen'),
(137, 'DJ', 'Africa/Djibouti'),
(138, 'DK', 'Europe/Copenhagen'),
(139, 'DM', 'America/Dominica'),
(140, 'DO', 'America/Santo_Domingo'),
(141, 'DZ', 'Africa/Algiers'),
(142, 'EC', 'America/Guayaquil'),
(143, 'EC', 'Pacific/Galapagos'),
(144, 'EE', 'Europe/Tallinn'),
(145, 'EG', 'Africa/Cairo'),
(146, 'EH', 'Africa/El_Aaiun'),
(147, 'ER', 'Africa/Asmara'),
(148, 'ES', 'Europe/Madrid'),
(149, 'ES', 'Africa/Ceuta'),
(150, 'ES', 'Atlantic/Canary'),
(151, 'ET', 'Africa/Addis_Ababa'),
(152, 'FI', 'Europe/Helsinki'),
(153, 'FJ', 'Pacific/Fiji'),
(154, 'FK', 'Atlantic/Stanley'),
(155, 'FM', 'Pacific/Chuuk'),
(156, 'FM', 'Pacific/Pohnpei'),
(157, 'FM', 'Pacific/Kosrae'),
(158, 'FO', 'Atlantic/Faroe'),
(159, 'FR', 'Europe/Paris'),
(160, 'GA', 'Africa/Libreville'),
(161, 'GB', 'Europe/London'),
(162, 'GD', 'America/Grenada'),
(163, 'GE', 'Asia/Tbilisi'),
(164, 'GF', 'America/Cayenne'),
(165, 'GG', 'Europe/Guernsey'),
(166, 'GH', 'Africa/Accra'),
(167, 'GI', 'Europe/Gibraltar'),
(168, 'GL', 'America/Godthab'),
(169, 'GL', 'America/Danmarkshavn'),
(170, 'GL', 'America/Scoresbysund'),
(171, 'GL', 'America/Thule'),
(172, 'GM', 'Africa/Banjul'),
(173, 'GN', 'Africa/Conakry'),
(174, 'GP', 'America/Guadeloupe'),
(175, 'GQ', 'Africa/Malabo'),
(176, 'GR', 'Europe/Athens'),
(177, 'GS', 'Atlantic/South_Georgia'),
(178, 'GT', 'America/Guatemala'),
(179, 'GU', 'Pacific/Guam'),
(180, 'GW', 'Africa/Bissau'),
(181, 'GY', 'America/Guyana'),
(182, 'HK', 'Asia/Hong_Kong'),
(183, 'HN', 'America/Tegucigalpa'),
(184, 'HR', 'Europe/Zagreb'),
(185, 'HT', 'America/Port-au-Prince'),
(186, 'HU', 'Europe/Budapest'),
(187, 'ID', 'Asia/Jakarta'),
(188, 'ID', 'Asia/Pontianak'),
(189, 'ID', 'Asia/Makassar'),
(190, 'ID', 'Asia/Jayapura'),
(191, 'IE', 'Europe/Dublin'),
(192, 'IL', 'Asia/Jerusalem'),
(193, 'IM', 'Europe/Isle_of_Man'),
(194, 'IN', 'Asia/Kolkata'),
(195, 'IO', 'Indian/Chagos'),
(196, 'IQ', 'Asia/Baghdad'),
(197, 'IR', 'Asia/Tehran'),
(198, 'IS', 'Atlantic/Reykjavik'),
(199, 'IT', 'Europe/Rome'),
(200, 'JE', 'Europe/Jersey'),
(201, 'JM', 'America/Jamaica'),
(202, 'JO', 'Asia/Amman'),
(203, 'JP', 'Asia/Tokyo'),
(204, 'KE', 'Africa/Nairobi'),
(205, 'KG', 'Asia/Bishkek'),
(206, 'KH', 'Asia/Phnom_Penh'),
(207, 'KI', 'Pacific/Tarawa'),
(208, 'KI', 'Pacific/Enderbury'),
(209, 'KI', 'Pacific/Kiritimati'),
(210, 'KM', 'Indian/Comoro'),
(211, 'KN', 'America/St_Kitts'),
(212, 'KP', 'Asia/Pyongyang'),
(213, 'KR', 'Asia/Seoul'),
(214, 'KW', 'Asia/Kuwait'),
(215, 'KY', 'America/Cayman'),
(216, 'KZ', 'Asia/Almaty'),
(217, 'KZ', 'Asia/Qyzylorda'),
(218, 'KZ', 'Asia/Aqtobe'),
(219, 'KZ', 'Asia/Aqtau'),
(220, 'KZ', 'Asia/Atyrau'),
(221, 'KZ', 'Asia/Oral'),
(222, 'LA', 'Asia/Vientiane'),
(223, 'LB', 'Asia/Beirut'),
(224, 'LC', 'America/St_Lucia'),
(225, 'LI', 'Europe/Vaduz'),
(226, 'LK', 'Asia/Colombo'),
(227, 'LR', 'Africa/Monrovia'),
(228, 'LS', 'Africa/Maseru'),
(229, 'LT', 'Europe/Vilnius'),
(230, 'LU', 'Europe/Luxembourg'),
(231, 'LV', 'Europe/Riga'),
(232, 'LY', 'Africa/Tripoli'),
(233, 'MA', 'Africa/Casablanca'),
(234, 'MC', 'Europe/Monaco'),
(235, 'MD', 'Europe/Chisinau'),
(236, 'ME', 'Europe/Podgorica'),
(237, 'MF', 'America/Marigot'),
(238, 'MG', 'Indian/Antananarivo'),
(239, 'MH', 'Pacific/Majuro'),
(240, 'MH', 'Pacific/Kwajalein'),
(241, 'MK', 'Europe/Skopje'),
(242, 'ML', 'Africa/Bamako'),
(243, 'MM', 'Asia/Yangon'),
(244, 'MN', 'Asia/Ulaanbaatar'),
(245, 'MN', 'Asia/Hovd'),
(246, 'MN', 'Asia/Choibalsan'),
(247, 'MO', 'Asia/Macau'),
(248, 'MP', 'Pacific/Saipan'),
(249, 'MQ', 'America/Martinique'),
(250, 'MR', 'Africa/Nouakchott'),
(251, 'MS', 'America/Montserrat'),
(252, 'MT', 'Europe/Malta'),
(253, 'MU', 'Indian/Mauritius'),
(254, 'MV', 'Indian/Maldives'),
(255, 'MW', 'Africa/Blantyre'),
(256, 'MX', 'America/Mexico_City'),
(257, 'MX', 'America/Cancun'),
(258, 'MX', 'America/Merida'),
(259, 'MX', 'America/Monterrey'),
(260, 'MX', 'America/Matamoros'),
(261, 'MX', 'America/Mazatlan'),
(262, 'MX', 'America/Chihuahua'),
(263, 'MX', 'America/Ojinaga'),
(264, 'MX', 'America/Hermosillo'),
(265, 'MX', 'America/Tijuana'),
(266, 'MX', 'America/Bahia_Banderas'),
(267, 'MY', 'Asia/Kuala_Lumpur'),
(268, 'MY', 'Asia/Kuching'),
(269, 'MZ', 'Africa/Maputo'),
(270, 'NA', 'Africa/Windhoek'),
(271, 'NC', 'Pacific/Noumea'),
(272, 'NE', 'Africa/Niamey'),
(273, 'NF', 'Pacific/Norfolk'),
(274, 'NG', 'Africa/Lagos'),
(275, 'NI', 'America/Managua'),
(276, 'NL', 'Europe/Amsterdam'),
(277, 'NO', 'Europe/Oslo'),
(278, 'NP', 'Asia/Kathmandu'),
(279, 'NR', 'Pacific/Nauru'),
(280, 'NU', 'Pacific/Niue'),
(281, 'NZ', 'Pacific/Auckland'),
(282, 'NZ', 'Pacific/Chatham'),
(283, 'OM', 'Asia/Muscat'),
(284, 'PA', 'America/Panama'),
(285, 'PE', 'America/Lima'),
(286, 'PF', 'Pacific/Tahiti'),
(287, 'PF', 'Pacific/Marquesas'),
(288, 'PF', 'Pacific/Gambier'),
(289, 'PG', 'Pacific/Port_Moresby'),
(290, 'PG', 'Pacific/Bougainville'),
(291, 'PH', 'Asia/Manila'),
(292, 'PK', 'Asia/Karachi'),
(293, 'PL', 'Europe/Warsaw'),
(294, 'PM', 'America/Miquelon'),
(295, 'PN', 'Pacific/Pitcairn'),
(296, 'PR', 'America/Puerto_Rico'),
(297, 'PS', 'Asia/Gaza'),
(298, 'PS', 'Asia/Hebron'),
(299, 'PT', 'Europe/Lisbon'),
(300, 'PT', 'Atlantic/Madeira'),
(301, 'PT', 'Atlantic/Azores'),
(302, 'PW', 'Pacific/Palau'),
(303, 'PY', 'America/Asuncion'),
(304, 'QA', 'Asia/Qatar'),
(305, 'RE', 'Indian/Reunion'),
(306, 'RO', 'Europe/Bucharest'),
(307, 'RS', 'Europe/Belgrade'),
(308, 'RU', 'Europe/Kaliningrad'),
(309, 'RU', 'Europe/Moscow'),
(310, 'RU', 'Europe/Simferopol'),
(311, 'RU', 'Europe/Volgograd'),
(312, 'RU', 'Europe/Kirov'),
(313, 'RU', 'Europe/Astrakhan'),
(314, 'RU', 'Europe/Saratov'),
(315, 'RU', 'Europe/Ulyanovsk'),
(316, 'RU', 'Europe/Samara'),
(317, 'RU', 'Asia/Yekaterinburg'),
(318, 'RU', 'Asia/Omsk'),
(319, 'RU', 'Asia/Novosibirsk'),
(320, 'RU', 'Asia/Barnaul'),
(321, 'RU', 'Asia/Tomsk'),
(322, 'RU', 'Asia/Novokuznetsk'),
(323, 'RU', 'Asia/Krasnoyarsk'),
(324, 'RU', 'Asia/Irkutsk'),
(325, 'RU', 'Asia/Chita'),
(326, 'RU', 'Asia/Yakutsk'),
(327, 'RU', 'Asia/Khandyga'),
(328, 'RU', 'Asia/Vladivostok'),
(329, 'RU', 'Asia/Ust-Nera'),
(330, 'RU', 'Asia/Magadan'),
(331, 'RU', 'Asia/Sakhalin'),
(332, 'RU', 'Asia/Srednekolymsk'),
(333, 'RU', 'Asia/Kamchatka'),
(334, 'RU', 'Asia/Anadyr'),
(335, 'RW', 'Africa/Kigali'),
(336, 'SA', 'Asia/Riyadh'),
(337, 'SB', 'Pacific/Guadalcanal'),
(338, 'SC', 'Indian/Mahe'),
(339, 'SD', 'Africa/Khartoum'),
(340, 'SE', 'Europe/Stockholm'),
(341, 'SG', 'Asia/Singapore'),
(342, 'SH', 'Atlantic/St_Helena'),
(343, 'SI', 'Europe/Ljubljana'),
(344, 'SJ', 'Arctic/Longyearbyen'),
(345, 'SK', 'Europe/Bratislava'),
(346, 'SL', 'Africa/Freetown'),
(347, 'SM', 'Europe/San_Marino'),
(348, 'SN', 'Africa/Dakar'),
(349, 'SO', 'Africa/Mogadishu'),
(350, 'SR', 'America/Paramaribo'),
(351, 'SS', 'Africa/Juba'),
(352, 'ST', 'Africa/Sao_Tome'),
(353, 'SV', 'America/El_Salvador'),
(354, 'SX', 'America/Lower_Princes'),
(355, 'SY', 'Asia/Damascus'),
(356, 'SZ', 'Africa/Mbabane'),
(357, 'TC', 'America/Grand_Turk'),
(358, 'TD', 'Africa/Ndjamena'),
(359, 'TF', 'Indian/Kerguelen'),
(360, 'TG', 'Africa/Lome'),
(361, 'TH', 'Asia/Bangkok'),
(362, 'TJ', 'Asia/Dushanbe'),
(363, 'TK', 'Pacific/Fakaofo'),
(364, 'TL', 'Asia/Dili'),
(365, 'TM', 'Asia/Ashgabat'),
(366, 'TN', 'Africa/Tunis'),
(367, 'TO', 'Pacific/Tongatapu'),
(368, 'TR', 'Europe/Istanbul'),
(369, 'TT', 'America/Port_of_Spain'),
(370, 'TV', 'Pacific/Funafuti'),
(371, 'TW', 'Asia/Taipei'),
(372, 'TZ', 'Africa/Dar_es_Salaam'),
(373, 'UA', 'Europe/Kiev'),
(374, 'UA', 'Europe/Uzhgorod'),
(375, 'UA', 'Europe/Zaporozhye'),
(376, 'UG', 'Africa/Kampala'),
(377, 'UM', 'Pacific/Midway'),
(378, 'UM', 'Pacific/Wake'),
(379, 'US', 'America/New_York'),
(380, 'US', 'America/Detroit'),
(381, 'US', 'America/Kentucky/Louisville'),
(382, 'US', 'America/Kentucky/Monticello'),
(383, 'US', 'America/Indiana/Indianapolis'),
(384, 'US', 'America/Indiana/Vincennes'),
(385, 'US', 'America/Indiana/Winamac'),
(386, 'US', 'America/Indiana/Marengo'),
(387, 'US', 'America/Indiana/Petersburg'),
(388, 'US', 'America/Indiana/Vevay'),
(389, 'US', 'America/Chicago'),
(390, 'US', 'America/Indiana/Tell_City'),
(391, 'US', 'America/Indiana/Knox'),
(392, 'US', 'America/Menominee'),
(393, 'US', 'America/North_Dakota/Center'),
(394, 'US', 'America/North_Dakota/New_Salem'),
(395, 'US', 'America/North_Dakota/Beulah'),
(396, 'US', 'America/Denver'),
(397, 'US', 'America/Boise'),
(398, 'US', 'America/Phoenix'),
(399, 'US', 'America/Los_Angeles'),
(400, 'US', 'America/Anchorage'),
(401, 'US', 'America/Juneau'),
(402, 'US', 'America/Sitka'),
(403, 'US', 'America/Metlakatla'),
(404, 'US', 'America/Yakutat'),
(405, 'US', 'America/Nome'),
(406, 'US', 'America/Adak'),
(407, 'US', 'Pacific/Honolulu'),
(408, 'UY', 'America/Montevideo'),
(409, 'UZ', 'Asia/Samarkand'),
(410, 'UZ', 'Asia/Tashkent'),
(411, 'VA', 'Europe/Vatican'),
(412, 'VC', 'America/St_Vincent'),
(413, 'VE', 'America/Caracas'),
(414, 'VG', 'America/Tortola'),
(415, 'VI', 'America/St_Thomas'),
(416, 'VN', 'Asia/Ho_Chi_Minh'),
(417, 'VU', 'Pacific/Efate'),
(418, 'WF', 'Pacific/Wallis'),
(419, 'WS', 'Pacific/Apia'),
(420, 'YE', 'Asia/Aden'),
(421, 'YT', 'Indian/Mayotte'),
(422, 'ZA', 'Africa/Johannesburg'),
(423, 'ZM', 'Africa/Lusaka'),
(424, 'ZW', 'Africa/Harare');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` text COLLATE utf8mb4_unicode_ci,
  `permanent_address` text COLLATE utf8mb4_unicode_ci,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`id`, `code`, `first_name`, `last_name`, `email`, `company`, `phone`, `mobile`, `fax`, `present_address`, `permanent_address`, `country_id`, `state`, `city`, `postal_code`, `other`, `created_at`, `updated_at`) VALUES
(5, '040007', 'Eduardo', 'pauz', 'pzau@gail.coma', 'paux', '+135898875', '+3450501501', '+3450501505', 'Po-Box-B8579 Street 1', 'Po-Box-Op2589 Street B', 230, 'Alaska', 'Alaska', '00000', NULL, '2018-03-30 07:44:03', '2018-03-30 07:44:03'),
(6, '040008', 'Gary', 'Whyman', 'Whyman@abc.coms', 'Whyman', '+135898875', '3033331980', '3426176218', '921 n 68 ter', '113-114 Buckingham Avenue', 230, 'Slough', 'Hollywood', 'SL1 4PF', NULL, '2018-03-30 07:45:15', '2018-03-30 07:45:15'),
(7, '040009', 'Marc', 'Brucker', 'Brucker@abc.caom', 'Brucker', '5619356960', '56193569608', '3426176218', 'Hollywood Florida', 'Hollywood Florida', 230, 'Florida', 'Hollywood', '33024', NULL, '2018-03-30 07:45:46', '2018-03-30 07:45:46'),
(8, '040010', 'Jeff', 'Ackerman', 'Ackerman@abc.com', 'Ackerman', '5619356961', '3426176218', '3446399247', 'Hollywood Florida', 'Hollywood Florida', 230, 'Florida', 'Hollywood', '33024', NULL, '2018-03-30 07:46:17', '2018-03-30 07:46:17'),
(9, '040011', 'Paragon Internet', 'Ltd', 'atextiles2009@gmaial.com', 'Mr Styles Clothing Brand', '5618956960', NULL, NULL, '113-114 Buckingham Avenue', '113-114 Buckingham Avenue', 76, 'Slough', 'Slough', 'SL1 4PF', NULL, '2018-03-30 07:46:50', '2018-03-30 07:46:50'),
(10, '040012', 'FERNANDO L.', 'NAZARIO', 'NAZARIO@895.coma', 'NAZARIO', '3466794026', NULL, NULL, 'Shahtab Garh Street 1, 501', 'Shahtab Garh Street 1, 501', 227, 'Punjab', 'Sialkot', '51310', NULL, '2018-03-30 07:47:33', '2018-03-30 07:47:33'),
(11, '040013', 'Larry', 'Wallace', 'Wallace@34.acas', 'Wallace', '3450501501', NULL, NULL, 'Shahtab Garh Street 1', 'Shahtab Garh Street 1', 174, 'ASDASDASD', 'Sialkot', '51310', NULL, '2018-03-30 07:47:56', '2018-03-30 07:47:56'),
(12, '040014', 'kerry', 'tillison', 'tillison@gmail.coms', 'tillison', '5619356960', NULL, NULL, 'Hollywood Florida', 'Hollywood Florida', 230, 'Florida', 'Hollywood', '33024', NULL, '2018-03-30 07:48:47', '2018-03-30 07:48:47'),
(13, '040015', 'Josip', 'Preksavec', 'Preksavec@gasol.coma', 'Preksavec', '5619356960', NULL, NULL, 'Hollywood Florida', 'Hollywood Florida', 230, 'Florida', 'Hollywood', '33024', NULL, '2018-03-30 07:49:14', '2018-03-30 07:49:14'),
(14, '505050502', 'JR', '365', 'davehla@goldenictsolutions.com', 'GIS', '454545454', NULL, NULL, 'PA', NULL, 145, NULL, NULL, NULL, NULL, '2018-05-16 18:42:28', '2018-05-16 18:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departments`
--

CREATE TABLE `tbl_departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_departments`
--

INSERT INTO `tbl_departments` (`id`, `title`, `description`, `status`) VALUES
(7, 'hr', 'Sales', 1),
(8, 'accounts', 'accounts', 1),
(9, 'employee', 'employee', 1),
(10, 'Manager', 'Manager', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designations`
--

CREATE TABLE `tbl_designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_designations`
--

INSERT INTO `tbl_designations` (`id`, `title`, `description`, `status`) VALUES
(7, 'HR', NULL, 1),
(8, 'accounts', NULL, 1),
(9, 'employee', NULL, 1),
(10, 'GM', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_templates`
--

CREATE TABLE `tbl_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variables` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_email_templates`
--

INSERT INTO `tbl_email_templates` (`id`, `title`, `subject`, `file_name`, `variables`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Employee Welcome Message', 'Employee Welcome Message', 'html/employee_welcome_message.html', 'You may use these template tags inside subject, heading, body and those will be replaced by original values: <code>{first_name}</code>, <code>{last_name}</code>, <code>{username}</code>,<code>{password}</code>, <code>{email}</code>, <code>{business_name}</code>', 1, '2017-09-08 09:00:00', '2017-09-10 21:27:24'),
(2, 'Create New Invoice', 'Create New Invoice', 'html/create_invoice.html', 'You may use these template tags inside subject, heading, body and those will be replaced by original values: <code>{invoice_url}</code>, <code>{invoice_id}</code>, <code>{invoice_amount}</code>, <code>{invoice_due_date}</code>, <code>{business_name}</code>', 1, '2017-09-08 09:00:00', '2017-09-11 01:19:34'),
(3, 'Invoice Overdue Notice', 'Invoice Overdue Notice', 'html/invoice_payment_due.html', 'You may use these template tags inside subject, heading, body and those will be replaced by original values: <code>{invoice_id}</code>, <code>{invoice_date}</code>, <code>{invoice_url}</code>, <code>{invoice_due_date}</code>, <code>{business_name}</code>', 1, '2017-09-08 09:00:00', '2017-09-11 01:19:34'),
(4, 'Create Payment Reminder', 'Create Payment Reminder', 'html/invoice_payment_reminder.html', 'You may use these template tags inside subject, heading, body and those will be replaced by original values: <code>{invoice_id}</code>, <code>{invoice_date}</code>, <code>{invoice_url}</code>, <code>{invoice_due_date}</code>, <code>{business_name}</code>', 1, '2017-09-08 09:00:00', '2017-09-11 01:19:34'),
(5, 'Invoice Payment Confirmation', 'Invoice Payment Confirmation', 'html/invoice_payment_confirmation.html', 'You may use these template tags inside subject, heading, body and those will be replaced by original values: <code>{invoice_id}</code>, <code>{invoice_date}</code>, <code>{invoice_url}</code>, <code>{invoice_due_date}</code>, <code>{business_name}</code>', 1, NULL, NULL),
(6, 'Invoice Refund Confirmation', 'Invoice Refund Confirmation', 'html/invoice_refund_Confirmation.html', 'You may use these template tags inside subject, heading, body and those will be replaced by original values: <code>{invoice_id}</code>, <code>{invoice_date}</code>, <code>{invoice_url}</code>, <code>{invoice_due_date}</code>, <code>{business_name}</code>', 1, NULL, NULL),
(7, 'Voucher New Email', 'Voucher New Email', 'html/create_voucher.html', 'You may use these template tags inside subject, heading, body and those will be replaced by original values: <code>{invoice_id}</code>, <code>{invoice_date}</code>, <code>{invoice_url}</code>, <code>{invoice_due_date}</code>, <code>{business_name}</code>', 1, NULL, NULL),
(8, 'Employee Loan', 'Employee Loan', 'html/employee_loan.html', 'You may use these template tags inside subject, heading, body and those will be replaced by original values: <code>{first_name}</code>, <code>{last_name}</code>,<code>{loan_date}</code>, <code>{loan_amount}</code>, <code>{business_name}</code>', 1, '2017-11-14 20:00:00', '2017-11-15 01:00:00'),
(9, 'Leave Application Status', 'Leave Application Status', 'html/employee_leave_status.html', 'You may use these template tags inside subject, heading, body and those will be replaced by original values: <code>{employee_name}</code>, <code>{leave_start_date}</code>, <code>{leave_end_date}</code>, <code>{leave_status}</code>, <code>{business_name}</code>', 1, NULL, NULL),
(10, 'Official Holidays Announcement', 'Official Holidays Announcement', 'html/official_holidays_announcement.html', 'You may use these template tags inside subject, heading, body and those will be replaced by original values:<code>{title}</code>, <code>{holiday_start_date}</code>, <code>{holiday_end_date}</code>, <code>{business_name}</code>', 1, NULL, '2017-11-18 03:55:14'),
(11, 'Notice Board Updates Email', 'Notice Board Updates Email', 'html/notice_board_updates.html', 'You may use these template tags inside subject, heading, body and those will be replaced by original values: <code>{title}</code>, <code>{date}</code>, <code>{description}</code>, <code>{business_name}</code>', 1, '2017-11-14 13:00:00', '2017-11-14 13:00:00'),
(12, 'Monthly Salary Created', 'Monthly Salary Created', 'html/monthly_salary_created.html', 'You may use these template tags inside subject, heading, body and those will be replaced by original values: <code>{employee_name}</code>, <code>{salary_date}</code>,<code>{salary_amount}</code>, <code>{business_name}</code>', 1, '2017-11-14 13:00:00', '2017-11-14 13:00:00'),
(13, 'Monthly Salary Paid', 'Monthly Salary Paid', 'html/monthly_salary_paid.html', 'You may use these template tags inside subject, heading, body and those will be replaced by original values: <code>{employee_name}</code>, <code>{salary_date}</code>,<code>{salary_amount}</code>, <code>{business_name}</code>', 1, '2017-11-14 13:00:00', '2017-11-14 13:00:00'),
(14, 'Leave Application Request', 'Leave Application Request', 'html/leaves_application_request.html', 'You may use these template tags inside subject, heading, body and those will be replaced by original values: <code>{first_name}</code>, <code>{last_name}</code>, <code>{title}</code>,  <code>{leave_start_date}</code>, <code>{leave_end_date}</code>, <code>{leave_total_days}</code>, <code>{description}</code>, <code>{business_name}</code>', 1, '2017-11-15 13:00:00', '2017-11-28 13:00:00'),
(15, 'Daily Activity Template', 'Daily Activity Template', 'html/daily_activity.html', 'You may use these template tags inside subject, heading, body and those will be replaced by original values: <code>{new_customers}</code>, <code>{new_vendors}</code>, <code>{new_invoice}</code>,  <code>{new_voucher}</code>, <code>{new_received_amount}</code>, <code>{new_paid_amount}</code>, <code>{today_expenses}</code>, <code>{bank_cash_debit}</code>, <code>{bank_cash_credit}</code>, <code>{total_employees}</code>, <code>{today_total_present_employees}</code>, <code>{today_total_absent_employees}</code>, <code>{today_total_short_attendance}</code>, <code>{business_name}</code>', 1, NULL, NULL),
(16, 'Customer Welcome Message', 'Customer Welcome Message', 'html/customer_welcome_message.html', 'You may use these template tags inside subject, heading, body and those will be replaced by original values: <code>{first_name}</code>, <code>{last_name}</code>, <code>{email}</code>, <code>{business_name}</code>', 1, '2017-09-08 09:00:00', '2017-12-07 07:05:47'),
(17, 'Loan Approval Status', 'Loan Approval Status', 'html/loan_approval_status.html', 'You may use these template tags inside subject, heading, body and those will be replaced by original values: <code>{employee_name}</code>, <code>{loan_amount}</code>, <code>{loan_reason}</code>, <code>{loan_status}</code>, <code>{approval_date}</code>, <code>{business_name}</code>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees`
--

CREATE TABLE `tbl_employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fathers_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mothers_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` int(11) NOT NULL,
  `marital_status` int(11) DEFAULT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` int(11) NOT NULL,
  `present_address` text COLLATE utf8mb4_unicode_ci,
  `permanant_address` text COLLATE utf8mb4_unicode_ci,
  `mobile_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `leaving_date` date DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `employee_type` int(11) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `allowed_leaves` tinyint(2) DEFAULT NULL,
  `salary_type` int(11) DEFAULT NULL,
  `basic_salary` double DEFAULT NULL,
  `accomodation_allowance` double DEFAULT NULL,
  `medical_allowance` double DEFAULT NULL,
  `house_rent_allowance` double DEFAULT NULL,
  `transportation_allowance` double DEFAULT NULL,
  `food_allowance` double DEFAULT NULL,
  `overtime_1` double DEFAULT NULL,
  `overtime_2` double DEFAULT NULL,
  `overtime_3` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_employees`
--

INSERT INTO `tbl_employees` (`id`, `employee_code`, `first_name`, `last_name`, `fathers_name`, `mothers_name`, `username`, `password`, `email`, `gender`, `marital_status`, `national_id`, `nationality`, `present_address`, `permanant_address`, `mobile_no`, `phone_no`, `date_of_birth`, `joining_date`, `leaving_date`, `department_id`, `designation_id`, `shift_id`, `employee_type`, `role`, `allowed_leaves`, `salary_type`, `basic_salary`, `accomodation_allowance`, `medical_allowance`, `house_rent_allowance`, `transportation_allowance`, `food_allowance`, `overtime_1`, `overtime_2`, `overtime_3`, `status`, `avatar`, `cover`, `reference`, `remember_token`, `create_by`, `create_ip`, `login_ip`, `last_login_time`, `created_at`, `updated_at`) VALUES
(34, '020013', 'Steven', 'Ehealth', NULL, NULL, 'admin', '$1$xXiEzO9V$hLD5WmuPsKlsj5.KNUqs30', 'flwebsol@gmail.com', 1, NULL, '', 177, 'Null', 'Null', '123456789', '123456789', '1990-10-10', '1990-10-10', NULL, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '5a182b566e908_3249861894_1_3_5v7UzLCS.jpg', '5a1d1f2ceb214_386937_10150984722410506_760855505_21746534_408506817_n.jpg', 'Sialkot', 'LeH3DsU3SEsP7Y8a8SnfibrYBDbcoNr96hOazWtBRPyhNHFpAyz7PYhCfT2O', 23, '::1', '127.0.0.1', '2018-07-14 00:11:36', '2017-11-24 08:19:32', '2018-07-14 00:11:36'),
(40, '020008', 'Saidu', 'Isah Bello', NULL, NULL, 'employee', '$2y$10$1pJUHU8cYfmAA6aL/ON44etcuXb7lMhpFD11/XORP8mAymR1GN/Y6', 'saidu4rockstars@gmail.com', 1, NULL, NULL, 230, 'Nigeria', NULL, NULL, '+2348081085414', '1986-03-30', '2017-03-30', NULL, 9, 9, 4, 2, 5, 1, 2, 5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, 'Ak47H3PUaCobcZijziaXBOOo2lhSHFbnU7D0aHtotBsttpO0VDZrvrxFu0VS', 34, '127.0.0.1', '127.0.0.1', '2018-07-13 23:08:54', '2018-03-30 07:16:15', '2018-07-13 23:08:54'),
(41, '020009', 'Joseph', 'Dangote', NULL, NULL, 'accounts', '$2y$10$UULQKeLXdUkX5zLnXMe43.2rBjCPOAhFXojjNopFHTXHIRANZILOq', 'jaotjoseph4@gmail.com', 1, NULL, NULL, 230, NULL, NULL, NULL, '+2348186202101', '1999-03-30', '2016-03-30', NULL, 8, 8, 4, 2, 6, 2, 2, 2500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '5afdc7685f458_bg-solid-dark-grey.png', NULL, '51We7mv2sHGEASeJtnU7Yr2h1FP10bgDGDQLWCnCRsS8INRIR7u2PBiuMXYQ', 34, '127.0.0.1', '88.228.243.68', '2018-05-17 18:12:47', '2018-03-30 07:18:25', '2018-07-13 20:48:15'),
(42, '020010', 'Hr', 'section', NULL, NULL, 'hr', '$2y$10$Qh4uIs7Td0/dRxokdZw6tepaVq1G/BhweM8G30IMAW5AJelXY/ISG', 'hr@hrs.coms', 1, NULL, NULL, 1, NULL, NULL, NULL, '+1-585-1234-125', '2016-03-28', '2015-03-30', NULL, 7, 7, 4, 1, 7, 3, 2, 350000, 100000, 150000, NULL, 100000, 100000, NULL, NULL, NULL, 1, '', NULL, NULL, 'rCLKwrjGNaiVSrGwOtBsrE3weHqQYHmmO4XCmusEYxF051OWCgtFIeCCBJKF', 34, '86.101.64.76', '103.195.233.194', '2018-05-17 15:10:32', '2018-03-30 07:19:41', '2018-05-17 15:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees_attendance`
--

CREATE TABLE `tbl_employees_attendance` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `in_time` datetime DEFAULT NULL,
  `out_time` datetime DEFAULT NULL,
  `spent_time` time DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_employees_attendance`
--

INSERT INTO `tbl_employees_attendance` (`id`, `employee_id`, `in_time`, `out_time`, `spent_time`, `detail`, `created_at`, `updated_at`) VALUES
(234, 40, '2018-03-01 09:00:00', '2018-03-01 18:00:00', '09:00:00', NULL, '2018-03-30 08:10:37', '2018-03-30 08:10:37'),
(235, 40, '2018-03-02 09:00:00', '2018-03-02 18:00:00', '09:00:00', NULL, '2018-03-30 08:10:41', '2018-03-30 08:10:41'),
(236, 40, '2018-03-05 09:00:00', '2018-03-05 18:00:00', '09:00:00', NULL, '2018-03-30 08:10:46', '2018-03-30 08:10:46'),
(237, 40, '2018-03-06 09:00:00', '2018-03-06 18:00:00', '09:00:00', NULL, '2018-03-30 08:10:50', '2018-03-30 08:10:50'),
(238, 40, '2018-03-07 09:00:00', '2018-03-07 18:00:00', '09:00:00', NULL, '2018-03-30 09:04:21', '2018-03-30 09:04:21'),
(239, 40, '2018-03-08 09:00:00', '2018-03-08 18:00:00', '09:00:00', NULL, '2018-03-30 09:04:23', '2018-03-30 09:04:23'),
(240, 40, '2018-03-09 09:00:00', '2018-03-09 18:00:00', '09:00:00', NULL, '2018-03-30 09:04:25', '2018-03-30 09:04:25'),
(241, 40, '2018-03-12 09:00:00', '2018-03-12 18:00:00', '09:00:00', NULL, '2018-03-30 09:04:27', '2018-03-30 09:04:27'),
(242, 40, '2018-03-13 09:00:00', '2018-03-13 18:00:00', '09:00:00', NULL, '2018-03-30 09:04:30', '2018-03-30 09:04:30'),
(243, 40, '2018-03-14 09:00:00', '2018-03-14 18:00:00', '09:00:00', NULL, '2018-03-30 09:04:32', '2018-03-30 09:04:32'),
(244, 40, '2018-03-15 09:00:00', '2018-03-15 18:00:00', '09:00:00', NULL, '2018-03-30 09:04:35', '2018-03-30 09:04:35'),
(245, 40, '2018-03-16 09:00:00', '2018-03-16 18:00:00', '09:00:00', NULL, '2018-03-30 09:04:36', '2018-03-30 09:04:36'),
(246, 40, '2018-03-19 09:00:00', '2018-03-19 18:00:00', '09:00:00', NULL, '2018-03-30 09:04:39', '2018-03-30 09:04:39'),
(247, 40, '2018-03-20 09:00:00', '2018-03-20 18:00:00', '09:00:00', NULL, '2018-03-30 09:04:41', '2018-03-30 09:04:41'),
(248, 40, '2018-03-21 09:00:00', '2018-03-21 18:00:00', '09:00:00', NULL, '2018-03-30 09:04:44', '2018-03-30 09:04:44'),
(249, 40, '2018-03-22 09:00:00', '2018-03-22 18:00:00', '09:00:00', NULL, '2018-03-30 09:04:46', '2018-03-30 09:04:46'),
(250, 40, '2018-03-23 09:00:00', '2018-03-23 18:00:00', '09:00:00', NULL, '2018-03-30 09:04:49', '2018-03-30 09:04:49'),
(251, 40, '2018-03-26 09:00:00', '2018-03-26 18:00:00', '09:00:00', NULL, '2018-03-30 09:04:51', '2018-03-30 09:04:51'),
(252, 40, '2018-03-27 09:00:00', '2018-03-27 18:00:00', '09:00:00', NULL, '2018-03-30 09:04:53', '2018-03-30 09:04:53'),
(253, 40, '2018-03-28 09:00:00', '2018-03-28 18:00:00', '09:00:00', NULL, '2018-03-30 09:05:00', '2018-03-30 09:05:00'),
(254, 40, '2018-03-30 09:00:00', '2018-03-30 18:00:00', '09:00:00', NULL, '2018-03-30 09:05:13', '2018-03-30 09:05:13'),
(255, 42, '2018-03-01 09:00:00', '2018-03-01 18:00:00', '09:00:00', NULL, '2018-03-30 09:05:26', '2018-03-30 09:05:26'),
(256, 42, '2018-03-02 09:00:00', '2018-03-02 18:00:00', '09:00:00', NULL, '2018-03-30 09:05:28', '2018-03-30 09:05:28'),
(257, 42, '2018-03-08 09:00:00', '2018-03-08 18:00:00', '09:00:00', NULL, '2018-03-30 09:05:33', '2018-03-30 09:05:33'),
(258, 42, '2018-03-07 09:00:00', '2018-03-07 18:00:00', '09:00:00', NULL, '2018-03-30 09:05:36', '2018-03-30 09:05:36'),
(259, 42, '2018-03-06 09:00:00', '2018-03-06 18:00:00', '09:00:00', NULL, '2018-03-30 09:05:40', '2018-03-30 09:05:40'),
(260, 42, '2018-03-05 09:00:00', '2018-03-05 18:00:00', '09:00:00', NULL, '2018-03-30 09:05:47', '2018-03-30 09:05:47'),
(261, 42, '2018-03-14 09:00:00', '2018-03-14 18:00:00', '09:00:00', NULL, '2018-03-30 09:05:50', '2018-03-30 09:05:50'),
(262, 42, '2018-03-13 09:00:00', '2018-03-13 18:00:00', '09:00:00', NULL, '2018-03-30 09:05:52', '2018-03-30 09:05:52'),
(263, 42, '2018-03-15 09:00:00', '2018-03-15 18:00:00', '09:00:00', NULL, '2018-03-30 09:05:56', '2018-03-30 09:05:56'),
(264, 42, '2018-03-16 09:00:00', '2018-03-16 18:00:00', '09:00:00', NULL, '2018-03-30 09:05:58', '2018-03-30 09:05:58'),
(265, 42, '2018-03-22 09:00:00', '2018-03-22 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:01', '2018-03-30 09:06:01'),
(266, 42, '2018-03-21 09:00:00', '2018-03-21 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:04', '2018-03-30 09:06:04'),
(267, 42, '2018-03-20 09:00:00', '2018-03-20 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:06', '2018-03-30 09:06:06'),
(268, 42, '2018-03-23 09:00:00', '2018-03-23 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:08', '2018-03-30 09:06:08'),
(269, 42, '2018-03-29 09:00:00', '2018-03-29 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:11', '2018-03-30 09:06:11'),
(270, 42, '2018-03-28 09:00:00', '2018-03-28 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:12', '2018-03-30 09:06:12'),
(271, 42, '2018-03-27 09:00:00', '2018-03-27 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:14', '2018-03-30 09:06:14'),
(272, 42, '2018-03-26 09:00:00', '2018-03-26 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:16', '2018-03-30 09:06:16'),
(273, 41, '2018-03-01 09:00:00', '2018-03-01 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:28', '2018-03-30 09:06:28'),
(274, 41, '2018-03-02 09:00:00', '2018-03-02 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:30', '2018-03-30 09:06:30'),
(275, 41, '2018-03-05 09:00:00', '2018-03-05 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:32', '2018-03-30 09:06:32'),
(276, 41, '2018-03-06 09:00:00', '2018-03-06 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:34', '2018-03-30 09:06:34'),
(277, 41, '2018-03-07 09:00:00', '2018-03-07 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:38', '2018-03-30 09:06:38'),
(278, 41, '2018-03-08 09:00:00', '2018-03-08 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:41', '2018-03-30 09:06:41'),
(279, 41, '2018-03-09 09:00:00', '2018-03-09 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:44', '2018-03-30 09:06:44'),
(280, 41, '2018-03-14 09:00:00', '2018-03-14 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:48', '2018-03-30 09:06:48'),
(281, 41, '2018-03-15 09:00:00', '2018-03-15 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:50', '2018-03-30 09:06:50'),
(282, 41, '2018-03-16 09:00:00', '2018-03-16 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:52', '2018-03-30 09:06:52'),
(283, 41, '2018-03-13 09:00:00', '2018-03-13 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:54', '2018-03-30 09:06:54'),
(284, 41, '2018-03-12 09:00:00', '2018-03-12 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:56', '2018-03-30 09:06:56'),
(285, 41, '2018-03-20 09:00:00', '2018-03-20 18:00:00', '09:00:00', NULL, '2018-03-30 09:06:58', '2018-03-30 09:06:58'),
(286, 41, '2018-03-21 09:00:00', '2018-03-21 18:00:00', '09:00:00', NULL, '2018-03-30 09:07:02', '2018-03-30 09:07:02'),
(287, 41, '2018-03-22 09:00:00', '2018-03-22 18:00:00', '09:00:00', NULL, '2018-03-30 09:07:04', '2018-03-30 09:07:04'),
(288, 41, '2018-03-23 09:00:00', '2018-03-23 18:00:00', '09:00:00', NULL, '2018-03-30 09:07:06', '2018-03-30 09:07:06'),
(289, 41, '2018-03-26 09:00:00', '2018-03-26 18:00:00', '09:00:00', NULL, '2018-03-30 09:07:09', '2018-03-30 09:07:09'),
(290, 41, '2018-03-27 09:00:00', '2018-03-27 18:00:00', '09:00:00', NULL, '2018-03-30 09:07:11', '2018-03-30 09:07:11'),
(291, 41, '2018-03-28 09:00:00', '2018-03-28 18:00:00', '09:00:00', NULL, '2018-03-30 09:07:13', '2018-03-30 09:07:13'),
(292, 41, '2018-03-29 09:00:00', '2018-03-29 18:00:00', '09:00:00', NULL, '2018-03-30 09:07:15', '2018-03-30 09:07:15'),
(293, 41, '2018-03-30 09:00:00', '2018-03-30 18:00:00', '09:00:00', NULL, '2018-03-30 09:07:17', '2018-03-30 09:07:17'),
(294, 40, '2018-05-12 08:50:30', NULL, NULL, NULL, '2018-05-12 08:50:30', '2018-05-12 08:50:30'),
(295, 42, '2018-06-01 09:00:00', '2018-06-01 18:00:00', '09:00:00', NULL, '2018-05-12 15:39:32', '2018-05-12 15:39:32'),
(296, 40, '2018-05-15 00:24:57', NULL, NULL, NULL, '2018-05-15 00:24:57', '2018-05-15 00:24:57'),
(297, 41, '2018-05-15 12:09:02', '2018-05-15 13:24:08', '01:15:06', 'NO', '2018-05-15 12:09:02', '2018-05-15 13:24:08'),
(298, 40, '2018-05-16 09:07:07', '2018-05-16 23:49:01', '14:41:54', '541', '2018-05-16 09:07:07', '2018-05-16 23:49:01'),
(299, 42, '2017-12-01 09:00:00', '2017-12-01 18:00:00', '09:00:00', NULL, '2018-05-16 09:17:38', '2018-05-16 09:17:38'),
(300, 42, '2017-12-04 09:00:00', '2017-12-04 18:00:00', '09:00:00', NULL, '2018-05-16 09:17:47', '2018-05-16 09:17:47'),
(301, 42, '2018-05-16 13:45:15', NULL, NULL, NULL, '2018-05-16 13:45:15', '2018-05-16 13:45:15'),
(302, 41, '2018-05-16 18:35:10', NULL, NULL, NULL, '2018-05-16 18:35:10', '2018-05-16 18:35:10'),
(303, 40, '2018-05-16 23:49:07', NULL, NULL, NULL, '2018-05-16 23:49:07', '2018-05-16 23:49:07'),
(304, 40, '2018-05-17 05:08:37', NULL, NULL, NULL, '2018-05-17 05:08:37', '2018-05-17 05:08:37'),
(305, 41, '2018-05-17 18:17:49', NULL, NULL, NULL, '2018-05-17 18:17:49', '2018-05-17 18:17:49'),
(306, 40, '2018-07-13 17:15:40', '2018-07-13 17:15:51', '00:00:11', 'vvad', '2018-07-13 17:15:40', '2018-07-13 17:15:51'),
(307, 40, '2018-07-13 22:55:49', '2018-07-13 22:56:04', '00:00:15', 'Dikasdasad', '2018-07-13 22:55:49', '2018-07-13 22:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees_leaves`
--

CREATE TABLE `tbl_employees_leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `unread` tinyint(1) NOT NULL DEFAULT '1',
  `create_by` int(11) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approved_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_employees_leaves`
--

INSERT INTO `tbl_employees_leaves` (`id`, `employee_id`, `title`, `description`, `status`, `unread`, `create_by`, `approved_by`, `approved_description`, `created_at`, `updated_at`) VALUES
(1, 40, 'go for holiday', NULL, 0, 0, 40, NULL, NULL, '2018-05-16 19:39:16', '2018-05-17 00:25:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees_leaves_dates`
--

CREATE TABLE `tbl_employees_leaves_dates` (
  `id` int(10) UNSIGNED NOT NULL,
  `leave_id` int(10) UNSIGNED NOT NULL,
  `leave_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_employees_leaves_dates`
--

INSERT INTO `tbl_employees_leaves_dates` (`id`, `leave_id`, `leave_date`) VALUES
(2, 1, '2018-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees_ledger`
--

CREATE TABLE `tbl_employees_ledger` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `basic_pay` double(8,2) NOT NULL,
  `generated_pay` double(8,2) NOT NULL,
  `overtime` double(8,2) NOT NULL,
  `deduction` double(8,2) NOT NULL,
  `leave_deduction` double(8,2) DEFAULT NULL,
  `fixed_advance` double(8,2) NOT NULL,
  `temp_advance` double(8,2) NOT NULL,
  `amount` double(8,2) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_employees_ledger`
--

INSERT INTO `tbl_employees_ledger` (`id`, `employee_id`, `account_id`, `code`, `date`, `basic_pay`, `generated_pay`, `overtime`, `deduction`, `leave_deduction`, `fixed_advance`, `temp_advance`, `amount`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 41, 65, '00001', '2018-05-16', 2500.00, 445.60, 0.00, 179.40, 1875.00, 0.00, 0.00, 445.60, 34, '2018-05-16 09:39:50', '2018-05-16 09:39:50'),
(2, 42, 72, '00001', '2018-05-16', 3500.00, 875.00, 0.00, 291.67, 2333.33, 0.00, 0.00, 875.00, 34, '2018-05-16 18:13:24', '2018-05-16 18:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees_loans`
--

CREATE TABLE `tbl_employees_loans` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `datetime` date DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `installment` double DEFAULT NULL,
  `type` tinyint(4) DEFAULT '2',
  `status` tinyint(4) DEFAULT NULL,
  `unread` tinyint(1) DEFAULT '1',
  `approve_detail` text COLLATE utf8mb4_unicode_ci,
  `added_by` int(11) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_employees_loans`
--

INSERT INTO `tbl_employees_loans` (`id`, `employee_id`, `datetime`, `title`, `detail`, `amount`, `installment`, `type`, `status`, `unread`, `approve_detail`, `added_by`, `approved_by`, `created_at`, `updated_at`) VALUES
(1, 41, '2018-05-16', '2', '2', 2500, 24, 1, 1, 0, NULL, 34, 34, '2018-05-16 08:45:10', '2018-05-16 08:45:10'),
(2, 40, '2018-05-17', 'test', 'test', 5000, NULL, 2, 0, 0, NULL, 40, NULL, '2018-05-16 19:38:47', '2018-05-17 16:02:34'),
(3, 40, '2018-05-17', 'Transpirt', '4141', 2400, NULL, 2, 0, 0, NULL, 40, NULL, '2018-05-17 13:43:35', '2018-05-17 16:02:34'),
(4, 40, '2018-07-13', 'dasldasda', 'dasldasda', 1000, 2, 2, 1, 0, NULL, 34, 34, '2018-07-13 23:02:28', '2018-07-13 23:02:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees_loans_request`
--

CREATE TABLE `tbl_employees_loans_request` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approve_detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees_loans_statements`
--

CREATE TABLE `tbl_employees_loans_statements` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `datetime` datetime NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` decimal(10,2) DEFAULT NULL,
  `withdraw` decimal(10,2) DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_employees_loans_statements`
--

INSERT INTO `tbl_employees_loans_statements` (`id`, `employee_id`, `datetime`, `detail`, `deposit`, `withdraw`, `type`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 41, '2018-05-16 00:00:00', '2', '0.00', '2500.00', 1, 34, '2018-05-16 08:45:10', '2018-05-16 08:45:10'),
(2, 40, '2018-07-13 00:00:00', 'dasldasda', '0.00', '1000.00', 2, 34, '2018-07-13 23:02:28', '2018-07-13 23:02:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees_login_attempt`
--

CREATE TABLE `tbl_employees_login_attempt` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_employees_login_attempt`
--

INSERT INTO `tbl_employees_login_attempt` (`id`, `username`, `ip_address`, `time`, `created_at`, `updated_at`) VALUES
(6, 'admin', '197.33.169.86', '1522398228', '2018-03-30 08:23:48', '2018-03-30 08:23:48'),
(7, 'Admin', '201.201.215.197', '1526102432', '2018-05-12 05:20:32', '2018-05-12 05:20:32'),
(8, 'admin', '201.201.215.197', '1526102454', '2018-05-12 05:20:54', '2018-05-12 05:20:54'),
(9, 'admin', '138.117.177.21', '1526102777', '2018-05-12 05:26:17', '2018-05-12 05:26:17'),
(10, 'Test', '172.68.255.152', '1526106530', '2018-05-12 06:28:50', '2018-05-12 06:28:50'),
(11, 'demo', '172.68.255.152', '1526106561', '2018-05-12 06:29:21', '2018-05-12 06:29:21'),
(12, 'user', '172.68.255.152', '1526106573', '2018-05-12 06:29:33', '2018-05-12 06:29:33'),
(13, 'admin', '190.232.110.13', '1526108007', '2018-05-12 06:53:27', '2018-05-12 06:53:27'),
(14, 'admin', '172.69.33.5', '1526112367', '2018-05-12 08:06:07', '2018-05-12 08:06:07'),
(15, 'admin', '212.11.168.106', '1526122906', '2018-05-12 11:01:46', '2018-05-12 11:01:46'),
(16, 'admin', '103.233.183.5', '1526156044', '2018-05-12 20:14:04', '2018-05-12 20:14:04'),
(17, 'admin', '103.233.183.5', '1526156057', '2018-05-12 20:14:17', '2018-05-12 20:14:17'),
(18, 'admin', '2a00:e60:7000:100:6::1', '1526173183', '2018-05-13 00:59:43', '2018-05-13 00:59:43'),
(19, 'admin', '59.94.24.164', '1526196989', '2018-05-13 07:36:29', '2018-05-13 07:36:29'),
(20, 'admin', '2001:16a2:527e:515:804d:2d12:f1d2:c0ec', '1526222454', '2018-05-13 14:40:54', '2018-05-13 14:40:54'),
(21, 'admin', '2001:16a2:527e:515:804d:2d12:f1d2:c0ec', '1526222475', '2018-05-13 14:41:15', '2018-05-13 14:41:15'),
(22, 'ss', '77.101.146.141', '1526237317', '2018-05-13 18:48:37', '2018-05-13 18:48:37'),
(23, 'Admin', '77.101.146.141', '1526237339', '2018-05-13 18:48:59', '2018-05-13 18:48:59'),
(24, 'admin', '113.193.46.35', '1526293182', '2018-05-14 10:19:42', '2018-05-14 10:19:42'),
(25, 'Maxer', '212.57.215.87', '1526300271', '2018-05-14 12:17:51', '2018-05-14 12:17:51'),
(26, 'admin', '85.204.225.11', '1526300801', '2018-05-14 12:26:41', '2018-05-14 12:26:41'),
(27, 'admin', '186.150.198.170', '1526301248', '2018-05-14 12:34:08', '2018-05-14 12:34:08'),
(28, 'admin', '186.150.198.170', '1526301254', '2018-05-14 12:34:14', '2018-05-14 12:34:14'),
(29, 'accounts', '172.69.134.39', '1526306034', '2018-05-14 13:53:54', '2018-05-14 13:53:54'),
(30, 'admin', '110.159.115.147', '1526312692', '2018-05-14 15:44:52', '2018-05-14 15:44:52'),
(31, 'admin', '118.179.82.116', '1526322859', '2018-05-14 18:34:19', '2018-05-14 18:34:19'),
(32, 'admin', '118.179.82.116', '1526322903', '2018-05-14 18:35:03', '2018-05-14 18:35:03'),
(33, 'Employee', '106.51.154.100', '1526343835', '2018-05-15 00:23:55', '2018-05-15 00:23:55'),
(34, 'Employee', '106.51.154.100', '1526343850', '2018-05-15 00:24:10', '2018-05-15 00:24:10'),
(35, 'admin', '2601:586:8300:75c0:d06f:efb5:723:858f', '1526348135', '2018-05-15 01:35:35', '2018-05-15 01:35:35'),
(36, 'admin', '2001:16a2:5775:7d53:75d5:3e8b:7a09:1618', '1526357690', '2018-05-15 04:14:50', '2018-05-15 04:14:50'),
(37, 'admin', '2001:16a2:5775:7d53:75d5:3e8b:7a09:1618', '1526357731', '2018-05-15 04:15:31', '2018-05-15 04:15:31'),
(38, 'admin', '2001:16a2:5775:7d53:75d5:3e8b:7a09:1618', '1526357740', '2018-05-15 04:15:40', '2018-05-15 04:15:40'),
(39, 'admin', '2405:204:b304:2d77:4063:6378:a7a:7d56', '1526368906', '2018-05-15 07:21:46', '2018-05-15 07:21:46'),
(40, 'demo', '49.248.197.34', '1526369294', '2018-05-15 07:28:14', '2018-05-15 07:28:14'),
(41, 'admin', '49.248.197.34', '1526369324', '2018-05-15 07:28:44', '2018-05-15 07:28:44'),
(42, 'admin', '128.199.193.75', '1526372886', '2018-05-15 08:28:06', '2018-05-15 08:28:06'),
(43, 'admin', '86.97.11.68', '1526374244', '2018-05-15 08:50:44', '2018-05-15 08:50:44'),
(44, 'admin', '86.97.11.68', '1526374256', '2018-05-15 08:50:56', '2018-05-15 08:50:56'),
(45, 'admin', '41.242.89.95', '1526387403', '2018-05-15 12:30:03', '2018-05-15 12:30:03'),
(46, 'admin', '41.242.89.95', '1526387473', '2018-05-15 12:31:13', '2018-05-15 12:31:13'),
(47, 'admin', '41.242.89.95', '1526387512', '2018-05-15 12:31:52', '2018-05-15 12:31:52'),
(48, 'admin', '93.89.64.66', '1526392783', '2018-05-15 13:59:43', '2018-05-15 13:59:43'),
(49, 'admin', '2405:204:e08c:ad4b:e584:1407:eb5c:cb80', '1526400033', '2018-05-15 16:00:33', '2018-05-15 16:00:33'),
(50, 'admin', '190.236.207.251', '1526405581', '2018-05-15 17:33:01', '2018-05-15 17:33:01'),
(51, 'admin', '93.33.172.36', '1526407346', '2018-05-15 18:02:26', '2018-05-15 18:02:26'),
(52, 'admin', '172.68.255.134', '1526416258', '2018-05-15 20:30:58', '2018-05-15 20:30:58'),
(53, 'admin', '172.68.255.134', '1526416266', '2018-05-15 20:31:06', '2018-05-15 20:31:06'),
(54, 'admin', '172.68.255.134', '1526416280', '2018-05-15 20:31:20', '2018-05-15 20:31:20'),
(55, 'admin', '105.112.96.39', '1526424287', '2018-05-15 22:44:47', '2018-05-15 22:44:47'),
(56, 'admin', '94.63.48.172', '1526428448', '2018-05-15 23:54:08', '2018-05-15 23:54:08'),
(57, 'admin', '171.79.196.8', '1526439049', '2018-05-16 02:50:49', '2018-05-16 02:50:49'),
(58, 'admin', '171.79.196.8', '1526439087', '2018-05-16 02:51:27', '2018-05-16 02:51:27'),
(59, 'hr', '111.67.77.162', '1526440420', '2018-05-16 03:13:40', '2018-05-16 03:13:40'),
(60, 'hr', '111.67.77.162', '1526440435', '2018-05-16 03:13:55', '2018-05-16 03:13:55'),
(61, 'admin', '43.241.145.39', '1526441449', '2018-05-16 03:30:49', '2018-05-16 03:30:49'),
(62, 'admin', '176.88.38.247', '1526446762', '2018-05-16 04:59:22', '2018-05-16 04:59:22'),
(63, 'admin', '202.62.92.222', '1526447855', '2018-05-16 05:17:35', '2018-05-16 05:17:35'),
(64, 'iannis', '79.81.183.6', '1526450882', '2018-05-16 06:08:02', '2018-05-16 06:08:02'),
(65, 'admin', '172.68.146.92', '1526452933', '2018-05-16 06:42:13', '2018-05-16 06:42:13'),
(66, 'admin', '172.68.245.43', '1526453556', '2018-05-16 06:52:36', '2018-05-16 06:52:36'),
(67, 'test', '210.183.228.19', '1526453641', '2018-05-16 06:54:01', '2018-05-16 06:54:01'),
(68, 'demo', '172.68.126.22', '1526459948', '2018-05-16 08:39:08', '2018-05-16 08:39:08'),
(69, 'admin', '172.68.126.22', '1526459956', '2018-05-16 08:39:16', '2018-05-16 08:39:16'),
(70, 'demo', '83.220.239.196', '1526460483', '2018-05-16 08:48:03', '2018-05-16 08:48:03'),
(71, 'Admin', '83.220.239.196', '1526460503', '2018-05-16 08:48:23', '2018-05-16 08:48:23'),
(72, 'Admin', '83.220.239.196', '1526460541', '2018-05-16 08:49:01', '2018-05-16 08:49:01'),
(73, 'employee', '197.96.90.83', '1526461585', '2018-05-16 09:06:25', '2018-05-16 09:06:25'),
(74, 'demo', '79.148.172.120', '1526462024', '2018-05-16 09:13:44', '2018-05-16 09:13:44'),
(75, 'Maxer', '79.148.172.120', '1526462074', '2018-05-16 09:14:34', '2018-05-16 09:14:34'),
(78, 'admin', '110.36.223.245', '1526463414', '2018-05-16 09:36:54', '2018-05-16 09:36:54'),
(79, 'admin', '129.0.40.249', '1526464082', '2018-05-16 09:48:02', '2018-05-16 09:48:02'),
(80, 'admin', '41.238.184.163', '1526466744', '2018-05-16 10:32:24', '2018-05-16 10:32:24'),
(81, 'admin', '27.4.12.16', '1526467185', '2018-05-16 10:39:45', '2018-05-16 10:39:45'),
(82, 'admin', '172.68.150.28', '1526470537', '2018-05-16 11:35:37', '2018-05-16 11:35:37'),
(83, 'admin', '172.68.150.28', '1526470578', '2018-05-16 11:36:18', '2018-05-16 11:36:18'),
(84, 'admin', '172.68.146.116', '1526470664', '2018-05-16 11:37:44', '2018-05-16 11:37:44'),
(85, 'admin', '172.68.146.116', '1526470678', '2018-05-16 11:37:58', '2018-05-16 11:37:58'),
(86, 'admin', '172.68.146.116', '1526470725', '2018-05-16 11:38:45', '2018-05-16 11:38:45'),
(87, 'admin', '172.68.255.38', '1526471539', '2018-05-16 11:52:19', '2018-05-16 11:52:19'),
(88, 'admin', '186.121.246.10', '1526472512', '2018-05-16 12:08:32', '2018-05-16 12:08:32'),
(89, 'admin', '156.197.9.9', '1526472637', '2018-05-16 12:10:37', '2018-05-16 12:10:37'),
(90, 'Admin', '172.68.142.221', '1526475615', '2018-05-16 13:00:15', '2018-05-16 13:00:15'),
(91, 'Admin', '172.68.142.221', '1526475650', '2018-05-16 13:00:50', '2018-05-16 13:00:50'),
(92, 'Admin', '172.68.142.221', '1526475846', '2018-05-16 13:04:06', '2018-05-16 13:04:06'),
(93, 'test', '107.77.89.19', '1526475900', '2018-05-16 13:05:00', '2018-05-16 13:05:00'),
(94, 'admin', '172.68.254.235', '1526475936', '2018-05-16 13:05:36', '2018-05-16 13:05:36'),
(95, 'hr', '5.198.112.29', '1526478188', '2018-05-16 13:43:08', '2018-05-16 13:43:08'),
(96, 'demo', '41.210.154.137', '1526480603', '2018-05-16 14:23:23', '2018-05-16 14:23:23'),
(97, 'admin', '41.210.154.137', '1526480618', '2018-05-16 14:23:38', '2018-05-16 14:23:38'),
(98, 'admin', '115.178.208.125', '1526483465', '2018-05-16 15:11:05', '2018-05-16 15:11:05'),
(99, 'admin', '168.243.28.8', '1526484220', '2018-05-16 15:23:40', '2018-05-16 15:23:40'),
(100, 'admin', '172.69.134.147', '1526484518', '2018-05-16 15:28:38', '2018-05-16 15:28:38'),
(101, 'maxer@maxer.ae', '172.69.134.147', '1526485114', '2018-05-16 15:38:34', '2018-05-16 15:38:34'),
(102, 'demo', '172.69.86.40', '1526485274', '2018-05-16 15:41:14', '2018-05-16 15:41:14'),
(103, 'admin', '172.68.146.38', '1526486056', '2018-05-16 15:54:16', '2018-05-16 15:54:16'),
(104, 'admin', '182.0.140.57', '1526488251', '2018-05-16 16:30:51', '2018-05-16 16:30:51'),
(105, 'admin', '90.77.224.9', '1526488747', '2018-05-16 16:39:07', '2018-05-16 16:39:07'),
(107, 'admin', '172.69.134.81', '1526490627', '2018-05-16 17:10:27', '2018-05-16 17:10:27'),
(108, 'admin', '172.68.144.61', '1526490861', '2018-05-16 17:14:21', '2018-05-16 17:14:21'),
(109, 'admin', '95.146.52.201', '1526492760', '2018-05-16 17:46:00', '2018-05-16 17:46:00'),
(110, 'admin', '95.146.52.201', '1526492766', '2018-05-16 17:46:06', '2018-05-16 17:46:06'),
(111, 'adadmin', '172.68.146.128', '1526493170', '2018-05-16 17:52:50', '2018-05-16 17:52:50'),
(112, 'admin', '172.69.226.89', '1526493607', '2018-05-16 18:00:07', '2018-05-16 18:00:07'),
(113, 'admin', '2405:204:3307:3892:75d6:5d32:796e:2e46', '1526494025', '2018-05-16 18:07:05', '2018-05-16 18:07:05'),
(114, 'hr', '172.68.144.247', '1526499030', '2018-05-16 19:30:30', '2018-05-16 19:30:30'),
(115, 'admin', '172.68.42.28', '1526499196', '2018-05-16 19:33:16', '2018-05-16 19:33:16'),
(116, 'Hr', '172.68.144.247', '1526499311', '2018-05-16 19:35:11', '2018-05-16 19:35:11'),
(117, 'hr', '172.68.144.247', '1526499319', '2018-05-16 19:35:19', '2018-05-16 19:35:19'),
(118, 'admin', '172.68.42.28', '1526499360', '2018-05-16 19:36:00', '2018-05-16 19:36:00'),
(119, 'admin', '172.68.42.28', '1526499368', '2018-05-16 19:36:08', '2018-05-16 19:36:08'),
(120, 'Admin', '41.193.131.127', '1526499644', '2018-05-16 19:40:44', '2018-05-16 19:40:44'),
(121, 'admin', '172.68.218.46', '1526499796', '2018-05-16 19:43:16', '2018-05-16 19:43:16'),
(122, 'admin', '85.193.219.204', '1526500981', '2018-05-16 20:03:01', '2018-05-16 20:03:01'),
(123, 'admin', '105.66.6.215', '1526502995', '2018-05-16 20:36:35', '2018-05-16 20:36:35'),
(124, 'demo', '2606:2e00:8003:10::1:2a89', '1526503747', '2018-05-16 20:49:07', '2018-05-16 20:49:07'),
(125, 'admin', '200.199.179.60', '1526504667', '2018-05-16 21:04:27', '2018-05-16 21:04:27'),
(126, 'admin', '172.68.27.228', '1526505007', '2018-05-16 21:10:07', '2018-05-16 21:10:07'),
(127, 'admin', '172.68.42.28', '1526505393', '2018-05-16 21:16:33', '2018-05-16 21:16:33'),
(128, 'hr', '172.68.42.28', '1526506053', '2018-05-16 21:27:33', '2018-05-16 21:27:33'),
(129, 'admin', '2402:b400:4083:dd09:5d1e:6b8f:fc0d:ab10', '1526506089', '2018-05-16 21:28:09', '2018-05-16 21:28:09'),
(130, 'admin', '2402:b400:4083:dd09:5d1e:6b8f:fc0d:ab10', '1526506095', '2018-05-16 21:28:15', '2018-05-16 21:28:15'),
(131, 'admin', '172.68.62.142', '1526507376', '2018-05-16 21:49:36', '2018-05-16 21:49:36'),
(132, 'hr', '172.68.62.142', '1526507512', '2018-05-16 21:51:52', '2018-05-16 21:51:52'),
(133, 'admin', '197.210.11.4', '1526508430', '2018-05-16 22:07:10', '2018-05-16 22:07:10'),
(134, 'admin', '172.68.62.226', '1526511028', '2018-05-16 22:50:28', '2018-05-16 22:50:28'),
(135, 'Osrar', '42.201.251.185', '1526514734', '2018-05-16 23:52:14', '2018-05-16 23:52:14'),
(136, 'Admin', '42.201.251.185', '1526514891', '2018-05-16 23:54:51', '2018-05-16 23:54:51'),
(137, 'admin', '42.201.251.185', '1526514931', '2018-05-16 23:55:31', '2018-05-16 23:55:31'),
(138, 'admin', '42.201.251.185', '1526514946', '2018-05-16 23:55:46', '2018-05-16 23:55:46'),
(139, 'israr@atechsworld.com', '42.201.251.185', '1526515228', '2018-05-17 00:00:28', '2018-05-17 00:00:28'),
(140, 'admin', '89.155.231.117', '1526515688', '2018-05-17 00:08:08', '2018-05-17 00:08:08'),
(141, 'admin', '172.69.78.58', '1526515927', '2018-05-17 00:12:07', '2018-05-17 00:12:07'),
(142, 'demo', '176.41.219.46', '1526518854', '2018-05-17 01:00:54', '2018-05-17 01:00:54'),
(143, 'admin', '172.69.206.4', '1526533492', '2018-05-17 05:04:52', '2018-05-17 05:04:52'),
(144, 'admin', '176.88.225.150', '1526536373', '2018-05-17 05:52:53', '2018-05-17 05:52:53'),
(145, 'Admin', '190.113.114.35', '1526536549', '2018-05-17 05:55:49', '2018-05-17 05:55:49'),
(146, 'Admin', '190.113.114.35', '1526536570', '2018-05-17 05:56:10', '2018-05-17 05:56:10'),
(147, 'admin', '190.113.114.35', '1526536618', '2018-05-17 05:56:58', '2018-05-17 05:56:58'),
(148, 'admin', '36.72.216.113', '1526536743', '2018-05-17 05:59:03', '2018-05-17 05:59:03'),
(149, 'admin', '36.72.216.113', '1526536790', '2018-05-17 05:59:50', '2018-05-17 05:59:50'),
(150, 'admin', '36.72.216.113', '1526536810', '2018-05-17 06:00:10', '2018-05-17 06:00:10'),
(151, 'Admin', '172.68.144.193', '1526542092', '2018-05-17 07:28:12', '2018-05-17 07:28:12'),
(152, 'admin', '172.68.144.193', '1526542104', '2018-05-17 07:28:24', '2018-05-17 07:28:24'),
(153, 'admin123', '178.250.94.74', '1526545657', '2018-05-17 08:27:37', '2018-05-17 08:27:37'),
(154, 'Admin123', '178.250.94.74', '1526545680', '2018-05-17 08:28:00', '2018-05-17 08:28:00'),
(155, 'Admin123', '178.250.94.74', '1526545729', '2018-05-17 08:28:49', '2018-05-17 08:28:49'),
(156, 'admin', '88.228.243.68', '1526555416', '2018-05-17 11:10:16', '2018-05-17 11:10:16'),
(157, 'admin', '88.228.243.68', '1526555431', '2018-05-17 11:10:31', '2018-05-17 11:10:31'),
(158, 'admin', '154.125.6.41', '1526556525', '2018-05-17 11:28:45', '2018-05-17 11:28:45'),
(159, 'admin', '154.125.6.41', '1526556534', '2018-05-17 11:28:54', '2018-05-17 11:28:54'),
(160, 'admin', '195.175.75.42', '1526556771', '2018-05-17 11:32:51', '2018-05-17 11:32:51'),
(161, 'Admin', '82.132.247.12', '1526557193', '2018-05-17 11:39:53', '2018-05-17 11:39:53'),
(162, 'admin', '47.8.115.66', '1526557491', '2018-05-17 11:44:51', '2018-05-17 11:44:51'),
(163, 'demo', '172.69.134.249', '1526557497', '2018-05-17 11:44:57', '2018-05-17 11:44:57'),
(164, 'admin', '172.69.134.249', '1526557503', '2018-05-17 11:45:03', '2018-05-17 11:45:03'),
(165, 'admin', '172.69.134.249', '1526557519', '2018-05-17 11:45:19', '2018-05-17 11:45:19'),
(166, 'admin', '172.69.134.249', '1526557531', '2018-05-17 11:45:31', '2018-05-17 11:45:31'),
(167, 'admin', '47.8.115.66', '1526558070', '2018-05-17 11:54:30', '2018-05-17 11:54:30'),
(168, 'admin', '80.12.41.254', '1526560283', '2018-05-17 12:31:23', '2018-05-17 12:31:23'),
(169, 'admin', '80.12.41.254', '1526560307', '2018-05-17 12:31:47', '2018-05-17 12:31:47'),
(170, 'admin', '103.70.125.125', '1526560679', '2018-05-17 12:37:59', '2018-05-17 12:37:59'),
(171, 'Hr123456', '81.88.144.89', '1526561633', '2018-05-17 12:53:53', '2018-05-17 12:53:53'),
(172, 'Accounts123', '81.88.144.89', '1526561672', '2018-05-17 12:54:32', '2018-05-17 12:54:32'),
(173, 'Admin123', '81.88.144.89', '1526561752', '2018-05-17 12:55:52', '2018-05-17 12:55:52'),
(174, 'admin123', '81.88.144.89', '1526561783', '2018-05-17 12:56:23', '2018-05-17 12:56:23'),
(175, 'etukenbx', '41.190.3.176', '1526561987', '2018-05-17 12:59:47', '2018-05-17 12:59:47'),
(176, 'etukenbx', '41.190.3.176', '1526561988', '2018-05-17 12:59:48', '2018-05-17 12:59:48'),
(177, 'etukenbx', '41.190.3.176', '1526561988', '2018-05-17 12:59:48', '2018-05-17 12:59:48'),
(178, 'admin', '49.205.10.162', '1526563145', '2018-05-17 13:19:05', '2018-05-17 13:19:05'),
(179, 'admin', '103.195.233.194', '1526569520', '2018-05-17 15:05:20', '2018-05-17 15:05:20'),
(180, 'hr', '103.195.233.194', '1526569810', '2018-05-17 15:10:10', '2018-05-17 15:10:10'),
(181, 'demo', '39.59.5.115', '1526573044', '2018-05-17 16:04:04', '2018-05-17 16:04:04'),
(182, 'admin', '39.59.5.115', '1526573049', '2018-05-17 16:04:09', '2018-05-17 16:04:09'),
(183, 'admin', '172.69.134.195', '1526575682', '2018-05-17 16:48:02', '2018-05-17 16:48:02'),
(184, 'admin', '179.52.41.81', '1526577278', '2018-05-17 17:14:38', '2018-05-17 17:14:38'),
(185, 'Admin123', '179.52.41.81', '1526577316', '2018-05-17 17:15:16', '2018-05-17 17:15:16'),
(186, 'demo', '172.68.78.28', '1526577667', '2018-05-17 17:21:07', '2018-05-17 17:21:07'),
(187, 'patryck', '179.52.41.81', '1526577922', '2018-05-17 17:25:22', '2018-05-17 17:25:22'),
(189, 'admib', '127.0.0.1', '1531501116', '2018-07-13 16:58:36', '2018-07-13 16:58:36'),
(190, 'admin', '127.0.0.1', '1531501124', '2018-07-13 16:58:44', '2018-07-13 16:58:44'),
(191, 'admin', '127.0.0.1', '1531501208', '2018-07-13 17:00:08', '2018-07-13 17:00:08'),
(192, 'admiin', '127.0.0.1', '1531501221', '2018-07-13 17:00:21', '2018-07-13 17:00:21'),
(193, 'admin', '127.0.0.1', '1531501233', '2018-07-13 17:00:33', '2018-07-13 17:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees_official_leaves`
--

CREATE TABLE `tbl_employees_official_leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees_official_leaves_dates`
--

CREATE TABLE `tbl_employees_official_leaves_dates` (
  `id` int(10) UNSIGNED NOT NULL,
  `leave_id` int(10) UNSIGNED NOT NULL,
  `leave_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees_permissions`
--

CREATE TABLE `tbl_employees_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_employees_permissions`
--

INSERT INTO `tbl_employees_permissions` (`id`, `name`, `title`) VALUES
(1, 'MANAGE_USERS', 'Manage Users'),
(2, 'MANAGE_USERS_GROUPS', 'Manage Users Groups'),
(3, 'MANAGE_SHIFT', 'Manage Shift'),
(4, 'MANAGE_DEPARTMENTS', 'Manage Departments'),
(5, 'MANAGE_DESIGNATION', 'Manage Designation'),
(6, 'MANAGE_EMPLOYEES', 'Manage Employees'),
(7, 'MANAGE_OFFICIAL_LEAVES', 'Manage Official Leaves'),
(8, 'MANAGE_EMPLOYEES_LOANS', 'Manage Employees Loans'),
(9, 'EMPLOYEE_ROLES', 'Manage Employee Roles'),
(10, 'MANAGE_EMPLOYEES_LEAVES', 'Manage Employees Leaves'),
(11, 'NOTICEBOARD_MANAGE', 'Manage Noticeboard'),
(12, 'SALARIES_CREATED', 'Salaries Created'),
(13, 'SALARIES_MANAGER', 'Salaries Manager'),
(14, 'CUSTOMERS_SECTION', 'Customers Section'),
(15, 'VENDORS_SECTION', 'Vendors Section'),
(16, 'SALES', 'Sales'),
(17, 'PURCHASE', 'Purchase'),
(18, 'EXPENSES', 'Expenses'),
(19, 'FINANCE', 'Finance'),
(20, 'SALE_REPORTS', 'Sale Reports'),
(21, 'PURCHASE_REPORTS', 'Purchase Reports'),
(22, 'EXPENSES_REPORT', 'Expenses Report'),
(23, 'ACCOUNTS_REPORTS', 'Accounts Reports'),
(24, 'SETTING', 'Settings'),
(25, 'EMPLOYEE_ATTENDANCE_REPORT', 'Employee Attendance Report'),
(26, 'MANAGE_ATTENDANCE', 'Manage Attendance'),
(27, 'EMAIL_TEMPLATES', 'Email Templates'),
(28, 'MANAGE_APPLY_LOAN', 'Manage Apply Loan'),
(29, 'MANAGE_APPLY_LEAVES', 'Manage Apply Leaves');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees_qualifications`
--

CREATE TABLE `tbl_employees_qualifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `degree_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `total_marks` int(11) DEFAULT NULL,
  `obtain_marks` int(11) DEFAULT NULL,
  `grade` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_country` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees_roles`
--

CREATE TABLE `tbl_employees_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_employees_roles`
--

INSERT INTO `tbl_employees_roles` (`id`, `title`, `description`, `default`, `permissions`) VALUES
(1, 'Administrator', 'Administrator', 1, 'a:27:{s:12:\"MANAGE_USERS\";s:4:\"true\";s:19:\"MANAGE_USERS_GROUPS\";s:4:\"true\";s:12:\"MANAGE_SHIFT\";s:4:\"true\";s:18:\"MANAGE_DEPARTMENTS\";s:4:\"true\";s:18:\"MANAGE_DESIGNATION\";s:4:\"true\";s:16:\"MANAGE_EMPLOYEES\";s:4:\"true\";s:22:\"MANAGE_OFFICIAL_LEAVES\";s:4:\"true\";s:22:\"MANAGE_EMPLOYEES_LOANS\";s:4:\"true\";s:14:\"EMPLOYEE_ROLES\";s:4:\"true\";s:23:\"MANAGE_EMPLOYEES_LEAVES\";s:4:\"true\";s:18:\"NOTICEBOARD_MANAGE\";s:4:\"true\";s:16:\"SALARIES_CREATED\";s:4:\"true\";s:16:\"SALARIES_MANAGER\";s:4:\"true\";s:17:\"CUSTOMERS_SECTION\";s:4:\"true\";s:15:\"VENDORS_SECTION\";s:4:\"true\";s:5:\"SALES\";s:4:\"true\";s:8:\"PURCHASE\";s:4:\"true\";s:8:\"EXPENSES\";s:4:\"true\";s:7:\"FINANCE\";s:4:\"true\";s:12:\"SALE_REPORTS\";s:4:\"true\";s:16:\"PURCHASE_REPORTS\";s:4:\"true\";s:15:\"EXPENSES_REPORT\";s:4:\"true\";s:16:\"ACCOUNTS_REPORTS\";s:4:\"true\";s:7:\"SETTING\";s:4:\"true\";s:26:\"EMPLOYEE_ATTENDANCE_REPORT\";s:4:\"true\";s:17:\"MANAGE_ATTENDANCE\";s:4:\"true\";s:15:\"EMAIL_TEMPLATES\";s:4:\"true\";}'),
(5, 'Employee', 'Employee', 0, 'a:2:{s:17:\"MANAGE_APPLY_LOAN\";s:4:\"true\";s:19:\"MANAGE_APPLY_LEAVES\";s:4:\"true\";}'),
(6, 'Accounts', NULL, 0, 'a:10:{s:17:\"CUSTOMERS_SECTION\";s:4:\"true\";s:15:\"VENDORS_SECTION\";s:4:\"true\";s:5:\"SALES\";s:4:\"true\";s:8:\"PURCHASE\";s:4:\"true\";s:8:\"EXPENSES\";s:4:\"true\";s:7:\"FINANCE\";s:4:\"true\";s:12:\"SALE_REPORTS\";s:4:\"true\";s:16:\"PURCHASE_REPORTS\";s:4:\"true\";s:15:\"EXPENSES_REPORT\";s:4:\"true\";s:16:\"ACCOUNTS_REPORTS\";s:4:\"true\";}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees_salary`
--

CREATE TABLE `tbl_employees_salary` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED DEFAULT NULL,
  `salary_date` date DEFAULT NULL,
  `basic_pay` double UNSIGNED DEFAULT NULL,
  `generated_pay` double NOT NULL DEFAULT '0',
  `overtime` double UNSIGNED DEFAULT NULL,
  `deduction` double UNSIGNED DEFAULT NULL,
  `leave_deduction` double NOT NULL,
  `fix_advance` double UNSIGNED DEFAULT NULL,
  `temp_advance` double UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_employees_salary`
--

INSERT INTO `tbl_employees_salary` (`id`, `employee_id`, `salary_date`, `basic_pay`, `generated_pay`, `overtime`, `deduction`, `leave_deduction`, `fix_advance`, `temp_advance`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 42, '2018-03-01', 3500, 3340.91, 0, 0, 159.09, 0, 0, 0, 34, 34, '2018-03-30 09:08:19', '2018-03-30 09:08:19'),
(2, 40, '2018-05-01', 5000, 416.67, 0, 833.33, 3750, 0, 0, 0, 42, 42, '2018-05-16 03:14:52', '2018-05-16 03:14:52'),
(3, 41, '2018-05-01', 2500, 445.6, 0, 179.4, 1875, 0, 0, 1, 34, 34, '2018-05-16 05:19:53', '2018-05-16 09:39:50'),
(4, 42, '2018-05-01', 3500, 875, 0, 291.67, 2333.33, 0, 0, 1, 34, 34, '2018-05-16 14:32:57', '2018-05-16 18:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees_salary_type`
--

CREATE TABLE `tbl_employees_salary_type` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employees_salary_type`
--

INSERT INTO `tbl_employees_salary_type` (`id`, `title`) VALUES
(1, 'Hourly'),
(2, 'Monthly');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees_type`
--

CREATE TABLE `tbl_employees_type` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employees_type`
--

INSERT INTO `tbl_employees_type` (`id`, `title`) VALUES
(1, 'Contract'),
(2, 'Permanent');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees_work_experience`
--

CREATE TABLE `tbl_employees_work_experience` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `current_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gender`
--

CREATE TABLE `tbl_gender` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gender`
--

INSERT INTO `tbl_gender` (`id`, `title`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login_attempt`
--

CREATE TABLE `tbl_login_attempt` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_maritals`
--

CREATE TABLE `tbl_maritals` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_maritals`
--

INSERT INTO `tbl_maritals` (`id`, `title`) VALUES
(1, 'Single'),
(2, 'Married'),
(3, 'Divorce');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_noticeboard`
--

CREATE TABLE `tbl_noticeboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `type` tinyint(3) UNSIGNED DEFAULT NULL,
  `unread` tinyint(3) UNSIGNED DEFAULT '1',
  `added_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_noticeboard`
--

INSERT INTO `tbl_noticeboard` (`id`, `datetime`, `title`, `description`, `type`, `unread`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '2018-07-13 00:00:00', 'DISMISSAL', '<p>IT has casfihas;dk\'sadas<br></p>', 1, 0, 34, '2018-07-13 22:58:29', '2018-07-13 22:58:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase`
--

CREATE TABLE `tbl_purchase` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `sub_total` double UNSIGNED DEFAULT NULL,
  `discount` double UNSIGNED DEFAULT NULL,
  `total` double UNSIGNED DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL,
  `paid_status` tinyint(4) NOT NULL,
  `added_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_purchase`
--

INSERT INTO `tbl_purchase` (`id`, `invoice_number`, `reference`, `vendor_id`, `invoice_date`, `due_date`, `sub_total`, `discount`, `total`, `note`, `status`, `paid_status`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '00001', NULL, 1, '2018-05-16', '2018-05-23', 1500, 0, 1500, NULL, 0, 3, 34, '2018-05-16 17:29:10', '2018-05-16 17:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_detail`
--

CREATE TABLE `tbl_purchase_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL DEFAULT '1',
  `unit_price` double NOT NULL DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_purchase_detail`
--

INSERT INTO `tbl_purchase_detail` (`id`, `sale_id`, `title`, `description`, `qty`, `unit_price`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 'TST', 'TST', 10, 150, 1500, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_ledger`
--

CREATE TABLE `tbl_purchase_ledger` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `payment_no` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `references` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `added_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales`
--

CREATE TABLE `tbl_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `sub_total` double UNSIGNED DEFAULT NULL,
  `discount` double UNSIGNED DEFAULT NULL,
  `total` double UNSIGNED DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `paid_status` tinyint(4) NOT NULL DEFAULT '3',
  `added_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_sales`
--

INSERT INTO `tbl_sales` (`id`, `invoice_number`, `reference`, `customer_id`, `invoice_date`, `due_date`, `sub_total`, `discount`, `total`, `note`, `status`, `paid_status`, `added_by`, `created_at`, `updated_at`) VALUES
(8, '00002', NULL, 5, '2018-03-30', '2018-04-30', 17000, 0, 17000, NULL, 0, 3, 34, '2018-03-30 07:58:15', '2018-03-30 07:58:15'),
(11, '00005', NULL, 5, '2018-05-13', '2018-05-13', 13513500, 0, 13513500, NULL, 0, 3, 34, '2018-05-13 11:38:51', '2018-05-13 11:38:51'),
(12, '00006', NULL, 5, '2018-05-14', '2018-05-14', 0, 0, 0, NULL, 0, 3, 34, '2018-05-14 05:43:44', '2018-05-14 05:43:44'),
(15, '00009', '45665', 5, '2018-05-15', '2018-05-15', 21200, 0, 21200, 'salam', 0, 3, 34, '2018-05-15 19:31:21', '2018-05-15 19:31:21'),
(16, '00010', NULL, 5, '2018-05-16', '2018-05-16', 2000, 0, 2000, NULL, 0, 3, 34, '2018-05-16 05:21:31', '2018-05-16 05:21:31'),
(17, '00011', NULL, 5, '2018-05-16', '2018-05-16', 4600, 0, 4600, 'OTIG', 0, 3, 34, '2018-05-16 15:45:03', '2018-05-16 15:45:03'),
(18, '00012', NULL, 5, '2018-05-16', '2018-05-16', 545757, 0, 545757, NULL, 0, 3, 34, '2018-05-16 16:11:40', '2018-05-16 16:11:40'),
(19, '00013', NULL, 6, '2018-05-17', '2018-05-17', 100, 0, 100, NULL, 0, 3, 34, '2018-05-17 00:13:17', '2018-05-17 00:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_detail`
--

CREATE TABLE `tbl_sales_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL DEFAULT '1',
  `unit_price` double DEFAULT NULL,
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_sales_detail`
--

INSERT INTO `tbl_sales_detail` (`id`, `sale_id`, `title`, `description`, `qty`, `unit_price`, `amount`) VALUES
(16, 8, 't shirt', 'brown shirt', 10, 500, 5000),
(17, 8, 'pents', 'levise pant', 10, 1200, 12000),
(20, 11, 'ELMA', NULL, 900, 15, 13500),
(21, 11, 'ARMUT', NULL, 900, 15000, 13500000),
(22, 12, NULL, NULL, 1, 0, 0),
(27, 15, 'cards', '100 cards', 1, 1200, 1200),
(28, 15, '8996790', NULL, 1, 20000, 20000),
(29, 16, 't', 'ttttt', 1, 2000, 2000),
(30, 17, 'nnil', 'blank', 5, 900, 4500),
(31, 17, 'sdxbAIX', 'IXBIQS', 1, 100, 100),
(32, 18, 'gsdgds', 'dsgdsg', 1, 545757, 545757),
(33, 19, 'computer', 'computer', 1, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_ledger`
--

CREATE TABLE `tbl_sales_ledger` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `payment_no` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `references` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `added_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `config_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci,
  `serialized` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `config_name`, `config_value`, `serialized`, `created_at`, `updated_at`) VALUES
(1, 'BUSINESS_NAME', 'EhealthAfrica Erp System', 0, '2018-07-13 19:37:00', '2017-09-22 22:15:09'),
(2, 'GMAIL_DRIVER', 'smtp', 0, '2017-11-15 00:11:00', '0000-00-00 00:00:00'),
(3, 'GMAIL_HOST', 'smtp.gmail.com', 0, '2017-11-15 02:40:09', '0000-00-00 00:00:00'),
(4, 'GMAIL_PORT', '587', 0, '2017-11-15 02:44:22', '0000-00-00 00:00:00'),
(5, 'GMAIL_USERNAME', 'example@gmail.com', 0, '2018-02-07 00:02:11', '0000-00-00 00:00:00'),
(6, 'GMAIL_PASSWORD', 'example', 0, '2018-02-07 00:02:11', '0000-00-00 00:00:00'),
(7, 'GMAIL_ENCRYPTION', 'tls', 0, '2017-11-15 02:44:22', '0000-00-00 00:00:00'),
(8, 'GMAIL_FROM_ADDRESS', 'sales@example.com', 0, '2017-10-27 23:51:21', '0000-00-00 00:00:00'),
(9, 'GMAIL_FROM_NAME', 'Sales', 0, '2017-10-05 01:04:22', '0000-00-00 00:00:00'),
(10, 'ENABLE_EMAIL', 'true', 0, '2018-02-10 01:41:43', '0000-00-00 00:00:00'),
(11, 'BUSINESS_ADDRESS', '', 0, '2018-02-07 00:02:11', '0000-00-00 00:00:00'),
(12, 'BUSINESS_EMAIL', 'steven@ehealthafrica.com', 0, '2018-07-13 19:37:00', '0000-00-00 00:00:00'),
(13, 'BUSINESS_PHONE', '+00 (0) 00 000 0000', 0, '2018-02-07 00:02:11', '0000-00-00 00:00:00'),
(14, 'BUSINESS_MOBILE', '', 0, '2018-02-07 00:02:11', '2017-09-22 21:59:01'),
(15, 'BUSINESS_LOGO_IMAGE', '5afd4ca421ec9_5a2933979a646_Screenshot_1.png', 0, '2018-05-17 04:34:28', '2018-05-17 09:34:28'),
(16, 'NTN_NO', '98658425', 0, '2018-03-30 02:55:47', '0000-00-00 00:00:00'),
(17, 'BUSINESS_WEBSITE', 'www.ehealthafrica.com', 0, '2018-07-13 19:37:00', '0000-00-00 00:00:00'),
(18, 'BUSINESS_COUNTRY', '100', 0, '2018-05-17 01:39:02', '2017-09-22 21:59:01'),
(19, 'BUSINESS_YEAR', '1993', 0, '2017-10-04 23:12:37', '0000-00-00 00:00:00'),
(20, 'DEFAULT_CURRENCY', '163', 0, '2018-07-13 19:37:00', '0000-00-00 00:00:00'),
(21, 'THOUSAND_SEPRETOR', '.', 0, '2017-10-04 23:13:17', '0000-00-00 00:00:00'),
(22, 'DECIMAL_SEPRETOR', '.', 0, '2017-10-04 23:13:17', '0000-00-00 00:00:00'),
(23, 'INVOICE_VOUCHER_TERMS', '', 0, '2017-10-04 23:12:37', '0000-00-00 00:00:00'),
(24, 'TIMEZONES', 'Africa/Lagos', 0, '2018-07-13 19:37:00', '0000-00-00 00:00:00'),
(25, 'OFFDAYS', 'a:2:{i:0;s:3:\"Sat\";i:1;s:3:\"Sun\";}', 1, '2018-02-07 00:02:11', '0000-00-00 00:00:00'),
(26, 'MAIL_DRIVER', 'mail', 0, '2017-10-27 23:30:14', '0000-00-00 00:00:00'),
(27, 'MAIL_HOST', 'mail.fit2gears.com', 0, '2018-02-12 07:39:31', '0000-00-00 00:00:00'),
(28, 'MAIL_PORT', '25', 0, '2017-10-27 21:05:27', '0000-00-00 00:00:00'),
(29, 'MAIL_USERNAME', 'sales@fit2gears.com', 0, '2018-02-12 07:39:31', '0000-00-00 00:00:00'),
(30, 'MAIL_PASSWORD', 'john@123', 0, '2018-02-12 07:39:31', '0000-00-00 00:00:00'),
(31, 'MAIL_ENCRYPTION', 'tls', 0, '2017-10-27 23:55:52', '0000-00-00 00:00:00'),
(32, 'MAIL_FROM_ADDRESS', 'sales@fit2gears.com', 0, '2018-02-12 07:39:31', '0000-00-00 00:00:00'),
(33, 'MAIL_FROM_NAME', 'Maxer Erp System', 0, '2018-03-30 02:55:57', '0000-00-00 00:00:00'),
(34, 'MAIL_BY', 'webmail', 0, '2018-02-12 07:39:31', '0000-00-00 00:00:00'),
(35, 'EMAIL_FROM_ADDRESS', 'info@gmail.com', 0, '2017-10-05 01:11:50', '0000-00-00 00:00:00'),
(36, 'EMAIL_FROM_NAME', 'Maxer', 0, '2017-10-05 01:11:50', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shift`
--

CREATE TABLE `tbl_shift` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shift`
--

INSERT INTO `tbl_shift` (`id`, `title`, `description`, `start_time`, `end_time`, `status`) VALUES
(4, 'Day Time', 'Day Time', '09:00:00', '18:00:00', 1),
(5, 'evening', NULL, '07:12:00', '15:12:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `present_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanant_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `login_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_groups`
--

CREATE TABLE `tbl_users_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `permissions` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_permissions`
--

CREATE TABLE `tbl_users_permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users_permissions`
--

INSERT INTO `tbl_users_permissions` (`id`, `name`, `title`) VALUES
(1, 'MANAGE_USERS', 'Manage Users'),
(2, 'MANAGE_USERS_GROUPS', 'Manage Users Groups'),
(3, 'MANAGE_SHIFT', 'Manage Shift'),
(4, 'MANAGE_DEPARTMENTS', 'Manage Departments'),
(5, 'MANAGE_DESIGNATION', 'Manage Designation'),
(6, 'MANAGE_EMPLOYEES', 'Manage Employees'),
(7, 'MANAGE_OFFICIAL_LEAVES', 'Manage Official Leaves'),
(8, 'MANAGE_EMPLOYEES_LOANS', 'Manage Employees Loans'),
(9, 'EMPLOYEE_ROLES', 'Manage Employee Roles'),
(10, 'MANAGE_EMPLOYEES_LEAVES', 'Manage Employees Leaves'),
(11, 'NOTICEBOARD_MANAGE', 'Manage Noticeboard'),
(12, 'SALARIES_CREATED', 'Salaries Created'),
(13, 'SALARIES_MANAGER', 'Salaries Manager'),
(14, 'CUSTOMERS_SECTION', 'Customers Section'),
(15, 'VENDORS_SECTION', 'Vendors Section'),
(16, 'SALES', 'Sales'),
(17, 'PURCHASE', 'Purchase'),
(18, 'EXPENSES', 'Expenses'),
(19, 'FINANCE', 'Finance'),
(20, 'SALE_REPORTS', 'Sale Reports'),
(21, 'PURCHASE_REPORTS', 'Purchase Reports'),
(22, 'EXPENSES_REPORT', 'Expenses Report'),
(23, 'ACCOUNTS_REPORTS', 'Accounts Reports'),
(24, 'SETTING', 'Settings'),
(25, 'EMPLOYEE_ATTENDANCE_REPORT', 'Employee Attendance Report'),
(26, 'MANAGE_ATTENDANCE', 'Manage Attendance'),
(27, 'EMAIL_TEMPLATES', 'Email Templates');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendors`
--

CREATE TABLE `tbl_vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` text COLLATE utf8mb4_unicode_ci,
  `permanent_address` text COLLATE utf8mb4_unicode_ci,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vendors`
--

INSERT INTO `tbl_vendors` (`id`, `code`, `first_name`, `last_name`, `email`, `company`, `phone`, `mobile`, `fax`, `present_address`, `permanent_address`, `country_id`, `state`, `city`, `postal_code`, `other`, `created_at`, `updated_at`) VALUES
(1, '020011', 'Paragon Interneta', 'Ltd', 'info@abc.som', NULL, '5619356960', NULL, NULL, '113-114 Buckingham Avenue', '113-114 Buckingham Avenue', 76, 'Slough', 'Slough', 'SL1 4PF', NULL, '2018-03-30 07:51:12', '2018-03-30 07:51:12'),
(2, '020012', 'Michael', 'Klose', 'Klose@2589.com', 'Klose', '561935696089', NULL, NULL, 'Hollywood Florida', 'Hollywood Florida', 230, 'Florida', 'Hollywood', '33024', NULL, '2018-03-30 07:51:36', '2018-03-30 07:51:36'),
(3, '000001', 'Dave', 'Hla', 'davehla@goldenictsolutions.com', 'GIS', '454545454', NULL, NULL, 'PA', NULL, 145, NULL, 'Yangon', NULL, NULL, '2018-05-16 18:39:57', '2018-05-16 18:39:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_accounts_chart`
--
ALTER TABLE `tbl_accounts_chart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_accounts_summery`
--
ALTER TABLE `tbl_accounts_summery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_accounts_summery_detail`
--
ALTER TABLE `tbl_accounts_summery_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_accounts_summery_detail_summery_id_foreign` (`summery_id`),
  ADD KEY `tbl_accounts_summery_detail_account_id_foreign` (`account_id`);

--
-- Indexes for table `tbl_accounts_types`
--
ALTER TABLE `tbl_accounts_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries_zone`
--
ALTER TABLE `tbl_countries_zone`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `idx_country_code` (`country_code`),
  ADD KEY `idx_zone_name` (`zone_name`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_designations`
--
ALTER TABLE `tbl_designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_email_templates`
--
ALTER TABLE `tbl_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employees_attendance`
--
ALTER TABLE `tbl_employees_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_employees_attendance_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `tbl_employees_leaves`
--
ALTER TABLE `tbl_employees_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_employees_leaves_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `tbl_employees_leaves_dates`
--
ALTER TABLE `tbl_employees_leaves_dates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_employees_leaves_dates_leave_id_foreign` (`leave_id`);

--
-- Indexes for table `tbl_employees_ledger`
--
ALTER TABLE `tbl_employees_ledger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_employees_ledger_employee_id_foreign` (`employee_id`),
  ADD KEY `tbl_employees_ledger_account_id_foreign` (`account_id`);

--
-- Indexes for table `tbl_employees_loans`
--
ALTER TABLE `tbl_employees_loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_employees_loans_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `tbl_employees_loans_request`
--
ALTER TABLE `tbl_employees_loans_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_employees_loans_request_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `tbl_employees_loans_statements`
--
ALTER TABLE `tbl_employees_loans_statements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_employees_loans_statements_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `tbl_employees_login_attempt`
--
ALTER TABLE `tbl_employees_login_attempt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employees_official_leaves`
--
ALTER TABLE `tbl_employees_official_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employees_official_leaves_dates`
--
ALTER TABLE `tbl_employees_official_leaves_dates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_employees_offical_leaves_dates_leave_id_foreign` (`leave_id`);

--
-- Indexes for table `tbl_employees_permissions`
--
ALTER TABLE `tbl_employees_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employees_qualifications`
--
ALTER TABLE `tbl_employees_qualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_employees_qualifications_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `tbl_employees_roles`
--
ALTER TABLE `tbl_employees_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employees_salary`
--
ALTER TABLE `tbl_employees_salary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_employees_salary_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `tbl_employees_salary_type`
--
ALTER TABLE `tbl_employees_salary_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employees_type`
--
ALTER TABLE `tbl_employees_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employees_work_experience`
--
ALTER TABLE `tbl_employees_work_experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_employees_work_experience_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `tbl_gender`
--
ALTER TABLE `tbl_gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login_attempt`
--
ALTER TABLE `tbl_login_attempt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_maritals`
--
ALTER TABLE `tbl_maritals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_noticeboard`
--
ALTER TABLE `tbl_noticeboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_purchase_verndor_id_foreign` (`vendor_id`);

--
-- Indexes for table `tbl_purchase_detail`
--
ALTER TABLE `tbl_purchase_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_purchase_detail_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `tbl_purchase_ledger`
--
ALTER TABLE `tbl_purchase_ledger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_purchase_ledger_sale_id_foreign` (`sale_id`),
  ADD KEY `tbl_purchase_ledger_account_id_foreign` (`account_id`),
  ADD KEY `tbl_purchase_ledger_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_sales_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `tbl_sales_detail`
--
ALTER TABLE `tbl_sales_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_sales_detail_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `tbl_sales_ledger`
--
ALTER TABLE `tbl_sales_ledger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_sales_ledger_sale_id_foreign` (`sale_id`),
  ADD KEY `tbl_sales_ledger_account_id_foreign` (`account_id`),
  ADD KEY `tbl_sales_ledger_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shift`
--
ALTER TABLE `tbl_shift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users_groups`
--
ALTER TABLE `tbl_users_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users_permissions`
--
ALTER TABLE `tbl_users_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vendors`
--
ALTER TABLE `tbl_vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_accounts_chart`
--
ALTER TABLE `tbl_accounts_chart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `tbl_accounts_summery`
--
ALTER TABLE `tbl_accounts_summery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `tbl_accounts_summery_detail`
--
ALTER TABLE `tbl_accounts_summery_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `tbl_accounts_types`
--
ALTER TABLE `tbl_accounts_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;
--
-- AUTO_INCREMENT for table `tbl_countries_zone`
--
ALTER TABLE `tbl_countries_zone`
  MODIFY `zone_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;
--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_designations`
--
ALTER TABLE `tbl_designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_email_templates`
--
ALTER TABLE `tbl_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `tbl_employees_attendance`
--
ALTER TABLE `tbl_employees_attendance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;
--
-- AUTO_INCREMENT for table `tbl_employees_leaves`
--
ALTER TABLE `tbl_employees_leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_employees_leaves_dates`
--
ALTER TABLE `tbl_employees_leaves_dates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_employees_ledger`
--
ALTER TABLE `tbl_employees_ledger`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_employees_loans`
--
ALTER TABLE `tbl_employees_loans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_employees_loans_request`
--
ALTER TABLE `tbl_employees_loans_request`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_employees_loans_statements`
--
ALTER TABLE `tbl_employees_loans_statements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_employees_login_attempt`
--
ALTER TABLE `tbl_employees_login_attempt`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;
--
-- AUTO_INCREMENT for table `tbl_employees_official_leaves`
--
ALTER TABLE `tbl_employees_official_leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_employees_official_leaves_dates`
--
ALTER TABLE `tbl_employees_official_leaves_dates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_employees_permissions`
--
ALTER TABLE `tbl_employees_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `tbl_employees_qualifications`
--
ALTER TABLE `tbl_employees_qualifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_employees_roles`
--
ALTER TABLE `tbl_employees_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_employees_salary`
--
ALTER TABLE `tbl_employees_salary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_employees_salary_type`
--
ALTER TABLE `tbl_employees_salary_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_employees_type`
--
ALTER TABLE `tbl_employees_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_employees_work_experience`
--
ALTER TABLE `tbl_employees_work_experience`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_gender`
--
ALTER TABLE `tbl_gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_login_attempt`
--
ALTER TABLE `tbl_login_attempt`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_maritals`
--
ALTER TABLE `tbl_maritals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_noticeboard`
--
ALTER TABLE `tbl_noticeboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_purchase_detail`
--
ALTER TABLE `tbl_purchase_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_purchase_ledger`
--
ALTER TABLE `tbl_purchase_ledger`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_sales_detail`
--
ALTER TABLE `tbl_sales_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `tbl_sales_ledger`
--
ALTER TABLE `tbl_sales_ledger`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `tbl_shift`
--
ALTER TABLE `tbl_shift`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_users_groups`
--
ALTER TABLE `tbl_users_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_users_permissions`
--
ALTER TABLE `tbl_users_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tbl_vendors`
--
ALTER TABLE `tbl_vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_accounts_summery_detail`
--
ALTER TABLE `tbl_accounts_summery_detail`
  ADD CONSTRAINT `tbl_accounts_summery_detail_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `tbl_accounts_chart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_accounts_summery_detail_summery_id_foreign` FOREIGN KEY (`summery_id`) REFERENCES `tbl_accounts_summery` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_employees_attendance`
--
ALTER TABLE `tbl_employees_attendance`
  ADD CONSTRAINT `tbl_employees_attendance_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `tbl_employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_employees_leaves`
--
ALTER TABLE `tbl_employees_leaves`
  ADD CONSTRAINT `tbl_employees_leaves_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `tbl_employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_employees_leaves_dates`
--
ALTER TABLE `tbl_employees_leaves_dates`
  ADD CONSTRAINT `tbl_employees_leaves_dates_leave_id_foreign` FOREIGN KEY (`leave_id`) REFERENCES `tbl_employees_leaves` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_employees_ledger`
--
ALTER TABLE `tbl_employees_ledger`
  ADD CONSTRAINT `tbl_employees_ledger_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `tbl_accounts_chart` (`id`),
  ADD CONSTRAINT `tbl_employees_ledger_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `tbl_employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_employees_loans`
--
ALTER TABLE `tbl_employees_loans`
  ADD CONSTRAINT `tbl_employees_loans_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `tbl_employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_employees_loans_request`
--
ALTER TABLE `tbl_employees_loans_request`
  ADD CONSTRAINT `tbl_employees_loans_request_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `tbl_employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_employees_loans_statements`
--
ALTER TABLE `tbl_employees_loans_statements`
  ADD CONSTRAINT `tbl_employees_loans_statements_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `tbl_employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_employees_official_leaves_dates`
--
ALTER TABLE `tbl_employees_official_leaves_dates`
  ADD CONSTRAINT `tbl_employees_offical_leaves_dates_leave_id_foreign` FOREIGN KEY (`leave_id`) REFERENCES `tbl_employees_official_leaves` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_employees_qualifications`
--
ALTER TABLE `tbl_employees_qualifications`
  ADD CONSTRAINT `tbl_employees_qualifications_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `tbl_employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_employees_salary`
--
ALTER TABLE `tbl_employees_salary`
  ADD CONSTRAINT `tbl_employees_salary_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `tbl_employees` (`id`);

--
-- Constraints for table `tbl_employees_work_experience`
--
ALTER TABLE `tbl_employees_work_experience`
  ADD CONSTRAINT `tbl_employees_work_experience_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `tbl_employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  ADD CONSTRAINT `tbl_purchase_verndor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `tbl_vendors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_purchase_detail`
--
ALTER TABLE `tbl_purchase_detail`
  ADD CONSTRAINT `tbl_purchase_detail_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `tbl_purchase` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_purchase_ledger`
--
ALTER TABLE `tbl_purchase_ledger`
  ADD CONSTRAINT `tbl_purchase_ledger_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `tbl_accounts_chart` (`id`),
  ADD CONSTRAINT `tbl_purchase_ledger_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `tbl_purchase` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_purchase_ledger_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `tbl_vendors` (`id`);

--
-- Constraints for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  ADD CONSTRAINT `tbl_sales_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_sales_detail`
--
ALTER TABLE `tbl_sales_detail`
  ADD CONSTRAINT `tbl_sales_detail_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `tbl_sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_sales_ledger`
--
ALTER TABLE `tbl_sales_ledger`
  ADD CONSTRAINT `tbl_sales_ledger_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `tbl_accounts_chart` (`id`),
  ADD CONSTRAINT `tbl_sales_ledger_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customers` (`id`),
  ADD CONSTRAINT `tbl_sales_ledger_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `tbl_sales` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

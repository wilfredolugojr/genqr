-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 14-08-2021 a las 06:49:05
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `genqr`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centro_trabajo`
--

CREATE TABLE `centro_trabajo` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_07_21_032555_trabajador', 1),
(4, '2021_07_29_033917_centrodetrabajo', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci,
  `ci` text COLLATE utf8mb4_unicode_ci,
  `cargo` text COLLATE utf8mb4_unicode_ci,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `centro_trabajo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`id`, `nombre`, `ci`, `cargo`, `direccion`, `foto`, `centro_trabajo`, `qr`, `telefono`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Manuel ALEJANDRO', '91093-022', NULL, 'sdfsdfsdf', NULL, 'asdadasdasdasd', NULL, NULL, 'admin@nauta.cu', '2021-07-21 08:47:27', '2021-07-21 08:47:27'),
(2, 'Mnailo', '91093-022', NULL, 'zx', NULL, 'Zx', NULL, '5205-0972', 'yourhomerealtywebsite@gmail.com', '2021-07-21 08:51:49', '2021-07-21 08:51:49'),
(3, 'sdfs', '34345-353', NULL, 'asdasdad', NULL, 'sdfsdfsdf', NULL, '4444-4444', 'wilugo91@gmail.com', '2021-07-21 22:16:51', '2021-07-21 22:16:51'),
(5, 'asdasd', '45334-534', NULL, 'asdasd', NULL, 'asdasdad', NULL, '3453-453', 'lolo@gmail.com', '2021-07-21 22:19:14', '2021-07-21 22:19:14'),
(6, 'asdsad', '23423-423', NULL, 'asdasd', NULL, 'asdasdasd', NULL, '2342-3423', 'cc@gmail.com', '2021-07-21 22:21:44', '2021-07-21 22:21:44'),
(7, 'sdasd', '34535-345', NULL, 'asdasdas', NULL, 'asdasdasd', NULL, '3453-4534', '345sdf@gmail.com', '2021-07-21 22:22:33', '2021-07-21 22:22:33'),
(8, 'sasdasd', '34234-234', NULL, 'asdasda', NULL, 'asdasdasd', NULL, '4444-4444', 'eeew@gmail.com', '2021-07-21 22:25:49', '2021-07-21 22:25:49'),
(9, 'dsfsdf', '34534-534', NULL, 'sdfsdf', NULL, 'sdfsfsdf', NULL, '3453-4534', 'lala@gmail.com', '2021-07-21 22:28:24', '2021-07-21 22:28:24'),
(10, 'erert', '45664-564', NULL, '456456456', NULL, 'efrgddfg', NULL, '4564-5645', 'rreter@gmail.com', '2021-07-21 22:37:35', '2021-07-21 22:37:35'),
(11, 'ertert', '45645-645', NULL, 'ertert', NULL, 'ertertetr', NULL, '4564-56', '345rrsdf@gmail.com', '2021-07-21 22:50:03', '2021-07-21 22:50:03'),
(12, 'fesdfsdfsdf', '34534-535', NULL, 'sdfsdf', NULL, 'sdfsdfsdf', NULL, '4534-5', 'ee44ew@gmail.com', '2021-07-21 22:52:40', '2021-07-21 22:52:40'),
(13, 'sdsdf', '45345-345', NULL, 'sdfsdfsdf', NULL, 'sdfsdfsdf', NULL, '3453-4534', 'sdfsdf@gmail.com', '2021-07-21 22:57:57', '2021-07-21 22:57:57'),
(14, 'sdfdsdf', '45345-345', NULL, 'sdfsdfsdf', NULL, 'sdfsdfsdf', NULL, '4534-5345', '45345345354@gmail.com', '2021-07-21 23:00:07', '2021-07-21 23:00:07'),
(15, 'Wilfredo Lugo Carballo', '34534-534', NULL, 'werwer', NULL, 'werwerwer', NULL, '3453-4534', 'erer@gmail.com', '2021-07-21 23:10:15', '2021-07-21 23:10:15'),
(16, 'Juan', '34534-535', NULL, 'asdasd', NULL, 'asdads', NULL, '2342-3423', 'dfdfg@gmail.com', '2021-07-21 23:13:32', '2021-07-21 23:13:32'),
(17, 'Wilfredo Lugo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'wilfredo@pri.jovenclub.cu', '2021-07-22 08:23:43', '2021-07-22 08:23:43'),
(18, 'Wilfredo Lugo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'wilfredo.lugo@gmail.com', '2021-07-22 08:28:04', '2021-07-22 08:28:04'),
(20, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo@pri.jovenclub.cu', '2021-07-22 08:33:02', '2021-07-22 08:33:02'),
(27, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'malo@gmail.com', '2021-07-22 09:54:37', '2021-07-22 09:54:37'),
(29, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'menso@gmail.com', '2021-07-22 09:55:59', '2021-07-22 09:55:59'),
(41, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'mannnn@gmail.com', '2021-07-22 22:36:06', '2021-07-22 22:36:06'),
(44, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'detail@gmail.com', '2021-07-22 23:37:30', '2021-07-22 23:37:30'),
(54, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'mmmmmm@gmail.com', '2021-07-23 01:22:11', '2021-07-23 01:22:11'),
(58, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'mikaela@gmail.com', '2021-07-23 01:28:14', '2021-07-23 01:28:14'),
(61, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo2@gmail.com', '2021-07-23 01:35:09', '2021-07-23 01:35:09'),
(62, 'teresa', '45456645666', NULL, 'calle5', NULL, 'jrjtert', NULL, '45645646', 'tere@gmail.com', '2021-07-23 01:35:09', '2021-07-23 01:35:09'),
(64, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo3@gmail.com', '2021-07-23 01:56:04', '2021-07-23 01:56:04'),
(65, 'teresa', '45456645666', NULL, 'calle5', NULL, 'jrjtert', NULL, '45645646', 'tere2@gmail.com', '2021-07-23 01:56:04', '2021-07-23 01:56:04'),
(69, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo7@gmail.com', '2021-07-23 05:23:04', '2021-07-23 05:23:04'),
(70, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo8@gmail.com', '2021-07-23 05:25:28', '2021-07-23 05:25:28'),
(71, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo9@gmail.com', '2021-07-23 05:36:26', '2021-07-23 05:36:26'),
(72, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo10@gmail.com', '2021-07-23 05:51:26', '2021-07-23 05:51:26'),
(73, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo11@gmail.com', '2021-07-23 05:54:08', '2021-07-23 05:54:08'),
(74, 'teresa', '45456645666', NULL, 'calle5', NULL, 'jrjtert', NULL, '45645646', 'tere10@gmail.com', '2021-07-23 05:54:08', '2021-07-23 05:54:08'),
(75, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo12@gmail.com', '2021-07-23 05:56:17', '2021-07-23 05:56:17'),
(76, 'teresa', '45456645666', NULL, 'calle5', NULL, 'jrjtert', NULL, '45645646', 'tere11@gmail.com', '2021-07-23 05:56:17', '2021-07-23 05:56:17'),
(77, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo13@gmail.com', '2021-07-23 05:57:27', '2021-07-23 05:57:27'),
(78, 'teresa', '45456645666', NULL, 'calle5', NULL, 'jrjtert', NULL, '45645646', 'tere12@gmail.com', '2021-07-23 05:57:27', '2021-07-23 05:57:27'),
(79, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo14@gmail.com', '2021-07-23 05:58:09', '2021-07-23 05:58:09'),
(80, 'teresa', '45456645666', NULL, 'calle5', NULL, 'jrjtert', NULL, '45645646', 'tere13@gmail.com', '2021-07-23 05:58:10', '2021-07-23 05:58:10'),
(82, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo15@gmail.com', '2021-07-23 06:05:24', '2021-07-23 06:05:24'),
(83, 'teresa', '45456645666', NULL, 'calle5', NULL, 'jrjtert', NULL, '45645646', 'tere14@gmail.com', '2021-07-23 06:05:24', '2021-07-23 06:05:24'),
(84, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo16@gmail.com', '2021-07-23 06:06:54', '2021-07-23 06:06:54'),
(85, 'teresa', '45456645666', NULL, 'calle5', NULL, 'jrjtert', NULL, '45645646', 'tere15@gmail.com', '2021-07-23 06:06:54', '2021-07-23 06:06:54'),
(86, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo17@gmail.com', '2021-07-23 06:07:59', '2021-07-23 06:07:59'),
(87, 'teresa', '45456645666', NULL, 'calle5', NULL, 'jrjtert', NULL, '45645646', 'tere16@gmail.com', '2021-07-23 06:07:59', '2021-07-23 06:07:59'),
(88, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo18@gmail.com', '2021-07-23 06:09:17', '2021-07-23 06:09:17'),
(89, 'teresa', '45456645666', NULL, 'calle5', NULL, 'jrjtert', NULL, '45645646', 'tere17@gmail.com', '2021-07-23 06:09:17', '2021-07-23 06:09:17'),
(90, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo19@gmail.com', '2021-07-23 06:14:06', '2021-07-23 06:14:06'),
(91, 'teresa', '45456645666', NULL, 'calle5', NULL, 'jrjtert', NULL, '45645646', 'tere18@gmail.com', '2021-07-23 06:14:06', '2021-07-23 06:14:06'),
(92, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo20@gmail.com', '2021-07-23 06:15:44', '2021-07-23 06:15:44'),
(93, 'teresa', '45456645666', NULL, 'calle5', NULL, 'jrjtert', NULL, '45645646', 'tere19@gmail.com', '2021-07-23 06:15:44', '2021-07-23 06:15:44'),
(94, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo21@gmail.com', '2021-07-23 06:16:40', '2021-07-23 06:16:40'),
(95, 'teresa', '45456645666', NULL, 'calle5', NULL, 'jrjtert', NULL, '45645646', 'tere20@gmail.com', '2021-07-23 06:16:40', '2021-07-23 06:16:40'),
(96, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo22@gmail.com', '2021-07-23 06:23:23', '2021-07-23 06:23:23'),
(97, 'teresa', '45456645666', NULL, 'calle5', NULL, 'jrjtert', NULL, '45645646', 'tere21@gmail.com', '2021-07-23 06:23:23', '2021-07-23 06:23:23'),
(98, 'Minolo', '91093022686', NULL, 'Calle 4ta', NULL, 'DPJC', NULL, '52050972', 'minolo23@gmail.com', '2021-07-23 06:24:52', '2021-07-23 06:24:52'),
(99, 'teresa', '45456645666', NULL, 'calle5', NULL, 'jrjtert', NULL, '45645646', 'tere22@gmail.com', '2021-07-23 06:24:52', '2021-07-23 06:24:52'),
(108, 'werwer', '91093-022', NULL, 'werwer', NULL, 'werwerwer', NULL, '5205-0872', 'ewrwwerwer', '2021-07-23 08:11:09', '2021-07-23 08:11:09'),
(109, 'Mnuela', '23423-423', NULL, 'qwdadasd', NULL, 'dasdadsadsadadasd', NULL, '4876-0908', 'witson@gmail.com', '2021-07-23 08:21:57', '2021-07-23 08:21:57'),
(110, 'asdsad', '91093-022', NULL, 'sdfsdf', NULL, 'jc', NULL, '3424-2342', 'cccccc@gmail.com', '2021-07-23 08:26:31', '2021-07-23 08:26:31'),
(111, 'zxczxc', '34534-534', NULL, 'zxczxczxc', NULL, 'zxczcxzxc', NULL, '3453-4534', 'minolo23333@gmail.com', '2021-07-23 17:19:57', '2021-07-23 17:19:57'),
(112, 'asdasdasd', '91093022686', NULL, 'asdasdasdasdasd', NULL, 'asdasdasdasdasdasd', NULL, '3453-4534', 'dfsdfsdfsdfsdf', '2021-07-28 06:30:22', '2021-07-28 06:30:22'),
(113, 'sdfsdfds', '34534535434', NULL, 'sdfsdf', NULL, 'sdfsdfsdf', NULL, '3453-5345', 'rrrrrrr', '2021-07-28 06:42:25', '2021-07-28 06:42:25'),
(114, 'aaczc', '34534534535', NULL, 'zczxczxc', NULL, 'zxczcxzxc', NULL, '3453-4534', 'rr@ffff', '2021-07-28 06:47:05', '2021-07-28 06:47:05'),
(115, 'asxasdasd', '23423423424', NULL, 'asdasdasd', NULL, 'asdasdasd', NULL, '3234-2342', '234@gmail', '2021-07-28 06:47:56', '2021-07-28 06:47:56'),
(116, 'zxcxzcz', '34535435435', NULL, 'zxczxczxc', NULL, 'zxczxczxc', NULL, '3453-4534', 'sdaasdad@', '2021-07-28 06:48:30', '2021-07-28 06:48:30'),
(117, 'lkjlkj', '34534534535', NULL, 'klklkkjl', NULL, ';lk;k;k;k', NULL, '3453-4534', 'wilugo91@gmail', '2021-07-28 06:49:41', '2021-07-28 06:49:41'),
(118, 'scasdasdasd', '46346346346', NULL, 'asdasdasdad', NULL, 'asdasdasdasd', NULL, '3453-4534', '36346346@gmail.com', '2021-07-28 06:58:30', '2021-07-28 06:58:30'),
(119, 'ascasd', '34535435435', NULL, 'asdasdasd', NULL, 'asdasdasd', NULL, '3453-4534', 'zxczc@gmail.com', '2021-07-29 07:31:28', '2021-07-29 07:31:28'),
(120, 'xcaczxc', '34535434534', NULL, 'zxczxczxczxc', NULL, 'zxczxczcxzcxzxczxc', NULL, '3453-4534', 'wiatson@gmail.com', '2021-07-29 07:32:55', '2021-07-29 07:32:55'),
(121, 'zxcxczxc', '45645645645', NULL, 'zxczxczxc', NULL, 'zxczxczxczxc', NULL, '4564-5645', '546456@gmail.com', '2021-07-29 09:57:44', '2021-07-29 09:57:44'),
(122, 'Lelys mayra', '34534534535', NULL, 'scc', NULL, 'ascasdadsad', NULL, '3453-4535', 'wiley@gmail.com', '2021-07-29 09:59:45', '2021-07-29 09:59:45'),
(123, 'Liborio', '56756756757', 'sdfsdfsdfsfd', 'centro 0', NULL, 'sdfsdfsdf', NULL, '5675-6756', 'erterte@gmail.com', '2021-08-02 07:06:14', '2021-08-02 07:06:14'),
(142, 'Obel Delgado Vázquez ', '64022832347', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 07:17:17', '2021-08-02 07:17:17'),
(143, 'Maricelys Machado Moscoso', '68082908399', 'Tecnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 07:17:17', '2021-08-02 07:17:17'),
(144, 'Maribel Yhanes Hernández ', '68082908319', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 07:17:17', '2021-08-02 07:17:17'),
(145, 'Marjolis Ramírez Céspedes ', '67092715139', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 07:17:17', '2021-08-02 07:17:17'),
(146, 'Ricardo Linares López', '83070701546', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 07:17:17', '2021-08-02 07:17:17'),
(147, 'Yosbel Ledesma Piñero ', '87050600742', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 07:17:17', '2021-08-02 07:17:17'),
(148, 'Yanisleny Vivas Camejo ', '87092200732', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 07:17:17', '2021-08-02 07:17:17'),
(149, 'Alejandro Martínez Pérez', '90050237308', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 07:17:17', '2021-08-02 07:17:17'),
(150, NULL, NULL, 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 07:17:18', '2021-08-02 07:17:18'),
(151, 'Ignasio Gilberto Hernández Capote', '47020104382', 'Sereno', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 07:17:18', '2021-08-02 07:17:18'),
(152, 'Haydee de la Caridad Márquez Lam ', '73110728793', 'Instructor C de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 07:17:18', '2021-08-02 07:17:18'),
(153, 'Yosvany Cruz Fernández ', '90060422662', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 07:17:18', '2021-08-02 07:17:18'),
(154, 'Roberto Piña Borrego ', '84040900266', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 07:17:18', '2021-08-02 07:17:18'),
(155, 'Héctor Luis Rodríguez Cabrera ', '94062023224', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 07:17:18', '2021-08-02 07:17:18'),
(156, 'Obel Delgado Vázquez ', '64022832347', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:26:59', '2021-08-02 08:26:59'),
(157, 'Maricelys Machado Moscoso', '68082908399', 'Tecnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:26:59', '2021-08-02 08:26:59'),
(158, 'Maribel Yhanes Hernández ', '68082908319', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:26:59', '2021-08-02 08:26:59'),
(159, 'Marjolis Ramírez Céspedes ', '67092715139', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:26:59', '2021-08-02 08:26:59'),
(160, 'Ricardo Linares López', '83070701546', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:26:59', '2021-08-02 08:26:59'),
(161, 'Yosbel Ledesma Piñero ', '87050600742', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:26:59', '2021-08-02 08:26:59'),
(162, 'Yanisleny Vivas Camejo ', '87092200732', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:26:59', '2021-08-02 08:26:59'),
(163, 'Alejandro Martínez Pérez', '90050237308', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:26:59', '2021-08-02 08:26:59'),
(164, NULL, NULL, 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:26:59', '2021-08-02 08:26:59'),
(165, 'Ignasio Gilberto Hernández Capote', '47020104382', 'Sereno', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:26:59', '2021-08-02 08:26:59'),
(166, 'Haydee de la Caridad Márquez Lam ', '73110728793', 'Instructor C de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:26:59', '2021-08-02 08:26:59'),
(167, 'Yosvany Cruz Fernández ', '90060422662', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:26:59', '2021-08-02 08:26:59'),
(168, 'Roberto Piña Borrego ', '84040900266', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:26:59', '2021-08-02 08:26:59'),
(169, 'Héctor Luis Rodríguez Cabrera ', '94062023224', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:26:59', '2021-08-02 08:26:59'),
(170, 'Obel Delgado Vázquez ', '64022832347', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:29:14', '2021-08-02 08:29:14'),
(171, 'Maricelys Machado Moscoso', '68082908399', 'Tecnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:29:14', '2021-08-02 08:29:14'),
(172, 'Maribel Yhanes Hernández ', '68082908319', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:29:14', '2021-08-02 08:29:14'),
(173, 'Marjolis Ramírez Céspedes ', '67092715139', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:29:14', '2021-08-02 08:29:14'),
(174, 'Ricardo Linares López', '83070701546', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:29:14', '2021-08-02 08:29:14'),
(175, 'Yosbel Ledesma Piñero ', '87050600742', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:29:14', '2021-08-02 08:29:14'),
(176, 'Yanisleny Vivas Camejo ', '87092200732', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:29:14', '2021-08-02 08:29:14'),
(177, 'Alejandro Martínez Pérez', '90050237308', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:29:14', '2021-08-02 08:29:14'),
(178, NULL, NULL, 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:29:14', '2021-08-02 08:29:14'),
(179, 'Ignasio Gilberto Hernández Capote', '47020104382', 'Sereno', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:29:14', '2021-08-02 08:29:14'),
(180, 'Haydee de la Caridad Márquez Lam ', '73110728793', 'Instructor C de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:29:14', '2021-08-02 08:29:14'),
(181, 'Yosvany Cruz Fernández ', '90060422662', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:29:14', '2021-08-02 08:29:14'),
(182, 'Roberto Piña Borrego ', '84040900266', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:29:14', '2021-08-02 08:29:14'),
(183, 'Héctor Luis Rodríguez Cabrera ', '94062023224', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:29:14', '2021-08-02 08:29:14'),
(184, 'Obel Delgado Vázquez ', '64022832347', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:30:00', '2021-08-02 08:30:00'),
(185, 'Maricelys Machado Moscoso', '68082908399', 'Tecnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:30:00', '2021-08-02 08:30:00'),
(186, 'Maribel Yhanes Hernández ', '68082908319', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:30:00', '2021-08-02 08:30:00'),
(187, 'Marjolis Ramírez Céspedes ', '67092715139', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(188, 'Ricardo Linares López', '83070701546', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(189, 'Yosbel Ledesma Piñero ', '87050600742', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(190, 'Yanisleny Vivas Camejo ', '87092200732', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(191, 'Alejandro Martínez Pérez', '90050237308', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(192, NULL, NULL, 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(193, 'Ignasio Gilberto Hernández Capote', '47020104382', 'Sereno', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(194, 'Haydee de la Caridad Márquez Lam ', '73110728793', 'Instructor C de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(195, 'Yosvany Cruz Fernández ', '90060422662', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(196, 'Roberto Piña Borrego ', '84040900266', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(197, 'Héctor Luis Rodríguez Cabrera ', '94062023224', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(198, 'Madelyn Ledesma Ramos ', '79022500798', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(199, 'Arelis Cala Blanco ', '74062700870', 'Técnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(200, 'Leydiani Machado González ', '87110900975', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(201, 'Danay Correa Martínez ', '82081402635', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(202, 'Dianelys Padrón Valdés ', '70011423097', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(203, 'Misael Cabrera Sánchez ', '86102600423', 'Instructor C de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(204, 'Jasiel Delgado Torres', '91033022749', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(205, 'José Caridad Diego Caro ', '59032404760', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(206, 'Juan Hernández González ', '62021405782', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(207, 'Yaima Perez Rosales ', '82101301452', 'Instructor C de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(208, NULL, NULL, 'Instructor D de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(209, 'Roberto Lorenzo Germán ', '67080605506', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(210, 'Naika Iris Martínez Blanco', '75101700639', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-02 08:30:01', '2021-08-02 08:30:01'),
(211, 'Obel Delgado Vázquez ', '64022832347', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:50:58', '2021-08-02 08:50:58'),
(212, 'Maricelys Machado Moscoso', '68082908399', 'Tecnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:50:58', '2021-08-02 08:50:58'),
(213, 'Maribel Yhanes Hernández ', '68082908319', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:50:58', '2021-08-02 08:50:58'),
(214, 'Marjolis Ramírez Céspedes ', '67092715139', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:50:58', '2021-08-02 08:50:58'),
(215, 'Ricardo Linares López', '83070701546', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:50:58', '2021-08-02 08:50:58'),
(216, 'Yosbel Ledesma Piñero ', '87050600742', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:50:58', '2021-08-02 08:50:58'),
(217, 'Yanisleny Vivas Camejo ', '87092200732', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(218, 'Alejandro Martínez Pérez', '90050237308', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(219, NULL, NULL, 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(220, 'Ignasio Gilberto Hernández Capote', '47020104382', 'Sereno', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(221, 'Haydee de la Caridad Márquez Lam ', '73110728793', 'Instructor C de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(222, 'Yosvany Cruz Fernández ', '90060422662', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(223, 'Roberto Piña Borrego ', '84040900266', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(224, 'Héctor Luis Rodríguez Cabrera ', '94062023224', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(225, 'Madelyn Ledesma Ramos ', '79022500798', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(226, 'Arelis Cala Blanco ', '74062700870', 'Técnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(227, 'Leydiani Machado González ', '87110900975', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(228, 'Danay Correa Martínez ', '82081402635', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(229, 'Dianelys Padrón Valdés ', '70011423097', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(230, 'Misael Cabrera Sánchez ', '86102600423', 'Instructor C de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(231, 'Jasiel Delgado Torres', '91033022749', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(232, 'José Caridad Diego Caro ', '59032404760', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(233, 'Juan Hernández González ', '62021405782', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(234, 'Yaima Perez Rosales ', '82101301452', 'Instructor C de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(235, NULL, NULL, 'Instructor D de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(236, 'Roberto Lorenzo Germán ', '67080605506', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(237, 'Naika Iris Martínez Blanco', '75101700639', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(238, 'Frank Giral Valdés', '71081031762', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(239, 'Arianna Coro Barrera', '75051501351', 'Técnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(240, 'Arianna Arrastia Alonso', '85091101458', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:50:59', '2021-08-02 08:50:59'),
(241, 'Carmen Luisa Mendieta Dominguez', '72102107811', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(242, 'Mirialis Cordero Arencibia ', '84081101473', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(243, 'José Raúl Díaz Martínez', '74082800967', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(244, 'Maricela García Benitez', '72070507131', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(245, 'Liusván Gómez Felipe', '76110501326', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(246, 'Diris María Rojas Mendéz ', '68071805672', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(247, 'Juan José Hernández García ', '66112805883', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(248, 'Denys Roberto Dopico Estevez ', '87031301143', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(249, 'Dainelys Lugo Rivera ', '90071722334', 'Instructor D de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(250, 'Yuniel Camacho Toledo', '89011816427', 'Instructor D de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(251, 'Osvaldo Rodriguez Polier ', '71021704868', 'Instructor D de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(252, 'Noris Isabel Figueredo Escobar ', '72111630790', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(253, 'Ailyn Urquiaga Amador ', '94032724492', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(254, 'Lazaro A Acosta Capote ', '98100103463', 'Sereno', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(255, 'Carlos Luis Morejón Rivera', '72122804522', 'Sereno', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(256, 'Lourdes Contreras Pérez ', '64060808771', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(257, 'Israel Ramos Contreras ', '72053004405', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(258, 'Juan Francisco Contreras García ', '71082704342', 'Sereno', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(259, 'Nelsón Santos Pedroso ', '63100733609', 'Sereno', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(260, 'Lázara Sarahi  Travieso Robaina ', '79120100250', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(261, 'Milaydis Talavera Martínez ', '87091302010', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(262, 'Jorge Caridad Lazo Lores ', '72032104664', 'Sereno', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(263, 'William Pérez Alvarez', '88101300280', 'Sereno', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(264, 'Alain García Salgado ', '78102500322', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:51:00', '2021-08-02 08:51:00'),
(265, 'Obel Delgado Vázquez ', '64022832347', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:52:58', '2021-08-02 08:52:58'),
(266, 'Maricelys Machado Moscoso', '68082908399', 'Tecnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:52:58', '2021-08-02 08:52:58'),
(267, 'Maribel Yhanes Hernández ', '68082908319', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:52:58', '2021-08-02 08:52:58'),
(268, 'Marjolis Ramírez Céspedes ', '67092715139', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(269, 'Ricardo Linares López', '83070701546', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(270, 'Yosbel Ledesma Piñero ', '87050600742', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(271, 'Yanisleny Vivas Camejo ', '87092200732', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(272, 'Alejandro Martínez Pérez', '90050237308', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(273, NULL, NULL, 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(274, 'Ignasio Gilberto Hernández Capote', '47020104382', 'Sereno', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(275, 'Haydee de la Caridad Márquez Lam ', '73110728793', 'Instructor C de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(276, 'Yosvany Cruz Fernández ', '90060422662', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(277, 'Roberto Piña Borrego ', '84040900266', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(278, 'Héctor Luis Rodríguez Cabrera ', '94062023224', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(279, 'Madelyn Ledesma Ramos ', '79022500798', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(280, 'Arelis Cala Blanco ', '74062700870', 'Técnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(281, 'Leydiani Machado González ', '87110900975', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(282, 'Danay Correa Martínez ', '82081402635', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(283, 'Dianelys Padrón Valdés ', '70011423097', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(284, 'Misael Cabrera Sánchez ', '86102600423', 'Instructor C de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(285, 'Jasiel Delgado Torres', '91033022749', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(286, 'José Caridad Diego Caro ', '59032404760', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(287, 'Juan Hernández González ', '62021405782', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(288, 'Yaima Perez Rosales ', '82101301452', 'Instructor C de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(289, NULL, NULL, 'Instructor D de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(290, 'Roberto Lorenzo Germán ', '67080605506', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(291, 'Naika Iris Martínez Blanco', '75101700639', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(292, 'Frank Giral Valdés', '71081031762', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:52:59', '2021-08-02 08:52:59'),
(293, 'Arianna Coro Barrera', '75051501351', 'Técnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(294, 'Arianna Arrastia Alonso', '85091101458', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(295, 'Carmen Luisa Mendieta Dominguez', '72102107811', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(296, 'Mirialis Cordero Arencibia ', '84081101473', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(297, 'José Raúl Díaz Martínez', '74082800967', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(298, 'Maricela García Benitez', '72070507131', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(299, 'Liusván Gómez Felipe', '76110501326', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(300, 'Diris María Rojas Mendéz ', '68071805672', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(301, 'Juan José Hernández García ', '66112805883', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(302, 'Denys Roberto Dopico Estevez ', '87031301143', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(303, 'Dainelys Lugo Rivera ', '90071722334', 'Instructor D de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(304, 'Yuniel Camacho Toledo', '89011816427', 'Instructor D de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(305, 'Osvaldo Rodriguez Polier ', '71021704868', 'Instructor D de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(306, 'Noris Isabel Figueredo Escobar ', '72111630790', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(307, 'Ailyn Urquiaga Amador ', '94032724492', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(308, 'Lazaro A Acosta Capote ', '98100103463', 'Sereno', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(309, 'Carlos Luis Morejón Rivera', '72122804522', 'Sereno', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(310, 'Lourdes Contreras Pérez ', '64060808771', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(311, 'Israel Ramos Contreras ', '72053004405', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(312, 'Juan Francisco Contreras García ', '71082704342', 'Sereno', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(313, 'Nelsón Santos Pedroso ', '63100733609', 'Sereno', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(314, 'Lázara Sarahi  Travieso Robaina ', '79120100250', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(315, 'Milaydis Talavera Martínez ', '87091302010', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(316, 'Jorge Caridad Lazo Lores ', '72032104664', 'Sereno', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(317, 'William Pérez Alvarez', '88101300280', 'Sereno', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-02 08:53:00', '2021-08-02 08:53:00'),
(318, 'Alain García Salgado ', '78102500322', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-02 08:53:01', '2021-08-02 08:53:01'),
(319, 'Obel Delgado Vázquez ', '64022832347', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-03 08:01:41', '2021-08-03 08:01:41'),
(320, 'Maricelys Machado Moscoso', '68082908399', 'Tecnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-03 08:01:41', '2021-08-03 08:01:41'),
(321, 'Maribel Yhanes Hernández ', '68082908319', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:01:41', '2021-08-03 08:01:41'),
(322, 'Marjolis Ramírez Céspedes ', '67092715139', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:01:41', '2021-08-03 08:01:41'),
(323, 'Ricardo Linares López', '83070701546', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:01:41', '2021-08-03 08:01:41'),
(324, 'Yosbel Ledesma Piñero ', '87050600742', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:01:41', '2021-08-03 08:01:41'),
(325, 'Yanisleny Vivas Camejo ', '87092200732', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-03 08:01:41', '2021-08-03 08:01:41'),
(326, 'Alejandro Martínez Pérez', '90050237308', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-03 08:01:41', '2021-08-03 08:01:41'),
(327, NULL, NULL, 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-03 08:01:41', '2021-08-03 08:01:41'),
(328, 'Ignasio Gilberto Hernández Capote', '47020104382', 'Sereno', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-03 08:01:41', '2021-08-03 08:01:41'),
(329, 'Haydee de la Caridad Márquez Lam ', '73110728793', 'Instructor C de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-03 08:01:41', '2021-08-03 08:01:41'),
(330, 'Yosvany Cruz Fernández ', '90060422662', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-03 08:01:41', '2021-08-03 08:01:41'),
(331, 'Roberto Piña Borrego ', '84040900266', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-03 08:01:41', '2021-08-03 08:01:41'),
(332, 'Héctor Luis Rodríguez Cabrera ', '94062023224', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-03 08:01:41', '2021-08-03 08:01:41'),
(333, 'Madelyn Ledesma Ramos ', '79022500798', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-03 08:01:42', '2021-08-03 08:01:42'),
(334, 'Arelis Cala Blanco ', '74062700870', 'Técnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-03 08:01:42', '2021-08-03 08:01:42'),
(335, 'Leydiani Machado González ', '87110900975', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:01:42', '2021-08-03 08:01:42'),
(336, 'Danay Correa Martínez ', '82081402635', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:01:42', '2021-08-03 08:01:42'),
(337, 'Dianelys Padrón Valdés ', '70011423097', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:01:42', '2021-08-03 08:01:42'),
(338, 'Misael Cabrera Sánchez ', '86102600423', 'Instructor C de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-03 08:01:42', '2021-08-03 08:01:42'),
(339, 'Jasiel Delgado Torres', '91033022749', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-03 08:01:42', '2021-08-03 08:01:42'),
(340, 'José Caridad Diego Caro ', '59032404760', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-03 08:01:42', '2021-08-03 08:01:42'),
(341, 'Juan Hernández González ', '62021405782', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-03 08:01:42', '2021-08-03 08:01:42'),
(342, 'Yaima Perez Rosales ', '82101301452', 'Instructor C de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-03 08:01:42', '2021-08-03 08:01:42'),
(343, NULL, NULL, 'Instructor D de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-03 08:01:42', '2021-08-03 08:01:42'),
(344, 'Roberto Lorenzo Germán ', '67080605506', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-03 08:01:42', '2021-08-03 08:01:42'),
(345, 'Naika Iris Martínez Blanco', '75101700639', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-03 08:01:42', '2021-08-03 08:01:42'),
(346, 'Frank Giral Valdés', '71081031762', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-03 08:01:42', '2021-08-03 08:01:42'),
(347, 'Arianna Coro Barrera', '75051501351', 'Técnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-03 08:01:42', '2021-08-03 08:01:42'),
(348, 'Arianna Arrastia Alonso', '85091101458', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:01:42', '2021-08-03 08:01:42'),
(349, 'Carmen Luisa Mendieta Dominguez', '72102107811', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:01:43', '2021-08-03 08:01:43'),
(350, 'Mirialis Cordero Arencibia ', '84081101473', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:01:43', '2021-08-03 08:01:43'),
(351, 'José Raúl Díaz Martínez', '74082800967', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:01:43', '2021-08-03 08:01:43'),
(352, 'Maricela García Benitez', '72070507131', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:01:43', '2021-08-03 08:01:43'),
(353, 'Liusván Gómez Felipe', '76110501326', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:01:43', '2021-08-03 08:01:43'),
(354, 'Diris María Rojas Mendéz ', '68071805672', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:01:43', '2021-08-03 08:01:43'),
(355, 'Juan José Hernández García ', '66112805883', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:01:43', '2021-08-03 08:01:43'),
(356, 'Denys Roberto Dopico Estevez ', '87031301143', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-03 08:01:43', '2021-08-03 08:01:43'),
(357, 'Dainelys Lugo Rivera ', '90071722334', 'Instructor D de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-03 08:01:43', '2021-08-03 08:01:43'),
(358, 'Yuniel Camacho Toledo', '89011816427', 'Instructor D de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-03 08:01:43', '2021-08-03 08:01:43'),
(359, 'Osvaldo Rodriguez Polier ', '71021704868', 'Instructor D de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-03 08:01:43', '2021-08-03 08:01:43'),
(360, 'Noris Isabel Figueredo Escobar ', '72111630790', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-03 08:01:43', '2021-08-03 08:01:43'),
(361, 'Ailyn Urquiaga Amador ', '94032724492', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-03 08:01:43', '2021-08-03 08:01:43'),
(362, 'Lazaro A Acosta Capote ', '98100103463', 'Sereno', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-03 08:01:43', '2021-08-03 08:01:43'),
(363, 'Carlos Luis Morejón Rivera', '72122804522', 'Sereno', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-03 08:01:43', '2021-08-03 08:01:43'),
(364, 'Lourdes Contreras Pérez ', '64060808771', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-03 08:01:43', '2021-08-03 08:01:43'),
(365, 'Israel Ramos Contreras ', '72053004405', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-03 08:01:43', '2021-08-03 08:01:43'),
(366, 'Juan Francisco Contreras García ', '71082704342', 'Sereno', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-03 08:01:44', '2021-08-03 08:01:44'),
(367, 'Nelsón Santos Pedroso ', '63100733609', 'Sereno', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-03 08:01:44', '2021-08-03 08:01:44'),
(368, 'Lázara Sarahi  Travieso Robaina ', '79120100250', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-03 08:01:44', '2021-08-03 08:01:44'),
(369, 'Milaydis Talavera Martínez ', '87091302010', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-03 08:01:44', '2021-08-03 08:01:44'),
(370, 'Jorge Caridad Lazo Lores ', '72032104664', 'Sereno', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-03 08:01:44', '2021-08-03 08:01:44'),
(371, 'William Pérez Alvarez', '88101300280', 'Sereno', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-03 08:01:44', '2021-08-03 08:01:44'),
(372, 'Alain García Salgado ', '78102500322', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:01:44', '2021-08-03 08:01:44'),
(373, 'Obel Delgado Vázquez ', '64022832347', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-03 08:11:40', '2021-08-03 08:11:40'),
(374, 'Maricelys Machado Moscoso', '68082908399', 'Tecnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-03 08:11:40', '2021-08-03 08:11:40'),
(375, 'Maribel Yhanes Hernández ', '68082908319', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:11:40', '2021-08-03 08:11:40');
INSERT INTO `trabajador` (`id`, `nombre`, `ci`, `cargo`, `direccion`, `foto`, `centro_trabajo`, `qr`, `telefono`, `email`, `created_at`, `updated_at`) VALUES
(376, 'Marjolis Ramírez Céspedes ', '67092715139', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:11:40', '2021-08-03 08:11:40'),
(377, 'Ricardo Linares López', '83070701546', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:11:40', '2021-08-03 08:11:40'),
(378, 'Yosbel Ledesma Piñero ', '87050600742', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:11:40', '2021-08-03 08:11:40'),
(379, 'Yanisleny Vivas Camejo ', '87092200732', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-03 08:11:40', '2021-08-03 08:11:40'),
(380, 'Alejandro Martínez Pérez', '90050237308', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-03 08:11:40', '2021-08-03 08:11:40'),
(381, NULL, NULL, 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-03 08:11:40', '2021-08-03 08:11:40'),
(382, 'Ignasio Gilberto Hernández Capote', '47020104382', 'Sereno', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-03 08:11:40', '2021-08-03 08:11:40'),
(383, 'Haydee de la Caridad Márquez Lam ', '73110728793', 'Instructor C de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-03 08:11:40', '2021-08-03 08:11:40'),
(384, 'Yosvany Cruz Fernández ', '90060422662', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-03 08:11:40', '2021-08-03 08:11:40'),
(385, 'Roberto Piña Borrego ', '84040900266', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-03 08:11:40', '2021-08-03 08:11:40'),
(386, 'Héctor Luis Rodríguez Cabrera ', '94062023224', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-03 08:11:40', '2021-08-03 08:11:40'),
(387, 'Madelyn Ledesma Ramos ', '79022500798', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-03 08:11:41', '2021-08-03 08:11:41'),
(388, 'Arelis Cala Blanco ', '74062700870', 'Técnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-03 08:11:41', '2021-08-03 08:11:41'),
(389, 'Leydiani Machado González ', '87110900975', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:11:41', '2021-08-03 08:11:41'),
(390, 'Danay Correa Martínez ', '82081402635', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:11:41', '2021-08-03 08:11:41'),
(391, 'Dianelys Padrón Valdés ', '70011423097', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:11:41', '2021-08-03 08:11:41'),
(392, 'Misael Cabrera Sánchez ', '86102600423', 'Instructor C de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-03 08:11:41', '2021-08-03 08:11:41'),
(393, 'Jasiel Delgado Torres', '91033022749', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-03 08:11:41', '2021-08-03 08:11:41'),
(394, 'José Caridad Diego Caro ', '59032404760', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-03 08:11:41', '2021-08-03 08:11:41'),
(395, 'Juan Hernández González ', '62021405782', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-03 08:11:41', '2021-08-03 08:11:41'),
(396, 'Yaima Perez Rosales ', '82101301452', 'Instructor C de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-03 08:11:41', '2021-08-03 08:11:41'),
(397, NULL, NULL, 'Instructor D de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-03 08:11:41', '2021-08-03 08:11:41'),
(398, 'Roberto Lorenzo Germán ', '67080605506', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-03 08:11:41', '2021-08-03 08:11:41'),
(399, 'Naika Iris Martínez Blanco', '75101700639', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-03 08:11:41', '2021-08-03 08:11:41'),
(400, 'Frank Giral Valdés', '71081031762', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-03 08:11:41', '2021-08-03 08:11:41'),
(401, 'Arianna Coro Barrera', '75051501351', 'Técnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-03 08:11:41', '2021-08-03 08:11:41'),
(402, 'Arianna Arrastia Alonso', '85091101458', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:11:41', '2021-08-03 08:11:41'),
(403, 'Carmen Luisa Mendieta Dominguez', '72102107811', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:11:42', '2021-08-03 08:11:42'),
(404, 'Mirialis Cordero Arencibia ', '84081101473', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:11:42', '2021-08-03 08:11:42'),
(405, 'José Raúl Díaz Martínez', '74082800967', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:11:42', '2021-08-03 08:11:42'),
(406, 'Maricela García Benitez', '72070507131', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:11:42', '2021-08-03 08:11:42'),
(407, 'Liusván Gómez Felipe', '76110501326', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:11:42', '2021-08-03 08:11:42'),
(408, 'Diris María Rojas Mendéz ', '68071805672', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:11:42', '2021-08-03 08:11:42'),
(409, 'Juan José Hernández García ', '66112805883', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:11:42', '2021-08-03 08:11:42'),
(410, 'Denys Roberto Dopico Estevez ', '87031301143', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-03 08:11:42', '2021-08-03 08:11:42'),
(411, 'Dainelys Lugo Rivera ', '90071722334', 'Instructor D de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-03 08:11:42', '2021-08-03 08:11:42'),
(412, 'Yuniel Camacho Toledo', '89011816427', 'Instructor D de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-03 08:11:42', '2021-08-03 08:11:42'),
(413, 'Osvaldo Rodriguez Polier ', '71021704868', 'Instructor D de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-03 08:11:42', '2021-08-03 08:11:42'),
(414, 'Noris Isabel Figueredo Escobar ', '72111630790', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-03 08:11:42', '2021-08-03 08:11:42'),
(415, 'Ailyn Urquiaga Amador ', '94032724492', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-03 08:11:42', '2021-08-03 08:11:42'),
(416, 'Lazaro A Acosta Capote ', '98100103463', 'Sereno', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-03 08:11:42', '2021-08-03 08:11:42'),
(417, 'Carlos Luis Morejón Rivera', '72122804522', 'Sereno', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-03 08:11:42', '2021-08-03 08:11:42'),
(418, 'Lourdes Contreras Pérez ', '64060808771', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-03 08:11:42', '2021-08-03 08:11:42'),
(419, 'Israel Ramos Contreras ', '72053004405', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-03 08:11:42', '2021-08-03 08:11:42'),
(420, 'Juan Francisco Contreras García ', '71082704342', 'Sereno', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-03 08:11:43', '2021-08-03 08:11:43'),
(421, 'Nelsón Santos Pedroso ', '63100733609', 'Sereno', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-03 08:11:43', '2021-08-03 08:11:43'),
(422, 'Lázara Sarahi  Travieso Robaina ', '79120100250', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-03 08:11:43', '2021-08-03 08:11:43'),
(423, 'Milaydis Talavera Martínez ', '87091302010', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-03 08:11:43', '2021-08-03 08:11:43'),
(424, 'Jorge Caridad Lazo Lores ', '72032104664', 'Sereno', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-03 08:11:43', '2021-08-03 08:11:43'),
(425, 'William Pérez Alvarez', '88101300280', 'Sereno', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-03 08:11:43', '2021-08-03 08:11:43'),
(426, 'Alain García Salgado ', '78102500322', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:11:43', '2021-08-03 08:11:43'),
(427, 'Obel Delgado Vázquez ', '64022832347', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-03 08:14:17', '2021-08-03 08:14:17'),
(428, 'Maricelys Machado Moscoso', '68082908399', 'Tecnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-03 08:14:17', '2021-08-03 08:14:17'),
(429, 'Maribel Yhanes Hernández ', '68082908319', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:14:17', '2021-08-03 08:14:17'),
(430, 'Marjolis Ramírez Céspedes ', '67092715139', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:14:17', '2021-08-03 08:14:17'),
(431, 'Ricardo Linares López', '83070701546', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:14:18', '2021-08-03 08:14:18'),
(432, 'Yosbel Ledesma Piñero ', '87050600742', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:14:18', '2021-08-03 08:14:18'),
(433, 'Yanisleny Vivas Camejo ', '87092200732', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-03 08:14:18', '2021-08-03 08:14:18'),
(434, 'Alejandro Martínez Pérez', '90050237308', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-03 08:14:18', '2021-08-03 08:14:18'),
(435, NULL, NULL, 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-03 08:14:18', '2021-08-03 08:14:18'),
(436, 'Ignasio Gilberto Hernández Capote', '47020104382', 'Sereno', NULL, NULL, 'Sandino 1', NULL, NULL, NULL, '2021-08-03 08:14:18', '2021-08-03 08:14:18'),
(437, 'Haydee de la Caridad Márquez Lam ', '73110728793', 'Instructor C de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-03 08:14:18', '2021-08-03 08:14:18'),
(438, 'Yosvany Cruz Fernández ', '90060422662', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-03 08:14:18', '2021-08-03 08:14:18'),
(439, 'Roberto Piña Borrego ', '84040900266', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-03 08:14:18', '2021-08-03 08:14:18'),
(440, 'Héctor Luis Rodríguez Cabrera ', '94062023224', 'Instructor D de Joven Club ', NULL, NULL, 'Sandino 2', NULL, NULL, NULL, '2021-08-03 08:14:18', '2021-08-03 08:14:18'),
(441, 'Madelyn Ledesma Ramos ', '79022500798', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-03 08:14:18', '2021-08-03 08:14:18'),
(442, 'Arelis Cala Blanco ', '74062700870', 'Técnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-03 08:14:18', '2021-08-03 08:14:18'),
(443, 'Leydiani Machado González ', '87110900975', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:14:18', '2021-08-03 08:14:18'),
(444, 'Danay Correa Martínez ', '82081402635', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:14:18', '2021-08-03 08:14:18'),
(445, 'Dianelys Padrón Valdés ', '70011423097', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:14:18', '2021-08-03 08:14:18'),
(446, 'Misael Cabrera Sánchez ', '86102600423', 'Instructor C de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-03 08:14:18', '2021-08-03 08:14:18'),
(447, 'Jasiel Delgado Torres', '91033022749', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-03 08:14:19', '2021-08-03 08:14:19'),
(448, 'José Caridad Diego Caro ', '59032404760', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-03 08:14:19', '2021-08-03 08:14:19'),
(449, 'Juan Hernández González ', '62021405782', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 1', NULL, NULL, NULL, '2021-08-03 08:14:19', '2021-08-03 08:14:19'),
(450, 'Yaima Perez Rosales ', '82101301452', 'Instructor C de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-03 08:14:19', '2021-08-03 08:14:19'),
(451, NULL, NULL, 'Instructor D de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-03 08:14:19', '2021-08-03 08:14:19'),
(452, 'Roberto Lorenzo Germán ', '67080605506', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-03 08:14:19', '2021-08-03 08:14:19'),
(453, 'Naika Iris Martínez Blanco', '75101700639', 'Instructor D de Joven Club ', NULL, NULL, 'Minas 2', NULL, NULL, NULL, '2021-08-03 08:14:19', '2021-08-03 08:14:19'),
(454, 'Frank Giral Valdés', '71081031762', 'Director Municipal ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-03 08:14:19', '2021-08-03 08:14:19'),
(455, 'Arianna Coro Barrera', '75051501351', 'Técnico B en Gestión Económica ', NULL, NULL, 'Dirección Mpal', NULL, NULL, NULL, '2021-08-03 08:14:19', '2021-08-03 08:14:19'),
(456, 'Arianna Arrastia Alonso', '85091101458', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:14:19', '2021-08-03 08:14:19'),
(457, 'Carmen Luisa Mendieta Dominguez', '72102107811', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:14:19', '2021-08-03 08:14:19'),
(458, 'Mirialis Cordero Arencibia ', '84081101473', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:14:19', '2021-08-03 08:14:19'),
(459, 'José Raúl Díaz Martínez', '74082800967', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:14:19', '2021-08-03 08:14:19'),
(460, 'Maricela García Benitez', '72070507131', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:14:19', '2021-08-03 08:14:19'),
(461, 'Liusván Gómez Felipe', '76110501326', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:14:19', '2021-08-03 08:14:19'),
(462, 'Diris María Rojas Mendéz ', '68071805672', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:14:19', '2021-08-03 08:14:19'),
(463, 'Juan José Hernández García ', '66112805883', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:14:20', '2021-08-03 08:14:20'),
(464, 'Denys Roberto Dopico Estevez ', '87031301143', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-03 08:14:20', '2021-08-03 08:14:20'),
(465, 'Dainelys Lugo Rivera ', '90071722334', 'Instructor D de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-03 08:14:20', '2021-08-03 08:14:20'),
(466, 'Yuniel Camacho Toledo', '89011816427', 'Instructor D de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-03 08:14:20', '2021-08-03 08:14:20'),
(467, 'Osvaldo Rodriguez Polier ', '71021704868', 'Instructor D de Joven Club ', NULL, NULL, 'Consolación 1', NULL, NULL, NULL, '2021-08-03 08:14:20', '2021-08-03 08:14:20'),
(468, 'Noris Isabel Figueredo Escobar ', '72111630790', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-03 08:14:20', '2021-08-03 08:14:20'),
(469, 'Ailyn Urquiaga Amador ', '94032724492', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-03 08:14:20', '2021-08-03 08:14:20'),
(470, 'Lazaro A Acosta Capote ', '98100103463', 'Sereno', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-03 08:14:20', '2021-08-03 08:14:20'),
(471, 'Carlos Luis Morejón Rivera', '72122804522', 'Sereno', NULL, NULL, 'Consolación 2', NULL, NULL, NULL, '2021-08-03 08:14:20', '2021-08-03 08:14:20'),
(472, 'Lourdes Contreras Pérez ', '64060808771', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-03 08:14:20', '2021-08-03 08:14:20'),
(473, 'Israel Ramos Contreras ', '72053004405', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-03 08:14:20', '2021-08-03 08:14:20'),
(474, 'Juan Francisco Contreras García ', '71082704342', 'Sereno', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-03 08:14:20', '2021-08-03 08:14:20'),
(475, 'Nelsón Santos Pedroso ', '63100733609', 'Sereno', NULL, NULL, 'Consolación 3', NULL, NULL, NULL, '2021-08-03 08:14:20', '2021-08-03 08:14:20'),
(476, 'Lázara Sarahi  Travieso Robaina ', '79120100250', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-03 08:14:20', '2021-08-03 08:14:20'),
(477, 'Milaydis Talavera Martínez ', '87091302010', 'Instructor C de Joven Club ', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-03 08:14:20', '2021-08-03 08:14:20'),
(478, 'Jorge Caridad Lazo Lores ', '72032104664', 'Sereno', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-03 08:14:20', '2021-08-03 08:14:20'),
(479, 'William Pérez Alvarez', '88101300280', 'Sereno', NULL, NULL, 'Consolación 4', NULL, NULL, NULL, '2021-08-03 08:14:20', '2021-08-03 08:14:20'),
(480, 'Alain García Salgado ', '78102500322', 'Instructor C de Joven Club ', NULL, NULL, 'Grupo Mpal', NULL, NULL, NULL, '2021-08-03 08:14:21', '2021-08-03 08:14:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `centro_trabajo`
--
ALTER TABLE `centro_trabajo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `centro_trabajo_email_unique` (`email`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `25` (`email`);

--
-- Indices de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trabajador_email_unique` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `centro_trabajo`
--
ALTER TABLE `centro_trabajo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

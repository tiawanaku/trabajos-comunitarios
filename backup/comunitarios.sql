-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2025 a las 21:53:09
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `comunitarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('trabajos_comunitarios_cache_356a192b7913b04c54574d18c28d46e6395428ab', 'i:6;', 1747857719),
('trabajos_comunitarios_cache_356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1747857718;', 1747857719),
('trabajos_comunitarios_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1749665497),
('trabajos_comunitarios_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1749665497;', 1749665497);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunitarios`
--

CREATE TABLE `comunitarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `apellido_paterno` varchar(255) NOT NULL,
  `apellido_materno` varchar(255) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `numero_ci` int(11) NOT NULL,
  `expedicion_ci` varchar(255) NOT NULL,
  `numero_nurej` varchar(255) NOT NULL,
  `numero_celular` int(11) NOT NULL,
  `numero_hoja_ruta` varchar(255) NOT NULL,
  `cite_judicial` varchar(255) NOT NULL,
  `juzgado_judicial` varchar(255) NOT NULL,
  `fecha_judicail` date NOT NULL,
  `numero_resolucion` varchar(255) NOT NULL,
  `fecha_resolucion` date NOT NULL,
  `juzgado_audiencia` varchar(255) NOT NULL,
  `fecha_audiencia` date NOT NULL,
  `tiempo_sentencia` varchar(255) NOT NULL,
  `periodo_sentencia` varchar(255) NOT NULL,
  `dias_sentencia` enum('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo') NOT NULL,
  `horas_sentencia` varchar(255) NOT NULL,
  `area_trabajo` varchar(255) NOT NULL,
  `lugar_trabajo` varchar(255) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `incumplimiento` varchar(255) NOT NULL,
  `observaciones` varchar(255) NOT NULL,
  `informe_talento` varchar(255) DEFAULT NULL,
  `hojaderuta` varchar(255) DEFAULT NULL,
  `apersonamineto` varchar(255) DEFAULT NULL,
  `planilla_asistencia` varchar(255) DEFAULT NULL,
  `informe_mensual` varchar(255) DEFAULT NULL,
  `informe_conclusion` varchar(255) DEFAULT NULL,
  `informe_incumplimiento` varchar(255) DEFAULT NULL,
  `informe_fiscal` varchar(255) DEFAULT NULL,
  `fotocopia_carnet` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comunitarios`
--

INSERT INTO `comunitarios` (`id`, `apellido_paterno`, `apellido_materno`, `nombres`, `numero_ci`, `expedicion_ci`, `numero_nurej`, `numero_celular`, `numero_hoja_ruta`, `cite_judicial`, `juzgado_judicial`, `fecha_judicail`, `numero_resolucion`, `fecha_resolucion`, `juzgado_audiencia`, `fecha_audiencia`, `tiempo_sentencia`, `periodo_sentencia`, `dias_sentencia`, `horas_sentencia`, `area_trabajo`, `lugar_trabajo`, `fecha_inicio`, `fecha_fin`, `incumplimiento`, `observaciones`, `informe_talento`, `hojaderuta`, `apersonamineto`, `planilla_asistencia`, `informe_mensual`, `informe_conclusion`, `informe_incumplimiento`, `informe_fiscal`, `fotocopia_carnet`, `created_at`, `updated_at`) VALUES
(1, 'Chungara', 'Calle', 'Felix', 1437333, 'QR', '201502022401216', 71268559, 'GAMEA-60044-2025', '004/2025', 'Distrito Judicial de El Alto', '2025-01-03', '367/2024', '2024-09-10', '367/2024', '2024-11-27', '5 años', '18 meses', 'Martes', '6 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-11-27', '2029-11-27', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano1.pdf', 'comunitarios/hoja de ruta1.pdf', 'comunitarios/apersonamiento1.pdf', 'comunitarios/plantilla de asistencia1.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado1.pdf', 'comunitarios/carnet1.pdf', '2025-05-12 23:37:05', '2025-05-22 21:55:26'),
(2, 'Bejarano', 'Liañez', 'Isabel', 1727535, 'QR', '201502022404265', 77216474, 'GAMEA-60205-2025', '16/2025', 'Distrito Judicial de El Alto', '2025-01-09', '501/2025', '2024-11-07', '501/2025', '2025-01-03', '3 años', '36 meses', 'Viernes', '6 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2025-02-14', '2028-02-14', 'ninguno', 'No tiene plantilla de asistencia', 'comunitarios/informe de talento humano2.pdf', 'comunitarios/hoa de ruta2.pdf', 'comunitarios/apersonamiento2.pdf', NULL, NULL, NULL, NULL, 'comunitarios/informe de jusgado2.pdf', 'comunitarios/carnet2.pdf', '2025-05-12 23:54:57', '2025-05-15 23:12:25'),
(3, 'Mamani', 'Paredes', 'Eleuterio', 2570568, 'QR', '201502022003293', 78780025, 'GAMEA-70770-2024', '3675/2024', '1ro de la ciudad de EL ALTO', '2024-11-07', '258/2023', '2023-08-01', '258/2023', '2024-10-30', '1 año', '12 meses', 'Domingo', '4 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-12-01', '2025-12-01', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano3.pdf', 'comunitarios/hoja de ruta3.pdf', 'comunitarios/apersonamiento3.pdf', 'comunitarios/plantilla de asistencia3.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado3.pdf', 'comunitarios/carnet3.pdf', '2025-05-13 00:13:12', '2025-05-22 21:57:21'),
(4, 'Paton', 'Flores', 'Osvaldo', 2682767, 'QR', '201502022400621', 78912424, 'GAMEA-69186-2024', '931/2024', '1ro de la ciudad de EL ALTO', '2024-09-20', '050/2024', '2024-08-02', '050/2024', '2024-06-19', '1 año', '12 meses', 'Martes', '3 horas y media', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-04-16', '2025-04-16', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano4.pdf', 'comunitarios/hoja de ruta4.pdf', 'comunitarios/apersonamiento4.pdf', 'comunitarios/plantilla de asistencia4.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado4.pdf', 'comunitarios/carnet4.pdf', '2025-05-13 00:23:05', '2025-05-22 21:57:45'),
(5, 'Tarquino', 'Caceres', 'Rosario', 3338500, 'QR', '201502022211048', 78878814, 'GAMEA-71270-2024', '3816/2024', '1ro de la ciudad de EL ALTO', '2024-11-26', '135/2024', '2024-08-08', '135/2024', '2024-11-19', '2 años', '24 meses', 'Sabado', '4 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-12-21', '2026-12-21', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano5.pdf', 'comunitarios/hoja de ruta5.pdf', 'comunitarios/apersonamiento5.pdf', 'comunitarios/plantilla de asistencia5.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado5.pdf', 'comunitarios/carnet5.pdf', '2025-05-13 21:36:45', '2025-05-22 21:58:06'),
(6, 'Acho', 'Cachaca', 'Wilfredo', 3403583, 'QR', '201502022203504', 70547611, 'GAMEA-70606-2022', '62/2022', '1ro de la ciudad de EL ALTO', '2022-11-25', '500/2022', '2022-09-27', '500/2022', '2022-09-27', '3 años', '36 meses', 'Martes', '4 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2022-07-26', '2025-07-26', 'ninguno', 'no tiene apersonamiento y informe de talento humano', NULL, 'comunitarios/hoja de ruta6.pdf', NULL, 'comunitarios/plantilla de asistencia6.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado6.pdf', 'comunitarios/carnet6.pdf', '2025-05-13 21:50:56', '2025-05-22 21:59:30'),
(7, 'Calle', 'Domingo', 'Cordero', 3484032, 'QR', '201502022107397', 67182025, 'GAMEA-61179-2025', '267/2025', '1ro de la ciudad de EL ALTO', '2025-02-06', '405/2024', '2024-10-17', '405/2024', '2024-11-14', '1 año', '12 meses', 'Jueves', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2025-02-27', '2026-02-27', 'ninguno', 'No tiene hoja de ruta, fotocopia de carnet y informe de talento humano', NULL, NULL, 'comunitarios/apersonamiento7.pdf', 'comunitarios/plantilla de asistencia7.pdf', NULL, NULL, NULL, 'comunitarios/informe jusgado7.pdf', NULL, '2025-05-13 22:04:30', '2025-05-22 21:59:53'),
(8, 'Calle', 'Choque', 'Nancy Sonia', 4794094, 'QR', '201503022201293', 75818028, 'Gamea-68428-2023', '2195/2023', '1ro de la ciudad de EL ALTO', '2023-08-25', '09/2023', '2023-03-21', '09/2023', '2023-08-26', '1 año', '12 meses', 'Martes', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-09-26', '2025-09-26', 'ninguno', 'Falta apersonamiento', 'comunitarios/informe8.pdf', 'comunitarios/hoja de ruta8.pdf', NULL, 'comunitarios/planilla de asistencia8.pdf', NULL, NULL, NULL, 'comunitarios/informe judicial8.pdf', 'comunitarios/carnet8.pdf', '2025-05-13 22:17:38', '2025-05-22 22:01:10'),
(9, 'Mamani', 'Colquehuanca', 'Martin', 4904229, 'LP', '201403680E', 71552534, 'GAMEA-62391-2024', '456/2024', '1ro de la ciudad de EL ALTO', '2024-03-18', '345/2023', '2023-10-13', '345/2023', '2024-03-12', '1 año', '12 meses', 'Sabado', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-04-13', '2025-04-13', 'ninguno', 'ninguno', 'comunitarios/informe9.pdf', 'comunitarios/hoja de ruta9.pdf', 'comunitarios/apersonamiento9.pdf', 'comunitarios/planilla de asistencia9.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado9.pdf', 'comunitarios/carnet9.pdf', '2025-05-13 22:31:11', '2025-05-22 22:01:53'),
(10, 'Chambi', 'Mamani', 'Tito', 5471630, 'QR', '201503022200350', 76548389, 'GAMEA-68050-2022', '2363/2022', '1ro de la ciudad de EL ALTO', '2022-09-15', '337/2022', '2022-08-02', '337/2022', '2022-09-05', '3 años', '36 meses', 'Lunes', '4 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2022-10-10', '2025-10-10', 'ninguno', 'Falta apersonamiento', 'comunitarios/informe de taleto humano10.pdf', 'comunitarios/hoja de ruta10.pdf', NULL, 'comunitarios/plantilla de asistencia10.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado10.pdf', 'comunitarios/carnet10.pdf', '2025-05-13 22:41:21', '2025-05-22 22:02:23'),
(11, 'Choquehuanca', 'Limachi', 'Angel', 5993572, 'QR', '20291536', 62443662, 'GAMEA-65459-2024', '1409/2024', '1ro de la ciudad de EL ALTO', '2024-06-13', '258/2023', '2023-11-07', '258/2023', '2024-06-04', '1 año y tres meses', '60 semanas', 'Domingo', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-07-07', '2025-07-07', 'ninguno', 'ninguno', 'comunitarios/informe11.pdf', 'comunitarios/hoja de ruta11.pdf', 'comunitarios/apersonamiento11.pdf', 'comunitarios/plantiila de ingreso11.pdf', NULL, NULL, NULL, 'comunitarios/informe de juicio11.pdf', 'comunitarios/carnet11.pdf', '2025-05-13 22:53:51', '2025-05-22 23:50:33'),
(12, 'Rodriguez', 'Tintaya', 'Jenny', 6000109, 'LP', '201502022108271', 76277597, 'GAMEA-66877-2023', '818/2023', '1ro de la ciudad de EL ALTO', '2023-07-11', '254/2023', '2023-04-25', '254/2023', '2023-07-05', '2 años', '24 meses', 'Martes', '3 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2023-11-28', '2025-11-28', 'ninguno', 'Falta apersonamiento', 'comunitarios/informe de talento humano12.pdf', 'comunitarios/hoja de ruta12.pdf', NULL, 'comunitarios/planilla de asistencia12.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado12.pdf', 'comunitarios/carnet12.pdf', '2025-05-13 23:02:58', '2025-05-22 23:51:07'),
(13, 'Torrez', 'Sandy', 'Roberto', 6000455, 'LP', '201502022106238', 73217221, 'GAMEA-64531-2024', '1081/2024', '1ro de la ciudad de EL ALTO', '2024-05-13', '227/2022', '2022-05-17', '227/2022', '2022-06-28', '1 año', '12 meses', 'Sabado', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-06-08', '2025-06-08', 'ninguno', 'ninguno', 'comunitarios/informe talento humado13.pdf', 'comunitarios/Hoja de ruta13.pdf', 'comunitarios/apersonamiento13.pdf', 'comunitarios/plantilla de asistencia13.pdf', NULL, NULL, NULL, 'comunitarios/informe judicial13.pdf', 'comunitarios/carnet13.pdf', '2025-05-13 23:12:01', '2025-05-22 23:51:33'),
(14, 'Poma', 'Alavi', 'Luis Fernando', 6032680, 'LP', '20275464', 76527981, 'GAMEA-67962-2024', '1962/2024', '1ro de la ciudad de EL ALTO', '2024-08-22', '124/2021', '2021-05-28', '124/2021', '2021-06-30', '1 año', '52 semanas', 'Sabado', '4 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-10-05', '2025-10-05', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano14.pdf', 'comunitarios/hoja de ruta14.pdf', 'comunitarios/apersonamiento14.pdf', 'comunitarios/plantilla de asistencia14.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado14.pdf', 'comunitarios/carnet14.pdf', '2025-05-13 23:19:09', '2025-05-22 23:51:55'),
(15, 'Marca', 'Navaiz', 'Edy', 6044243, 'QR', '201502022003520', 72091248, 'GAMEA-65778-2024', '1562/2023', '1ro de la ciudad de EL ALTO', '2024-06-17', '256/2023', '2023-10-31', '256/2023', '2024-05-29', '1 año y tres meses', '60 semanas', 'Domingo', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-07-14', '2025-07-14', 'ninguno', 'ninguno', 'comunitarios/informe15.pdf', 'comunitarios/hoja de ruta15.pdf', 'comunitarios/apersonamiento15.pdf', 'comunitarios/plantilla de asistencia15.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado15.pdf', 'comunitarios/carnet15.pdf', '2025-05-13 23:28:29', '2025-05-22 23:52:14'),
(16, 'Aquise', 'Quisbert', 'Erick Yamir', 6053308, 'QR', '201502022103844', 0, 'ninguno', '2728/2022', '1ro de la ciudad de EL ALTO', '2022-10-19', '209/2022', '2022-08-16', '209/2022', '2022-08-16', '1 año', '60 semanas', 'Jueves', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2023-04-06', '2023-04-27', 'ninguno', 'Falta apersonamiento', 'comunitarios/informe16.pdf', 'comunitarios/hoja de ruta16.pdf', NULL, 'comunitarios/asistencia16.pdf', NULL, NULL, NULL, 'comunitarios/informe de juzgado16.pdf', 'comunitarios/carnet16.pdf', '2025-05-13 23:41:28', '2025-05-22 23:53:43'),
(17, 'Condori', 'Lopez', 'Lidia', 6062056, 'QR', '201519360E', 67815102, 'GAMEA-69222-2024', '1690/2024', '1ro de la ciudad de EL ALTO', '2024-09-30', '041/2023', '2023-08-21', '041/2023', '0224-04-08', '11 meses', '48 semanas', 'Jueves', '4 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-09-30', '2025-09-30', 'ninguno', 'No tiene apersonamiento y plantilla de asistencia', 'comunitarios/informe de talento humano17.pdf', 'comunitarios/hoja de ruta17.pdf', NULL, NULL, NULL, NULL, NULL, 'comunitarios/informe de jusgado17.pdf', 'comunitarios/carnet17.pdf', '2025-05-13 23:55:24', '2025-05-22 23:54:07'),
(19, 'Flores', 'Callisaya', 'Wilson', 6928423, 'QR', '201502022206673', 67143846, 'GAMEA-71438-2023', '1546/2023', '1ro de la ciudad de EL ALTO', '2023-11-22', '106/2023', '2023-09-15', '106/2023', '2023-09-15', '2 años', '24 meses', 'Lunes', '5 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-04-01', '2026-04-01', 'ninguno', 'ninguno', 'comunitarios/informe18.pdf', 'comunitarios/hoja de ruta18.pdf', 'comunitarios/apersonamiento18.pdf', 'comunitarios/planilla de asistencia18.pdf', NULL, NULL, NULL, 'comunitarios/informe judicial18.pdf', 'comunitarios/carnet18.pdf', '2025-05-14 00:03:01', '2025-05-22 23:54:30'),
(20, 'Rojas', 'Tapia', 'Diego Valentin', 6943853, 'QR', '20251559', 69842545, 'GAMEA-67336-2024', '1530/2024', '1ro de la ciudad de EL ALTO', '2024-08-05', '76/2022', '2024-08-12', '76/2022', '2024-08-10', '1 año', '12 meses', 'Sabado', '7 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-08-31', '2025-08-31', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano19.pdf', 'comunitarios/hoja de ruta19.pdf', 'comunitarios/apersonamiento19.pdf', 'comunitarios/hoja de asistencia19.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado19.pdf', 'comunitarios/carnet19.pdf', '2025-05-14 00:12:23', '2025-05-22 23:54:52'),
(21, 'Cori', 'Ticona', 'Elisa', 6993057, 'LP', '201502022102930', 63174499, 'GAMEA-70806-2023', '1486/2023', '1ro de la ciudad de EL ALTO', '2023-10-30', 'S-90/2023', '2023-09-25', 'S-90/2023', '2023-10-25', '1 año', '12 meses', 'Sabado', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2023-11-25', '2024-11-15', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano20.pdf', 'comunitarios/hoja de ruta20.pdf', 'comunitarios/apersonamiento20.pdf', 'comunitarios/planilla de asistencia20.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado20.pdf', 'comunitarios/carnet20.pdf', '2025-05-14 00:19:03', '2025-05-22 23:55:27'),
(22, 'Paucara', 'Condori', 'Emilio Argos', 7022746, 'QR', '201502022109310', 60615294, 'GAMEA-02454-2024', '2541/2024', '1ro de la ciudad de EL ALTO', '2022-10-05', '052/2022', '2022-02-15', '052/2022', '2022-09-26', '3 años', '36 meses', 'Sabado', '2 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2022-02-15', '2025-02-15', 'ninguno', 'Falta apersonamiento', 'comunitarios/informe de talento humano21.pdf', 'comunitarios/hoja de ruta21.pdf', NULL, 'comunitarios/plantilla de asistencia21.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado21.pdf', 'comunitarios/carnet21.pdf', '2025-05-14 21:57:07', '2025-05-22 23:56:18'),
(23, 'Mamani', 'Lopez', 'Waldo', 7043142, 'QR', '201502022300716', 76235257, 'GAMEA-65769-2023', '1139/2024', '1ro de la ciudad de EL ALTO', '2024-06-06', '369/2024', '2024-11-08', '369/2024', '2024-02-05', '11 meses', '48 semanas', 'Martes', '6 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-07-09', '2025-06-09', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano22.pdf', 'comunitarios/hoja de ruta22.pdf', 'comunitarios/apersonamiento22.pdf', 'comunitarios/plantilla de asistencia22.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado22.pdf', 'comunitarios/carnet22.pdf', '2025-05-14 22:03:36', '2025-05-22 23:56:41'),
(24, 'Ali', 'Calcina', 'Armando Jose', 7078878, 'QR', '201702556E', 79663664, 'GAME-69069-2023', '1164/2023', '1ro de la ciudad de EL ALTO', '2023-09-13', 'S-74/2023', '2023-08-23', 'S-74/2023', '2023-09-11', '2 años', '24 meses', 'Jueves', '6 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2023-10-26', '2025-10-26', 'ninguno', 'ninguno', 'comunitarios/informe23.pdf', 'comunitarios/hoja de ruta23.pdf', 'comunitarios/apersonamiento23.pdf', 'comunitarios/plantilla de asistencia23.pdf', NULL, NULL, NULL, 'comunitarios/informe judicial23.pdf', 'comunitarios/carnet23.pdf', '2025-05-14 22:13:18', '2025-05-15 23:50:32'),
(25, 'Mamani', 'Poma', 'Jhonny', 7092769, 'QR', '201502022206609', 64054467, 'GAMEA-70420-2023', '2875/2022', '1ro de la ciudad de EL ALTO', '2022-10-24', 'V-68/2023', '2023-08-24', 'V-68/2023', '2023-10-19', '1 año y 6 meses', '12 meses', 'Sabado', '6 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-11-30', '2026-05-30', 'ninguno', 'Falta apersonamiento', 'comunitarios/informe24.pdf', 'comunitarios/hoja de ruta24.pdf', NULL, 'comunitarios/plantilla de asistencia24.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado24.pdf', 'comunitarios/carnet24.pdf', '2025-05-14 22:23:52', '2025-05-15 23:52:05'),
(26, 'Mamani', 'Quispe', 'Ricardo', 7097762, 'QR', '201502022208216', 0, 'GAMEA-60181-2023', '008/2022', 'Tribunal Departamental de Justicia De La Paz', '2023-01-09', '559/2022', '2022-10-11', '559/2022', '2022-11-23', '3 años', '36 meses', 'Miercoles', '4 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-04-24', '2027-04-24', 'ninguno', 'No tiene plantilla de asistencia', 'comunitarios/informe25.pdf', 'comunitarios/hoja de ruta25.pdf', 'comunitarios/apersonamiento25.pdf', NULL, NULL, NULL, NULL, 'comunitarios/informe de jusgado25.pdf', 'comunitarios/carnet25.pdf', '2025-05-14 22:35:30', '2025-05-15 23:54:04'),
(27, 'Ticona', 'Flores', 'Sabino', 8299921, 'LP', '201502022210531', 79532812, 'GAMEA-69426-2024', '3124/2024', '1ro de la ciudad de EL ALTO', '2024-09-19', 'S-122/2023', '2023-09-14', 'S-122/2023', '2023-03-06', '1 año', '12 meses', 'Domingo', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-10-27', '2025-10-27', 'ninguno', 'ninguno', 'comunitarios/informe26.pdf', 'comunitarios/hoja de ruta26.pdf', 'comunitarios/apersonamiento26.pdf', 'comunitarios/plantilla de asistencia26.pdf', NULL, NULL, NULL, 'comunitarios/informe judicial26.pdf', 'comunitarios/carnet26.pdf', '2025-05-14 22:45:57', '2025-05-15 23:56:09'),
(28, 'Poma', 'Pampa', 'Justo', 8354615, 'QR', '201502022309339', 63083055, 'GAMEA-68433-2024', '2062/2024', '1ro de la ciudad de EL ALTO', '2024-09-05', '120/2024', '2024-02-14', '120/2024', '2024-08-29', '2 años', '24 meses', 'Domingo', '4 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-09-22', '2026-09-22', 'ninguno', 'ninguno', 'comunitarios/informe27.pdf', 'comunitarios/hoja de ruta27.pdf', 'comunitarios/apersonamiento27.pdf', 'comunitarios/planilla de asistencia27.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado27.pdf', 'comunitarios/carnet27.pdf', '2025-05-14 22:53:02', '2025-05-15 23:58:04'),
(29, 'Mamani', 'Tancara', 'Moises Gustavo', 8373320, 'QR', '201701635E', 65633404, 'GAMEA-64759-2024', '1028/2023', '1ro de la ciudad de EL ALTO', '2024-05-24', '57/2023', '2023-09-07', '57/2023', '2024-04-23', '1 año', '12 meses', 'Domingo', '6 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-07-14', '2025-07-14', 'ninguno', 'ninguno', 'comunitarios/informe28.pdf', 'comunitarios/hoja de ruta28.pdf', 'comunitarios/apersonamiento28.pdf', 'comunitarios/asistencias28.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado28.pdf', 'comunitarios/carnet28.pdf', '2025-05-14 22:59:06', '2025-05-16 00:00:04'),
(30, 'Mendoza', 'Roger', 'Duchen', 9100707, 'QR', '201503022400688', 72590445, 'GAMEA-60315-2025', '51/2025', '1ro de la ciudad de EL ALTO', '2025-01-10', '520/2024', '2024-09-20', '520/2024', '2025-01-07', '1 año', '12 meses', 'Martes', '6 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2025-01-07', '2026-01-07', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano29.pdf', 'comunitarios/hoja de ruta29.pdf', 'comunitarios/apersonamiento29.pdf', 'comunitarios/plantilla de asistencia29.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado29.pdf', 'comunitarios/carnet29.pdf', '2025-05-14 23:05:03', '2025-05-16 00:01:30'),
(31, 'Cori', 'Ticona', 'Ever Mauricio', 9201753, 'QR', '201502022102930', 68120181, 'GAMEA-70808-2023', '1484/2023', '1ro de la ciudad de EL ALTO', '2023-10-30', 'S-90/2023', '2023-09-25', 'S-90/2023', '2023-10-25', '1 año', '12 meses', 'Martes', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2023-12-03', '2024-12-03', 'ninguno', 'ninguno', 'comunitarios/informe30.pdf', 'comunitarios/hoja de ruta30.pdf', 'comunitarios/apersonamiento30.pdf', 'comunitarios/planilla de asistencia30.pdf', NULL, NULL, NULL, 'comunitarios/informe judicial30.pdf', 'comunitarios/carnet30.pdf', '2025-05-14 23:17:09', '2025-05-16 00:03:01'),
(32, 'Apaza', 'Aru', 'Felix', 9223767, 'QR', '201503022201271', 76526546, 'GAMEA-70710-2024', '85/2022', '1ro de la ciudad de EL ALTO', '2022-10-05', '630/2022', '2022-11-03', '630/2022', '2022-11-28', '3 años', '36 meses', 'Lunes', '4 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2023-06-12', '2026-06-10', 'ninguno', 'No tiene apersonamiento', 'comunitarios/informe31.pdf', 'comunitarios/hoja de ruta31.pdf', NULL, 'comunitarios/planilla de asistencia31.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado31.pdf', 'comunitarios/carnet31.pdf', '2025-05-14 23:24:50', '2025-05-16 00:05:20'),
(33, 'Fernandez', 'Cerezo', 'Ramiro', 9228198, 'QR', '201502022307530', 75815822, 'GAMEA-61852-2024', '324/2024', '1ro de la ciudad de EL ALTO', '2024-02-29', 'S-131/2023', '2024-08-01', 's-131/2023', '2024-02-26', '2 años', '24 meses', 'Sabado', '6 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-05-04', '2025-05-04', 'ninguno', 'ninguno', 'comunitarios/informe32.pdf', 'comunitarios/hoja de ruta32.pdf', 'comunitarios/apersonamiento32.pdf', 'comunitarios/plantilla de asistencia32.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado32.pdf', 'comunitarios/carnet32.pdf', '2025-05-14 23:30:39', '2025-05-16 00:06:44'),
(34, 'Valero', 'Surco', 'Moises Abraham', 9985898, 'QR', '201503022300120', 79101519, 'GAMEA-61083-2024', '0043/2024', '1ro de la ciudad de EL ALTO', '2024-01-12', 'S-117/2023', '2023-11-07', 'S-117/2023', '2023-03-13', '2 años', '24 meses', 'Domingo', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-04-07', '2026-04-07', 'ninguno', 'No tiene apersonamiento', 'comunitarios/informe33.pdf', 'comunitarios/hoja de ruta33.pdf', NULL, 'comunitarios/plantilla de asistencia33.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado33.pdf', 'comunitarios/carnet33.pdf', '2025-05-14 23:43:37', '2025-05-16 00:08:31'),
(35, 'Selaez', 'Helguero', 'Cristhian', 10023132, 'QR', '201502022102835', 79636311, 'GAMEA-65597-2024', '1201/2024', '1ro de la ciudad de EL ALTO', '2024-06-10', '181/2023', '2023-08-31', '181/2023', '2024-06-05', '1 año y tres meses', '60 semanas', 'Sabado', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-09-21', '2025-11-21', 'ninguno', 'ninguno', 'comunitarios/informe34.pdf', 'comunitarios/hoja de ruta34.pdf', 'comunitarios/apersonamiento34.pdf', 'comunitarios/asistencia34.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado34.pdf', 'comunitarios/carnet34.pdf', '2025-05-14 23:52:13', '2025-05-16 00:10:34'),
(36, 'Aruquipa', 'Lovera', 'Vidal', 10088938, 'QR', '201503022201252', 64046108, 'GAMEA-70543-2023', '2892/2023', '1ro de la ciudad de EL ALTO', '2023-10-19', '60/2023', '2023-09-07', '60/2023', '2023-10-09', '1 año', '12 meses', 'Lunes', '4 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-04-29', '2025-04-29', 'ninguno', 'ninguno', 'comunitarios/informe35.pdf', 'comunitarios/hoja de ruta35.pdf', 'comunitarios/apersonamiento35.pdf', 'comunitarios/plantilla de asistencia35.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado35.pdf', 'comunitarios/carnet35.pdf', '2025-05-14 23:58:45', '2025-05-16 00:12:54'),
(37, 'Calderon', 'Millisaca', 'Maribel', 10904065, 'QR', '20166867', 79513900, 'GAMEA-68582-2023', '1121/2023', '1ro de la ciudad de EL ALTO', '2023-09-05', '105/2023', '2023-07-05', '105/2023', '2023-08-24', '1 año y tres meses', '15 meses', 'Domingo', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2023-10-08', '2025-01-08', 'ninguno', 'Falta apersonamiento', 'comunitarios/informe36.pdf', 'comunitarios/hoja de ruta36.pdf', NULL, 'comunitarios/planilla de asistencia36.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado36.pdf', 'comunitarios/carnet36.pdf', '2025-05-15 00:05:57', '2025-05-16 00:14:25'),
(38, 'Laymehuanca', 'Valero', 'Jhonny Xiomara', 12483842, 'QR', '20294101', 64052268, 'GAMEA-68532-2023', '1124/2023', '1ro de la ciudad de EL ALTO', '2023-09-01', 'V-226', '2023-08-02', 'v-226', '2023-08-29', '2 años', '24 meses', 'Domingo', '6 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2023-12-03', '2025-12-03', 'ninguno', 'ninguno', 'comunitarios/informe37.pdf', 'comunitarios/hoja de ruta37.pdf', 'comunitarios/apersonamiento37.pdf', 'comunitarios/planilla de asistencia37.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado37.pdf', 'comunitarios/carnet37.pdf', '2025-05-15 00:11:45', '2025-05-16 00:16:33'),
(39, 'Saavedra', 'Calderon', 'Candy', 12828218, 'LP', '201502022306528', 67053150, 'GAMEA-67076-2024', '909/2023', '1ro de la ciudad de EL ALTO', '2023-07-20', '318/2022', '2022-03-30', '318/2022', '2023-07-11', '3 años', '36 meses', 'Domingo', '4 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2023-09-17', '2026-09-17', 'ninguno', 'ninguno', 'comunitarios/informe38.pdf', 'comunitarios/hoja de ruta38.pdf', 'comunitarios/apersonamiento38.pdf', 'comunitarios/planilla de asistencia38.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado38.pdf', 'comunitarios/carnet38.pdf', '2025-05-15 00:22:05', '2025-05-16 00:18:30'),
(40, 'Mamani', 'Chavez', 'Luis', 13183634, 'QR', '201503022210641', 69882668, 'GAMEA-68316-2024', '2067/2023', '1ro de la ciudad de EL ALTO', '2024-08-30', 'V-168/2024', '2024-07-26', 'V-168/2024', '2024-08-21', '1 año', '12 meses', 'Sabado', '7 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-09-21', '2025-09-21', 'ninguno', 'ninguno', 'comunitarios/informe39.pdf', 'comunitarios/hoja de ruta39.pdf', 'comunitarios/apersonamiento39.pdf', 'comunitarios/planilla de asistencia39.pdf', NULL, NULL, NULL, 'comunitarios/informe jusgado39.pdf', 'comunitarios/carnet39.pdf', '2025-05-15 22:00:39', '2025-05-22 22:40:55'),
(41, 'Kapajeique', 'Quenallata', 'Ronald Cristaldo', 13297443, 'QR', '201502022303052', 71247890, 'GAMEA-61667-2024', '180/2024', '1ro de la ciudad de EL ALTO', '2024-02-05', '526/2023', '2024-08-18', '526/2023', '2023-10-01', '1 año y 6 meses', '18 meses', 'Miercoles', '6 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-03-13', '2025-09-13', 'ninguno', 'Falta apersonamiento', 'comunitarios/informe40.pdf', 'comunitarios/hoja de ruta40.pdf', NULL, 'comunitarios/planilla de asistencia40.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado40.pdf', 'comunitarios/carnet40.pdf', '2025-05-16 00:27:15', '2025-05-16 00:27:15'),
(42, 'Quispe', 'Calle', 'Victor Yohan', 13606547, 'QR', '201503022201431', 74093458, 'GAMEA-65833-2024', '1252/2024', '1ro de la ciudad de EL ALTO', '2024-06-19', 'S-96/2023', '2023-11-03', 'S-96/2023', '2024-06-17', '1 año', '12 meses', 'Martes', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-07-16', '2025-07-16', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano41.pdf', 'comunitarios/hoja de ruta41.pdf', 'comunitarios/apersonamiento41.pdf', 'comunitarios/planilla de asistencia41.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado41.pdf', 'comunitarios/carnet41.pdf', '2025-05-16 21:55:14', '2025-05-16 21:55:14'),
(43, 'Cruz', 'Chalco', 'Carlos Alberto', 13861320, 'QR', '201102012101887', 70640078, 'GAMEA-64738-2024', '410/2024', '1ro de la ciudad de EL ALTO', '2024-05-15', '04/2022', '2022-08-11', '04/2022', '2023-07-25', '1 año', '12 meses', 'Lunes', '2 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-06-24', '2025-06-24', 'ninguno', 'ninguno', 'comunitarios/informe de taleto humano42.pdf', 'comunitarios/hoja de ruta42.pdf', 'comunitarios/apersonamiento42.pdf', 'comunitarios/plantilla de asistencia42.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado42.pdf', 'comunitarios/carnet42.pdf', '2025-05-16 22:07:35', '2025-05-16 22:07:35'),
(44, 'Coronel', 'Flores', 'Gonzalo', 2465629, 'LP', '201502022108271', 62268599, 'GAMEA-66876-2023', '819/2023', '1ro de la ciudad de EL ALTO', '2023-07-11', '254/2023', '2023-04-25', '254/2023', '2023-07-05', '2 años', '24 meses', 'Sabado', '3 horas', 'Limpieza Cementerio', 'Cementerio Villa Ingenio', '2023-11-25', '2025-11-25', 'ninguno', 'Falta apersonamiento', 'comunitarios/informe de talento humano43.pdf', 'comunitarios/hoja de ruta43.pdf', NULL, 'comunitarios/plantilla de asistencia43.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado43.pdf', 'comunitarios/carnet43.pdf', '2025-05-16 22:20:59', '2025-05-16 22:20:59'),
(45, 'Mamani', 'Condori', 'Domingo Fidel', 3391561, 'QR', '204093833', 72536060, 'GAMEA-68362-2024', '3016/2024', '1ro de la ciudad de EL ALTO', '2024-09-04', '108/2024', '2024-03-10', '108/2024', '2024-08-21', '1 año y 6 meses', '18 meses', 'Viernes', '4 horas', 'Limpieza Cementerio', 'Cementerio Ex Tarapaca', '2024-09-20', '2026-03-20', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano44.pdf', 'comunitarios/hoja de ruta44.pdf', 'comunitarios/apersonamiento44.pdf', 'comunitarios/plantilla de asistencia44.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado44.pdf', 'comunitarios/carnet44.pdf', '2025-05-16 22:37:34', '2025-05-23 00:07:31'),
(46, 'Rodriguez', 'Santos', 'Flora Juana', 3477994, 'QR', '201503022102021', 72598725, 'GAMEA-61099-2023', '501/2023', '1ro de la ciudad de EL ALTO', '2023-02-10', 'SA-17/2022', '2022-06-27', 'SA-17/2022', '2023-02-07', '2 años', '24 meses', 'Domingo', '4 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2023-03-12', '2025-03-12', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano45.pdf', 'comunitarios/hoja de ruta45.pdf', 'comunitarios/apersonamiento45.pdf', 'comunitarios/plantilla de asistencia45.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado45.pdf', 'comunitarios/carnet45.pdf', '2025-05-16 22:46:11', '2025-05-16 22:46:11'),
(47, 'Quispe', 'Cruz', 'Martin Jhonny', 4755944, 'QR', '201502022200537', 73052078, 'GAMEA-65866-2024', '1263/2024', '1ro de la ciudad de EL ALTO', '2024-06-24', '96/2024', '2024-05-10', '96/2024', '2024-06-19', '2 años', '104 semanas', 'Miercoles', '4 horas', 'Limpieza Cementerio', 'Cementerio Villa Ingenio', '2024-07-03', '2026-07-03', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano46.pdf', 'comunitarios/hoja de ruta46.pdf', 'comunitarios/apersonamiento46.pdf', 'comunitarios/plantilla de asistencia46.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado46.pdf', 'comunitarios/carnet46.pdf', '2025-05-16 22:53:34', '2025-05-23 00:08:06'),
(48, 'Apaza', 'Mamani', 'Jorge', 4759422, 'QR', '201503022300864', 73093277, 'GAMEA-61997-2024', '509/2024', '1ro de la ciudad de EL ALTO', '2024-03-07', '21/2023', '2023-01-27', '21/2023', '2023-07-12', '2 años', '24 meses', 'Sabado', '4 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2023-10-07', '2025-10-07', 'ninguno', 'Falta apersonamiento', 'comunitarios/informe de talento humano47.pdf', 'comunitarios/hoja de ruta47.pdf', NULL, 'comunitarios/planilla de asistencia47.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado47.pdf', 'comunitarios/carnet47.pdf', '2025-05-16 23:04:10', '2025-05-16 23:04:10'),
(49, 'Roque', 'Huanca', 'Eddy Rodrigo', 4785396, 'QR', '201502022300852', 72056774, 'GAMEA-61690-2024', '281/2024', '1ro de la ciudad de EL ALTO', '2024-01-23', '94/2023', '2023-11-06', '94/2023', '2024-01-16', '1 año', '12 meses', 'Domingo', '7 horas', 'Limpieza Cementerio', 'Cementerio Villa Ingenio', '2024-02-02', '2026-02-02', 'ninguno', 'Falta plantilla de asistencia', 'comunitarios/informe48.pdf', 'comunitarios/hoja de ruta48.pdf', 'comunitarios/apersonamiento48.pdf', NULL, NULL, NULL, NULL, 'comunitarios/informe de jusgado48.pdf', 'comunitarios/carnet48.pdf', '2025-05-16 23:17:08', '2025-05-23 00:08:30'),
(50, 'Limachi', 'Silvestre', 'Rene', 4855154, 'LP', '201502022000428', 73209686, 'GAMEA-60935-2023', '87/2023', '1ro de la ciudad de EL ALTO', '2023-01-18', '05/2022', '2022-04-04', '05/2022', '2022-08-15', '3 años', '36 meses', 'Sabado', '3 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2023-03-11', '2026-03-11', 'ninguno', 'Falta apersonamiento', 'comunitarios/informe de talento humano49.pdf', 'comunitarios/hoja de ruta49.pdf', NULL, 'comunitarios/plantilla de asistencia49.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado49.pdf', 'comunitarios/carnet49.pdf', '2025-05-16 23:22:40', '2025-05-16 23:22:40'),
(51, 'Quispe', 'Perca', 'Martin', 4856285, 'QR', '201503022300864', 68095491, 'GAMEA-62858-2024', '437/2024', '1ro de la ciudad de EL ALTO', '2024-02-23', 'S-126/2023', '2023-11-24', 'S-126/2023', '2024-02-09', '2 años', '24 meses', 'Domingo', '8 horas', 'Limpieza Cementerio', 'Cementerio Villa Ingenio', '2024-09-29', '2026-09-29', 'ninguno', 'Falta apersonamiento', 'comunitarios/informe de talento humano50.pdf', 'comunitarios/hoja de ruta50.pdf', NULL, 'comunitarios/plantilla de asistencia50.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado50.pdf', 'comunitarios/carnet50.pdf', '2025-05-16 23:29:20', '2025-05-23 00:08:50'),
(52, 'Ortiz', 'Sandoval', 'Marco Antonio', 4874207, 'QR', '201502022211404', 77788993, 'GAMEA-60691-2024', '0051/2024', '1ro de la ciudad de EL ALTO', '2024-01-12', '215/2023', '2023-04-13', '215/2023', '2023-10-13', '1 año', '12 meses', 'Domingo', '4 horas', 'Limpieza Cementerio', 'Cementerio Villa Ingenio', '2024-08-11', '2025-08-11', 'ninguno', 'ninguno', 'comunitarios/informe de talento51.pdf', 'comunitarios/hoja de ruta51.pdf', 'comunitarios/apersonamiento51.pdf', 'comunitarios/plantilla de asistencia51.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado51.pdf', 'comunitarios/carnet51.pdf', '2025-05-16 23:35:50', '2025-05-16 23:35:50'),
(53, 'Rodrigues', 'Santos', 'Maria Cristina', 4913520, 'LP', '201503022102021', 63126031, 'GAMEA-61099-2023', '498/2023', '1ro de la ciudad de EL ALTO', '2023-02-10', 'SA-09/2022', '2022-04-14', 'SA/09/2022', '2023-02-07', '2 años', '24 meses', 'Miercoles', '4 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2024-02-14', '2026-02-14', 'ninguno', 'ninguno', 'comunitarios/informe de talento52.pdf', 'comunitarios/hoja de ruta52.pdf', 'comunitarios/apersonamiento52.pdf', 'comunitarios/plantilla de asistencia52.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado52.pdf', 'comunitarios/carnet52.pdf', '2025-05-16 23:44:31', '2025-05-23 00:09:31'),
(54, 'Paredes', 'Suri', 'Jose Antonio', 5965523, 'QR', '201502022000662', 60131948, 'GAMEA-64766-2023', '448/2023', '1ro de la ciudad de EL ALTO', '2023-05-15', '22/2023', '2023-04-12', '22/2023', '2023-05-09', '2 años', '24 meses', 'Sabado', '7 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2023-06-03', '2025-06-03', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano53.pdf', 'comunitarios/hoja de ruta53.pdf', 'comunitarios/apersonamiento53.pdf', 'comunitarios/planilla de asistencia53.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado53.pdf', 'comunitarios/carnet53.pdf', '2025-05-16 23:50:24', '2025-05-16 23:50:24'),
(55, 'Aranda', 'Cruz', 'Ronal', 8369111, 'LP', '201503022201529', 76217371, 'GAMEA-61904-2023', '161/2023', '1ro de la ciudad de EL ALTO', '2023-03-07', '22/2023', '2023-01-13', '22/2023', '2023-03-02', '3 años', '36 meses', 'Domingo', '6 horas', 'Limpieza Cementerio', 'Cementerio Ex Tarapaca', '2023-03-19', '2026-03-19', 'ninguno', 'Falta apersonamiento', 'comunitarios/informe de talento humano54.pdf', 'comunitarios/hoja de ruta54.pdf', NULL, 'comunitarios/plantilla de asistencia54.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado54.pdf', 'comunitarios/carnet54.pdf', '2025-05-16 23:59:35', '2025-05-23 00:09:51'),
(56, 'Vasquez', 'Castillo', 'Grover', 8395185, 'LP', '201502022306096', 71907966, 'GAMEA-71399-2023', '1496/2023', '1ro de la ciudad de EL ALTO', '2023-11-07', '487/2023', '2023-09-14', '487/2023', '2023-10-24', '1 año y 6 meses', '18 meses', 'Sabado', '6 horas', 'Limpieza Cementerio', 'Cementerio Villa Ingenio', '2024-02-03', '2025-08-03', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano55.pdf', 'comunitarios/hoja de ruta55.pdf', 'comunitarios/apersonamiento55.pdf', 'comunitarios/plantilla de asistencia55.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado55.pdf', 'comunitarios/carnet55.pdf', '2025-05-17 00:05:06', '2025-05-17 00:05:06'),
(57, 'Mamani', 'Mamani', 'Pedro Paulo', 8427906, 'LP', '201502022304092', 64244243, 'GAMEA-64443-2024', '938/2024', '1ro de la ciudad de EL ALTO', '2024-05-15', '84/2024', '2024-04-03', '84/2024', '2024-05-09', '1 año', '12 meses', 'Sabado', '2 horas', 'Limpieza Cementerio', 'Cementerio Ex Tarapaca', '2024-06-01', '2026-06-01', 'ninguno', 'Falta apersonamiento', 'comunitarios/informe del talento humano56.pdf', 'comunitarios/hoja de ruta56.pdf', NULL, 'comunitarios/plantilla de asistencia56.pdf', NULL, NULL, NULL, 'comunitarios/informe del jusgado56.pdf', 'comunitarios/carnet56.pdf', '2025-05-17 00:12:30', '2025-05-23 00:10:14'),
(58, 'Chura', 'Mamani', 'Modesta', 8460483, 'QR', '201502022103637', 73223242, 'GAMEA-66124-2024', '1460/2024', '1ro de la ciudad de EL ALTO', '2024-06-24', '30/2023', '2023-08-15', '30/2023', '2024-06-18', '1 año y 6 meses', '18 meses', 'Sabado', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-07-13', '2026-01-13', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano57.pdf', 'comunitarios/hoja de ruta57.pdf', 'comunitarios/apersonamiento57.pdf', 'comunitarios/plantilla de asistencia57.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado57.pdf', 'comunitarios/carnet57.pdf', '2025-05-19 22:39:26', '2025-05-19 22:39:26'),
(59, 'Sirpa', 'Condori', 'Rudy', 9142921, 'QR', '201503022201274', 63124556, 'GAMEA-61233-2023', '109/2023', '1ro de la ciudad de EL ALTO', '2023-02-14', '784/2022', '2022-12-19', '784/2022', '2023-01-11', '3 años', '36 meses', 'Domingo', '5 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2023-03-12', '2026-03-12', 'ninguno', 'ninguno', 'comunitarios/informe talento humano58.pdf', 'comunitarios/hoja de ruta58.pdf', 'comunitarios/apresonamiento58.pdf', 'comunitarios/plantilla de asistencia58.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado58.pdf', 'comunitarios/carnet58.pdf', '2025-05-19 22:47:49', '2025-05-23 00:10:51'),
(60, 'Aquize', 'Ledezma', 'Cristhian Kevin', 9870859, 'LP', '201502022400113', 70173646, 'GAMEA-67111-2024', '1822/2024', '1ro de la ciudad de EL ALTO', '2024-08-02', '386/2023', '2024-06-13', '386/2023', '2024-07-24', '2 años', '24 meses', 'Viernes', '4 horas', 'Limpieza Cementerio', 'Cementerio Ex Tarapaca', '2024-11-01', '2026-11-01', 'ninguno', 'ninguno', 'comunitarios/ionforme de talento humano59.pdf', 'comunitarios/hoja de ruta59.pdf', 'comunitarios/apersonamiento59.pdf', 'comunitarios/plantilla deasistencia59.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado59.pdf', 'comunitarios/carnet59.pdf', '2025-05-19 22:57:23', '2025-05-23 00:11:12'),
(61, 'Jimenes', 'Quispe', 'Raul', 10023331, 'LP', '201502022103979', 74263999, 'GAMEA-66954-2024', '1442/2024', '1ro de la ciudad de EL ALTO', '2024-07-23', '756/2024', '2022-07-28', '756/2024', '2024-07-17', '1 año', '12 meses', 'Sabado', '6 horas', 'Limpieza Cementerio', 'Cementerio Villa Ingenio', '2024-08-11', '2026-08-11', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano60.pdf', 'comunitarios/hoja de ruta60.pdf', 'comunitarios/apersonamiento60.pdf', 'comunitarios/plantilla de asistencia60.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado60.pdf', 'comunitarios/carnet60.pdf', '2025-05-19 23:04:34', '2025-05-23 00:11:32'),
(62, 'Machaca', 'Limachi', 'Wily', 11540592, 'LP', '2015022202645', 75210176, 'GAMEA-68913-2023', '2356/2023', '1ro de la ciudad de EL ALTO', '2023-09-14', '340/2023', '2023-05-19', '340/2023', '2023-09-08', '3 años', '36 meses', 'Jueves', '4 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2023-10-12', '2026-10-12', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano61.pdf', 'comunitarios/hoja de ruta61.pdf', 'comunitarios/apersonamiento61.pdf', 'comunitarios/plantilla de asistencia61.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado61.pdf', 'comunitarios/carnet61.pdf', '2025-05-19 23:11:48', '2025-05-19 23:11:48'),
(63, 'Cocarico', 'Mamani', 'Ivan Humberto', 124881541, 'QR', '20289921', 76708928, 'GAMEA-63199-2023', '284-2023', '1ro de la ciudad de EL ALTO', '2023-04-06', '874/2023', '2022-12-30', '874/2023', '2023-03-30', '2 años y 5 meses', '24 meses', 'Domingo', '6 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2024-11-03', '2027-05-03', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano62.pdf', 'comunitarios/hoja de ruta62.pdf', 'comunitarios/apersonamiento62.pdf', 'comunitarios/plantilla de asistencia62.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado62.pdf', 'comunitarios/carnet62.pdf', '2025-05-19 23:19:15', '2025-05-23 00:12:13'),
(64, 'Incapoma ', 'Mendoza', 'Pamela', 13626123, 'QR', '201502022206623', 62548188, 'GAMEA-68885-2024', '310/2024', '1ro de la ciudad de EL ALTO', '2024-09-18', '456/2023', '2023-09-01', '456/2023', '2024-07-19', '1 año', '12 meses', 'Domingo', '6 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2024-10-06', '2025-10-06', 'ninguno', 'ninguno', 'comunitarios/informe de talento humano63.pdf', 'comunitarios/hoja de ruta63.pdf', 'comunitarios/apersonamiento63.pdf', 'comunitarios/hoja de asistencia63.pdf', NULL, NULL, NULL, 'comunitarios/informe judicial63.pdf', 'comunitarios/carnet63.pdf', '2025-05-19 23:26:47', '2025-05-19 23:26:47'),
(65, 'Lidobina', 'Alarcon de Choque', 'Dina', 3073332, 'QR', '201704190E', 72350185, 'GAMEA-67256-2023', '1421/2023', '1ro de la ciudad de EL ALTO', '2023-05-09', '37/2016', '2023-04-17', '37/2016', '2024-01-17', '1 año', '12 meses', 'Viernes', '3 horas', 'Limpieza Cementerio', 'Cementerio Ex Tarapaca', '2023-06-16', '2024-06-16', 'ninguno', 'Concluido', 'comunitarios/informe de talento humano64.pdf', 'comunitarios/hoja de ruta64.pdf', 'comunitarios/apersonamiento64.pdf', 'comunitarios/plantilla de asistencia64.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado64.pdf', 'comunitarios/carnet64.pdf', '2025-05-19 23:47:19', '2025-05-23 00:12:35'),
(66, 'Conde', 'Cuentas', 'Victor Ramiro', 4253657, 'QR', '201502022000321', 69797814, 'GAMEA-68429-2023', '2302/2023', '1ro de la ciudad de EL ALTO', '2023-09-01', '420/2023', '2023-07-12', '420/2023', '2023-08-24', '1 año y dos meses', '60 semanas', 'Lunes', '8 horas', 'Limpieza Cementerio', 'Cementerio Villa Ingenio', '2023-09-25', '2024-11-25', 'ninguno', 'Concluido', 'comunitarios/informe de talento humano65.pdf', 'comunitarios/hoja de ruta65.pdf', 'comunitarios/apersonamiento65.pdf', 'comunitarios/planilla de asistencia65.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado65.pdf', 'comunitarios/carnet65.pdf', '2025-05-19 23:56:41', '2025-05-19 23:56:41'),
(67, 'Villca', 'Mamani', 'Santos', 4815989, 'QR', '201503022200036', 72580326, 'GAMEA-64518-2023', '1367/2023', '1ro de la ciudad de EL ALTO', '2023-05-30', '532/2022', '2022-06-10', '532/2022', '2023-04-27', '1 año y 6 meses', '18 meses', 'Domingo', '4 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2024-07-07', '2025-11-07', 'ninguno', 'Concluido', 'comunitarios/informe de talento humano66.pdf', 'comunitarios/hoja de ruta66.pdf', 'comunitarios/apersonamiento66.pdf', 'comunitarios/plantilla de asistencia66.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado66.pdf', 'comunitarios/carnet66.pdf', '2025-05-20 00:04:18', '2025-05-23 00:13:16'),
(68, 'Mamani', 'Luna', 'Marcelo', 6035728, 'LP', '201502022003238', 72534855, 'GAMEA-71169-2023', '1529/2023', '1ro de la ciudad de EL ALTO', '2023-11-17', 'S-100/2023', '2023-10-10', 'S-100/2023', '2023-10-25', '1 año', '12 meses', 'Jueves', '8 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2023-12-21', '2024-12-21', 'ninguno', 'Concluido', 'comunitarios/informe de talento humano67.pdf', 'comunitarios/hoja de ruta67.pdf', 'comunitarios/apersonamiento67.pdf', 'comunitarios/plantilla de asistencia67.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado67.pdf', 'comunitarios/carnet67.pdf', '2025-05-20 00:10:30', '2025-05-20 00:10:30'),
(69, 'Villa', '----', 'Rogelia', 9173362, 'LP', '201502022310420', 77296482, 'GAMEA-62575-2024', '524/2024', '1ro de la ciudad de EL ALTO', '2024-03-27', '610/2023', '2023-12-04', '610/2023', '2024-02-22', 'medio año', '24 semanas', 'Sabado', '6 horas', 'Limpieza Cementerio', 'Cementerio Ex Tarapaca', '2024-08-31', '2025-03-05', 'ninguno', 'Concluido', 'comunitarios/informe de talento humano68.pdf', 'comunitarios/hoja de ruta68.pdf', 'comunitarios/apersonamiento68.pdf', 'comunitarios/plantilla de asistencia68.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado68.pdf', 'comunitarios/carnet68.pdf', '2025-05-20 00:26:35', '2025-05-23 00:13:51'),
(70, 'Machaca', 'Yapo', 'Braulio', 9948929, 'QR', '201503022300201', 68188904, 'GAMEA-70116-2023', '1309/2023', '1ro de la ciudad de EL ALTO', '2023-10-11', 'S-80/2023', '2023-08-31', 'S-80/2023', '2023-10-03', '1 año', '12 meses', 'Domingo', '7 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2023-11-05', '2024-11-05', 'ninguno', 'Concluido', 'comunitarios/informe de talento humano69.pdf', 'comunitarios/hoja de ruta69.pdf', 'comunitarios/apersonamiento69.pdf', 'comunitarios/plantilla de asistencia69.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado69.pdf', 'comunitarios/carnet69.pdf', '2025-05-20 00:32:05', '2025-05-20 00:32:05'),
(71, 'Colman', 'Quiroz', 'Ronald', 61533886, 'QR', '201502022101795', 63170214, 'GAMEA-71500-2024', '1258/2023', '1ro de la ciudad de EL ALTO', '2023-11-21', 'S-44/2023', '2023-05-25', 'S-44/2023', '2023-06-09', '1 año', '12 meses', 'Sabado', '4 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2023-12-16', '2024-12-16', 'ninguno', 'Concluido', 'comunitarios/informe de talento humano70.pdf', 'comunitarios/hoja de ruta70.pdf', 'comunitarios/apersonamiento70.pdf', 'comunitarios/plantilla de asistencia70.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado70.pdf', 'comunitarios/carnet70.pdf', '2025-05-20 00:38:32', '2025-05-23 00:14:14'),
(72, 'Mendoza', 'Carvajal', 'Victos Hugo', 3346703, 'LP', '201503022200473', 69910815, 'GAMEA-60589-2024', '0047/2024', '1ro de la ciudad de EL ALTO', '2024-01-12', 'S-101/2023', '2023-10-11', 'S-101/2023', '2023-11-30', '1 año', '12 meses', 'Sabado', '8 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2024-02-03', '2025-02-03', 'ninguno', 'ninguno', 'comunitarios/informe71.pdf', 'comunitarios/hoja de ruta71.pdf', 'comunitarios/apersonamiento71.pdf', 'comunitarios/plantilla de asistencia71.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado71.pdf', 'comunitarios/carnet71.pdf', '2025-05-20 22:30:07', '2025-05-20 22:30:07'),
(73, 'Vargas', 'Yujra', 'Roberto', 6157296, 'QR', '201502022205621', 77701355, 'GAMEA-63218-2024', '587/2024', '1ro de la ciudad de EL ALTO', '2024-04-03', '68/2023', '2023-11-08', '68/2023', '2024-02-15', '1 año', '12 meses', 'Domingo', '8 horas', 'Limpieza Cementerio', 'Cementerio Ex Tarapaca', '2024-05-05', '2025-05-05', 'ninguno', 'ninguno', 'comunitarios/informe72.pdf', 'comunitarios/hoja de ruta72.pdf', 'comunitarios/apesonamiento72.pdf', 'comunitarios/plantilla de asistencia72.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado72.pdf', 'comunitarios/carnet72.pdf', '2025-05-20 22:38:13', '2025-05-20 22:38:13'),
(74, 'Chavez ', 'Huallpa', 'Alfredo', 6758689, 'QR', '201502022203316', 67125771, 'GAMEA-62216-2024', '490/2024', '1ro de la ciudad de EL ALTO', '2024-03-04', 'V71/2023', '2023-08-28', 'V71/2023', '2023-10-25', '1 año y 6 meses', '18 meses', 'Sabado', '6 horas', 'Limpieza Cementerio', 'Cementerio Ex Tarapaca', '2024-04-06', '2025-10-06', 'ninguno', 'ninguno', 'comunitarios/informe73.pdf', 'comunitarios/hoja de ruta73.pdf', 'comunitarios/apersonamiento73.pdf', 'comunitarios/planilla de asistencia73.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado73.pdf', 'comunitarios/carnet73.pdf', '2025-05-20 22:47:47', '2025-05-20 22:47:47'),
(75, 'Cruz', 'Aruquipa', 'Edwin', 6770357, 'QR', '201502022209036', 70525442, 'GAMEA-65757-2024', '1230/2024', '1ro de la ciudad de EL ALTO', '2024-06-19', 'V-104/2024', '2024-05-10', 'V-104/2024', '2024-06-11', '1 año', '12 meses', 'Domingo', '6 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2024-07-07', '2025-07-07', 'ninguno', 'ninguno', 'comunitarios/informe74.pdf', 'comunitarios/hoja de ruta74.pdf', 'comunitarios/apersonamiento74.pdf', 'comunitarios/plantilla de asistencia74.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado74.pdf', 'comunitarios/carnet74.pdf', '2025-05-20 22:54:56', '2025-05-20 22:54:56'),
(76, 'Vila', 'Apulaca', 'Edgar Renan', 6877928, 'QR', '201503022300101', 69891875, 'GAMEA-60689-2024', '109/2024', '1ro de la ciudad de EL ALTO', '2024-01-19', '360/2023', '2023-05-25', '360/2023', '2023-11-28', '2 años', '24 meses', 'Sabado', '8 horas', 'Limpieza Cementerio', 'Cementerio Ex Tarapaca', '2024-03-16', '2026-03-16', 'ninguno', 'ninguno', 'comunitarios/informe75.pdf', 'comunitarios/hoja de ruta75.pdf', 'comunitarios/apersonamiento75.pdf', 'comunitarios/plantilla de asistencia75.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado75.pdf', 'comunitarios/carnet75.pdf', '2025-05-20 23:03:18', '2025-05-20 23:03:18'),
(77, 'Saavedra', 'Mamani', 'Edwen', 6904722, 'QR', '201503022301099', 77598044, 'GAMEA-66966-2024', '1437/2024', '1ro de la ciudad de EL ALTO', '2024-07-23', '173/2024', '2024-03-13', '173/2024', '2024-07-17', '1 año', '12 meses', 'Sabado', '6 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2024-08-07', '2025-08-07', 'ninguno', 'Falta plantilla de asistencia', 'comunitarios/informe76.pdf', 'comunitarios/hoja de ruta76.pdf', 'comunitarios/apersonamiento76.pdf', NULL, NULL, NULL, NULL, 'comunitarios/informe de jusgado76.pdf', 'comunitarios/carnet76.pdf', '2025-05-20 23:11:19', '2025-05-20 23:11:19'),
(78, 'Garcia', 'Vargas', 'Hugo Remberto', 6928925, 'QR', '201503022300663', 68048937, 'GAMEA-60980-2024', '130/2024', '1ro de la ciudad de EL ALTO', '2024-01-30', '648/2023', '2023-10-20', '648/2023', '2024-01-15', '3 años', '36 meses', 'Jueves', '6 horas', 'Limpieza Cementerio', 'Cementerio Villa Ingenio', '2024-03-07', '2027-03-07', 'ninguno', 'ninguno', 'comunitarios/informe77.pdf', 'comunitarios/hoja de ruta77.pdf', 'comunitarios/apersonamiento77.pdf', 'comunitarios/hoja de asistencia77.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado77.pdf', 'comunitarios/carnet77.pdf', '2025-05-20 23:19:38', '2025-05-20 23:19:38');
INSERT INTO `comunitarios` (`id`, `apellido_paterno`, `apellido_materno`, `nombres`, `numero_ci`, `expedicion_ci`, `numero_nurej`, `numero_celular`, `numero_hoja_ruta`, `cite_judicial`, `juzgado_judicial`, `fecha_judicail`, `numero_resolucion`, `fecha_resolucion`, `juzgado_audiencia`, `fecha_audiencia`, `tiempo_sentencia`, `periodo_sentencia`, `dias_sentencia`, `horas_sentencia`, `area_trabajo`, `lugar_trabajo`, `fecha_inicio`, `fecha_fin`, `incumplimiento`, `observaciones`, `informe_talento`, `hojaderuta`, `apersonamineto`, `planilla_asistencia`, `informe_mensual`, `informe_conclusion`, `informe_incumplimiento`, `informe_fiscal`, `fotocopia_carnet`, `created_at`, `updated_at`) VALUES
(79, 'Sarmiento', 'Yujra', 'Juan Americo', 7072198, 'QR', '201502022211001', 64149988, 'GAMEA-61507-2024', '256/2023', '1ro de la ciudad de EL ALTO', '2024-02-21', 'V-120/2023', '2023-11-29', 'V-120/2023', '2024-02-08', '1 año', '12 meses', 'Viernes', '6 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2024-03-22', '2025-03-22', 'ninguno', 'ninguno', 'comunitarios/informe78.pdf', 'comunitarios/hoja d ruta78.pdf', 'comunitarios/apersonamiento78.pdf', 'comunitarios/plantilla de asistencia78.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado78.pdf', 'comunitarios/carnet78.pdf', '2025-05-20 23:28:12', '2025-05-20 23:28:12'),
(80, 'Figueroa', '-----', 'Hernan Edwin', 8937204, 'QR', '201503022201364', 68258515, 'GAMEA-63294-2024', '516/2024', '1ro de la ciudad de EL ALTO', '2024-03-08', 'S-112/2023', '2023-10-27', 'S-112/2023', '2024-02-23', '2 años', '24 meses', 'Domingo', '8 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2024-05-08', '2026-05-08', 'ninguno', 'ninguno', 'comunitarios/informe79.pdf', 'comunitarios/hoja de ruta79.pdf', 'comunitarios/apersonamiento79.pdf', NULL, NULL, NULL, NULL, 'comunitarios/informe de jusgado79.pdf', 'comunitarios/carnet79.pdf', '2025-05-20 23:36:43', '2025-05-20 23:36:43'),
(81, 'Perca', 'Chillo', 'Erasmo', 9127572, 'LP', '201503022201226', 63117839, 'GAMEA-61774-2023', '079/2023', '1ro de la ciudad de EL ALTO', '2023-02-01', '734/2022', '2022-12-09', '734/2022', '2023-01-11', '3 años', '36 meses', 'Sabado', '6 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2023-04-15', '2026-04-15', 'ninguno', 'ninguno', 'comunitarios/informe80.pdf', 'comunitarios/hoja de ruta80.pdf', 'comunitarios/apersonamiento80.pdf', 'comunitarios/planilla de asistencia80.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado80.pdf', 'comunitarios/carnet80.pdf', '2025-05-20 23:43:36', '2025-05-20 23:43:36'),
(82, 'Castañeta', 'Hidalgo', 'Ivan Cesar', 9254840, 'QR', '20150202201015', 67079258, 'GAMEA-61504-2024', '260/2024', '1ro de la ciudad de EL ALTO', '2024-02-21', '678/2024', '2022-06-30', '678/2024', '2022-12-05', '3 años', '36 meses', 'Sabado', '6 horas', 'Limpieza Cementerio', 'Cementerio Villa Ingenio', '2024-04-06', '2027-04-06', 'ninguno', 'ninguno', 'comunitarios/informe81.pdf', 'comunitarios/hoja de ruta81.pdf', 'comunitarios/apersonamiento81.pdf', 'comunitarios/plantilla de asistencia81.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado81.pdf', 'comunitarios/carnet81.pdf', '2025-05-20 23:51:39', '2025-05-20 23:51:39'),
(83, 'Luque', 'Mamani', 'Felix Alvaro', 9923243, 'LP', '201502022202923', 65583240, 'GAMEA-66273-2022', '1813/2022', '1ro de la ciudad de EL ALTO', '2022-07-18', '198/2022', '2022-05-27', '198/2022', '2022-07-05', '3 años', '36 meses', 'Sabado', '4 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2022-08-22', '2025-08-22', 'ninguno', 'ninguno', 'comunitarios/informe82.pdf', 'comunitarios/hoja de ruta82.pdf', 'comunitarios/apersonamiento82.pdf', 'comunitarios/plantilla de asistencia82.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado82.pdf', 'comunitarios/carnet82.pdf', '2025-05-21 00:02:57', '2025-05-21 00:02:57'),
(84, 'Sipe', 'Chui', 'Franz', 10038713, 'QR', '201502022309468', 74902390, 'GAMEA-64894-2023', '939/2024', '1ro de la ciudad de EL ALTO', '2024-05-15', '02/2024', '2024-01-03', '02/2024', '2024-02-21', '11 meses', '48 semanas', 'Sabado', '6 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2024-06-29', '2025-05-29', 'ninguno', 'ninguno', 'comunitarios/informe83.pdf', 'comunitarios/hoja de ruta83.pdf', 'comunitarios/apersonamiento83.pdf', 'comunitarios/plantilla de asistencia83.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado83.pdf', 'comunitarios/carnet83.pdf', '2025-05-21 00:09:41', '2025-05-21 00:09:41'),
(85, 'Mamani', 'Vargas', 'Jose Fernando', 10130989, 'QR', '201503022201525', 61823477, 'GAMEA-60617-2023', '037/2023', '1ro de la ciudad de EL ALTO', '2023-01-20', '788/2022', '2022-12-20', '788/2022', '2023-01-09', '3 años', '36 meses', 'Domingo', '4 horas', 'Limpieza Cementerio', 'Cementerio Mercedario', '2023-03-05', '2026-03-05', 'ninguno', 'ninguno', 'comunitarios/informe84.pdf', 'comunitarios/hoja de ruta84.pdf', 'comunitarios/apersonamiento84.pdf', 'comunitarios/plantilla de asistencia84.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado84.pdf', 'comunitarios/carnet84.pdf', '2025-05-21 00:16:31', '2025-05-21 00:16:31'),
(86, 'Mendoza', 'Barrera', 'Ismael', 12893347, 'QR', '20150202220733', 75247958, 'GAMEA-62393-2024', '465/2024', '1ro de la ciudad de EL ALTO', '2024-03-20', 'S-15/2024', '2024-02-27', 'S-15/2024', '2024-03-14', '1 año', '12 meses', 'Domingo', '8 horas', 'Limpieza Cementerio', 'Cementerio Villa Ingenio', '2024-04-07', '2025-04-07', 'ninguno', 'ninguno', 'comunitarios/informe85.pdf', 'comunitarios/hoja de ruta85.pdf', 'comunitarios/apersonamiento85.pdf', 'comunitarios/plantilla de asistencia85.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado85.pdf', 'comunitarios/carnet85.pdf', '2025-05-21 00:23:04', '2025-05-21 00:23:04'),
(87, 'Nemecio', 'Mamani', 'Fernades', 3408453, 'QR', '201503022200704', 71959688, 'GAMEA-64778-2023', '452/2023', '1ro de la ciudad de EL ALTO', '2023-05-11', 'S-28/2023', '2023-04-24', 'S-28/2023', '2023-04-24', '1 año', '12 meses', 'Miercoles', '4 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2023-06-07', '2024-06-07', 'Si', 'Falta apersonamiento', 'comunitarios/hoja de talento humano86.pdf', 'comunitarios/hoja de ruta86.pdf', NULL, 'comunitarios/planilla de asistencia86.pdf', NULL, NULL, NULL, 'comunitarios/informe judicial86.pdf', 'comunitarios/carnet86.pdf', '2025-05-21 22:14:49', '2025-05-21 22:14:49'),
(88, 'Alaya', 'Guerra', 'Debora', 4199126, 'QR', '201502022206675', 74751581, 'GAMEA-62455-2024', '481/2024', '1ro de la ciudad de EL ALTO', '2024-03-21', '57/2023', '2023-10-09', '57/2023', '2024-03-13', '3 años', '36 meses', 'Sabado', '6 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-04-13', '2026-04-13', 'Si', 'ninguno', 'comunitarios/informe87.pdf', 'comunitarios/hoja de ruta87.pdf', 'comunitarios/apersonamiento87.pdf', 'comunitarios/plantilla de asistencia87.pdf', NULL, NULL, NULL, 'comunitarios/informe de juzgado87.pdf', 'comunitarios/carnet87.pdf', '2025-05-21 22:27:23', '2025-05-21 22:27:23'),
(89, 'Aruquipa', 'Espinoza', 'Carlos Bernardo', 4999731, 'QR', '201502022108837', 62547635, 'GAMEA-64615-2024', '905/2024', '1ro de la ciudad de EL ALTO', '2024-05-08', 'S-130/2023', '2024-09-01', 'S-130/2023', '2024-03-25', '1 año', '12 meses', 'Domingo', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-06-02', '2025-06-02', 'Si', 'ninguno', 'comunitarios/informe88.pdf', 'comunitarios/hoja de ruta88.pdf', 'comunitarios/apersonamiento88.pdf', 'comunitarios/plantilla de asistencia88.pdf', NULL, NULL, NULL, 'comunitarios/informe de juzgado88.pdf', 'comunitarios/carnet88.pdf', '2025-05-21 22:45:31', '2025-05-21 22:45:31'),
(90, 'Alarcon', 'Rodrigues', 'Daniel Jhonny', 6053438, 'LP', '201503022300036', 77761311, 'GAMEA-66070-2024', '1238/2024', '1ro de la ciudad de EL ALTO', '2024-06-18', 'V-105/2023', '2023-10-26', 'V-105/2023', '2023-11-29', '2 años', '24 meses', 'Sabado', '6 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2023-05-06', '2024-05-06', 'Si', 'No tiene apersonamiento y plantilla de asistencia', 'comunitarios/informe89.pdf', 'comunitarios/hoja de ruta89.pdf', NULL, NULL, NULL, NULL, NULL, 'comunitarios/informe de juzgado89.pdf', 'comunitarios/carnet89.pdf', '2025-05-21 23:00:24', '2025-05-21 23:00:24'),
(91, 'Vargas', 'Pusari', 'Oswaldo Ramiro', 6965963, 'QR', '201502022205356', 67183871, 'GAMEA-61292-2024', '219/2024', '1ro de la ciudad de EL ALTO', '2024-02-14', 'V-304/2023', '2023-09-25', 'V-304/2023', '2024-01-30', '2 años y 6 meses', '30 meses', 'Lunes', '6 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-03-04', '2026-09-04', 'Si', 'ninguno', 'comunitarios/informe90.pdf', 'comunitarios/hoja de ruta90.pdf', 'comunitarios/apersonamiento90.pdf', 'comunitarios/planilla de asistencia90.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado90.pdf', 'comunitarios/carnet90.pdf', '2025-05-21 23:07:31', '2025-05-21 23:07:31'),
(92, 'Chalco', 'Poma', 'Brayan', 7040223, 'QR', '2015030222300238', 69925243, 'GAMEA-62460-2024', '710/2024', '1ro de la ciudad de EL ALTO', '2024-03-21', 'S-113/2023', '2023-10-27', 'S-113/2023', '2023-12-01', '2 años', '24 meses', 'Martes', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-04-30', '2026-04-30', 'Si', 'ninguno', 'comunitarios/informe91.pdf', 'comunitarios/hoja de ruta91.pdf', 'comunitarios/apersonamiento91.pdf', 'comunitarios/plantilla de asistencia91.pdf', NULL, NULL, NULL, 'comunitarios/informe judicial91.pdf', 'comunitarios/carnet91.pdf', '2025-05-21 23:15:32', '2025-05-21 23:15:32'),
(93, 'Cuevas', 'Casas', 'Ivan Remato', 7089089, 'QR', '201503022300850', 73305704, 'GAMEA-65548-2024', '1281/2024', '1ro de la ciudad de EL ALTO', '2024-06-04', '37/2023', '2024-02-07', '37/2023', '2024-05-10', '2 años', '24 meses', 'Lunes', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-07-08', '2026-07-08', 'Si', 'ninguno', 'comunitarios/informe92.pdf', 'comunitarios/hoja de ruta92.pdf', 'comunitarios/apersonamiento92.pdf', 'comunitarios/asistencias92.pdf', NULL, NULL, NULL, 'comunitarios/informe judicial92.pdf', 'comunitarios/carnet92.pdf', '2025-05-21 23:21:55', '2025-05-21 23:21:55'),
(94, 'Barra', 'Yavi', 'Juan Victor', 7099034, 'QR', '201503022300554', 71220307, 'GAMEA-67204-2024', '1533/2024', 'Distrito Judicial de El Alto', '2024-08-07', 'S-27/2024', '2024-03-22', 'S-27/2024', '2024-08-20', '1 año', '12 meses', 'Viernes', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-08-23', '2025-08-23', 'Si', 'Falta plantilla de asistencia', 'comunitarios/informe93.pdf', 'comunitarios/hoja de ruta93.pdf', 'comunitarios/apersonamiento93.pdf', NULL, NULL, NULL, NULL, 'comunitarios/informe de juzgado93.pdf', 'comunitarios/carnet93.pdf', '2025-05-21 23:29:29', '2025-05-21 23:29:29'),
(95, 'Casilla', 'Cachaca', 'Marco Antonio', 9929627, 'QR', '201502022001949', 68138527, 'GAMEA-60234-2024', '0010/2024', '1ro de la ciudad de EL ALTO', '2024-01-05', 'S-70/2023', '2023-08-09', 'S-70/2023', '2023-10-19', '1 año', '12 meses', 'Domingo', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-01-21', '2025-01-21', 'Si', 'Falta apersonamiento', 'comunitarios/informe94.pdf', 'comunitarios/hoja de ruta94.pdf', NULL, 'comunitarios/planilla de asistencia94.pdf', NULL, NULL, NULL, 'comunitarios/informe de juzgado94.pdf', 'comunitarios/carnet94.pdf', '2025-05-21 23:35:44', '2025-05-21 23:35:44'),
(96, 'Rodriguez', 'Altamirano', 'MIguel Angel', 9936325, 'QR', '201502022302283', 62294342, 'GAMEA-64821-2024', '1140/2024', 'Tribunal Departamental de Justicia De La Paz', '2024-05-17', '40/2024', '2024-05-06', '40/2024', '2024-05-10', '1 año', '12 meses', 'Jueves', '4 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-06-20', '2025-06-20', 'Si', 'No tiene plantilla de asistencia', 'comunitarios/informe95.pdf', 'comunitarios/hoja de ruta95.pdf', 'comunitarios/apersonamiento95.pdf', NULL, NULL, NULL, NULL, 'comunitarios/informe de juzgado95.pdf', 'comunitarios/carnet95.pdf', '2025-05-21 23:43:51', '2025-05-21 23:43:51'),
(97, 'Chambi', 'Poma', 'Sandro Esteban', 10921625, 'QR', '201502022302879', 74018947, 'GAMEA-62972-2024', '613/2024', '1ro de la ciudad de EL ALTO', '2024-04-09', 'S-128/2023', '2023-11-29', 'S-128/2023', '2024-01-05', '2 años', '24 meses', 'Lunes', '6 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-04-22', '2026-04-22', 'Si', 'ninguno', 'comunitarios/informe96.pdf', 'comunitarios/hoja de ruta96.pdf', 'comunitarios/apersonamiento96.pdf', 'comunitarios/plantilla de asistencia96.pdf', NULL, NULL, NULL, 'comunitarios/informe de juzgado96.pdf', 'comunitarios/carnet96.pdf', '2025-05-21 23:49:07', '2025-05-21 23:49:07'),
(98, 'Acho', 'Mamani', 'Freddy Cristian', 13086404, 'QR', '201502022000615', 68006896, 'GAMEA-64668-2024', '1037/2024', '1ro de la ciudad de EL ALTO', '2024-05-13', '291/2020', '2020-11-25', '291/2020', '2021-02-06', '1 año', '8 meses', 'Sabado', '3 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-09-21', '2025-09-21', 'Si', 'ninguno', 'comunitarios/informe97.pdf', 'comunitarios/hoja de ruta97.pdf', 'comunitarios/apersonamiento97.pdf', 'comunitarios/planilla de asistencia97.pdf', NULL, NULL, NULL, 'comunitarios/informe de juzgado97.pdf', 'comunitarios/carnet97.pdf', '2025-05-21 23:54:02', '2025-05-21 23:54:02'),
(99, 'Rios', 'Huanca', 'Luis Franco', 13606433, 'QR', '201502022309515', 78800613, 'GAMEA-64275-2024', '924/2024', '1ro de la ciudad de EL ALTO', '2024-05-13', '58/2024', '2024-02-29', '58/2024', '2024-05-06', '3 años', '36 meses', 'Miercoles', '8 horas', 'Limpieza de Mingitorio', 'Nayra Punku', '2024-06-05', '2027-06-05', 'Si', 'ninguno', 'comunitarios/informe98.pdf', 'comunitarios/hoja de ruta98.pdf', 'comunitarios/apersonamieento98.pdf', 'comunitarios/planilla de ingreso98.pdf', NULL, NULL, NULL, 'comunitarios/informe de jusgado98.pdf', 'comunitarios/carnet98.pdf', '2025-05-22 00:01:24', '2025-05-22 00:01:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(29, '0001_01_01_000000_create_users_table', 1),
(30, '0001_01_01_000001_create_cache_table', 1),
(31, '0001_01_01_000002_create_jobs_table', 1),
(32, '2025_04_22_153809_create_comunitarios_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('18LeBXkNKBleIbILfvx83LqPgWYVBhdu1VUT6MOn', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiOE44eEJGS2c2R041M1BZZDI0OHJ1ZUNsYzNxTWJSR3ZSR0J0ZFFnWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9jb211bml0YXJpb3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJHhzV3hJVEExejU0dE1yLjQwWTIvOWVyaFA3ZlY2YnhHL1ZmdVUzdHo0Q1pZRzVsMUYuVmZLIjt9', 1749582298),
('6MtsNAEYKV6Zh0AGgQmd2wVeDRzN7M4niYzNqAKy', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUDdmM2daWXlKS3VxUWRCSVd3aUdXUEFLV1RoT0lYWHhRb3pOM3RrNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9jb211bml0YXJpb3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJHhzV3hJVEExejU0dE1yLjQwWTIvOWVyaFA3ZlY2YnhHL1ZmdVUzdHo0Q1pZRzVsMUYuVmZLIjt9', 1749665481),
('K3RggxdUno4NnTKpp3QowpLdkLfaUXK9eoq6DqqP', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoib1ZzcXhybmpKTTJXdU9wbHNQWHlGNWhYMHladXhpeHVINUIwMzR5aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9jb211bml0YXJpb3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJHhzV3hJVEExejU0dE1yLjQwWTIvOWVyaFA3ZlY2YnhHL1ZmdVUzdHo0Q1pZRzVsMUYuVmZLIjt9', 1749241741);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ch', 'christian@gmail.com', NULL, '$2y$12$xsWxITA1z54tMr.40Y2/9erhP7fV6bxG/VfuU3tz4CZYG5l1F.VfK', NULL, '2025-05-12 23:32:48', '2025-05-12 23:32:48');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `comunitarios`
--
ALTER TABLE `comunitarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT de la tabla `comunitarios`
--
ALTER TABLE `comunitarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

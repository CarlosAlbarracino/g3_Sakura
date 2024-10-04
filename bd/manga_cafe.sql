-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2024 a las 19:24:39
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `manga_cafe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `dni` int(11) NOT NULL,
  `domicilio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`nombre`, `apellido`, `dni`, `domicilio`) VALUES
('alejandro', 'ocampo', 45047930, '2 de abri 2192'),
('belen', 'gomes', 46676768, 'ricardo rojas 2194'),
('carlos', 'albarracin', 68256375, '2 de abril 2052'),
('celeste', 'ybarra', 32893658, 'carlos maria 554'),
('eliana', 'albarracin', 49753185, '2 de abri 2052'),
('franco', 'gusman', 54456815, 'cortada 53'),
('juan', 'pestaña', 23487456, 'lieberman 730'),
('luis', 'solis', 34624247, 'jj vale 327'),
('santiago', 'benitez', 46519580, 'lieberman 828'),
('sofia', 'alba', 46519562, 'ricardo rojas 2194');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(20) NOT NULL,
  `precio` int(20) NOT NULL,
  `id_producto` int(20) NOT NULL,
  `id_mercaderia` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id_menu`, `precio`, `id_producto`, `id_mercaderia`) VALUES
(1, 1000, 9, 2),
(2, 2000, 7, 4),
(3, 3000, 5, 6),
(4, 4000, 3, 8),
(5, 5000, 1, 10),
(6, 1500, 10, 1),
(7, 2500, 8, 3),
(8, 3500, 6, 5),
(9, 4500, 4, 7),
(10, 5500, 2, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id_reservas` int(20) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `id_mesas` int(100) NOT NULL,
  `id_menu` int(40) NOT NULL,
  `precio_fijo` float NOT NULL,
  `id_clientes` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reservas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

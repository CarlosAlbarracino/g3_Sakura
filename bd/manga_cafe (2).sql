-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-11-2024 a las 18:07:11
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
-- Estructura de tabla para la tabla `mediopago`
--

CREATE TABLE `mediopago` (
  `id_medioPago` int(11) NOT NULL,
  `Nombre` varchar(154) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `mediopago`
--

INSERT INTO `mediopago` (`id_medioPago`, `Nombre`) VALUES
(1, 'efectivo'),
(2, 'Qr'),
(3, 'Transferencia'),
(4, 'debito'),
(5, 'Credito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mediopago1`
--

CREATE TABLE `mediopago1` (
  `id_MedioPago` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiket_de_compra`
--

CREATE TABLE `tiket_de_compra` (
  `id_tiket` int(11) NOT NULL,
  `Fecha_Hora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_medioPago` int(11) NOT NULL,
  `id_reservas` int(11) NOT NULL,
  `dni` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tiket_de_compra`
--

INSERT INTO `tiket_de_compra` (`id_tiket`, `Fecha_Hora`, `id_medioPago`, `id_reservas`, `dni`) VALUES
(1, '2024-09-10 14:34:00', 1, 1, 45047930),
(2, '2024-09-11 14:39:00', 2, 2, 46676768),
(3, '2024-08-20 19:34:00', 3, 3, 68256375),
(4, '2024-09-25 12:34:59', 4, 4, 45047930),
(5, '2024-09-26 18:10:00', 5, 5, 46676768),
(6, '2024-10-01 10:30:00', 6, 6, 45047930),
(7, '2024-10-02 15:30:00', 7, 7, 68256375),
(8, '2024-10-02 20:52:59', 8, 8, 68256375);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mediopago`
--
ALTER TABLE `mediopago`
  ADD PRIMARY KEY (`id_medioPago`);

--
-- Indices de la tabla `tiket_de_compra`
--
ALTER TABLE `tiket_de_compra`
  ADD PRIMARY KEY (`id_tiket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

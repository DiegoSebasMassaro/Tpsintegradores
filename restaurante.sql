-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-09-2025 a las 22:21:22
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
-- Base de datos: `restaurante`
--
CREATE DATABASE IF NOT EXISTS `restaurante` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restaurante`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `producto`, `precio`, `stock`, `tipo`, `foto`) VALUES
(1, 'fideos', 2000.30, 10, 'pastas', 'fid.jpg'),
(2, 'pizza', 7800.00, 5, 'harinas', 'pizza.jpg'),
(3, 'agnelotti', 7000.25, 10, 'pasta', 'agnelotti.jpg'),
(4, 'ravioles', 5000.25, 15, 'pasta', 'ravioles.jpg'),
(5, 'coca-cola', 1600.80, 10, 'gaseosa', 'coca.jpg'),
(6, 'pepsi', 1400.86, 20, 'gaseosa', 'pepsi.jpg'),
(7, 'asado', 10000.00, 30, 'carne', 'asado.jpg'),
(8, 'pollo', 9999.99, 72, 'pollo', 'pollo.jpg'),
(9, 'helado', 4000.10, 1, 'postre', 'helado.jpg'),
(10, 'flan', 3200.50, 200, 'postre', 'flan.jpg'),
(11, 'cerveza', 4000.00, 15, 'bebida', 'cerveza.jpg'),
(12, 'caipirinha', 4500.00, 25, 'trago', 'caipirinha.jpg'),
(13, 'agua mineral', 2000.00, 31, 'agua', 'agua.jpg'),
(14, 'galleta de la fortuna', 900.80, 44, 'aperitivo', 'galleta.jpg'),
(15, 'tortilla', 3500.45, 5, 'lacteo', 'tortilla.jpg'),
(16, 'sprite', 1500.45, 10, 'gaseosa', 'sprite.jpg'),
(17, '7up', 1700.00, 19, 'gaseosa', '7up.jpg'),
(18, 'cafe', 2500.40, 15, 'infusion', 'cafe.jpg'),
(19, 'te', 2135.30, 10, 'infusion', 'te.jpg'),
(20, 'medialuna', 650.00, 9, 'harinas', 'fac.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `reservado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`id`, `numero`, `reservado`) VALUES
(1, 3, 1),
(2, 5, 0),
(3, 4, 1),
(4, 2, 0),
(5, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promociones`
--

CREATE TABLE `promociones` (
  `id` int(11) NOT NULL,
  `descuento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `promociones`
--

INSERT INTO `promociones` (`id`, `descuento`) VALUES
(1, 25),
(2, 15),
(3, 35),
(4, 20),
(5, 60);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `nickname` varchar(50) NOT NULL,
  `contraseña` varchar(50) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `nickname`, `contraseña`, `correo`) VALUES
(1, 'diego', 'yomann', 'dinosaurio1525;', 'usuario@gmail.com'),
(2, 'pepe', 'pepito25', 'pepitoelmejor32', 'usuario2@gmail.com'),
(3, 'lucia', 'lucianaalgo', 'sisicontraseña321', 'usuario3@gmail.com'),
(4, 'ignacio', 'ingacio86', 'contraseña099', 'usuario4@gmail.com'),
(5, 'pepa', 'pepapig', 'nosequeponer', 'usuario5@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `horario` time DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `comensales` int(11) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id`, `fecha`, `total`, `horario`, `cantidad`, `comensales`, `estado`) VALUES
(1, '2025-01-10', 25000.00, '16:17:16', 2, 2, 'pagado con tarjeta'),
(2, '2025-01-10', 30000.00, '10:00:00', 3, 3, 'pagado con efectivo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `promociones`
--
ALTER TABLE `promociones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

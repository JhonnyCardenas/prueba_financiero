-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2023 a las 00:47:56
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_financiero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_cuentas`
--

CREATE TABLE `tb_cuentas` (
  `cuenta_id` int(15) NOT NULL,
  `cuenta_numero` varchar(20) NOT NULL,
  `cuenta_valor` varchar(50) NOT NULL,
  `cuenta_cambio` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `usu_id` int(11) NOT NULL,
  `usu_nombre` varchar(25) NOT NULL,
  `usu_contrasena` varchar(15) NOT NULL,
  `usu_cargo` varchar(10) NOT NULL,
  `usu_cuenta` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`usu_id`, `usu_nombre`, `usu_contrasena`, `usu_cargo`, `usu_cuenta`) VALUES
(1, 'Jhonny Cardenas', '1', '1', '12313'),
(2, 'Pepe Cfre', 'd', '3', '32132');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_cuentas`
--
ALTER TABLE `tb_cuentas`
  ADD PRIMARY KEY (`cuenta_id`);

--
-- Indices de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`usu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_cuentas`
--
ALTER TABLE `tb_cuentas`
  MODIFY `cuenta_id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

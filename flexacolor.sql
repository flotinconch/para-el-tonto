-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-07-2022 a las 21:58:05
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `flexacolor`
--
CREATE DATABASE IF NOT EXISTS `flexacolor` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `flexacolor`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito_usuarios`
--

DROP TABLE IF EXISTS `carrito_usuarios`;
CREATE TABLE IF NOT EXISTS `carrito_usuarios` (
  `id_sesion` varchar(255) NOT NULL,
  `id_producto` bigint(20) UNSIGNED NOT NULL,
  KEY `id_producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrito_usuarios`
--

INSERT INTO `carrito_usuarios` (`id_sesion`, `id_producto`) VALUES
('rip26e9qvmb39e6mesnki6tge6', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(1024) NOT NULL,
  `precio` decimal(9,2) DEFAULT NULL,
  `activo` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `Tono` varchar(100) NOT NULL,
  `patron` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `especificaciones` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `activo`, `id_categoria`, `Tono`, `patron`, `tipo`, `especificaciones`) VALUES
(1, 'cortina', 'romana\r\n<br>\r\ncon acabado sheer\r\n<br>\r\ncon un tono suave', '10000.00', 1, 1, '', '', 'sheer', ''),
(2, 'persiana', 'tipo replegable\r\n<br>\r\ncon acabados oscuros\r\n<br>\r\ncolor beigh', '700000.00', 1, 1, '', '', 'replegable', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Code` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`Code`, `name`, `lastname`, `Password`, `email`, `user`, `created_at`, `updated_at`) VALUES
(1, 'a', 'a', 'a', 'a', 'a', '2022-07-14 04:33:32', '2022-07-14 04:33:32'),
(2, 'o', 'o', 'o', 'o@o.com', 'o', '2022-07-14 04:36:21', '2022-07-14 04:36:21');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito_usuarios`
--
ALTER TABLE `carrito_usuarios`
  ADD CONSTRAINT `carrito_usuarios_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

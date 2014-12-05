-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2014 a las 04:45:21
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `usuario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_grupo`
--

CREATE TABLE IF NOT EXISTS `alumno_grupo` (
  `id` INT(6) NOT NULL AUTO_INCREMENT,
  `id_alumno` INT(6) DEFAULT NULL,
  `id_grupo` INT(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE IF NOT EXISTS `grupo` (
  `id` INT(6) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`id`, `nombre`) VALUES
(1, 'TIC 71'),
(2, 'TIC 72'),
(3, 'TIC 73');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestro`
--

CREATE TABLE IF NOT EXISTS `maestro` (
  `id` INT(6) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(250) DEFAULT NULL,
  `avatar` VARCHAR(250) DEFAULT NULL,
  `orden` VARCHAR(250) DEFAULT NULL,
  `estatus` INT(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestro_materia`
--

CREATE TABLE IF NOT EXISTS `maestro_materia` (
  `id` INT(6) NOT NULL AUTO_INCREMENT,
  `id_maestro` INT(6) DEFAULT NULL,
  `id_materia` INT(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `maestro_materia`
--

INSERT INTO `maestro_materia` (`id`, `id_maestro`, `id_materia`) VALUES
(2, 3, 2),
(6, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE IF NOT EXISTS `materia` (
  `id` INT(6) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(250) DEFAULT NULL,
  `avatar` VARCHAR(250) DEFAULT NULL,
  `orden` VARCHAR(250) DEFAULT NULL,
  `estatus` INT(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id`, `nombre`, `avatar`, `orden`, `estatus`) VALUES
(1, 'Matemáticas', NULL, NULL, 1),
(2, 'Español', NULL, NULL, 1),
(3, 'Inglés', NULL, NULL, 1),
(4, 'POO', NULL, NULL, 1),
(5, 'Admin. del tiempo', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE IF NOT EXISTS `preguntas` (
  `id` INT(6) NOT NULL AUTO_INCREMENT,
  `pregunta` VARCHAR(450) DEFAULT NULL,
  `respuesta` VARCHAR(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `respuesta`) VALUES
(1, '¿Un ovíparo nace de un huevo?', 'SI'),
(2, '¿Un vivíparo nace del vientre de la madre?', 'SI'),
(3, '¿Un carnivoro come vegetales?', 'NO'),
(4, '¿Un Hervivoro come carne?', 'NO'),
(5, '¿El simbolo quimico del agua es H3O?', 'NO'),
(6, '¿El símbolo químico del carbono es C?', 'SI'),
(7, '¿El símbolo químico del hidrógeno es Hid?', 'NO'),
(8, '¿PHP es un lenguaje que trabaja del lado del servidor?', 'SI'),
(9, '¿HTML es un lenguaje de programación?', 'NO'),
(10, '¿CSS es un lenguaje de programación?', 'NO'),
(11, '¿Ajax es derivado de JQuery?', 'SI'),
(12, '¿Un método del envío de un formulario es POST?', 'SI'),
(13, '¿CSS significa Cascading Style Sheets?', 'SI'),
(14, '¿XAMPP es un gestor de Bases de Datos?', 'NO'),
(15, '¿MySQL es un servidor web local?', 'NO'),
(16, '¿FileZilla es un gestor de transferencia de archivos?', 'SI'),
(17, '¿XAMPP significa XHTML, Apache, MySQL, Perl y Php?', 'SI'),
(18, '¿PhpStrom es un editor de imagenes?', 'NO'),
(19, '¿Bootstrap está diseñado para diferentes dispositivos?', 'SI'),
(20, '¿JavaScript es un lenguaje de programación?', 'SI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` INT(6) NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(250) DEFAULT NULL,
  `ApellidoPaterno` VARCHAR(250) DEFAULT NULL,
  `ApellidoMaterno` VARCHAR(250) DEFAULT NULL,
  `Telefono` VARCHAR(250) DEFAULT NULL,
  `Calle` VARCHAR(250) DEFAULT NULL,
  `NumeroExterior` INT(5) DEFAULT NULL,
  `NumeroInterior` INT(5) DEFAULT NULL,
  `Colonia` VARCHAR(250) DEFAULT NULL,
  `Municipio` VARCHAR(250) DEFAULT NULL,
  `Estado` VARCHAR(250) DEFAULT NULL,
  `CP` INT(6) DEFAULT NULL,
  `Correo` VARCHAR(250) DEFAULT NULL,
  `Usuario` VARCHAR(250) DEFAULT NULL,
  `Contrasena` VARCHAR(250) DEFAULT NULL,
  `Nivel` VARCHAR(250) DEFAULT NULL,
  `Estatus` VARCHAR(250) DEFAULT NULL,
  `Promedio` INT(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `Nombre`, `ApellidoPaterno`, `ApellidoMaterno`, `Telefono`, `Calle`, `NumeroExterior`, `NumeroInterior`, `Colonia`, `Municipio`, `Estado`, `CP`, `Correo`, `Usuario`, `Contrasena`, `Nivel`, `Estatus`, `Promedio`) VALUES
(1, 'Luis', 'Puebla', 'Mendoza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sok', 'luisbeese', '1', '1', 8),
(2, 'Cresenciano', 'Jose', 'Jimenez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'david', '123', '2', '1', 5),
(3, 'Raúl', 'García', 'Martínez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'raul', '123', '2', '1', 8),
(4, 'Alberto', 'Gonzalez', 'Ramirez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '1', 5),
(5, 'Miriam', 'Castro', 'Pérez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '1', 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



CREATE DATABASE usuario;
USE usuario;

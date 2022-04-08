-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-04-2022 a las 19:59:11
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `automotriz`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonos`
--

CREATE TABLE `bonos` (
  `idTrabajador` int(10) NOT NULL,
  `Nombres` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `N_venta` int(5) NOT NULL,
  `bono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bonos`
--

INSERT INTO `bonos` (`idTrabajador`, `Nombres`, `Apellido`, `N_venta`, `bono`) VALUES
(1092836840, 'JULIO', 'GARCIA MARQUEZ', 5, 10000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_gn`
--

CREATE TABLE `login_gn` (
  `contraseña` varchar(8) NOT NULL,
  `usuario` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `login_gn`
--

INSERT INTO `login_gn` (`contraseña`, `usuario`) VALUES
('1234567M', 'Gerente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suc_c`
--

CREATE TABLE `suc_c` (
  `idTrabajador` bigint(10) NOT NULL,
  `Nombres` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `bono` varchar(12) DEFAULT NULL,
  `N_venta` int(5) DEFAULT NULL,
  `T_Venta` varchar(20) DEFAULT NULL,
  `F_Venta` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `suc_c`
--

INSERT INTO `suc_c` (`idTrabajador`, `Nombres`, `Apellido`, `bono`, `N_venta`, `T_Venta`, `F_Venta`) VALUES
(2680436802, 'JESUS', 'ESPINOZA FERNANDEZ', 'FALSO', 3, 'DIRECTO', '2022-04-01'),
(3453458753, 'EVELYN', 'FLORES	FUENTES', 'FALSO', 5, 'DIRECTO', '2022-04-03'),
(3456782532, 'PAULA', 'FLORES 	CADENAS', 'FALSO', 2, 'DIRECTO', '2022-03-10'),
(4256879052, 'CRISTINA', 'CARRERA CALDERON', 'FALSO', 1, 'DIRECTO', '2022-03-30'),
(5321680441, 'ANGELICA', 'ESCOBAR VELAZQUEZ	', 'FALSO', 6, 'DIRECTO', '2022-03-13'),
(6485934568, 'JUAN', 'CARDENAS GAITAN', 'FALSO', 2, 'DIRECTO', '2022-02-28'),
(6523715780, 'JORGE', 'FUENTES GALVAN', 'FALSO', 5, 'DIRECTO', '2022-03-17'),
(6532379031, 'ROSARIO ESTELA', 'FIGUEROA HERNANDEZ	', 'FALSO', 1, 'DIRECTO', '2022-04-05'),
(7556346712, 'MARIA DOLORES', 'BARRERA ESCALANTE', 'FALSO', 3, 'DIRECTO', '2022-03-01'),
(8345262579, 'SOFIA', 'FERNANDEZ DAMIAN', 'FALSO', 2, 'DIRECTO', '2022-03-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suc_nort`
--

CREATE TABLE `suc_nort` (
  `idTrabajador` int(10) NOT NULL,
  `Nombres` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `bono` varchar(18) DEFAULT NULL,
  `N_venta` int(5) DEFAULT NULL,
  `T_venta` varchar(20) DEFAULT NULL,
  `F_venta` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `suc_nort`
--

INSERT INTO `suc_nort` (`idTrabajador`, `Nombres`, `Apellido`, `bono`, `N_venta`, `T_venta`, `F_venta`) VALUES
(1028392028, 'RODOLFO', 'LOPEZ ALONSO', 'FALSO', 3, 'DIRECTA', '2022-12-01'),
(1092836840, 'JULIO', 'GARCIA MARQUEZ', 'VERDADERO', 5, 'DIRECTA', '2022-12-10'),
(1123574687, 'ESTEBAN', 'CAZARES LOZANO', 'FALSO', 2, 'DIRECTA', '2022-12-02'),
(1201029302, 'FERNANDO ', 'COLUNGA RAMIREZ', 'FALSO', 4, 'DIRECTA', '2022-12-06'),
(1205463849, 'JUAN', 'LABRA OBREGON', 'FALSO', 1, ' DIRECTA', '2022-12-04'),
(1678291783, 'BIANCA ESBEYDI', 'IBAREZ SOSA', 'FALSO', 3, 'DIRECTA', '2022-12-02'),
(1839283223, 'JOSUE', 'NAVARRO GARCIA', 'FALSO', 4, 'DIRECTA', '2022-12-08'),
(1928362722, 'LAURA', 'ARELLLANO MANCILLA', 'FALSO', 3, 'DIRECTA', '2022-12-09'),
(2134017394, 'BEATRIZ', 'SOLANO ORTIZ', 'FALSO', 2, 'DIRECTA', '2022-12-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `surcursal_s`
--

CREATE TABLE `surcursal_s` (
  `idTrabajador` bigint(10) NOT NULL,
  `Nombres` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `bono` varchar(12) DEFAULT NULL,
  `Tip_venta` varchar(20) DEFAULT NULL,
  `N_venta` int(7) DEFAULT NULL,
  `F_venta` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `surcursal_s`
--

INSERT INTO `surcursal_s` (`idTrabajador`, `Nombres`, `Apellido`, `bono`, `Tip_venta`, `N_venta`, `F_venta`) VALUES
(93746281, 'AARON', 'BELLO REZA', 'FALSO', 'DIRECTO', 2, '2022-04-04'),
(303030303, 'MARGARITA', 'FAJES FERNANDEZ', 'FALSO', 'DIRECTO', 3, '2022-04-01'),
(947372988, 'ANGEL KRISHNA', 'SAHAGUN RODRIGUEZ', 'FALSO', 'DIRECTO', 5, '2022-04-04'),
(1123574687, 'ESTEBAN', 'MARTINEZ ORTIZ', 'FALSO', 'DIRECTO', 1, '2022-04-05'),
(1201029302, 'MAURICIO', 'ESPARZA', 'FALSO', 'DIRECTO', 3, '2022-04-06'),
(1234267812, 'SORAYA', 'HARO', 'FALSO', 'DIRECTO', 1, '2022-04-06'),
(1234527129, 'LAURA MARTHA', 'PEDROZA SALAS', 'FALSO', 'DIRECTO', 2, '2022-04-06'),
(1263046519, 'FRANCISCO', 'SALAS MENDOZA', 'FALSO', 'DIRECTO', 4, '2022-04-06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `login_gn`
--
ALTER TABLE `login_gn`
  ADD PRIMARY KEY (`contraseña`);

--
-- Indices de la tabla `suc_c`
--
ALTER TABLE `suc_c`
  ADD PRIMARY KEY (`idTrabajador`);

--
-- Indices de la tabla `suc_nort`
--
ALTER TABLE `suc_nort`
  ADD PRIMARY KEY (`idTrabajador`);

--
-- Indices de la tabla `surcursal_s`
--
ALTER TABLE `surcursal_s`
  ADD PRIMARY KEY (`idTrabajador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-09-2022 a las 05:35:18
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
-- Base de datos: `alcaldia_unguia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_comercial`
--

CREATE TABLE `actividad_comercial` (
  `Id_Codigo_Ciiu` int(11) NOT NULL,
  `Acc_Actividad` varchar(80) NOT NULL,
  `Acc_Tarifa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `Id_Administrador` int(11) NOT NULL,
  `Id_Usu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `año_de_liquidacion`
--

CREATE TABLE `año_de_liquidacion` (
  `Id_Año_Liquidación` int(11) NOT NULL,
  `AñoL_DescuentoPorAño` int(11) DEFAULT NULL,
  `AñoL_LiquidacionPorAño` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `base`
--

CREATE TABLE `base` (
  `Id_Base` int(11) NOT NULL,
  `Bas_Grabable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `Id_Cargo` int(11) NOT NULL,
  `Car_Nombre` varchar(40) NOT NULL,
  `Id_Usu` int(11) NOT NULL,
  `Id_Dependencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependencia`
--

CREATE TABLE `dependencia` (
  `Id_Dependencia` int(11) NOT NULL,
  `Dep_Nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `establecimiento`
--

CREATE TABLE `establecimiento` (
  `Id_EstNit` int(11) NOT NULL,
  `EstRazonSocial` varchar(200) DEFAULT NULL,
  `EstDireccion` varchar(50) DEFAULT NULL,
  `Id_Usu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `Id_Factura` int(11) NOT NULL,
  `Fac_Numero_Referencia` int(11) NOT NULL,
  `Fac_Cuentas_Vencidas` int(11) DEFAULT NULL,
  `Fac_Descuento` int(11) DEFAULT NULL,
  `Fac_Total_A_Pagar_Periodo` int(11) NOT NULL,
  `Fac_Total_A_Pagar_Año` int(11) DEFAULT NULL,
  `Fac_Sub_Total` int(11) NOT NULL,
  `Fac_Valor_A_Pagar` int(11) NOT NULL,
  `Id_Base` int(11) NOT NULL,
  `Id_Año_Liquidación` int(11) NOT NULL,
  `Id_Periodo` int(11) NOT NULL,
  `Id_PeriodoL` int(11) NOT NULL,
  `Id_EstNit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paz_y_salvo_municipal`
--

CREATE TABLE `paz_y_salvo_municipal` (
  `Id_PazYSalvo` int(11) NOT NULL,
  `PyS_Departamento` varchar(30) DEFAULT NULL,
  `PyS_Municipio` varchar(30) DEFAULT NULL,
  `PyS_Fecha_Expedicion` date NOT NULL,
  `PyS_Fecha_Validez` date NOT NULL,
  `PyS_Firma_Quien_Expide` varchar(30) NOT NULL,
  `Id_Usu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo_de_liquidacion`
--

CREATE TABLE `periodo_de_liquidacion` (
  `Id_PeriodoL` int(11) NOT NULL,
  `PDe_Liquidacion_Por_Periodo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo_de_pago`
--

CREATE TABLE `periodo_de_pago` (
  `Id_Periodo` int(11) NOT NULL,
  `PerP_Concepto` varchar(60) NOT NULL,
  `PerP_Periodo` date DEFAULT NULL,
  `PerP_VigenciaActual` time DEFAULT NULL,
  `PerP_VigenciaAnterior` time DEFAULT NULL,
  `PerP_recargos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `real_estab_actic`
--

CREATE TABLE `real_estab_actic` (
  `Id_EstAct` int(11) NOT NULL,
  `Id_EstNit` int(11) NOT NULL,
  `Id_Codigo_Ciiu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `real_usu_est`
--

CREATE TABLE `real_usu_est` (
  `Id_UsuEst` int(11) NOT NULL,
  `Id_Usu` int(11) NOT NULL,
  `Id_EstNit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_Usu` int(11) NOT NULL,
  `Usu_Cedula` varchar(11) NOT NULL,
  `Usu_nombre` varchar(30) NOT NULL,
  `Usu_Apellido` varchar(30) NOT NULL,
  `Usu_Celular` varchar(10) DEFAULT NULL,
  `Usu_Correo` varchar(50) NOT NULL,
  `Usu_Direccion` varchar(50) NOT NULL,
  `Usu_Contrasena` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad_comercial`
--
ALTER TABLE `actividad_comercial`
  ADD PRIMARY KEY (`Id_Codigo_Ciiu`);

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`Id_Administrador`),
  ADD KEY `Id_Usu` (`Id_Usu`);

--
-- Indices de la tabla `año_de_liquidacion`
--
ALTER TABLE `año_de_liquidacion`
  ADD PRIMARY KEY (`Id_Año_Liquidación`);

--
-- Indices de la tabla `base`
--
ALTER TABLE `base`
  ADD PRIMARY KEY (`Id_Base`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`Id_Cargo`),
  ADD KEY `Id_Usu` (`Id_Usu`),
  ADD KEY `Id_Dependencia` (`Id_Dependencia`);

--
-- Indices de la tabla `dependencia`
--
ALTER TABLE `dependencia`
  ADD PRIMARY KEY (`Id_Dependencia`);

--
-- Indices de la tabla `establecimiento`
--
ALTER TABLE `establecimiento`
  ADD PRIMARY KEY (`Id_EstNit`),
  ADD KEY `Id_Usu` (`Id_Usu`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`Id_Factura`),
  ADD KEY `Id_Base` (`Id_Base`),
  ADD KEY `Id_Año_Liquidación` (`Id_Año_Liquidación`),
  ADD KEY `Id_Periodo` (`Id_Periodo`),
  ADD KEY `Id_PeriodoL` (`Id_PeriodoL`),
  ADD KEY `Id_EstNit` (`Id_EstNit`);

--
-- Indices de la tabla `paz_y_salvo_municipal`
--
ALTER TABLE `paz_y_salvo_municipal`
  ADD PRIMARY KEY (`Id_PazYSalvo`),
  ADD KEY `Id_Usu` (`Id_Usu`);

--
-- Indices de la tabla `periodo_de_liquidacion`
--
ALTER TABLE `periodo_de_liquidacion`
  ADD PRIMARY KEY (`Id_PeriodoL`);

--
-- Indices de la tabla `periodo_de_pago`
--
ALTER TABLE `periodo_de_pago`
  ADD PRIMARY KEY (`Id_Periodo`);

--
-- Indices de la tabla `real_estab_actic`
--
ALTER TABLE `real_estab_actic`
  ADD PRIMARY KEY (`Id_EstAct`),
  ADD KEY `Id_EstNit` (`Id_EstNit`),
  ADD KEY `Id_Codigo_Ciiu` (`Id_Codigo_Ciiu`);

--
-- Indices de la tabla `real_usu_est`
--
ALTER TABLE `real_usu_est`
  ADD PRIMARY KEY (`Id_UsuEst`),
  ADD KEY `Id_Usu` (`Id_Usu`),
  ADD KEY `Id_EstNit` (`Id_EstNit`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_Usu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `Id_Administrador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `Id_Cargo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dependencia`
--
ALTER TABLE `dependencia`
  MODIFY `Id_Dependencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `Id_Factura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paz_y_salvo_municipal`
--
ALTER TABLE `paz_y_salvo_municipal`
  MODIFY `Id_PazYSalvo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `real_estab_actic`
--
ALTER TABLE `real_estab_actic`
  MODIFY `Id_EstAct` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `real_usu_est`
--
ALTER TABLE `real_usu_est`
  MODIFY `Id_UsuEst` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_Usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`Id_Usu`) REFERENCES `usuario` (`Id_Usu`);

--
-- Filtros para la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD CONSTRAINT `cargo_ibfk_1` FOREIGN KEY (`Id_Usu`) REFERENCES `usuario` (`Id_Usu`),
  ADD CONSTRAINT `cargo_ibfk_2` FOREIGN KEY (`Id_Dependencia`) REFERENCES `dependencia` (`Id_Dependencia`);

--
-- Filtros para la tabla `establecimiento`
--
ALTER TABLE `establecimiento`
  ADD CONSTRAINT `establecimiento_ibfk_1` FOREIGN KEY (`Id_Usu`) REFERENCES `usuario` (`Id_Usu`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`Id_Base`) REFERENCES `base` (`Id_Base`),
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`Id_Año_Liquidación`) REFERENCES `año_de_liquidacion` (`Id_Año_Liquidación`),
  ADD CONSTRAINT `factura_ibfk_3` FOREIGN KEY (`Id_Periodo`) REFERENCES `periodo_de_pago` (`Id_Periodo`),
  ADD CONSTRAINT `factura_ibfk_4` FOREIGN KEY (`Id_PeriodoL`) REFERENCES `periodo_de_liquidacion` (`Id_PeriodoL`),
  ADD CONSTRAINT `factura_ibfk_5` FOREIGN KEY (`Id_EstNit`) REFERENCES `establecimiento` (`Id_EstNit`);

--
-- Filtros para la tabla `paz_y_salvo_municipal`
--
ALTER TABLE `paz_y_salvo_municipal`
  ADD CONSTRAINT `paz_y_salvo_municipal_ibfk_1` FOREIGN KEY (`Id_Usu`) REFERENCES `usuario` (`Id_Usu`);

--
-- Filtros para la tabla `real_estab_actic`
--
ALTER TABLE `real_estab_actic`
  ADD CONSTRAINT `real_estab_actic_ibfk_1` FOREIGN KEY (`Id_EstNit`) REFERENCES `establecimiento` (`Id_EstNit`),
  ADD CONSTRAINT `real_estab_actic_ibfk_2` FOREIGN KEY (`Id_Codigo_Ciiu`) REFERENCES `actividad_comercial` (`Id_Codigo_Ciiu`);

--
-- Filtros para la tabla `real_usu_est`
--
ALTER TABLE `real_usu_est`
  ADD CONSTRAINT `real_usu_est_ibfk_1` FOREIGN KEY (`Id_Usu`) REFERENCES `usuario` (`Id_Usu`),
  ADD CONSTRAINT `real_usu_est_ibfk_2` FOREIGN KEY (`Id_EstNit`) REFERENCES `establecimiento` (`Id_EstNit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

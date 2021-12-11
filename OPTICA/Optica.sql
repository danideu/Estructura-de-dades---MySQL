-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 11-12-2021 a las 11:16:36
-- Versión del servidor: 5.7.30
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `Optica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Clientes`
--

CREATE TABLE `Clientes` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombre` char(150) DEFAULT 'NOT NULL',
  `direccion` char(250) DEFAULT 'NOT NULL',
  `numero` int(5) UNSIGNED DEFAULT NULL,
  `puerta` int(5) UNSIGNED DEFAULT NULL,
  `ciudad` char(150) DEFAULT NULL,
  `codigo_postal` int(10) DEFAULT NULL,
  `pais` char(150) DEFAULT NULL,
  `telefono` char(100) DEFAULT NULL,
  `email` char(250) DEFAULT 'NOT NULL',
  `fecha_registro` datetime DEFAULT NULL,
  `recomendado` char(250) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Clientes`
--

INSERT INTO `Clientes` (`id`, `nombre`, `direccion`, `numero`, `puerta`, `ciudad`, `codigo_postal`, `pais`, `telefono`, `email`, `fecha_registro`, `recomendado`) VALUES
(1, 'Daniel Deudero', 'c/ Monasterio', 11, 5, 'Valladolid', 47015, 'España', '656747744', 'danideu@gmail.com', '2021-11-28 01:40:17', ''),
(2, 'Ana Casado', 'c/ Lázaro', 198, 3, 'Alicante', 43019, 'España', '659932433', 'anacasado@gmail.com', '2021-11-28 01:42:23', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empleados`
--

CREATE TABLE `Empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `email` varchar(250) NOT NULL,
  `fec_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Empleados`
--

INSERT INTO `Empleados` (`id`, `nombre`, `email`, `fec_registro`) VALUES
(1, 'Raúl Cimas', 'raulcimas@gmail.com', '2021-11-29 11:10:30'),
(2, 'Sergio Contreras', 'sergio2018@gmail.com', '2021-11-29 11:10:30'),
(3, 'Pablo Picasso', 'elartista@gmail.com', '2021-11-29 11:10:55'),
(4, 'Leonardo Prieto', 'leonardoprieto@hotmail.com', '2021-11-29 11:11:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Gafas`
--

CREATE TABLE `Gafas` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombre` char(250) DEFAULT NULL,
  `graduacion_izquierda` float DEFAULT NULL,
  `graduacion_derecha` float DEFAULT NULL,
  `montura` char(100) DEFAULT NULL,
  `color_montura` char(50) DEFAULT '',
  `color_cristales` char(50) DEFAULT NULL,
  `precio` int(100) DEFAULT NULL,
  `id_marca` int(11) UNSIGNED NOT NULL,
  `id_proveedor` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Gafas`
--

INSERT INTO `Gafas` (`id`, `nombre`, `graduacion_izquierda`, `graduacion_derecha`, `montura`, `color_montura`, `color_cristales`, `precio`, `id_marca`, `id_proveedor`) VALUES
(1, 'Balenciaga BB0024S C58 006', 1.2, 1.6, 'Pasta', 'Marrón', 'Marrón', 325, 5, 1),
(2, 'Balenciaga BB0151S 005', 2, 2.1, 'Flotante', 'Verde', 'Negro', 213, 5, 1),
(3, 'Ray-Ban RB3594 914687', 2, 1, 'Metálica', 'Roja', 'Marrón', 180, 3, 2),
(4, 'Pierre Cardin P.C. 8501 0XR', 0, 0, 'Metálica', 'Blanca', 'Transparente', 78, 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Marcas`
--

CREATE TABLE `Marcas` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombre` char(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Marcas`
--

INSERT INTO `Marcas` (`id`, `nombre`) VALUES
(1, 'Lotus'),
(2, 'Prada'),
(3, 'Ray-ban'),
(4, 'Pierre Cardin'),
(5, 'Balenciaga');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pedidos`
--

CREATE TABLE `Pedidos` (
  `id` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_cliente` int(11) UNSIGNED NOT NULL,
  `referencia` varchar(10) NOT NULL,
  `coste_total` float NOT NULL,
  `estado` varchar(50) NOT NULL,
  `fec_alta` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Pedidos`
--

INSERT INTO `Pedidos` (`id`, `id_empleado`, `id_cliente`, `referencia`, `coste_total`, `estado`, `fec_alta`) VALUES
(3, 1, 1, '2021-0001', 325, 'completado', '2021-11-30 12:35:29'),
(4, 1, 2, '2021-0002', 180, 'En reparto', '2021-11-03 12:35:29'),
(5, 2, 1, '2021-0003', 258, 'completado', '2021-12-01 12:36:38'),
(7, 4, 2, '2021-0004', 901, 'completado', '2021-12-01 09:36:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Proveedores`
--

CREATE TABLE `Proveedores` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombre` char(150) DEFAULT 'NOT NULL',
  `direccion` char(250) DEFAULT 'NOT NULL',
  `numero` int(5) UNSIGNED DEFAULT NULL,
  `puerta` int(5) UNSIGNED DEFAULT NULL,
  `ciudad` char(150) DEFAULT NULL,
  `codigo_postal` int(10) DEFAULT NULL,
  `pais` char(150) DEFAULT NULL,
  `telefono` char(100) DEFAULT NULL,
  `fax` char(100) DEFAULT NULL,
  `nif` char(12) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Proveedores`
--

INSERT INTO `Proveedores` (`id`, `nombre`, `direccion`, `numero`, `puerta`, `ciudad`, `codigo_postal`, `pais`, `telefono`, `fax`, `nif`) VALUES
(1, 'Gafas 3000', 'c/ Oropéndola', 24, NULL, 'Valladolid', 47010, 'España', '+34 958 788 766', NULL, '87785443R'),
(2, 'Cristal Core', 'c/ Ruiz Muñóz', 12, NULL, 'Alicante', 45030, 'España', '+34 958 788 455', NULL, '45385443L'),
(3, 'Monturas Mar', 'c/ Luz', 180, 2, 'Madrid', 11010, 'España', '+34 91 378 844', NULL, '15336447U');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ventas`
--

CREATE TABLE `Ventas` (
  `id` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_gafas` int(11) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Ventas`
--

INSERT INTO `Ventas` (`id`, `id_empleado`, `id_pedido`, `id_gafas`, `cantidad`) VALUES
(2, 1, 3, 1, 1),
(3, 1, 3, 2, 3),
(4, 4, 4, 4, 10),
(5, 4, 4, 3, 1),
(6, 1, 4, 1, 1),
(7, 1, 3, 3, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Clientes`
--
ALTER TABLE `Clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Empleados`
--
ALTER TABLE `Empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Gafas`
--
ALTER TABLE `Gafas`
  ADD PRIMARY KEY (`id`,`id_marca`,`id_proveedor`),
  ADD KEY `id_marca` (`id_marca`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `Marcas`
--
ALTER TABLE `Marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Pedidos`
--
ALTER TABLE `Pedidos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `referencia` (`referencia`),
  ADD KEY `id_empleado` (`id_empleado`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `Proveedores`
--
ALTER TABLE `Proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Ventas`
--
ALTER TABLE `Ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Pedido` (`id_pedido`),
  ADD KEY `id_gafas` (`id_gafas`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Clientes`
--
ALTER TABLE `Clientes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Empleados`
--
ALTER TABLE `Empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `Gafas`
--
ALTER TABLE `Gafas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `Marcas`
--
ALTER TABLE `Marcas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `Pedidos`
--
ALTER TABLE `Pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `Proveedores`
--
ALTER TABLE `Proveedores`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Ventas`
--
ALTER TABLE `Ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Gafas`
--
ALTER TABLE `Gafas`
  ADD CONSTRAINT `gafas_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `Marcas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gafas_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `Proveedores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Pedidos`
--
ALTER TABLE `Pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `Empleados` (`id`),
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `Clientes` (`id`);

--
-- Filtros para la tabla `Ventas`
--
ALTER TABLE `Ventas`
  ADD CONSTRAINT `Gafas` FOREIGN KEY (`id_gafas`) REFERENCES `Gafas` (`id`),
  ADD CONSTRAINT `Pedido` FOREIGN KEY (`id_pedido`) REFERENCES `Pedidos` (`id`),
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `Empleados` (`id`);

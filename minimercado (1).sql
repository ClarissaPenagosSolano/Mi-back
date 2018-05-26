-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2018 a las 18:53:40
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `minimercado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_administrador` int(11) NOT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `tipo_doc` varchar(45) DEFAULT NULL,
  `num_doc` int(11) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_administrador`, `nombres`, `apellidos`, `tipo_doc`, `num_doc`, `celular`) VALUES
(11, 'Sebastian', 'Ramirez', 'Cedula', 1026587226, '321569875'),
(12, 'Clarissa', 'Penagos', 'Cedula', 1016112818, '3212190278'),
(13, 'Noralba', 'Casas', 'Cedula', 23156878, '3102289189'),
(14, 'Vanessa', 'Solano', 'Cedula', 34121356, '3102359296'),
(15, 'Kalet', 'Morales', 'T.I', 13568796, '320156987');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`) VALUES
(0, NULL),
(1, 'lacteos'),
(2, 'Carnes'),
(3, 'Granos'),
(4, 'Productos Aseo'),
(5, 'Utensilios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `tipo_doc` varchar(45) DEFAULT NULL,
  `num_doc` int(11) NOT NULL,
  `celular` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`nombres`, `apellidos`, `tipo_doc`, `num_doc`, `celular`) VALUES
('daniela', 'casas', 'T.I', 24341317, '3102359296'),
('martin', 'wood', 'cedula', 25218635, '4584261'),
('canela', 'fonsi', 'cedula', 1016111918, '3102289189'),
('vanessa', 'perez', 'T.I', 1016112817, '3212190278'),
('vanessa', 'perez', 'T.I', 1016112818, '3212190278'),
('clarissa', 'penagos', 'cedula', 1026587223, '3008119769');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargado`
--

CREATE TABLE `encargado` (
  `id_encargado` int(11) NOT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `tipo_doc` varchar(45) DEFAULT NULL,
  `num_doc` int(11) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `id_administrador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `encargado`
--

INSERT INTO `encargado` (`id_encargado`, `nombres`, `apellidos`, `tipo_doc`, `num_doc`, `celular`, `id_administrador`) VALUES
(1, 'Ram', 'Egipto', 'Cedula', 102315656, '32012658', 11),
(2, 'Tris', 'Egipto', 'Cedula', 2012356, '4584261', 12),
(3, 'Tobias', 'Eathon', 'Cedula', 1016112598, '4158430', 13),
(4, 'Billy', 'Black', 'Cedula', 24341318, '3457234', 14),
(5, 'Rocio', 'Caseres', 'Cedula', 21897852, '985631265', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(45) DEFAULT NULL,
  `precio_producto` varchar(45) DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `presentacion` varchar(45) DEFAULT NULL,
  `cantidad_productos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre_producto`, `precio_producto`, `marca`, `presentacion`, `cantidad_productos`) VALUES
(1, 'Leche en polvo', '13.520', 'Parmalat', '1000gr', NULL),
(2, 'Chocolate en pastilla', '2.580', 'Sol', '500gr', NULL),
(3, 'Salchichas', '5.300', 'Rica', '150gr', NULL),
(4, 'Gelatina', '2.500', 'Comapan', '300gr', NULL),
(5, 'Platillo', '1500', 'marca', '100gr', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_cliente`
--

CREATE TABLE `producto_cliente` (
  `producto_idproducto` int(11) NOT NULL,
  `cliente_num_doc` int(11) NOT NULL,
  `producto_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_sucursal`
--

CREATE TABLE `producto_sucursal` (
  `producto_idproducto` int(11) NOT NULL,
  `sucursal_id_sucursal` int(11) NOT NULL,
  `producto_sucursal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto_sucursal`
--

INSERT INTO `producto_sucursal` (`producto_idproducto`, `sucursal_id_sucursal`, `producto_sucursal`) VALUES
(5, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_venta`
--

CREATE TABLE `producto_venta` (
  `producto_idproducto` int(11) NOT NULL,
  `venta_id_venta` int(11) NOT NULL,
  `producto_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto_venta`
--

INSERT INTO `producto_venta` (`producto_idproducto`, `venta_id_venta`, `producto_venta`) VALUES
(5, 11, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id_sucursal` int(11) NOT NULL,
  `razon_social` varchar(45) DEFAULT NULL,
  `direccion_suc` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `id_administrador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`id_sucursal`, `razon_social`, `direccion_suc`, `telefono`, `id_administrador`) VALUES
(1, 'MiniMercados LTDA Suba', 'Suba', '12301265', 11),
(2, 'MiniMercados LTDA Tintal', 'Tintal', '32156212', 12),
(3, 'MiniMercados LTDA Fontibon', 'Fontibon', '32156212', 13),
(4, 'MiniMercados LTDA Kennedy', 'Kennedy', '32156212', 14),
(5, 'MiniMercados LTDA Usaquen', 'Usaquen', '32156212', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `valor_venta` varchar(45) DEFAULT NULL,
  `fecha_venta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `valor_venta`, `fecha_venta`) VALUES
(11, '1.200.000', 15),
(12, '50.000', 15052018),
(13, '25.000', 15052018),
(14, '15.000', 15052018),
(15, '2.500', 15052018);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_administrador`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`num_doc`);

--
-- Indices de la tabla `encargado`
--
ALTER TABLE `encargado`
  ADD PRIMARY KEY (`id_encargado`,`id_administrador`),
  ADD KEY `fk_encargado_administrador1_idx` (`id_administrador`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `producto_cliente`
--
ALTER TABLE `producto_cliente`
  ADD PRIMARY KEY (`producto_idproducto`,`cliente_num_doc`,`producto_cliente`),
  ADD KEY `fk_producto_has_cliente_cliente1_idx` (`cliente_num_doc`),
  ADD KEY `fk_producto_has_cliente_producto1_idx` (`producto_idproducto`);

--
-- Indices de la tabla `producto_sucursal`
--
ALTER TABLE `producto_sucursal`
  ADD PRIMARY KEY (`producto_idproducto`,`sucursal_id_sucursal`,`producto_sucursal`),
  ADD KEY `fk_producto_has_sucursal_sucursal1_idx` (`sucursal_id_sucursal`),
  ADD KEY `fk_producto_has_sucursal_producto1_idx` (`producto_idproducto`);

--
-- Indices de la tabla `producto_venta`
--
ALTER TABLE `producto_venta`
  ADD PRIMARY KEY (`producto_idproducto`,`venta_id_venta`,`producto_venta`),
  ADD KEY `fk_producto_has_venta_venta1_idx` (`venta_id_venta`),
  ADD KEY `fk_producto_has_venta_producto_idx` (`producto_idproducto`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id_sucursal`,`id_administrador`),
  ADD KEY `fk_sucursal_administrador1_idx` (`id_administrador`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `encargado`
--
ALTER TABLE `encargado`
  ADD CONSTRAINT `fk_encargado_administrador1` FOREIGN KEY (`id_administrador`) REFERENCES `administrador` (`id_administrador`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto_cliente`
--
ALTER TABLE `producto_cliente`
  ADD CONSTRAINT `fk_producto_has_cliente_cliente1` FOREIGN KEY (`cliente_num_doc`) REFERENCES `cliente` (`num_doc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_producto_has_cliente_producto1` FOREIGN KEY (`producto_idproducto`) REFERENCES `producto` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto_sucursal`
--
ALTER TABLE `producto_sucursal`
  ADD CONSTRAINT `fk_producto_has_sucursal_producto1` FOREIGN KEY (`producto_idproducto`) REFERENCES `producto` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_producto_has_sucursal_sucursal1` FOREIGN KEY (`sucursal_id_sucursal`) REFERENCES `sucursal` (`id_sucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto_venta`
--
ALTER TABLE `producto_venta`
  ADD CONSTRAINT `fk_producto_has_venta_producto` FOREIGN KEY (`producto_idproducto`) REFERENCES `producto` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_producto_has_venta_venta1` FOREIGN KEY (`venta_id_venta`) REFERENCES `venta` (`id_venta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `fk_sucursal_administrador1` FOREIGN KEY (`id_administrador`) REFERENCES `administrador` (`id_administrador`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

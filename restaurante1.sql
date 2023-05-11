-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2023 a las 17:00:25
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `nombre` varchar(50) NOT NULL,
  `contraseña` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`nombre`, `contraseña`) VALUES
('Pablo Gomez', 123);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `documento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`) VALUES
(1, 'Laura Vallejo', 10524786),
(2, 'Pablo', 14589632),
(3, 'Lucas Marin', 146985237);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `precio` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `tipo`, `descripcion`) VALUES
(1, 'Carnitas', 12000, 'Plato Fuerte', 'En tortilla de maíz con variedad de cortes'),
(2, 'Alambres con arrechera', 30000, 'Plato Fuerte', 'Arrachera angus y pechuga de pollo'),
(3, 'Birria', 12000, 'Plato Fuerte', 'Asado de tira marinado con chiles'),
(4, 'Al pastor', 12000, 'Plato Fuerte', 'Tiras de carne de cerdo al pastor con cebolla'),
(5, 'Chimichanga', 25000, 'Plato Fuerte', 'Tortilla de trigo con lomo a la plancha o tilapia '),
(6, 'Nachos', 20000, 'Entrada', 'Trozos de lomo de res, cerdo y pechuga, bañados en'),
(7, 'Quesadillas', 20000, 'Entrada', 'Tortillas de masa artesanal rellenas de carnitas a'),
(8, 'Nuggets de pollo', 12000, 'Infantil', 'Pechuga de pollo empanizada en panko con papa a la'),
(9, 'Pechuga de pollo', 15000, 'Infantil', 'A la plancha, con arroz blanco, acompañada de papa'),
(10, 'Aguas refrescantes', 8000, 'Bebida', 'Manejamos de dos sabores: Horchata,Flor de Jamaica'),
(11, 'Jugos', 10000, 'Bebida', 'Manejamos con dos bases: Agua, Leche'),
(12, 'Cervezas', 15000, 'Bebida', 'Tenemos las marcas mas reconocidas en el mercado'),
(13, 'Shots', 10000, 'Bebida', 'Tequila\r\nWhisky\r\nRon'),
(14, 'Torta de naranja', 10000, 'Postre', 'Torta típica de la gastronomía colombiana. puedes disfrutarla con o sin helado.'),
(15, 'Churros', 10000, 'Postre', 'Puedes acompañarlos con chocolate o vainilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `productos` varchar(50) NOT NULL,
  `valor` int(11) NOT NULL,
  `cliente` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `productos`, `valor`, `cliente`) VALUES
(1, 'Carnitas', 12000, 'Pablo'),
(2, 'Jugo en leche, chimichanga', 40000, 'Lucas Marin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`contraseña`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

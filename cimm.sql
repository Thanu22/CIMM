-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-09-2022 a las 18:30:37
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cimm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `buscador`
--

CREATE TABLE `buscador` (
  `cruce` int(11) NOT NULL,
  `arteria_uno` text COLLATE utf8_spanish2_ci NOT NULL,
  `arteria_dos` text COLLATE utf8_spanish2_ci NOT NULL,
  `arteria_tres` text COLLATE utf8_spanish2_ci NOT NULL,
  `arteria_cuatro` text COLLATE utf8_spanish2_ci NOT NULL,
  `localidad` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `buscador`
--

INSERT INTO `buscador` (`cruce`, `arteria_uno`, `arteria_dos`, `arteria_tres`, `arteria_cuatro`, `localidad`) VALUES
(5102, 'Av. Don Bosco', 'Centenera', 'J.L.Borges', '', 'Villa Luzuriaga'),
(5112, 'Triunvirato', 'La Porteña', '', '', 'Villa Luzuriaga'),
(5116, 'Miguel Cane', 'La Porteña', '', '', 'Villa Luzuriaga'),
(5134, 'Algarrobo', 'Atenas', '', '', 'Isidro Casanova'),
(5136, 'Bermudez', 'Atenas', '', '', 'Villa Luzuriaga'),
(5138, 'Berna', 'Labarden', '', '', 'Villa Luzuriaga'),
(5140, 'Bermudez', 'Bruselas', '', '', 'Villa Luzuriaga'),
(5142, 'Bruselas', 'Santander', '', '', 'Villa Luzuriaga'),
(5150, 'Venezuela', 'Centenera', '', '', 'Villa Luzuriaga'),
(5152, 'Venezuela', 'Alicante', '', '', 'Villa Luzuriaga'),
(5154, 'Venezuela', 'Colonia', '', '', 'Villa Luzuriaga'),
(5156, 'Venezuela', 'Pujol', '', '', 'Villa Luzuriaga'),
(5160, 'Venezuela', 'Estocolmo', '', '', 'Villa Luzuriaga'),
(5162, 'Venezuela', 'Bruselas', '', '', 'Villa Luzuriaga'),
(5170, 'Caupolican', 'Gral. Maradiaga', 'Ensenada', '', 'Villa Luzuriaga'),
(5172, 'Centenera', 'Carrillo (ex Granada)', '', '', 'Villa Luzuriaga'),
(5174, 'Av. A. Illia', 'Gral. Madariaga ', '', '', 'San Justo'),
(5176, 'H.Yrigoyen', 'Gral. Madariaga ', '', '', 'San Justo'),
(5177, 'H.Yrigoyen', 'Guatemala', '', '', 'San Justo'),
(5178, 'Cerviño', 'Guatemala', '', '', 'San Justo'),
(5180, 'Colonia ', 'Malabia', '', '', 'San Justo'),
(5182, 'Washington', 'Malabia', 'Cetigne', 'Rucci', 'Isidro Casanova'),
(5184, 'Lisboa ', 'Caupolican', '', '', 'Isidro Casanova'),
(5185, 'Habana', 'Bruselas', '', '', 'Isidro Casanova'),
(5186, 'Rep. Del Portugal', 'Habana', '', '', 'Isidro Casanova'),
(5188, 'Rep. Del Portugal', 'Lascano', '', '', 'Isidro Casanova'),
(5189, 'Rep. Del Portugal', 'Segui', '', '', 'Isidro Casanova'),
(5307, 'Av. Cristiania ', 'Algarrobo', 'Davila', '', 'Isidro Casanova'),
(5310, 'Av. Cristiania ', 'Granville', 'Bermudez', '', 'Villa Luzuriaga'),
(5312, 'Av. Cristiania ', 'Del Bañado', '', '', 'Villa Luzuriaga'),
(5315, 'Av. Cristiania ', 'Lanin', 'La Paz', '', 'Villa Luzuriaga'),
(5320, 'Av. Cristiania ', 'Larraya', 'Islas Malvinas', '', 'Isidro Casanova'),
(5334, 'Marconi ', 'Granville', '', '', 'Rafael Castillo'),
(5336, 'Albarellos', 'Bme. De las Casas', '', '', 'Rafael Castillo'),
(5338, 'Almeira ', 'Jose B. Polledo', '', '', 'Rafael Castillo'),
(5340, 'Marconi', 'Jose B. Polledo', '', '', 'Rafael Castillo'),
(5346, 'Edison', 'Ñorquin', '', '', 'Rafael Castillo'),
(5347, 'Edison', 'Lafayette', '', '', 'Rafael Castillo'),
(5349, 'Alagon', 'Settino', '', '', 'Rafael Castillo'),
(5350, 'Marconi', 'J. D. Alagon', '', '', 'Rafael Castillo'),
(5354, 'Marconi', 'Lavallol', '', '', 'Rafael Castillo'),
(5358, 'Lavallol', 'Edison', '', '', 'Rafael Castillo'),
(5408, 'Chavarria', 'Capdevilla', '', '', 'Rafael Castillo'),
(5410, 'Granville', 'Gregorio Jaramillo ', '', '', 'Rafael Castillo'),
(5411, 'Cordero', 'Granville', '', '', 'Rafael Castillo'),
(5413, 'Montt', 'Davila', '', '', 'Rafael Castillo'),
(5414, 'Davila', 'Santa Rosa', '', '', 'Rafael Castillo'),
(5416, 'Sudamérica', 'Cnel. Aguirre', '', '', 'Rafael Castillo'),
(5418, 'Ruta Pcial. 1001 (Pierrestegui)', 'Echeverria', '', '', 'Rafael Castillo'),
(5420, 'Jose B. Polledo', 'Cnel. Montt', '', '', 'Rafael Castillo'),
(5424, 'Jose B. Polledo', 'Sudamerica', '', '', 'Rafael Castillo'),
(5428, 'Jose B. Polledo', 'Blomberg', '', '', 'Rafael Castillo'),
(5432, 'Yanzi', 'Ipiringa', '', '', 'Rafael Castillo'),
(5436, 'Estanislao del Campo', 'Virgenes', '', '', 'Gregorio de Laferrere'),
(5502, 'Derqui ', 'Moldes', '', '', 'San Justo'),
(5506, 'Montañeses ', 'Cnel. Lynch', '', '', 'San Justo'),
(5510, 'Guatemala', 'Terrada', '', '', 'San Justo'),
(5511, 'Ambrosetti', 'Gaboto', '', '', 'San Justo'),
(5512, 'Canada', 'Charrua', '', '', 'San Justo'),
(5540, 'G. Espinosa', 'Canada', '', '', 'Isidro Casanova'),
(5542, 'G. Espinosa', 'Peribebuy', '', '', 'Isidro Casanova'),
(5546, 'G. Espinosa', 'Asamblea', '', '', 'Isidro Casanova'),
(5548, 'Av. Crovara', 'G. Espinosa', '', '', 'Isidro Casanova'),
(5550, 'Av. Cristiania', 'Zinny', 'Balbastro', '', 'Isidro Casanova'),
(5554, 'Av. Cristiania ', 'Huemul', 'Montañeses', '', 'Isidro Casanova'),
(5555, 'Av. Cristiania ', 'Roque Perez', 'Zeppelin', '', 'Isidro Casanova'),
(5558, 'Av. Cristiania ', 'Peribebuy', 'Doumont Santos', '', 'Isidro Casanova'),
(5560, 'Av. Cristiania ', 'Salado', 'Gibraltar', '', 'Isidro Casanova'),
(5574, 'Marconi ', 'Juan B. Justo', '', '', 'Isidro Casanova'),
(5576, 'Marconi ', 'Santos Doumont', '', '', 'Isidro Casanova'),
(5606, 'Soldado Sosa ', 'Jorge Newbery', '', '', 'Gregorio de Laferrere'),
(5608, 'Soldado Sosa', 'Fardman', '', '', 'Gregorio de Laferrere'),
(5610, 'Soldado Sosa ', 'Voissin', '', '', 'Gregorio de Laferrere'),
(5612, 'Soldado Sosa ', 'Victor Martinez', '', '', 'Gregorio de Laferrere'),
(5614, 'Ruiz de los Llanos', 'Cnel. Montt', '', '', 'Gregorio de Laferrere'),
(5620, 'Magnasco', 'Santa Rosa', '', '', 'Gregorio de Laferrere'),
(5624, 'Tres Cruces', 'Ramon Freire', '', '', 'Gregorio de Laferrere'),
(5628, 'Maximo Zamudio', 'Lopez May', '', '', 'Gregorio de Laferrere'),
(5630, 'E.Echeverria', 'Inca', '', '', 'Gregorio de Laferrere'),
(5632, 'Av. Luro', 'Inca', '', '', 'Gregorio de Laferrere'),
(5634, 'Av. Luro', 'Encina ', '', '', 'Gregorio de Laferrere'),
(5637, 'Soberania Nacional', 'Echeverria', '', '', 'Gregorio de Laferrere'),
(5638, 'Av. Luro ', 'Soberania Nacional', '', '', 'Gregorio de Laferrere'),
(5640, 'Soberania Nacional ', 'Honorio Luque', 'R. Gutierrez', '', 'Gregorio de Laferrere'),
(5642, 'R. Gutierrez ', 'Lopez May', '', '', 'Gregorio de Laferrere'),
(5660, 'Av. Luro', 'Chassaing', '', '', 'Gregorio de Laferrere'),
(5666, 'Spiro', 'Risso Patron', '', '', 'Gregorio de Laferrere'),
(5667, 'Spiro', 'Del Tejar ', '', '', 'Gregorio de Laferrere'),
(5668, 'Reaños', 'Marcos Paz', '', '', 'Gregorio de Laferrere'),
(6118, 'Barrientos ', 'Icalma (Larre)', '', '', 'Gonzalez Catan'),
(6120, 'Ruta Prov. N° 1001', 'Llanderas (Fte Fundacion Amstrong)', '', '', 'Gonzalez Catan'),
(6122, 'Conde', 'Juan B. Justo', 'M.C. Valle', '', 'Gonzalez Catan '),
(6124, 'M.C. Valle', 'Puerto Argentino', '', '', 'Gonzalez Catan '),
(6126, 'Equiza ', 'Larre', '', '', 'Gonzalez Catan'),
(6128, 'H.Lagos ', 'Larre', '', '', 'Gonzalez Catan'),
(6130, 'Simón Perez', 'Posamay', '', '', 'Gonzalez Catan'),
(6131, 'Simón Perez', 'Caxaraville', '', '', 'Gonzalez Catan'),
(6138, 'Simón Perez ', 'Libres', '', '', 'Gonzalez Catan'),
(6144, 'Barrientos', 'Encina (Padre Mario Pantaleo)', '', '', 'Gonzalez Catan'),
(6145, 'S. Sombra', 'Escalada', 'Camacua', '', 'Villa Luzuriaga'),
(6146, 'Settino', 'Lavallol', '', '', 'Isidro Casanova'),
(6147, 'Gamboa', 'Colegiales', 'De La Fuente', '', 'Rafael Castillo '),
(6148, 'Hubac', 'Beazley', 'Victorino de la Plaza', '', 'Rafael Castillo '),
(6149, '17 de Octubre ', 'Calle 200', 'Calle 400', '', 'Ciudad Evita'),
(6150, '17 de Octubre ', 'Calle 800', '', '', 'Ciudad Evita'),
(6151, '17 de Octubre ', 'Calle 1100', 'Calle 900 ', '', 'Ciudad Evita'),
(6152, 'Av. Crovara', 'Colonia ', 'De los Incas ', '', 'Ciudad Evita'),
(6153, 'Anatole France', 'Espinosa', 'Pekin ', '', 'Isidro Casanova '),
(6154, 'Rucci ', 'Av. Crovara', 'Gavilan', '', 'Ciudad Evita'),
(6155, 'Espinosa', 'Asamblea', 'Ibarrola', '', 'Isidro Casanova '),
(6156, 'Echeverria', 'Piedrabuena', '', '', 'Gregorio de Laferrere'),
(6157, 'Av. Luro', 'Martin Coronado', 'Encina', '', 'Gregorio de Laferrere'),
(6158, 'Salvigny', 'Montgolfier', '', '', 'Gregorio de Laferrere'),
(6159, 'Soberania Nacional', 'Salvigny', '', '', 'Gregorio de Laferrere'),
(6160, 'Int. Russo ', 'Fte. Terminal 621', 'Billinghurst', '', 'Gregorio de Laferrere'),
(6161, 'Int. Russo ', 'Spilimbergo', 'Monte Egmont', '', 'Gonzalez Catan'),
(6162, 'Montgolfier', 'Arias', '', '', 'Gonzalez Catan'),
(6163, 'Simón Perez', 'Fernadez e Hidalgo', '', '', 'Gonzalez Catan'),
(6164, 'Achupallas', 'Pedro Obligado', '', '', 'Gonzalez Catan'),
(6165, 'Hugo Wast', 'Alfredrez Sobral', 'Madreselva', '', 'Virrey del Pino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nuevoingreso`
--

CREATE TABLE `nuevoingreso` (
  `numreclamo` int(30) NOT NULL,
  `fechain` date NOT NULL,
  `horain` time(6) NOT NULL,
  `falla` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cruce` int(11) NOT NULL,
  `detalles` text COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `nuevoingreso`
--

INSERT INTO `nuevoingreso` (`numreclamo`, `fechain`, `horain`, `falla`, `cruce`, `detalles`) VALUES
(0, '2022-09-26', '02:43:00.000000', 'puesta-marcha', 5112, 'Array'),
(10, '2022-09-12', '03:19:00.000000', 'apagado', 5140, 'Array'),
(88845, '2022-08-29', '03:40:00.000000', 'sinconexion', 5102, 'Array');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `nombre` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `legajo` int(5) NOT NULL,
  `correo` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `puesto` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(10) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`nombre`, `legajo`, `correo`, `puesto`, `password`) VALUES
('aylen', 20020, 'aylo2022@gmail.com', 'ayudante', '20020'),
('tania', 30030, 'alvareztania@gmail.com', 'electro', '30030'),
('aylen', 50020, 'ayyylo2022@gmail.com', 'chofer', '50020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reparacion`
--

CREATE TABLE `reparacion` (
  `numreclamo` int(30) NOT NULL,
  `fechalle` date NOT NULL,
  `horalle` time(6) NOT NULL,
  `vehiculo` int(11) NOT NULL,
  `observa` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `acciones` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `fechaci` date NOT NULL,
  `horaci` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `reparacion`
--

INSERT INTO `reparacion` (`numreclamo`, `fechalle`, `horalle`, `vehiculo`, `observa`, `acciones`, `fechaci`, `horaci`) VALUES
(0, '2022-09-30', '03:49:00.000000', 88520, 'wea', 'www', '0000-00-00', '03:52:00.000000'),
(10, '2022-09-22', '18:25:10.000000', 20202, 'SASASA YAKUZA YAKUZA', 'SA', '2022-09-22', '22:25:10.000000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `buscador`
--
ALTER TABLE `buscador`
  ADD PRIMARY KEY (`cruce`);

--
-- Indices de la tabla `nuevoingreso`
--
ALTER TABLE `nuevoingreso`
  ADD PRIMARY KEY (`numreclamo`),
  ADD UNIQUE KEY `cruce` (`cruce`),
  ADD KEY `cruce_2` (`cruce`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`legajo`);

--
-- Indices de la tabla `reparacion`
--
ALTER TABLE `reparacion`
  ADD PRIMARY KEY (`numreclamo`),
  ADD UNIQUE KEY `numreclamo` (`numreclamo`),
  ADD KEY `numreclamo_2` (`numreclamo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `buscador`
--
ALTER TABLE `buscador`
  MODIFY `cruce` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6166;

--
-- AUTO_INCREMENT de la tabla `nuevoingreso`
--
ALTER TABLE `nuevoingreso`
  MODIFY `numreclamo` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88846;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `nuevoingreso`
--
ALTER TABLE `nuevoingreso`
  ADD CONSTRAINT `nuevoingreso-buscador` FOREIGN KEY (`cruce`) REFERENCES `buscador` (`cruce`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

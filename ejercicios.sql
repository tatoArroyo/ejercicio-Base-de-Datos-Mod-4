Listar los nombres de los usuarios
SELECT nombre FROM Usuarios;

Calcular el saldo máximo de los usuarios de sexo “Mujer”
SELECT MAX(saldo) FROM Usuarios WHERE sexo = 'M';

Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY
SELECT nombre, telefono FROM Usuarios WHERE marca IN('NOKIA', 'BLACKBERRY', 'SONY');

Contar los usuarios sin saldo o inactivos
FROM Usuarios WHERE NOT activo OR saldo <= 0;

Listar el login de los usuarios con nivel 1, 2 o 3

SELECT usuario FROM Usuarios WHERE nivel IN(1, 2 o 3);

Listar los números de teléfono con saldo menor o igual a 300
SELECT telefono FROM Usuarios WHERE saldo <= 300;

Calcular la suma de los saldos de los usuarios de la compañía telefónica NEXTEL
 phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2022 a las 02:36:14
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `nivel` tinyint(4) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `marca` varchar(20) DEFAULT NULL,
  `compania` varchar(20) DEFAULT NULL,
  `saldo` float DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`SUM(saldo)`) VALUES
(150);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

Contar el número de usuarios por compañía telefónica


CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `nivel` tinyint(4) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `marca` varchar(20) DEFAULT NULL,
  `compania` varchar(20) DEFAULT NULL,
  `saldo` float DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`compania`, `COUNT(*)`) VALUES
(AT&T, 2),
(AXEL, 2),
(IUSACELL, 6),
(MOVISTAR, 2),
(NEXTEL, 1),
(TELCEL, 3),
(UNEFON, 5);


Contar el número de usuarios por nivel
INSERT INTO `Usuarios` (`nivel`, `COUNT(*)`) VALUES
(0, 6),
(1, 4),
(2, 5),
(3, 6);


Listar el login de los usuarios con nivel 2
INSERT INTO `Usuarios` (`usuario`) VALUES
('BRE2271'),
('ROM6520'),
('RIC8283'),
('LET4015'),
('HUG5441');

Mostrar el email de los usuarios que usan gmail
INSERT INTO `Usuarios` (`email`) VALUES
('oscar@gmail.com'),
('francisco@gmail.com'),
('roman@gmail.com'),
('brenda2@gmail.com'),
('lucia@gmail.com');

Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA
INSERT INTO `Usuarios` (`nombre`, `telefono`) VALUES
('BRENDA', '655-330-5736'),
('OSCAR', '655-143-4181'),
('LUIS', '655-137-1279'),
('ROMAN', '655-330-3263'),
('BLAS', '655-330-3871'),
('JESSICA', '655-143-6861'),
('RICARDO', '655-145-6049'),
('BRENDA', '655-100-1351'),
('JUAN', '655-100-6517'),
('ELPIDIO', '655-145-9938'),
('HUGO', '655-137-3935');

Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG
INSERT INTO `Usuarios` (`nombre`, `telefono`) VALUES
('BRENDA', '655-330-5736'),
('OSCAR', '655-143-4181'),
('LUIS', '655-137-1279'),
('ROMAN', '655-330-3263'),
('BLAS', '655-330-3871'),
('JESSICA', '655-143-6861'),
('RICARDO', '655-145-6049'),
('BRENDA', '655-100-1351'),
('JUAN', '655-100-6517'),
('ELPIDIO', '655-145-9938'),
('HUGO', '655-137-3935');

Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL
INSERT INTO `Usuarios` (`nombre`, `telefono`) VALUES
('JOSE', '655-143-3922'),
('LUIS', '655-100-8260'),
('DANIEL', '655-145-2586'),
('JAQUELINE', '655-330-5514'),
('DIANA', '655-143-3952'),
('RICARDO', '655-145-6049'),
('VALENTINA', '655-137-4253'),
('BRENDA', '655-100-1351'),
('LUCIA', '655-145-4992'),
('ELPIDIO', '655-145-9938'),
('JESSICA', '655-330-5143'),
('LETICIA', '655-143-4019'),
('LUIS', '655-100-5085'),
('HUGO', '655-137-3935');

Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL
INSERT INTO `Usuarios` (`usuario`, `telefono`) VALUES
('BRE2271', '655-330-5736'),
('LUI7072', '655-100-8260'),
('ROM6520', '655-330-3263'),
('RIC8283', '655-145-6049'),
('LUC4982', '655-145-4992'),
('JES9640', '655-330-5143');

Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA
INSERT INTO `Usuarios` (`AVG(saldo)`) VALUES
(100);

Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o AXEL
INSERT INTO `Usuarios` (`usuario`, `telefono`) VALUES
('BRE2271', '655-330-5736'),
('LUI7072', '655-100-8260'),
('JAQ5351', '655-330-5514'),
('ROM6520', '655-330-3263'),
('RIC8283', '655-145-6049'),
('LUC4982', '655-145-4992'),
('JUA2337', '655-100-6517'),
('JES9640', '655-330-5143');

Mostrar el email de los usuarios que no usan yahoo
INSERT INTO `Usuarios` (`email`) VALUES
('brenda@live.com'),
('oscar@gmail.com'),
('francisco@gmail.com'),
('enrique@outlook.com'),
('luis@hotmail.com'),
('daniel@outlook.com'),
('jaqueline@outlook.com'),
('roman@gmail.com'),
('blas@hotmail.com'),
('jessica@hotmail.com'),
('diana@live.com'),
('ricardo@hotmail.com'),
('valentina@live.com'),
('brenda2@gmail.com'),
('lucia@gmail.com'),
('juan@outlook.com'),
('elpidio@outlook.com'),
('jessica2@live.com'),
('luis2@live.com'),
('hugo@live.com');


Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL o IUSACELL
INSERT INTO `Usuarios` (`usuario`, `telefono`) VALUES
('JOS7086', '655-143-3922'),
('DAN2832', '655-145-2586'),
('JAQ5351', '655-330-5514'),
('BLA9739', '655-330-3871'),
('DIA6570', '655-143-3952'),
('VAL6882', '655-137-4253'),
('BRE8106', '655-100-1351'),
('JUA2337', '655-100-6517'),
('ELP2984', '655-145-9938'),
('LET4015', '655-143-4019'),
('LUI1076', '655-100-5085'),
('HUG5441', '655-137-3935');

Listar el login y teléfono de los usuarios con compañía telefónica UNEFON
INSERT INTO `Usuarios` (`usuario`, `telefono`) VALUES
('DAN2832', '655-145-2586'),
('BLA9739', '655-330-3871'),
('DIA6570', '655-143-3952'),
('LET4015', '655-143-4019'),
('LUI1076', '655-100-5085');

Listar las diferentes marcas de celular en orden alfabético descendentemente
INSERT INTO `Usuarios` (`marca`) VALUES
(SONY),
(SAMSUNG),
(NOKIA),
(MOTOROLA),
(LG),
(BLACKBERRY);

Listar las diferentes compañías en orden alfabético aleatorio
INSERT INTO `Usuarios` (`compania`) VALUES
(MOVISTAR),
(UNEFON),
(IUSACELL),
(TELCEL),
(NEXTEL),
(AXEL),
(AT&T);

Listar el login de los usuarios con nivel 0 o 2
INSERT INTO `Usuarios` (`usuario`) VALUES
('BRE2271'),
('LUI6115'),
('DAN2832'),
('JAQ5351'),
('ROM6520'),
('BLA9739'),
('RIC8283'),
('VAL6882'),
('JUA2337'),
('LET4015'),
('HUG5441');


Calcular el saldo promedio de los usuarios que tienen teléfono marca LG
INSERT INTO `Usuarios` (`AVG(saldo)`) VALUES
(50);

Listar el login de los usuarios con nivel 1 o 3
INSERT INTO `Usuarios` (`usuario`) VALUES
('OSC4677'),
('JOS7086'),
('LUI7072'),
('JES4752'),
('DIA6570'),
('BRE8106'),
('LUC4982'),
('ELP2984'),
('JES9640'),
('LUI1076');

Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY.

INSERT INTO `Usuarios` (`nombre`, `telefono`) VALUES
('BRENDA', '655-330-5736'),
('OSCAR', '655-143-4181'),
('JOSE', '655-143-3922'),
('LUIS', '655-137-1279'),
('LUIS', '655-100-8260'),
('DANIEL', '655-145-2586'),
('ROMAN', '655-330-3263'),
('BLAS', '655-330-3871'),
('JESSICA', '655-143-6861'),
('DIANA', '655-143-3952'),
('RICARDO', '655-145-6049'),
('BRENDA', '655-100-1351'),
('JUAN', '655-100-6517'),
('ELPIDIO', '655-145-9938'),
('JESSICA', '655-330-5143'),
('LUIS', '655-100-5085'),
('HUGO', '655-137-3935');

Listar el login de los usuarios con nivel 3
INSERT INTO `Usuarios` (`usuario`) VALUES
('OSC4677'),
('JOS7086'),
('BRE8106'),
('LUC4982'),
('JES9640'),
('LUI1076');

Listar el INSERT INTO `Usuarios` (`usuario`) VALUES
('LUI6115'),
('DAN2832'),
('JAQ5351'),
('BLA9739'),
('VAL6882'),
('JUA2337');login de los usuarios con nivel 0

Listar el login de los usuarios con nivel 1
INSERT INTO `Usuarios` (`usuario`) VALUES
('LUI7072'),
('JES4752'),
('DIA6570'),
('ELP2984');

Contar el número de usuarios por sexo
INSERT INTO `Usuarios` (`sexo`, `COUNT(*)`) VALUES
(H, 12),
(M, 9);

Listar el login y teléfono de los usuarios con compañía telefónica AT&T
INSERT INTO `Usuarios` (`usuario`, `telefono`) VALUES
('VAL6882', '655-137-4253'),
('HUG5441', '655-137-3935');

Listar las diferentes compañías en orden alfabético descendentemente
INSERT INTO `Usuarios` (`compania`) VALUES
(UNEFON),
(TELCEL),
(NEXTEL),
(MOVISTAR),
(IUSACELL),
(AXEL),
(AT&T);

Listar el login de los usuarios inactivos
INSERT INTO `Usuarios` (`usuario`) VALUES
('LUI7072'),
('DIA6570'),
('VAL6882'),
('JUA2337');

Listar los números de teléfono sin saldo
INSERT INTO `Usuarios` (`telefono`) VALUES
('655-143-4181'),
('655-330-5514'),
('655-145-4992'),
('655-100-6517');

Calcular el saldo mínimo de los usuarios de sexo “Hombre”
INSERT INTO `Usuarios` (`MIN(saldo)`) VALUES
(0);

Listar los números de teléfono con saldo mayor a 300
INSERT INTO `Usuarios` (`telefono`) VALUES
('655-143-6861'),
('655-145-9938'),
('655-137-3935');

Contar el número de usuarios por marca de teléfono
INSERT INTO `Usuarios` (`marca`, `COUNT(*)`) VALUES
(BLACKBERRY, 4),
(LG, 3),
(MOTOROLA, 4),
(NOKIA, 2),
(SAMSUNG, 4),
(SONY, 4);

Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG
INSERT INTO `Usuarios` (`nombre`, `telefono`) VALUES
('BRENDA', '655-330-5736'),
('JOSE', '655-143-3922'),
('LUIS', '655-137-1279'),
('LUIS', '655-100-8260'),
('DANIEL', '655-145-2586'),
('JAQUELINE', '655-330-5514'),
('JESSICA', '655-143-6861'),
('DIANA', '655-143-3952'),
('RICARDO', '655-145-6049'),
('VALENTINA', '655-137-4253'),
('BRENDA', '655-100-1351'),
('LUCIA', '655-145-4992'),
('JUAN', '655-100-6517'),
('ELPIDIO', '655-145-9938'),
('JESSICA', '655-330-5143'),
('LETICIA', '655-143-4019'),
('LUIS', '655-100-5085'),
('HUGO', '655-137-3935');

Listar las diferentes compañías en orden alfabético ascendentemente
INSERT INTO `Usuarios` (`compania`) VALUES
(AT&T),
(AXEL),
(IUSACELL),
(MOVISTAR),
(NEXTEL),
(TELCEL),
(UNEFON);

Calcular la suma de los saldos de los usuarios de la compañía telefónica UNEFON
INSERT INTO `Usuarios` (`SUM(saldo)`) VALUES
(550);

Mostrar el email de los usuarios que usan hotmail
INSERT INTO `Usuarios` (`email`) VALUES
('luis@hotmail.com'),
('blas@hotmail.com'),
('jessica@hotmail.com'),
('ricardo@hotmail.com');

Listar los nombres de los usuarios sin saldo o inactivos
INSERT INTO `Usuarios` (`nombre`) VALUES
('OSCAR'),
('LUIS'),
('JAQUELINE'),
('DIANA'),
('VALENTINA'),
('LUCIA'),
('JUAN');

Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o TELCEL
INSERT INTO `Usuarios` (`usuario`, `telefono`) VALUES
('BRE2271', '655-330-5736'),
('OSC4677', '655-143-4181'),
('LUI6115', '655-137-1279'),
('LUI7072', '655-100-8260'),
('ROM6520', '655-330-3263'),
('JES4752', '655-143-6861'),
('RIC8283', '655-145-6049'),
('LUC4982', '655-145-4992'),
('JES9640', '655-330-5143');

Listar las diferentes marcas de celular en orden alfabético ascendentemente
INSERT INTO `Usuarios` (`marca`) VALUES
(SONY),
(SAMSUNG),
(NOKIA),
(MOTOROLA),
(LG),
(BLACKBERRY);

Listar las diferentes marcas de celular en orden alfabético aleatorio
INSERT INTO `Usuarios` (`marca`) VALUES
(SONY),
(SAMSUNG),
(MOTOROLA),
(BLACKBERRY),
(LG),
(NOKIA);

Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o UNEFON

INSERT INTO `Usuarios` (`usuario`, `telefono`) VALUES
('BRE2271', '655-330-5736'),
('LUI7072', '655-100-8260'),
('DAN2832', '655-145-2586'),
('ROM6520', '655-330-3263'),
('BLA9739', '655-330-3871'),
('DIA6570', '655-143-3952'),
('RIC8283', '655-145-6049'),
('LUC4982', '655-145-4992'),
('JES9640', '655-330-5143'),
('LET4015', '655-143-4019'),
('LUI1076', '655-100-5085');

Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca MOTOROLA o NOKIA
INSERT INTO `Usuarios` (`nombre`, `telefono`) VALUES
('BRENDA', '655-330-5736'),
('OSCAR', '655-143-4181'),
('LUIS', '655-137-1279'),
('DANIEL', '655-145-2586'),
('JAQUELINE', '655-330-5514'),
('ROMAN', '655-330-3263'),
('BLAS', '655-330-3871'),
('JESSICA', '655-143-6861'),
('DIANA', '655-143-3952'),
('VALENTINA', '655-137-4253'),
('LUCIA', '655-145-4992'),
('JUAN', '655-100-6517'),
('JESSICA', '655-330-5143'),
('LETICIA', '655-143-4019'),
('LUIS', '655-100-5085');

Calcular la suma de los saldos de los usuarios de la compañía telefónica TELCEL
INSERT INTO `Usuarios` (`SUM(saldo)`) VALUES
(550);


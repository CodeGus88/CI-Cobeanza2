-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-09-2022 a las 17:30:55
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `admincre_db_ci_cobranza2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coins`
--

CREATE TABLE `coins` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `short_name` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `symbol` varchar(11) COLLATE utf8_spanish2_ci NOT NULL,
  `description` varchar(70) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `coins`
--

INSERT INTO `coins` (`id`, `name`, `short_name`, `symbol`, `description`) VALUES
(1, 'Bolivianos', 'Bs', 'BO', 'Moneda nacional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `dni` varchar(20) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'ci',
  `first_name` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `gender` enum('masculino','femenino','','') COLLATE utf8_spanish2_ci DEFAULT NULL,
  `address` varchar(160) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `mobile` varchar(32) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `business_name` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ruc` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL COMMENT 'nit',
  `company` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `loan_status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) DEFAULT NULL COMMENT 'adviser_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id`, `dni`, `first_name`, `last_name`, `gender`, `address`, `mobile`, `phone`, `business_name`, `ruc`, `company`, `loan_status`, `user_id`) VALUES
(1, '5817517', 'MARIA FATIMA', 'DIAZ YURQUINA', 'femenino', 'BARRIO MENDEZ ARCOS', '74408809', '76185843', '', '', '', 1, 3),
(2, '7259959', 'ALVARO GONZALO', 'ROMERO ROMERO', 'masculino', 'B/ 15 DE NOVIEMBRE', '75144905', '', '', '', '', 1, 2),
(3, '10709331', 'MARIA JULIA', 'JURADO RODRIGUEZ', 'femenino', 'BARRIO 27 DE MAYO ', '68688249', '', '', '', '', 1, 3),
(4, '5044555', 'EDULIO', 'CARI APARICIO', 'masculino', 'b/luis de fuentes', '77873321', '', 'propio', '5044555', 'taxi', 0, 4),
(5, '5039377', 'BARBARITA CRISTINA', 'ZENTENO MARISCAL', 'femenino', 'B/ SAN MARCOS C/ COLON N-173O', '72962288', '', '', '', '', 1, 2),
(6, '1052847', 'MARIA LOURDES', 'VACA RAMOS DE VELASCO', 'femenino', 'AV. SAMA', '72980734', '', '', '', '', 1, 3),
(7, '5506680', 'CARLA CAROLA', 'RODRIGUEZ SOTOMAYOR', '', 'B/ ALTO SENAC ', '71820406', '', '', '', '', 1, 2),
(9, '5815577', 'HILDA GABRIELA', 'ORTEGA MARTINEZ', 'femenino', 'B/6 DE AGOSTO', '75129912', '', '', '', 'GARANTE', 1, 5),
(10, '5008664', 'MARIA', 'LLAMPA VIDAURRE', 'femenino', 'ZONA LA TERMINAL', '60257038', '', '', '', '', 1, 3),
(11, '10718791', 'CAROL XIMENA', 'APARICIO GUTIERREZ', 'femenino', 'B/ AEROPUERTO C/ FUERZA AEREA', '68717712', '', '', '', '', 1, 2),
(12, '7109398', 'CRISTHIAN HAROLD', 'ROCHA MENDEZ', 'masculino', 'B/ MORROS BLANCOS ', '74533209', '', '', '', '', 1, 2),
(15, '5796238', 'MARLENE', 'ROMAN BOLIVAR', 'femenino', 'BA/26 DE AGOSTO ', '', '', '', '', '', 0, 1),
(16, '7190526', 'MARCO ANTONIO', 'COLODRO', 'masculino', 'BA/NACIONAL CARAPARI ', '', '', '', '', '', 0, 1),
(17, '10625967', 'HUGO ALBARO', 'CONDORI COLQUE', 'masculino', 'B/ ALTO SENAC C/ EL CHAÑAR', '76183152', '', '', '', 'GARANTE', 0, 5),
(18, '7197800', 'CESAR ALEX', 'QUISPE LLANQUE', 'masculino', 'B/ 12 DE OCTUBRE C/ ANDALUCIA ', '65811181', '', '', '', '', 1, 2),
(19, '7211060', 'CELESTE NARELLA', 'ROCHA ALARCON', 'femenino', 'BA/ PARADA EL NORTE ', '7211060', '', '', '', 'GARANTE', 1, 5),
(20, '1886834', 'MARIO', 'SOSSA VASQUEZ', 'masculino', 'BARRIO TABLADITA C/LOS TAJIBOS', '60274489', '60274489', '', '', '', 1, 3),
(21, '7179193', 'EDUARDO LUIZ', 'ANTEZANA RAMOS', 'femenino', 'BA/ PARADA EL NORTE ', '78703409', '', '', '', '', 0, 5),
(22, '7105231', 'EDGAR', 'TOLAY MOLINA', 'masculino', 'SAN GERONIMO ALTO DE LA ALIANZA ', '69307019', '', '', '', '', 1, 5),
(23, '1847138', 'MARIA ZULMA', 'UGARTE VASQUEZ', 'femenino', 'BA/ SENAC ', '70229813', '6655535', '', '', '', 0, 1),
(24, '1884314', 'MIRKA', 'LARA VILCA', 'femenino', 'BARRIO LA PAMPA AV. POTOSI ', '79260489', '', '', '', '', 1, 3),
(25, '1663104', 'LUCIO', 'TOLAY', 'masculino', 'SAN GERONIMO ALTO DE LA ALIANZA ', '', '', '', '', 'GARANTE', 0, 5),
(26, '5811198', 'IVANNA SHAFID', 'VARGAS UGARTE', 'femenino', 'AV. DOMINGO PAZ ', '75138159', '', '', '', '', 0, 1),
(27, '1892800-1F', 'PABLO FLAVIO', 'ESPINDOLA SANCHEZ', 'masculino', 'BARRIO TABLADITA PJE. EL CHURQUI', '78221907', '', '', '', '', 1, 3),
(28, '1860839', 'PAOLA PATRICIA', 'CAMPERO', 'femenino', 'BARRIO MOLINO C. VIRGINIO LEMA', '', '', '', '', '', 1, 3),
(31, '7206055', 'ROBERT PABLO', 'SANCHEZ TAPIA', 'masculino', 'C. MIRAFLORES Y MEJILLONES ', '74507778', '', '', '', '', 1, 3),
(32, '5809785', 'RENE', 'COLQUECHAMBI FLORES', 'masculino', 'B. MORROS BLANCOS C. FRAY QUEBRACHO', '79255860', '', '', '', '', 1, 3),
(33, '7254095', 'ROLY ALEJANDRO', 'VELASCO VACA', 'masculino', 'B. TABLADITA AV. SAMA C. CHAPAQUITA', '73498936', '', '', '', '', 1, 3),
(34, '5055299', 'RICHARD', 'ROMERO CASTILLO', 'masculino', 'B.57 VIVIENDAS PJE N-3', '6788226', '', '', '', '', 1, 3),
(35, '4120354', 'SABINO', 'CHOQUE', 'masculino', 'B.27 DE MAYO AV. SALINAS', '63789847', '', '', '', '', 1, 3),
(36, '7148877', 'SANTOS RODOLFO', 'FERNANDEZ CHAUQUE', 'masculino', 'B. LOS CHAPACOS C. BELLAVISTA', '75147408', '', '', '', '', 1, 3),
(37, '5049517', 'SERGIO DANIEL', 'GUERRERO ARENAS', '', 'B. SAN JOSE  C. SUIPACHA ESQ. SALTA', '78239141', '', '', '', '', 1, 3),
(38, '2785290', 'EDUARDO', 'LLAMPA VIDAURRE', 'masculino', 'BA/ 12 DE OCTUBRE', '65810211', '', '', '', '', 1, 5),
(39, '1884457', 'ALBERTO', 'LLAMPA VIDAURRE', 'masculino', 'B/LOURDES ', '', '', '', '', 'GARANTE', 0, 5),
(40, '7217361', 'SILVIA LEONOR', 'AYARDE VARGAS', 'femenino', 'B. SANTA ROSA AV. GRAN CHACO', '67380388', '', '', '', '', 1, 3),
(41, '7142667', 'CRISTIAN OLIVER', 'RAMOS VELIZ', 'masculino', 'B/ AVAROA C/ CALAMA ', '76802609', '', '', '', '', 1, 2),
(42, '7106747', 'CYNTIA YOVANA', 'VELASCO VACA', 'femenino', 'B/ EL MANANTIAL AV/ SAN ANTONIO', '65833585', '', '', '', '', 1, 2),
(43, '7113724', 'YESSICA PAMELA', 'TRIGO RUIZ', 'femenino', 'B. SAN ROQUE CALLE CAMPERO N°1057', '69323587', '', '', '', '', 1, 3),
(44, '4157689', 'DALMA DAYANA', 'ORTEGA GARNICA', 'femenino', 'B/ 4 DE JULIO C/ ECUADOR ', '4157689', '', '', '', '', 1, 2),
(45, '7109217', 'WALTER LUCAS', 'PIMENTEL LAURA', 'masculino', 'B. MENDEZ ARCOS AV. LOS MOLLES', '78701876', '', '', '', '', 1, 3),
(47, '7203812', 'DAYSI', 'CUELLAR SAGREDO', 'masculino', 'B/ AEROPUERTO', '67384763', '', '', '', '', 1, 2),
(48, '7212958', 'EMELDA', 'ARMELLA SOLIZ', 'femenino', 'B/ LUIS PIZARRO C/ PASTOR BORDA ', '68680402', '', '', '', '', 1, 2),
(49, '7259089', 'MARISOL DANIELA', 'RAMOS', 'femenino', 'ZONA SAN JACINTO ', '75128680', '', '', '', '', 1, 1),
(50, '4143978', 'MARIA DEL ROSARIO', 'RIOS VALDEZ', 'femenino', 'BA/ AVAROA CALLE CALAMA ', '73495002', '', '', '', '', 1, 1),
(51, '7238521', 'MILDRED ROCIO', 'ALBORNOZ', 'femenino', 'C/ COCHABAMBA N*179', '76199969', '', '', '', '', 1, 1),
(52, '7103441', 'JUANA ESTHER', 'MICHEL CRUZ', 'femenino', 'BA/ SAN ROQUE C/ COCHABAMBA ', '78257045', '', '', '', '', 0, 1),
(53, '7143371', 'NOEMI LILA', 'LOPEZ CANEDO', 'femenino', 'BA/ LA PAMPA AV/ POTOSI ', '67991999', '', '', '', '', 1, 1),
(54, '4134360', 'ZAIDA ANAHI', 'MIRANDA RUIZ', 'femenino', 'ZONA PALMARCITO C. JOSE ELECTO', '72992767', '', '', '', '', 1, 3),
(55, '7127438', 'PAUL EMILIO', 'GARNICA MEZZA', 'masculino', 'BA/ SAN ROQUE C/ GENERAL TRIGO ', '72955787', '', '', '', '', 1, 1),
(56, '5797560', 'LIMBER RAYNARD', 'GARNICA MEZZA', 'masculino', 'BA/ ANDALUSIA C/ FINAL RUILOBA ', '', '', '', '', '', 0, 1),
(57, '10651336', 'PAOLA RAQUEL', 'PIMENTEL ROMERO', '', 'BA/ JUAN XXIII C/ GODOFREDO ARNOLD ', '77879502', '', '', '', '', 1, 1),
(58, '7229068', 'JOSE MANUEL', 'OJEDA MARTINEZ', 'masculino', 'BA/ FATIMA ', '60274386', '', '', '', '', 0, 1),
(59, '5784463', 'EVA TERESA', 'SANDOVAL', 'femenino', 'B/ ALTO SENAC ', '78225155', '', '', '', '', 1, 2),
(60, '4071301', 'WILBER ALVARO', 'GARCIA PADILLA', 'masculino', 'B/ SENAC C/ BELLA VISTA ', '78225155', '', '', '', '', 0, 2),
(61, '1893814', 'RITA MARIA', 'SANDOVAL', 'femenino', 'B/ TABLADITA', '75140184', '', '', '', '', 0, 2),
(62, '5784586', 'PAMELA JUANA', 'RIVERA FLORES', 'femenino', 'COLON NORTE ', '69325911', '', '', '', '', 1, 1),
(63, '5801346', 'MARY ISABEL', 'FRANCO ESTAYO', 'femenino', 'BA/ ARANJUEZ ', '', '', '', '', '', 0, 1),
(65, '1878631', 'WISTON WILBER', 'YUCRA PALACIOS', 'femenino', 'BA/ SAN JORGE ', '72992642', '', '', '', '', 0, 1),
(66, '5787275', 'POLONIA', 'JEREZ RUEDA', 'femenino', 'BA/ AEROPUERTO ', '71332395', '', '', '', '', 1, 1),
(67, '5675379', 'ELIANA GRACIELA', 'SARAVIA CARDOZO', 'femenino', 'B/ OSCAR ALFARO ', '68703121', '', '', '', '', 1, 2),
(68, '1787751', 'ELENA', 'CARDOZO YEBARA', 'femenino', 'B/ IV CENTENARIO', '', '', '', '', '', 0, 2),
(69, '7167619', 'ROLY ADAN', 'CARY MANPAZO', 'femenino', 'BA/SIMON BOLIVAR ', '73482828', '', '', '', '', 1, 1),
(70, '7247912', 'LISELDA MILENIA', 'ROMERO ALARCON', 'femenino', 'COM SAN DIEGO NORTE ', '72943345', '', '', '', '', 0, 1),
(71, '5684823', 'SOLEDAD DOMINGA', 'VASQUEZ FERNANDEZ', 'femenino', 'AV/ LOS CEIBOS BA SENAC ', '73484466', '', '', '', '', 1, 1),
(72, '5032867', 'JUANA ANGELICA', 'MENDIETA CARDONA', 'femenino', 'Z/ VILLA FATIMA C/ ESPAÑA ', '78244484', '', '', '', '', 0, 1),
(73, '7162716', 'SERGIO', 'ROCHA ALARCON', 'masculino', 'BA/ AVAROA C/ BALLIVIAN ', '63405477', '', '', '', '', 1, 1),
(74, '1899092', 'TATIANA', 'TRUJILLO VASQUEZ', 'femenino', 'BA/ SENAC AV/ HEROES DE LA INDEPENDENCIA ', '70211763', '', '', '', '', 1, 1),
(75, '5006333', 'GABRIELA PATRICIA', 'CASTILLO TOLABA', 'femenino', 'B/ SAN MARCOS', '78704333', '', '', '', '', 1, 2),
(76, '5021478', 'VICTOR EMERSON', 'CARTAGENA CASTRO', 'masculino', 'BA LA LOMA ', '76180448', '', '', '', '', 1, 1),
(77, '5002529', 'EVA NIEVES', 'CRUZ GUTIERREZ', 'femenino', 'C/ COCHABAMBA N|1480', '71877280', '', '', '', '', 0, 1),
(78, '5001200', 'YOLANDA', 'FLORES AYARDE', 'femenino', 'ERQUIS NORTE ', '72940770', '', '', '', '', 1, 1),
(79, '1889902', 'EULOGIO RAMIRO', 'HUMACATA', 'masculino', 'ZONA CAMPESINO ', '', '', '', '', '', 0, 1),
(80, '5801048', 'IVAN NERY', 'ICHAZU SUSTACH', 'masculino', 'B/ LA PAMPA', '75121235', '', '', '', '', 1, 2),
(81, '7141330', 'IVER MAURICIO', 'VELASCO VACA', 'masculino', 'B/ MAGISTERIO Z/ TABLADITA', '75133624', '', '', '', '', 1, 2),
(82, '10640681', 'JESUS GONZALO', 'CHOQUE JURADO', '', 'AV/ SALINAS C/ DOMETILA', '69315139', '', '', '', '', 1, 2),
(84, '14177626', 'JHONNY GABRIEL', 'ONTIVEROS RASGUIDO', 'masculino', 'B/ SAN ANTONIO C/ ISABEL LA CATOLICA', '76802609', '', '', '', '', 1, 2),
(85, '5808056', 'GIOVANNI BRAYAN', 'PEREZ IRAHOLA', 'masculino', 'B/ SAN JOSE ', '70211244', '', '', '', '', 0, 2),
(86, '10660835', 'LUIS FERNANDO', 'CISNEROS', 'masculino', 'ave. Panamericana y  Luis campero', '68767242', '', '', '', 'trabaja en la cascada', 0, 4),
(87, '9', 'AMISTAD', 'AMISTAD', 'masculino', '', '', '', '', '', '', 0, 4),
(88, '7197273', 'JHON WALTER', 'SALVATIERRA VACA', 'masculino', 'B/ SAN JORGE II', '77170324', '', '', '', '', 1, 2),
(92, '12849458', 'AMISTAD ALEJANDRA', 'ZELADA MARTINEZ', 'femenino', 'B/FLORIDA CALLE COLON Y 6 DE ENERO', '67632811', '', '', '', 'AMISTAD', 0, 4),
(93, '10719735', 'JORGE LUIS', 'CRUZ MENDOZA', 'masculino', 'B/ 26 DE AGOSTO', '75146451', '', '', '', '', 1, 2),
(95, '10741444', 'JUAN CARLOS', 'MAMANI CHOQUE', 'masculino', 'B/ LOMA DE TOMATITAS', '76194960', '', '', '', '', 1, 2),
(96, '4147520', 'LUCIA', 'VALLEJOS FLORES', 'femenino', 'MZ. 11 CASA Nº 5 URB. BELLA VISTA II- YACUIBA', '63776345', 'NO REGISTRA', '', '', '', 1, 6),
(97, '7120125', 'KAREN ESTHER', 'CORDERO MORALES', 'femenino', 'B/ SENAC ', '68702457', '', '', '', '', 1, 2),
(98, '2637944', 'ANA MARIA', 'SARMIENTO', 'femenino', 'BA/ MIRAFLORES ', '72995775', '', '', '', '', 1, 5),
(99, '5008907', 'LEONOR', 'ARENAS TOLABA', 'masculino', 'B/ MENDEZ ARCOS', '70212600', '', '', '', '', 1, 2),
(101, '7105285', 'LUIS FERNANDO', 'NIEVES MARQUEZ', 'masculino', 'B/ NARCISO CAMPERO', '76836500', '', '', '', '', 1, 2),
(102, '10703486', 'MONICA ALEJANDRA', 'GUZMAN RAMIREZ', 'femenino', 'SAN LORENZO MATADERO MUNICIAPAL', '67632811', '', '', '', 'AMISTAD', 0, 4),
(103, '6786439', 'CAROLINA PAOLA', 'GALEAN', 'femenino', 'B/ ALTO SENAC C/ EL CHAÑAR', '76183152', '', '', '', '', 1, 5),
(104, '5056800', 'FABIOLA', 'MERCADO CAYALO', 'femenino', 'CREVAUX E/M. BARROSO Y SAN MARTIN Nº 196 B/C. NORTE YACUIBA', '71068363', 'NO REGISTRA', '', '', '', 1, 6),
(105, '7155107', 'LUIS ALFREDO', 'CHOQUE REYNOSO', 'masculino', 'C/PALOS BLANCOS E/MARTIN BARROSO Y COMERCIO YACUIBA', '75174191', 'NO REGISTRA', '', '', '', 1, 6),
(107, '12411923', 'KATHIA BELEN', 'RAMIREZ QUISPE', 'femenino', 'B/FLORIDA CALLE COLON Y 6 DE ENERO', '69328559', '', '', '', '', 0, 4),
(108, '1898679', 'ROLANDO MANUEL', 'CRUZ PORTAL', 'masculino', 'C/BALLIVIAN E/JUAN XXIII Y SAN PEDRO YACUIBA', '75160837', 'NO REGISTRA', '', '', '', 0, 6),
(109, '7221217', 'ESTHER ABIGAIL', 'BUSTOS DAVILA', 'femenino', 'BA/ MOTO MENDEZ', '65811022', '', '', '', '', 1, 5),
(110, '7180798', 'JUAN JOSE', 'CHURA ALBINO', 'masculino', 'B/ SAN BERNARDO', '', '', '', '', 'GARANTE', 0, 5),
(111, '6125302', 'FARE ISAEL', 'SANCHEZ DAVALOS', 'masculino', 'BA/ SAN ANTONIO ', '78246113', '', '', '', '', 1, 5),
(112, '14837656', 'CARLA LORENA', 'ORTEGA HUARACHI', 'femenino', 'B/ SAN ANTONIO', '', '', '', '', 'GARANTE', 0, 5),
(123, '7259747', 'GONZALO', 'ANTEZANO RAMOS', 'masculino', 'BA/ MENDEZ ARCOS', '72958255', '', '', '', '', 1, 5),
(124, '5030757', 'ANA ROSA', 'RAMOS VARGAS', 'femenino', 'BA/ MENDEZ ARCOS', '75113295', '', '', '', '', 0, 5),
(125, '7152316', 'HILDA FERNANDEZ', 'TOLABA', 'femenino', 'B/ IV CENTENARIO', '75120469', '', '', '', '', 0, 5),
(127, '7167479', 'INGRID', 'VELASQUEZ ROMERO', 'femenino', 'B/ SAN GERONIMO', '77871357', '', '', '', '', 1, 5),
(128, '5041294', 'YIMMY WILSON', 'SAAVEDRA CHIPANA', 'masculino', 'AV/ MARCELO QUIROGA SANTA CRUZ B/ LUIS ESPINAL ', '68694846', '', '', '', '', 1, 5),
(130, '5787673', 'JUAN DARIO', 'VILLAROEL REYNOSO', 'masculino', 'C/ BALLIVIAN ESQ. JUAN XXIII', '71873195', '', '', '', '', 0, 5),
(133, '4141852', 'KARINA', 'CASTILLO CARDOZO', 'femenino', 'C/ LA VICTORIA BA/ TABLADITA ', '76196369', '', '', '', '', 1, 5),
(134, '6638630', 'VICTOR', 'CASTRO', 'masculino', 'B/ TABLADITA', '72980234', '', '', '', '', 0, 5),
(135, '7136623', 'LUIS EMILIO', 'SARAVIA CARDOZA', 'masculino', 'TABLADA GRANDE', '60255451', '', '', '', '', 1, 5),
(136, '1873728', 'EVA', 'LOPEZ MAMANI', 'femenino', 'C/M. BARROSO E/BOQUERON Y V. MONTES B/ LA CRUZ YACUIBA', '77197408', 'NO REGISTRA', '', '', '', 1, 6),
(137, '7668170', 'FIDEL', 'FALON GALEAN', 'masculino', 'COM BELLA VISTA - GRAN CHACO - TARIJA', '71433026', '', '', '', '', 1, 7),
(138, '1899950', 'MARY DOLORES', 'MEJIA BARCA DE CASTILLO', 'femenino', 'C/ROBLES E/SANTA CRUZ Y COMERCIO DE YACUIBA', '76826850', 'NO REGISTRA', '', '', '', 1, 6),
(139, '5009688', 'JESUS', 'CASTILLO CASTRO', 'masculino', 'C/ROBLES E/SANTA CRUZ Y COMERCIO B. ATLETICO NORTE YACUIBA', '77196581', 'NO REGISTRA', '', '', '', 1, 6),
(142, '7166644', 'NELSON', 'VELIZ HINOJOSA', 'masculino', 'URB. BELLA VISTA II MZ. 5 CASA Nº 10 YACUIBA', '67695215', 'NO REGISTRA', '', '', '', 1, 6),
(144, '7154411', 'ROSMERY', 'ARANCIBIA SERRUDO', 'femenino', 'MZ. 5 CASA Nº 8 URB. BELLA VISTA II- YACUIBA', '71879853', 'NO REGISTRA', '', '', '', 0, 6),
(145, '8064094', 'BERTHA', 'CUEVAS FLORES', 'femenino', 'C/COCHABAMBAFINALS/N B/ ASERRADERO - YACUIBA', '76813559', '', '', '', '', 1, 7),
(146, '5046558', 'SELENE', 'URZAGASTE ARECO', 'femenino', 'COM. COLONIA PRODUCTIVA FISCAL EL PALMAR - GRAN CHACO - TARIJA', '75176886', '', '', '', '', 0, 7),
(147, '8166058', 'EMILSE', 'SALVATIERRA TEJERINA', 'femenino', 'AV. LIBERTADORES ESQ. URUNDELES B. EL PORVENIR - YACUIBA', '60298806', '', '', '', '', 0, 7),
(148, '7104384', 'MARYBEL', 'GARECA VARGAS', 'femenino', 'PROLONGACION LAS DELICIAS - B/ASERRADERO - YACUIBA', '67389464', '', '', '', '', 0, 7),
(149, '7228075', 'VICTOR HUGO', 'CAMARGO', 'masculino', 'COM. TARAIRI VILLAMONTES GRAN CHACO TARIJA', '61669428', 'NO REGISTRA', '', '', '', 1, 6),
(150, '5813347', 'FLORENTINO', 'SEGUNDO CUELLAR', 'masculino', 'MZ. X BARRIO EL CHAQUEÑITO YACUIBA', '71892533', 'NO REGISTRA', '', '', '', 0, 6),
(151, '10722293', 'MARIA VICTORIA', 'PARADA', 'femenino', 'AV. LIBERTADORES E/JACINTO DELFINYCOLON - YACUIBA', '75168164', '', '', '', '', 0, 7),
(152, '5810149', 'SANDRA VALERIA', 'CONDORI OSINAGA', 'femenino', 'C/BENEMERITOS E/M BARROSO Y AV. S. MARTIN - YACUIBA ', '68016484', '', '', '', '', 0, 7),
(153, '5816465', 'AGAPITO', 'SORUCO ORTIZ', 'masculino', 'C/URUGUAY E/LIBERTAD Y ECUADOR B/EL PRADO YACUIBA', '68901933', 'NO REGISTRA', '', '', '', 1, 6),
(154, '4155405', 'WILBER', 'GONZALES', 'masculino', 'C/F. CAMPO VIA E/T. MANCHEGO Y E. RUIZ B.S. GERONIMO YACUIBA', '', 'NO REGISTRA', '', '', '', 0, 6),
(155, '2854534', 'IRMA FABIOLA', 'GUTIERREZ SUAREZ', 'femenino', 'C/DANIEL CAMPOS ESQ.  AV.  LIBERTADORES B/OBRERO - YACUIBA', '', '', '', '', '', 0, 7),
(156, '9707908', 'JORGE CORNELIO', 'CUEVAS FLORES', 'masculino', 'RES. EN YACUIBA', '76821126', '', '', '', '', 0, 7),
(157, '2926863', 'GRACIELA', 'GONZALES VALLE VDA. DE ELIAS', 'femenino', 'C/JUAN XXIII ESQ. CORNELIO RIOS YACUIBA', '71378316', 'NO REGISTRA', '', '', '', 1, 6),
(158, '1836015', 'LOURDES', 'PADILLA', 'femenino', 'C/CORNELIO RIOS E/JUAN XXIII Y JACINTO DELFIN YACUIBA', '73458576', 'NO REGISTRA', '', '', '', 0, 6),
(159, '7245064', 'MARCO ANTONIO', 'LOPEZ ZARATE', 'masculino', 'C/TUPIZA E/AV. TARIJA Y CHUQUISACA S/N S.J. DE POCITOS', '76824296', 'NO REGISTRA', '', '', '', 1, 6),
(160, '1817258', 'ADOLFO', 'ARROYO SAINS', 'femenino', 'COM. OJO DEL AGUA GRAN CHACO ', '76824296', 'NO REGISTRA', '', '', '', 0, 6),
(161, '5802105', 'RONY', 'ORTIZ CAMACHO', 'masculino', 'C/BOLIVAR E/21 DE ENERO Y E. MENDEZ B/SAN FRANCISCO YACUIBA', '63793218', 'NO REGISTRA', '', '', '', 1, 6),
(162, '5790037', 'JORGE ALEJANDRO', 'CUELLAR MENDOZA', 'masculino', 'C/PARAGUAY E/C MORENO Y 15 DE ABRIL B/MUNICIPAL YACUIBA', '71336226', 'NO REGISTRA', '', '', '', 1, 6),
(163, '10632600', 'ROLANDO', 'HERRERA', 'masculino', 'COM. CAMPO LARGO GRAN CHACO TARIJA', '', 'NO REGISTRA', '', '', '', 0, 6),
(164, '10635688', 'MARIANA NOEMI', 'RIOS MENDOZA', 'femenino', 'H. SALAZAR ESQ. DELICIAS S/N B/LAS DELICIAS YACUIBA', '76805789', 'NO REGISTRA', '', '', '', 1, 6),
(165, '5014304', 'MARIA', 'MENDOZA ALVAREZ', 'femenino', 'C/HUGO SALAZAR ESQ. LAS DELICIAS B/FRANZ QUEBRACHO YACUIBA', '75165883', 'NO REGISTRA', '', '', '', 0, 6),
(166, '12381291', 'KEYCLIN KATHERIN', 'CASTILLO CABRERA', 'femenino', 'C/CORNELIO RIOS E/CEBILES Y CHAÑARES', '75160051', 'NO REGISTRA', '', '', '', 1, 6),
(167, '7210596', 'MARISOL', 'CABRERA', 'femenino', 'C/C. RIOS E/CHAÑARES Y CEVILES B/FERROVIARIO YACUIBA', '77192387', 'NO REGISTRA', '', '', '', 0, 6),
(168, '1884070', 'HILDA ELVA', 'CASTRILLO PIZARRO VDA. DE GAMBARTE', 'femenino', 'AV. LAS DELICIAS E/CAMPERO S/N B. LA PLAYA YACUIBA', '67695857', 'NO REGISTRA', '', '', '', 1, 6),
(169, '7145480', 'LARITZA', 'GAMBARTE CASTRILLO', 'femenino', 'C/SAN PEDRO E/AV. DELICIAS Y 15 DE ABRIL B/LA PLAYA YACUIBA', '', 'NO REGISTRA', '', '', '', 0, 6),
(170, '4454', 'ASASAS', 'ASASASA', '', '', '', '', '', '', '', 0, 1),
(171, '4545541', 'FERNANDO', 'CLAROS', '', '', '', '', '', '', '', 0, 1),
(172, '5656565', 'GABRIELA', 'FERNANDEZ', '', '', '', '', '', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guarantors`
--

CREATE TABLE `guarantors` (
  `id` bigint(20) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `guarantors`
--

INSERT INTO `guarantors` (`id`, `loan_id`, `customer_id`) VALUES
(1, 8, 12),
(2, 9, 11),
(5, 34, 52),
(6, 37, 48),
(8, 40, 56),
(9, 41, 58),
(10, 42, 60),
(11, 42, 61),
(12, 43, 63),
(15, 45, 65),
(16, 46, 21),
(17, 47, 70),
(18, 48, 72),
(19, 50, 68),
(20, 51, 23),
(21, 53, 77),
(22, 54, 79),
(23, 58, 85),
(24, 59, 25),
(25, 61, 39),
(26, 66, 9),
(27, 69, 96),
(29, 71, 17),
(31, 73, 110),
(32, 74, 112),
(33, 75, 124),
(34, 76, 98),
(35, 79, 134),
(36, 81, 108),
(37, 83, 139),
(38, 84, 138),
(39, 85, 144),
(40, 86, 150),
(41, 87, 154),
(42, 88, 158),
(43, 89, 160),
(44, 90, 162),
(45, 91, 163),
(46, 92, 165),
(47, 93, 167),
(48, 94, 169),
(49, 95, 146),
(50, 95, 147),
(51, 95, 148),
(52, 95, 151),
(53, 95, 152),
(54, 95, 155),
(55, 95, 156);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loans`
--

CREATE TABLE `loans` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `credit_amount` decimal(15,2) NOT NULL,
  `interest_amount` decimal(15,2) NOT NULL COMMENT 'interest_rate',
  `num_fee` int(3) NOT NULL,
  `fee_amount` decimal(10,2) NOT NULL,
  `payment_m` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `coin_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `loans`
--

INSERT INTO `loans` (`id`, `customer_id`, `credit_amount`, `interest_amount`, `num_fee`, `fee_amount`, `payment_m`, `coin_id`, `date`, `status`) VALUES
(1, 2, '2000.00', '16.00', 4, '660.00', 'quincenal', 1, '2022-07-25', b'1'),
(2, 1, '1000.00', '18.00', 4, '340.00', 'quincenal', 1, '2022-08-11', b'1'),
(3, 3, '2000.00', '18.00', 12, '256.70', 'semanal', 1, '2022-07-23', b'1'),
(4, 5, '1800.00', '18.00', 6, '462.00', 'quincenal', 1, '2022-07-16', b'1'),
(5, 6, '1500.00', '18.00', 4, '510.00', 'quincenal', 1, '2022-05-16', b'1'),
(6, 7, '1000.00', '18.00', 6, '256.70', 'quincenal', 1, '2022-08-16', b'1'),
(7, 10, '616.00', '18.00', 8, '104.70', 'semanal', 1, '2022-06-24', b'1'),
(8, 11, '2500.00', '18.00', 4, '850.00', 'quincenal', 1, '2022-07-14', b'1'),
(9, 12, '2500.00', '18.00', 4, '850.00', 'quincenal', 1, '2022-07-14', b'1'),
(11, 18, '2000.00', '18.00', 4, '680.00', 'quincenal', 1, '2022-08-24', b'1'),
(12, 20, '1500.00', '16.00', 6, '370.00', 'quincenal', 1, '2022-08-16', b'1'),
(13, 24, '1500.00', '18.00', 4, '510.00', 'quincenal', 1, '2022-08-25', b'1'),
(14, 27, '1500.00', '18.00', 8, '255.00', 'semanal', 1, '2022-08-16', b'1'),
(15, 28, '2096.00', '18.00', 12, '269.00', 'semanal', 1, '2022-05-21', b'1'),
(18, 31, '2500.00', '18.00', 4, '850.00', 'quincenal', 1, '2022-04-16', b'1'),
(19, 32, '1000.00', '16.00', 2, '580.00', 'quincenal', 1, '2022-07-22', b'1'),
(20, 33, '1500.00', '18.00', 8, '322.50', 'quincenal', 1, '2022-05-11', b'1'),
(21, 34, '4000.00', '18.00', 3, '2053.30', 'mensual', 1, '2022-07-14', b'1'),
(22, 35, '2000.00', '17.00', 4, '670.00', 'quincenal', 1, '2022-07-21', b'1'),
(23, 36, '2000.00', '18.00', 6, '513.30', 'quincenal', 1, '2022-07-08', b'1'),
(24, 37, '2000.00', '18.00', 4, '680.00', 'quincenal', 1, '2022-08-22', b'1'),
(25, 40, '1302.00', '18.00', 4, '442.70', 'quincenal', 1, '2022-04-28', b'1'),
(26, 41, '500.00', '15.00', 6, '120.80', 'quincenal', 1, '2022-06-18', b'1'),
(27, 42, '1500.00', '18.00', 6, '385.00', 'quincenal', 1, '2022-05-17', b'1'),
(28, 43, '600.00', '18.00', 2, '354.00', 'quincenal', 1, '2022-08-15', b'1'),
(29, 45, '1500.00', '18.00', 6, '385.00', 'quincenal', 1, '2022-07-25', b'1'),
(31, 44, '3500.00', '18.00', 10, '665.00', 'quincenal', 1, '2022-02-08', b'1'),
(32, 49, '3710.00', '18.00', 6, '952.20', 'quincenal', 1, '2022-06-13', b'1'),
(33, 50, '4000.00', '15.00', 10, '700.00', 'quincenal', 1, '2022-05-05', b'1'),
(34, 51, '5000.00', '18.00', 6, '1283.30', 'quincenal', 1, '2022-08-03', b'1'),
(35, 53, '3000.00', '18.00', 6, '770.00', 'quincenal', 1, '2022-04-21', b'1'),
(36, 54, '2000.00', '18.00', 8, '340.00', 'semanal', 1, '2022-07-21', b'1'),
(37, 47, '1826.00', '18.00', 6, '468.70', 'quincenal', 1, '2022-06-22', b'1'),
(38, 48, '1900.00', '18.00', 6, '487.70', 'quincenal', 1, '2022-06-28', b'1'),
(40, 55, '3500.00', '18.00', 6, '898.30', 'quincenal', 1, '2022-05-10', b'1'),
(41, 57, '3500.00', '18.00', 10, '665.00', 'quincenal', 1, '2022-03-17', b'1'),
(42, 59, '2000.00', '17.00', 4, '670.00', 'quincenal', 1, '2022-06-22', b'1'),
(43, 62, '3500.00', '18.00', 12, '449.20', 'semanal', 1, '2021-12-02', b'1'),
(45, 66, '10638.00', '18.00', 20, '1010.60', 'semanal', 1, '2022-07-16', b'1'),
(46, 19, '9395.00', '18.00', 20, '892.50', 'semanal', 1, '2022-07-14', b'1'),
(47, 69, '3000.00', '18.00', 8, '510.00', 'semanal', 1, '2021-09-29', b'1'),
(48, 71, '3500.00', '18.00', 10, '665.00', 'quincenal', 1, '2022-07-16', b'1'),
(49, 73, '6500.00', '18.00', 10, '1235.00', 'quincenal', 1, '2022-04-18', b'1'),
(50, 67, '4170.00', '18.00', 5, '1584.60', 'mensual', 1, '2022-01-05', b'1'),
(51, 74, '3000.00', '18.00', 6, '770.00', 'quincenal', 1, '2022-08-17', b'1'),
(52, 75, '1500.00', '18.00', 4, '510.00', 'quincenal', 1, '2022-05-16', b'1'),
(53, 76, '3500.00', '18.00', 2, '2065.00', 'quincenal', 1, '2022-08-16', b'1'),
(54, 78, '2500.00', '18.00', 6, '641.70', 'quincenal', 1, '2022-08-25', b'1'),
(55, 80, '1000.00', '16.00', 2, '580.00', 'quincenal', 1, '2022-08-08', b'1'),
(56, 81, '1500.00', '18.00', 6, '385.00', 'quincenal', 1, '2022-08-04', b'1'),
(57, 82, '1500.00', '18.00', 8, '322.50', 'quincenal', 1, '2022-06-07', b'1'),
(58, 84, '1500.00', '18.00', 6, '385.00', 'quincenal', 1, '2022-05-17', b'1'),
(59, 22, '4000.00', '18.00', 12, '513.30', 'semanal', 1, '2022-03-14', b'1'),
(60, 88, '1000.00', '18.00', 2, '590.00', 'quincenal', 1, '2022-07-28', b'1'),
(61, 38, '2280.00', '18.00', 12, '292.60', 'semanal', 1, '2022-04-25', b'1'),
(62, 93, '2000.00', '18.00', 4, '680.00', 'quincenal', 1, '2022-07-22', b'1'),
(63, 95, '1000.00', '18.00', 4, '340.00', 'quincenal', 1, '2022-08-16', b'1'),
(64, 97, '800.00', '16.00', 4, '264.00', 'quincenal', 1, '2022-08-22', b'1'),
(65, 99, '2000.00', '18.00', 4, '680.00', 'quincenal', 1, '2022-08-09', b'1'),
(66, 98, '1397.00', '18.00', 4, '475.00', 'quincenal', 1, '2022-07-11', b'1'),
(67, 96, '1542.00', '15.00', 8, '250.60', 'semanal', 1, '2022-07-19', b'1'),
(68, 101, '3749.00', '17.00', 4, '1255.90', 'quincenal', 1, '2022-08-09', b'1'),
(69, 104, '3500.00', '18.00', 12, '449.20', 'semanal', 1, '2022-02-04', b'1'),
(70, 105, '2000.00', '18.00', 12, '256.70', 'semanal', 1, '2022-05-10', b'1'),
(71, 103, '4593.00', '18.00', 8, '987.50', 'quincenal', 1, '2022-07-05', b'1'),
(73, 109, '2000.00', '18.00', 6, '513.30', 'quincenal', 1, '2022-03-17', b'1'),
(74, 111, '3500.00', '18.00', 20, '332.50', 'semanal', 1, '2021-12-27', b'1'),
(75, 123, '4000.00', '18.00', 12, '513.30', 'semanal', 1, '2022-05-10', b'1'),
(76, 9, '2500.00', '18.00', 10, '475.00', 'quincenal', 1, '2022-01-29', b'1'),
(77, 127, '2112.00', '18.00', 8, '359.00', 'semanal', 1, '2022-05-11', b'1'),
(78, 128, '2500.00', '18.00', 8, '537.50', 'quincenal', 1, '2022-06-10', b'1'),
(79, 133, '3000.00', '18.00', 10, '570.00', 'quincenal', 1, '2022-07-26', b'1'),
(80, 135, '3000.00', '18.00', 6, '770.00', 'quincenal', 1, '2022-08-17', b'1'),
(81, 136, '2696.00', '18.00', 6, '692.00', 'quincenal', 1, '2022-08-16', b'1'),
(82, 137, '2000.00', '16.00', 6, '493.30', 'quincenal', 1, '2022-08-05', b'1'),
(83, 138, '3500.00', '18.00', 12, '449.20', 'semanal', 1, '2022-05-18', b'1'),
(84, 139, '10000.00', '15.00', 20, '875.00', 'semanal', 1, '2022-06-08', b'1'),
(85, 142, '3500.00', '18.00', 12, '449.20', 'semanal', 1, '2022-07-13', b'1'),
(86, 149, '2000.00', '18.00', 12, '256.70', 'semanal', 1, '2022-07-13', b'1'),
(87, 153, '2500.00', '18.00', 12, '320.80', 'semanal', 1, '2022-07-20', b'1'),
(88, 157, '3500.00', '18.00', 6, '898.30', 'quincenal', 1, '2022-07-25', b'1'),
(89, 159, '2000.00', '18.00', 6, '513.30', 'quincenal', 1, '2022-07-28', b'1'),
(90, 161, '6000.00', '15.00', 6, '1450.00', 'quincenal', 1, '2022-08-03', b'1'),
(91, 162, '3500.00', '18.00', 6, '898.30', 'quincenal', 1, '2022-08-03', b'1'),
(92, 164, '3500.00', '18.00', 6, '898.30', 'quincenal', 1, '2022-08-13', b'1'),
(93, 166, '3500.00', '18.00', 6, '898.30', 'quincenal', 1, '2022-08-15', b'1'),
(94, 168, '2500.00', '18.00', 6, '641.70', 'quincenal', 1, '2022-08-18', b'1'),
(95, 145, '13000.00', '16.00', 6, '3206.70', 'quincenal', 1, '2022-07-19', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loan_items`
--

CREATE TABLE `loan_items` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `num_quota` int(11) NOT NULL,
  `fee_amount` decimal(25,2) NOT NULL,
  `pay_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `loan_items`
--

INSERT INTO `loan_items` (`id`, `loan_id`, `date`, `num_quota`, `fee_amount`, `pay_date`, `status`) VALUES
(1, 1, '2022-08-09', 1, '660.00', '2022-08-31 19:31:39', b'1'),
(2, 1, '2022-08-24', 2, '660.00', '2022-08-31 19:31:39', b'1'),
(3, 1, '2022-09-08', 3, '660.00', '2022-08-31 19:31:39', b'1'),
(4, 1, '2022-09-23', 4, '660.00', '2022-08-31 19:31:39', b'1'),
(5, 2, '2022-08-26', 1, '340.00', '2022-08-31 19:31:44', b'1'),
(6, 2, '2022-09-10', 2, '340.00', '2022-08-31 19:31:44', b'1'),
(7, 2, '2022-09-27', 3, '340.00', '2022-08-31 19:31:44', b'1'),
(8, 2, '2022-10-10', 4, '340.00', '2022-08-31 19:31:44', b'1'),
(9, 3, '2022-07-30', 1, '256.70', '2022-09-02 15:40:35', b'0'),
(10, 3, '2022-08-06', 2, '256.70', '2022-09-02 15:40:35', b'0'),
(11, 3, '2022-08-13', 3, '256.70', '2022-08-31 20:01:35', b'1'),
(12, 3, '2022-08-20', 4, '256.70', '2022-08-31 20:01:35', b'1'),
(13, 3, '2022-08-27', 5, '256.70', '2022-08-31 20:01:35', b'1'),
(14, 3, '2022-09-03', 6, '256.70', '2022-08-31 20:01:35', b'1'),
(15, 3, '2022-09-10', 7, '256.70', '2022-08-31 20:01:35', b'1'),
(16, 3, '2022-09-17', 8, '256.70', '2022-08-31 20:01:35', b'1'),
(17, 3, '2022-09-24', 9, '256.70', '2022-08-31 20:01:35', b'1'),
(18, 3, '2022-10-01', 10, '256.70', '2022-08-31 20:01:35', b'1'),
(19, 3, '2022-10-08', 11, '256.70', '2022-08-31 20:01:35', b'1'),
(20, 3, '2022-10-15', 12, '256.70', '2022-08-31 20:01:35', b'1'),
(21, 4, '2022-08-02', 1, '462.00', '2022-08-31 20:12:47', b'1'),
(22, 4, '2022-08-15', 2, '462.00', '2022-08-31 20:12:47', b'1'),
(23, 4, '2022-08-30', 3, '462.00', '2022-08-31 20:12:47', b'1'),
(24, 4, '2022-09-14', 4, '462.00', '2022-08-31 20:12:47', b'1'),
(25, 4, '2022-09-29', 5, '462.00', '2022-08-31 20:12:47', b'1'),
(26, 4, '2022-10-14', 6, '462.00', '2022-08-31 20:12:47', b'1'),
(27, 5, '2022-05-31', 1, '510.00', '2022-09-02 15:41:41', b'0'),
(28, 5, '2022-06-15', 2, '510.00', '2022-09-02 15:41:41', b'0'),
(29, 5, '2022-06-30', 3, '510.00', '2022-08-31 20:13:04', b'1'),
(30, 5, '2022-07-15', 4, '510.00', '2022-08-31 20:13:04', b'1'),
(31, 6, '2022-08-31', 1, '256.70', '2022-08-31 20:16:55', b'1'),
(32, 6, '2022-09-15', 2, '256.70', '2022-08-31 20:16:55', b'1'),
(33, 6, '2022-09-30', 3, '256.70', '2022-08-31 20:16:55', b'1'),
(34, 6, '2022-10-15', 4, '256.70', '2022-08-31 20:16:55', b'1'),
(35, 6, '2022-11-01', 5, '256.70', '2022-08-31 20:16:55', b'1'),
(36, 6, '2022-11-14', 6, '256.70', '2022-08-31 20:16:55', b'1'),
(37, 7, '2022-07-01', 1, '104.70', '2022-09-02 15:43:19', b'0'),
(38, 7, '2022-07-08', 2, '104.70', '2022-09-02 15:43:19', b'0'),
(39, 7, '2022-07-15', 3, '104.70', '2022-09-02 15:43:19', b'0'),
(40, 7, '2022-07-22', 4, '104.70', '2022-09-02 15:43:19', b'0'),
(41, 7, '2022-07-29', 5, '104.70', '2022-09-02 15:43:19', b'0'),
(42, 7, '2022-08-05', 6, '104.70', '2022-09-02 15:43:19', b'0'),
(43, 7, '2022-08-12', 7, '104.70', '2022-08-31 20:28:23', b'1'),
(44, 7, '2022-08-19', 8, '104.70', '2022-08-31 20:28:23', b'1'),
(45, 8, '2022-07-29', 1, '850.00', '2022-08-31 20:28:50', b'1'),
(46, 8, '2022-08-13', 2, '850.00', '2022-08-31 20:28:50', b'1'),
(47, 8, '2022-08-30', 3, '850.00', '2022-08-31 20:28:50', b'1'),
(48, 8, '2022-09-12', 4, '850.00', '2022-08-31 20:28:50', b'1'),
(49, 9, '2022-07-29', 1, '850.00', '2022-08-31 20:29:49', b'1'),
(50, 9, '2022-08-13', 2, '850.00', '2022-08-31 20:29:49', b'1'),
(51, 9, '2022-08-30', 3, '850.00', '2022-08-31 20:29:49', b'1'),
(52, 9, '2022-09-12', 4, '850.00', '2022-08-31 20:29:49', b'1'),
(63, 11, '2022-09-08', 1, '680.00', '2022-08-31 20:35:46', b'1'),
(64, 11, '2022-09-23', 2, '680.00', '2022-08-31 20:35:46', b'1'),
(65, 11, '2022-10-08', 3, '680.00', '2022-08-31 20:35:46', b'1'),
(66, 11, '2022-10-25', 4, '680.00', '2022-08-31 20:35:46', b'1'),
(67, 12, '2022-08-31', 1, '370.00', '2022-09-02 15:44:11', b'0'),
(68, 12, '2022-09-15', 2, '370.00', '2022-08-31 20:38:59', b'1'),
(69, 12, '2022-09-30', 3, '370.00', '2022-08-31 20:38:59', b'1'),
(70, 12, '2022-10-15', 4, '370.00', '2022-08-31 20:38:59', b'1'),
(71, 12, '2022-11-01', 5, '370.00', '2022-08-31 20:38:59', b'1'),
(72, 12, '2022-11-14', 6, '370.00', '2022-08-31 20:38:59', b'1'),
(73, 13, '2022-09-09', 1, '510.00', '2022-08-31 20:43:04', b'1'),
(74, 13, '2022-09-24', 2, '510.00', '2022-08-31 20:43:04', b'1'),
(75, 13, '2022-10-11', 3, '510.00', '2022-08-31 20:43:04', b'1'),
(76, 13, '2022-10-24', 4, '510.00', '2022-08-31 20:43:04', b'1'),
(77, 14, '2022-08-23', 1, '255.00', '2022-09-02 15:44:41', b'0'),
(78, 14, '2022-08-30', 2, '255.00', '2022-08-31 20:47:07', b'1'),
(79, 14, '2022-09-06', 3, '255.00', '2022-08-31 20:47:07', b'1'),
(80, 14, '2022-09-13', 4, '255.00', '2022-08-31 20:47:07', b'1'),
(81, 14, '2022-09-20', 5, '255.00', '2022-08-31 20:47:07', b'1'),
(82, 14, '2022-09-27', 6, '255.00', '2022-08-31 20:47:07', b'1'),
(83, 14, '2022-10-04', 7, '255.00', '2022-08-31 20:47:07', b'1'),
(84, 14, '2022-10-11', 8, '255.00', '2022-08-31 20:47:07', b'1'),
(85, 15, '2022-05-28', 1, '269.00', '2022-09-02 15:48:22', b'0'),
(86, 15, '2022-06-04', 2, '269.00', '2022-09-02 15:48:22', b'0'),
(87, 15, '2022-06-11', 3, '269.00', '2022-09-02 15:48:22', b'0'),
(88, 15, '2022-06-18', 4, '269.00', '2022-09-02 15:48:22', b'0'),
(89, 15, '2022-06-25', 5, '269.00', '2022-08-31 20:59:23', b'1'),
(90, 15, '2022-07-02', 6, '269.00', '2022-08-31 20:59:23', b'1'),
(91, 15, '2022-07-09', 7, '269.00', '2022-08-31 20:59:23', b'1'),
(92, 15, '2022-07-16', 8, '269.00', '2022-08-31 20:59:23', b'1'),
(93, 15, '2022-07-23', 9, '269.00', '2022-08-31 20:59:23', b'1'),
(94, 15, '2022-07-30', 10, '269.00', '2022-08-31 20:59:23', b'1'),
(95, 15, '2022-08-06', 11, '269.00', '2022-08-31 20:59:23', b'1'),
(96, 15, '2022-08-13', 12, '269.00', '2022-08-31 20:59:23', b'1'),
(103, 18, '2022-05-03', 1, '850.00', '2022-09-02 15:50:36', b'0'),
(104, 18, '2022-05-16', 2, '850.00', '2022-08-31 21:39:29', b'1'),
(105, 18, '2022-05-31', 3, '850.00', '2022-08-31 21:39:29', b'1'),
(106, 18, '2022-06-15', 4, '850.00', '2022-08-31 21:39:29', b'1'),
(107, 19, '2022-08-06', 1, '580.00', '2022-08-31 21:42:55', b'1'),
(108, 19, '2022-08-23', 2, '580.00', '2022-08-31 21:42:55', b'1'),
(109, 20, '2022-05-26', 1, '322.50', '2022-09-02 15:51:19', b'0'),
(110, 20, '2022-06-10', 2, '322.50', '2022-08-31 22:11:41', b'1'),
(111, 20, '2022-06-25', 3, '322.50', '2022-08-31 22:11:41', b'1'),
(112, 20, '2022-07-12', 4, '322.50', '2022-08-31 22:11:41', b'1'),
(113, 20, '2022-07-25', 5, '322.50', '2022-08-31 22:11:41', b'1'),
(114, 20, '2022-08-09', 6, '322.50', '2022-08-31 22:11:41', b'1'),
(115, 20, '2022-08-24', 7, '322.50', '2022-08-31 22:11:41', b'1'),
(116, 20, '2022-09-08', 8, '322.50', '2022-08-31 22:11:41', b'1'),
(117, 21, '2022-08-16', 1, '2053.30', '2022-08-31 22:15:03', b'1'),
(118, 21, '2022-09-14', 2, '2053.30', '2022-08-31 22:15:03', b'1'),
(119, 21, '2022-10-14', 3, '2053.30', '2022-08-31 22:15:03', b'1'),
(120, 22, '2022-08-05', 1, '670.00', '2022-08-31 22:18:17', b'1'),
(121, 22, '2022-08-20', 2, '670.00', '2022-08-31 22:18:17', b'1'),
(122, 22, '2022-09-06', 3, '670.00', '2022-08-31 22:18:17', b'1'),
(123, 22, '2022-09-19', 4, '670.00', '2022-08-31 22:18:17', b'1'),
(124, 23, '2022-07-23', 1, '513.30', '2022-09-02 15:52:25', b'0'),
(125, 23, '2022-08-09', 2, '513.30', '2022-09-02 15:52:25', b'0'),
(126, 23, '2022-08-22', 3, '513.30', '2022-08-31 22:22:22', b'1'),
(127, 23, '2022-09-06', 4, '513.30', '2022-08-31 22:22:22', b'1'),
(128, 23, '2022-09-21', 5, '513.30', '2022-08-31 22:22:22', b'1'),
(129, 23, '2022-10-06', 6, '513.30', '2022-08-31 22:22:22', b'1'),
(130, 24, '2022-09-06', 1, '680.00', '2022-08-31 22:32:23', b'1'),
(131, 24, '2022-09-21', 2, '680.00', '2022-08-31 22:32:23', b'1'),
(132, 24, '2022-10-06', 3, '680.00', '2022-08-31 22:32:23', b'1'),
(133, 24, '2022-10-21', 4, '680.00', '2022-08-31 22:32:23', b'1'),
(134, 25, '2022-05-13', 1, '442.70', '2022-08-31 22:40:45', b'1'),
(135, 25, '2022-05-28', 2, '442.70', '2022-08-31 22:40:45', b'1'),
(136, 25, '2022-06-14', 3, '442.70', '2022-08-31 22:40:45', b'1'),
(137, 25, '2022-06-27', 4, '442.70', '2022-08-31 22:40:45', b'1'),
(138, 26, '2022-07-05', 1, '120.80', '2022-09-01 13:15:31', b'1'),
(139, 26, '2022-07-18', 2, '120.80', '2022-09-01 13:15:31', b'1'),
(140, 26, '2022-08-02', 3, '120.80', '2022-09-01 13:15:31', b'1'),
(141, 26, '2022-08-17', 4, '120.80', '2022-09-01 13:15:31', b'1'),
(142, 26, '2022-09-01', 5, '120.80', '2022-09-01 13:15:31', b'1'),
(143, 26, '2022-09-16', 6, '120.80', '2022-09-01 13:15:31', b'1'),
(144, 27, '2022-06-01', 1, '385.00', '2022-09-01 13:22:32', b'1'),
(145, 27, '2022-06-16', 2, '385.00', '2022-09-01 13:22:32', b'1'),
(146, 27, '2022-07-01', 3, '385.00', '2022-09-01 13:22:32', b'1'),
(147, 27, '2022-07-16', 4, '385.00', '2022-09-01 13:22:32', b'1'),
(148, 27, '2022-08-02', 5, '385.00', '2022-09-01 13:22:32', b'1'),
(149, 27, '2022-08-15', 6, '385.00', '2022-09-01 13:22:32', b'1'),
(150, 28, '2022-08-30', 1, '354.00', '2022-09-01 13:25:49', b'1'),
(151, 28, '2022-09-14', 2, '354.00', '2022-09-01 13:25:49', b'1'),
(152, 29, '2022-08-09', 1, '385.00', '2022-09-01 13:28:58', b'1'),
(153, 29, '2022-08-24', 2, '385.00', '2022-09-01 13:28:58', b'1'),
(154, 29, '2022-09-08', 3, '385.00', '2022-09-01 13:28:58', b'1'),
(155, 29, '2022-09-23', 4, '385.00', '2022-09-01 13:28:58', b'1'),
(156, 29, '2022-10-08', 5, '385.00', '2022-09-01 13:28:58', b'1'),
(157, 29, '2022-10-25', 6, '385.00', '2022-09-01 13:28:58', b'1'),
(166, 31, '2022-02-23', 1, '665.00', '2022-09-01 13:38:58', b'1'),
(167, 31, '2022-03-10', 2, '665.00', '2022-09-01 13:38:58', b'1'),
(168, 31, '2022-03-25', 3, '665.00', '2022-09-01 13:38:58', b'1'),
(169, 31, '2022-04-09', 4, '665.00', '2022-09-01 13:38:58', b'1'),
(170, 31, '2022-04-26', 5, '665.00', '2022-09-01 13:38:58', b'1'),
(171, 31, '2022-05-09', 6, '665.00', '2022-09-01 13:38:58', b'1'),
(172, 31, '2022-05-24', 7, '665.00', '2022-09-01 13:38:58', b'1'),
(173, 31, '2022-06-08', 8, '665.00', '2022-09-01 13:38:58', b'1'),
(174, 31, '2022-06-23', 9, '665.00', '2022-09-01 13:38:58', b'1'),
(175, 31, '2022-07-08', 10, '665.00', '2022-09-01 13:38:58', b'1'),
(176, 32, '2022-06-28', 1, '952.20', '2022-09-01 14:01:52', b'1'),
(177, 32, '2022-07-13', 2, '952.20', '2022-09-01 14:01:52', b'1'),
(178, 32, '2022-07-28', 3, '952.20', '2022-09-01 14:01:52', b'1'),
(179, 32, '2022-08-12', 4, '952.20', '2022-09-01 14:01:52', b'1'),
(180, 32, '2022-08-27', 5, '952.20', '2022-09-01 14:01:52', b'1'),
(181, 32, '2022-09-13', 6, '952.20', '2022-09-01 14:01:52', b'1'),
(182, 33, '2022-05-20', 1, '700.00', '2022-09-01 14:04:48', b'1'),
(183, 33, '2022-06-04', 2, '700.00', '2022-09-01 14:04:48', b'1'),
(184, 33, '2022-06-21', 3, '700.00', '2022-09-01 14:04:48', b'1'),
(185, 33, '2022-07-04', 4, '700.00', '2022-09-01 14:04:48', b'1'),
(186, 33, '2022-07-19', 5, '700.00', '2022-09-01 14:04:48', b'1'),
(187, 33, '2022-08-03', 6, '700.00', '2022-09-01 14:04:48', b'1'),
(188, 33, '2022-08-18', 7, '700.00', '2022-09-01 14:04:48', b'1'),
(189, 33, '2022-09-02', 8, '700.00', '2022-09-01 14:04:48', b'1'),
(190, 33, '2022-09-17', 9, '700.00', '2022-09-01 14:04:48', b'1'),
(191, 33, '2022-10-04', 10, '700.00', '2022-09-01 14:04:48', b'1'),
(192, 34, '2022-08-18', 1, '1283.30', '2022-09-01 14:11:59', b'1'),
(193, 34, '2022-09-02', 2, '1283.30', '2022-09-01 14:11:59', b'1'),
(194, 34, '2022-09-17', 3, '1283.30', '2022-09-01 14:11:59', b'1'),
(195, 34, '2022-10-04', 4, '1283.30', '2022-09-01 14:11:59', b'1'),
(196, 34, '2022-10-17', 5, '1283.30', '2022-09-01 14:11:59', b'1'),
(197, 34, '2022-11-01', 6, '1283.30', '2022-09-01 14:11:59', b'1'),
(198, 35, '2022-05-06', 1, '770.00', '2022-09-01 14:15:42', b'1'),
(199, 35, '2022-05-21', 2, '770.00', '2022-09-01 14:15:42', b'1'),
(200, 35, '2022-06-07', 3, '770.00', '2022-09-01 14:15:42', b'1'),
(201, 35, '2022-06-20', 4, '770.00', '2022-09-01 14:15:42', b'1'),
(202, 35, '2022-07-05', 5, '770.00', '2022-09-01 14:15:42', b'1'),
(203, 35, '2022-07-20', 6, '770.00', '2022-09-01 14:15:42', b'1'),
(204, 36, '2022-07-28', 1, '340.00', '2022-09-01 14:18:16', b'1'),
(205, 36, '2022-08-04', 2, '340.00', '2022-09-01 14:18:16', b'1'),
(206, 36, '2022-08-11', 3, '340.00', '2022-09-01 14:18:16', b'1'),
(207, 36, '2022-08-18', 4, '340.00', '2022-09-01 14:18:16', b'1'),
(208, 36, '2022-08-25', 5, '340.00', '2022-09-01 14:18:16', b'1'),
(209, 36, '2022-09-01', 6, '340.00', '2022-09-01 14:18:16', b'1'),
(210, 36, '2022-09-08', 7, '340.00', '2022-09-01 14:18:16', b'1'),
(211, 36, '2022-09-15', 8, '340.00', '2022-09-01 14:18:16', b'1'),
(212, 37, '2022-07-07', 1, '468.70', '2022-09-01 14:23:47', b'1'),
(213, 37, '2022-07-22', 2, '468.70', '2022-09-01 14:23:47', b'1'),
(214, 37, '2022-08-06', 3, '468.70', '2022-09-01 14:23:47', b'1'),
(215, 37, '2022-08-23', 4, '468.70', '2022-09-01 14:23:47', b'1'),
(216, 37, '2022-09-05', 5, '468.70', '2022-09-01 14:23:47', b'1'),
(217, 37, '2022-09-20', 6, '468.70', '2022-09-01 14:23:47', b'1'),
(218, 38, '2022-07-13', 1, '487.70', '2022-09-01 14:42:40', b'1'),
(219, 38, '2022-07-28', 2, '487.70', '2022-09-01 14:42:40', b'1'),
(220, 38, '2022-08-12', 3, '487.70', '2022-09-01 14:42:40', b'1'),
(221, 38, '2022-08-27', 4, '487.70', '2022-09-01 14:42:40', b'1'),
(222, 38, '2022-09-13', 5, '487.70', '2022-09-01 14:42:40', b'1'),
(223, 38, '2022-09-26', 6, '487.70', '2022-09-01 14:42:40', b'1'),
(226, 40, '2022-05-25', 1, '898.30', '2022-09-01 14:46:50', b'1'),
(227, 40, '2022-06-09', 2, '898.30', '2022-09-01 14:46:50', b'1'),
(228, 40, '2022-06-24', 3, '898.30', '2022-09-01 14:46:50', b'1'),
(229, 40, '2022-07-09', 4, '898.30', '2022-09-01 14:46:50', b'1'),
(230, 40, '2022-07-26', 5, '898.30', '2022-09-01 14:46:50', b'1'),
(231, 40, '2022-08-08', 6, '898.30', '2022-09-01 14:46:50', b'1'),
(232, 41, '2022-04-01', 1, '665.00', '2022-09-01 14:57:14', b'1'),
(233, 41, '2022-04-16', 2, '665.00', '2022-09-01 14:57:14', b'1'),
(234, 41, '2022-05-03', 3, '665.00', '2022-09-01 14:57:14', b'1'),
(235, 41, '2022-05-16', 4, '665.00', '2022-09-01 14:57:14', b'1'),
(236, 41, '2022-05-31', 5, '665.00', '2022-09-01 14:57:14', b'1'),
(237, 41, '2022-06-15', 6, '665.00', '2022-09-01 14:57:14', b'1'),
(238, 41, '2022-06-30', 7, '665.00', '2022-09-01 14:57:14', b'1'),
(239, 41, '2022-07-15', 8, '665.00', '2022-09-01 14:57:14', b'1'),
(240, 41, '2022-07-30', 9, '665.00', '2022-09-01 14:57:14', b'1'),
(241, 41, '2022-08-16', 10, '665.00', '2022-09-01 14:57:14', b'1'),
(242, 42, '2022-07-07', 1, '670.00', '2022-09-01 15:00:03', b'1'),
(243, 42, '2022-07-22', 2, '670.00', '2022-09-01 15:00:03', b'1'),
(244, 42, '2022-08-06', 3, '670.00', '2022-09-01 15:00:03', b'1'),
(245, 42, '2022-08-23', 4, '670.00', '2022-09-01 15:00:03', b'1'),
(246, 43, '2021-12-09', 1, '449.20', '2022-09-01 15:04:36', b'1'),
(247, 43, '2021-12-16', 2, '449.20', '2022-09-01 15:04:36', b'1'),
(248, 43, '2021-12-23', 3, '449.20', '2022-09-01 15:04:36', b'1'),
(249, 43, '2021-12-30', 4, '449.20', '2022-09-01 15:04:36', b'1'),
(250, 43, '2022-01-06', 5, '449.20', '2022-09-01 15:04:36', b'1'),
(251, 43, '2022-01-13', 6, '449.20', '2022-09-01 15:04:36', b'1'),
(252, 43, '2022-01-20', 7, '449.20', '2022-09-01 15:04:36', b'1'),
(253, 43, '2022-01-27', 8, '449.20', '2022-09-01 15:04:36', b'1'),
(254, 43, '2022-02-03', 9, '449.20', '2022-09-01 15:04:36', b'1'),
(255, 43, '2022-02-10', 10, '449.20', '2022-09-01 15:04:36', b'1'),
(256, 43, '2022-02-17', 11, '449.20', '2022-09-01 15:04:36', b'1'),
(257, 43, '2022-02-24', 12, '449.20', '2022-09-01 15:04:36', b'1'),
(262, 45, '2022-07-23', 1, '1010.60', '2022-09-01 15:20:04', b'1'),
(263, 45, '2022-07-30', 2, '1010.60', '2022-09-01 15:20:04', b'1'),
(264, 45, '2022-08-06', 3, '1010.60', '2022-09-01 15:20:04', b'1'),
(265, 45, '2022-08-13', 4, '1010.60', '2022-09-01 15:20:04', b'1'),
(266, 45, '2022-08-20', 5, '1010.60', '2022-09-01 15:20:04', b'1'),
(267, 45, '2022-08-27', 6, '1010.60', '2022-09-01 15:20:04', b'1'),
(268, 45, '2022-09-03', 7, '1010.60', '2022-09-01 15:20:04', b'1'),
(269, 45, '2022-09-10', 8, '1010.60', '2022-09-01 15:20:04', b'1'),
(270, 45, '2022-09-17', 9, '1010.60', '2022-09-01 15:20:04', b'1'),
(271, 45, '2022-09-24', 10, '1010.60', '2022-09-01 15:20:04', b'1'),
(272, 45, '2022-10-01', 11, '1010.60', '2022-09-01 15:20:04', b'1'),
(273, 45, '2022-10-08', 12, '1010.60', '2022-09-01 15:20:04', b'1'),
(274, 45, '2022-10-15', 13, '1010.60', '2022-09-01 15:20:04', b'1'),
(275, 45, '2022-10-22', 14, '1010.60', '2022-09-01 15:20:04', b'1'),
(276, 45, '2022-10-29', 15, '1010.60', '2022-09-01 15:20:04', b'1'),
(277, 45, '2022-11-05', 16, '1010.60', '2022-09-01 15:20:04', b'1'),
(278, 45, '2022-11-12', 17, '1010.60', '2022-09-01 15:20:04', b'1'),
(279, 45, '2022-11-19', 18, '1010.60', '2022-09-01 15:20:04', b'1'),
(280, 45, '2022-11-26', 19, '1010.60', '2022-09-01 15:20:04', b'1'),
(281, 45, '2022-12-03', 20, '1010.60', '2022-09-01 15:20:04', b'1'),
(282, 46, '2022-07-21', 1, '892.50', '2022-09-01 15:23:26', b'1'),
(283, 46, '2022-07-28', 2, '892.50', '2022-09-01 15:23:26', b'1'),
(284, 46, '2022-08-04', 3, '892.50', '2022-09-01 15:23:26', b'1'),
(285, 46, '2022-08-11', 4, '892.50', '2022-09-01 15:23:26', b'1'),
(286, 46, '2022-08-18', 5, '892.50', '2022-09-01 15:23:26', b'1'),
(287, 46, '2022-08-25', 6, '892.50', '2022-09-01 15:23:26', b'1'),
(288, 46, '2022-09-01', 7, '892.50', '2022-09-01 15:23:26', b'1'),
(289, 46, '2022-09-08', 8, '892.50', '2022-09-01 15:23:26', b'1'),
(290, 46, '2022-09-15', 9, '892.50', '2022-09-01 15:23:26', b'1'),
(291, 46, '2022-09-22', 10, '892.50', '2022-09-01 15:23:26', b'1'),
(292, 46, '2022-09-29', 11, '892.50', '2022-09-01 15:23:26', b'1'),
(293, 46, '2022-10-06', 12, '892.50', '2022-09-01 15:23:26', b'1'),
(294, 46, '2022-10-13', 13, '892.50', '2022-09-01 15:23:26', b'1'),
(295, 46, '2022-10-20', 14, '892.50', '2022-09-01 15:23:26', b'1'),
(296, 46, '2022-10-27', 15, '892.50', '2022-09-01 15:23:26', b'1'),
(297, 46, '2022-11-03', 16, '892.50', '2022-09-01 15:23:26', b'1'),
(298, 46, '2022-11-10', 17, '892.50', '2022-09-01 15:23:26', b'1'),
(299, 46, '2022-11-17', 18, '892.50', '2022-09-01 15:23:26', b'1'),
(300, 46, '2022-11-24', 19, '892.50', '2022-09-01 15:23:26', b'1'),
(301, 46, '2022-12-01', 20, '892.50', '2022-09-01 15:23:26', b'1'),
(302, 47, '2021-10-06', 1, '510.00', '2022-09-01 15:36:40', b'1'),
(303, 47, '2021-10-13', 2, '510.00', '2022-09-01 15:36:40', b'1'),
(304, 47, '2021-10-20', 3, '510.00', '2022-09-01 15:36:40', b'1'),
(305, 47, '2021-10-27', 4, '510.00', '2022-09-01 15:36:40', b'1'),
(306, 47, '2021-11-03', 5, '510.00', '2022-09-01 15:36:40', b'1'),
(307, 47, '2021-11-10', 6, '510.00', '2022-09-01 15:36:40', b'1'),
(308, 47, '2021-11-17', 7, '510.00', '2022-09-01 15:36:40', b'1'),
(309, 47, '2021-11-24', 8, '510.00', '2022-09-01 15:36:40', b'1'),
(310, 48, '2022-08-02', 1, '665.00', '2022-09-01 15:41:35', b'1'),
(311, 48, '2022-08-15', 2, '665.00', '2022-09-01 15:41:35', b'1'),
(312, 48, '2022-08-30', 3, '665.00', '2022-09-01 15:41:35', b'1'),
(313, 48, '2022-09-14', 4, '665.00', '2022-09-01 15:41:35', b'1'),
(314, 48, '2022-09-29', 5, '665.00', '2022-09-01 15:41:35', b'1'),
(315, 48, '2022-10-14', 6, '665.00', '2022-09-01 15:41:35', b'1'),
(316, 48, '2022-10-29', 7, '665.00', '2022-09-01 15:41:35', b'1'),
(317, 48, '2022-11-15', 8, '665.00', '2022-09-01 15:41:35', b'1'),
(318, 48, '2022-11-28', 9, '665.00', '2022-09-01 15:41:35', b'1'),
(319, 48, '2022-12-13', 10, '665.00', '2022-09-01 15:41:35', b'1'),
(320, 49, '2022-05-03', 1, '1235.00', '2022-09-01 15:47:28', b'1'),
(321, 49, '2022-05-18', 2, '1235.00', '2022-09-01 15:47:28', b'1'),
(322, 49, '2022-06-02', 3, '1235.00', '2022-09-01 15:47:28', b'1'),
(323, 49, '2022-06-17', 4, '1235.00', '2022-09-01 15:47:28', b'1'),
(324, 49, '2022-07-02', 5, '1235.00', '2022-09-01 15:47:28', b'1'),
(325, 49, '2022-07-19', 6, '1235.00', '2022-09-01 15:47:28', b'1'),
(326, 49, '2022-08-01', 7, '1235.00', '2022-09-01 15:47:28', b'1'),
(327, 49, '2022-08-16', 8, '1235.00', '2022-09-01 15:47:28', b'1'),
(328, 49, '2022-08-31', 9, '1235.00', '2022-09-01 15:47:28', b'1'),
(329, 49, '2022-09-15', 10, '1235.00', '2022-09-01 15:47:28', b'1'),
(330, 50, '2022-02-05', 1, '1584.60', '2022-09-01 15:47:37', b'1'),
(331, 50, '2022-03-05', 2, '1584.60', '2022-09-01 15:47:37', b'1'),
(332, 50, '2022-04-05', 3, '1584.60', '2022-09-01 15:47:37', b'1'),
(333, 50, '2022-05-05', 4, '1584.60', '2022-09-01 15:47:37', b'1'),
(334, 50, '2022-06-07', 5, '1584.60', '2022-09-01 15:47:37', b'1'),
(335, 51, '2022-09-01', 1, '770.00', '2022-09-01 15:51:40', b'1'),
(336, 51, '2022-09-16', 2, '770.00', '2022-09-01 15:51:40', b'1'),
(337, 51, '2022-10-01', 3, '770.00', '2022-09-01 15:51:40', b'1'),
(338, 51, '2022-10-18', 4, '770.00', '2022-09-01 15:51:40', b'1'),
(339, 51, '2022-10-31', 5, '770.00', '2022-09-01 15:51:40', b'1'),
(340, 51, '2022-11-15', 6, '770.00', '2022-09-01 15:51:40', b'1'),
(341, 52, '2022-05-31', 1, '510.00', '2022-09-01 15:56:24', b'1'),
(342, 52, '2022-06-15', 2, '510.00', '2022-09-01 15:56:24', b'1'),
(343, 52, '2022-06-30', 3, '510.00', '2022-09-01 15:56:25', b'1'),
(344, 52, '2022-07-15', 4, '510.00', '2022-09-01 15:56:25', b'1'),
(345, 53, '2022-08-31', 1, '2065.00', '2022-09-01 15:59:10', b'1'),
(346, 53, '2022-09-15', 2, '2065.00', '2022-09-01 15:59:10', b'1'),
(347, 54, '2022-09-09', 1, '641.70', '2022-09-01 16:03:35', b'1'),
(348, 54, '2022-09-24', 2, '641.70', '2022-09-01 16:03:35', b'1'),
(349, 54, '2022-10-11', 3, '641.70', '2022-09-01 16:03:35', b'1'),
(350, 54, '2022-10-24', 4, '641.70', '2022-09-01 16:03:35', b'1'),
(351, 54, '2022-11-08', 5, '641.70', '2022-09-01 16:03:35', b'1'),
(352, 54, '2022-11-23', 6, '641.70', '2022-09-01 16:03:35', b'1'),
(353, 55, '2022-08-23', 1, '580.00', '2022-09-01 19:18:50', b'1'),
(354, 55, '2022-09-07', 2, '580.00', '2022-09-01 19:18:50', b'1'),
(355, 56, '2022-08-19', 1, '385.00', '2022-09-01 19:23:40', b'1'),
(356, 56, '2022-09-03', 2, '385.00', '2022-09-01 19:23:40', b'1'),
(357, 56, '2022-09-20', 3, '385.00', '2022-09-01 19:23:40', b'1'),
(358, 56, '2022-10-03', 4, '385.00', '2022-09-01 19:23:40', b'1'),
(359, 56, '2022-10-18', 5, '385.00', '2022-09-01 19:23:40', b'1'),
(360, 56, '2022-11-02', 6, '385.00', '2022-09-01 19:23:40', b'1'),
(361, 57, '2022-06-22', 1, '322.50', '2022-09-01 19:32:52', b'1'),
(362, 57, '2022-07-07', 2, '322.50', '2022-09-01 19:32:52', b'1'),
(363, 57, '2022-07-22', 3, '322.50', '2022-09-01 19:32:52', b'1'),
(364, 57, '2022-08-06', 4, '322.50', '2022-09-01 19:32:52', b'1'),
(365, 57, '2022-08-23', 5, '322.50', '2022-09-01 19:32:52', b'1'),
(366, 57, '2022-09-05', 6, '322.50', '2022-09-01 19:32:52', b'1'),
(367, 57, '2022-09-20', 7, '322.50', '2022-09-01 19:32:52', b'1'),
(368, 57, '2022-10-05', 8, '322.50', '2022-09-01 19:32:52', b'1'),
(369, 58, '2022-06-01', 1, '385.00', '2022-09-01 19:42:18', b'1'),
(370, 58, '2022-06-16', 2, '385.00', '2022-09-01 19:42:18', b'1'),
(371, 58, '2022-07-01', 3, '385.00', '2022-09-01 19:42:18', b'1'),
(372, 58, '2022-07-16', 4, '385.00', '2022-09-01 19:42:18', b'1'),
(373, 58, '2022-08-02', 5, '385.00', '2022-09-01 19:42:18', b'1'),
(374, 58, '2022-08-15', 6, '385.00', '2022-09-01 19:42:18', b'1'),
(375, 59, '2022-03-21', 1, '513.30', '2022-09-01 19:42:23', b'1'),
(376, 59, '2022-03-28', 2, '513.30', '2022-09-01 19:42:23', b'1'),
(377, 59, '2022-04-04', 3, '513.30', '2022-09-01 19:42:23', b'1'),
(378, 59, '2022-04-11', 4, '513.30', '2022-09-01 19:42:23', b'1'),
(379, 59, '2022-04-18', 5, '513.30', '2022-09-01 19:42:23', b'1'),
(380, 59, '2022-04-25', 6, '513.30', '2022-09-01 19:42:23', b'1'),
(381, 59, '2022-05-02', 7, '513.30', '2022-09-01 19:42:23', b'1'),
(382, 59, '2022-05-09', 8, '513.30', '2022-09-01 19:42:23', b'1'),
(383, 59, '2022-05-16', 9, '513.30', '2022-09-01 19:42:23', b'1'),
(384, 59, '2022-05-23', 10, '513.30', '2022-09-01 19:42:23', b'1'),
(385, 59, '2022-05-30', 11, '513.30', '2022-09-01 19:42:23', b'1'),
(386, 59, '2022-06-06', 12, '513.30', '2022-09-01 19:42:23', b'1'),
(387, 60, '2022-08-12', 1, '590.00', '2022-09-01 19:47:33', b'1'),
(388, 60, '2022-08-27', 2, '590.00', '2022-09-01 19:47:33', b'1'),
(389, 61, '2022-05-02', 1, '292.60', '2022-09-01 19:54:00', b'1'),
(390, 61, '2022-05-09', 2, '292.60', '2022-09-01 19:54:00', b'1'),
(391, 61, '2022-05-16', 3, '292.60', '2022-09-01 19:54:00', b'1'),
(392, 61, '2022-05-23', 4, '292.60', '2022-09-01 19:54:00', b'1'),
(393, 61, '2022-05-30', 5, '292.60', '2022-09-01 19:54:00', b'1'),
(394, 61, '2022-06-06', 6, '292.60', '2022-09-01 19:54:00', b'1'),
(395, 61, '2022-06-13', 7, '292.60', '2022-09-01 19:54:00', b'1'),
(396, 61, '2022-06-20', 8, '292.60', '2022-09-01 19:54:00', b'1'),
(397, 61, '2022-06-27', 9, '292.60', '2022-09-01 19:54:00', b'1'),
(398, 61, '2022-07-04', 10, '292.60', '2022-09-01 19:54:00', b'1'),
(399, 61, '2022-07-11', 11, '292.60', '2022-09-01 19:54:00', b'1'),
(400, 61, '2022-07-18', 12, '292.60', '2022-09-01 19:54:00', b'1'),
(401, 62, '2022-08-06', 1, '680.00', '2022-09-01 20:01:59', b'1'),
(402, 62, '2022-08-23', 2, '680.00', '2022-09-01 20:01:59', b'1'),
(403, 62, '2022-09-05', 3, '680.00', '2022-09-01 20:01:59', b'1'),
(404, 62, '2022-09-20', 4, '680.00', '2022-09-01 20:01:59', b'1'),
(405, 63, '2022-08-31', 1, '340.00', '2022-09-01 20:09:26', b'1'),
(406, 63, '2022-09-15', 2, '340.00', '2022-09-01 20:09:26', b'1'),
(407, 63, '2022-09-30', 3, '340.00', '2022-09-01 20:09:26', b'1'),
(408, 63, '2022-10-15', 4, '340.00', '2022-09-01 20:09:26', b'1'),
(409, 64, '2022-09-06', 1, '264.00', '2022-09-01 20:12:15', b'1'),
(410, 64, '2022-09-21', 2, '264.00', '2022-09-01 20:12:15', b'1'),
(411, 64, '2022-10-06', 3, '264.00', '2022-09-01 20:12:15', b'1'),
(412, 64, '2022-10-21', 4, '264.00', '2022-09-01 20:12:15', b'1'),
(413, 65, '2022-08-24', 1, '680.00', '2022-09-01 20:14:41', b'1'),
(414, 65, '2022-09-08', 2, '680.00', '2022-09-01 20:14:41', b'1'),
(415, 65, '2022-09-23', 3, '680.00', '2022-09-01 20:14:41', b'1'),
(416, 65, '2022-10-08', 4, '680.00', '2022-09-01 20:14:41', b'1'),
(417, 66, '2022-07-26', 1, '475.00', '2022-09-01 20:22:49', b'1'),
(418, 66, '2022-08-10', 2, '475.00', '2022-09-01 20:22:49', b'1'),
(419, 66, '2022-08-25', 3, '475.00', '2022-09-01 20:22:49', b'1'),
(420, 66, '2022-09-09', 4, '475.00', '2022-09-01 20:22:49', b'1'),
(421, 67, '2022-07-26', 1, '250.60', '2022-09-01 20:24:41', b'0'),
(422, 67, '2022-08-02', 2, '250.60', '2022-09-01 20:25:08', b'0'),
(423, 67, '2022-08-09', 3, '250.60', '2022-09-01 20:25:30', b'0'),
(424, 67, '2022-08-16', 4, '250.60', '2022-09-01 20:22:54', b'1'),
(425, 67, '2022-08-23', 5, '250.60', '2022-09-01 20:22:54', b'1'),
(426, 67, '2022-08-30', 6, '250.60', '2022-09-01 20:22:54', b'1'),
(427, 67, '2022-09-06', 7, '250.60', '2022-09-01 20:22:54', b'1'),
(428, 67, '2022-09-13', 8, '250.60', '2022-09-01 20:22:54', b'1'),
(429, 68, '2022-08-24', 1, '1255.90', '2022-09-01 20:24:08', b'1'),
(430, 68, '2022-09-08', 2, '1255.90', '2022-09-01 20:24:08', b'1'),
(431, 68, '2022-09-23', 3, '1255.90', '2022-09-01 20:24:08', b'1'),
(432, 68, '2022-10-08', 4, '1255.90', '2022-09-01 20:24:08', b'1'),
(433, 69, '2022-02-11', 1, '449.20', '2022-09-01 20:30:37', b'0'),
(434, 69, '2022-02-18', 2, '449.20', '2022-09-01 20:30:51', b'0'),
(435, 69, '2022-02-25', 3, '449.20', '2022-09-01 20:31:10', b'0'),
(436, 69, '2022-03-04', 4, '449.20', '2022-09-01 20:31:22', b'0'),
(437, 69, '2022-03-11', 5, '449.20', '2022-09-01 20:31:35', b'0'),
(438, 69, '2022-03-18', 6, '449.20', '2022-09-01 20:32:01', b'0'),
(439, 69, '2022-03-25', 7, '449.20', '2022-09-01 20:32:19', b'0'),
(440, 69, '2022-04-01', 8, '449.20', '2022-09-01 20:30:03', b'1'),
(441, 69, '2022-04-08', 9, '449.20', '2022-09-01 20:30:03', b'1'),
(442, 69, '2022-04-15', 10, '449.20', '2022-09-01 20:30:03', b'1'),
(443, 69, '2022-04-22', 11, '449.20', '2022-09-01 20:30:03', b'1'),
(444, 69, '2022-04-29', 12, '449.20', '2022-09-01 20:30:03', b'1'),
(445, 70, '2022-05-17', 1, '256.70', '2022-09-01 20:39:05', b'0'),
(446, 70, '2022-05-24', 2, '256.70', '2022-09-01 20:39:17', b'0'),
(447, 70, '2022-05-31', 3, '256.70', '2022-09-01 20:39:27', b'0'),
(448, 70, '2022-06-07', 4, '256.70', '2022-09-01 20:39:40', b'0'),
(449, 70, '2022-06-14', 5, '256.70', '2022-09-01 20:40:22', b'0'),
(450, 70, '2022-06-21', 6, '256.70', '2022-09-01 20:40:34', b'0'),
(451, 70, '2022-06-28', 7, '256.70', '2022-09-01 20:38:28', b'1'),
(452, 70, '2022-07-05', 8, '256.70', '2022-09-01 20:38:28', b'1'),
(453, 70, '2022-07-12', 9, '256.70', '2022-09-01 20:38:28', b'1'),
(454, 70, '2022-07-19', 10, '256.70', '2022-09-01 20:38:28', b'1'),
(455, 70, '2022-07-26', 11, '256.70', '2022-09-01 20:38:28', b'1'),
(456, 70, '2022-08-02', 12, '256.70', '2022-09-01 20:38:28', b'1'),
(457, 71, '2022-07-20', 1, '987.50', '2022-09-01 20:39:15', b'1'),
(458, 71, '2022-08-04', 2, '987.50', '2022-09-01 20:39:15', b'1'),
(459, 71, '2022-08-19', 3, '987.50', '2022-09-01 20:39:15', b'1'),
(460, 71, '2022-09-03', 4, '987.50', '2022-09-01 20:39:15', b'1'),
(461, 71, '2022-09-20', 5, '987.50', '2022-09-01 20:39:15', b'1'),
(462, 71, '2022-10-03', 6, '987.50', '2022-09-01 20:39:15', b'1'),
(463, 71, '2022-10-18', 7, '987.50', '2022-09-01 20:39:15', b'1'),
(464, 71, '2022-11-02', 8, '987.50', '2022-09-01 20:39:15', b'1'),
(471, 73, '2022-04-01', 1, '513.30', '2022-09-01 21:07:19', b'1'),
(472, 73, '2022-04-16', 2, '513.30', '2022-09-01 21:07:19', b'1'),
(473, 73, '2022-05-03', 3, '513.30', '2022-09-01 21:07:19', b'1'),
(474, 73, '2022-05-16', 4, '513.30', '2022-09-01 21:07:19', b'1'),
(475, 73, '2022-05-31', 5, '513.30', '2022-09-01 21:07:19', b'1'),
(476, 73, '2022-06-15', 6, '513.30', '2022-09-01 21:07:19', b'1'),
(477, 74, '2022-01-03', 1, '332.50', '2022-09-01 21:15:55', b'1'),
(478, 74, '2022-01-10', 2, '332.50', '2022-09-01 21:15:55', b'1'),
(479, 74, '2022-01-17', 3, '332.50', '2022-09-01 21:15:55', b'1'),
(480, 74, '2022-01-24', 4, '332.50', '2022-09-01 21:15:55', b'1'),
(481, 74, '2022-01-31', 5, '332.50', '2022-09-01 21:15:55', b'1'),
(482, 74, '2022-02-07', 6, '332.50', '2022-09-01 21:15:55', b'1'),
(483, 74, '2022-02-14', 7, '332.50', '2022-09-01 21:15:55', b'1'),
(484, 74, '2022-02-21', 8, '332.50', '2022-09-01 21:15:55', b'1'),
(485, 74, '2022-02-28', 9, '332.50', '2022-09-01 21:15:55', b'1'),
(486, 74, '2022-03-07', 10, '332.50', '2022-09-01 21:15:55', b'1'),
(487, 74, '2022-03-14', 11, '332.50', '2022-09-01 21:15:55', b'1'),
(488, 74, '2022-03-21', 12, '332.50', '2022-09-01 21:15:55', b'1'),
(489, 74, '2022-03-28', 13, '332.50', '2022-09-01 21:15:55', b'1'),
(490, 74, '2022-04-04', 14, '332.50', '2022-09-01 21:15:55', b'1'),
(491, 74, '2022-04-11', 15, '332.50', '2022-09-01 21:15:55', b'1'),
(492, 74, '2022-04-18', 16, '332.50', '2022-09-01 21:15:55', b'1'),
(493, 74, '2022-04-25', 17, '332.50', '2022-09-01 21:15:55', b'1'),
(494, 74, '2022-05-02', 18, '332.50', '2022-09-01 21:15:55', b'1'),
(495, 74, '2022-05-09', 19, '332.50', '2022-09-01 21:15:55', b'1'),
(496, 74, '2022-05-16', 20, '332.50', '2022-09-01 21:15:55', b'1'),
(497, 75, '2022-05-17', 1, '513.30', '2022-09-02 13:00:56', b'1'),
(498, 75, '2022-05-24', 2, '513.30', '2022-09-02 13:00:56', b'1'),
(499, 75, '2022-05-31', 3, '513.30', '2022-09-02 13:00:56', b'1'),
(500, 75, '2022-06-07', 4, '513.30', '2022-09-02 13:00:56', b'1'),
(501, 75, '2022-06-14', 5, '513.30', '2022-09-02 13:00:56', b'1'),
(502, 75, '2022-06-21', 6, '513.30', '2022-09-02 13:00:56', b'1'),
(503, 75, '2022-06-28', 7, '513.30', '2022-09-02 13:00:56', b'1'),
(504, 75, '2022-07-05', 8, '513.30', '2022-09-02 13:00:56', b'1'),
(505, 75, '2022-07-12', 9, '513.30', '2022-09-02 13:00:56', b'1'),
(506, 75, '2022-07-19', 10, '513.30', '2022-09-02 13:00:56', b'1'),
(507, 75, '2022-07-26', 11, '513.30', '2022-09-02 13:00:56', b'1'),
(508, 75, '2022-08-02', 12, '513.30', '2022-09-02 13:00:56', b'1'),
(509, 76, '2022-02-15', 1, '475.00', '2022-09-02 13:25:22', b'1'),
(510, 76, '2022-02-28', 2, '475.00', '2022-09-02 13:25:22', b'1'),
(511, 76, '2022-03-15', 3, '475.00', '2022-09-02 13:25:22', b'1'),
(512, 76, '2022-03-30', 4, '475.00', '2022-09-02 13:25:22', b'1'),
(513, 76, '2022-04-14', 5, '475.00', '2022-09-02 13:25:22', b'1'),
(514, 76, '2022-04-29', 6, '475.00', '2022-09-02 13:25:22', b'1'),
(515, 76, '2022-05-14', 7, '475.00', '2022-09-02 13:25:22', b'1'),
(516, 76, '2022-05-31', 8, '475.00', '2022-09-02 13:25:22', b'1'),
(517, 76, '2022-06-13', 9, '475.00', '2022-09-02 13:25:22', b'1'),
(518, 76, '2022-06-28', 10, '475.00', '2022-09-02 13:25:22', b'1'),
(519, 77, '2022-05-18', 1, '359.00', '2022-09-02 13:32:34', b'1'),
(520, 77, '2022-05-25', 2, '359.00', '2022-09-02 13:32:34', b'1'),
(521, 77, '2022-06-01', 3, '359.00', '2022-09-02 13:32:34', b'1'),
(522, 77, '2022-06-08', 4, '359.00', '2022-09-02 13:32:34', b'1'),
(523, 77, '2022-06-15', 5, '359.00', '2022-09-02 13:32:34', b'1'),
(524, 77, '2022-06-22', 6, '359.00', '2022-09-02 13:32:34', b'1'),
(525, 77, '2022-06-29', 7, '359.00', '2022-09-02 13:32:34', b'1'),
(526, 77, '2022-07-06', 8, '359.00', '2022-09-02 13:32:34', b'1'),
(527, 78, '2022-06-25', 1, '537.50', '2022-09-02 13:43:19', b'1'),
(528, 78, '2022-07-12', 2, '537.50', '2022-09-02 13:43:19', b'1'),
(529, 78, '2022-07-25', 3, '537.50', '2022-09-02 13:43:19', b'1'),
(530, 78, '2022-08-09', 4, '537.50', '2022-09-02 13:43:19', b'1'),
(531, 78, '2022-08-24', 5, '537.50', '2022-09-02 13:43:19', b'1'),
(532, 78, '2022-09-08', 6, '537.50', '2022-09-02 13:43:19', b'1'),
(533, 78, '2022-09-23', 7, '537.50', '2022-09-02 13:43:19', b'1'),
(534, 78, '2022-10-08', 8, '537.50', '2022-09-02 13:43:19', b'1'),
(535, 79, '2022-08-10', 1, '570.00', '2022-09-02 14:17:56', b'1'),
(536, 79, '2022-08-25', 2, '570.00', '2022-09-02 14:17:56', b'1'),
(537, 79, '2022-09-09', 3, '570.00', '2022-09-02 14:17:56', b'1'),
(538, 79, '2022-09-24', 4, '570.00', '2022-09-02 14:17:56', b'1'),
(539, 79, '2022-10-11', 5, '570.00', '2022-09-02 14:17:56', b'1'),
(540, 79, '2022-10-24', 6, '570.00', '2022-09-02 14:17:56', b'1'),
(541, 79, '2022-11-08', 7, '570.00', '2022-09-02 14:17:56', b'1'),
(542, 79, '2022-11-23', 8, '570.00', '2022-09-02 14:17:56', b'1'),
(543, 79, '2022-12-08', 9, '570.00', '2022-09-02 14:17:56', b'1'),
(544, 79, '2022-12-23', 10, '570.00', '2022-09-02 14:17:56', b'1'),
(545, 80, '2022-09-01', 1, '770.00', '2022-09-02 14:29:24', b'1'),
(546, 80, '2022-09-16', 2, '770.00', '2022-09-02 14:29:24', b'1'),
(547, 80, '2022-10-01', 3, '770.00', '2022-09-02 14:29:24', b'1'),
(548, 80, '2022-10-18', 4, '770.00', '2022-09-02 14:29:24', b'1'),
(549, 80, '2022-10-31', 5, '770.00', '2022-09-02 14:29:24', b'1'),
(550, 80, '2022-11-15', 6, '770.00', '2022-09-02 14:29:24', b'1'),
(551, 81, '2022-08-31', 1, '692.00', '2022-09-02 14:54:37', b'1'),
(552, 81, '2022-09-15', 2, '692.00', '2022-09-02 14:54:37', b'1'),
(553, 81, '2022-09-30', 3, '692.00', '2022-09-02 14:54:37', b'1'),
(554, 81, '2022-10-15', 4, '692.00', '2022-09-02 14:54:37', b'1'),
(555, 81, '2022-11-01', 5, '692.00', '2022-09-02 14:54:37', b'1'),
(556, 81, '2022-11-14', 6, '692.00', '2022-09-02 14:54:37', b'1'),
(557, 82, '2022-08-20', 1, '493.30', '2022-09-02 14:54:50', b'1'),
(558, 82, '2022-09-06', 2, '493.30', '2022-09-02 14:54:50', b'1'),
(559, 82, '2022-09-19', 3, '493.30', '2022-09-02 14:54:50', b'1'),
(560, 82, '2022-10-04', 4, '493.30', '2022-09-02 14:54:50', b'1'),
(561, 82, '2022-10-19', 5, '493.30', '2022-09-02 14:54:50', b'1'),
(562, 82, '2022-11-03', 6, '493.30', '2022-09-02 14:54:50', b'1'),
(563, 83, '2022-05-25', 1, '449.20', '2022-09-02 15:05:18', b'0'),
(564, 83, '2022-06-01', 2, '449.20', '2022-09-02 15:05:29', b'0'),
(565, 83, '2022-06-08', 3, '449.20', '2022-09-02 15:05:43', b'0'),
(566, 83, '2022-06-15', 4, '449.20', '2022-09-02 15:05:57', b'0'),
(567, 83, '2022-06-22', 5, '449.20', '2022-09-02 15:06:11', b'0'),
(568, 83, '2022-06-29', 6, '449.20', '2022-09-02 15:03:41', b'1'),
(569, 83, '2022-07-06', 7, '449.20', '2022-09-02 15:03:41', b'1'),
(570, 83, '2022-07-13', 8, '449.20', '2022-09-02 15:03:41', b'1'),
(571, 83, '2022-07-20', 9, '449.20', '2022-09-02 15:03:41', b'1'),
(572, 83, '2022-07-27', 10, '449.20', '2022-09-02 15:03:41', b'1'),
(573, 83, '2022-08-03', 11, '449.20', '2022-09-02 15:03:41', b'1'),
(574, 83, '2022-08-10', 12, '449.20', '2022-09-02 15:03:41', b'1'),
(575, 84, '2022-06-15', 1, '875.00', '2022-09-02 15:09:17', b'0'),
(576, 84, '2022-06-22', 2, '875.00', '2022-09-02 15:09:29', b'0'),
(577, 84, '2022-06-29', 3, '875.00', '2022-09-02 15:08:36', b'1'),
(578, 84, '2022-07-06', 4, '875.00', '2022-09-02 15:08:36', b'1'),
(579, 84, '2022-07-13', 5, '875.00', '2022-09-02 15:08:36', b'1'),
(580, 84, '2022-07-20', 6, '875.00', '2022-09-02 15:08:36', b'1'),
(581, 84, '2022-07-27', 7, '875.00', '2022-09-02 15:08:36', b'1'),
(582, 84, '2022-08-03', 8, '875.00', '2022-09-02 15:08:36', b'1'),
(583, 84, '2022-08-10', 9, '875.00', '2022-09-02 15:08:36', b'1'),
(584, 84, '2022-08-17', 10, '875.00', '2022-09-02 15:08:36', b'1'),
(585, 84, '2022-08-24', 11, '875.00', '2022-09-02 15:08:36', b'1'),
(586, 84, '2022-08-31', 12, '875.00', '2022-09-02 15:08:36', b'1'),
(587, 84, '2022-09-07', 13, '875.00', '2022-09-02 15:08:36', b'1'),
(588, 84, '2022-09-14', 14, '875.00', '2022-09-02 15:08:36', b'1'),
(589, 84, '2022-09-21', 15, '875.00', '2022-09-02 15:08:36', b'1'),
(590, 84, '2022-09-28', 16, '875.00', '2022-09-02 15:08:36', b'1'),
(591, 84, '2022-10-05', 17, '875.00', '2022-09-02 15:08:36', b'1'),
(592, 84, '2022-10-12', 18, '875.00', '2022-09-02 15:08:36', b'1'),
(593, 84, '2022-10-19', 19, '875.00', '2022-09-02 15:08:36', b'1'),
(594, 84, '2022-10-26', 20, '875.00', '2022-09-02 15:08:36', b'1'),
(595, 85, '2022-07-20', 1, '449.20', '2022-09-02 15:19:16', b'0'),
(596, 85, '2022-07-27', 2, '449.20', '2022-09-02 15:20:19', b'0'),
(597, 85, '2022-08-03', 3, '449.20', '2022-09-02 15:20:31', b'0'),
(598, 85, '2022-08-10', 4, '449.20', '2022-09-02 15:20:46', b'0'),
(599, 85, '2022-08-17', 5, '449.20', '2022-09-02 15:25:00', b'0'),
(600, 85, '2022-08-24', 6, '449.20', '2022-09-02 15:18:55', b'1'),
(601, 85, '2022-08-31', 7, '449.20', '2022-09-02 15:18:55', b'1'),
(602, 85, '2022-09-07', 8, '449.20', '2022-09-02 15:18:55', b'1'),
(603, 85, '2022-09-14', 9, '449.20', '2022-09-02 15:18:55', b'1'),
(604, 85, '2022-09-21', 10, '449.20', '2022-09-02 15:18:55', b'1'),
(605, 85, '2022-09-28', 11, '449.20', '2022-09-02 15:18:55', b'1'),
(606, 85, '2022-10-05', 12, '449.20', '2022-09-02 15:18:55', b'1'),
(607, 86, '2022-07-20', 1, '256.70', '2022-09-02 15:50:51', b'0'),
(608, 86, '2022-07-27', 2, '256.70', '2022-09-02 15:51:02', b'0'),
(609, 86, '2022-08-03', 3, '256.70', '2022-09-02 15:51:16', b'0'),
(610, 86, '2022-08-10', 4, '256.70', '2022-09-02 15:51:30', b'0'),
(611, 86, '2022-08-17', 5, '256.70', '2022-09-02 15:52:12', b'0'),
(612, 86, '2022-08-24', 6, '256.70', '2022-09-02 15:52:35', b'0'),
(613, 86, '2022-08-31', 7, '256.70', '2022-09-02 15:50:02', b'1'),
(614, 86, '2022-09-07', 8, '256.70', '2022-09-02 15:50:02', b'1'),
(615, 86, '2022-09-14', 9, '256.70', '2022-09-02 15:50:02', b'1'),
(616, 86, '2022-09-21', 10, '256.70', '2022-09-02 15:50:02', b'1'),
(617, 86, '2022-09-28', 11, '256.70', '2022-09-02 15:50:02', b'1'),
(618, 86, '2022-10-05', 12, '256.70', '2022-09-02 15:50:02', b'1'),
(619, 87, '2022-07-27', 1, '320.80', '2022-09-02 16:00:43', b'0'),
(620, 87, '2022-08-03', 2, '320.80', '2022-09-02 16:00:56', b'0'),
(621, 87, '2022-08-10', 3, '320.80', '2022-09-02 16:01:08', b'0'),
(622, 87, '2022-08-17', 4, '320.80', '2022-09-02 16:01:19', b'0'),
(623, 87, '2022-08-24', 5, '320.80', '2022-09-02 16:01:32', b'0'),
(624, 87, '2022-08-31', 6, '320.80', '2022-09-02 15:59:51', b'1'),
(625, 87, '2022-09-07', 7, '320.80', '2022-09-02 15:59:51', b'1'),
(626, 87, '2022-09-14', 8, '320.80', '2022-09-02 15:59:51', b'1'),
(627, 87, '2022-09-21', 9, '320.80', '2022-09-02 15:59:51', b'1'),
(628, 87, '2022-09-28', 10, '320.80', '2022-09-02 15:59:51', b'1'),
(629, 87, '2022-10-05', 11, '320.80', '2022-09-02 15:59:51', b'1'),
(630, 87, '2022-10-12', 12, '320.80', '2022-09-02 15:59:51', b'1'),
(631, 88, '2022-08-09', 1, '898.30', '2022-09-02 18:48:40', b'0'),
(632, 88, '2022-08-24', 2, '898.30', '2022-09-02 18:49:20', b'0'),
(633, 88, '2022-09-08', 3, '898.30', '2022-09-02 18:48:07', b'1'),
(634, 88, '2022-09-23', 4, '898.30', '2022-09-02 18:48:07', b'1'),
(635, 88, '2022-10-08', 5, '898.30', '2022-09-02 18:48:07', b'1'),
(636, 88, '2022-10-25', 6, '898.30', '2022-09-02 18:48:07', b'1'),
(637, 89, '2022-08-12', 1, '513.30', '2022-09-02 18:55:23', b'0'),
(638, 89, '2022-08-27', 2, '513.30', '2022-09-02 18:55:36', b'0'),
(639, 89, '2022-09-13', 3, '513.30', '2022-09-02 18:54:18', b'1'),
(640, 89, '2022-09-26', 4, '513.30', '2022-09-02 18:54:18', b'1'),
(641, 89, '2022-10-11', 5, '513.30', '2022-09-02 18:54:18', b'1'),
(642, 89, '2022-10-26', 6, '513.30', '2022-09-02 18:54:18', b'1'),
(643, 90, '2022-08-18', 1, '1450.00', '2022-09-02 19:01:42', b'0'),
(644, 90, '2022-09-02', 2, '1450.00', '2022-09-02 19:01:26', b'1'),
(645, 90, '2022-09-17', 3, '1450.00', '2022-09-02 19:01:26', b'1'),
(646, 90, '2022-10-04', 4, '1450.00', '2022-09-02 19:01:26', b'1'),
(647, 90, '2022-10-17', 5, '1450.00', '2022-09-02 19:01:26', b'1'),
(648, 90, '2022-11-01', 6, '1450.00', '2022-09-02 19:01:26', b'1'),
(649, 91, '2022-08-18', 1, '898.30', '2022-09-02 19:05:10', b'0'),
(650, 91, '2022-09-02', 2, '898.30', '2022-09-02 19:04:52', b'1'),
(651, 91, '2022-09-17', 3, '898.30', '2022-09-02 19:04:52', b'1'),
(652, 91, '2022-10-04', 4, '898.30', '2022-09-02 19:04:52', b'1'),
(653, 91, '2022-10-17', 5, '898.30', '2022-09-02 19:04:53', b'1'),
(654, 91, '2022-11-01', 6, '898.30', '2022-09-02 19:04:53', b'1'),
(655, 92, '2022-08-30', 1, '898.30', '2022-09-02 19:13:22', b'0'),
(656, 92, '2022-09-12', 2, '898.30', '2022-09-02 19:12:46', b'1'),
(657, 92, '2022-09-27', 3, '898.30', '2022-09-02 19:12:46', b'1'),
(658, 92, '2022-10-12', 4, '898.30', '2022-09-02 19:12:46', b'1'),
(659, 92, '2022-10-27', 5, '898.30', '2022-09-02 19:12:46', b'1'),
(660, 92, '2022-11-11', 6, '898.30', '2022-09-02 19:12:46', b'1'),
(661, 93, '2022-08-30', 1, '898.30', '2022-09-02 19:20:49', b'1'),
(662, 93, '2022-09-14', 2, '898.30', '2022-09-02 19:20:49', b'1'),
(663, 93, '2022-09-29', 3, '898.30', '2022-09-02 19:20:49', b'1'),
(664, 93, '2022-10-14', 4, '898.30', '2022-09-02 19:20:49', b'1'),
(665, 93, '2022-10-29', 5, '898.30', '2022-09-02 19:20:49', b'1'),
(666, 93, '2022-11-15', 6, '898.30', '2022-09-02 19:20:49', b'1'),
(667, 94, '2022-09-02', 1, '641.70', '2022-09-02 19:25:18', b'1'),
(668, 94, '2022-09-17', 2, '641.70', '2022-09-02 19:25:18', b'1'),
(669, 94, '2022-10-04', 3, '641.70', '2022-09-02 19:25:18', b'1'),
(670, 94, '2022-10-17', 4, '641.70', '2022-09-02 19:25:18', b'1'),
(671, 94, '2022-11-01', 5, '641.70', '2022-09-02 19:25:18', b'1'),
(672, 94, '2022-11-16', 6, '641.70', '2022-09-02 19:25:18', b'1'),
(673, 95, '2022-08-03', 1, '3206.70', '2022-09-02 19:25:39', b'1'),
(674, 95, '2022-08-18', 2, '3206.70', '2022-09-02 19:25:39', b'1'),
(675, 95, '2022-09-02', 3, '3206.70', '2022-09-02 19:25:39', b'1'),
(676, 95, '2022-09-17', 4, '3206.70', '2022-09-02 19:25:39', b'1'),
(677, 95, '2022-10-04', 5, '3206.70', '2022-09-02 19:25:39', b'1'),
(678, 95, '2022-10-17', 6, '3206.70', '2022-09-02 19:25:39', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `micropayments`
--

CREATE TABLE `micropayments` (
  `id` bigint(20) NOT NULL,
  `loan_item_id` int(11) DEFAULT NULL,
  `mount` decimal(25,2) DEFAULT NULL,
  `pay_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`) VALUES
(1, 'AUTHOR_CRUD'),
(2, 'PERMISSION_CREATE'),
(3, 'PERMISSION_READ'),
(4, 'PERMISSION_UPDATE'),
(5, 'PERMISSION_DELETE'),
(6, 'ROLE_PERMISION_CREATE'),
(7, 'ROLE_PERMISION_READ'),
(8, 'ROLE_PERMISION_UPDATE'),
(9, 'ROLE_PERMISION_DELETE'),
(10, 'ROLE_CREATE'),
(11, 'ROLE_READ'),
(12, 'ROLE_UPDATE'),
(13, 'ROLE_DELETE'),
(14, 'USER_ROLE_CREATE'),
(15, 'USER_ROLE_READ'),
(16, 'USER_ROLE_UPDATE'),
(17, 'USER_ROLE_DELETE'),
(18, 'USER_CREATE'),
(19, 'USER_READ'),
(20, 'USER_UPDATE'),
(21, 'USER_DELETE'),
(22, 'CUSTOMER_CREATE'),
(23, 'CUSTOMER_READ'),
(24, 'CUSTOMER_UPDATE'),
(25, 'CUSTOMER_DELETE'),
(26, 'LOAN_CREATE'),
(27, 'LOAN_READ'),
(28, 'LOAN_UPDATE'),
(29, 'LOAN_DELETE'),
(30, 'LOAN_ITEM_CREATE'),
(31, 'LOAN_ITEM_READ'),
(32, 'LOAN_ITEM_UPDATE'),
(33, 'LOAN_ITEM_DELETE'),
(34, 'GUARANTOR_CREATE'),
(35, 'GUARANTOR_READ'),
(36, 'GUARANTOR_UPDATE'),
(37, 'GUARANTOR_DELETE'),
(38, 'MICROPAIMENT_CREATE'),
(39, 'MICROPAIMENT_READ'),
(40, 'MICROPAIMENT_UPDATE'),
(41, 'MICROPAIMENT_DELETE'),
(42, 'COIN_CREATE'),
(43, 'COIN_READ'),
(44, 'COIN_UPDATE'),
(45, 'COIN_DELETE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ADMIN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `role_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44),
(45, 1, 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `last_name` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'DR. ORLANDO', 'BEJARANO FERNANDEZ', 'gerenciacredichuracasa@gmail.com', 'ad57cb3de9c53c1fc7de94665f6f1db2dfbcaaf73063769fed0b3011466eba602c2f423c4725c6dfacdc2973a518a18e0784e848ca3aabd7cadfd140df1df447'),
(2, 'DR. JERZON PABLO', 'SIHUAIROS', 'legalcredichuracasa@gmail.com', 'e96af661bc336ff382eeeadbdc56d719e81349c6b945c01efbeddc40016989a5cfd90f3df359717e4dad7626c24152406ecddb81ce51114c14c8b15a3949f33a'),
(3, 'LIC. GISELA', 'CARVAJAL NINAJA', 'credichuracasaadm@gmail.com', '6e07e32fe9c4f09f94a5a212dfdd6ef2a444b583c358bc47f0d16943ba3dbde0d3c83a29c60930def4ce61481acf45bc639104c7509e775f989e36f588a5608f'),
(4, 'ING. RUSSETT', 'RODRIGUEZ VELIZ', 'cobrostarijacredichura@gmail.com', '64ac3fc078144f4042eeda6ef0cfb2be8e36c947fd63350384ac5e3063c2d79c4a078779c6634aef87c45200cb663fcf3c7c438060202f84382c4d9e75a75b31'),
(5, 'LIC. CRISTIAN OLIVER', 'RAMOS VELIZ', 'auxiliartjacredichuracasa@gmail.com', '1ce6eee2ba9b501a4d1fceccacde2909437913e72f1f535844f4740f66af487ec2b79b999cd5c06929a69d0f92665bad0b4786ff4eb2eb864a5f3182007b7954'),
(6, 'DRA. FABIOLA', 'ARDAYA ALCAZAR', 'agenciayacuibacredichuracasa@gmail.com', '60c12dc3446301e5d9d6eface0ff9059f78547b3dccda1a244d074ca0817c946391934de691c1a02ae1891fe6f5ff783d4b57fc169c3c2d07d64f45e97e0524f'),
(7, 'DRA. M ALEJANDRA', 'ZENTENO VELASCO', 'cobranzascredichuracasa@gmail.com', '2aa9f7e88ac3f3d06b24b847c19e7b06bfdbde06676ef2ef503a826640b68cb53ba4e0452293f37d5bf6172b674868015e3e81da1f823dedd6ab5bf78b90e7b6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_roles`
--

CREATE TABLE `users_roles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users_roles`
--

INSERT INTO `users_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `coins`
--
ALTER TABLE `coins`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `FK_customers_users` (`user_id`);

--
-- Indices de la tabla `guarantors`
--
ALTER TABLE `guarantors`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_guarantors_customers` (`customer_id`),
  ADD KEY `FK_guarantors_loans` (`loan_id`);

--
-- Indices de la tabla `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `coin_id` (`coin_id`);

--
-- Indices de la tabla `loan_items`
--
ALTER TABLE `loan_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_id` (`loan_id`);

--
-- Indices de la tabla `micropayments`
--
ALTER TABLE `micropayments`
  ADD KEY `id` (`id`),
  ADD KEY `FK__loan_items` (`loan_item_id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK__roles` (`role_id`) USING BTREE,
  ADD KEY `FK__permissions` (`permission_id`) USING BTREE;

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK__users` (`user_id`) USING BTREE,
  ADD KEY `FK__roles` (`role_id`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `coins`
--
ALTER TABLE `coins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT de la tabla `guarantors`
--
ALTER TABLE `guarantors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `loans`
--
ALTER TABLE `loans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT de la tabla `loan_items`
--
ALTER TABLE `loan_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=679;

--
-- AUTO_INCREMENT de la tabla `micropayments`
--
ALTER TABLE `micropayments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users_roles`
--
ALTER TABLE `users_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `FK_customers_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `guarantors`
--
ALTER TABLE `guarantors`
  ADD CONSTRAINT `FK_guarantors_customers` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_guarantors_loans` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `loans_ibfk_2` FOREIGN KEY (`coin_id`) REFERENCES `coins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `loan_items`
--
ALTER TABLE `loan_items`
  ADD CONSTRAINT `loan_items_ibfk_1` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `micropayments`
--
ALTER TABLE `micropayments`
  ADD CONSTRAINT `FK__loan_items` FOREIGN KEY (`loan_item_id`) REFERENCES `loan_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `FK__permissions` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK__roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FK___roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK___users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

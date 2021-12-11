-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 11-12-2021 a las 11:15:36
-- Versión del servidor: 5.7.30
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `Pizzeria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Categorias`
--

CREATE TABLE `Categorias` (
  `id` int(11) NOT NULL,
  `nombre` char(150) DEFAULT 'NOT NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Categorias`
--

INSERT INTO `Categorias` (`id`, `nombre`) VALUES
(1, 'Bebidas'),
(2, 'Pizzas'),
(3, 'Hamburguesas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Clientes`
--

CREATE TABLE `Clientes` (
  `id` int(11) NOT NULL,
  `nombre` char(150) DEFAULT 'NOT NULL',
  `apellidos` char(250) DEFAULT 'NOT NULL',
  `direccion` char(250) DEFAULT 'NOT NULL',
  `codigo_postal` int(10) DEFAULT NULL,
  `id_localidad` int(11) NOT NULL,
  `id_provincia` int(11) NOT NULL,
  `telefono` char(100) DEFAULT NULL,
  `fecha_alta` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Clientes`
--

INSERT INTO `Clientes` (`id`, `nombre`, `apellidos`, `direccion`, `codigo_postal`, `id_localidad`, `id_provincia`, `telefono`, `fecha_alta`) VALUES
(1, '11', '13', '380 Bobwhite Center', 9155, 3, 36, '+359 999 106 0392', '2002-08-05 00:00:00'),
(2, '25', '16', '95 Green Center', 25508, 3, 15, '+60 937 338 9849', '2018-05-28 00:00:00'),
(3, '59', '27', '57 Rockefeller Alley', NULL, 2, 35, '+93 253 696 9030', '2009-01-09 00:00:00'),
(4, '30', '30', '48705 Cherokee Crossing', NULL, 2, 17, '+62 543 360 5839', '2001-01-18 00:00:00'),
(5, '25', '14', '9 Eggendart Pass', 13019, 3, 30, '+502 901 891 5205', '2001-10-24 00:00:00'),
(6, '67', '26', '26805 Laurel Terrace', 34260, 4, 29, '+66 692 507 8626', '2012-09-07 00:00:00'),
(7, '15', '9', '57302 Orin Avenue', NULL, 1, 39, '+98 916 736 3084', '2015-11-16 00:00:00'),
(8, '72', '9', '18966 Shasta Junction', NULL, 2, 1, '+86 589 816 9675', '2012-05-26 00:00:00'),
(9, '49', '29', '63216 Granby Plaza', NULL, 3, 47, '+229 166 231 0581', '2005-05-19 00:00:00'),
(10, '77', '25', '71245 Milwaukee Place', 242456, 4, 35, '+7 500 371 3026', '2010-08-12 00:00:00'),
(11, '40', '12', '4 Weeping Birch Lane', 10469, 1, 4, '+1 347 785 0572', '2011-12-01 00:00:00'),
(12, '67', '8', '3390 Sheridan Hill', NULL, 2, 51, '+30 326 432 2765', '2010-10-18 00:00:00'),
(13, '39', '13', '83017 Lerdahl Trail', 2300, 1, 49, '+63 207 991 5172', '2020-09-21 00:00:00'),
(14, '48', '3', '0 Homewood Hill', NULL, 2, 33, '+507 271 594 9574', '2010-08-18 00:00:00'),
(15, '42', '24', '2861 David Lane', NULL, 4, 20, '+218 559 249 5024', '2009-10-30 00:00:00'),
(16, '54', '24', '334 Holmberg Hill', 7407, 4, 47, '+880 553 535 9031', '2005-04-01 00:00:00'),
(17, '67', '22', '6396 Thackeray Alley', NULL, 2, 24, '+62 427 546 0303', '2018-10-27 00:00:00'),
(18, '31', '15', '00377 Daystar Avenue', NULL, 3, 37, '+62 772 892 2760', '2009-11-25 00:00:00'),
(19, '43', '2', '8676 Fairview Parkway', 2087, 3, 5, '+359 408 499 6583', '2009-04-24 00:00:00'),
(20, '14', '21', '16 Pennsylvania Street', NULL, 3, 50, '+62 811 892 6786', '2010-06-06 00:00:00'),
(21, '42', '28', '683 Canary Pass', NULL, 3, 39, '+7 191 763 9608', '2021-07-13 00:00:00'),
(22, '52', '7', '1 Randy Trail', NULL, 4, 19, '+86 438 340 0970', '2003-12-28 00:00:00'),
(23, '19', '26', '886 Village Green Point', 4619, 4, 30, '+31 115 218 6336', '2020-01-02 00:00:00'),
(24, '73', '27', '1939 Eggendart Street', 132557, 4, 44, '+57 735 431 2874', '2012-06-29 00:00:00'),
(25, '36', '2', '2 Glacier Hill Terrace', NULL, 4, 44, '+86 400 831 0159', '2011-09-10 00:00:00'),
(26, '15', '9', '86 Dahle Junction', NULL, 1, 49, '+51 145 901 3446', '2012-11-18 00:00:00'),
(27, '42', '1', '694 Moland Alley', NULL, 4, 16, '+62 793 924 3350', '2018-09-26 00:00:00'),
(28, '59', '6', '2601 Hollow Ridge Avenue', NULL, 2, 41, '+62 201 976 8221', '2004-05-24 00:00:00'),
(29, '18', '20', '95127 Rusk Way', 732048, 2, 30, '+57 135 229 9478', '2007-03-03 00:00:00'),
(30, '39', '14', '84 Hayes Park', NULL, 4, 14, '+86 344 451 5142', '2017-07-17 00:00:00'),
(31, '48', '27', '34 Sycamore Terrace', 77150, 4, 4, '+66 344 560 2223', '2014-11-06 00:00:00'),
(32, '52', '2', '89 Debs Junction', NULL, 2, 43, '+62 438 948 9490', '2014-10-04 00:00:00'),
(33, '56', '26', '6 8th Crossing', NULL, 3, 21, '+62 962 196 5756', '2021-01-01 00:00:00'),
(34, '59', '5', '36 Judy Pass', NULL, 3, 51, '+62 857 905 1739', '2009-10-03 00:00:00'),
(35, '49', '25', '4694 Melody Place', 95603, 2, 41, '+52 612 605 7635', '2016-04-07 00:00:00'),
(36, '46', '7', '8710 Vahlen Junction', 733558, 2, 35, '+57 134 996 7800', '2014-12-09 00:00:00'),
(37, '44', '16', '2 Farwell Pass', 60217, 2, 6, '+976 190 390 2164', '2016-05-07 00:00:00'),
(38, '80', '28', '4622 Ruskin Road', 74408, 2, 7, '+86 558 112 5077', '2007-01-28 00:00:00'),
(39, '10', '17', '36651 Lunder Circle', 12475, 1, 46, '+62 948 429 3486', '2018-09-22 00:00:00'),
(40, '5', '15', '995 Anniversary Pass', 60209, 4, 25, '+242 211 367 1419', '2011-01-12 00:00:00'),
(41, '18', '7', '6 Veith Junction', 15107, 2, 1, '+62 364 824 6074', '2019-02-22 00:00:00'),
(42, '61', '2', '950 Crescent Oaks Court', 52104, 1, 17, '+86 502 774 8744', '2004-05-02 00:00:00'),
(43, '31', '23', '1091 Grover Plaza', 16049, 4, 29, '+234 565 646 9697', '2012-04-16 00:00:00'),
(44, '50', '24', '8 Scofield Parkway', 58680, 4, 35, '+63 696 543 8827', '2020-02-13 00:00:00'),
(45, '36', '27', '2 Lyons Park', 79093, 1, 10, '+86 463 129 9534', '2017-03-04 00:00:00'),
(46, '9', '26', '184 Manitowish Hill', 73163, 1, 33, '+81 432 583 6524', '2019-07-30 00:00:00'),
(47, '26', '13', '43 Kensington Lane', 46502, 1, 19, '+86 113 799 5153', '2006-03-05 00:00:00'),
(48, '48', '18', '4 Jenifer Center', 54754, 1, 51, '+57 864 526 9194', '2002-06-05 00:00:00'),
(49, '2', '12', '7 Elmside Place', 30845, 1, 10, '+86 957 733 1253', '2019-07-18 00:00:00'),
(50, '6', '12', '9603 Continental Junction', 24481, 2, 52, '+58 137 620 6849', '2012-12-17 00:00:00'),
(51, '71', '17', '343 Kropf Park', 70209, 3, 2, '+46 755 107 0295', '2020-02-22 00:00:00'),
(52, '70', '4', '0 Sunnyside Place', 55394, 3, 42, '+62 114 579 9945', '2005-01-23 00:00:00'),
(53, '72', '1', '5598 Stoughton Pass', 53196, 1, 49, '+212 252 980 3553', '2006-01-15 00:00:00'),
(54, '78', '23', '39408 Hazelcrest Avenue', 65421, 3, 42, '+86 600 263 7890', '2007-02-22 00:00:00'),
(55, '47', '13', '99 Jenna Pass', 21156, 3, 47, '+86 470 893 3310', '2003-12-03 00:00:00'),
(56, '27', '19', '8 Monica Junction', 49500, 3, 5, '+86 354 335 6172', '2001-07-02 00:00:00'),
(57, '24', '6', '5 Glendale Hill', 75338, 2, 1, '+46 589 553 7061', '2015-04-05 00:00:00'),
(58, '28', '16', '09283 Maywood Crossing', 19464, 4, 1, '+48 302 975 9698', '2001-01-03 00:00:00'),
(59, '25', '24', '4 Bartillon Circle', 49590, 1, 27, '+63 510 321 4487', '2013-05-27 00:00:00'),
(60, '23', '15', '22397 Mallory Terrace', 73714, 1, 28, '+1 719 224 5361', '2010-04-17 00:00:00'),
(61, '61', '25', '6801 Del Mar Parkway', 64244, 1, 10, '+48 527 687 6492', '2018-08-21 00:00:00'),
(62, '35', '29', '13875 Sugar Lane', 57027, 4, 39, '+86 549 362 4473', '2007-01-03 00:00:00'),
(63, '44', '28', '62368 Walton Street', 25295, 1, 3, '+81 281 293 8977', '2004-04-22 00:00:00'),
(64, '70', '13', '67593 Fuller Plaza', 38526, 3, 16, '+30 457 122 3692', '2007-07-29 00:00:00'),
(65, '12', '11', '7170 Elka Circle', 52888, 3, 36, '+86 645 757 6982', '2019-07-07 00:00:00'),
(66, '52', '28', '3 Almo Road', 51609, 3, 7, '+241 933 129 1782', '2013-10-28 00:00:00'),
(67, '6', '15', '8 Green Place', 36036, 1, 35, '+7 311 968 8911', '2013-02-11 00:00:00'),
(68, '8', '22', '6 Badeau Plaza', 37750, 2, 23, '+7 171 137 9372', '2010-02-14 00:00:00'),
(69, '53', '2', '18 Fairview Place', 26672, 1, 1, '+30 318 100 1595', '2006-05-08 00:00:00'),
(70, '14', '25', '0 Continental Trail', 62132, 2, 39, '+86 311 122 4906', '2016-12-24 00:00:00'),
(71, '8', '29', '088 Crest Line Drive', 77322, 3, 46, '+1 249 259 4665', '2001-04-14 00:00:00'),
(72, '21', '30', '80704 Badeau Center', 69018, 1, 32, '+63 514 915 4585', '2020-03-18 00:00:00'),
(73, '42', '5', '294 Northport Avenue', 29295, 3, 11, '+86 249 289 6861', '2002-11-03 00:00:00'),
(74, '39', '16', '5 Dunning Point', 64728, 4, 52, '+86 501 600 9468', '2017-12-02 00:00:00'),
(75, '37', '30', '1722 Mcbride Crossing', 69729, 1, 27, '+63 710 466 7034', '2004-09-19 00:00:00'),
(76, '11', '8', '3 Thackeray Place', 72505, 1, 9, '+63 591 219 1838', '2011-02-24 00:00:00'),
(77, '74', '22', '377 Crowley Pass', 14687, 2, 9, '+46 924 396 2024', '2018-11-19 00:00:00'),
(78, '12', '11', '57892 Dryden Lane', 22838, 4, 19, '+84 140 104 8090', '2005-06-13 00:00:00'),
(79, '57', '29', '119 Farragut Terrace', 62232, 3, 14, '+46 860 351 1584', '2021-04-22 00:00:00'),
(80, '71', '25', '1 Delladonna Parkway', 16204, 2, 2, '+86 644 882 0031', '2006-03-25 00:00:00'),
(81, '14', '20', '36 Granby Hill', 28856, 1, 2, '+86 681 546 1243', '2014-07-19 00:00:00'),
(82, '38', '28', '4 Iowa Parkway', 77560, 3, 35, '+86 403 792 6605', '2013-10-06 00:00:00'),
(83, '76', '29', '6 Sullivan Circle', 16651, 1, 43, '+1 202 633 9894', '2017-07-19 00:00:00'),
(84, '33', '29', '92025 Lien Park', 21133, 4, 5, '+260 971 480 9189', '2008-02-08 00:00:00'),
(85, '54', '3', '1228 Stephen Trail', 25574, 1, 26, '+86 277 449 9193', '2008-01-15 00:00:00'),
(86, '3', '20', '28966 Moulton Road', 35583, 3, 26, '+229 301 301 7983', '2005-09-12 00:00:00'),
(87, '61', '20', '22 Esker Court', 11913, 2, 30, '+351 256 344 3753', '2007-01-14 00:00:00'),
(88, '34', '14', '1 American Plaza', 47752, 1, 23, '+33 923 506 3997', '2012-07-28 00:00:00'),
(89, '22', '17', '9391 Colorado Avenue', 34847, 1, 49, '+86 660 147 9403', '2006-06-21 00:00:00'),
(90, '10', '9', '07 Summer Ridge Crossing', 58694, 1, 49, '+63 663 740 9942', '2005-12-03 00:00:00'),
(91, '61', '3', '3 Clyde Gallagher Avenue', 22389, 1, 36, '+976 815 410 5354', '2002-01-06 00:00:00'),
(92, '48', '25', '364 Sycamore Junction', 51200, 3, 46, '+370 258 365 8955', '2015-07-21 00:00:00'),
(93, '66', '19', '04800 Hudson Place', 42711, 2, 9, '+86 524 434 5150', '2020-06-16 00:00:00'),
(94, '1', '25', '7 Lerdahl Plaza', 26096, 3, 15, '+1 182 233 7188', '2007-08-05 00:00:00'),
(95, '66', '14', '4245 Fair Oaks Plaza', 40477, 2, 48, '+598 707 461 5765', '2017-05-29 00:00:00'),
(96, '6', '19', '5920 Maple Avenue', 35078, 4, 46, '+998 540 140 1917', '2017-09-08 00:00:00'),
(97, '47', '28', '39 Lighthouse Bay Center', 52734, 3, 2, '+46 852 385 2730', '2008-02-10 00:00:00'),
(98, '41', '18', '977 Cottonwood Junction', 32503, 1, 24, '+255 983 170 4935', '2015-07-16 00:00:00'),
(99, '59', '28', '09 Waywood Avenue', 72229, 1, 35, '+20 223 240 7384', '2003-06-16 00:00:00'),
(100, '58', '7', '52 Bay Way', 30705, 1, 19, '+62 980 656 1592', '2005-06-14 00:00:00'),
(101, '4', '6', '2 Starling Plaza', 12901, 2, 32, '+86 207 901 4518', '2009-06-14 00:00:00'),
(102, '34', '7', '8278 Crowley Crossing', 18866, 1, 25, '+63 137 708 7196', '2003-04-25 00:00:00'),
(103, '63', '19', '4 Menomonie Terrace', 28543, 4, 21, '+7 884 821 7154', '2009-04-29 00:00:00'),
(104, '37', '5', '9959 David Circle', 40224, 2, 5, '+420 355 742 0539', '2018-09-06 00:00:00'),
(105, '72', '10', '2658 Old Gate Place', 14524, 4, 49, '+63 762 848 1257', '2006-03-22 00:00:00'),
(106, '76', '7', '4823 Spaight Hill', 60412, 3, 43, '+86 354 129 7237', '2009-08-27 00:00:00'),
(107, '30', '25', '65352 Arizona Lane', 13672, 3, 1, '+7 164 692 4254', '2004-01-31 00:00:00'),
(108, '30', '26', '9270 Buena Vista Plaza', 48546, 2, 7, '+1 585 279 0421', '2011-04-27 00:00:00'),
(109, '44', '28', '5008 Kedzie Road', 50755, 4, 2, '+62 352 807 5938', '2004-09-16 00:00:00'),
(110, '36', '8', '14026 Raven Terrace', 11646, 3, 5, '+386 556 981 5107', '2006-06-20 00:00:00'),
(111, '12', '17', '85373 Truax Trail', 33130, 3, 30, '+62 112 667 5603', '2012-10-24 00:00:00'),
(112, '63', '21', '736 Mendota Road', 28768, 3, 30, '+27 140 653 0584', '2008-10-20 00:00:00'),
(113, '80', '12', '85 Mesta Parkway', 60259, 3, 15, '+7 159 577 6533', '2018-10-25 00:00:00'),
(114, '70', '23', '167 5th Road', 50681, 3, 39, '+48 781 137 2017', '2005-07-24 00:00:00'),
(115, '71', '22', '0290 Carberry Road', 61364, 1, 17, '+86 623 857 6017', '2015-01-02 00:00:00'),
(116, '31', '26', '07 Gateway Avenue', 16828, 3, 22, '+86 499 587 5547', '2002-03-13 00:00:00'),
(117, '45', '5', '2 Kensington Trail', 38669, 2, 45, '+55 707 833 8689', '2015-09-01 00:00:00'),
(118, '7', '18', '007 Hoffman Trail', 39971, 3, 2, '+351 518 671 1319', '2001-10-09 00:00:00'),
(119, '24', '7', '0509 Farwell Place', 49984, 2, 40, '+62 697 412 5434', '2016-08-18 00:00:00'),
(120, '79', '21', '89707 Hanover Trail', 38693, 4, 1, '+385 685 962 2303', '2007-01-05 00:00:00'),
(121, '48', '8', '47488 Kropf Place', 40091, 1, 45, '+86 408 636 7121', '2018-06-16 00:00:00'),
(122, '35', '8', '24699 Vermont Circle', 28220, 1, 27, '+34 933 876 3635', '2001-12-27 00:00:00'),
(123, '27', '20', '9 Killdeer Junction', 36217, 1, 44, '+62 729 670 3447', '2019-05-18 00:00:00'),
(124, '16', '24', '319 Dexter Parkway', 11021, 1, 44, '+48 817 637 7826', '2004-04-30 00:00:00'),
(125, '49', '13', '7882 Fair Oaks Avenue', 75665, 2, 6, '+593 685 304 4955', '2008-06-26 00:00:00'),
(126, '56', '14', '67 Mcbride Place', 64027, 3, 38, '+351 186 278 5705', '2002-10-05 00:00:00'),
(127, '46', '18', '60 Vahlen Lane', 65792, 2, 40, '+81 403 286 7283', '2018-09-14 00:00:00'),
(128, '78', '7', '0 Hoepker Center', 10341, 4, 9, '+86 141 357 0876', '2012-11-09 00:00:00'),
(129, '80', '7', '10 Almo Circle', 41986, 3, 22, '+975 894 385 7776', '2007-12-11 00:00:00'),
(130, '9', '7', '65 Mifflin Avenue', 27728, 3, 6, '+47 586 560 7972', '2009-05-20 00:00:00'),
(131, '27', '10', '694 Corscot Crossing', 38683, 1, 2, '+995 628 856 4555', '2002-10-13 00:00:00'),
(132, '4', '11', '19843 Farmco Drive', 18393, 4, 12, '+63 182 577 5901', '2019-04-25 00:00:00'),
(133, '45', '26', '9364 Bartelt Crossing', 32595, 4, 39, '+380 977 917 2884', '2010-07-09 00:00:00'),
(134, '67', '7', '228 Red Cloud Crossing', 20505, 2, 28, '+86 405 305 4188', '2016-10-31 00:00:00'),
(135, '71', '7', '09 Mallard Court', 71517, 2, 18, '+86 151 455 0573', '2001-06-25 00:00:00'),
(136, '48', '8', '0 Fieldstone Junction', 10319, 1, 42, '+81 215 395 9734', '2002-08-15 00:00:00'),
(137, '35', '12', '512 Fairfield Circle', 47724, 2, 2, '+55 210 509 9206', '2013-09-03 00:00:00'),
(138, '33', '7', '5310 Bellgrove Drive', 24941, 3, 15, '+86 107 357 0189', '2007-08-25 00:00:00'),
(139, '39', '1', '044 Coolidge Pass', 43742, 2, 17, '+62 462 553 1389', '2004-08-03 00:00:00'),
(140, '34', '28', '92 Bobwhite Terrace', 39894, 1, 16, '+63 724 297 9094', '2013-08-24 00:00:00'),
(141, '40', '19', '4 Kipling Park', 19920, 3, 14, '+1 559 719 7331', '2012-11-03 00:00:00'),
(142, '34', '16', '0 Onsgard Pass', 72609, 1, 22, '+351 867 195 4959', '2019-03-13 00:00:00'),
(143, '45', '24', '92538 Nelson Street', 44967, 1, 20, '+86 921 526 7304', '2003-10-16 00:00:00'),
(144, '67', '26', '2691 South Road', 41734, 4, 33, '+54 299 101 9204', '2005-09-20 00:00:00'),
(145, '41', '29', '56 Graceland Pass', 17379, 4, 10, '+62 128 252 5341', '2014-07-01 00:00:00'),
(146, '43', '10', '838 Russell Pass', 45750, 1, 35, '+27 251 726 6181', '2003-03-02 00:00:00'),
(147, '23', '17', '20858 Oak Way', 54214, 4, 6, '+234 764 109 9785', '2005-09-02 00:00:00'),
(148, '61', '3', '057 Dennis Court', 15752, 4, 15, '+86 532 653 3000', '2009-08-06 00:00:00'),
(149, '23', '5', '21420 Harper Parkway', 57212, 3, 27, '+880 879 981 6758', '2006-08-08 00:00:00'),
(150, '24', '9', '9 Amoth Pass', 63724, 1, 44, '+48 825 168 9379', '2001-08-20 00:00:00'),
(151, '59', '7', '056 Goodland Parkway', 25800, 1, 16, '+420 624 963 5990', '2020-05-20 00:00:00'),
(152, '78', '20', '86508 Londonderry Road', 44541, 3, 51, '+55 851 258 9368', '2007-04-24 00:00:00'),
(153, '42', '20', '27 Corscot Center', 74046, 1, 6, '+225 863 849 5641', '2008-08-24 00:00:00'),
(154, '20', '25', '11117 Pepper Wood Terrace', 51345, 4, 10, '+995 914 209 0557', '2020-09-17 00:00:00'),
(155, '18', '9', '3463 Stang Junction', 11336, 4, 12, '+62 527 893 9248', '2002-03-04 00:00:00'),
(156, '24', '27', '70381 Bay Place', 54170, 2, 27, '+81 618 287 5256', '2011-03-25 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empleados`
--

CREATE TABLE `Empleados` (
  `id` int(11) NOT NULL,
  `nombre` char(150) DEFAULT 'NOT NULL',
  `apellidos` char(250) DEFAULT 'NOT NULL',
  `nif` char(250) DEFAULT 'NOT NULL',
  `telefono` char(100) DEFAULT 'NOT NULL',
  `tipo` enum('Cocinero','Repartidor') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Localidad`
--

CREATE TABLE `Localidad` (
  `id` int(11) NOT NULL,
  `nombre` char(150) DEFAULT 'NOT NULL',
  `id_provincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Localidad`
--

INSERT INTO `Localidad` (`id`, `nombre`, `id_provincia`) VALUES
(1, 'Algeciras', 11),
(2, 'San Roque', 11),
(3, 'Valladolid', 47),
(4, 'Cabezón del Pisuerga', 47);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pedidos`
--

CREATE TABLE `Pedidos` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_localidad` int(11) NOT NULL,
  `referencia` varchar(10) NOT NULL,
  `tipo` enum('A domicilio','Recoger en tienda') DEFAULT NULL,
  `coste_total` float NOT NULL,
  `estado` varchar(50) NOT NULL,
  `fec_alta` datetime NOT NULL,
  `fec_reparto` datetime DEFAULT NULL,
  `direccion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Productos`
--

CREATE TABLE `Productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nombre` char(250) DEFAULT NULL,
  `descripcion` text,
  `imagen` char(250) DEFAULT NULL,
  `precio` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Productos`
--

INSERT INTO `Productos` (`id`, `id_categoria`, `nombre`, `descripcion`, `imagen`, `precio`) VALUES
(1, 2, '64', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '32969', 18),
(2, 3, '24', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '34533', 27),
(3, 3, '11', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '13134', 20),
(4, 2, '35', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '47223', 42),
(5, 2, '16', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '20413', 39),
(6, 2, '40', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '70850', 41),
(7, 2, '55', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '58801', 26),
(8, 1, '10', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '28591', 36),
(9, 3, '6', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '65585', 22),
(10, 3, '14', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '26530', 4),
(11, 3, '55', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '46905', 41),
(12, 2, '23', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '35153', 12),
(13, 3, '51', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '61903', 8),
(14, 2, '22', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '10339', 1),
(15, 1, '8', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '62404', 37),
(16, 2, '30', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '50995', 40),
(17, 3, '79', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '59065', 45),
(18, 1, '78', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '45375', 29),
(19, 2, '48', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '17638', 20),
(20, 1, '57', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '50828', 22),
(21, 1, '47', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '69229', 34),
(22, 2, '18', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '13469', 22),
(23, 3, '43', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '15470', 20),
(24, 1, '56', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '60240', 16),
(25, 2, '45', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '51028', 3),
(26, 3, '35', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '60832', 43),
(27, 3, '46', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '49763', 34),
(28, 3, '73', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '66577', 7),
(29, 3, '73', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '54981', 9),
(30, 3, '80', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '13786', 20),
(31, 2, '45', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '70420', 25),
(32, 2, '27', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '66151', 44),
(33, 3, '42', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '39819', 38),
(34, 3, '4', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '17816', 25),
(35, 1, '48', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '21599', 13),
(36, 2, '60', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '26408', 39),
(37, 3, '34', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '31982', 17),
(38, 2, '46', 'Fusce consequat. Nulla nisl. Nunc nisl.', '69928', 49),
(39, 2, '67', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '50147', 17),
(40, 1, '15', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '39804', 7),
(41, 3, '39', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '60425', 29),
(42, 3, '72', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '78012', 8),
(43, 2, '44', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '63096', 10),
(44, 1, '53', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '75980', 6),
(45, 1, '60', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '33247', 47),
(46, 2, '51', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '50356', 26),
(47, 1, '51', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '32346', 46),
(48, 2, '46', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '72337', 14),
(49, 2, '76', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '66392', 41),
(50, 3, '29', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '51543', 14),
(51, 2, '71', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '58114', 7),
(52, 2, '56', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '43313', 45),
(53, 2, '60', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '21527', 48),
(54, 3, '30', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '31215', 14),
(55, 2, '74', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '10887', 8),
(56, 1, '23', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '65308', 11),
(57, 2, '61', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '76006', 16),
(58, 2, '55', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '63832', 24),
(59, 1, '75', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '49986', 36),
(60, 3, '9', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '36912', 28),
(61, 2, '4', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '44054', 12),
(62, 2, '74', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '17473', 49),
(63, 2, '51', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '46044', 7),
(64, 1, '24', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '12253', 1),
(65, 2, '27', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '18946', 49),
(66, 2, '58', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '24462', 19),
(67, 3, '22', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '11936', 49),
(68, 2, '3', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '59841', 21),
(69, 2, '48', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '33169', 11),
(70, 1, '23', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '41059', 23),
(71, 2, '40', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '64525', 47),
(72, 1, '5', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '32458', 35),
(73, 3, '55', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '28423', 52),
(74, 2, '19', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '46458', 22),
(75, 2, '71', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '56040', 12),
(76, 3, '57', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '31937', 6),
(77, 1, '73', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '36859', 23),
(78, 1, '30', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '40301', 41),
(79, 3, '3', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '73617', 49),
(80, 1, '37', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '64235', 46);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Provincias`
--

CREATE TABLE `Provincias` (
  `id` int(11) NOT NULL,
  `nombre` char(150) DEFAULT 'NOT NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Provincias`
--

INSERT INTO `Provincias` (`id`, `nombre`) VALUES
(1, 'Araba/Álava'),
(2, 'Albacete'),
(3, 'Alicante/Alacant'),
(4, 'Almería'),
(5, 'Ávila'),
(6, 'Badajoz'),
(7, 'Balears, Illes'),
(8, 'Barcelona'),
(9, 'Burgos'),
(10, 'Cáceres'),
(11, 'Cádiz'),
(12, 'Castellón/Castelló'),
(13, 'Ciudad Real'),
(14, 'Córdoba'),
(15, 'Coruña, A'),
(16, 'Cuenca'),
(17, 'Girona'),
(18, 'Granada'),
(19, 'Guadalajara'),
(20, 'Gipuzkoa'),
(21, 'Huelva'),
(22, 'Huesca'),
(23, 'Jaén'),
(24, 'León'),
(25, 'Lleida'),
(26, 'Rioja, La'),
(27, 'Lugo'),
(28, 'Madrid'),
(29, 'Málaga'),
(30, 'Murcia'),
(31, 'Navarra'),
(32, 'Ourense'),
(33, 'Asturias'),
(34, 'Palencia'),
(35, 'Palmas, Las'),
(36, 'Pontevedra'),
(37, 'Salamanca'),
(38, 'Santa Cruz de Tenerife'),
(39, 'Cantabria'),
(40, 'Segovia'),
(41, 'Sevilla'),
(42, 'Soria'),
(43, 'Tarragona'),
(44, 'Teruel'),
(45, 'Toledo'),
(46, 'Valencia/València'),
(47, 'Valladolid'),
(48, 'Bizkaia'),
(49, 'Zamora'),
(50, 'Zaragoza'),
(51, 'Ceuta'),
(52, 'Melilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tiendas`
--

CREATE TABLE `Tiendas` (
  `id` int(11) NOT NULL,
  `nombre` char(150) DEFAULT 'NOT NULL',
  `direccion` char(250) DEFAULT 'NOT NULL',
  `codigo_postal` int(10) DEFAULT NULL,
  `id_localidad` int(11) NOT NULL,
  `id_provincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ventas`
--

CREATE TABLE `Ventas` (
  `id` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Categorias`
--
ALTER TABLE `Categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Clientes`
--
ALTER TABLE `Clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_localidad` (`id_localidad`),
  ADD KEY `id_provincia` (`id_provincia`);

--
-- Indices de la tabla `Empleados`
--
ALTER TABLE `Empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Localidad`
--
ALTER TABLE `Localidad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_provincia` (`id_provincia`);

--
-- Indices de la tabla `Pedidos`
--
ALTER TABLE `Pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_empleado` (`id_empleado`),
  ADD KEY `id_localidad` (`id_localidad`);

--
-- Indices de la tabla `Productos`
--
ALTER TABLE `Productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `Provincias`
--
ALTER TABLE `Provincias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Tiendas`
--
ALTER TABLE `Tiendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_localidad` (`id_localidad`),
  ADD KEY `id_provincia` (`id_provincia`);

--
-- Indices de la tabla `Ventas`
--
ALTER TABLE `Ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_producto` (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Categorias`
--
ALTER TABLE `Categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Clientes`
--
ALTER TABLE `Clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT de la tabla `Empleados`
--
ALTER TABLE `Empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Localidad`
--
ALTER TABLE `Localidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `Productos`
--
ALTER TABLE `Productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `Provincias`
--
ALTER TABLE `Provincias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `Tiendas`
--
ALTER TABLE `Tiendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Ventas`
--
ALTER TABLE `Ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Clientes`
--
ALTER TABLE `Clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_localidad`) REFERENCES `Localidad` (`id`),
  ADD CONSTRAINT `clientes_ibfk_2` FOREIGN KEY (`id_provincia`) REFERENCES `Provincias` (`id`);

--
-- Filtros para la tabla `Localidad`
--
ALTER TABLE `Localidad`
  ADD CONSTRAINT `provincia_ibfk_1` FOREIGN KEY (`id_provincia`) REFERENCES `Provincias` (`id`);

--
-- Filtros para la tabla `Pedidos`
--
ALTER TABLE `Pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `Clientes` (`id`),
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `Empleados` (`id`),
  ADD CONSTRAINT `pedidos_ibfk_3` FOREIGN KEY (`id_localidad`) REFERENCES `Localidad` (`id`);

--
-- Filtros para la tabla `Productos`
--
ALTER TABLE `Productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `Categorias` (`id`);

--
-- Filtros para la tabla `Tiendas`
--
ALTER TABLE `Tiendas`
  ADD CONSTRAINT `provincia` FOREIGN KEY (`id_provincia`) REFERENCES `Provincias` (`id`),
  ADD CONSTRAINT `tiendas_ibfk_1` FOREIGN KEY (`id_localidad`) REFERENCES `Localidad` (`id`);

--
-- Filtros para la tabla `Ventas`
--
ALTER TABLE `Ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `Pedidos` (`id`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `Productos` (`id`);

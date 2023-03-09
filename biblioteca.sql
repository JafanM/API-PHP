-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-02-2023 a las 02:28:44
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
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `id` int(11) NOT NULL,
  `libros_id` int(11) NOT NULL,
  `prestamos_id` int(11) NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `autor` varchar(45) DEFAULT NULL,
  `anyo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multas`
--

CREATE TABLE `multas` (
  `id` int(11) NOT NULL,
  `valor` double NOT NULL,
  `fecha` date NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `prestamos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `direccion` varchar(20) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `direccion`, `telefono`, `email`) VALUES
(1, 'Sasha Taylor', 'Brielle Huff', 'Ap #263-8770 Pellent', '+57-300385', 'tincidunt.tempus@outlook.couk'),
(2, 'Lunea Mathews', 'Dolan Daugherty', '6678 Phasellus Avenu', '+57-300577', 'aliquam.eros.turpis@protonmail.edu'),
(3, 'Bree Mathis', 'Shana Campbell', '3236 Rhoncus. Road', '+57-300232', 'netus.et@outlook.org'),
(4, 'Colt Coffey', 'Madeson Cannon', '5471 Nunc Av.', '+57-300537', 'eu@yahoo.couk'),
(5, 'Xandra Norman', 'Logan Jacobs', 'Ap #924-3821 Duis St', '+57-300502', 'et.ultrices@hotmail.ca'),
(6, 'Kuame Foster', 'Palmer Hodge', '867-1173 Aliquet Str', '+57-300366', 'convallis@outlook.couk'),
(7, 'Demetrius Woods', 'Wynne Francis', 'P.O. Box 154, 2197 A', '+57-300213', 'non.luctus@outlook.org'),
(8, 'Rina Garza', 'Donovan Henson', 'P.O. Box 383, 4721 U', '+57-300182', 'magnis.dis@icloud.net'),
(9, 'Sawyer Watkins', 'Calista Hayden', 'Ap #956-8407 Luctus.', '+57-300027', 'cursus.et.eros@protonmail.couk'),
(10, 'Kamal Sellers', 'Brianna Leach', '734-7142 Aliquet Ave', '+57-300771', 'arcu.vestibulum@outlook.com'),
(11, 'Rose Bryan', 'Hermione Hebert', 'P.O. Box 104, 7740 C', '+57-300174', 'consequat@outlook.couk'),
(12, 'Illana Ford', 'Nita Fox', '4472 Suscipit Road', '+57-300672', 'felis.eget@google.net'),
(13, 'Iris Lambert', 'Bradley Roman', '785-147 Amet St.', '+57-300032', 'non.feugiat@icloud.com'),
(14, 'Acton Church', 'Hadley Kerr', '1483 Et St.', '+57-300407', 'dictum.eu@protonmail.edu'),
(15, 'Ian Boyer', 'Serina William', 'Ap #314-5867 Arcu St', '+57-300242', 'ut.nisi@hotmail.org'),
(16, 'May Curry', 'Cody Nelson', '4772 Auctor St.', '+57-300714', 'vitae.mauris.sit@outlook.ca'),
(17, 'Macaulay Savage', 'Oliver Mccall', '918-4411 Nec, St.', '+57-300063', 'neque@google.couk'),
(18, 'Orson Park', 'Kibo Merritt', '663-7626 Non Road', '+57-300794', 'nulla@protonmail.net'),
(19, 'Macy Chaney', 'Abel Walls', 'Ap #760-4384 Mollis ', '+57-300624', 'aliquam.enim@yahoo.com'),
(20, 'Patricia Pickett', 'Lynn Waller', '681-9343 Urna, Rd.', '+57-300565', 'nunc.mauris.elit@google.edu'),
(21, 'Harriet Finley', 'Dorian Palmer', 'Ap #608-4641 Ornare,', '+57-300722', 'nec@aol.couk'),
(22, 'Dara Crane', 'Hasad Murphy', 'Ap #604-5316 Erat Rd', '+57-300523', 'fringilla.mi@hotmail.ca'),
(23, 'Samuel Fleming', 'Brett Stephenson', '2193 Ullamcorper, St', '+57-300819', 'vestibulum.mauris.magna@icloud.couk'),
(24, 'Cassidy Gonzales', 'Melinda Hale', '7196 Sed St.', '+57-300695', 'dui.in@icloud.com'),
(25, 'Shoshana Morin', 'Tiger Neal', 'Ap #909-9196 Egestas', '+57-300802', 'dapibus.id.blandit@protonmail.com'),
(26, 'Emi Pitts', 'Nissim Boyle', '759-5941 Nulla Rd.', '+57-300118', 'ornare.lectus.justo@protonmail.ca'),
(27, 'Geoffrey Nunez', 'Xavier Petersen', '865-4443 Amet, Stree', '+57-300088', 'sodales.mauris.blandit@outlook.com'),
(28, 'Macy Banks', 'Steven Terrell', '437-2922 Sed Road', '+57-300296', 'dictum.eleifend.nunc@google.com'),
(29, 'Camille Rosales', 'Sylvester Torres', 'Ap #239-5435 Eu Stre', '+57-300551', 'vehicula.aliquet.libero@protonmail.net'),
(30, 'Leila Summers', 'Adara Hill', 'P.O. Box 248, 6818 I', '+57-300633', 'ridiculus.mus@hotmail.com'),
(31, 'Brenda Brown', 'Brett Robbins', '400-1309 Arcu. Stree', '+57-300105', 'justo@hotmail.edu'),
(32, 'Autumn Blevins', 'Karleigh Weiss', 'P.O. Box 629, 5536 N', '+57-300967', 'blandit.nam@google.edu'),
(33, 'Rylee Campbell', 'Haviva Aguilar', '162-4341 Orci. Road', '+57-300331', 'netus.et.malesuada@hotmail.org'),
(34, 'Coby Humphrey', 'Upton Blanchard', '142-2963 Auctor Av.', '+57-300517', 'morbi.metus@aol.ca'),
(35, 'Reed Rollins', 'Berk Mcdowell', '9471 Vehicula Street', '+57-300282', 'porttitor@icloud.edu'),
(36, 'Todd Emerson', 'Lamar Dawson', 'P.O. Box 915, 5504 S', '+57-300857', 'non.feugiat@hotmail.edu'),
(37, 'Nash Mcintosh', 'Robin Brady', '547-378 Feugiat Road', '+57-300549', 'eget.varius@yahoo.com'),
(38, 'Adria Prince', 'Phoebe Conner', 'Ap #178-6102 Magna. ', '+57-300926', 'velit.pellentesque@google.com'),
(39, 'Burton Moore', 'Edward Marks', '899-7257 Sed Ave', '+57-300431', 'nec@yahoo.net'),
(40, 'Garrison Frost', 'Kibo Holden', 'P.O. Box 998, 6062 N', '+57-300519', 'id@protonmail.net'),
(41, 'Lee Frost', 'Driscoll Thomas', '188-1236 Lorem, Av.', '+57-300932', 'ligula.tortor.dictum@yahoo.couk'),
(42, 'Giacomo Sears', 'Neil Ellis', '502-9932 Aliquam Av.', '+57-300748', 'nam.tempor.diam@protonmail.org'),
(43, 'Linda Elliott', 'Jordan Howell', 'Ap #583-7684 Tempus ', '+57-300890', 'a.dui.cras@aol.edu'),
(44, 'Nathan Mann', 'Serina Ferguson', '1888 Vestibulum, Roa', '+57-300104', 'tincidunt.aliquam.arcu@aol.ca'),
(45, 'Austin Stewart', 'Baxter Kline', '571-8090 Nunc St.', '+57-300862', 'lacus.varius.et@icloud.edu'),
(46, 'Denton Martinez', 'Lawrence Savage', 'Ap #969-343 Ut, Av.', '+57-300115', 'pede.sagittis@hotmail.net'),
(47, 'Denton Sheppard', 'Dai Summers', 'Ap #307-3386 Enim. R', '+57-300004', 'pellentesque@yahoo.couk'),
(48, 'Indigo Baxter', 'Raja Fulton', '9141 A Av.', '+57-300773', 'quisque.purus@yahoo.net'),
(49, 'Zeph Riley', 'Aspen Horton', '917-5454 Curae Rd.', '+57-300125', 'cras@aol.com'),
(50, 'Dara Barrett', 'Jaden Bell', 'Ap #304-5439 At, Str', '+57-300342', 'enim.diam@google.com'),
(51, 'Kelly Mcmillan', 'William Sherman', '3816 Neque. Road', '+57-300175', 'arcu.nunc.mauris@google.ca'),
(52, 'Dean Mosley', 'Jerome Cantu', 'P.O. Box 865, 7448 A', '+57-300683', 'consectetuer.adipiscing@yahoo.net'),
(53, 'Kirk Lee', 'Fitzgerald Bell', '6621 Amet Av.', '+57-300827', 'integer.vulputate@outlook.net'),
(54, 'Sarah Salinas', 'Aladdin Rutledge', 'Ap #703-314 Aliquet ', '+57-300089', 'est.ac@protonmail.edu'),
(55, 'Shafira Horn', 'Noelle Jordan', '444-4279 Erat, Ave', '+57-300175', 'nunc.risus@outlook.couk'),
(56, 'Whitney Salas', 'Keely Jones', '1365 Dictum St.', '+57-300437', 'ante@yahoo.com'),
(57, 'Veronica Rocha', 'Simon Finley', 'Ap #174-5073 Magna. ', '+57-300855', 'lectus@protonmail.net'),
(58, 'Charity Rush', 'Jesse Maxwell', '109-7243 Iaculis Ave', '+57-300832', 'augue.sed@yahoo.edu'),
(59, 'Mollie Pate', 'Rahim Byrd', '782-1453 Fringilla. ', '+57-300908', 'felis.purus.ac@hotmail.couk'),
(60, 'Dustin Santos', 'Wanda Cameron', '2372 Gravida Ave', '+57-300346', 'magnis@yahoo.org'),
(61, 'Veronica Hobbs', 'Mohammad Griffin', '286-3796 Non, Rd.', '+57-300366', 'fermentum@hotmail.com'),
(62, 'Troy Dillon', 'Tad Norris', 'Ap #439-2598 Luctus.', '+57-300389', 'ac.fermentum@icloud.ca'),
(63, 'Quyn Church', 'Hamilton Logan', '827-4418 Semper Rd.', '+57-300352', 'ac.metus@aol.net'),
(64, 'Hedy Harvey', 'Amaya Cardenas', '8697 Urna Av.', '+57-300143', 'mauris.sagittis@aol.edu'),
(65, 'Velma Pugh', 'Jacqueline Brock', 'Ap #617-5266 Risus. ', '+57-300865', 'nulla.eget@yahoo.org'),
(66, 'Macon Hubbard', 'Neville Velez', 'Ap #930-3821 Nec Str', '+57-300857', 'velit.quisque@icloud.net'),
(67, 'Rae Fitzgerald', 'Emerson Jennings', '636-6327 Tellus. Ave', '+57-300945', 'nunc@aol.net'),
(68, 'Craig Sellers', 'Abel Mcintyre', 'Ap #101-2667 Non Ave', '+57-300931', 'suspendisse@google.net'),
(69, 'Zachery Hudson', 'Ulysses Rice', '892-5006 Donec Stree', '+57-300555', 'et.pede.nunc@icloud.net'),
(70, 'Isaac Mann', 'Blaze Blackwell', '894-9724 Cras Street', '+57-300176', 'etiam@icloud.com'),
(71, 'Akeem Rodgers', 'Clare Patrick', 'P.O. Box 834, 4092 E', '+57-300772', 'morbi.quis@protonmail.org'),
(72, 'Michael Weeks', 'Hasad Howard', '4485 Neque St.', '+57-300462', 'hendrerit.donec@icloud.ca'),
(73, 'Knox Ware', 'Alexander Welch', '3417 Turpis. Road', '+57-300245', 'in@outlook.ca'),
(74, 'Wynne Miranda', 'Melodie Cross', 'Ap #185-8816 Mauris ', '+57-300727', 'fusce@aol.com'),
(75, 'Hall Crawford', 'Clio Sherman', 'Ap #536-9452 Egestas', '+57-300931', 'libero.at@yahoo.edu'),
(76, 'Patricia Gallagher', 'Arthur Aguilar', '579-4627 Nunc Road', '+57-300246', 'blandit@icloud.couk'),
(77, 'Kelly Neal', 'Julie Wheeler', 'Ap #525-7472 Arcu St', '+57-300784', 'feugiat.lorem@icloud.com'),
(78, 'Jaden Ayala', 'Hasad Kane', '742-9645 Magna Rd.', '+57-300298', 'diam.nunc@google.org'),
(79, 'Hamish Meyer', 'Valentine Keller', 'Ap #396-2737 Est Ave', '+57-300598', 'tellus@hotmail.couk'),
(80, 'Zorita Long', 'Conan Dillon', '640-6825 Phasellus A', '+57-300046', 'nec@outlook.com'),
(81, 'Patrick Wiley', 'Madonna Lane', 'Ap #389-5871 Cursus,', '+57-300635', 'at.augue.id@icloud.edu'),
(82, 'TaShya Cohen', 'Madaline Britt', '1356 Vitae, Street', '+57-300441', 'eleifend.egestas.sed@outlook.edu'),
(83, 'Clio Macias', 'Ursa Lindsay', '892-3360 Tincidunt A', '+57-300768', 'primis.in@protonmail.org'),
(84, 'Dora Mckay', 'Eliana Huff', '1845 Vitae Road', '+57-300929', 'lorem.fringilla.ornare@protonmail.edu'),
(85, 'Denise Humphrey', 'David Davis', 'Ap #945-1388 Consect', '+57-300715', 'sed.consequat@aol.net'),
(86, 'Kirk Rowe', 'Oliver Cohen', '5368 Ipsum Av.', '+57-300647', 'luctus@hotmail.edu'),
(87, 'Rina Caldwell', 'Hope Cantu', 'P.O. Box 465, 8183 C', '+57-300352', 'neque.vitae.semper@protonmail.com'),
(88, 'Bruno Rodriquez', 'Harding Ayers', '5647 Eget, Road', '+57-300369', 'ipsum.sodales.purus@hotmail.ca'),
(89, 'Finn Mathews', 'Logan Graves', 'Ap #843-5015 Ferment', '+57-300307', 'aenean@hotmail.org'),
(90, 'Kamal Hawkins', 'Violet Mcclure', 'Ap #214-5325 Sed Roa', '+57-300315', 'nulla.vulputate@aol.ca'),
(91, 'Sybil Compton', 'Nola Callahan', '8225 Id Road', '+57-300358', 'urna.suscipit@aol.org'),
(92, 'Chase Gutierrez', 'Samuel Briggs', '361-6338 Penatibus S', '+57-300668', 'maecenas.ornare@hotmail.edu'),
(93, 'Todd Harrell', 'Margaret Hill', '405-5024 Tincidunt R', '+57-300586', 'in.faucibus@google.couk'),
(94, 'Christine Hewitt', 'Bevis Dominguez', '350-8552 Magna St.', '+57-300411', 'orci.adipiscing@hotmail.net'),
(95, 'Finn Pacheco', 'Mona Washington', 'Ap #131-7892 Vel Str', '+57-300374', 'morbi.non.sapien@hotmail.ca'),
(96, 'Kuame Payne', 'Gregory Lindsay', '8076 Convallis, Stre', '+57-300177', 'vulputate.risus@google.ca'),
(97, 'Candace Hayes', 'Uta Andrews', 'P.O. Box 944, 8217 I', '+57-300116', 'in@google.ca'),
(98, 'Renee Mann', 'Ebony Duncan', 'Ap #487-7471 Pede, S', '+57-300795', 'enim.suspendisse@aol.com'),
(99, 'Michael Haynes', 'Zenia Norman', 'P.O. Box 125, 8153 L', '+57-300603', 'erat@google.com'),
(100, 'Dillon Summers', 'Rylee Eaton', '1621 A St.', '+57-300792', 'cursus.et@hotmail.couk'),
(101, 'Zenia Frank', 'Steel Cobb', '612-8643 Sodales Roa', '+57-300142', 'elit@hotmail.couk'),
(102, 'Chiquita Dean', 'Sebastian Mendez', '1503 Nec St.', '+57-300202', 'libero.proin@yahoo.com'),
(103, 'Aaron Frye', 'Callie Curtis', 'P.O. Box 448, 2764 F', '+57-300345', 'vulputate.velit.eu@hotmail.edu'),
(104, 'Allistair Larson', 'Aaron Harris', '368-4174 Dictum Rd.', '+57-300748', 'dignissim@yahoo.net'),
(105, 'Naomi Harrison', 'Desiree Rutledge', '549-9047 Duis Rd.', '+57-300815', 'tristique.pellentesque@protonmail.couk'),
(106, 'Price Newton', 'Shannon Mendoza', 'Ap #279-3144 Mattis.', '+57-300637', 'mauris.vestibulum.neque@google.couk'),
(107, 'Ignatius Huber', 'Wylie Heath', 'P.O. Box 465, 6766 S', '+57-300581', 'convallis@icloud.org'),
(108, 'Quon Dotson', 'Rina Petty', 'Ap #549-1339 Augue R', '+57-300631', 'aliquam.nisl@icloud.ca'),
(109, 'McKenzie Joyner', 'Oren Cox', 'P.O. Box 651, 6185 I', '+57-300866', 'duis.risus@hotmail.com'),
(110, 'Dane Mcgowan', 'Chaim Oneil', 'P.O. Box 853, 1351 O', '+57-300517', 'cubilia.curae@icloud.edu'),
(111, 'Garrett Robles', 'Joshua Leonard', '239-3508 At Avenue', '+57-300815', 'phasellus.vitae@outlook.org'),
(112, 'Marvin Curry', 'Kylie Jordan', '127-224 Elit St.', '+57-300931', 'senectus.et@google.org'),
(113, 'Kalia Fuller', 'Rachel Mitchell', '2364 Tristique St.', '+57-300803', 'quisque.fringilla@yahoo.couk'),
(114, 'Lavinia Williamson', 'Zoe O\'brien', '555 Magna, Av.', '+57-300873', 'aliquet.vel@protonmail.org'),
(115, 'Thor Abbott', 'Richard Noel', '7149 Cum Avenue', '+57-300133', 'duis.risus@google.couk'),
(116, 'Teagan Delacruz', 'Maite Manning', 'Ap #795-3142 Erat Av', '+57-300749', 'curabitur.dictum@protonmail.couk'),
(117, 'Medge Compton', 'Samson Holman', '579-5181 In Av.', '+57-300546', 'urna.nunc@protonmail.couk'),
(118, 'Lila Baker', 'Kevyn Drake', 'P.O. Box 924, 9451 E', '+57-300530', 'justo.proin@outlook.com'),
(119, 'Orlando Alston', 'Wing Munoz', '613-4553 Vitae, Rd.', '+57-300819', 'tincidunt.donec@outlook.com'),
(120, 'Ainsley Holloway', 'Yen White', '780-8148 Quis, Av.', '+57-300846', 'vitae.velit@aol.net');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libros_id` (`libros_id`),
  ADD KEY `prestamos_id` (`prestamos_id`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `multas`
--
ALTER TABLE `multas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prestamos_id` (`prestamos_id`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_id` (`usuarios_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `multas`
--
ALTER TABLE `multas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `detalles_ibfk_1` FOREIGN KEY (`libros_id`) REFERENCES `libros` (`id`),
  ADD CONSTRAINT `detalles_ibfk_2` FOREIGN KEY (`prestamos_id`) REFERENCES `prestamos` (`id`);

--
-- Filtros para la tabla `multas`
--
ALTER TABLE `multas`
  ADD CONSTRAINT `multas_ibfk_1` FOREIGN KEY (`prestamos_id`) REFERENCES `prestamos` (`id`);

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

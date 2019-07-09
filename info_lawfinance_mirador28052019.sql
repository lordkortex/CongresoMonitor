-- phpMyAdmin SQL Dump
-- version 4.4.14.1
-- http://www.phpmyadmin.net
--
-- Host: 50.62.209.122:3306
-- Generation Time: Oct 22, 2015 at 09:01 PM
-- Server version: 5.5.43-37.2-log
-- PHP Version: 5.5.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `info_lawfinance_mirador`
--

-- --------------------------------------------------------

--
-- Table structure for table `comision_dicatminadora_diputado`
--

CREATE TABLE IF NOT EXISTS `comision_dicatminadora_diputado` (
  `id_comision_diputado` int(11) NOT NULL,
  `id_diputado` int(11) NOT NULL,
  `id_comision_dictaminadora` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=179 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comision_dicatminadora_diputado`
--

INSERT INTO `comision_dicatminadora_diputado` (`id_comision_diputado`, `id_diputado`, `id_comision_dictaminadora`) VALUES
(110, 95, 6),
(12, 133, 20),
(49, 69, 7),
(50, 47, 7),
(13, 91, 20),
(14, 74, 20),
(15, 62, 20),
(16, 154, 20),
(17, 109, 20),
(18, 87, 20),
(48, 85, 7),
(20, 7, 5),
(21, 140, 5),
(22, 138, 5),
(23, 122, 5),
(24, 80, 5),
(25, 50, 5),
(26, 49, 5),
(47, 48, 5),
(28, 61, 5),
(29, 54, 31),
(30, 96, 31),
(31, 99, 31),
(32, 68, 31),
(33, 48, 31),
(34, 161, 31),
(35, 70, 31),
(36, 162, 31),
(37, 103, 31),
(38, 153, 31),
(39, 54, 28),
(40, 53, 28),
(41, 12, 28),
(42, 102, 28),
(43, 141, 28),
(44, 135, 28),
(45, 86, 28),
(46, 92, 28),
(51, 88, 7),
(52, 62, 7),
(53, 145, 7),
(54, 137, 7),
(55, 92, 7),
(56, 5, 21),
(57, 146, 21),
(58, 54, 21),
(59, 79, 21),
(60, 101, 21),
(61, 73, 21),
(62, 123, 21),
(63, 8, 21),
(64, 118, 22),
(65, 75, 22),
(66, 162, 22),
(67, 11, 22),
(68, 57, 22),
(69, 120, 22),
(70, 123, 22),
(71, 134, 32),
(72, 82, 32),
(73, 7, 32),
(74, 72, 32),
(75, 127, 32),
(76, 110, 32),
(77, 111, 32),
(78, 73, 32),
(79, 52, 12),
(80, 12, 12),
(81, 87, 12),
(82, 67, 12),
(83, 136, 12),
(84, 158, 12),
(85, 83, 12),
(86, 75, 24),
(87, 156, 24),
(88, 2, 24),
(89, 57, 24),
(90, 122, 24),
(91, 106, 24),
(92, 119, 24),
(93, 104, 24),
(94, 138, 24),
(95, 2, 19),
(96, 149, 19),
(97, 147, 19),
(98, 102, 19),
(99, 106, 19),
(100, 79, 19),
(101, 52, 19),
(102, 56, 18),
(103, 108, 18),
(104, 140, 18),
(105, 81, 18),
(106, 74, 18),
(107, 113, 18),
(108, 68, 18),
(109, 6, 18),
(111, 56, 6),
(112, 84, 6),
(113, 100, 6),
(114, 64, 6),
(115, 5, 6),
(116, 4, 6),
(117, 134, 6),
(118, 114, 6),
(119, 76, 6),
(120, 48, 6),
(121, 53, 23),
(122, 78, 23),
(123, 142, 23),
(124, 93, 23),
(125, 55, 23),
(126, 11, 23),
(127, 124, 23),
(128, 94, 23),
(129, 77, 23),
(130, 59, 16),
(131, 78, 16),
(132, 157, 16),
(133, 119, 16),
(134, 60, 16),
(135, 103, 16),
(136, 46, 16),
(137, 63, 11),
(138, 81, 11),
(139, 129, 11),
(140, 68, 11),
(141, 111, 11),
(142, 67, 11),
(143, 156, 11),
(144, 95, 11),
(145, 60, 11),
(146, 98, 8),
(147, 76, 8),
(148, 126, 8),
(149, 101, 8),
(150, 100, 8),
(151, 143, 8),
(152, 133, 8),
(153, 71, 8),
(154, 89, 8),
(155, 113, 9),
(156, 97, 9),
(157, 71, 9),
(158, 84, 9),
(159, 59, 9),
(160, 139, 9),
(161, 126, 9),
(162, 92, 9),
(163, 129, 27),
(164, 85, 27),
(165, 63, 27),
(166, 70, 27),
(167, 133, 27),
(168, 124, 27),
(169, 91, 27),
(170, 58, 27),
(171, 132, 27),
(172, 108, 14),
(173, 74, 14),
(174, 82, 14),
(175, 93, 14),
(176, 13, 14),
(177, 55, 14),
(178, 127, 14);

-- --------------------------------------------------------

--
-- Table structure for table `comision_dictaminadora`
--

CREATE TABLE IF NOT EXISTS `comision_dictaminadora` (
  `id_comision_dictaminadora` int(11) NOT NULL,
  `comision_dictaminadora_nombre` varchar(45) DEFAULT NULL,
  `descripcion_corta` varchar(200) NOT NULL,
  `descripcion_larga` varchar(600) NOT NULL,
  `imagen` varchar(800) NOT NULL,
  `activo` smallint(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comision_dictaminadora`
--

INSERT INTO `comision_dictaminadora` (`id_comision_dictaminadora`, `comision_dictaminadora_nombre`, `descripcion_corta`, `descripcion_larga`, `imagen`, `activo`) VALUES
(1, 'Legislación y Asuntos Constitucionales', ' ', 'A esta comisión le corresponde estudiar, discutir y aprobar en primer debate constitucional, los proyectos de ley.', '', 1),
(5, 'Asuntos Electorales', ' ', 'Esta comisión se encarga de someter y manejar todo lo concerniente a reformas y modernización en asuntos y temas electorales', '', 1),
(6, 'Presupuesto', ' ', ' Es la encargada de conocer todo lo que se refiere a la aprobación y ejecución del Presupuesto General de la República, reasignaciones presupuestarías, así como la implementación de reformas fiscales y aquellos mecanismos que ayuden a mejorar su ejecución', '', 1),
(7, 'Defensa y Soberanía', ' ', ' Esta comisión se encarga de lo relacionado a la defensa de la soberanía nacional y del territorio hondureño', '', 1),
(8, 'Seguridad y Prevención Ciudadana', ' ', 'Tiene que ver con todo aquello que se refiere a la seguridad ciudadana. Analiza la aplicación de medidas de prevención. En ella se discuten todas las iniciativas de ley que vengan a mejorar la seguridad para la población hondureña', '', 1),
(9, 'Telecomunicaciones', ' ', ' La comisión de telecomunicaciones controla y vigila el cumplimiento de las leyes para un adecuado servicio y funcionamiento de las comunicaciones en el país', '', 1),
(10, 'Energía', ' ', ' Esta comisión se encarga de regular los sistemas energéticos del país. El objetivo es velar por la competencia efectiva en los sistemas de servicio de energía y por la objetividad y transparencia del funcionamiento en beneficio de la población hondureña', '', 1),
(11, 'Salud', ' ', ' La comisión de salud se encarga de velar por la aplicación de leyes en lo referente al sistema sanitario. Promueve acciones para mejorar los servicios que ofrecen los hospitales y centros asistenciales a nivel nacional', '', 1),
(12, 'Educación', ' ', ' Esta comisión se encarga de lo referente a la aplicación de políticas, legislaciones y reformas para una buena educación pública en el país. Vela por el funcionamiento de leyes y reformas encaminadas a mejorar el sistema de enseñanza aprendizaje en los centros educativos.', '', 1),
(13, 'Minería e Hidrocarburos', ' ', 'Se encarga de regular y controlar todo lo referente al manejo de la explotación minera, que la misma se haga en base a las leyes vigentes, teniendo como objetivo principal el bienestar de las comunidades.', '', 1),
(14, 'Transporte, Vivienda y Urbanismo', ' ', 'Esta comisión se encarga de controlar todo lo referente a la viabilidad y circulación de todo el sistema de transporte nacional- aplicando las leyes para lograr el cumplimiento de las normas de tránsito.', '', 1),
(15, 'Familia, La Niñez, Juventud y Adulto Mayor', ' ', 'Su labor es la de promover leyes y normas, impulsar programas preventivos que tiendan a velar por los derechos de esos sectores que estén desprotegidos o presenten algún grado de vulnerabilidad.', '', 1),
(16, 'Relaciones Internacionales e Integración Regi', ' ', 'Su labor, en conjunto con la Secretaría de Relaciones Exteriores, es la de promover y ampliar vínculos con otros países y organismos internacionales, con la mira de generar mayores vínculos de hermandad y asistencia y cooperación externa.', '', 1),
(17, 'Medio Ambiente y Cambio Climático', ' ', 'Promueve y genera leyes y normas, junto a los demás organismos del Estado, que protejan el medio ambiente y que su explotación sea de forma racional así como promover a través de iniciativas de ley la prevención de los efectos de fenómenos como el cambio climático', '', 1),
(18, 'Finanzas y Cooperación Externa', ' ', ' Junto a las autoridades del gabinete económico, Secretaría Finanzas o el Banco Central de Honduras, la comisión se encarga de analizar y dictaminar iniciativas orientadas a respaldar la política monetaria, fiscal y cambiaria del país así como la promoción de inversiones nacionales y extranjeras.', '', 1),
(19, 'Ética y Transparencia', ' ', ' Vela por el comportamiento, tanto a lo interno del Congreso Nacional, en particular y en general porque en el país se fomente la cultura de la transparencia y la rendición de cuentas a fin de combatir el flagelo de la corrupción.', '', 1),
(20, 'Agricultura y Ganadería', ' ', ' Propone, analiza y dictaminan leyes que faciliten programas o proyectos que den impulso a la producción nacional, tanto agrícola como ganadera, así como para normar procesos que generen ambiente propicio para la producción agropecuaria.', '', 1),
(21, 'Deporte y Prevención Social', ' ', 'Presenta iniciativa, analizas y dictaminan leyes que impulsen el desarrollo del deporte, la promoción de espacios públicos donde la gente practique distintas disciplinas, como formas de prevención de los problemas sociales.', '', 1),
(22, 'Desarrollo y Protección Social', ' ', ' Engloba todo lo que tiene que ver con programas en beneficio de los sectores sociales más vulnerables lo que conlleve a mejorar la calidad de vida de los hondureños.', '', 1),
(23, 'Promoción de Inversiones', ' ', ' Contribuye, junto a otros los entes del sector público y la empresa privada, a promover fuentes de empleo y atracción de inversiones a través del dictamen de normativas que persigan ese fin.', '', 1),
(24, 'Equidad de Género', ' ', ' Tiene como objetivo velar porque se respeten y se cumpla la igualdad de derechos de las personas de ambos sexos, para evitar cualquier tipo de discriminación.', '', 1),
(25, 'Enlace con la Sociedad Civil y Participación ', ' ', 'Está en contacto con las distintas organizaciones de sociedad civil, ya sea para atender pedidos de nuevas leyes o de respeto a las mismas, en cuanto a los derechos de la ciudadanía y el desarrollo de las comunidades.', '', 1),
(26, 'Modernización y Comunicación Institucional', ' ', ' Su labor se enmarca en impulsar y crear leyes que tiendan a la modernización del aparato del Estado, para hacerlo ágil y transparente, mediante una mayor comunicación.', '', 1),
(27, 'Trabajo y Asuntos Gremiales', ' ', ' Atiende las distintas demandas del sector laboral, organizado o no y se involucra en asuntos gremiales cuando se le requiere y que sean de su competencia', '', 1),
(28, 'Ciencia y Tecnología', ' ', ' Impulsa acciones que tiendan a modernizar el aparato del Estado mediante la tecnología digital. Impulsa acciones para mejorar la capacidad el hondureño en ese campo.', '', 1),
(29, 'Enlace con Grupos Indígenas y Afro-hondureño', ' ', 'Su labor es de enlace con los distintos grupos étnicos del país, en atención a demandas, aplicación de normas y reclamo de derechos, así como presentar iniciativas o dictaminar iniciativas para mejorar la calidad de vida de los pueblos indígenas y afrodescendientes preservando su identidad, cultura, costumbres y lengua.', '', 1),
(30, 'Justicia y Derechos Humanos', ' ', ' Su papel primordial es estar pendiente de las denuncias de violaciones a los derechos humanos y trabajar junto a organizaciones civiles defensoras de derechos humanas para vigilar que no se vulneren los derechos fundamentales enunciados en la Declaración Universal de los Derechos Humanos de las Naciones Unidas y la Constitución de la República.', '', 1),
(31, 'Asuntos Regionales, Departamentales y Municip', ' ', 'Se encarga de promover, presentar, analizar y dictaminar, iniciativas de fortalecimiento a los gobiernos locales y su empoderamiento al igual que las regiones y los 18 departamentos del país.', '', 1),
(32, 'Economía Social', ' ', ' Promueve iniciativas orientadas al fortalecimiento de la economía social, principalmente de los pequeños emprendedores y las micro, pequeñas y medianas empresas.', '', 1),
(43, 'No Aplica', '', '', '', 0),
(45, 'Especial ', ' ', 'Las comisiones especiales son las integradas por el Presidente para conocer los proyectos de decreto, asuntos particulares, urgentes o aquellos asuntos que le sean asignados por él.', '', 1),
(46, '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `detalle_intervencion`
--

CREATE TABLE IF NOT EXISTS `detalle_intervencion` (
  `id_detalle_intervencion` int(11) NOT NULL,
  `id_sesion_proyecto` int(11) NOT NULL,
  `id_diputado` int(11) NOT NULL,
  `intervencion_texto` varchar(1800) DEFAULT NULL,
  `intervencion_fecha_creacion` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detalle_intervencion`
--

INSERT INTO `detalle_intervencion` (`id_detalle_intervencion`, `id_sesion_proyecto`, `id_diputado`, `intervencion_texto`, `intervencion_fecha_creacion`) VALUES
(1, 1, 4, 'prueba ', '2015-03-08 10:49:09'),
(2, 1, 13, 'otra prueba ', '2015-03-08 10:49:23'),
(3, 2, 4, 'manuel  ', '2015-03-09 12:28:28'),
(4, 3, 98, 'Que se agregue a la moción que no sea una simple nota, sino que la comisión especial de energía, mas los diputados de los departamentos afectados por la no aplicación de esta disposición con la gerencia de la ENEE. ', '2015-03-09 09:57:22'),
(5, 4, 125, 'Sugiere que los diputados de FM se reunan y den forma a la idea para ayudar a los afectados por el incendio. ', '2015-03-09 09:58:43'),
(6, 4, 48, 'Aclara que una mocion debe tenerbuna idea especifica o solicitud ya sea verbal o escrita. ', '2015-03-09 09:59:23'),
(7, 4, 80, 'Consulta sobre el fondo, ¿si es moción, manifestación o charla? ', '2015-03-09 10:00:29'),
(8, 4, 135, 'agrega que debe incluirse que se aprueben 3 millones de Lempiras para ayuda a los afectados del incendio. ', '2015-03-09 10:01:43'),
(9, 4, 125, 'Aclaro la idea de Beatriz Valle debe ser presentado vía decreto. ', '2015-03-09 10:02:39'),
(10, 4, 97, 'Expreso que debe presentarse decreto que obligue a que las compañías distribuidoras de gas LPG lo realicen en tanques de la calidad del primer mundo así como un fondo de prevención de incidentes de este tipo. ', '2015-03-09 10:10:24'),
(11, 4, 76, 'Respalda la propuesta para revisar los protocolos de atención de emergencia. ', '2015-03-09 10:11:57'),
(12, 4, 138, 'Los hospitales  no cuentan con los recursos necesarios por eso creo que se debe agregar que venga al congreso nacional la ministra de salud para que explique que se puede hacer para ese tipo de situación del por que del desabastecimiento de medicamentos. ', '2015-03-09 10:17:24'),
(13, 8, 135, 'hace la anotacion que en el art. 400 se hizo omision de las palabras Derechos de Servidumbre tal cual aparece en el Codigo, Oswaldo Ramos acepto la sugerencia y remitio la misma a la Comision de estilo para su correccion. ', '2015-03-09 10:22:48'),
(14, 16, 4, 'prieba ', '2015-03-09 10:01:57'),
(15, 16, 65, 'otra prueba ', '2015-03-09 10:02:19'),
(16, 18, 107, 'sin conexion  ', '2015-03-09 11:28:56'),
(17, 16, 58, 'djdbdjdndjdjd\ndjdbdjdndjdjd\ndndmdmmd\n\n\ninició\ndifundir\ndjdbdjdndjdjd\ndjdbdjdndjdjd\ndndmdmmd\ndjdbdjdndjdjd\n\n\nfin\n\ndndmdmmd\ndjdbdjdndjdjd\nJudith\n\nfinal  ', '2015-03-09 11:38:17'),
(18, 18, 107, 'Hola\namigos\nde\nCuba libre\nque\n\n\n\nestán\nal otro\nlado\ndel\nCaribe\n ', '2015-03-14 01:59:25'),
(19, 18, 177, 'esta es una nueva ijyervrncion\n\n\nlegítima\n\nfinal\n\nde\nla\nijtervenciob ', '2015-03-14 02:00:23'),
(20, 18, 107, 'gialala ', '2015-03-14 02:00:57'),
(21, 18, 64, 'maur. \n\npolicia \n\nmilitar \n\n\nde\nhonduras ', '2015-03-14 02:01:34'),
(22, 20, 178, 'prueba policía militar policia  ', '2015-03-15 03:16:57'),
(23, 20, 64, 'policia. militar  ', '2015-03-15 03:18:55'),
(24, 21, 180, 'test ', '2015-03-15 03:46:20'),
(25, 21, 180, 'nuevo test ', '2015-03-15 03:46:33'),
(26, 22, 95, 'No se escucho dentro de la lista del proyecto para inauguracion de aerodromos, los ya construidos en Tela, La Ceiba, así como excluir impuestos de ganacia de capital de los mismos. ', '2015-03-15 03:59:56'),
(27, 23, 95, 'No se escuchó dentro de la lista del proyecto para inauguración de aeródromos el El Aguacate, Olancho. ', '2015-03-15 04:08:17'),
(28, 23, 105, 'Presentó reconsideración para incluir dentro de la lista de aeródromos los ya construidos en Tela, La Ceiba, así como excluir impuestos de ganancia de capital de los mismos. ', '2015-03-15 04:09:50'),
(29, 24, 82, 'Solicitó dispensa de debates. ', '2015-03-15 04:12:27'),
(30, 28, 90, 'Solicitó dispensa de debates. ', '2015-03-15 04:33:12'),
(31, 28, 127, 'Exige se vea situación de la comunidad de Yarumela y su alcantarillado, al igual que Marcala. ', '2015-03-15 04:34:02'),
(32, 32, 65, 'test ', '2015-03-15 04:48:37'),
(33, 39, 56, 'Consulto como queda la figura del intermediario en el art. 4, sobre definiciones. ', '2015-03-15 06:49:07'),
(34, 39, 147, 'Pregunto si el termino es facturación. ', '2015-03-15 06:49:31'),
(35, 39, 154, 'Pidió explicación de la relación del Estado y empresas, ya que en Honduras operan transnacionales de servicios de internet y debe existir garantía que el Estado mantendrá el control y seguridad en el manejo de estas transacciones. ', '2015-03-15 06:50:59'),
(36, 39, 155, 'Como miembro de la Comisión sugirió que se hubiera llevado la técnica legislativa leyendo cada concepto por separado. ', '2015-03-15 06:51:52'),
(37, 39, 187, 'Que pasaría en el caso de usurpación de firmas, que mecanismo habrá para prevención del tema. ', '2015-03-15 06:52:51'),
(38, 39, 126, 'Planteamiento para que mensaje de datos se entienda como actividad comercial, y el intercambio de datos aglomerando 3 conceptos en uno solo.\n\nAl respecto Rasel Tome aclaro que estan separadas en varios numerales. ', '2015-03-15 06:54:20'),
(39, 43, 92, 'Solicitó dispensa de debates. ', '2015-03-15 07:04:19'),
(40, 43, 47, 'Sugiere se incluya dentro del proyecto: la inclusión de una programación por parte de la Secretaria de Seguridad sobre la entrega de las hojas de antecedentes, para que la gente sepa que día debe retornar por ella. (aprobada) ', '2015-03-15 07:05:47'),
(41, 43, 138, 'Opinó se incluya también el canon de los antecedentes judiciales. (no aprobada) ', '2015-03-15 07:06:30'),
(42, 43, 155, 'Se pronunció a favor. ', '2015-03-15 07:06:44'),
(43, 25, 76, 'Solicitó dispensa de debates. ', '2015-03-15 07:18:51'),
(44, 25, 133, 'A favor de los ascensos, pero no esta de acuerdo como bancada en apoyar personas que han tenido denuncias por violación a los derechos humanos. ', '2015-03-15 07:20:29'),
(45, 25, 158, 'De acuerdo con la postura de César Agurcia. ', '2015-03-15 07:21:03'),
(46, 25, 155, 'Opinó que se debe reformar el proceso de ascensos. ', '2015-03-15 07:21:28'),
(47, 25, 135, 'De acuerdo con opinion de Rasel Tome. ', '2015-03-15 07:21:52'),
(48, 25, 126, 'En contra del proceso, por falta de transparencia en el mismo, pues no se les brindo tiempo como bancada para razonar su voto. (Se le retiro la palabra por estar fuera de orden). ', '2015-03-15 07:23:06'),
(49, 63, 76, 'Solicitó dispensa de debates. ', '2015-03-21 01:21:59'),
(50, 63, 133, 'A favor de los ascensos,pero no están de acuerdo como bancada en apoyar personas que han tenido denuncias por violación de derechos humanos, en la misma postura Wilfredo Paz, Rassel Tome y Beatriz Valle, también opinaron se deben reformar los procesos de ascensos. ', '2015-03-21 01:25:46'),
(51, 64, 90, 'Solicitó dispensa se debates. ', '2015-03-21 01:32:48'),
(52, 65, 95, 'Solicitó dispensa de debate.  ', '2015-03-21 01:38:44'),
(53, 65, 152, 'A favor.  ', '2015-03-21 01:39:08'),
(54, 65, 150, 'A favor.  ', '2015-03-21 01:39:26'),
(55, 67, 154, 'Propone se tome en cuenta la sugerencia sobre la inclusión de comunidades no sólo étnicas, sino a aquellos que practican la pesca artesanal. ', '2015-03-21 01:54:55'),
(56, 68, 47, 'Intervención.  ', '2015-03-21 02:08:20'),
(57, 69, 135, 'Se proclama en contra de la representación de la bancada del partido libre, ya que no se puede ratificar algo a lo cual se le puede hacer cambios.  ', '2015-03-21 02:12:35'),
(58, 69, 51, 'Se proclama en contra de la representación del partido liberal.  ', '2015-03-21 02:13:21'),
(59, 70, 97, 'Dice que no es correcto utilizar la denominación indígenas y afrohondureños.\n\nSe genero debate a partir de esta intervención. ', '2015-03-29 07:31:38'),
(60, 70, 109, 'Como Presidente de la Comisión Dictaminadora dispuso que la ultima palabra sobre los termino indígena y afrohondureño, lo manejara la comisión de estilo. ', '2015-03-29 07:33:22'),
(61, 70, 52, 'Propuso sustituir las palabras "llegar a cabo" por "realizar" en el articulo 12. ', '2015-03-29 07:34:40'),
(62, 70, 109, 'Propone nueva redacción para el arte. 13 literales f y h.\n\nTambién agrego un nuevo párrafo en el art. 13 sobre que la Conopesca y la digipesca contaran con un asesor. ', '2015-03-29 07:37:01'),
(63, 70, 154, 'Agrego al arte. 13 inciso b para agregar protección a los pescadores artesanales nacionales ante la problemática de fuerza que ejercen los países vecinos ', '2015-03-29 07:38:27'),
(64, 70, 141, 'Consulto que pasara con los pequeños pescadores, si gozaran de seguridad social o solamente aquellos que laboren para una empresa especifica dado en el inciso g arte. 15. ', '2015-03-29 07:39:49'),
(65, 70, 192, 'Contesta la pregunta de Francisco Paz diciendo que eso esta contemplado en el nuevo proyecto de seguridad social. ', '2015-03-29 07:41:15'),
(66, 70, 97, 'Dice que la palabra "concurrencia" en el arte. 16, debe reemplazarse por el termino " tengan relación" ', '2015-03-29 07:42:19'),
(67, 73, 135, 'Se unió a la moción y explico que en estos anuncios también se encuentran Jari Dixon, Manuel Zelaya, Luis Redondo y ella.  ', '2015-03-29 07:57:20'),
(68, 73, 85, 'Opina que debe investigarse fuentes y medios electrónicos ya que Lena Gutierrez salio en una pag. con sus 2 hijos menores y fueron objeto de bullying.\n\nSe voto y se aprobó incorporar a moción original.  ', '2015-03-29 07:59:42'),
(69, 73, 47, 'Opina que se debe agregar que la Secretaria de DDHH ordene a la URSAC la cancelación de la personalidad jurídica de esta organización.\n\nSe voto y aprobó.  ', '2015-03-29 08:01:02'),
(70, 73, 144, 'Opina que no se necesita investigar, con seguridad que atrás esta JOH  ', '2015-03-29 08:01:46'),
(71, 73, 50, 'Hace referencia a las expresiones de JOH pues la afectaron a ella y a sus compañeros por estar en contra de la Policia militar.\n\nPropuso se agregue que se investigue la denuncia interpuesta por 17 diputados. Esto no fue tomado en consideracion  ', '2015-03-29 08:03:35'),
(72, 73, 138, 'Hace un recordatorio sobre la querella presentada para que JOH exponga pruebas sobre sus afirmaciones sobre los diputados en contra de la PMOP y que se incluya en la moción que los órganos gubernamentales actúen de oficio contra estas campañas.  ', '2015-03-29 08:06:08'),
(73, 73, 2, 'Opina que se agregue petición para investigar el origen de los fondos de estas campañas y ponerle un termino para que las instituciones rindan cuentas.\n\nEsta moción fue aprobada.  ', '2015-03-29 08:08:27'),
(74, 74, 95, 'No se escucho dentro de la lista para inauguración de aeródromos el de El Aguacate, Olancho. ', '2015-04-04 03:25:46'),
(75, 74, 105, 'Presento reconsideracion para incluir en la lista de aeródromos los ya construidos en Tela y La Ceiba para exonerarlos del Impuesto de Ganancia de Capital. ', '2015-04-04 03:27:13'),
(76, 75, 82, 'Solicito dispensa de debates. ', '2015-04-04 03:31:47'),
(77, 80, 90, 'Solicito dispensa de debates.\n\nDicha solicitud fue aprobada. ', '2015-04-04 03:44:57'),
(78, 80, 127, 'Exigió que se revise la situación de Yarumela y su alcantarillado al igual que Marcala.\n\nLa moción fue rechazada. ', '2015-04-04 03:46:01'),
(79, 81, 95, 'Solicito dispensa de debate.\n\nMoción fue rechazada. ', '2015-04-04 03:51:28'),
(80, 84, 97, 'Agradecimiento al Abg. Jorge Maradiaga quien estuvo presente como asesor de la Comisión.  ', '2015-04-04 04:04:13'),
(81, 84, 56, 'Consulto como queda la figura del intermediario en el art. 4 que contiene las definiciones de la Ley.  ', '2015-04-04 04:05:10'),
(82, 84, 147, 'Pregunto sobre el termino de facturacion  ', '2015-04-04 04:05:39'),
(83, 84, 154, 'Pidió explicación de la relación entre el Estado y empresas ya que en Honduras operan transnacionales de servicios de internet y debe existir garantía que el Estado mantendrá el control y seguridad en el manejo de transacciones  ', '2015-04-04 04:07:02'),
(84, 84, 155, 'Como miembro de la Comisión Dictaminadora sugirió que se debe llevar la técnica legislativa leyendo cada concepto por separado  ', '2015-04-04 04:07:52'),
(85, 84, 68, 'Consulto que pasaría en el caso de usurpación de firmas. Que mecanismos habrá para la prevención del tema.  ', '2015-04-04 04:09:09'),
(86, 84, 126, 'Sugiere que mensajes de datos se entienda como una actividad comercial y el intercambio de datos que están en 3 conceptos, se aglomeren en uno solo.\n\nRasel Tome despejo la duda como miembro de la Comisión Dictaminadora aclarando que están separadas en varios numerales.  ', '2015-04-04 04:10:48'),
(87, 85, 92, 'Solicito dispensa de debates. ', '2015-04-04 04:36:28'),
(88, 85, 47, 'Sugiere se incluya dentro del proyecto una programación por parte de la Secretaria de Seguridad para que la gente sepa que día debe retornar por ella.\n\nLa moción fue aprobada. ', '2015-04-04 04:38:51'),
(89, 85, 138, 'Opino se incluya también el canon de los antecedentes judiciales.\n\nMoción no aprobada. ', '2015-04-04 04:39:56'),
(90, 85, 155, 'Se pronuncio a favor del proyecto. ', '2015-04-04 04:40:46'),
(91, 70, 154, 'Propone se tome en cuenta las sugerencias sobre la inclusión de comunidades no solo étnicas, sino aquellos practican la pesca artesanal. ', '2015-04-04 09:08:14'),
(92, 70, 77, 'Propone la suspensión por no tener el material suficiente para defender los intereses del departamento que representa. ', '2015-04-04 09:09:29'),
(93, 70, 113, 'Apoyo posición de Jerry Hynds ', '2015-04-04 09:10:15'),
(94, 70, 158, 'Se manifestó preocupado por la pesca artesanal para las comunidades aledañas al mar, de norte y sur. ', '2015-04-04 09:11:28'),
(95, 70, 109, 'Se manifestó a favor. ', '2015-04-04 09:12:01'),
(96, 70, 125, 'Suspendió discusión como última oportunidad para que los diputados interesados en el tema se reúnan con la comisión dictaminadora. ', '2015-04-04 09:13:14'),
(97, 84, 97, 'Realiza sugerencia de estilo.\n\nSugerencia aprobada. ', '2015-04-04 09:16:00'),
(98, 84, 52, 'Propone se sustituya la frase "llevar a cabo" por "para realizar" en art. 25.\n\nSugerencia aprobada. ', '2015-04-04 09:17:46'),
(99, 84, 97, 'Propone sustituir "prevalencia" por "preminencia" en art. 27.\n\nPropuesta aprobada. ', '2015-04-04 09:20:01'),
(100, 84, 199, 'Comento que por tener su base en el modelo de la ONU de 1996, el sistema de informática del cual se habla esta desfasado, también que en Honduras no tenemos la tipificación de los delitos informáticos, los cuales serán agregados en las reformas del Código Penal. ', '2015-04-04 09:23:44'),
(101, 84, 48, 'Agradeció al pleno por la aprobación de esta ley. ', '2015-04-04 09:24:30'),
(102, 97, 150, 'Solicito se suspenda la discusión de este contrato. ', '2015-04-05 10:33:14'),
(103, 97, 125, 'Le manifestó a Mario Ayala que ya era el tercer debate por lo que su solicitud estaba fuera de lugar. ', '2015-04-05 10:34:36'),
(104, 101, 54, 'Opina que debe aclararse la definición "afro descendientes" y su aplicación como comunidad garifuna.\n\nMoción aprobada. ', '2015-04-05 10:47:01'),
(105, 101, 154, 'Pregunta cual es la definición del termino "derecho preferente". ', '2015-04-05 10:47:57'),
(106, 101, 109, 'Sugirió incluir la definición de "Emergencia Pesquera".\n\nMoción aprobada. ', '2015-04-05 10:49:00'),
(107, 101, 97, 'Sugirió a la comisión dictaminadora que se mejore condiciones de semántica.\n\nMoción aprobada. ', '2015-04-05 10:50:01'),
(108, 101, 155, 'Solicita aclaración sobre definición del termino "procedimiento científico y técnico".\n ', '2015-04-05 10:51:35'),
(109, 101, 48, 'Se manifestó a favor del termino "procedimiento científico y técnico" explicado por el Dr. Romeo Ucles. ', '2015-04-05 10:54:34'),
(110, 101, 49, 'Se manifestó a favor del termino "procedimiento científico y técnico" explicado por el Dr. Romeo Ucles. ', '2015-04-05 10:55:53'),
(111, 101, 97, 'Sugirió se incorpore en la definición "procedimiento científico y técnico" la frase "realizado por el ser humano".\n\nMoción aprobada.\n\nTambién sugirió que debería decir "extraer" en vez de "separar".\n\nMoción aprobada. ', '2015-04-05 10:58:28'),
(112, 101, 48, 'Sugirió incorporar termino "pesca comercial".\n\nMoción aprobada. ', '2015-04-05 10:59:09'),
(113, 101, 109, 'Sugirió agregar conceptos de "pesca científica" y "pesca en alta mar".\n\nMoción aprobada. ', '2015-04-05 11:00:35'),
(114, 101, 97, 'Sugirió cambiar el termino "actividad pesquera" por "en protección de la fauna".\n\nMoción aprobada. \n ', '2015-04-05 11:03:42'),
(115, 106, 135, 'Se manifiesta en contra de la ratificación, representando además a la bancada de LIBRE. Considera que no se puede ratificar algo a lo cual se le quiere hacer cambios. ', '2015-04-05 01:39:07'),
(116, 106, 51, 'Se manifiesta en contra de la ratificación, representando además a una parte de la bancada del Partido Liberal. ', '2015-04-05 01:40:09'),
(117, 106, 49, 'Se manifiesta a favor de la ratificación representando además la bancada del Partido Demócrata Cristiano. ', '2015-04-05 01:41:11'),
(118, 106, 155, 'Se manifiesta en contra de la elevación a rango constitucional pero no de la PMOP en si. ', '2015-04-05 01:42:13'),
(119, 106, 2, 'Se proclama en contra de la ratificación representando además a la bancada del PAC. ', '2015-04-05 01:43:11'),
(120, 106, 48, 'Se manifiesta a favor de la ratificación. ', '2015-04-05 01:43:40'),
(121, 106, 50, 'Manifiesta que JOH tiene una agenda secreta y desea otorgarle mas atribuciones al Presidente de la República en las ZEDES, por tanto se manifiesta en contra de la ratificación. ', '2015-04-05 01:45:09'),
(122, 106, 78, 'Se manifiesta a favor de la ratificación representando además a la bancada del Partido Nacional. ', '2015-04-05 01:46:09'),
(123, 107, 264, 'Llevo solicitud de plebiscito acerca de la elevación a rango constitucional de la PMOP.\n\nNo quedo presentada al pleno, se despejara en la nueva legislatura. ', '2015-04-05 01:48:42'),
(124, 108, 82, 'Solicito dispensa de debates. ', '2015-04-05 01:54:26'),
(125, 122, 76, 'solicitó dispensa de debates.\n\nMoción aprobada.  ', '2015-04-04 05:04:20'),
(126, 122, 133, 'Se pronunció a favor de los ascensos, pero como bancada no están de acuerdo de apoyar personas que han tenido denuncias por violación de derechos humanos, también agregó se debe reformar el proceso de aprobación de ascensos.  ', '2015-04-04 05:07:06'),
(127, 122, 158, 'Se sumó a la petición de César Agurcia.  ', '2015-04-04 05:07:54'),
(128, 122, 155, 'También se sumó a la petición de César Agurcia.  ', '2015-04-04 05:08:35'),
(129, 122, 135, 'Se sumó a la petición de César Agurcia.  ', '2015-04-04 05:09:32'),
(130, 122, 126, 'En contra del proceso por falta de transparencia en el mismo ya que no se brindó tiempo a las bancadas para razonar su voto.\n\nSe le retiró la palabra por estar fuera de orden.  ', '2015-04-04 05:11:25'),
(131, 92, 139, 'Sugirió que debe incluirse moción presentada por el en sesión anterior.\n  ', '2015-04-04 05:39:00'),
(132, 92, 125, 'Aclaro a Esdras Lopez que en la sesión anterior el presento una manifestación y no una moción y que por esa razón no aparece en el acta. Le sugirió que la vuelva a presentar como moción.  ', '2015-04-04 05:41:04'),
(133, 92, 155, 'Opina que en el decreto aprobado en la sesión anterior sobre la dispensa de la tasa por tramites administrativos a menores de 25 años, que se agregue la palabra "reformar".  ', '2015-04-04 05:42:52'),
(134, 92, 125, 'Le aclaro a Rassel Tome que la palabra reformar ya esta incluida.  ', '2015-04-04 05:43:43'),
(135, 142, 154, 'Consulta por sanciones a empresas que tienen exenciones fiscales a sus impuestos amparados en mala interpretación de la ley. ', '2015-04-05 06:12:07'),
(136, 142, 53, 'Aclara que estas reformas a la Ley para la Defensa y Promoción de la Competencia afectaran a la Comisión para la Defensa y Promoción de la Competencia y no la competitividad en si. ', '2015-04-05 06:13:34'),
(137, 142, 155, 'Aclara que la ley viene a dar medios a la CDPC para que cumpla sus funciones que a la fecha aun no ha podido realizar a plenitud. ', '2015-04-05 06:14:28'),
(138, 142, 56, 'Recomienda que el 100 % de la recaudación no sea destinado a la CDPC, sino solo el % definido anualmente por la SEFIN mediante el Presupuesto General.\n\nMoción aprobada. ', '2015-04-05 06:16:19'),
(139, 142, 155, 'Pide aclaración sobre el monto que sera trasladado luego de ser aprobada la sugerencia de la diputada Gabriela Nuñez, ya que no sera trasladado el 100 %. ', '2015-04-05 06:17:36'),
(140, 142, 267, 'Manifiesta que la CDPC es un ente autónomo y que por tanto las recaudaciones no deberían ser administradas por la SEFIN. Actualmente la CDPC se ha visto limitada por el bajo presupuesto asignado a la institución. ', '2015-04-05 06:19:21'),
(141, 143, 114, 'Solicita dispensa de debates.\n\nMoción aprobada. ', '2015-04-05 06:23:31'),
(142, 143, 155, 'No esta de acuerdo con dispensa de debates. ', '2015-04-05 06:23:58'),
(143, 70, 155, 'Se manifestó en contra de requisitos adicionales a pescadores artesanales, ya que obliga al contribuyente a incumplir la ley por falta de recursos para gestionar dichos requisitos. ', '2015-04-05 06:27:04'),
(144, 70, 46, 'Apoyo la opinión de Rassel Tome sobre los nuevos requisitos para los pescadores artesanales. ', '2015-04-05 06:27:46'),
(145, 70, 7, 'Opina que debe agregarse que los requisitos nuevos aplican solamente a la pesca industrial. ', '2015-04-05 06:28:42'),
(146, 70, 53, 'No esta de acuerdo con el agregado sugerido por David Reyes.\n\nFinalmente no fue considerado el agregado. ', '2015-04-05 06:29:38'),
(147, 156, 70, 'Solicita dispensa de debates.\n\nMoción aprobada. ', '2015-04-05 07:31:02'),
(148, 157, 155, 'Cuestiona el por que exonerar de impuestos al adquirente del vehículo si el fin es recaudar mayor ingreso. ', '2015-04-05 07:37:04'),
(149, 157, 56, 'Le aclara a Rassel Tome que la razón para la exoneración es la falta de cumplimiento del Estado con sus obligaciones tributarias, sobre estos vehículos que fueron donados e inventariados al Estado, para posteriores subastas. ', '2015-04-05 07:38:35'),
(150, 157, 105, 'Solicita dispensa de debates.\n\nMoción aprobada. ', '2015-04-05 07:39:11'),
(151, 158, 144, 'Se pronuncia en contra ya que no se esta dando el tiempo prometido el día anterior para discutir este proyecto en 3 debates. Lamenta que cuestiones con interés personal se toman como emergencia y proyectos con real interés de la población están engavetados. ', '2015-04-05 07:42:36'),
(152, 158, 66, 'Se pronuncio a favor del proyecto. ', '2015-04-05 07:43:02'),
(153, 158, 56, 'Se pronuncio a favor del proyecto. ', '2015-04-05 07:43:22'),
(154, 158, 115, 'Se pronuncio a favor del proyecto. ', '2015-04-05 07:43:54'),
(155, 158, 49, 'Se pronuncio en contra del proyecto. ', '2015-04-05 07:44:14'),
(156, 158, 48, 'Se pronuncio a favor del proyecto. ', '2015-04-05 07:44:35'),
(157, 158, 8, 'Se pronuncio a favor del proyecto. ', '2015-04-05 07:44:59'),
(158, 167, 4, 'policia militar ', '2015-04-19 07:41:33'),
(159, 167, 4, 'policia militar ', '2015-04-19 09:12:36'),
(160, 171, 4, 'policia militar ', '2015-04-19 09:26:27'),
(161, 171, 4, 'alacena', '2015-04-20 11:51:27'),
(163, 172, 4, 'prueba a  ', '2015-04-20 02:47:05'),
(164, 174, 4, 'policia militar ', '2015-04-20 03:01:08'),
(165, 175, 4, 'policia ', '2015-04-20 03:07:24'),
(166, 175, 4, 'prueba a ', '2015-04-20 03:08:05'),
(167, 174, 86, 'pturba ', '2015-04-20 03:27:07'),
(168, 176, 84, 'hgf ', '2015-04-20 08:59:51'),
(169, 176, 47, 'hgfc ', '2015-04-20 09:00:06'),
(170, 187, 64, 'policia militar  ', '2015-04-26 01:30:56'),
(171, 189, 97, 'nueva policia militar ', '2015-04-26 10:06:16'),
(172, 189, 5, 'vieja policia militar ', '2015-04-26 10:16:36'),
(173, 190, 58, 'proyecto 1 policia militar  ', '2015-04-26 10:43:58'),
(174, 190, 6, 'intervención 2 policia militar ', '2015-04-26 10:46:54'),
(175, 190, 53, 'intervención 3 policia militar ', '2015-04-26 10:47:44'),
(176, 191, 55, 'policia militar nacional ', '2015-04-26 10:55:29'),
(177, 191, 89, 'guiaba policia militar ', '2015-04-26 11:02:38'),
(178, 195, 4, 'mirador policia ', '2015-05-03 05:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `detalle_intervencion_log`
--

CREATE TABLE IF NOT EXISTS `detalle_intervencion_log` (
  `id` int(11) NOT NULL,
  `xml` varchar(8000) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detalle_intervencion_log`
--

INSERT INTO `detalle_intervencion_log` (`id`, `xml`, `fecha`, `status`) VALUES
(1, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>1</id><sesion>201502710946058</sesion><nombre>Ley Marco del sistema de Proteccion Social. (para una vida mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>No Aplica  </status><comision>  </comision><partido>Despacho Presidencial  </partido><proponente>Poder Ejecutivo   </proponente><fecha>2015-03-15 09:41:18 PM  </fecha><descripcion>Aprobado articulo 1. suspende sicusiom articulo 2.  </descripcion></proyecto> </proyectos>', '2015-03-15 00:00:00', 'Ya existe un registro para el proyecto 49'),
(2, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502710946058</sesion><nombre>Ley Marco del Sistema de Protexcion Social(para una vida mejor) </nombre><tipoacto>Dictamen </tipoacto><debate>Primer Debate </debate><status>No Aplica </status><comision> </comision><partido> </partido><proponente>Poder Ejecutivo  </proponente><fecha>2015-03-15 09:48:53 PM </fecha><descripcion>Aprobado articulo 1. se suspende discusion articulo 2. </descripcion></proyecto> </proyectos>', '2015-03-15 20:48:53', 'SUCCESS'),
(3, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>1</id><sesion>201502710946058</sesion><nombre>Ley Marco del sistema de Proteccion Social. (para una vida mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>No Aplica  </status><comision>  </comision><partido>Despacho Presidencial  </partido><proponente>Poder Ejecutivo   </proponente><fecha>2015-03-15 09:41:18 PM  </fecha><descripcion>Aprobado articulo 1. suspende sicusiom articulo 2.  </descripcion></proyecto> </proyectos>', '2015-03-21 11:49:08', 'SUCCESS'),
(4, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>1</id><sesion>201502710946058</sesion><nombre>Ley Marco del sistema de Proteccion Social. (para una vida mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>No Aplica  </status><comision>  </comision><partido>Despacho Presidencial  </partido><proponente>Poder Ejecutivo   </proponente><fecha>2015-03-15 09:41:18 PM  </fecha><descripcion>Aprobado articulo 1. suspende sicusiom articulo 2.  </descripcion></proyecto> </proyectos>', '2015-03-21 11:54:47', 'SUCCESS'),
(5, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>1</id><sesion>201502710946058</sesion><nombre>Ley Marco del sistema de Proteccion Social. (para una vida mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>No Aplica  </status><comision>  </comision><partido>Despacho Presidencial  </partido><proponente>Poder Ejecutivo   </proponente><fecha>2015-03-15 09:41:18 PM  </fecha><descripcion>Aprobado articulo 1. suspende sicusiom articulo 2.  </descripcion></proyecto> </proyectos>', '2015-03-21 11:59:31', 'SUCCESS'),
(6, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>1</id><sesion>201502710946058</sesion><nombre>Ley Marco del sistema de Proteccion Social. (para una vida mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>No Aplica  </status><comision>  </comision><partido>Despacho Presidencial  </partido><proponente>Poder Ejecutivo   </proponente><fecha>2015-03-15 09:41:18 PM  </fecha><descripcion>Aprobado articulo 1. suspende sicusiom articulo 2.  </descripcion></proyecto> </proyectos>', '2015-03-21 12:02:37', 'SUCCESS'),
(7, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502710946058</sesion><nombre>Aprobacion asensos de la Policia Nacional </nombre><tipoacto>Dictamen </tipoacto><debate>Primer Debate </debate><status>Aprobado </status><comision>Seguridad y Previsión Ciudadana </comision><partido> </partido><proponente>Poder Ejecutivo  </proponente><fecha>2015-03-21 01:21:08 PM </fecha><descripcion>Asenso a Felix Villanueva </descripcion></proyecto> </proyectos>', '2015-03-21 12:21:13', 'SUCCESS'),
(8, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015021203828086</sesion><nombre>Declaracion como casco historico Elunicipio de la Paz </nombre><tipoacto>Dictamen </tipoacto><debate>Primer Debate </debate><status>Aprobado </status><comision> </comision><partido> </partido><proponente>Gladis Aurora López Calderón </proponente><fecha>2015-03-21 01:32:19 PM </fecha><descripcion> </descripcion></proyecto> </proyectos>', '2015-03-21 12:32:23', 'SUCCESS'),
(9, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>2</id><sesion>2015021203828086</sesion><nombre>Proyecyp de Supervision de construccion de carreteras  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>No Aplica  </status><comision>Modernización y Comunicación Institucional  </comision><partido>  </partido><proponente>Poder Ejecutivo   </proponente><fecha>2015-03-21 01:37:56 PM  </fecha><descripcion>Modificacion del contrato No 4 de supervision de construccion de carretera entre F. Morazsn y Catacamas, de rio Dulce a Limones, con aptoximadamentes 67 km.  </descripcion></proyecto> </proyectos>', '2015-03-21 12:39:37', 'SUCCESS'),
(10, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>3</id><sesion>2015021771956743</sesion><nombre>Modificacion de contrato de construccion.  </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>No Aplica  </status><comision>  </comision><partido>Partido de Innovación y Unidad Social Demócra  </partido><proponente>Poder Ejecutivo   </proponente><fecha>2015-03-21 01:45:51 PM  </fecha><descripcion>  </descripcion></proyecto> </proyectos>', '2015-03-21 12:47:41', 'SUCCESS'),
(11, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015021771956743</sesion><nombre>Ley de pesca </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>No Aplica </status><comision> </comision><partido> </partido><proponente> </proponente><fecha>2015-03-21 01:53:14 PM </fecha><descripcion>Desde el articulo 27 , se suspendio en el articulo 28. </descripcion></proyecto> </proyectos>', '2015-03-21 12:53:16', 'SUCCESS'),
(12, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>4</id><sesion>201502-1122417287</sesion><nombre>Reforma Constitucional  </nombre><tipoacto>Proyecto de Ley  </tipoacto><debate>Primer Debate  </debate><status>Presentado y Turnado a Comisión  </status><comision>  </comision><partido>Partido Anticorrupción (PAC)  </partido><proponente>Walter Alex Banegas  </proponente><fecha>2015-03-21 02:07:51 PM  </fecha><descripcion> Reformar los articulos 308 - 311,314,315,317. Iniciativa que tiene como objetivo reformar el procedimiento para la intrgracion de la Cortes suprema de Justicia.  </descripcion></proyecto><proyecto><id>5</id><sesion>201502701597872</sesion><nombre>Ratificacion decreto 283-2013  </nombre><tipoacto>Dictamen  </tipoacto><debate>No Aplica  </debate><status>No se ratifica el Decreto  </status><comision>  </comision><partido>Partido Nacional (PN)  </partido><proponente>Poder Ejecutivo   </proponente><fecha>2015-03-21 02:11:17 PM  </fecha><descripcion>  </descripcion></proyecto> </proyectos>', '2015-03-21 13:14:36', 'SUCCESS'),
(13, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015021593116855</sesion><nombre>Ley de Pesca y Acuicultura </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Continúa en Debate </status><comision>Agricultura y Ganadería </comision><partido>No Diputado </partido><proponente>Despacho Presidencial </proponente><fecha>2015-03-29 07:28:21 p.m. </fecha><descripcion>Ley que regula lo concerniente a la pesca y acuicultura, tanto industrial como artesanal </descripcion></proyecto> </proyectos>', '2015-03-29 18:28:21', 'SUCCESS'),
(14, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015021593116855</sesion><nombre>Reforma Art. 273 Constitucion </nombre><tipoacto>Proyecto de Ley </tipoacto><debate>No Aplica </debate><status>Presentado y Turnado a Comisión </status><comision>Asuntos Constitucionales </comision><partido>Partido Liberal (PL) </partido><proponente>José Alfredo Saavedra Paz </proponente><fecha>2015-03-29 07:45:42 p.m. </fecha><descripcion>Reformar el art. 273 de la constitucion, adicionando a la Policia Militar como un comando mas de las Fuerzas Armadas </descripcion></proyecto> </proyectos>', '2015-03-29 18:45:42', 'SUCCESS'),
(15, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015021593116855</sesion><nombre>Manifestación de Dario Banegas  </nombre><tipoacto>Manifestación </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision>No Aplica </comision><partido>Partido Liberal (PL) </partido><proponente>Angel Dario Banegas Leiva </proponente><fecha>2015-03-29 07:49:44 p.m. </fecha><descripcion>Manifiesta indignación por el Partido Liberal contra el Movimiento Hondureños Unidos por la Paz por falta de respeto en TV nacional contra Yuri Sabas y Yadira Bedaña  </descripcion></proyecto> </proyectos>', '2015-03-29 18:49:44', 'SUCCESS'),
(16, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>1</id><sesion>2015021593116855</sesion><nombre>Moción para que CN exhorte a autoridades a investigar organizacion Hondureños por la Paz  </nombre><tipoacto>Moción  </tipoacto><debate>Tomada en Consideración  </debate><status>Aprobado  </status><comision>No Aplica  </comision><partido>Partido Liberal (PL)  </partido><proponente>Yury Cristhian Sabas Gutierrez  </proponente><fecha>2015-03-29 07:56:08 p.m.  </fecha><descripcion>Mocion encaminada a que el CN exhorte al MP, Conatel, Conadeh y Secretaria de DDHH investiguen organización Hondureños por la Paz, por publicidad ofensiva en contra de diputados.  </descripcion></proyecto> </proyectos>', '2015-03-29 19:08:57', 'SUCCESS'),
(17, '<?xml version="1.0" encoding="UTF-8"?> <proyectos> </proyectos>', '2015-03-29 19:09:40', ''),
(18, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502225536130</sesion><nombre>Lectura Acta No. 55 </nombre><tipoacto>Protocolo </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision>No Aplica </comision><partido>No Diputado </partido><proponente>No Aplica </proponente><fecha>2015-04-04 03:24:21 p.m. </fecha><descripcion>Lectura de acta de sesión anterior </descripcion></proyecto> </proyectos>', '2015-04-04 14:24:23', 'SUCCESS'),
(19, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502225536130</sesion><nombre>Condecoracion a Ban Ki Moon Secretario General ONU </nombre><tipoacto>Iniciativa de Ley </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision>Especial </comision><partido>Partido Nacional (PN) </partido><proponente>José Tomás Zambrano Molina </proponente><fecha>2015-04-04 03:31:16 p.m. </fecha><descripcion>Otorgamiento de Placa de Oro al Secretario General de la ONU, Ban Ki Moon, durante su visita a Honduras. </descripcion></proyecto> </proyectos>', '2015-04-04 14:31:19', 'SUCCESS'),
(20, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502225536130</sesion><nombre>Ascenso Policia Nacional </nombre><tipoacto>Proyecto de Ley </tipoacto><debate>No Aplica </debate><status>Presentado y Turnado a Comisión </status><comision>Especial </comision><partido>No Aplica </partido><proponente>Secretaria de Seguridad </proponente><fecha>2015-04-04 03:34:50 p.m. </fecha><descripcion>Ascensos de policías enviado por la Secretaria de Seguridad </descripcion></proyecto> </proyectos>', '2015-04-04 14:34:52', 'SUCCESS'),
(21, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502225536130</sesion><nombre>Convenio de Protección al Medio Ambiente </nombre><tipoacto>Proyecto de Ley </tipoacto><debate>No Aplica </debate><status>Presentado y Turnado a Comisión </status><comision>Relaciones Internacionales </comision><partido>No Aplica </partido><proponente>Secretaria de Relaciones Exteriore </proponente><fecha>2015-04-04 03:36:55 p.m. </fecha><descripcion>Tiene por finalidad la protección y desarrollo del medio marino de la región del Gran Caribe </descripcion></proyecto> </proyectos>', '2015-04-04 14:36:58', 'SUCCESS'),
(22, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502225536130</sesion><nombre>Contrato No.61-2014 </nombre><tipoacto>Proyecto de Ley </tipoacto><debate>No Aplica </debate><status>Presentado y Turnado a Comisión </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNA </proponente><fecha>2015-04-04 03:38:32 p.m. </fecha><descripcion>Contrato entre la empresa Green Energy y la ENEE para distribución de energía electrica </descripcion></proyecto> </proyectos>', '2015-04-04 14:38:34', 'SUCCESS'),
(23, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502225536130</sesion><nombre>Contrato No. 004-2013 </nombre><tipoacto>Dictamen </tipoacto><debate>Primer Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SAG </proponente><fecha>2015-04-04 03:40:58 p.m. </fecha><descripcion>Contrato de desarrollo agropecuario de riego en el valle Guayape, zonas 1, 2 y 3, entre la SAG y empresa privada (no identificada) por un monto de 11 millones de Lempiras </descripcion></proyecto> </proyectos>', '2015-04-04 14:41:00', 'SUCCESS'),
(24, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502225536130</sesion><nombre>Declaración Casco Histórico Municipio La Paz </nombre><tipoacto>Dictamen </tipoacto><debate>Primer Debate </debate><status>Aprobado </status><comision>Asuntos Regionales, Departamentales y Municip </comision><partido>Partido Nacional (PN) </partido><proponente>Gladis Aurora López Calderón </proponente><fecha>2015-04-04 03:44:17 p.m. </fecha><descripcion>Declaración del Municipio de La Paz como Casco Histórico. </descripcion></proyecto> </proyectos>', '2015-04-04 14:44:20', 'SUCCESS'),
(25, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502225536130</sesion><nombre>Proyecto de Supervisión de Construcción de Carretera </nombre><tipoacto>Dictamen </tipoacto><debate>Primer Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Especial </comision><partido>No Aplica </partido><proponente>Despacho Presidencial </proponente><fecha>2015-04-04 03:51:02 p.m. </fecha><descripcion>Modificación del contrato No. 4 de Supervisión de Construcción de la carretera entre Francisco Morazan y Catacamas, de Río Dulce a Limones con aprox. 67 km </descripcion></proyecto> </proyectos>', '2015-04-04 14:51:05', 'SUCCESS'),
(26, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502225536130</sesion><nombre>Ley Especial contra el Delito de Lavado de Activos </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Aprobado </status><comision>Especial </comision><partido>Partido Nacional (PN) </partido><proponente>José Tomás Zambrano Molina </proponente><fecha>2015-04-04 03:55:02 p.m. </fecha><descripcion>Tiene como finalidad establecer las medidas y acciones que se deben adoptar dentro del sistema de prevención, control y combate del lavado de activos y contra el financiamiento del terrorismo. </descripcion></proyecto> </proyectos>', '2015-04-04 14:55:04', 'SUCCESS'),
(27, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502225536130</sesion><nombre>Proyecto Condecoracion Ban Ki Moon Secretario General ONU </nombre><tipoacto>Dictamen </tipoacto><debate>Único Debate </debate><status>Aprobado </status><comision>Especial </comision><partido>Partido Nacional (PN) </partido><proponente>José Tomás Zambrano Molina </proponente><fecha>2015-04-04 04:13:51 p.m. </fecha><descripcion>Condecoración con Placa de Oro a Secretario General de la ONU en su visita a Honduras </descripcion></proyecto> </proyectos>', '2015-04-04 15:13:53', 'SUCCESS'),
(28, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>2</id><sesion>201502225536130</sesion><nombre>Ley de Comercio Electrónico  </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Continúa en Debate  </status><comision>Asuntos Constitucionales  </comision><partido>Partido Nacional (PN)  </partido><proponente>Rodolfo Irías Navas  </proponente><fecha>2015-04-04 04:02:56 p.m.  </fecha><descripcion>Tiene por objeto regular todo tipo de información en forma de mensajes de datos, utilizada en el contexto de actividades comerciales, con excepción de las obligaciones asumidas por el Estado en virtud de convenios o tratados y sin perjuicio de lo dispuesto en otras normas que tengan como finalidad la protección de salud y seguridad publica, incluida la salvaguarda de la defensa nacional, los intereses del consumidor, el régimen tributario. Complementa la normativa reguladora de Defensa de la Competencia. Revisión del dictamen hasta el art. 14.  </descripcion></proyecto> </proyectos>', '2015-04-04 15:15:34', 'SUCCESS'),
(29, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015022075835153</sesion><nombre>Proyecto de Reforma Decreto No. 17-2010 </nombre><tipoacto>Dictamen </tipoacto><debate>Único Debate </debate><status>Aprobado </status><comision>Especial </comision><partido>Partido Nacional (PN) </partido><proponente>Carmen Esperanza Rivera Pagoaga </proponente><fecha>2015-04-04 04:35:39 p.m. </fecha><descripcion>Reforma del decreto No. 17-2010, para la dispensa de menores de 25 anos de la tasa de L. 200.00, por tramites administrativos. ( constancia de antecedentes penales, articulo 49 párrafo final.) </descripcion></proyecto> </proyectos>', '2015-04-04 15:35:44', 'SUCCESS'),
(30, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015022075835153</sesion><nombre>Condecoración Gerson Aguilera, Director adjunto, Dirección Nacional de Inteligencia </nombre><tipoacto>Dictamen </tipoacto><debate>Primer Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Especial </comision><partido>No Aplica </partido><proponente>Secretaria de Seguridad </proponente><fecha>2015-04-04 04:44:55 p.m. </fecha><descripcion>Reconocimiento con medalla de oro y pergamino especial a Gerson Aguilera </descripcion></proyecto> </proyectos>', '2015-04-04 15:44:57', 'SUCCESS'),
(31, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015022075835153</sesion><nombre>Ascenso Policia Nacional  </nombre><tipoacto>Dictamen </tipoacto><debate>Único Debate </debate><status>Aprobado </status><comision>Especial </comision><partido>No Aplica </partido><proponente>Secretaria de Seguridad </proponente><fecha>2015-04-04 05:02:34 p.m. </fecha><descripcion>Ascenso a: Felix Villanueva, David Aguilar, Marco Tulio Cruz Aguilar, Ramon Adalberto Martinez Hernandez, Roger Osmin Bardales, Javier Flores, Quintin Juarez, Hector Ivan Mejia,Jose Osorio Santos, Santos Daniel Lopez, William Velasquez,Hugo Velasquez, Rigoberto Oseguera, Johap Merlo, Mario de Jesus Medina, Orlando Mejia, Jose Diaz, EduardoTurcios,John Paul Altamirano, Cesar Gonzalez, Roberto Ortega, Luis Osabas, Melvin Garcia, Juan Pablo Aguilar, Emerson Mejia, Sergio Paz, Perci Saldivar,Jose Perrufino, Jose Hernandez, Francisco Somosa. </descripcion></proyecto> </proyectos>', '2015-04-04 16:02:41', 'Ya existe un registro para el proyecto 68'),
(32, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015022075835153</sesion><nombre>Reforma Presupuesto Nacional 2015 </nombre><tipoacto>Proyecto de Ley </tipoacto><debate>No Aplica </debate><status>Presentado y Turnado a Comisión </status><comision>Presupuesto </comision><partido>Partido Nacional (PN) </partido><proponente>Rolando Dubón Bueso </proponente><fecha>2015-04-04 05:15:23 p.m. </fecha><descripcion>Incorporar asignación presupuestaria al Instituto de Minas y Geologia. </descripcion></proyecto> </proyectos>', '2015-04-04 16:15:26', 'SUCCESS'),
(33, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015022075835153</sesion><nombre>Manifestación de Esdras Amado Lopez </nombre><tipoacto>Manifestación </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision>No Aplica </comision><partido>No Aplica </partido><proponente>Esdras Amado López </proponente><fecha>2015-04-04 05:18:58 p.m. </fecha><descripcion>Denuncia al irrespeto del derecho a la libre expresión por declaraciones del presidente JOH contra los opositores de la elevación a rango constitucional a la PMOP. </descripcion></proyecto> </proyectos>', '2015-04-04 16:19:01', 'SUCCESS'),
(34, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>3</id><sesion>2015022075835153</sesion><nombre>Lectura Acta No. 56  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 04:26:59 p.m.  </fecha><descripcion>Lectura del Acta sesión anterior  </descripcion></proyecto><proyecto><id>4</id><sesion>2015022075835153</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 04:51:41 p.m.  </fecha><descripcion>Ley marco que regula la Seguridad Social en el país.  </descripcion></proyecto><proyecto><id>5</id><sesion>2015022075835153</sesion><nombre>Ascenso Policia Nacional   </nombre><tipoacto>Dictamen  </tipoacto><debate>Único Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Secretaria de Seguridad  </proponente><fecha>2015-04-04 05:02:34 p.m.  </fecha><descripcion>Ascenso a: Felix Villanueva, David Aguilar, Marco Tulio Cruz Aguilar, Ramon Adalberto Martinez Hernandez, Roger Osmin Bardales, Javier Flores, Quintin Juarez, Hector Ivan Mejia,Jose Osorio Santos, Santos Daniel Lopez, William Velasquez,Hugo Velasquez, Rigoberto Oseguera, Johap Merlo, Mario de Jesus Medina, Orlando Mejia, Jose Diaz, EduardoTurcios,John Paul Altamirano, Cesar Gonzalez, Roberto Ortega, Luis Osabas, Melvin Garcia, Juan Pablo Aguilar, Emerson Mejia, Sergio Paz, Perci Saldivar,Jose Perrufino, Jose Hernandez, Francisco Somosa.  </descripcion></proyecto> </proyectos>', '2015-04-04 16:21:15', 'Ya existe un registro para el proyecto 68'),
(35, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>3</id><sesion>2015022075835153</sesion><nombre>Lectura Acta No. 56  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 04:26:59 p.m.  </fecha><descripcion>Lectura del Acta sesión anterior  </descripcion></proyecto><proyecto><id>4</id><sesion>2015022075835153</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 04:51:41 p.m.  </fecha><descripcion>Ley marco que regula la Seguridad Social en el país.  </descripcion></proyecto><proyecto><id>5</id><sesion>2015022075835153</sesion><nombre>Ascenso Policia Nacional   </nombre><tipoacto>Dictamen  </tipoacto><debate>Único Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Secretaria de Seguridad  </proponente><fecha>2015-04-04 05:02:34 p.m.  </fecha><descripcion>Ascenso a: Felix Villanueva, David Aguilar, Marco Tulio Cruz Aguilar, Ramon Adalberto Martinez Hernandez, Roger Osmin Bardales, Javier Flores, Quintin Juarez, Hector Ivan Mejia,Jose Osorio Santos, Santos Daniel Lopez, William Velasquez,Hugo Velasquez, Rigoberto Oseguera, Johap Merlo, Mario de Jesus Medina, Orlando Mejia, Jose Diaz, EduardoTurcios,John Paul Altamirano, Cesar Gonzalez, Roberto Ortega, Luis Osabas, Melvin Garcia, Juan Pablo Aguilar, Emerson Mejia, Sergio Paz, Perci Saldivar,Jose Perrufino, Jose Hernandez, Francisco Somosa.  </descripcion></proyecto> </proyectos>', '2015-04-04 16:22:48', 'Ya existe un registro para el proyecto 68'),
(36, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-570432797</sesion><nombre>Condecoración Ban Ki Moon Secretario General ONU  </nombre><tipoacto>Protocolo </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision>No Aplica </comision><partido>No Aplica </partido><proponente>No Aplica </proponente><fecha>2015-04-04 05:50:51 p.m. </fecha><descripcion>Acto de entrega de la Placa de Oro </descripcion></proyecto> </proyectos>', '2015-04-04 16:50:56', 'SUCCESS'),
(37, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>3</id><sesion>2015022075835153</sesion><nombre>Lectura Acta No. 56  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 04:26:59 p.m.  </fecha><descripcion>Lectura del Acta sesión anterior  </descripcion></proyecto><proyecto><id>4</id><sesion>2015022075835153</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 04:51:41 p.m.  </fecha><descripcion>Ley marco que regula la Seguridad Social en el país.  </descripcion></proyecto><proyecto><id>5</id><sesion>2015022075835153</sesion><nombre>Ascenso Policia Nacional   </nombre><tipoacto>Dictamen  </tipoacto><debate>Único Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Secretaria de Seguridad  </proponente><fecha>2015-04-04 05:02:34 p.m.  </fecha><descripcion>Ascenso a: Felix Villanueva, David Aguilar, Marco Tulio Cruz Aguilar, Ramon Adalberto Martinez Hernandez, Roger Osmin Bardales, Javier Flores, Quintin Juarez, Hector Ivan Mejia,Jose Osorio Santos, Santos Daniel Lopez, William Velasquez,Hugo Velasquez, Rigoberto Oseguera, Johap Merlo, Mario de Jesus Medina, Orlando Mejia, Jose Diaz, EduardoTurcios,John Paul Altamirano, Cesar Gonzalez, Roberto Ortega, Luis Osabas, Melvin Garcia, Juan Pablo Aguilar, Emerson Mejia, Sergio Paz, Perci Saldivar,Jose Perrufino, Jose Hernandez, Francisco Somosa.  </descripcion></proyecto><proyecto><id>6</id><sesion>201502-570432797</sesion><nombre>Lectura Acta No. 57  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 05:37:47 p.m.  </fecha><descripcion>Lectura  acta sesión anterior  </descripcion></proyecto><proyecto><id>7</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:49:01 p.m.  </fecha><descripcion>Ley orientada a ordenar, coordinar y redefinir los diferentes planes, programa e instituciones que conforman el sistema de seguridad social vigente, a fin de brindar a la población una protección social tendente a la universalidad basada en una política fiscal redistributiva con un gobierno corporativo eficaz y competente que priorice sobre las necesidades básicas por ciclo de vida de los mas necesitados. \n\nSe discutió hasta art. 49  </descripcion></proyecto> </proyectos>', '2015-04-04 16:51:21', 'Ya existe un registro para el proyecto 82'),
(38, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>3</id><sesion>2015022075835153</sesion><nombre>Lectura Acta No. 56  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 04:26:59 p.m.  </fecha><descripcion>Lectura del Acta sesión anterior  </descripcion></proyecto><proyecto><id>4</id><sesion>2015022075835153</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 04:51:41 p.m.  </fecha><descripcion>Ley marco que regula la Seguridad Social en el país.  </descripcion></proyecto><proyecto><id>5</id><sesion>2015022075835153</sesion><nombre>Ascenso Policia Nacional   </nombre><tipoacto>Dictamen  </tipoacto><debate>Único Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Secretaria de Seguridad  </proponente><fecha>2015-04-04 05:02:34 p.m.  </fecha><descripcion>Ascenso a: Felix Villanueva, David Aguilar, Marco Tulio Cruz Aguilar, Ramon Adalberto Martinez Hernandez, Roger Osmin Bardales, Javier Flores, Quintin Juarez, Hector Ivan Mejia,Jose Osorio Santos, Santos Daniel Lopez, William Velasquez,Hugo Velasquez, Rigoberto Oseguera, Johap Merlo, Mario de Jesus Medina, Orlando Mejia, Jose Diaz, EduardoTurcios,John Paul Altamirano, Cesar Gonzalez, Roberto Ortega, Luis Osabas, Melvin Garcia, Juan Pablo Aguilar, Emerson Mejia, Sergio Paz, Perci Saldivar,Jose Perrufino, Jose Hernandez, Francisco Somosa.  </descripcion></proyecto><proyecto><id>6</id><sesion>201502-570432797</sesion><nombre>Lectura Acta No. 57  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 05:37:47 p.m.  </fecha><descripcion>Lectura  acta sesión anterior  </descripcion></proyecto><proyecto><id>7</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:49:01 p.m.  </fecha><descripcion>Ley orientada a ordenar, coordinar y redefinir los diferentes planes, programa e instituciones que conforman el sistema de seguridad social vigente, a fin de brindar a la población una protección social tendente a la universalidad basada en una política fiscal redistributiva con un gobierno corporativo eficaz y competente que priorice sobre las necesidades básicas por ciclo de vida de los mas necesitados. \n\nSe discutió hasta art. 49  </descripcion></proyecto> </proyectos>', '2015-04-04 16:51:40', 'Ya existe un registro para el proyecto 82'),
(39, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>3</id><sesion>2015022075835153</sesion><nombre>Lectura Acta No. 56  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 04:26:59 p.m.  </fecha><descripcion>Lectura del Acta sesión anterior  </descripcion></proyecto><proyecto><id>4</id><sesion>2015022075835153</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 04:51:41 p.m.  </fecha><descripcion>Ley marco que regula la Seguridad Social en el país.  </descripcion></proyecto><proyecto><id>5</id><sesion>2015022075835153</sesion><nombre>Ascenso Policia Nacional   </nombre><tipoacto>Dictamen  </tipoacto><debate>Único Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Secretaria de Seguridad  </proponente><fecha>2015-04-04 05:02:34 p.m.  </fecha><descripcion>Ascenso a: Felix Villanueva, David Aguilar, Marco Tulio Cruz Aguilar, Ramon Adalberto Martinez Hernandez, Roger Osmin Bardales, Javier Flores, Quintin Juarez, Hector Ivan Mejia,Jose Osorio Santos, Santos Daniel Lopez, William Velasquez,Hugo Velasquez, Rigoberto Oseguera, Johap Merlo, Mario de Jesus Medina, Orlando Mejia, Jose Diaz, EduardoTurcios,John Paul Altamirano, Cesar Gonzalez, Roberto Ortega, Luis Osabas, Melvin Garcia, Juan Pablo Aguilar, Emerson Mejia, Sergio Paz, Perci Saldivar,Jose Perrufino, Jose Hernandez, Francisco Somosa.  </descripcion></proyecto><proyecto><id>6</id><sesion>201502-570432797</sesion><nombre>Lectura Acta No. 57  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 05:37:47 p.m.  </fecha><descripcion>Lectura  acta sesión anterior  </descripcion></proyecto><proyecto><id>7</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:49:01 p.m.  </fecha><descripcion>Ley orientada a ordenar, coordinar y redefinir los diferentes planes, programa e instituciones que conforman el sistema de seguridad social vigente, a fin de brindar a la población una protección social tendente a la universalidad basada en una política fiscal redistributiva con un gobierno corporativo eficaz y competente que priorice sobre las necesidades básicas por ciclo de vida de los mas necesitados. \n\nSe discutió hasta art. 49  </descripcion></proyecto> </proyectos>', '2015-04-04 16:51:55', 'Ya existe un registro para el proyecto 82'),
(40, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>3</id><sesion>2015022075835153</sesion><nombre>Lectura Acta No. 56  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 04:26:59 p.m.  </fecha><descripcion>Lectura del Acta sesión anterior  </descripcion></proyecto><proyecto><id>4</id><sesion>2015022075835153</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 04:51:41 p.m.  </fecha><descripcion>Ley marco que regula la Seguridad Social en el país.  </descripcion></proyecto><proyecto><id>5</id><sesion>2015022075835153</sesion><nombre>Ascenso Policia Nacional   </nombre><tipoacto>Dictamen  </tipoacto><debate>Único Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Secretaria de Seguridad  </proponente><fecha>2015-04-04 05:02:34 p.m.  </fecha><descripcion>Ascenso a: Felix Villanueva, David Aguilar, Marco Tulio Cruz Aguilar, Ramon Adalberto Martinez Hernandez, Roger Osmin Bardales, Javier Flores, Quintin Juarez, Hector Ivan Mejia,Jose Osorio Santos, Santos Daniel Lopez, William Velasquez,Hugo Velasquez, Rigoberto Oseguera, Johap Merlo, Mario de Jesus Medina, Orlando Mejia, Jose Diaz, EduardoTurcios,John Paul Altamirano, Cesar Gonzalez, Roberto Ortega, Luis Osabas, Melvin Garcia, Juan Pablo Aguilar, Emerson Mejia, Sergio Paz, Perci Saldivar,Jose Perrufino, Jose Hernandez, Francisco Somosa.  </descripcion></proyecto><proyecto><id>6</id><sesion>201502-570432797</sesion><nombre>Lectura Acta No. 57  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 05:37:47 p.m.  </fecha><descripcion>Lectura  acta sesión anterior  </descripcion></proyecto><proyecto><id>7</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:49:01 p.m.  </fecha><descripcion>Ley orientada a ordenar, coordinar y redefinir los diferentes planes, programa e instituciones que conforman el sistema de seguridad social vigente, a fin de brindar a la población una protección social tendente a la universalidad basada en una política fiscal redistributiva con un gobierno corporativo eficaz y competente que priorice sobre las necesidades básicas por ciclo de vida de los mas necesitados. \n\nSe discutió hasta art. 49  </descripcion></proyecto> </proyectos>', '2015-04-04 16:52:11', 'Ya existe un registro para el proyecto 82'),
(41, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>3</id><sesion>2015022075835153</sesion><nombre>Lectura Acta No. 56  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 04:26:59 p.m.  </fecha><descripcion>Lectura del Acta sesión anterior  </descripcion></proyecto><proyecto><id>4</id><sesion>2015022075835153</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 04:51:41 p.m.  </fecha><descripcion>Ley marco que regula la Seguridad Social en el país.  </descripcion></proyecto><proyecto><id>5</id><sesion>2015022075835153</sesion><nombre>Ascenso Policia Nacional   </nombre><tipoacto>Dictamen  </tipoacto><debate>Único Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Secretaria de Seguridad  </proponente><fecha>2015-04-04 05:02:34 p.m.  </fecha><descripcion>Ascenso a: Felix Villanueva, David Aguilar, Marco Tulio Cruz Aguilar, Ramon Adalberto Martinez Hernandez, Roger Osmin Bardales, Javier Flores, Quintin Juarez, Hector Ivan Mejia,Jose Osorio Santos, Santos Daniel Lopez, William Velasquez,Hugo Velasquez, Rigoberto Oseguera, Johap Merlo, Mario de Jesus Medina, Orlando Mejia, Jose Diaz, EduardoTurcios,John Paul Altamirano, Cesar Gonzalez, Roberto Ortega, Luis Osabas, Melvin Garcia, Juan Pablo Aguilar, Emerson Mejia, Sergio Paz, Perci Saldivar,Jose Perrufino, Jose Hernandez, Francisco Somosa.  </descripcion></proyecto><proyecto><id>6</id><sesion>201502-570432797</sesion><nombre>Lectura Acta No. 57  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 05:37:47 p.m.  </fecha><descripcion>Lectura  acta sesión anterior  </descripcion></proyecto><proyecto><id>7</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:49:01 p.m.  </fecha><descripcion>Ley orientada a ordenar, coordinar y redefinir los diferentes planes, programa e instituciones que conforman el sistema de seguridad social vigente, a fin de brindar a la población una protección social tendente a la universalidad basada en una política fiscal redistributiva con un gobierno corporativo eficaz y competente que priorice sobre las necesidades básicas por ciclo de vida de los mas necesitados. \n\nSe discutió hasta art. 49  </descripcion></proyecto> </proyectos>', '2015-04-04 16:54:41', 'Ya existe un registro para el proyecto 82'),
(42, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor) </nombre><tipoacto>Dictamen </tipoacto><debate>Primer Debate </debate><status>Continúa en Debate </status><comision>Especial </comision><partido>No Aplica </partido><proponente>Despacho Presidencial </proponente><fecha>2015-04-04 05:57:12 p.m. </fecha><descripcion>Ley que regula el nuevo sistema de seguridad social. Revision hasta art. 49 </descripcion></proyecto> </proyectos>', '2015-04-04 16:57:15', 'Ya existe un registro para el proyecto 82'),
(43, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>3</id><sesion>2015022075835153</sesion><nombre>Lectura Acta No. 56  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 04:26:59 p.m.  </fecha><descripcion>Lectura del Acta sesión anterior  </descripcion></proyecto><proyecto><id>4</id><sesion>2015022075835153</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 04:51:41 p.m.  </fecha><descripcion>Ley marco que regula la Seguridad Social en el país.  </descripcion></proyecto><proyecto><id>5</id><sesion>2015022075835153</sesion><nombre>Ascenso Policia Nacional   </nombre><tipoacto>Dictamen  </tipoacto><debate>Único Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Secretaria de Seguridad  </proponente><fecha>2015-04-04 05:02:34 p.m.  </fecha><descripcion>Ascenso a: Felix Villanueva, David Aguilar, Marco Tulio Cruz Aguilar, Ramon Adalberto Martinez Hernandez, Roger Osmin Bardales, Javier Flores, Quintin Juarez, Hector Ivan Mejia,Jose Osorio Santos, Santos Daniel Lopez, William Velasquez,Hugo Velasquez, Rigoberto Oseguera, Johap Merlo, Mario de Jesus Medina, Orlando Mejia, Jose Diaz, EduardoTurcios,John Paul Altamirano, Cesar Gonzalez, Roberto Ortega, Luis Osabas, Melvin Garcia, Juan Pablo Aguilar, Emerson Mejia, Sergio Paz, Perci Saldivar,Jose Perrufino, Jose Hernandez, Francisco Somosa.  </descripcion></proyecto><proyecto><id>6</id><sesion>201502-570432797</sesion><nombre>Lectura Acta No. 57  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 05:37:47 p.m.  </fecha><descripcion>Lectura  acta sesión anterior  </descripcion></proyecto><proyecto><id>7</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:49:01 p.m.  </fecha><descripcion>Ley orientada a ordenar, coordinar y redefinir los diferentes planes, programa e instituciones que conforman el sistema de seguridad social vigente, a fin de brindar a la población una protección social tendente a la universalidad basada en una política fiscal redistributiva con un gobierno corporativo eficaz y competente que priorice sobre las necesidades básicas por ciclo de vida de los mas necesitados. \n\nSe discutió hasta art. 49  </descripcion></proyecto><proyecto><id>8</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:57:12 p.m.  </fecha><descripcion>Ley que regula el nuevo sistema de seguridad social. Revision hasta art. 49  </descripcion></proyecto> </proyectos>', '2015-04-04 16:58:30', 'Ya existe un registro para el proyecto 82'),
(44, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>3</id><sesion>2015022075835153</sesion><nombre>Lectura Acta No. 56  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 04:26:59 p.m.  </fecha><descripcion>Lectura del Acta sesión anterior  </descripcion></proyecto><proyecto><id>4</id><sesion>2015022075835153</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 04:51:41 p.m.  </fecha><descripcion>Ley marco que regula la Seguridad Social en el país.  </descripcion></proyecto><proyecto><id>5</id><sesion>2015022075835153</sesion><nombre>Ascenso Policia Nacional   </nombre><tipoacto>Dictamen  </tipoacto><debate>Único Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Secretaria de Seguridad  </proponente><fecha>2015-04-04 05:02:34 p.m.  </fecha><descripcion>Ascenso a: Felix Villanueva, David Aguilar, Marco Tulio Cruz Aguilar, Ramon Adalberto Martinez Hernandez, Roger Osmin Bardales, Javier Flores, Quintin Juarez, Hector Ivan Mejia,Jose Osorio Santos, Santos Daniel Lopez, William Velasquez,Hugo Velasquez, Rigoberto Oseguera, Johap Merlo, Mario de Jesus Medina, Orlando Mejia, Jose Diaz, EduardoTurcios,John Paul Altamirano, Cesar Gonzalez, Roberto Ortega, Luis Osabas, Melvin Garcia, Juan Pablo Aguilar, Emerson Mejia, Sergio Paz, Perci Saldivar,Jose Perrufino, Jose Hernandez, Francisco Somosa.  </descripcion></proyecto><proyecto><id>6</id><sesion>201502-570432797</sesion><nombre>Lectura Acta No. 57  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 05:37:47 p.m.  </fecha><descripcion>Lectura  acta sesión anterior  </descripcion></proyecto><proyecto><id>7</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:49:01 p.m.  </fecha><descripcion>Ley orientada a ordenar, coordinar y redefinir los diferentes planes, programa e instituciones que conforman el sistema de seguridad social vigente, a fin de brindar a la población una protección social tendente a la universalidad basada en una política fiscal redistributiva con un gobierno corporativo eficaz y competente que priorice sobre las necesidades básicas por ciclo de vida de los mas necesitados. \n\nSe discutió hasta art. 49  </descripcion></proyecto><proyecto><id>8</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:57:12 p.m.  </fecha><descripcion>Ley que regula el nuevo sistema de seguridad social. Revision hasta art. 49  </descripcion></proyecto> </proyectos>', '2015-04-04 17:00:59', 'Ya existe un registro para el proyecto 82');
INSERT INTO `detalle_intervencion_log` (`id`, `xml`, `fecha`, `status`) VALUES
(45, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>3</id><sesion>2015022075835153</sesion><nombre>Lectura Acta No. 56  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 04:26:59 p.m.  </fecha><descripcion>Lectura del Acta sesión anterior  </descripcion></proyecto><proyecto><id>4</id><sesion>2015022075835153</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 04:51:41 p.m.  </fecha><descripcion>Ley marco que regula la Seguridad Social en el país.  </descripcion></proyecto><proyecto><id>5</id><sesion>2015022075835153</sesion><nombre>Ascenso Policia Nacional   </nombre><tipoacto>Dictamen  </tipoacto><debate>Único Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Secretaria de Seguridad  </proponente><fecha>2015-04-04 05:02:34 p.m.  </fecha><descripcion>Ascenso a: Felix Villanueva, David Aguilar, Marco Tulio Cruz Aguilar, Ramon Adalberto Martinez Hernandez, Roger Osmin Bardales, Javier Flores, Quintin Juarez, Hector Ivan Mejia,Jose Osorio Santos, Santos Daniel Lopez, William Velasquez,Hugo Velasquez, Rigoberto Oseguera, Johap Merlo, Mario de Jesus Medina, Orlando Mejia, Jose Diaz, EduardoTurcios,John Paul Altamirano, Cesar Gonzalez, Roberto Ortega, Luis Osabas, Melvin Garcia, Juan Pablo Aguilar, Emerson Mejia, Sergio Paz, Perci Saldivar,Jose Perrufino, Jose Hernandez, Francisco Somosa.  </descripcion></proyecto><proyecto><id>6</id><sesion>201502-570432797</sesion><nombre>Lectura Acta No. 57  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 05:37:47 p.m.  </fecha><descripcion>Lectura  acta sesión anterior  </descripcion></proyecto><proyecto><id>7</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:49:01 p.m.  </fecha><descripcion>Ley orientada a ordenar, coordinar y redefinir los diferentes planes, programa e instituciones que conforman el sistema de seguridad social vigente, a fin de brindar a la población una protección social tendente a la universalidad basada en una política fiscal redistributiva con un gobierno corporativo eficaz y competente que priorice sobre las necesidades básicas por ciclo de vida de los mas necesitados. \n\nSe discutió hasta art. 49  </descripcion></proyecto><proyecto><id>8</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:57:12 p.m.  </fecha><descripcion>Ley que regula el nuevo sistema de seguridad social. Revision hasta art. 49  </descripcion></proyecto> </proyectos>', '2015-04-04 19:59:40', 'Ya existe un registro para el proyecto 82'),
(46, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-1537668885</sesion><nombre>Modificación de contrato de construcción </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Aprobado </status><comision>Especial </comision><partido>No Aplica </partido><proponente>No Aplicar </proponente><fecha>2015-04-04 09:04:10 p.m. </fecha><descripcion>Modificación del contrato de construcción del puente sobre río Guayape y puente sobre río Juticalpa; Para la inclusión de 240 m de construcción en el primero y 60 m de construcción en la segunda, Ampliando plazo de ejecución en 7 meses, entre la empresa CERMACO y el estado. </descripcion></proyecto> </proyectos>', '2015-04-04 20:04:13', 'SUCCESS'),
(47, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-1537668885</sesion><nombre>Ley de Pesca y Acuicultura  </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Continúa en Debate </status><comision>Agricultura y Ganadería </comision><partido>No Aplica </partido><proponente>Despacho Presidencial </proponente><fecha>2015-04-04 09:06:51 p.m. </fecha><descripcion>Ley que regula lo concerniente a la pesca y acuicultura artesanal e industrial en el pais. </descripcion></proyecto> </proyectos>', '2015-04-04 20:06:54', 'Ya existe un registro para el proyecto 62'),
(48, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-1537668885</sesion><nombre>Ley de Comercio Electrónico </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Aprobado </status><comision>Especial </comision><partido>Partido Nacional (PN) </partido><proponente>Rodolfo Irías Navas </proponente><fecha>2015-04-04 09:15:29 p.m. </fecha><descripcion>Ley que regula las transacciones electrónicas  </descripcion></proyecto> </proyectos>', '2015-04-04 20:15:31', 'Ya existe un registro para el proyecto 76'),
(49, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>3</id><sesion>2015022075835153</sesion><nombre>Lectura Acta No. 56  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 04:26:59 p.m.  </fecha><descripcion>Lectura del Acta sesión anterior  </descripcion></proyecto><proyecto><id>4</id><sesion>2015022075835153</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 04:51:41 p.m.  </fecha><descripcion>Ley marco que regula la Seguridad Social en el país.  </descripcion></proyecto><proyecto><id>5</id><sesion>2015022075835153</sesion><nombre>Ascenso Policia Nacional   </nombre><tipoacto>Dictamen  </tipoacto><debate>Único Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Secretaria de Seguridad  </proponente><fecha>2015-04-04 05:02:34 p.m.  </fecha><descripcion>Ascenso a: Felix Villanueva, David Aguilar, Marco Tulio Cruz Aguilar, Ramon Adalberto Martinez Hernandez, Roger Osmin Bardales, Javier Flores, Quintin Juarez, Hector Ivan Mejia,Jose Osorio Santos, Santos Daniel Lopez, William Velasquez,Hugo Velasquez, Rigoberto Oseguera, Johap Merlo, Mario de Jesus Medina, Orlando Mejia, Jose Diaz, EduardoTurcios,John Paul Altamirano, Cesar Gonzalez, Roberto Ortega, Luis Osabas, Melvin Garcia, Juan Pablo Aguilar, Emerson Mejia, Sergio Paz, Perci Saldivar,Jose Perrufino, Jose Hernandez, Francisco Somosa.  </descripcion></proyecto><proyecto><id>6</id><sesion>201502-570432797</sesion><nombre>Lectura Acta No. 57  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 05:37:47 p.m.  </fecha><descripcion>Lectura  acta sesión anterior  </descripcion></proyecto><proyecto><id>7</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:49:01 p.m.  </fecha><descripcion>Ley orientada a ordenar, coordinar y redefinir los diferentes planes, programa e instituciones que conforman el sistema de seguridad social vigente, a fin de brindar a la población una protección social tendente a la universalidad basada en una política fiscal redistributiva con un gobierno corporativo eficaz y competente que priorice sobre las necesidades básicas por ciclo de vida de los mas necesitados. \n\nSe discutió hasta art. 49  </descripcion></proyecto><proyecto><id>8</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:57:12 p.m.  </fecha><descripcion>Ley que regula el nuevo sistema de seguridad social. Revision hasta art. 49  </descripcion></proyecto><proyecto><id>9</id><sesion>201502-1537668885</sesion><nombre>Ley de Pesca y Acuicultura   </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Continúa en Debate  </status><comision>Agricultura y Ganadería  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 09:06:51 p.m.  </fecha><descripcion>Ley que regula lo concerniente a la pesca y acuicultura artesanal e industrial en el pais.  </descripcion></proyecto><proyecto><id>10</id><sesion>201502-1537668885</sesion><nombre>Ley de Comercio Electrónico  </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>Partido Nacional (PN)  </partido><proponente>Rodolfo Irías Navas  </proponente><fecha>2015-04-04 09:15:29 p.m.  </fecha><descripcion>Ley que regula las transacciones electrónicas   </descripcion></proyecto> </proyectos>', '2015-04-04 20:25:17', 'Ya existe un registro para el proyecto 76'),
(50, '<?xml version="1.0" encoding="UTF-8"?> <proyectos> </proyectos>', '2015-04-04 20:26:05', ''),
(51, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>3</id><sesion>2015022075835153</sesion><nombre>Lectura Acta No. 56  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 04:26:59 p.m.  </fecha><descripcion>Lectura del Acta sesión anterior  </descripcion></proyecto><proyecto><id>4</id><sesion>2015022075835153</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 04:51:41 p.m.  </fecha><descripcion>Ley marco que regula la Seguridad Social en el país.  </descripcion></proyecto><proyecto><id>5</id><sesion>2015022075835153</sesion><nombre>Ascenso Policia Nacional   </nombre><tipoacto>Dictamen  </tipoacto><debate>Único Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Secretaria de Seguridad  </proponente><fecha>2015-04-04 05:02:34 p.m.  </fecha><descripcion>Ascenso a: Felix Villanueva, David Aguilar, Marco Tulio Cruz Aguilar, Ramon Adalberto Martinez Hernandez, Roger Osmin Bardales, Javier Flores, Quintin Juarez, Hector Ivan Mejia,Jose Osorio Santos, Santos Daniel Lopez, William Velasquez,Hugo Velasquez, Rigoberto Oseguera, Johap Merlo, Mario de Jesus Medina, Orlando Mejia, Jose Diaz, EduardoTurcios,John Paul Altamirano, Cesar Gonzalez, Roberto Ortega, Luis Osabas, Melvin Garcia, Juan Pablo Aguilar, Emerson Mejia, Sergio Paz, Perci Saldivar,Jose Perrufino, Jose Hernandez, Francisco Somosa.  </descripcion></proyecto><proyecto><id>6</id><sesion>201502-570432797</sesion><nombre>Lectura Acta No. 57  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 05:37:47 p.m.  </fecha><descripcion>Lectura  acta sesión anterior  </descripcion></proyecto><proyecto><id>7</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:49:01 p.m.  </fecha><descripcion>Ley orientada a ordenar, coordinar y redefinir los diferentes planes, programa e instituciones que conforman el sistema de seguridad social vigente, a fin de brindar a la población una protección social tendente a la universalidad basada en una política fiscal redistributiva con un gobierno corporativo eficaz y competente que priorice sobre las necesidades básicas por ciclo de vida de los mas necesitados. \n\nSe discutió hasta art. 49  </descripcion></proyecto><proyecto><id>8</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:57:12 p.m.  </fecha><descripcion>Ley que regula el nuevo sistema de seguridad social. Revision hasta art. 49  </descripcion></proyecto><proyecto><id>9</id><sesion>201502-1537668885</sesion><nombre>Ley de Pesca y Acuicultura   </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Continúa en Debate  </status><comision>Agricultura y Ganadería  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 09:06:51 p.m.  </fecha><descripcion>Ley que regula lo concerniente a la pesca y acuicultura artesanal e industrial en el pais.  </descripcion></proyecto><proyecto><id>10</id><sesion>201502-1537668885</sesion><nombre>Ley de Comercio Electrónico  </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>Partido Nacional (PN)  </partido><proponente>Rodolfo Irías Navas  </proponente><fecha>2015-04-04 09:15:29 p.m.  </fecha><descripcion>Ley que regula las transacciones electrónicas   </descripcion></proyecto> </proyectos>', '2015-04-04 20:27:20', 'Ya existe un registro para el proyecto 76'),
(52, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>3</id><sesion>2015022075835153</sesion><nombre>Lectura Acta No. 56  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 04:26:59 p.m.  </fecha><descripcion>Lectura del Acta sesión anterior  </descripcion></proyecto><proyecto><id>4</id><sesion>2015022075835153</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 04:51:41 p.m.  </fecha><descripcion>Ley marco que regula la Seguridad Social en el país.  </descripcion></proyecto><proyecto><id>5</id><sesion>2015022075835153</sesion><nombre>Ascenso Policia Nacional   </nombre><tipoacto>Dictamen  </tipoacto><debate>Único Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Secretaria de Seguridad  </proponente><fecha>2015-04-04 05:02:34 p.m.  </fecha><descripcion>Ascenso a: Felix Villanueva, David Aguilar, Marco Tulio Cruz Aguilar, Ramon Adalberto Martinez Hernandez, Roger Osmin Bardales, Javier Flores, Quintin Juarez, Hector Ivan Mejia,Jose Osorio Santos, Santos Daniel Lopez, William Velasquez,Hugo Velasquez, Rigoberto Oseguera, Johap Merlo, Mario de Jesus Medina, Orlando Mejia, Jose Diaz, EduardoTurcios,John Paul Altamirano, Cesar Gonzalez, Roberto Ortega, Luis Osabas, Melvin Garcia, Juan Pablo Aguilar, Emerson Mejia, Sergio Paz, Perci Saldivar,Jose Perrufino, Jose Hernandez, Francisco Somosa.  </descripcion></proyecto><proyecto><id>6</id><sesion>201502-570432797</sesion><nombre>Lectura Acta No. 57  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 05:37:47 p.m.  </fecha><descripcion>Lectura  acta sesión anterior  </descripcion></proyecto><proyecto><id>7</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:49:01 p.m.  </fecha><descripcion>Ley orientada a ordenar, coordinar y redefinir los diferentes planes, programa e instituciones que conforman el sistema de seguridad social vigente, a fin de brindar a la población una protección social tendente a la universalidad basada en una política fiscal redistributiva con un gobierno corporativo eficaz y competente que priorice sobre las necesidades básicas por ciclo de vida de los mas necesitados. \n\nSe discutió hasta art. 49  </descripcion></proyecto><proyecto><id>8</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:57:12 p.m.  </fecha><descripcion>Ley que regula el nuevo sistema de seguridad social. Revision hasta art. 49  </descripcion></proyecto><proyecto><id>9</id><sesion>201502-1537668885</sesion><nombre>Ley de Pesca y Acuicultura   </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Continúa en Debate  </status><comision>Agricultura y Ganadería  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 09:06:51 p.m.  </fecha><descripcion>Ley que regula lo concerniente a la pesca y acuicultura artesanal e industrial en el pais.  </descripcion></proyecto><proyecto><id>10</id><sesion>201502-1537668885</sesion><nombre>Ley de Comercio Electrónico  </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>Partido Nacional (PN)  </partido><proponente>Rodolfo Irías Navas  </proponente><fecha>2015-04-04 09:15:29 p.m.  </fecha><descripcion>Ley que regula las transacciones electrónicas   </descripcion></proyecto> </proyectos>', '2015-04-04 20:28:28', 'Ya existe un registro para el proyecto 76'),
(53, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-1537668885</sesion><nombre>Ley de Pesca y Acuicultura  </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Continúa en Debate </status><comision>Agricultura y Ganadería </comision><partido>No Aplica </partido><proponente>Despacho Presidencial </proponente><fecha>2015-04-05 09:59:55 a.m. </fecha><descripcion>Ley que regula lo concerniente a la pesca y acuicultura artesanal e industrial en el país. </descripcion></proyecto> </proyectos>', '2015-04-05 08:59:58', 'Ya existe un registro para el proyecto 62'),
(54, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>3</id><sesion>2015022075835153</sesion><nombre>Lectura Acta No. 56  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 04:26:59 p.m.  </fecha><descripcion>Lectura del Acta sesión anterior  </descripcion></proyecto><proyecto><id>4</id><sesion>2015022075835153</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 04:51:41 p.m.  </fecha><descripcion>Ley marco que regula la Seguridad Social en el país.  </descripcion></proyecto><proyecto><id>5</id><sesion>2015022075835153</sesion><nombre>Ascenso Policia Nacional   </nombre><tipoacto>Dictamen  </tipoacto><debate>Único Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Secretaria de Seguridad  </proponente><fecha>2015-04-04 05:02:34 p.m.  </fecha><descripcion>Ascenso a: Felix Villanueva, David Aguilar, Marco Tulio Cruz Aguilar, Ramon Adalberto Martinez Hernandez, Roger Osmin Bardales, Javier Flores, Quintin Juarez, Hector Ivan Mejia,Jose Osorio Santos, Santos Daniel Lopez, William Velasquez,Hugo Velasquez, Rigoberto Oseguera, Johap Merlo, Mario de Jesus Medina, Orlando Mejia, Jose Diaz, EduardoTurcios,John Paul Altamirano, Cesar Gonzalez, Roberto Ortega, Luis Osabas, Melvin Garcia, Juan Pablo Aguilar, Emerson Mejia, Sergio Paz, Perci Saldivar,Jose Perrufino, Jose Hernandez, Francisco Somosa.  </descripcion></proyecto><proyecto><id>6</id><sesion>201502-570432797</sesion><nombre>Lectura Acta No. 57  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 05:37:47 p.m.  </fecha><descripcion>Lectura  acta sesión anterior  </descripcion></proyecto><proyecto><id>7</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:49:01 p.m.  </fecha><descripcion>Ley orientada a ordenar, coordinar y redefinir los diferentes planes, programa e instituciones que conforman el sistema de seguridad social vigente, a fin de brindar a la población una protección social tendente a la universalidad basada en una política fiscal redistributiva con un gobierno corporativo eficaz y competente que priorice sobre las necesidades básicas por ciclo de vida de los mas necesitados. \n\nSe discutió hasta art. 49  </descripcion></proyecto><proyecto><id>8</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:57:12 p.m.  </fecha><descripcion>Ley que regula el nuevo sistema de seguridad social. Revision hasta art. 49  </descripcion></proyecto><proyecto><id>9</id><sesion>201502-1537668885</sesion><nombre>Ley de Pesca y Acuicultura   </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Continúa en Debate  </status><comision>Agricultura y Ganadería  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 09:06:51 p.m.  </fecha><descripcion>Ley que regula lo concerniente a la pesca y acuicultura artesanal e industrial en el pais.  </descripcion></proyecto><proyecto><id>10</id><sesion>201502-1537668885</sesion><nombre>Ley de Comercio Electrónico  </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>Partido Nacional (PN)  </partido><proponente>Rodolfo Irías Navas  </proponente><fecha>2015-04-04 09:15:29 p.m.  </fecha><descripcion>Ley que regula las transacciones electrónicas   </descripcion></proyecto><proyecto><id>11</id><sesion>201502-1537668885</sesion><nombre>Ley de Pesca y Acuicultura   </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Continúa en Debate  </status><comision>Agricultura y Ganadería  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-05 09:59:55 a.m.  </fecha><descripcion>Ley que regula lo concerniente a la pesca y acuicultura artesanal e industrial en el país.  </descripcion></proyecto> </proyectos>', '2015-04-05 09:04:31', 'Ya existe un registro para el proyecto 62'),
(55, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-1537668885</sesion><nombre>Ley de Pesca y Acuicultura  </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Continúa en Debate </status><comision>Agricultura y Ganadería </comision><partido>No Aplica </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-05 10:06:43 a.m. </fecha><descripcion>Regula la pesca y acuicultura artesanal e industrial </descripcion></proyecto> </proyectos>', '2015-04-05 09:06:46', 'Ya existe un registro para el proyecto 62'),
(56, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>3</id><sesion>2015022075835153</sesion><nombre>Lectura Acta No. 56  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 04:26:59 p.m.  </fecha><descripcion>Lectura del Acta sesión anterior  </descripcion></proyecto><proyecto><id>4</id><sesion>2015022075835153</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 04:51:41 p.m.  </fecha><descripcion>Ley marco que regula la Seguridad Social en el país.  </descripcion></proyecto><proyecto><id>5</id><sesion>2015022075835153</sesion><nombre>Ascenso Policia Nacional   </nombre><tipoacto>Dictamen  </tipoacto><debate>Único Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Secretaria de Seguridad  </proponente><fecha>2015-04-04 05:02:34 p.m.  </fecha><descripcion>Ascenso a: Felix Villanueva, David Aguilar, Marco Tulio Cruz Aguilar, Ramon Adalberto Martinez Hernandez, Roger Osmin Bardales, Javier Flores, Quintin Juarez, Hector Ivan Mejia,Jose Osorio Santos, Santos Daniel Lopez, William Velasquez,Hugo Velasquez, Rigoberto Oseguera, Johap Merlo, Mario de Jesus Medina, Orlando Mejia, Jose Diaz, EduardoTurcios,John Paul Altamirano, Cesar Gonzalez, Roberto Ortega, Luis Osabas, Melvin Garcia, Juan Pablo Aguilar, Emerson Mejia, Sergio Paz, Perci Saldivar,Jose Perrufino, Jose Hernandez, Francisco Somosa.  </descripcion></proyecto><proyecto><id>6</id><sesion>201502-570432797</sesion><nombre>Lectura Acta No. 57  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 05:37:47 p.m.  </fecha><descripcion>Lectura  acta sesión anterior  </descripcion></proyecto><proyecto><id>7</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:49:01 p.m.  </fecha><descripcion>Ley orientada a ordenar, coordinar y redefinir los diferentes planes, programa e instituciones que conforman el sistema de seguridad social vigente, a fin de brindar a la población una protección social tendente a la universalidad basada en una política fiscal redistributiva con un gobierno corporativo eficaz y competente que priorice sobre las necesidades básicas por ciclo de vida de los mas necesitados. \n\nSe discutió hasta art. 49  </descripcion></proyecto><proyecto><id>8</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:57:12 p.m.  </fecha><descripcion>Ley que regula el nuevo sistema de seguridad social. Revision hasta art. 49  </descripcion></proyecto><proyecto><id>9</id><sesion>201502-1537668885</sesion><nombre>Ley de Pesca y Acuicultura   </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Continúa en Debate  </status><comision>Agricultura y Ganadería  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 09:06:51 p.m.  </fecha><descripcion>Ley que regula lo concerniente a la pesca y acuicultura artesanal e industrial en el pais.  </descripcion></proyecto><proyecto><id>10</id><sesion>201502-1537668885</sesion><nombre>Ley de Comercio Electrónico  </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>Partido Nacional (PN)  </partido><proponente>Rodolfo Irías Navas  </proponente><fecha>2015-04-04 09:15:29 p.m.  </fecha><descripcion>Ley que regula las transacciones electrónicas   </descripcion></proyecto><proyecto><id>11</id><sesion>201502-1537668885</sesion><nombre>Ley de Pesca y Acuicultura   </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Continúa en Debate  </status><comision>Agricultura y Ganadería  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-05 09:59:55 a.m.  </fecha><descripcion>Ley que regula lo concerniente a la pesca y acuicultura artesanal e industrial en el país.  </descripcion></proyecto><proyecto><id>12</id><sesion>201502-1537668885</sesion><nombre>Ley de Pesca y Acuicultura   </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Continúa en Debate  </status><comision>Agricultura y Ganadería  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial   </proponente><fecha>2015-04-05 10:06:43 a.m.  </fecha><descripcion>Regula la pesca y acuicultura artesanal e industrial  </descripcion></proyecto> </proyectos>', '2015-04-05 09:08:52', 'Ya existe un registro para el proyecto 62'),
(57, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-1537668885</sesion><nombre>Acto de Prueba </nombre><tipoacto>Protocolo </tipoacto><debate>Primer Debate </debate><status>No Aplica </status><comision>No Aplica </comision><partido>No Aplica </partido><proponente>No Aplica </proponente><fecha>2015-04-05 10:10:27 a.m. </fecha><descripcion>Prueba </descripcion></proyecto> </proyectos>', '2015-04-05 09:10:30', 'SUCCESS'),
(58, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502811860867</sesion><nombre>Ley de Promoción para el Desarrollo de Pequeñosn y Medianos Embalses para la Captació de Agua para Consumo Humano </nombre><tipoacto>Dictamen </tipoacto><debate>Primer Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Especial </comision><partido>Partido Nacional (PN) </partido><proponente>Miguel Edgardo Martínez Pineda </proponente><fecha>2015-04-05 10:25:44 a.m. </fecha><descripcion>Tiene como objetivo establecer los principios y  regulaciones aplicables para el aprovechamiento del Recurso hídrico a través de pequeños y medianos embalses, con fines de abastecimiento de agua para consumo humano y la generación de energía, en comunidades rurales y semiurbanas a nivel nacional. </descripcion></proyecto> </proyectos>', '2015-04-05 09:25:49', 'SUCCESS'),
(59, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502811860867</sesion><nombre>Contrato para la Generacion de Energia  entre SERNAM y R4E, S.A. de C.V. </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Aprobado </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM </proponente><fecha>2015-04-05 10:29:25 a.m. </fecha><descripcion>Contrato de operación  para la generación de potencia energética entre SERNAM y la empresa R4e S.A. de C.V, en la localidad de Puerto Cortes, departamento de Cortes.  </descripcion></proyecto> </proyectos>', '2015-04-05 09:29:26', 'SUCCESS'),
(60, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502811860867</sesion><nombre>Contrato 45-2011 para la Generación de Energía entre SERNAM e INVERSA </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Aprobado </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM </proponente><fecha>2015-04-05 10:32:28 a.m. </fecha><descripcion>Contrato  de operación No. 045-2011 para la generación y potenciación energética entre SERNAM e Inversa. Para operar el proyecto hidroeléctrico Los Churune ubicado en el Municipio de San Jerónimo, Aldea Potrero Sucio, en el Departamento de Comayagua.   </descripcion></proyecto> </proyectos>', '2015-04-05 09:32:31', 'SUCCESS'),
(61, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502811860867</sesion><nombre>Contrato No. 268-2014 para Generacion de Energia entre la ENEE y Energy Hstar, S.A. (EHSSA) </nombre><tipoacto>Dictamen </tipoacto><debate>Segundo Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM </proponente><fecha>2015-04-05 10:37:09 a.m. </fecha><descripcion>Contrato No. 268-2014 entre la ENEE y ENERGY HSTAR, S.A. (EHSSA),  para las instalaciones de la Planta Hidroeléctrica Loma Larga, ubicado en el Municipio de Yoro, Departamento de Yoro. </descripcion></proyecto> </proyectos>', '2015-04-05 09:37:12', 'SUCCESS'),
(62, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502811860867</sesion><nombre>Contrato No. 183-2014 para Generación de Energía. </nombre><tipoacto>Dictamen </tipoacto><debate>Segundo Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM </proponente><fecha>2015-04-05 10:39:53 a.m. </fecha><descripcion>Contrato para la generación de energía eléctrica. </descripcion></proyecto> </proyectos>', '2015-04-05 09:39:56', 'SUCCESS'),
(63, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502811860867</sesion><nombre>Contrato No. 184-2014 para Generación de Energía entre la ENEE e Hidroeléctrica El Naranjito </nombre><tipoacto>Dictamen </tipoacto><debate>Segundo Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM </proponente><fecha>2015-04-05 10:42:25 a.m. </fecha><descripcion>Contrato No. 184-2014 para la generación de energía eléctrica con fuentes renovables entre ENEE y la sociedad mercantil hidroeléctrica El Naranjito. </descripcion></proyecto> </proyectos>', '2015-04-05 09:42:28', 'SUCCESS'),
(64, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502811860867</sesion><nombre>Ley de Pesca y Acuicultura  </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Continúa en Debate </status><comision>Agricultura y Ganadería </comision><partido>No Aplica </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-05 10:44:39 a.m. </fecha><descripcion>Ley que regula la pesca y acuicultura artesanal e industrial en el país. </descripcion></proyecto> </proyectos>', '2015-04-05 09:44:42', 'Ya existe un registro para el proyecto 62'),
(65, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502811860867</sesion><nombre>Ley de Pesca y Acuicultura (2) </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Continúa en Debate </status><comision>Agricultura y Ganadería </comision><partido>No Aplica </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-05 10:45:19 a.m. </fecha><descripcion>Ley que regula la pesca y acuicultura artesanal e industrial en el país. </descripcion></proyecto> </proyectos>', '2015-04-05 09:45:21', 'SUCCESS'),
(66, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015021936812611</sesion><nombre>Practica de Referéndum Sobre Rango Constitucional de PMOP </nombre><tipoacto>Proyecto de Ley </tipoacto><debate>No Aplica </debate><status>Presentado y Turnado a Comisión </status><comision>Asuntos Constitucionales </comision><partido>No Aplica </partido><proponente>Alrededor de 60 diputados </proponente><fecha>2015-04-05 01:25:11 p.m. </fecha><descripcion>Petición para la aplicación de referéndum basado en el Decreto base No.283-2013, para la instalación de una consulta ciudadana a fin de decidir si elevar o no a rango constitucional la policía militar. </descripcion></proyecto> </proyectos>', '2015-04-05 12:25:14', 'SUCCESS'),
(67, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015021936812611</sesion><nombre>Conferencia de Prensa </nombre><tipoacto>Protocolo </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision>No Aplica </comision><partido>No Aplica </partido><proponente>No Aplica  </proponente><fecha>2015-04-05 01:30:17 p.m. </fecha><descripcion>Conferencia de prensa para informar acerca de la solicitud del referéndum para consultar sobre el rango constitucional de la PMOP </descripcion></proyecto> </proyectos>', '2015-04-05 12:30:19', 'SUCCESS'),
(68, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>3</id><sesion>2015022075835153</sesion><nombre>Lectura Acta No. 56  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 04:26:59 p.m.  </fecha><descripcion>Lectura del Acta sesión anterior  </descripcion></proyecto><proyecto><id>4</id><sesion>2015022075835153</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 04:51:41 p.m.  </fecha><descripcion>Ley marco que regula la Seguridad Social en el país.  </descripcion></proyecto><proyecto><id>5</id><sesion>2015022075835153</sesion><nombre>Ascenso Policia Nacional   </nombre><tipoacto>Dictamen  </tipoacto><debate>Único Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Secretaria de Seguridad  </proponente><fecha>2015-04-04 05:02:34 p.m.  </fecha><descripcion>Ascenso a: Felix Villanueva, David Aguilar, Marco Tulio Cruz Aguilar, Ramon Adalberto Martinez Hernandez, Roger Osmin Bardales, Javier Flores, Quintin Juarez, Hector Ivan Mejia,Jose Osorio Santos, Santos Daniel Lopez, William Velasquez,Hugo Velasquez, Rigoberto Oseguera, Johap Merlo, Mario de Jesus Medina, Orlando Mejia, Jose Diaz, EduardoTurcios,John Paul Altamirano, Cesar Gonzalez, Roberto Ortega, Luis Osabas, Melvin Garcia, Juan Pablo Aguilar, Emerson Mejia, Sergio Paz, Perci Saldivar,Jose Perrufino, Jose Hernandez, Francisco Somosa.  </descripcion></proyecto><proyecto><id>6</id><sesion>201502-570432797</sesion><nombre>Lectura Acta No. 57  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 05:37:47 p.m.  </fecha><descripcion>Lectura  acta sesión anterior  </descripcion></proyecto><proyecto><id>7</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:49:01 p.m.  </fecha><descripcion>Ley orientada a ordenar, coordinar y redefinir los diferentes planes, programa e instituciones que conforman el sistema de seguridad social vigente, a fin de brindar a la población una protección social tendente a la universalidad basada en una política fiscal redistributiva con un gobierno corporativo eficaz y competente que priorice sobre las necesidades básicas por ciclo de vida de los mas necesitados. \n\nSe discutió hasta art. 49  </descripcion></proyecto><proyecto><id>8</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:57:12 p.m.  </fecha><descripcion>Ley que regula el nuevo sistema de seguridad social. Revision hasta art. 49  </descripcion></proyecto><proyecto><id>9</id><sesion>201502-1537668885</sesion><nombre>Ley de Pesca y Acuicultura   </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Continúa en Debate  </status><comision>Agricultura y Ganadería  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 09:06:51 p.m.  </fecha><descripcion>Ley que regula lo concerniente a la pesca y acuicultura artesanal e industrial en el pais.  </descripcion></proyecto><proyecto><id>10</id><sesion>201502-1537668885</sesion><nombre>Ley de Comercio Electrónico  </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>Partido Nacional (PN)  </partido><proponente>Rodolfo Irías Navas  </proponente><fecha>2015-04-04 09:15:29 p.m.  </fecha><descripcion>Ley que regula las transacciones electrónicas   </descripcion></proyecto><proyecto><id>11</id><sesion>201502-1537668885</sesion><nombre>Ley de Pesca y Acuicultura   </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Continúa en Debate  </status><comision>Agricultura y Ganadería  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-05 09:59:55 a.m.  </fecha><descripcion>Ley que regula lo concerniente a la pesca y acuicultura artesanal e industrial en el país.  </descripcion></proyecto><proyecto><id>12</id><sesion>201502-1537668885</sesion><nombre>Ley de Pesca y Acuicultura   </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Continúa en Debate  </status><comision>Agricultura y Ganadería  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial   </proponente><fecha>2015-04-05 10:06:43 a.m.  </fecha><descripcion>Regula la pesca y acuicultura artesanal e industrial  </descripcion></proyecto><proyecto><id>13</id><sesion>201502811860867</sesion><nombre>Reforma Constitucional Arts. 308-311, 314, 315 y 317  </nombre><tipoacto>Proyecto de Ley  </tipoacto><debate>No Aplica  </debate><status>Presentado y Turnado a Comisión  </status><comision>Asuntos Constitucionales  </comision><partido>Partido Anticorrupción (PAC)  </partido><proponente>Walter Alex Banegas  </proponente><fecha>2015-04-05 10:19:46 a.m.  </fecha><descripcion>Proyecto que tiene como finalidad reformar el procedimiento para la integracion de la Corte Suprema de Justicia.  </descripcion></proyecto><proyecto><id>14</id><sesion>201502811860867</sesion><nombre>Ley de Pesca y Acuicultura   </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Continúa en Debate  </status><comision>Agricultura y Ganadería  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial   </proponente><fecha>2015-04-05 10:44:39 a.m.  </fecha><descripcion>Ley que regula la pesca y acuicultura artesanal e industrial en el país.  </descripcion></proyecto><proyecto><id>15</id><sesion>2015021936812611</sesion><nombre>Ley de Pesca y Acuicultura (3)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Continúa en Debate  </status><comision>Agricultura y Ganadería  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial   </proponente><fecha>2015-04-05 01:15:57 p.m.  </fecha><descripcion>Ley que regula la pesca y acuicultura artesanal e industrial en el país.  </descripcion></proyecto> </proyectos>', '2015-04-05 12:30:37', 'SUCCESS'),
(69, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502560309097</sesion><nombre>Ratificación Decreto 283-2013 Elevación Rango Constitucional Policia Militar del Orden Publico </nombre><tipoacto>Dictamen </tipoacto><debate>Único Debate </debate><status>Rechazado </status><comision>Asuntos Constitucionales </comision><partido>No Aplica </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-05 01:37:39 p.m. </fecha><descripcion>Pretende la ratificación del decreto 283-2013 aprobado en la legislatura anterior, el cual reforma los arts. 274 y 329 de la Constitución de la República para dar rango constitucional a la PMOP </descripcion></proyecto> </proyectos>', '2015-04-05 12:37:42', 'SUCCESS'),
(70, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502560309097</sesion><nombre>Lectura Acta No. 58 </nombre><tipoacto>Protocolo </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision>No Aplica </comision><partido>No Aplica </partido><proponente>No Aplica  </proponente><fecha>2015-04-05 01:47:21 p.m. </fecha><descripcion>Lectura de acta de sesión anterior. </descripcion></proyecto> </proyectos>', '2015-04-05 12:47:23', 'SUCCESS'),
(71, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015021162203564</sesion><nombre>Condecoración a Takashi Uto, Embajador de Japón. </nombre><tipoacto>Proyecto de Ley </tipoacto><debate>Único Debate </debate><status>Aprobado </status><comision>No Aplica </comision><partido>Partido Nacional (PN) </partido><proponente>Mario Alonso Pérez López </proponente><fecha>2015-04-05 01:54:06 p.m. </fecha><descripcion>Condecoración a Takashi Uto, Embajador de Japón. </descripcion></proyecto> </proyectos>', '2015-04-05 12:54:09', 'SUCCESS'),
(72, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015021162203564</sesion><nombre>Contrato No. 61-2014 Generación Energía Entre ENEE y COLOLACA </nombre><tipoacto>Dictamen </tipoacto><debate>Primer Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Energía </comision><partido>No Aplica </partido><proponente>ENEE </proponente><fecha>2015-04-05 01:56:29 p.m. </fecha><descripcion>Contrato para la generación de energía en el departamento de Lempira, suscrito entre la ENEE y la empresa COLOLACA </descripcion></proyecto> </proyectos>', '2015-04-05 12:56:32', 'SUCCESS'),
(73, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015021162203564</sesion><nombre>Contrato para Generación de Energía Suscrito con HELIOS </nombre><tipoacto>Dictamen </tipoacto><debate>Primer Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM </proponente><fecha>2015-04-05 01:58:45 p.m. </fecha><descripcion>Contrato para la generación de energía en Choluteca </descripcion></proyecto> </proyectos>', '2015-04-05 12:58:48', 'SUCCESS'),
(74, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502811860867</sesion><nombre>Ley de Pesca y Acuicultura  </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Continúa en Debate </status><comision>Agricultura y Ganadería </comision><partido>No Aplica </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-05 10:44:39 a.m. </fecha><descripcion>Ley que regula la pesca y acuicultura artesanal e industrial en el país. </descripcion></proyecto> </proyectos>', '2015-04-05 12:59:45', 'Ya existe un registro para el proyecto 62'),
(75, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015021162203564</sesion><nombre>Contrato para la Generación de Energía, Proyecto Solar del Sur </nombre><tipoacto>Dictamen </tipoacto><debate>Primer Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM </proponente><fecha>2015-04-05 02:02:10 p.m. </fecha><descripcion>Contrato para generación de energía en Choluteca </descripcion></proyecto> </proyectos>', '2015-04-05 13:02:13', 'SUCCESS');
INSERT INTO `detalle_intervencion_log` (`id`, `xml`, `fecha`, `status`) VALUES
(76, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015021162203564</sesion><nombre>Contrato de Desarrollo Agropecuario No. 4-2013 </nombre><tipoacto>Dictamen </tipoacto><debate>Segundo Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Agricultura y Ganadería </comision><partido>No Aplica </partido><proponente>SAG </proponente><fecha>2015-04-05 02:03:38 p.m. </fecha><descripcion>Contrato para el desarrollo agropecuario de riego en Guayape </descripcion></proyecto> </proyectos>', '2015-04-05 13:03:40', 'SUCCESS'),
(77, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015021162203564</sesion><nombre>Condecoración Takashi Uto, Embajador de Japón. </nombre><tipoacto>Protocolo </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision>No Aplica </comision><partido>No Aplica </partido><proponente>No Aplica </proponente><fecha>2015-04-05 02:05:40 p.m. </fecha><descripcion>Condecoración al embajador japones Takashi Uto, en agradecimiento por la fiel ayuda y buenas relaciones entre Honduras y Japón. </descripcion></proyecto> </proyectos>', '2015-04-05 13:05:50', 'SUCCESS'),
(78, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502811860867</sesion><nombre>Ley de Pesca y Acuicultura  </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Continúa en Debate </status><comision>Agricultura y Ganadería </comision><partido>No Aplica </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-05 10:44:39 a.m. </fecha><descripcion>Ley que regula la pesca y acuicultura artesanal e industrial en el país. </descripcion></proyecto> </proyectos>', '2015-04-05 13:06:52', 'SUCCESS'),
(79, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502811860867</sesion><nombre>Ley de Pesca y Acuicultura  </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Continúa en Debate </status><comision>Agricultura y Ganadería </comision><partido>No Aplica </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-05 10:44:39 a.m. </fecha><descripcion>Ley que regula la pesca y acuicultura artesanal e industrial en el país. </descripcion></proyecto> </proyectos>', '2015-04-05 13:07:07', 'SUCCESS'),
(80, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015021162203564</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor) (2) </nombre><tipoacto>Dictamen </tipoacto><debate>Segundo Debate </debate><status>Continúa en Debate </status><comision>Especial </comision><partido>No Aplica </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-05 02:07:16 p.m. </fecha><descripcion>Ley que regulara la seguridad social en el país. </descripcion></proyecto> </proyectos>', '2015-04-05 13:07:24', 'SUCCESS'),
(81, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502811860867</sesion><nombre>Ley de Pesca y Acuicultura  </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Continúa en Debate </status><comision>Agricultura y Ganadería </comision><partido>No Aplica </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-05 10:44:39 a.m. </fecha><descripcion>Ley que regula la pesca y acuicultura artesanal e industrial en el país. </descripcion></proyecto> </proyectos>', '2015-04-05 13:27:24', 'Ta existe un registro para proyecto 62 con debate 6'),
(82, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502811860867</sesion><nombre>Ley de Pesca y Acuicultura  </nombre><tipoacto>Dictamen </tipoacto><debate>Primer Debate </debate><status>Continúa en Debate </status><comision>Agricultura y Ganadería </comision><partido>No Aplica </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-05 10:44:39 a.m. </fecha><descripcion>Ley que regula la pesca y acuicultura artesanal e industrial en el país. </descripcion></proyecto> </proyectos>', '2015-04-05 13:35:32', 'SUCCESS'),
(83, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-404535823</sesion><nombre>Contrato para la Generación de Energía, Proyecto Solar del Sur  </nombre><tipoacto>Dictamen </tipoacto><debate>Segundo Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM </proponente><fecha>2015-04-05 03:15:05 p.m. </fecha><descripcion>Contrato entre SERNAM y Sociedad de Mecanismos de Energía Renovable, S.A de C.V., Proyecto Solar del Sur, en Choluteca, con el objeto de generar, transmitir y comercializar energía renovable. </descripcion></proyecto> </proyectos>', '2015-04-05 14:15:12', 'Cannot add or update a child row: a foreign key constraint fails (`MonitorC`.`sesion_proyecto`, CONS'),
(84, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>3</id><sesion>2015022075835153</sesion><nombre>Lectura Acta No. 56  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 04:26:59 p.m.  </fecha><descripcion>Lectura del Acta sesión anterior  </descripcion></proyecto><proyecto><id>4</id><sesion>2015022075835153</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 04:51:41 p.m.  </fecha><descripcion>Ley marco que regula la Seguridad Social en el país.  </descripcion></proyecto><proyecto><id>5</id><sesion>2015022075835153</sesion><nombre>Ascenso Policia Nacional   </nombre><tipoacto>Dictamen  </tipoacto><debate>Único Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Secretaria de Seguridad  </proponente><fecha>2015-04-04 05:02:34 p.m.  </fecha><descripcion>Ascenso a: Felix Villanueva, David Aguilar, Marco Tulio Cruz Aguilar, Ramon Adalberto Martinez Hernandez, Roger Osmin Bardales, Javier Flores, Quintin Juarez, Hector Ivan Mejia,Jose Osorio Santos, Santos Daniel Lopez, William Velasquez,Hugo Velasquez, Rigoberto Oseguera, Johap Merlo, Mario de Jesus Medina, Orlando Mejia, Jose Diaz, EduardoTurcios,John Paul Altamirano, Cesar Gonzalez, Roberto Ortega, Luis Osabas, Melvin Garcia, Juan Pablo Aguilar, Emerson Mejia, Sergio Paz, Perci Saldivar,Jose Perrufino, Jose Hernandez, Francisco Somosa.  </descripcion></proyecto><proyecto><id>6</id><sesion>201502-570432797</sesion><nombre>Lectura Acta No. 57  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>No Aplica  </proponente><fecha>2015-04-04 05:37:47 p.m.  </fecha><descripcion>Lectura  acta sesión anterior  </descripcion></proyecto><proyecto><id>7</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:49:01 p.m.  </fecha><descripcion>Ley orientada a ordenar, coordinar y redefinir los diferentes planes, programa e instituciones que conforman el sistema de seguridad social vigente, a fin de brindar a la población una protección social tendente a la universalidad basada en una política fiscal redistributiva con un gobierno corporativo eficaz y competente que priorice sobre las necesidades básicas por ciclo de vida de los mas necesitados. \n\nSe discutió hasta art. 49  </descripcion></proyecto><proyecto><id>8</id><sesion>201502-570432797</sesion><nombre>Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Primer Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 05:57:12 p.m.  </fecha><descripcion>Ley que regula el nuevo sistema de seguridad social. Revision hasta art. 49  </descripcion></proyecto><proyecto><id>9</id><sesion>201502-1537668885</sesion><nombre>Ley de Pesca y Acuicultura   </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Continúa en Debate  </status><comision>Agricultura y Ganadería  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-04 09:06:51 p.m.  </fecha><descripcion>Ley que regula lo concerniente a la pesca y acuicultura artesanal e industrial en el pais.  </descripcion></proyecto><proyecto><id>10</id><sesion>201502-1537668885</sesion><nombre>Ley de Comercio Electrónico  </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Aprobado  </status><comision>Especial  </comision><partido>Partido Nacional (PN)  </partido><proponente>Rodolfo Irías Navas  </proponente><fecha>2015-04-04 09:15:29 p.m.  </fecha><descripcion>Ley que regula las transacciones electrónicas   </descripcion></proyecto><proyecto><id>11</id><sesion>201502-1537668885</sesion><nombre>Ley de Pesca y Acuicultura   </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Continúa en Debate  </status><comision>Agricultura y Ganadería  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-05 09:59:55 a.m.  </fecha><descripcion>Ley que regula lo concerniente a la pesca y acuicultura artesanal e industrial en el país.  </descripcion></proyecto><proyecto><id>12</id><sesion>201502-1537668885</sesion><nombre>Ley de Pesca y Acuicultura   </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Continúa en Debate  </status><comision>Agricultura y Ganadería  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial   </proponente><fecha>2015-04-05 10:06:43 a.m.  </fecha><descripcion>Regula la pesca y acuicultura artesanal e industrial  </descripcion></proyecto><proyecto><id>13</id><sesion>201502811860867</sesion><nombre>Reforma Constitucional Arts. 308-311, 314, 315 y 317  </nombre><tipoacto>Proyecto de Ley  </tipoacto><debate>No Aplica  </debate><status>Presentado y Turnado a Comisión  </status><comision>Asuntos Constitucionales  </comision><partido>Partido Anticorrupción (PAC)  </partido><proponente>Walter Alex Banegas  </proponente><fecha>2015-04-05 10:19:46 a.m.  </fecha><descripcion>Proyecto que tiene como finalidad reformar el procedimiento para la integracion de la Corte Suprema de Justicia.  </descripcion></proyecto><proyecto><id>14</id><sesion>201502811860867</sesion><nombre>Ley de Pesca y Acuicultura   </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Continúa en Debate  </status><comision>Agricultura y Ganadería  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial   </proponente><fecha>2015-04-05 10:44:39 a.m.  </fecha><descripcion>Ley que regula la pesca y acuicultura artesanal e industrial en el país.  </descripcion></proyecto><proyecto><id>15</id><sesion>2015021936812611</sesion><nombre>Ley de Pesca y Acuicultura (3)  </nombre><tipoacto>Dictamen  </tipoacto><debate>Tercer Debate  </debate><status>Continúa en Debate  </status><comision>Agricultura y Ganadería  </comision><partido>No Aplica  </partido><proponente>Despacho Presidencial   </proponente><fecha>2015-04-05 01:15:57 p.m.  </fecha><descripcion>Ley que regula la pesca y acuicultura artesanal e industrial en el país.  </descripcion></proyecto><proyecto><id>16</id><sesion>201502-404535823</sesion><nombre>Contrato para Generación de Energía Suscrito con HELIOS   </nombre><tipoacto>Dictamen  </tipoacto><debate>Segundo Debate  </debate><status>Sujeto a Nuevo Debate  </status><comision>Energía  </comision><partido>No Aplica  </partido><proponente>SERNAM  </proponente><fecha>2015-04-05 03:12:46 p.m.  </fecha><descripcion>Contrato entre SERNAM y ENERSA Proyecto HELIOS en Choluteca. Tiene por objeto generar, transmitir y comercializar energía renovable,  </descripcion></proyecto><proyecto><id>17</id><sesion>201502-404535823</sesion><nombre>Contrato para la Generación de Energía, Proyecto Solar del Sur   </nombre><tipoacto>Dictamen  </tipoacto><debate>Segundo Debate  </debate><status>Sujeto a Nuevo Debate  </status><comision>Energía  </comision><partido>No Aplica  </partido><proponente>SERNAM  </proponente><fecha>2015-04-05 03:15:05 p.m.  </fecha><descripcion>Contrato entre SERNAM y Sociedad de Mecanismos de Energía Renov', '2015-04-05 14:19:28', 'Cannot add or update a child row: a foreign key constraint fails (`MonitorC`.`sesion_proyecto`, CONS'),
(85, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-404535823</sesion><nombre>Contrato para la Generación de Energía, Proyecto Solar del Sur  </nombre><tipoacto>Dictamen </tipoacto><debate>Segundo Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM </proponente><fecha>2015-04-05 03:15:05 p.m. </fecha><descripcion>Contrato entre SERNAM y Sociedad de Mecanismos de Energía Renovable, S.A de C.V., Proyecto Solar del Sur, en Choluteca, con el objeto de generar, transmitir y comercializar energía renovable. </descripcion></proyecto> </proyectos>', '2015-04-05 14:19:45', 'Cannot add or update a child row: a foreign key constraint fails (`MonitorC`.`sesion_proyecto`, CONS'),
(86, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015022017325225</sesion><nombre>Contrato para Generación de Energía Suscrito con HELIOS  </nombre><tipoacto>Dictamen </tipoacto><debate>Segundo Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM </proponente><fecha>2015-04-05 03:22:46 p.m. </fecha><descripcion>Contrato entre SERNAM y ENERSA Proyecto HELIOS, para la generación, transmisión y comercialización de energía renovable en Choluteca. </descripcion></proyecto> </proyectos>', '2015-04-05 14:22:49', 'Cannot add or update a child row: a foreign key constraint fails (`MonitorC`.`sesion_proyecto`, CONS'),
(87, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-404535823</sesion><nombre>Contrato para la Generación de Energía, Proyecto Solar del Sur  </nombre><tipoacto>Dictamen </tipoacto><debate>Segundo Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM </proponente><fecha>2015-04-05 03:15:05 p.m. </fecha><descripcion>Contrato entre SERNAM y Sociedad de Mecanismos de Energía Renovable, S.A de C.V., Proyecto Solar del Sur, en Choluteca, con el objeto de generar, transmitir y comercializar energía renovable. </descripcion></proyecto> </proyectos>', '2015-04-05 14:24:11', 'Cannot add or update a child row: a foreign key constraint fails (`MonitorC`.`sesion_proyecto`, CONS'),
(88, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015022017325225</sesion><nombre>Contrato para la Generación de Energía, Proyecto Solar del Sur  </nombre><tipoacto>Dictamen </tipoacto><debate>Segundo Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM </proponente><fecha>2015-04-05 03:47:46 p.m. </fecha><descripcion>Contrato entre SERNAM y Sociedad de Mecanismos de Energía Renovable, S.A. de C.V., Proyecto Solar del Sur, en Choluteca. Tiene por objeto generar, transmitir y comercializar energía renovable. </descripcion></proyecto> </proyectos>', '2015-04-05 14:47:51', 'Cannot add or update a child row: a foreign key constraint fails (`MonitorC`.`sesion_proyecto`, CONS'),
(89, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015021708808331</sesion><nombre>Contrato para Generación de Energía Suscrito con HELIOS  </nombre><tipoacto>Dictamen </tipoacto><debate>Segundo Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM </proponente><fecha>2015-04-05 03:52:05 p.m. </fecha><descripcion>Contrato entre SERNAM y ENERSA Proyecto HELIOS, con el objeto de generar, transmitir y comercializar energia renovable en Choluteca. </descripcion></proyecto> </proyectos>', '2015-04-05 14:52:07', 'Cannot add or update a child row: a foreign key constraint fails (`MonitorC`.`sesion_proyecto`, CONS'),
(90, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-404535823</sesion><nombre>Contrato para la Generación de Energía, Proyecto Solar del Sur  </nombre><tipoacto>Dictamen </tipoacto><debate>Segundo Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM </proponente><fecha>2015-04-05 03:15:05 p.m. </fecha><descripcion>Contrato entre SERNAM y Sociedad de Mecanismos de Energía Renovable, S.A de C.V., Proyecto Solar del Sur, en Choluteca, con el objeto de generar, transmitir y comercializar energía renovable. </descripcion></proyecto> </proyectos>', '2015-04-05 14:53:29', 'Cannot add or update a child row: a foreign key constraint fails (`MonitorC`.`sesion_proyecto`, CONS'),
(91, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-404535823</sesion><nombre>Contrato para la Generación de Energía, Proyecto Solar del Sur  </nombre><tipoacto>Dictamen </tipoacto><debate>Segundo Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM </proponente><fecha>2015-04-05 03:15:05 p.m. </fecha><descripcion>Contrato entre SERNAM y Sociedad de Mecanismos de Energía Renovable, S.A de C.V., Proyecto Solar del Sur, en Choluteca, con el objeto de generar, transmitir y comercializar energía renovable. </descripcion></proyecto> </proyectos>', '2015-04-05 14:57:30', 'Cannot add or update a child row: a foreign key constraint fails (`MonitorC`.`sesion_proyecto`, CONS'),
(92, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-404535823</sesion><nombre>Contrato para la Generación de Energía, Proyecto Solar del Sur  </nombre><tipoacto>Dictamen </tipoacto><debate>Segundo Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM </proponente><fecha>2015-04-05 03:15:05 p.m. </fecha><descripcion>Contrato entre SERNAM y Sociedad de Mecanismos de Energía Renovable, S.A de C.V., Proyecto Solar del Sur, en Choluteca, con el objeto de generar, transmitir y comercializar energía renovable. </descripcion></proyecto> </proyectos>', '2015-04-05 15:11:14', 'SUCCESS'),
(93, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-404535823</sesion><nombre>Reforma Ley para la Defensa y Promoción de la Competencia </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Aprobado </status><comision>Especial </comision><partido>No Aplica </partido><proponente>Comisión para la Defensa y Promoción de la Competencia </proponente><fecha>2015-04-05 06:10:58 p.m. </fecha><descripcion>Adición artículo 51 A, B,C,D, y E, 63 A,B y C. Contiene un programa de clemencia a aquellas empresas colaboradoras en el proceso de fundación de casos,con la aportación de evidencias a la comisión, y segundo la auto sostenibilidad de la comisión para desempeñar sus funciones. </descripcion></proyecto> </proyectos>', '2015-04-05 17:11:04', 'SUCCESS'),
(94, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-404535823</sesion><nombre>Reforma Presupuesto Nacional 2015  </nombre><tipoacto>Dictamen </tipoacto><debate>Único Debate </debate><status>Aprobado </status><comision>Presupuesto </comision><partido>Partido Nacional (PN) </partido><proponente>Rolando Dubón Bueso </proponente><fecha>2015-04-05 06:22:54 p.m. </fecha><descripcion>Reforma por adición del art. 11 del decreto 140-2014 contentivo del Presupuesto General para el ano 2015. La reforma busca incluir una asignación presupuestaria para el Instituto de Geología y Minas. </descripcion></proyecto> </proyectos>', '2015-04-05 17:22:58', 'SUCCESS'),
(95, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-404535823</sesion><nombre>Ley de Pesca y Acuicultura  </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Continúa en Debate </status><comision>Agricultura y Ganadería </comision><partido>No Aplica </partido><proponente>Despacho Presidencial  </proponente><fecha>2015-04-05 06:26:03 p.m. </fecha><descripcion>Ley que regula la pesca y acuicultura artesanal e industrial en el país. </descripcion></proyecto> </proyectos>', '2015-04-05 17:26:05', 'SUCCESS'),
(96, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-404535823</sesion><nombre>Autorización a la ENEE para Compra de Energía Electrica </nombre><tipoacto>Proyecto de Ley </tipoacto><debate>No Aplica </debate><status>Presentado y Turnado a Comisión </status><comision>Especial </comision><partido>No Aplica </partido><proponente>SEFIN </proponente><fecha>2015-04-05 06:32:00 p.m. </fecha><descripcion>Tiene como objetivo posibilitar a la ENEE la contratación de energía eléctrica con una empresa tercera (General Electric), mediante los institutos de previsión social (2% de sus ingresos destinados para este fin). </descripcion></proyecto> </proyectos>', '2015-04-05 17:32:04', 'SUCCESS'),
(97, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>18</id><sesion>2015022017325225</sesion><nombre>Contrato para Generación de Energía Suscrito con HELIOS   </nombre><tipoacto>Dictamen  </tipoacto><debate>Segundo Debate  </debate><status>Sujeto a Nuevo Debate  </status><comision>Energía  </comision><partido>No Aplica  </partido><proponente>SERNAM  </proponente><fecha>2015-04-05 03:22:46 p.m.  </fecha><descripcion>Contrato entre SERNAM y ENERSA Proyecto HELIOS, para la generación, transmisión y comercialización de energía renovable en Choluteca.  </descripcion></proyecto><proyecto><id>19</id><sesion>2015022017325225</sesion><nombre>Contrato para Generación de Energía Suscrito con HELIOS   </nombre><tipoacto>Dictamen  </tipoacto><debate>Segundo Debate  </debate><status>Sujeto a Nuevo Debate  </status><comision>Energía  </comision><partido>No Aplica  </partido><proponente>SERNAM  </proponente><fecha>2015-04-05 03:45:32 p.m.  </fecha><descripcion>Contrato entre SERNAM y ENERSA Proyecto HELIOS, para la generación, transmisión y comercialización de energía renovable en Choluteca.  </descripcion></proyecto><proyecto><id>20</id><sesion>2015022017325225</sesion><nombre>Contrato para la Generación de Energía, Proyecto Solar del Sur   </nombre><tipoacto>Dictamen  </tipoacto><debate>Segundo Debate  </debate><status>Sujeto a Nuevo Debate  </status><comision>Energía  </comision><partido>No Aplica  </partido><proponente>SERNAM  </proponente><fecha>2015-04-05 03:47:46 p.m.  </fecha><descripcion>Contrato entre SERNAM y Sociedad de Mecanismos de Energía Renovable, S.A. de C.V., Proyecto Solar del Sur, en Choluteca. Tiene por objeto generar, transmitir y comercializar energía renovable.  </descripcion></proyecto><proyecto><id>21</id><sesion>2015021708808331</sesion><nombre>Contrato para Generación de Energía Suscrito con HELIOS   </nombre><tipoacto>Dictamen  </tipoacto><debate>Segundo Debate  </debate><status>Sujeto a Nuevo Debate  </status><comision>Energía  </comision><partido>No Aplica  </partido><proponente>SERNAM  </proponente><fecha>2015-04-05 03:52:05 p.m.  </fecha><descripcion>Contrato entre SERNAM y ENERSA Proyecto HELIOS, con el objeto de generar, transmitir y comercializar energia renovable en Choluteca.  </descripcion></proyecto><proyecto><id>22</id><sesion>201502-404535823</sesion><nombre>Contrato para la Generación de Energía, Proyecto Solar del Sur   </nombre><tipoacto>Dictamen  </tipoacto><debate>Segundo Debate  </debate><status>Sujeto a Nuevo Debate  </status><comision>Energía  </comision><partido>No Aplica  </partido><proponente>SERNAM   </proponente><fecha>2015-04-05 06:06:54 p.m.  </fecha><descripcion>Contrato para la generación, transmisión y comercialización de energía renovable en Choluteca, a suscribirse con Sociedad de Mecanismos de Energía Renovable, S.A. de C.V. y SERNAM  </descripcion></proyecto> </proyectos>', '2015-04-05 17:32:58', 'SUCCESS'),
(98, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-738539578</sesion><nombre>Lectura Correspondencia </nombre><tipoacto>Protocolo </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision>No Aplica </comision><partido>No Aplica </partido><proponente>Secretaria de Relaciones Exteriores  </proponente><fecha>2015-04-05 07:07:16 p.m. </fecha><descripcion>Condecoracion a embajador de Chile en Honduras </descripcion></proyecto> </proyectos>', '2015-04-05 18:07:19', 'SUCCESS'),
(99, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-738539578</sesion><nombre>Contrato para la Generación de Energía, Proyecto Solar del Sur  </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Aprobado </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM  </proponente><fecha>2015-04-05 07:20:39 p.m. </fecha><descripcion>Entre SERNAM y Sociedad de Mecanismos de Energía Renovable S.A. de C.V, Proyecto Solar del Sur, en Choluteca, Choluteca, con el objeto de generar, transmitir y comercializar energía renovable. </descripcion></proyecto> </proyectos>', '2015-04-05 18:20:43', 'SUCCESS'),
(100, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-738539578</sesion><nombre>Contrato para Generación de Energía Suscrito con HELIOS  </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Aprobado </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM  </proponente><fecha>2015-04-05 07:22:12 p.m. </fecha><descripcion>Entre SERNAM y ENERSA Proyecto Helios en Choluteca, Choluteca, con el objeto de generar, transmitir y comercializar energía renovable. </descripcion></proyecto> </proyectos>', '2015-04-05 18:22:16', 'SUCCESS'),
(101, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-738539578</sesion><nombre>Contrato No. 61-2014 Generación Energía Entre ENEE y COLOLACA  </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Aprobado </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM  </proponente><fecha>2015-04-05 07:23:51 p.m. </fecha><descripcion>Contrato No. 061-2014, entre ENEE y COLOLACA, Departamento de Lempira. </descripcion></proyecto> </proyectos>', '2015-04-05 18:23:52', 'SUCCESS'),
(102, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-738539578</sesion><nombre>Exoneración de Impuestos de Importación para Vehículos de Instituciones Publicas Entregados en Modo de Custodia </nombre><tipoacto>Dictamen </tipoacto><debate>Único Debate </debate><status>Aprobado </status><comision>Finanzas y Cooperación Externa </comision><partido>No Aplica </partido><proponente>SEFIN  </proponente><fecha>2015-04-05 07:36:04 p.m. </fecha><descripcion>Exonerar del pago de todo tipo de impuestos de importación incluyendo matricula anual a todos los vehículos de lujos nacionales o nacionalizados de instituciones descentralizadas y centralizadas que han sido entregados en modo de custodia para ser destinados a subasta o venta publica. </descripcion></proyecto> </proyectos>', '2015-04-05 18:36:08', 'SUCCESS'),
(103, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-738539578</sesion><nombre>Autorización a la ENEE para Compra de Energía Electrica  </nombre><tipoacto>Dictamen </tipoacto><debate>Único Debate </debate><status>Aprobado </status><comision>Especial </comision><partido>No Aplica </partido><proponente>SEFIN  </proponente><fecha>2015-04-05 07:40:56 p.m. </fecha><descripcion>Tiene como objetivo posibilitar a la ENEE la contratación de energía eléctrica con una empresa tercera (General Electric), mediante los institutos de previsión social y sus fideicomisos aprobados el año pasado (2% de sus ingresos destinados para este fin). </descripcion></proyecto> </proyectos>', '2015-04-05 18:41:06', 'SUCCESS'),
(104, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-738539578</sesion><nombre>Lectura Acta No. 1 </nombre><tipoacto>Protocolo </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision>No Aplica </comision><partido>No Aplica </partido><proponente>No Aplica  </proponente><fecha>2015-04-05 07:47:02 p.m. </fecha><descripcion>Lectura de acta de sesión anterior. </descripcion></proyecto> </proyectos>', '2015-04-05 18:47:06', 'SUCCESS'),
(105, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>18</id><sesion>2015022017325225</sesion><nombre>Contrato para Generación de Energía Suscrito con HELIOS   </nombre><tipoacto>Dictamen  </tipoacto><debate>Segundo Debate  </debate><status>Sujeto a Nuevo Debate  </status><comision>Energía  </comision><partido>No Aplica  </partido><proponente>SERNAM  </proponente><fecha>2015-04-05 03:22:46 p.m.  </fecha><descripcion>Contrato entre SERNAM y ENERSA Proyecto HELIOS, para la generación, transmisión y comercialización de energía renovable en Choluteca.  </descripcion></proyecto><proyecto><id>19</id><sesion>2015022017325225</sesion><nombre>Contrato para Generación de Energía Suscrito con HELIOS   </nombre><tipoacto>Dictamen  </tipoacto><debate>Segundo Debate  </debate><status>Sujeto a Nuevo Debate  </status><comision>Energía  </comision><partido>No Aplica  </partido><proponente>SERNAM  </proponente><fecha>2015-04-05 03:45:32 p.m.  </fecha><descripcion>Contrato entre SERNAM y ENERSA Proyecto HELIOS, para la generación, transmisión y comercialización de energía renovable en Choluteca.  </descripcion></proyecto><proyecto><id>20</id><sesion>2015022017325225</sesion><nombre>Contrato para la Generación de Energía, Proyecto Solar del Sur   </nombre><tipoacto>Dictamen  </tipoacto><debate>Segundo Debate  </debate><status>Sujeto a Nuevo Debate  </status><comision>Energía  </comision><partido>No Aplica  </partido><proponente>SERNAM  </proponente><fecha>2015-04-05 03:47:46 p.m.  </fecha><descripcion>Contrato entre SERNAM y Sociedad de Mecanismos de Energía Renovable, S.A. de C.V., Proyecto Solar del Sur, en Choluteca. Tiene por objeto generar, transmitir y comercializar energía renovable.  </descripcion></proyecto><proyecto><id>21</id><sesion>2015021708808331</sesion><nombre>Contrato para Generación de Energía Suscrito con HELIOS   </nombre><tipoacto>Dictamen  </tipoacto><debate>Segundo Debate  </debate><status>Sujeto a Nuevo Debate  </status><comision>Energía  </comision><partido>No Aplica  </partido><proponente>SERNAM  </proponente><fecha>2015-04-05 03:52:05 p.m.  </fecha><descripcion>Contrato entre SERNAM y ENERSA Proyecto HELIOS, con el objeto de generar, transmitir y comercializar energia renovable en Choluteca.  </descripcion></proyecto><proyecto><id>22</id><sesion>201502-404535823</sesion><nombre>Contrato para la Generación de Energía, Proyecto Solar del Sur   </nombre><tipoacto>Dictamen  </tipoacto><debate>Segundo Debate  </debate><status>Sujeto a Nuevo Debate  </status><comision>Energía  </comision><partido>No Aplica  </partido><proponente>SERNAM   </proponente><fecha>2015-04-05 06:06:54 p.m.  </fecha><descripcion>Contrato para la generación, transmisión y comercialización de energía renovable en Choluteca, a suscribirse con Sociedad de Mecanismos de Energía Renovable, S.A. de C.V. y SERNAM  </descripcion></proyecto><proyecto><id>23</id><sesion>201502-1704184864</sesion><nombre>Lectura de correspondencia  </nombre><tipoacto>Protocolo  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>No Aplica  </comision><partido>No Aplica  </partido><proponente>Secretaria de Relaciones Exteriores  </proponente><fecha>2015-04-05 06:51:12 p.m.  </fecha><descripcion>Condecoración a embajador de Chile en Honduras.  </descripcion></proyecto><proyecto><id>24</id><sesion>201502-738539578</sesion><nombre>Ley de Promoción para el Desarrollo de Pequeños y Medianos Embalses para la Captación de Agua para Consumo Humano   </nombre><tipoacto>Dictamen  </tipoacto><debate>Segundo Debate  </debate><status>Continúa en Debate  </status><comision>Especial  </comision><partido>Partido Nacional (PN)  </partido><proponente>Miguel Edgardo Martínez Pineda  </proponente><fecha>2015-04-05 07:13:36 p.m.  </fecha><descripcion>Tiene como objetivo establecer los principios y  regulaciones aplicables para el aprovechamiento del Recurso Hídrico a través de pequeños y medianos embalses con fines de abastecimiento de agua para consumo humano y la generación de energía, en comunidades rurales y semi urbanas a nivel nacional.  </descripcion></proyecto> </proyectos>', '2015-04-05 18:47:28', 'SUCCESS'),
(106, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-494148526</sesion><nombre>Reforma Ley Especial Sobre el VIH SIDA </nombre><tipoacto>Dictamen </tipoacto><debate>Primer Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Salud </comision><partido>Partido Libertad y Refundación (LIBRE) </partido><proponente>Rasel Antonio Tomé Flores </proponente><fecha>2015-04-05 08:12:53 p.m. </fecha><descripcion>Reforma y adición de artículos. reforma: art.1 , 2, 2ª, 4, 6, 7, 8, 8ª, 9, 10, 10ª, 10b, 11, 12, 14, 16, 17, 19, 22, 22ª, 23, 26, 29, 30, 32, 37, 39, 40, 41, 47, 48, 49, 51, 52, 53, 54, 55, 57, 59, 60, 61, 63, 63ª, 64, 65, 69, 70, 71, 75, 77, 78, 79, 81, 84ª. Adición: art. 2, 3, 4, 5. Tiene como objeto reafirmar derechos de las personas con el virus y funciones de la comisión protectora. </descripcion></proyecto> </proyectos>', '2015-04-05 19:12:57', 'SUCCESS'),
(107, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-494148526</sesion><nombre>Reforma Ley de Mercado de Valores y Homologación con Ley del Sistema Financiero </nombre><tipoacto>Dictamen </tipoacto><debate>Primer Debate </debate><status>Sujeto a Nuevo Debate </status><comision>Presupuesto </comision><partido>Partido Liberal (PL) </partido><proponente>Gabriela Núñez Ennabe </proponente><fecha>2015-04-05 08:21:11 p.m. </fecha><descripcion>Reforma artículo 143 de la ley de mercado de valores (D 8-2001), y homologar con artículo 48 numeral 4 de la ley del sistema financiero. Tiene como objeto que las personas socias no podrán tener más del 25% de acciones, quienes tengan más de esta cifra será por autorización y no más de un depósito. </descripcion></proyecto> </proyectos>', '2015-04-05 19:21:20', 'SUCCESS'),
(108, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-738539578</sesion><nombre>Contrato para la Generación de Energía Sociedad de Mecanismos de Energía Renovable S.A. de C.V. </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Aprobado </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM  </proponente><fecha>2015-04-19 07:21:01 p.m. </fecha><descripcion>Contrato para la generación de energía a suscribirse entre SERNAM y Sociedad de Mecanismos de Energía Renovable S.A. de C.V., Proyecto Solar del Sur, en Choluteca, con el objeto de generar, transmitir y comercializar energía renovable </descripcion></proyecto> </proyectos>', '2015-04-19 18:21:09', 'SUCCESS'),
(109, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>201502-738539578</sesion><nombre>Contrato para la Generación de energía entre SERNAM y ENERSA, Proyecto Helios </nombre><tipoacto>Dictamen </tipoacto><debate>Tercer Debate </debate><status>Aprobado </status><comision>Energía </comision><partido>No Aplica </partido><proponente>SERNAM  </proponente><fecha>2015-04-19 07:23:37 p.m. </fecha><descripcion>Contrato para la generación de energía en Choluteca, Proyecto Helios, con el objeto de generar, transmitir y comercializar energía renovable. </descripcion></proyecto> </proyectos>', '2015-04-19 18:23:41', 'SUCCESS'),
(110, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015319-1338540471</sesion><nombre>Exoneración de Multas de Vehículos </nombre><tipoacto>Proyecto de Ley </tipoacto><debate>No Aplica </debate><status>Presentado y Turnado a Comisión </status><comision>Especial </comision><partido>Partido Liberal (PL) </partido><proponente>Marco Antonio Andino </proponente><fecha>2015-04-19 07:28:48 p.m. </fecha><descripcion>Establecer amnistía en el pago de multas a vehículos en su matricula única de pago </descripcion></proyecto> </proyectos>', '2015-04-19 18:28:51', 'SUCCESS'),
(111, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015319-1338540471</sesion><nombre>policia </nombre><tipoacto>Dictamen </tipoacto><debate>Primer Debate </debate><status>Aprobado </status><comision>Legislación y Asuntos Constitucionales </comision><partido>Partido Nacional (PN) </partido><proponente>Manuel Zelaya Rosales </proponente><fecha>2015-04-20 02:46:32 PM </fecha><descripcion>policia militar </descripcion></proyecto> </proyectos>', '2015-04-20 13:46:33', 'SUCCESS'),
(112, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015319-1338540471</sesion><nombre>policia militar </nombre><tipoacto>Dictamen </tipoacto><debate>Primer Debate </debate><status>No Aplica </status><comision>Enlace con la Sociedad Civil y Participación  </comision><partido>Partido Liberal (PL) </partido><proponente>Manuel Iván Fiallos Rodas </proponente><fecha>2015-04-20 02:54:42 PM </fecha><descripcion>policia militar alto </descripcion></proyecto> </proyectos>', '2015-04-20 13:54:43', 'SUCCESS'),
(113, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015319-1338540471</sesion><nombre>policia 3 </nombre><tipoacto>Dictamen </tipoacto><debate>Primer Debate </debate><status>No Aplica </status><comision>Finanzas y Cooperación Externa </comision><partido>Partido Libertad y Refundación (LIBRE) </partido><proponente>Manuel Zelaya Rosales </proponente><fecha>2015-04-20 02:59:21 PM </fecha><descripcion>policia militar </descripcion></proyecto> </proyectos>', '2015-04-20 13:59:22', 'SUCCESS'),
(114, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015319-1338540471</sesion><nombre>policia 4 </nombre><tipoacto>Dictamen </tipoacto><debate>Primer Debate </debate><status>Aprobado </status><comision>Finanzas y Cooperación Externa </comision><partido>Partido Liberal (PL) </partido><proponente>Manuel Iván Fiallos Rodas </proponente><fecha>2015-04-20 03:06:42 PM </fecha><descripcion>policia militar </descripcion></proyecto> </proyectos>', '2015-04-20 14:06:44', 'SUCCESS'),
(115, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015319-1338540471</sesion><nombre>jhg </nombre><tipoacto>hgf </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision>No Aplica </comision><partido>No Aplica </partido><proponente>No Aplica </proponente><fecha>2015-04-20 08:59:29 PM </fecha><descripcion>jhg </descripcion></proyecto> </proyectos>', '2015-04-20 19:59:32', 'SUCCESS'),
(116, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015319-1338540471</sesion><nombre>Acto de Prueba  </nombre><tipoacto>Dictamen </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision>Legislación y Asuntos Constitucionales </comision><partido>Partido Libertad y Refundación (LIBRE) </partido><proponente>Manuel Iván Fiallos Rodas </proponente><fecha>2015-04-23 11:33:45 PM </fecha><descripcion>prueba </descripcion></proyecto> </proyectos>', '2015-04-23 22:33:47', 'SUCCESS'),
(117, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015319-1338540471</sesion><nombre>prueba </nombre><tipoacto>Dictamen </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision>Legislación y Asuntos Constitucionales </comision><partido>Partido Libertad y Refundación (LIBRE) </partido><proponente>Manuel Iván Fiallos Rodas </proponente><fecha>2015-04-23 11:36:19 PM </fecha><descripcion>prueba </descripcion></proyecto> </proyectos>', '2015-04-23 22:36:22', 'SUCCESS'),
(118, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015319-1338540471</sesion><nombre>prueba x </nombre><tipoacto>Dictamen </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision> </comision><partido> </partido><proponente>Manuel Iván Fiallos Rodas </proponente><fecha>2015-04-23 11:43:31 PM </fecha><descripcion>prueba y </descripcion></proyecto> </proyectos>', '2015-04-23 22:43:32', 'SUCCESS'),
(119, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>1</id><sesion>2015319-1338540471</sesion><nombre>policia militar  </nombre><tipoacto>Dictamen  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>Legislación y Asuntos Constitucionales  </comision><partido>Partido Libertad y Refundación (LIBRE)  </partido><proponente>Manuel Zelaya Rosales  </proponente><fecha>2015-04-26 01:23:38 AM  </fecha><descripcion>test  </descripcion></proyecto> </proyectos>', '2015-04-26 00:25:29', 'SUCCESS'),
(120, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>2</id><sesion>2015319-1338540471</sesion><nombre>prueba police  </nombre><tipoacto>Dictamen  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>Legislación y Asuntos Constitucionales  </comision><partido>Partido Nacional (PN)  </partido><proponente>Manuel Iván Fiallos Rodas  </proponente><fecha>2015-04-26 01:27:57 AM  </fecha><descripcion>policia militar  </descripcion></proyecto> </proyectos>', '2015-04-26 00:29:54', 'SUCCESS'),
(121, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>2</id><sesion>2015319-1338540471</sesion><nombre>prueba police  </nombre><tipoacto>Dictamen  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>Legislación y Asuntos Constitucionales  </comision><partido>Partido Nacional (PN)  </partido><proponente>Manuel Iván Fiallos Rodas  </proponente><fecha>2015-04-26 01:27:57 AM  </fecha><descripcion>policia militar  </descripcion></proyecto> </proyectos>', '2015-04-26 00:35:33', 'SUCCESS'),
(122, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>3</id><sesion>2015319-1338540471</sesion><nombre>n policia  </nombre><tipoacto>Dictamen  </tipoacto><debate>No Aplica  </debate><status>No Aplica  </status><comision>Legislación y Asuntos Constitucionales  </comision><partido>Partido Liberal (PL)  </partido><proponente>Marlene Elizabeth Alvarenga  </proponente><fecha>2015-04-26 01:38:08 AM  </fecha><descripcion>policia militar  </descripcion></proyecto> </proyectos>', '2015-04-26 00:40:37', 'SUCCESS'),
(123, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015319-1338540471</sesion><nombre>nueva proyecto </nombre><tipoacto>Dictamen </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision>Finanzas y Cooperación Externa </comision><partido>Partido Liberal (PL) </partido><proponente>César Enrique Hendal Fernández </proponente><fecha>2015-04-26 10:19:00 AM </fecha><descripcion>policia militar </descripcion></proyecto> </proyectos>', '2015-04-26 09:19:02', 'SUCCESS'),
(124, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015319-1338540471</sesion><nombre>bien  </nombre><tipoacto>Dictamen </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision>Finanzas y Cooperación Externa </comision><partido>Partido Liberal (PL) </partido><proponente>Alejandra María Mancía Gómez </proponente><fecha>2015-04-26 10:50:21 AM </fecha><descripcion>policia militar </descripcion></proyecto> </proyectos>', '2015-04-26 09:50:22', 'SUCCESS'),
(125, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015319-1338540471</sesion><nombre>refajo </nombre><tipoacto>Moción </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision>Legislación y Asuntos Constitucionales </comision><partido>Partido Liberal (PL) </partido><proponente>Manuel Iván Fiallos Rodas </proponente><fecha>2015-04-26 11:03:58 AM </fecha><descripcion>policia militar </descripcion></proyecto> </proyectos>', '2015-04-26 10:04:00', 'SUCCESS'),
(126, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015319-1338540471</sesion><nombre>nombre acto 1 </nombre><tipoacto>Moción </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision>Legislación y Asuntos Constitucionales </comision><partido>Partido Liberal (PL) </partido><proponente>Pedro Rafael Alegría </proponente><fecha>2015-04-26 11:09:00 AM </fecha><descripcion>policia militar </descripcion></proyecto> </proyectos>', '2015-04-26 10:09:02', 'SUCCESS'),
(127, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015319-1338540471</sesion><nombre>prueba policia </nombre><tipoacto>Moción </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision>Legislación y Asuntos Constitucionales </comision><partido>Partido Liberal (PL) </partido><proponente>Manuel Iván Fiallos Rodas </proponente><fecha>2015-04-26 11:18:27 AM </fecha><descripcion>deacripcion larga </descripcion></proyecto> </proyectos>', '2015-04-26 10:18:29', 'SUCCESS'),
(128, '<?xml version="1.0" encoding="UTF-8"?> <proyectos><proyecto><id>0</id><sesion>2015319-1338540471</sesion><nombre>moraodr </nombre><tipoacto>miraodr </tipoacto><debate>No Aplica </debate><status>No Aplica </status><comision>Legislación y Asuntos Constitucionales </comision><partido>Partido Liberal (PL) </partido><proponente>Manuel Iván Fiallos Rodas </proponente><fecha>2015-05-03 05:55:20 PM </fecha><descripcion>policia militar </descripcion></proyecto> </proyectos>', '2015-05-03 16:55:21', 'SUCCESS');

-- --------------------------------------------------------

--
-- Table structure for table `diputado`
--

CREATE TABLE IF NOT EXISTS `diputado` (
  `id_diputado` int(11) NOT NULL,
  `diputado_nombre` varchar(45) DEFAULT NULL,
  `diputado_imagen` varchar(600) DEFAULT NULL,
  `diputado_activo` bit(1) DEFAULT NULL,
  `id_partido` int(11) DEFAULT NULL,
  `descripcion_corta` varchar(200) NOT NULL,
  `descripcion_larga` varchar(600) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diputado`
--

INSERT INTO `diputado` (`id_diputado`, `diputado_nombre`, `diputado_imagen`, `diputado_activo`, `id_partido`, `descripcion_corta`, `descripcion_larga`) VALUES
(2, 'Fatima Patricia Mena', 'http://www.congresonacional.hn/images/stories/bancadas/pac/PROPIETARIOS/Fatima%20Patricia%20Mena%20Baide%20Id%200501-1982-099091.jpg', b'1', 3, 'Presidente de Bancada, Diputada Propietaria por Cortés', ''),
(4, 'Manuel Zelaya Rosales', 'http://www.congresonacional.hn/images/stories/bancadas/libre/PROPIETARIOS/Jose%20Manuel%20Zelaya%20Rosales%20LIBRE1.jpg', b'1', 4, 'Presidente de Bancada, Diputado Propietario por Olancho', ''),
(5, 'Ana Joselina Fortín', 'http://www.congresonacional.hn/images/stories/bancadas/pac/PROPIETARIOS/Ana%20Joselina%20Fortin%20Pineda%20Id%200801-1972-00632%20PAC1.jpg', b'1', 3, 'Diputada Propietaria por Francisco Morazán', ''),
(6, 'Anibal Javier Cálix', 'http://www.congresonacional.hn/images/stories/bancadas/pac/PROPIETARIOS/Anibal%20Javier%20Calix%20Fuunez%20Id%200501-1970-01207%20PAC1.jpg', b'1', 3, 'Diputado Propietario por Cortés', ''),
(7, 'David Armando Reyes', 'http://www.congresonacional.hn/images/stories/bancadas/pac/PROPIETARIOS/David%20Armando%20Reyes%20Osorto%20Id%200801-1977-13925%20PAC1.jpg', b'1', 3, 'Diputado Propietario por Choluteca', ''),
(8, 'Jaime Enrique Villegas', 'http://www.congresonacional.hn/images/stories/bancadas/pac/PROPIETARIOS/Jaime%20Enrique%20Villegas%20Roura%20Id%200101-1950-00494%20PAC1.jpg', b'1', 3, 'Diputado Propietario por Cortés', ''),
(9, 'Kritza Jerlin Pérez Gallegos', 'http://www.congresonacional.hn/images/stories/bancadas/pac/PROPIETARIOS/editadas/Kritza%20Jerlin%20Perez%20Gallegos%20Id%200103-1985-00270%20PAC1%20(Copiar).jpg', b'1', 3, 'Diputada Propietaria por Atlántida. Suplente: José Antonio Mejía Bonilla', 'Lugar de Nacimiento: Esparta; Profesión: Lic. en Mercadotecnia; Comisiones Ordinarias Integradas: Medio Ambiente y Cambio Climático (Miembro), Modernización y Comunicación Institucional (Secretaria); Email: kritzaperez@hotmail.com'),
(11, 'Liberato Madrid Castro', 'http://www.congresonacional.hn/images/stories/bancadas/pac/PROPIETARIOS/Liberato%20Madrid%20Castro%20Id%201804-1968-02339%20PAC1.jpg', b'1', 3, 'Diputado Propietario por Yoro', ''),
(12, 'Liliam Yaneth Villatoro', 'http://www.congresonacional.hn/images/stories/bancadas/pac/PROPIETARIOS/editadas/Liliam%20Yaneth%20Villatoro%20Garcia%20%20Id%200318-1983-01946%20PAC1%20(Copiar).jpg', b'1', 3, 'Diputada Propietaria por Comayagua', ''),
(13, 'Luis René Oliva', 'http://www.congresonacional.hn/images/stories/bancadas/pac/PROPIETARIOS/editadas/Luis%20Rene%20Oliva%20Romero%20Id%200501-1972-05625%20PAC1%20(Copiar).jpg', b'1', 3, 'Diputado Propietario por Cortés', ''),
(45, 'Marlene Elizabeth Alvarenga', 'http://www.congresonacional.hn/images/stories/bancadas/pac/PROPIETARIOS/editadas/Marlene%20Elizabeth%20Alvarenga%20Castellanos%20Id%200703-1985-01047%20PAC1%20(Copiar).jpg', b'1', 3, 'Diputada Propietaria por Francisco Morazán', ''),
(46, 'Rafael Virgilio Padilla', 'http://www.congresonacional.hn/images/stories/bancadas/pac/PROPIETARIOS/editadas/Rafael%20Virgilio%20Padilla%20Paz%20Id%200501-1973-04466%20PAC1%20(Copiar).jpg', b'1', 3, 'Diputado Propietario por Francisco Morazán', ''),
(47, 'Walter Alex Banegas', 'http://www.congresonacional.hn/images/stories/bancadas/pac/PROPIETARIOS/editadas/Walter%20Alex%20Banegas%20Aguilera%20Id%201701-1972-01190%20PAC1%20(Copiar).jpg', b'1', 3, 'Diputado Propietario por Cortés', ''),
(48, 'Edwin Roberto Pavón León', 'http://www.congresonacional.hn/images/stories/bancadas/ud/PROPIETARIO/Edwin%20Roberto%20Pavon%20Leon%2061.jpg', b'1', 8, 'Presidente de Bancada, Diputado Propietario por Cortés', ''),
(49, 'Augusto Domingo Cruz Asencio', 'http://www.congresonacional.hn/images/stories/bancadas/dc/PROPIETARIO/Augusto%20Domingo%20Cruz%20Asencio%20Id%200801-1961-04596%20DC.JPG', b'1', 7, 'Presidente de Bancada, Diputado Propietario por Francisco Morazán', ''),
(50, 'Doris Gutiérrez', 'http://www.congresonacional.hn/images/stories/bancadas/pinu/PROPIETARIO/Dori%20Alejandrina%20Gutierrez%20ID%200801-1947-02483.JPG', b'1', 6, 'Presidente de Bancada, Diputada Propietaria por Francisco Morazán', ''),
(51, 'Marco Antonio Andino', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/PROPIETARIOS/Marco%20Antonio%20Andino%200818-1955-00025.jpg', b'1', 0, 'Presidente de Bancada, Diputado Propietario por Francisco Morazán', ''),
(52, 'Angel Dario Banegas Leiva', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Angel%20Dario%20Banegas%20Leiva%20%201601-1969-00798.jpg', b'1', 0, 'Diputado Propietario por Cortés', ''),
(53, 'Carlos Alfredo Lara Watson', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Carlos%20Alfredo%20Lara%20Watson.jpg', b'1', 0, 'Diputado Propietario por Choluteca', ''),
(54, 'Cristhian Reniery Santamaría', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Cristhian%20Reniery%20Santamaria%20Id%200101-1972-02409%20PL1.jpg', b'1', 0, 'Diputado Propietario por Atlántida. SUplente: Luis Antonio Hernández Baquedano', 'Lugar de Nacimiento: La Ceiba; Profesión: Lic. en Periodismo; Comisiones Ordinarias Integradas: Aduntos Regionales, Departamentales y Municipales (Miembro), Deportes y Previsión Social (Secretario), Ciencia y Tecnología (Miembro); Email: csantamaria.congres@yahoo.com'),
(55, 'Fredy Renán Najera Hernández', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Fredy%20Renan%20Najera%20Hernandez%20ID%201517-1977-00033%20PL1.jpg', b'1', 0, 'Diputado Propietario por Olancho', ''),
(56, 'Gabriela Núñez Ennabe', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Gabriela%20Nu%C3%B1ez%20Ennabe%20Id%200801-1962-05276%20PL1.jpg', b'1', 0, 'Diputada Propietaria por Francisco Morazán', ''),
(57, 'Gloria Argentina Bonilla Bonilla', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Gloria%20Argentina%20Bonilla%20Bonilla%20ID%200107-1966-002481.jpg', b'1', 0, 'Diputada Propietaria por Comayagua', ''),
(58, 'Hugo Ricardo Hernández', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Hugo%20Ricardo%20Hernandez%201401-1984-00531%20PL1.jpg', b'1', 0, 'Diputado Propietario por Ocotepeque', ''),
(59, 'Jariet Waldina Paz', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Jariet%20Waldina%20Paz.jpg', b'1', 0, 'Diputada Propietaria por Francisco Morazán', ''),
(60, 'Jorge Maynor Vargas Díaz', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Jorge%20Maynor%20Vargas%20Diaz%20Id%201001-1965-00008%20PL1.jpg', b'1', 0, 'Diputado Propietario por Intibucá', ''),
(61, 'José Alfredo Saavedra Paz', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Jose%20Alfredo%20Saavedra%20Paz%201706-1964-00655.jpg', b'1', 0, 'Diputado Propietario por Valle', ''),
(62, 'José Eduardo de Jesús Gauggel Medina', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Jose%20Eduardo%20de%20Jesus%20Gauggel%20Medina%20ID%200401-1981-00546%20PL1.jpg', b'1', 0, 'Diputado Propietario por Copán', ''),
(63, 'José Vivian Portillo Ramírez', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Jose%20Vivian%20Portillo%20Ramirez%20ID%201406-1957-00093%20PL1.jpg', b'1', 0, 'Diputado Propietario por Yoro', ''),
(64, 'Lisandro Mauricio Arias Aquino', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Lisandro%20Mauricio%20Arias%20Aquino%20Is%200501-1965-02547%20PL1.jpg', b'1', 0, 'Diputado Propietario por Copán', ''),
(65, 'Manuel Iván Fiallos Rodas', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Manuel%20Ivan%20Fiallos%20Rodas%20ID%200801-1969-05268%20PL1.jpg', b'1', 0, 'Diputado Propietario por La Paz', ''),
(66, 'María Aracely Leiva Peña', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Maria%20Aracely%20Leiva%20Pe%C3%B1a%20ID%201619-1967-00668%20PL1.jpg', b'1', 0, 'Diputada Propietaria por Atlántida. Suplente: Luis Enrique Fuentes Morales', 'Profesión: Ingeniera Ambiental; Comisiones Ordinarias Integradas: Asuntos Electorales (Miembro), Familia, la Ninñez, la Juventud y el Adulto Mayor (Miembro), Especial de Seguridad Social (Miembro); Email: aracely.licona@yahoo.es'),
(67, 'Maritza Yaneth Varela Martínez', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Maritza%20Janeth%20Varela%20Martinez%20ID%201801-1964-00377%20PL1.jpg', b'1', 0, 'Diputada Propietaria por Francisco Morazán', ''),
(68, 'Marlon Guillermo Lara Orellana', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Marlon%20Guillermo%20Lara%20Orellana%20ID%200501-1966-01921%20PL1.jpg', b'1', 0, 'Diputado Propietario por Cortés', ''),
(69, 'Midence Oquelí Martínez Turcios', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Midence%20Oqueli%20Martinez%20Turcios%20ID%200209-1963-00233%20PL1.jpg', b'1', 0, 'Diputado Propietario por Colón. Suplente: Carlos Hernán Banegas Lazo', 'Lugar de Nacimiento: Tocoa; Profesión: Lic. en Ciencias Militares/ Lic. en Administración de Empresas; Comisiones Ordinarias Integradas: Defensa y Soberanía (Vicepresidente); Modernización y Comunicación Institucional (Miembro); Email: midenceoqueli@yahoo.es'),
(70, 'Nery Orlando Reyes Hernández', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Nery%20Orlando%20Reyes%20Hernandez%20ID%201308-1972-00095%20PL1.jpg', b'1', 0, 'Diputado Propietario por Lempira', ''),
(71, 'Rafael Tadeo Nodarse Banegas', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Rafael%20Tadeo%20Nodarse%20Banegas%20ID%200501-1965-05855%20PL1.jpg', b'1', 0, 'Diputado Propietario por Cortés', ''),
(72, 'Ramón Chacón Ferrufino', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Ramon%20Chacon%20Ferrufino%20ID%200702-1960-00041%20PL1.jpg', b'1', 0, 'Diputado Propietario por El Paraíso', ''),
(73, 'Seth Paisano Wood', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Seth%20Paisano%20Wood%20ID%200902-1971-00019%20PL1.jpg', b'1', 0, 'Diputado Propietario por Gracias a Dios', ''),
(74, 'Victor Rolando Sabillón Sabillón', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Victor%20Rolando%20Savillon%20Savillon%201611-1963-00092.jpg', b'1', 0, 'Diputado Propietario por Santa Bárbara', ''),
(75, 'Yadira Esperanza Bendaña Flores', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Yadira%20Esperanza%20Benda%C3%B1a%20Flores%20ID%200801-1968-05885%20PL1.jpg', b'1', 0, 'Diputada Propietaria por Francisco Morazán', ''),
(76, 'Yury Cristhian Sabas Gutierrez', 'http://www.congresonacional.hn/images/stories/bancadas/liberal/editadas/Yury%20Cristhian%20Sabas%20Gutierrez%20ID%200601-1975-01002%20PL1.jpg', b'1', 0, 'Diputado Propietario por Choluteca', ''),
(77, 'Jerry Dave Hynds Julio', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 0, 'Diputado Propietario por Islas de la Bahía', ''),
(78, 'Oscar Álvarez', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/propietarios/oscar%20alvarez.png', b'1', 2, 'Presidente de Bancada, Diputado Propietario por Francisco Morazán', ''),
(79, 'Alberto Chedrani Castañeda', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Alberto%20Chedrani%20Casta%C3%B1eda%20Id%200509-1957-00040.jpg', b'1', 2, 'Diputado Propietario por Cortés', ''),
(80, 'Antonio César Rivera Callejas', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Antonio%20Cesar%20Rivera%20Callejas%20Id%200801-1963-03130%20PN1.jpg', b'1', 2, 'Diputado Propietario por Francisco Morazán', ''),
(81, 'Arturo Bendaña Pinel', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Arturo%20Benda%C3%B1a%20Pinel%20Id%200501-1953-03225%20PN1.jpg', b'1', 2, 'Diputado Propietario por Cortés', ''),
(82, 'Carlos Roberto Ledezma Casco', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Carlos%20Roberto%20Ledezma%20Casco.png', b'1', 2, 'Diputado Propietario por Choluteca', ''),
(83, 'Carmen Esperanza Rivera Pagoaga', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Carmen%20Esperanza%20%20Rivera%20Pagoaga%20Id%200101-1968-00303%20PN1.jpg', b'1', 2, 'Diputada Propietaria por Atlántida. Suplente: Carlos Humberto Bonilla Aguiriano', 'Lugar de Nacimiento: La Ceiba; Profesión: Abogada; Comisiones Ordinarias Integradas: Educación (Miembro), Familia, la Niñez, la Juventud y el Adulto Mayor (Integrada), Equidad de Género (Integrada), Asuntos Electorales (Integrada); Email: carmen-riveram@hotmail.com'),
(84, 'César Enrique Hendal Fernández', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Cesar%20Enrique%20Handal%20Fernandez%20Id%200501-1973-07055%20PN1.jpg', b'1', 2, 'Diputado Propietario por Santa Bárbara', ''),
(85, 'David Guillermo Chávez Madison', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/David%20Guillermo%20Chavez%20Madison%20Id%200801-1982-07279%20PN1.jpg', b'1', 2, 'Diputado Propietario por Francisco Morazán', ''),
(86, 'Diana Patricia Urbina Soto', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Diana%20Patricia%20Urbina%20Soto%20ID%201801-1976-01196%20PN1.jpg', b'1', 2, 'Diputada Propietaria por Yoro', ''),
(87, 'Elden Vásquez', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Elden%20Vasquez%20Id%201002-1962-00064%20PN1.jpg', b'1', 2, 'Diputado Propietario por Intibucá', ''),
(88, 'Francisco Antonio Macías Ortega', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Francisco%20Antonio%20Macias%20Ortega%20Id%200801-1973-05322%20PN1.jpg', b'1', 2, 'Diputado Propietario por Choluteca', ''),
(89, 'Gerardo Tulio Martínez Pineda', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Gerardo%20Tulio%20Martinez%20Pineda%20Id%200401-1970-00385%20PN1.jpg', b'1', 2, 'Diputado Propietario por Comayagua', ''),
(90, 'Gladis Aurora López Calderón', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Gladis%20Aurora%20Lopez%20Calderon%20PN1.jpg', b'1', 2, 'Diputado Propietario por Francisco Morazán', ''),
(91, 'Héctor Hugo Pinto Aguilar', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Hector%20Hugo%20Pinto%20Aguilar%20ID%2004091977-00180%20PN1.jpg', b'1', 2, 'Diputado Propietario por Copán', ''),
(92, 'Jeffrey Alexander Flores Chavarría', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Jeffrey%20Alexander%20Flores%20Chavarria%20Id%201804-1981-04087%20PN1.jpg', b'1', 2, 'Diputado Propietario por Yoro', ''),
(93, 'Jorge Humberto Pinto Portillo', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Jorge%20Humberto%20Pinto%20Portillo%20ID%201412-1970-00094%20PN1.jpg', b'1', 2, 'Diputado Propietario por Copán', ''),
(94, 'José Celín Discua Elvir', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Jose%20Celin%20Discua%20Elvir%20%20PN%2067.jpg', b'1', 2, 'Diputado Propietario por El Paraíso', ''),
(95, 'José Francisco Rivera Hernández', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Jose%20Francisco%20Rivera%20Hernandez%20Id%201503-1955-00177%20PN1.jpg', b'1', 2, 'Diputado Propietario por Olancho', ''),
(96, 'José María Martínez Valenzuela', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Jose%20Maria%20Martinez%20Valenzuela%20Id%200301-1958-00426.jpg', b'1', 2, 'Diputado Propietario por Comayagua', ''),
(97, 'José Oswaldo Ramos Soto', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/propietarios/oswaldo%20ramos%20soto.jpg', b'1', 2, 'Diputado Propietario por Francisco Morazán', ''),
(98, 'José Tomás Zambrano Molina', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Jose%20Tomas%20Zambrano%20Molina%200801-1982-14014.jpg', b'1', 2, 'Diputado Propietario por Francisco Morazán', ''),
(99, 'José Vicente León Rojas', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Jose%20Vicente%20Leon%20Rojas%20Id.%200410-1958-00236%20PN1.jpg', b'1', 2, 'Diputado Propietario por Copán', ''),
(100, 'Juan Carlos Valenzuela', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Juan%20Carlos%20Valenzuela%20ID%200401-1970-01071%20PN1.jpg', b'1', 2, 'Diputado Propietario por Lempira', ''),
(101, 'Nelson Abdalah Chawi', 'http://www.congresonacional.hn/images/stories/bancadas/nuevas%20fotos/Nelson%20ABdalah%20Chawi%20ID%200801-1973-00637%20PN1.jpg', b'1', 2, 'Diputado Propietario por Francisco Morazán', ''),
(102, 'Leda Lizethe García Pagán', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Leda%20Lizethe%20Garcia%20Pagan%20Id%200502-1980-01761%20PN1.jpg', b'1', 2, 'Diputada Propietaria por Cortés', ''),
(103, 'Marco Antonio Velásquez', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Marco%20Antonio%20Velasquez%20Id%201702-1978-00290%20PN1.jpg', b'1', 2, 'Diputado Propietario por Valle', ''),
(104, 'María Emerita Bardales Hernández', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Maria%20Emerita%20Bardales%20Hernandez%20Id%201701-1982-00355%20PN1.jpg', b'1', 2, 'Diputada Propietaria por Choluteca', ''),
(105, 'Mario Alonso Pérez López', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Mario%20Alonso%20Perez%20Lopez%20%20PN%2082.jpg', b'1', 2, 'Diputado Propietario por Francisco Morazán', ''),
(106, 'Martha Concepción Figueroa Torez', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Martha%20Concepcion%20Figueroa%20Torrez%20Id%201618-1952-00110%20PN1.jpg', b'1', 2, 'Diputado Propietario por Santa Bárbara', ''),
(107, 'Mauricio Oliva', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/MAURICIO%20OLIVA%200801-1951-00931.jpg', b'1', 2, 'Diputado Propietario por Francisco Morazán', ''),
(108, 'Miguel Edgardo Martínez Pineda', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/MIguel%20Edgardo%20Martinez%20Pineda%20Id%201305-1965-00110%20PN1.jpg', b'1', 2, 'Diputado Propietario por Comayagua', ''),
(109, 'Milton Jesús Puerto Oseguera', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Milton%20Jesus%20Puerto%20Oseguera%20%20%20PN%2054.jpg', b'1', 2, 'Diputado Propietario por Francisco Morazán', ''),
(110, 'Oscar Ramón Nájera', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Oscar%20Ramon%20Najera%20ID%200209-1950-00507%20PN1.jpg', b'1', 2, 'Diputado Propietario por Colón. Suplente: Hector Rolando Hernández Cruz', 'Lugar de Nacimiento: Tocoa; Profesión: Ingeniero Agrónomo; Comisiones Ordinarias Integradas: Energía (Presidente), Economía Social (Miembro); Email: oscarnajerao@gmail.com'),
(111, 'Ramón Antonio Leva Búlnes', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Ramon%20Antonio%20Leva%20Bulnes%20Id%20%200101-1948-00568%20PN1.jpg', b'1', 2, 'Diputado Propietario por Atlántida. Suplente: Nery Ramón Menjívar', 'Lugar de Nacimiento: La Ceiba; Profesión: Médico, Cirujano; Comisiones Ordinarias Integradas: Salud (Miembro), Economía Social (Miembro); Email: ramonlevab@yahoo.com'),
(112, 'José Alfredo Moradel', 'http://www.congresonacional.hn/images/stories/bancadas/nuevas%20fotos/Jose%20Alfredo%20Mora%20del%20Zaval%20ID%201503-1962-006541%20PN.jpg', b'1', 2, 'Diputado Propietario por Francisco Morazán', ''),
(113, 'José Rodolfo Irías Navas', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Rodolfo%20Irias%20Navas%20ID%200101-1949-00765%20PN1.jpg', b'1', 2, 'Diputado Propietario por Atlántida. Suplente: Pedro Rigoberto Fernández Aguilar', 'Lugar de Nacimiento: La Ceiba; Profesión: Lic. Administración de Empresas; Comisiones Ordinarias Integradas: Telecomunicaciones (Presidente); Cooperación Externa y Finanzas (Miembro); Email: rodolfoirias@yahoo.com'),
(114, 'Rolando Dubón Bueso', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Rolando%20Dubon%20Bueso1.jpg', b'1', 2, 'Diputado Propietario por Santa Bárbara', ''),
(115, 'Román Villeda Aguilar', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Roman%20Villeda%20Aguilar%20ID%201411-1963-00117%20PN1.jpg', b'1', 2, 'Diputado Propietario por Francisco Morazán', ''),
(116, 'Rossel Renán Inestroza Hernández', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Rossel%20Renan%20Inestroza%20Hernandez%20Id%200801-1965-09673.jpg', b'1', 2, 'Diputado Propietario por Francisco Morazán', ''),
(117, 'Rodimiro Mejía Merino', 'http://www.congresonacional.hn/images/stories/bancadas/nuevas%20fotos/Rodimiro%20Mejia%20Merino%20Id%201702-1982-00334.JPG', b'1', 2, 'Diputado Propietario por Francisco Morazán', ''),
(118, 'Juan Antonio Hernández', 'http://www.congresonacional.hn/images/stories/bancadas/nuevas%20fotos/JUan%20Antonio%20Hernandez%20Alvarado%20%20ID%201301-1978-003081.jpg', b'1', 2, 'Diputado Propietario por Lempira', ''),
(119, 'Sara Ismela Galo', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Sara%20Ismela%20Galo%20Id%200703-1975-01650%20PN1.jpg', b'1', 2, 'Diputada Propietaria por El Paraíso', ''),
(120, 'Teresa Concepción Cálix Raudales', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Teresa%20Concepcion%20Calix%20Raudales%20ID%200615-1959-00241%20PN1.jpg', b'1', 2, 'Diputada Propietaria por Olancho', ''),
(121, 'Walter Antonio Chávez Hernández', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Walter%20Antonio%20Chavez%20Hernandez%20Id%200701-1971-00179%20PN1.jpg', b'1', 2, 'Diputado Propietario por El Paraíso', ''),
(122, 'Welsy Milena Vásquez López', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Welsy%20Milena%20Vasquez%20Lopez%20ID%200501-1970-074131.jpg', b'1', 2, 'Diputada Propietaria por Cortés', ''),
(123, 'Wilmer Raynel Neal Velásquez', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/Wilmer%20Raynel%20Neal%20Velasquez%20Id%200501-1972-03568%20PN1.jpg', b'1', 2, 'Diputado Propietario por Francisco Morazán', ''),
(124, 'Yaudet Burbara Canahuati', 'http://www.congresonacional.hn/images/stories/bancadas/nacional/editadas/YAUDET%20BURBARA%20CANAHUATI1.png', b'1', 2, 'Diputado Propietario por Cortés', ''),
(125, 'Lena Gutierrez', 'http://www.congresonacional.hn/images/stories/bancadas/jd/lena.jpg', b'1', 2, 'Diputado Propietario por Francisco Morazán', ''),
(126, 'Luis Rolando Redondo', 'http://www.congresonacional.hn/images/stories/bancadas/pac/PROPIETARIOS/editadas/Luis%20Rolando%20Redondo%20Guifarro%20Id%200801-1973-01612%20PAC1%20(Copiar).jpg', b'1', 3, 'Diputado Propietario por Cortés', ''),
(127, 'Abel Benítez', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Abel%20Benitez%20Id%200318-1954-00487%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por La Paz', ''),
(128, 'Alejandra María Mancía Gómez', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Alejandra%20Maria%20Mancia%20Gomez%20Id%201626-1985-004431.jpg', b'1', 4, 'Diputada Propietaria por Santa Bárbara', ''),
(129, 'Angel Enrique Sandoval López', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Angel%20Enrique%20Sandoval%20Lopez%20Id%200615-1959-00363%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Choluteca', ''),
(130, 'Audelia Rodríguez Rodríguez', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Audelia%20Rodriguez%20Rodriguez%20Id%200107-1967-02327%20LIBRE1.jpg', b'1', 4, 'Diputada Propietaria por Atlántida. Suplente: Noel Fernando Ponce Montiel', 'Lugar de Nacimiento: Tela; Profesión: Comunicadora; Comisiones Ordinarias Integradas: Familia, la Niñez, la Juventud y el Adulto Mayor (Miembro)'),
(131, 'Bartolo Antonio Fuentes', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Bartolo%20Antonio%20Fuentes%20Id%201706-1964-00442%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Yoro', ''),
(132, 'Carlos Alberto Interiano', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Carlos%20Alberto%20Interiano%20Id%201601-1975-00292%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Francisco Morazán', ''),
(133, 'César Humberto Agurcia López', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Cesar%20Humberto%20Agurcia%20Lopez%20Id%200101-1984-01013%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Atlántida. Suplente: Luis Alonso Méndez Gutierrez', 'Lugar de Nacimiento: La Ceiba; Profesión: Pasante Licenciatura Administración de Empresa; Diputación: 1; Comisiones Ordinarias Integradas: Agricultura y Ganadería (Miembro), Trabajo y Asuntos Gremiales (Miembro), Seguridad y Prevención Ciudadana (Miembro); Email: cesarhagurcia24@hotmail.com'),
(134, 'Claudia Lorena Garmendia', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Claudia%20Lorena%20Garmendia%20Garay%20Id%200703-1984-05392%20LIBRE1.jpg', b'1', 4, 'Diputada Propietaria por El Paraíso', ''),
(135, 'Delia Beatríz Valle', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Delia%20Beatriz%20Valle%20Marichal%20Id%200801-1966-05683%20LIBRE1.jpg', b'1', 4, 'Diputada Propietaria por Francisco Morazán', ''),
(136, 'Edgardo Antonio Casaña', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Edgardo%20Antonio%20Casa%C3%B1a%20Mejia%20Id%201601-1978-00710%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Santa Bárbara', ''),
(137, 'Eleazar Alexander Juarez', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Eleazar%20Alexander%20Juarez%20Sarabia%20Id%201701-1969-00405%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Valle', ''),
(138, 'Elvia Argentina Valle', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Elvia%20Argentina%20Valle%20Villalta%20Id%201414-1958-00051%20LIBRE1.jpg', b'1', 4, 'Diputada Propietaria por Copán', ''),
(139, 'Esdras Amado López', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Esdras%20Amado%20LOpez%20Rodriguez%20ID%200801-1964-004831.jpg', b'1', 4, 'Diputado Propietario por Francisco Morazán', ''),
(140, 'Fany Patricia Valladares', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Fany%20Patricia%20Valladares%20Ortega%20Id%200306-1971-00267%20LIBRE1.jpg', b'1', 4, 'Diputada Propietaria por Comayagua', ''),
(141, 'Francisco Javier Paz Laínea', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Francisco%20Javier%20Paz%20Lainez%201701-1971-01126%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por El Paraíso', ''),
(142, 'Héctor Enrique Padilla', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Hector%20Enrique%20Padilla%20Hernandez%20Id%201701-1971-01011%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Choluteca', ''),
(143, 'Irma Aida Reyes', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Irma%20Aida%20Reyes%20Coello%20Id%200315-1954-00045%20LIBRE1.jpg', b'1', 4, 'Diputada Propietaria por Yoro', ''),
(144, 'Jari Dixon Herrera', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Jari%20Dixon%20Herrera%20Hernandez%20Id%200801-1971-06976%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Francisco Morazán', ''),
(145, 'José Alberto Vásquez', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Jose%20Alberto%20Vasquez%20Cruz%20Id%201012-1959-00023%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Intibucá', ''),
(146, 'José Edgardo Castro', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Jose%20Edgardo%20Castro%20Rodriguez%20Id%200501-1960-05293%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Cortés', ''),
(147, 'José Eduardo Coto', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Jose%20Eduardo%20Coto%20Barnica%20ID%200401-1950-00057%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Cortés', ''),
(148, 'José Luis Cruz Rivera', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Jose%20Luis%20CRuz%20Riveras%20Id%201501-1971-00531%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Cortés', ''),
(149, 'José Omar Rodríguez', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Jose%20Omar%20Rodriguez%20Interiano%20Id%201620-1952-00213%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Copán', ''),
(150, 'Mario Alexander Ayala', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Mario%20Alexander%20Ayala%20Turcios%20Id%200801-1973-10149%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Olancho', ''),
(151, 'Mario Hernán Sorto', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Mario_Hernan_Sorto_Deras_Id_0801-1996-09801_LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Francisco Morazán', ''),
(152, 'Miguel Angel Navarro', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Miguel%20Angel%20Navarro%20Cruz%20Id%201501-1974-01482%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Olancho', ''),
(153, 'Paula Crecencia Durán Soto', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Paula%20Crecencia%20Duran%20Soto%20Id%201807-1957-01237%20LIBRE1.jpg', b'1', 4, 'Diputada Propietaria por Yoro', ''),
(154, 'Pedro Rafael Alegría', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Pedro%20Rafael%20Alegria%20Moncada%20Id%200608-1952-00012%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Francisco Morazán', ''),
(155, 'Rasel Antonio Tomé Flores', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Rasel%20Antonio%20Tome%20Flores%20Id%201807-1972-00895%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Francisco Morazán', ''),
(156, 'Scherly Melissa Arriaga Gómez', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Sherly%20Melissa%20Arriaga%20Gomez%20Id%200501-1983-08981%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Cortés', ''),
(157, 'Tatiana Ninoska Canales Gonzáles', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Tatiana%20Ninoska%20Canales%20Gonzales%20Id%200501-1992-11714%20LIBRE1.jpg', b'1', 0, 'Diputada Propietaria por Colón. Suplente Wilmer Santos Barahona Antúnez', 'Lugar de Nacimiento: San Pedro Sula; Profesión Odontóloga; Comisiones Ordinarias Integradas: Relaciones Internacionales e Integración Regional (Secretaria); Email: canales_tatiana@yahoo.es'),
(158, 'Wilfredo Paz Zúniga', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Wilfredo%20Paz%20Zuniga%20Id%201626-1960-00349%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Colón. Suplente: Virgilio Iván Cálix Rosales', 'Profesión: Lic. en Ciencias Sociales; Comisiones Ordinarias Integradas: Educación (Miembro); Email: wilfredopazzuniga@gmail.com'),
(159, 'Yavhe Salvador Sabillón Cruz', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Yavhe%20Salvador%20Sabillon%20Cruz%20Id%200301-1972-00270%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Comayagua', ''),
(160, 'Yenny Yessenia Murillo Peña', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Yenny%20Yessenia%20Murillo%20Pe%C3%B1a%20Id%200502-1979-01856%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Cortés', ''),
(161, 'Yester Omar Muñoz', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Yester%20Omar%20Mu%C3%B1oz%20Id%201316-1971-00174%20LIBRE1.jpg', b'1', 4, 'Diputado Propietario por Lempira', ''),
(162, 'Dennys Antonio Sánchez Fernández', 'http://www.congresonacional.hn/images/stories/bancadas/libre/editadas/Dennys%20Antonio%20Sanchez%20Fernandez%20Id%201611-1962-00058.jpg', b'1', 4, 'Diputado Propietario por Santa Bárbara', ''),
(191, 'Despacho Presidencial ', ' ', b'0', 11, '', ''),
(192, 'Romeo Ucles ', ' ', b'0', 11, '', ''),
(193, 'No Aplica ', ' ', b'0', 11, '', ''),
(194, 'Secretaria de Seguridad ', ' ', b'0', 11, '', ''),
(195, 'Secretaria de Relaciones Exteriores', ' ', b'0', 11, '', ''),
(196, 'SERNA ', ' ', b'0', 11, '', ''),
(197, 'SAG ', ' ', b'0', 11, '', ''),
(199, 'Jose Perdomo ', ' ', b'0', 11, '', ''),
(200, 'Pedro Rigoberto Hernández Aguilar', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputado Suplente por Atlántida', ''),
(201, 'Luis Alonso Mendez Gutierrez', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg ', b'1', 4, 'Diputado Suplente por Atlántida', ''),
(202, 'Carlos Humberto Bonilla Aguiriano', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputado Suplente por Atlántida', ''),
(203, 'Luis Antonio Hernández Baquedano', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 0, 'Diputado Suplente por Atlántida', ''),
(204, 'Noel Fernando Ponce Montiel', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 4, 'Diputado Suplente por Atlántida', ''),
(205, 'José Antonio Mejía Bonilla', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 3, 'Diputado Suplente por Atlántida', ''),
(206, 'Nery Ramón Menjivar Aguilar', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputado Suplente por Atlántida', ''),
(207, 'Luis Enrique Fuentes Morales', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 0, 'Diputado Suplente por Atlántida', ''),
(208, 'Virgilio Iván Cálix Rosales', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 4, 'Diputado Suplente por Colón', ''),
(209, 'Hector Rolando Hernández Cruz', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputado Suplente por Colón', ''),
(210, 'Wuilmer Santos Barahona Antunez', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 4, 'Diputado Suplente por Colón', ''),
(211, 'Carlos Hernández Banegas Lazo', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 0, 'Diputado Suplente por Colón', ''),
(212, 'Carolina Rosa Rauscher Sierra', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputada Suplente por Comayagua', ''),
(213, 'José Ramón Mancía Izaguirre', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 4, 'Diputado Suplente por Comayagua', ''),
(214, 'Paola Castro Gómez', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputada Suplente por Comayagua', ''),
(215, 'Rebeca Angelina Ávila Baca', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 0, 'Diputada Suplente por Comayagua', ''),
(216, 'Martha Cristina Melgar Rodríguez', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 4, 'Diputada Suplente por Comayagua', ''),
(217, 'Santiago Ventura Muñoz', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputado Suplente por Comayagua', ''),
(218, 'Wilmer Santiago Martínez Cárcamo', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 3, 'Diputado Suplente por Comayagua', ''),
(219, 'Rafael Ramiro Arita Rodríguez', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputado Suplente por Copán', ''),
(220, 'Amilcar Paz Mejía', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputado Suplente por Copán', ''),
(221, 'Carlos René Fernández Rosa', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 0, 'Diputado Suplente por Copán', ''),
(222, 'Hilario López López', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 4, 'Diputado Suplente por Copán', ''),
(223, 'Gladis Suyapa Ramos Benítez', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputada Suplente por Copán', ''),
(224, 'Norma Aracely Aguilar Chacón', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 0, 'Diputada Suplente por Copán', ''),
(225, 'Marciano Alvarado', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 4, 'Diputado Suplente por Copán', ''),
(226, 'Erika Yesenia Posada Hernández', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 3, 'Diputada Suplente por Cortés', ''),
(227, 'Francisco José Díaz Jiménez', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 4, 'Diputado Suplente por Cortés', ''),
(228, 'Allan Wilmer Aguiriano', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputado Suplente por Cortés', ''),
(229, 'Ricardo Antonio Padilla Pineda', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 3, 'Diputado Suplente por Cortés', ''),
(230, 'Francisco Zepeda Euceda', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 4, 'Diputado Suplente por Cortés', ''),
(231, 'Marco Antonio Handal Cubero', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputado Suplente por Cortés', ''),
(232, 'Hermín Urquía Reyes', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 3, 'Diputado Suplente por Cortés', ''),
(233, 'Jorge Alberto Ramos Rivera', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 0, 'Diputado Suplente por Cortés', ''),
(234, 'Iris Herlinda Escoto', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 4, 'Diputado Suplente por Cortés', ''),
(235, 'Jorge Mauricio Gutierrez Collins', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputado Suplente por Cortés', ''),
(236, 'Maloy Aron Portillo García', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 3, 'Diputado Suplente por Cortés', ''),
(237, 'Walter Rolando Romero Romero', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 0, 'Diputado Suplente por Cortés', ''),
(238, 'Claudia Julissa Escobar Zepeda', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 4, 'Diputado Suplente por Cortés', ''),
(239, 'Pablo Roberto Munguía Lozano', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputado Suplente por Cortés', ''),
(240, 'José Isaac Medina Meléndez', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 3, 'Diputado Suplente por Cortés', ''),
(241, 'Fuad Yamal Ennabe Williams', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 0, 'Diputado Suplente por Cortés', ''),
(242, 'Doris Magdalena Deras Vidal', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 4, 'Diputada Suplente por Cortés', ''),
(243, 'María del Carmen Servellón Zúniga', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputada Suplente por Cortés', ''),
(244, 'Chris Kimberly Connor Flores', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 3, 'Diputada Suplente por Cortés', ''),
(245, 'José Alejandro Flores Zúniga', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 8, 'Diputado Suplente por Cortés', ''),
(246, 'Edgar Fabricio Reyes Cruz', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputado Suplente por Choluteca', ''),
(247, 'Hernán Enrique Vindel Mourra', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputado Suplente por Choluteca', ''),
(248, 'José Roni Umanzor', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 0, 'Diputado Suplente por Choluteca', ''),
(249, 'Bladimir de Jesús Bonilla Aguilera', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 4, 'Diputado Suplente por Choluteca', ''),
(250, 'Marvin Armando Rivera Pérez', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputado Suplente por Choluteca', ''),
(251, 'Ramón Enrique Sánchez Valladares', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 0, 'Diputado Suplente por Choluteca', ''),
(252, 'José Arsenio O´Hara Aguirre', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 4, 'Diputado Suplente por Choluteca', ''),
(253, 'Alexis Francisco Rivas Sánchez', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputado Suplente por Choluteca', ''),
(254, 'Ninoska Isabel Paz Matute', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 3, 'Diputada Suplente por Choluteca', ''),
(255, 'Gustavo Adolfo González Aguilar', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputado Suplente por El Paraíso', ''),
(256, 'Roberto Israel Zavala Zavala', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 4, 'Diputada Suplente por El Paraíso', ''),
(257, 'Miriam Haydee Cárcamo Izaguirre', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputada Suplente por El Paraíso', ''),
(258, 'Raúl Armando Moncada Mendoza', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 0, 'Diputado Suplente por El Paraíso', ''),
(259, 'Miltón Noel Videa Valladares', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 4, 'Diputado Suplente por El Paraíso', ''),
(260, 'Ana Bessy Chacón Chacón', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 2, 'Diputada Suplente por El Paraíso', ''),
(261, 'SERNAM ', NULL, b'1', 0, '', ''),
(262, 'Dr. Romeo Ucles (Asesor de Comisión Dictamina', NULL, b'1', NULL, '', ''),
(263, 'Alrededor de 60 diputados ', ' ', b'0', 11, '', ''),
(264, 'Juan Orlando Hernandez ', ' ', b'0', 11, '', ''),
(265, 'ENEE ', ' ', b'0', 11, '', ''),
(266, 'Comisión para la Defensa y Promoción de la Co', ' ', b'0', 11, '', ''),
(267, 'Representante de la CDPC ', ' ', b'0', 11, '', ''),
(268, 'SEFIN ', ' ', b'0', 11, '', ''),
(269, 'Secretaria de Relaciones Exteriores  ', ' ', b'0', 11, '', ''),
(270, 'Jorge Luis Cálix Espinal', 'http://www.bamarti-competicion.com/blog/wp-content/uploads/2010/11/Avatar.jpg', b'1', 4, 'Diputado Suplente por Francisco Morazán', '');

-- --------------------------------------------------------

--
-- Table structure for table `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `id_empresa` int(11) NOT NULL,
  `empresa_nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `empresa_nombre`) VALUES
(1, 'Cerveceria'),
(4, 'Asociados');

-- --------------------------------------------------------

--
-- Table structure for table `intervencion_usuario`
--

CREATE TABLE IF NOT EXISTS `intervencion_usuario` (
  `id_detalle_intervencion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `intervencion_usuario`
--

INSERT INTO `intervencion_usuario` (`id_detalle_intervencion`, `id_usuario`, `fecha`, `tipo`) VALUES
(174, 2, '2015-04-26', 'Intervencion'),
(173, 2, '2015-04-26', 'Intervencion'),
(132, 2, '2015-04-26', 'proyecto'),
(119, 2, '2015-04-20', 'proyecto'),
(172, 2, '2015-04-26', 'Intervencion'),
(164, 2, '2015-04-20', 'Intervencion'),
(131, 2, '2015-04-26', 'proyecto'),
(122, 2, '2015-04-23', 'proyecto'),
(175, 2, '2015-04-26', 'Intervencion'),
(133, 2, '2015-04-26', 'proyecto'),
(176, 2, '2015-04-26', 'Intervencion'),
(177, 2, '2015-04-26', 'Intervencion'),
(134, 2, '2015-04-26', 'proyecto'),
(134, 2, '2015-04-26', 'proyecto'),
(135, 2, '2015-04-26', 'proyecto'),
(136, 2, '2015-04-26', 'proyecto'),
(137, 2, '2015-05-03', 'proyecto'),
(137, 2, '2015-05-03', 'proyecto');

-- --------------------------------------------------------

--
-- Table structure for table `legislacion`
--

CREATE TABLE IF NOT EXISTS `legislacion` (
  `id_legislacion` int(11) NOT NULL,
  `legislacion_nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `legislacion`
--

INSERT INTO `legislacion` (`id_legislacion`, `legislacion_nombre`) VALUES
(1, 'Protocolo'),
(9, 'Proyecto de Ley'),
(10, 'Moción'),
(11, 'Manifestación'),
(12, 'Dictamen'),
(14, 'Iniciativa de Ley'),
(16, 'Otro'),
(17, 'hgf '),
(18, 'miraodr ');

-- --------------------------------------------------------

--
-- Table structure for table `palabra_clave`
--

CREATE TABLE IF NOT EXISTS `palabra_clave` (
  `id_palabra_clave` int(11) NOT NULL,
  `palabra_clave_a` varchar(45) DEFAULT NULL,
  `palabra_clave_b` varchar(45) DEFAULT NULL,
  `palabra_clave_c` varchar(45) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `palabra_clave`
--

INSERT INTO `palabra_clave` (`id_palabra_clave`, `palabra_clave_a`, `palabra_clave_b`, `palabra_clave_c`, `id_usuario`) VALUES
(1, 'alcohol', 'tabaco', '', NULL),
(2, 'policia', 'militar', 'honduras', NULL),
(3, '', '', 'banco', NULL),
(9, '', 'amor', '', 15),
(10, 'talento', '', 'barrio', 15),
(11, 'gobierno', '', '', 1),
(12, 'policia', 'militar', '', 2),
(13, 'honorarios', '', '', 1),
(14, 'hola', '', '', 5),
(16, 'Exoneracion', '', '', 6),
(17, 'Alcohol', '', '', 6),
(18, 'Exoneración', '', '', 6),
(19, 'Exoneración', 'Fiscal', '', 6),
(20, 'Amnistía', 'Tributaria', '', 6),
(21, 'Reforma', 'Código', 'Trabajo', 6),
(22, 'Reforma', 'Codigo', 'Trabajo', 6),
(23, 'Reforma', 'Código ', 'Trabajo', 9),
(24, 'Reforma', 'Codigo', 'Trabajo', 9),
(25, 'Amnistía', 'Tributaria', '', 9),
(26, 'Amnistia', 'Tributaria', '', 9),
(27, 'Ficohsa', '', '', 9),
(28, 'Banco', 'Ficohsa', '', 9),
(29, 'Alcohol', '', '', 9),
(30, 'cerveza', '', '', 9),
(31, 'Exoneración', '', '', 13),
(32, 'Exoneracion', '', '', 13),
(33, 'Impuesto', '', '', 13),
(34, 'Exención', '', '', 13),
(35, 'Exencion', '', '', 13),
(36, 'Contrato', 'Energía', '', 13),
(37, 'contrato', 'energia', '', 13),
(38, 'Amnistía', '', '', 13),
(39, 'amnistía', '', '', 13),
(40, 'Manuel', '', '', 2),
(41, 'Aprobado', '', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `partido`
--

CREATE TABLE IF NOT EXISTS `partido` (
  `id_partido` int(11) NOT NULL,
  `partido_nombre` varchar(45) DEFAULT NULL,
  `partido_imagen` varchar(400) NOT NULL,
  `descripcion_corta` varchar(200) NOT NULL,
  `descripcion_larga` varchar(600) NOT NULL,
  `activo` smallint(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partido`
--

INSERT INTO `partido` (`id_partido`, `partido_nombre`, `partido_imagen`, `descripcion_corta`, `descripcion_larga`, `activo`) VALUES
(0, 'Partido Liberal (PL)', 'http://www.eldiariodeolancho.com/wp-content/uploads/2012/12/49395fb49cc2f_Partido_Liberal_de_Honduras.png', ' ', ' ', 1),
(2, 'Partido Nacional (PN)', 'http://www.eldiariodeolancho.com/wp-content/uploads/2012/12/partidos-politicos-honduras_image006.jpg', ' ', ' ', 1),
(3, 'Partido Anticorrupción (PAC)', 'http://portalunico.iaip.gob.hn/img/partidoAnticorrupcion.jpg', ' ', ' ', 1),
(4, 'Partido Libertad y Refundación (LIBRE)', 'http://www.eldiariodeolancho.com/wp-content/uploads/2012/12/03.jpg', ' ', ' ', 1),
(6, 'Partido de Innovación y Unidad Social Demócra', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRRjouCUKQlSfNZgZB_ZKTbOcqDaTbw9p3xDVY4vgDgTvoeGN06-dnuXA', ' ', ' ', 1),
(7, 'Partido Demócrata Cristiano (DC)', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQiz5e6qPvMVu6i1REfrUDJAM1h2vZgbjB3VPCb2JqJ0s5zRw-uRs_VU2A', ' ', ' ', 1),
(8, 'Partido Unificación Democrática (UD)', 'http://2.bp.blogspot.com/-ilTP2hrFHwM/UkTHnRo03qI/AAAAAAAAAto/n6r5raWC3JI/s1600/LOGO+UD.jpg', ' ', ' ', 1),
(9, 'Independientes', '', ' ', ' ', 1),
(11, 'No Aplica', '', ' ', ' ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `proyectos`
--

CREATE TABLE IF NOT EXISTS `proyectos` (
  `id_proyecto` int(11) NOT NULL,
  `proyecto_nombre` varchar(8000) DEFAULT NULL,
  `proyecto_descripcion` varchar(8000) DEFAULT NULL,
  `id_legislacion` int(11) DEFAULT NULL,
  `id_proponente` int(11) DEFAULT NULL,
  `id_comision_dictaminadora` int(11) DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proyectos`
--

INSERT INTO `proyectos` (`id_proyecto`, `proyecto_nombre`, `proyecto_descripcion`, `id_legislacion`, `id_proponente`, `id_comision_dictaminadora`, `id_status`, `fecha_creacion`) VALUES
(28, 'Declaración del municipio de La Paz como Casc', 'Pretende que el municipio de La Paz se declare Casco Histórico. ', 12, 90, 43, 1, '2015-03-15 04:28:39'),
(29, 'Proyecto de Supervisión de Construcción de Ca', 'Modificacion del contrato No. 4 de supervision de construccion de la carretera entre Francisco Moraz', 12, 186, 22, 33, '2015-03-15 04:38:39'),
(30, 'Declaración Municipio de La Paz como Casco Hi', 'Pretende declarar a La Paz como casco histórico. ', 12, 90, 43, 1, '2015-03-15 04:44:54'),
(33, 'Declaración Municipio La Paz como Casco Histó', 'Pretende la declaración del municipio de La Paz como casco histórico. ', 12, 90, 43, 1, '2015-03-15 05:52:10'),
(36, 'Proyecto Supervisión de Construcción de Carre', 'Modificación de contrato No. 4 de supervisión de construcción de la carretera entre Francisco Morazá', 12, 186, 43, 33, '2015-03-15 06:40:39'),
(39, 'Declaración Municipio de La Paz como Casco Hi', 'Pretende declarar La Paz como Casco Histórico. ', 12, 90, 43, 1, '2015-03-15 06:57:09'),
(40, 'Proyecto Supervision de Construccion Carreter', 'Modificacion contrato 4 de supervision de construccion de la carretera entre Fco. Morazan y Catacama', 12, 186, 22, 33, '2015-03-15 06:59:40'),
(43, 'Condecoración Gerson Aguilar, Director Adjunt', 'Reconocimiento con medalla de oro y pergamino especial a Gerson Aguilera, Director Adjunto de la Dir', 12, 188, 1, 33, '2015-03-15 07:09:56'),
(44, 'Ley Marco del Sistema de Protección Social (P', 'Aprobado art. 1, se suspende discusión art. 2 ', 12, 189, 43, 33, '2015-03-15 07:12:24'),
(62, 'Ley de Pesca y Acuicultura ', 'Ley que regula lo concerniente a la pesca y acuicultura, tanto industrial como artesanal ', 12, 191, 20, 32, '2015-03-29 07:28:21'),
(63, 'Reforma Art. 273 Constitucion ', 'Reformar el art. 273 de la constitucion, adicionando a la Policia Militar como un comando mas de las Fuerzas Armadas ', 9, 61, 1, 4, '2015-03-29 07:45:42'),
(64, 'Manifestación de Dario Banegas  ', 'Manifiesta indignación por el Partido Liberal contra el Movimiento Hondureños Unidos por la Paz por falta de respeto en TV nacional contra Yuri Sabas y Yadira Bedaña  ', 11, 52, 43, 23, '2015-03-29 07:49:44'),
(65, 'Moción para que CN exhorte a autoridades a investigar organizacion Hondureños por la Paz  ', 'Mocion encaminada a que el CN exhorte al MP, Conatel, Conadeh y Secretaria de DDHH investiguen organización Hondureños por la Paz, por publicidad ofensiva en contra de diputados.  ', 10, 76, 43, 1, '2015-03-29 07:56:08'),
(66, 'Lectura Acta No. 55 ', 'Lectura de acta de sesión anterior ', 1, 193, 43, 23, '2015-04-04 03:24:21'),
(67, 'Condecoracion a Ban Ki Moon Secretario General ONU ', 'Otorgamiento de Placa de Oro al Secretario General de la ONU, Ban Ki Moon, durante su visita a Honduras. ', 14, 98, 45, 23, '2015-04-04 03:31:16'),
(68, 'Ascenso Policia Nacional ', 'Ascensos de policías enviado por la Secretaria de Seguridad ', 9, 194, 45, 4, '2015-04-04 03:34:50'),
(69, 'Convenio de Protección al Medio Ambiente ', 'Tiene por finalidad la protección y desarrollo del medio marino de la región del Gran Caribe ', 9, 195, 16, 4, '2015-04-04 03:36:55'),
(70, 'Contrato No.61-2014 ', 'Contrato entre la empresa Green Energy y la ENEE para distribución de energía electrica ', 9, 196, 10, 4, '2015-04-04 03:38:32'),
(71, 'Contrato No. 004-2013 ', 'Contrato de desarrollo agropecuario de riego en el valle Guayape, zonas 1, 2 y 3, entre la SAG y empresa privada (no identificada) por un monto de 11 millones de Lempiras ', 12, 197, 10, 33, '2015-04-04 03:40:58'),
(72, 'Declaración Casco Histórico Municipio La Paz ', 'Declaración del Municipio de La Paz como Casco Histórico. ', 12, 90, 31, 1, '2015-04-04 03:44:17'),
(73, 'Proyecto de Supervisión de Construcción de Carretera ', 'Modificación del contrato No. 4 de Supervisión de Construcción de la carretera entre Francisco Morazan y Catacamas, de Río Dulce a Limones con aprox. 67 km ', 12, 191, 45, 33, '2015-04-04 03:51:02'),
(74, 'Ley Especial contra el Delito de Lavado de Activos ', 'Tiene como finalidad establecer las medidas y acciones que se deben adoptar dentro del sistema de prevención, control y combate del lavado de activos y contra el financiamiento del terrorismo. ', 12, 98, 45, 1, '2015-04-04 03:55:02'),
(75, 'Proyecto Condecoracion Ban Ki Moon Secretario General ONU ', 'Condecoración con Placa de Oro a Secretario General de la ONU en su visita a Honduras ', 12, 98, 45, 1, '2015-04-04 04:13:51'),
(76, 'Ley de Comercio Electrónico  ', 'Tiene por objeto regular todo tipo de información en forma de mensajes de datos, utilizada en el contexto de actividades comerciales, con excepción de las obligaciones asumidas por el Estado en virtud de convenios o tratados y sin perjuicio de lo dispuesto en otras normas que tengan como finalidad la protección de salud y seguridad publica, incluida la salvaguarda de la defensa nacional, los intereses del consumidor, el régimen tributario. Complementa la normativa reguladora de Defensa de la Competencia. Revisión del dictamen hasta el art. 14.  ', 12, 113, 1, 32, '2015-04-04 04:02:56'),
(77, 'Proyecto de Reforma Decreto No. 17-2010 ', 'Reforma del decreto No. 17-2010, para la dispensa de menores de 25 anos de la tasa de L. 200.00, por tramites administrativos. ( constancia de antecedentes penales, articulo 49 párrafo final.) ', 12, 83, 45, 1, '2015-04-04 04:35:39'),
(78, 'Condecoración Gerson Aguilera, Director adjunto, Dirección Nacional de Inteligencia ', 'Reconocimiento con medalla de oro y pergamino especial a Gerson Aguilera ', 12, 194, 45, 33, '2015-04-04 04:44:55'),
(79, 'Reforma Presupuesto Nacional 2015 ', 'Incorporar asignación presupuestaria al Instituto de Minas y Geologia. ', 9, 114, 6, 4, '2015-04-04 05:15:23'),
(80, 'Manifestación de Esdras Amado Lopez ', 'Denuncia al irrespeto del derecho a la libre expresión por declaraciones del presidente JOH contra los opositores de la elevación a rango constitucional a la PMOP. ', 11, 139, 43, 23, '2015-04-04 05:18:58'),
(81, 'Lectura Acta No. 56  ', 'Lectura del Acta sesión anterior  ', 1, 193, 43, 23, '2015-04-04 04:26:59'),
(82, 'Ley Marco del Sistema de Protección Social ( Para una Vida Mejor)  ', 'Ley marco que regula la Seguridad Social en el país.  ', 12, 191, 45, 32, '2015-04-04 04:51:41'),
(83, 'Condecoración Ban Ki Moon Secretario General ONU  ', 'Acto de entrega de la Placa de Oro ', 1, 193, 43, 23, '2015-04-04 05:50:51'),
(84, 'Lectura Acta No. 57  ', 'Lectura  acta sesión anterior  ', 1, 193, 43, 23, '2015-04-04 05:37:47'),
(85, 'Modificación de contrato de construcción ', 'Modificación del contrato de construcción del puente sobre río Guayape y puente sobre río Juticalpa; Para la inclusión de 240 m de construcción en el primero y 60 m de construcción en la segunda, Ampliando plazo de ejecución en 7 meses, entre la empresa CERMACO y el estado. ', 12, 198, 45, 1, '2015-04-04 09:04:10'),
(86, 'Acto de Prueba ', 'Prueba ', 1, 193, 43, 23, '2015-04-05 10:10:27'),
(87, 'Ley de Promoción para el Desarrollo de Pequeñosn y Medianos Embalses para la Captació de Agua para Consumo Humano ', 'Tiene como objetivo establecer los principios y  regulaciones aplicables para el aprovechamiento del Recurso hídrico a través de pequeños y medianos embalses, con fines de abastecimiento de agua para consumo humano y la generación de energía, en comunidades rurales y semiurbanas a nivel nacional. ', 12, 108, 45, 33, '2015-04-05 10:25:44'),
(88, 'Contrato para la Generacion de Energia  entre SERNAM y R4E, S.A. de C.V. ', 'Contrato de operación  para la generación de potencia energética entre SERNAM y la empresa R4e S.A. de C.V, en la localidad de Puerto Cortes, departamento de Cortes.  ', 12, 261, 10, 1, '2015-04-05 10:29:25'),
(89, 'Contrato 45-2011 para la Generación de Energía entre SERNAM e INVERSA ', 'Contrato  de operación No. 045-2011 para la generación y potenciación energética entre SERNAM e Inversa. Para operar el proyecto hidroeléctrico Los Churune ubicado en el Municipio de San Jerónimo, Aldea Potrero Sucio, en el Departamento de Comayagua.   ', 12, 261, 10, 1, '2015-04-05 10:32:28'),
(90, 'Contrato No. 268-2014 para Generacion de Energia entre la ENEE y Energy Hstar, S.A. (EHSSA) ', 'Contrato No. 268-2014 entre la ENEE y ENERGY HSTAR, S.A. (EHSSA),  para las instalaciones de la Planta Hidroeléctrica Loma Larga, ubicado en el Municipio de Yoro, Departamento de Yoro. ', 12, 261, 10, 33, '2015-04-05 10:37:09'),
(91, 'Contrato No. 183-2014 para Generación de Energía. ', 'Contrato para la generación de energía eléctrica. ', 12, 261, 10, 33, '2015-04-05 10:39:53'),
(92, 'Contrato No. 184-2014 para Generación de Energía entre la ENEE e Hidroeléctrica El Naranjito ', 'Contrato No. 184-2014 para la generación de energía eléctrica con fuentes renovables entre ENEE y la sociedad mercantil hidroeléctrica El Naranjito. ', 12, 261, 10, 33, '2015-04-05 10:42:25'),
(94, 'Practica de Referéndum Sobre Rango Constitucional de PMOP ', 'Petición para la aplicación de referéndum basado en el Decreto base No.283-2013, para la instalación de una consulta ciudadana a fin de decidir si elevar o no a rango constitucional la policía militar. ', 9, 263, 1, 4, '2015-04-05 01:25:11'),
(95, 'Conferencia de Prensa ', 'Conferencia de prensa para informar acerca de la solicitud del referéndum para consultar sobre el rango constitucional de la PMOP ', 1, 193, 43, 23, '2015-04-05 01:30:17'),
(96, 'Reforma Constitucional Arts. 308-311, 314, 315 y 317  ', 'Proyecto que tiene como finalidad reformar el procedimiento para la integracion de la Corte Suprema de Justicia.  ', 9, 47, 1, 4, '2015-04-05 10:19:46'),
(98, 'Ratificación Decreto 283-2013 Elevación Rango Constitucional Policia Militar del Orden Publico ', 'Pretende la ratificación del decreto 283-2013 aprobado en la legislatura anterior, el cual reforma los arts. 274 y 329 de la Constitución de la República para dar rango constitucional a la PMOP ', 12, 191, 1, 2, '2015-04-05 01:37:39'),
(99, 'Lectura Acta No. 58 ', 'Lectura de acta de sesión anterior. ', 1, 193, 43, 23, '2015-04-05 01:47:21'),
(100, 'Condecoración a Takashi Uto, Embajador de Japón. ', 'Condecoración a Takashi Uto, Embajador de Japón. ', 9, 105, 43, 1, '2015-04-05 01:54:06'),
(101, 'Contrato No. 61-2014 Generación Energía Entre ENEE y COLOLACA ', 'Contrato para la generación de energía en el departamento de Lempira, suscrito entre la ENEE y la empresa COLOLACA ', 12, 265, 10, 33, '2015-04-05 01:56:29'),
(104, 'Contrato de Desarrollo Agropecuario No. 4-2013 ', 'Contrato para el desarrollo agropecuario de riego en Guayape ', 12, 197, 20, 33, '2015-04-05 02:03:38'),
(105, 'Condecoración Takashi Uto, Embajador de Japón. ', 'Condecoración al embajador japones Takashi Uto, en agradecimiento por la fiel ayuda y buenas relaciones entre Honduras y Japón. ', 1, 193, 43, 23, '2015-04-05 02:05:40'),
(107, 'Ley de Pesca y Acuicultura', 'Ley que regula la pesca y acuicultura artesanal e industrial en el país.  ', 12, 191, 20, 32, '2015-04-05 00:00:00'),
(108, 'Reforma Ley para la Defensa y Promoción de la Competencia ', 'Adición artículo 51 A, B,C,D, y E, 63 A,B y C. Contiene un programa de clemencia a aquellas empresas colaboradoras en el proceso de fundación de casos,con la aportación de evidencias a la comisión, y segundo la auto sostenibilidad de la comisión para desempeñar sus funciones. ', 12, NULL, 45, 1, '2015-04-05 06:10:58'),
(109, 'Autorización a la ENEE para Compra de Energía Electrica ', 'Tiene como objetivo posibilitar a la ENEE la contratación de energía eléctrica con una empresa tercera (General Electric), mediante los institutos de previsión social (2% de sus ingresos destinados para este fin). ', 9, 268, 45, 4, '2015-04-05 06:32:00'),
(110, 'Lectura Correspondencia ', 'Condecoracion a embajador de Chile en Honduras ', 1, 269, 43, 23, '2015-04-05 07:07:16'),
(111, 'Exoneración de Impuestos de Importación para Vehículos de Instituciones Publicas Entregados en Modo de Custodia ', 'Exonerar del pago de todo tipo de impuestos de importación incluyendo matricula anual a todos los vehículos de lujos nacionales o nacionalizados de instituciones descentralizadas y centralizadas que han sido entregados en modo de custodia para ser destinados a subasta o venta publica. ', 12, 268, 18, 1, '2015-04-05 07:36:04'),
(112, 'Lectura Acta No. 1 ', 'Lectura de acta de sesión anterior. ', 1, 193, 43, 23, '2015-04-05 07:47:02'),
(114, 'Ley de Promoción para el Desarrollo de Pequeños y Medianos Embalses para la Captación de Agua para Consumo Humano   ', 'Tiene como objetivo establecer los principios y  regulaciones aplicables para el aprovechamiento del Recurso Hídrico a través de pequeños y medianos embalses con fines de abastecimiento de agua para consumo humano y la generación de energía, en comunidades rurales y semi urbanas a nivel nacional.  ', 12, 108, 45, 32, '2015-04-05 07:13:36'),
(115, 'Reforma Ley Especial Sobre el VIH SIDA ', 'Reforma y adición de artículos. reforma: art.1 , 2, 2ª, 4, 6, 7, 8, 8ª, 9, 10, 10ª, 10b, 11, 12, 14, 16, 17, 19, 22, 22ª, 23, 26, 29, 30, 32, 37, 39, 40, 41, 47, 48, 49, 51, 52, 53, 54, 55, 57, 59, 60, 61, 63, 63ª, 64, 65, 69, 70, 71, 75, 77, 78, 79, 81, 84ª. Adición: art. 2, 3, 4, 5. Tiene como objeto reafirmar derechos de las personas con el virus y funciones de la comisión protectora. ', 12, 155, 11, 33, '2015-04-05 08:12:53'),
(116, 'Reforma Ley de Mercado de Valores y Homologación con Ley del Sistema Financiero ', 'Reforma artículo 143 de la ley de mercado de valores (D 8-2001), y homologar con artículo 48 numeral 4 de la ley del sistema financiero. Tiene como objeto que las personas socias no podrán tener más del 25% de acciones, quienes tengan más de esta cifra será por autorización y no más de un depósito. ', 12, 56, 6, 33, '2015-04-05 08:21:11'),
(117, 'Contrato para la Generación de Energía Sociedad de Mecanismos de Energía Renovable S.A. de C.V. ', 'Contrato para la generación de energía a suscribirse entre SERNAM y Sociedad de Mecanismos de Energía Renovable S.A. de C.V., Proyecto Solar del Sur, en Choluteca, con el objeto de generar, transmitir y comercializar energía renovable ', 12, 261, 10, 1, '2015-04-19 07:21:01'),
(118, 'Contrato para la Generación de energía entre SERNAM y ENERSA, Proyecto Helios ', 'Contrato para la generación de energía en Choluteca, Proyecto Helios, con el objeto de generar, transmitir y comercializar energía renovable. ', 12, 261, 10, 1, '2015-04-19 07:23:37'),
(119, 'Exoneración de Multas de Vehículos ', 'Establecer amnistía en el pago de multas a vehículos en su matricula única de pago ', 9, 51, 45, 4, '2015-04-19 07:28:48'),
(122, 'prueba x ', 'prueba y ', 12, 65, 46, 23, '2015-04-23 11:43:31'),
(129, 'policia militar  ', 'test  ', 12, 4, 1, 23, '2015-04-26 01:23:38'),
(130, 'prueba police  ', 'policia militar  ', 12, 65, 1, 23, '2015-04-26 01:27:57'),
(131, 'n policia  ', 'policia militar  ', 12, 45, 1, 23, '2015-04-26 01:38:08'),
(132, 'nueva proyecto ', 'policia militar ', 12, 84, 18, 23, '2015-04-26 10:19:00'),
(133, 'bien  ', 'policia militar ', 12, 128, 18, 23, '2015-04-26 10:50:21'),
(134, 'refajo ', 'policia militar ', 10, 65, 1, 23, '2015-04-26 11:03:58'),
(135, 'nombre acto 1 ', 'policia militar ', 10, 154, 1, 23, '2015-04-26 11:09:00'),
(136, 'prueba policia ', 'deacripcion larga ', 10, 65, 1, 23, '2015-04-26 11:18:27'),
(137, 'moraodr ', 'policia militar ', 18, 65, 1, 23, '2015-05-03 05:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `prueba`
--

CREATE TABLE IF NOT EXISTS `prueba` (
  `id` varchar(200) NOT NULL,
  `sesion` varchar(200) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `tipoacto` varchar(200) NOT NULL,
  `debate` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `comision` varchar(200) NOT NULL,
  `partido` varchar(200) NOT NULL,
  `proponente` varchar(200) NOT NULL,
  `fecha` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prueba`
--

INSERT INTO `prueba` (`id`, `sesion`, `nombre`, `tipoacto`, `debate`, `status`, `comision`, `partido`, `proponente`, `fecha`) VALUES
('0', '2015319-1338540471', 'moraodr ', 'miraodr ', 'No Aplica ', 'No Aplica ', 'Legislación y Asuntos Constitucionales ', 'Partido Liberal (PL) ', 'Manuel Iván Fiallos Rodas ', '2015-05-03 05:55:20 PM ');

-- --------------------------------------------------------

--
-- Table structure for table `pruebaintervencion`
--

CREATE TABLE IF NOT EXISTS `pruebaintervencion` (
  `id` varchar(200) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `debate` varchar(200) NOT NULL,
  `diputado` varchar(200) NOT NULL,
  `intervencion` varchar(200) NOT NULL,
  `fecha` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pruebaintervencion`
--

INSERT INTO `pruebaintervencion` (`id`, `nombre`, `debate`, `diputado`, `intervencion`, `fecha`) VALUES
('0', 'primera ', 'Debate1 ', 'Clara ', 'propuesta ', '2015-02-15 03:32:10 PM '),
('0', 'bolson ', '', 'Alfonso Malagon ', 'propuesta indecente  ', '2015-02-15 04:12:11 PM '),
('1', 'aqua  ', 'Debate1  ', 'Clara  ', 'cangrejo   ', '2015-02-15 04:15:43 PM  '),
('2', 'aqua  ', 'Debate1  ', 'Alfonso Malagon  ', 'almeja   ', '2015-02-15 04:15:57 PM  '),
('3', 'Pelicula  ', 'Debate2  ', 'Clara  ', 'doce añitos. de esclavitud   ', '2015-02-15 04:20:53 PM  '),
('4', 'Pelicula  ', 'Debate2  ', 'yyy  ', 'yyyy  ', '2015-02-15 04:24:22 PM  '),
('0', '', '', '', '', '2015-02-15 10:57:31 PM '),
('0', '', '', 'Clara ', 'uuuhh ', '2015-02-15 10:57:43 PM '),
('0', '', 'Debate2 ', 'Alfonso Malagon ', 'Hiddink d f f Gogh:jejejeje d d f djdbdjdndjdjd djdbdjdndjdjd djdbdjdndjdjd djdbdjdndjdjd claro  fndndnfn ', '2015-02-16 09:33:15 PM '),
('0', 'patio legal ', 'Debate2 ', 'Clara ', 'nuevo patio legal ', '2015-02-22 01:02:18 PM '),
('0', 'pario ', 'Debate2 ', 'Clara ', 'debatinl ', '2015-02-22 01:11:45 PM '),
('0', 'pario  ', 'Debate2 ', 'Clara ', 'a ver que opina ', '2015-02-22 01:22:04 PM '),
('0', 'pario  ', 'Debate2 ', '', 'otra humilde opinión  ', '2015-02-22 01:22:36 PM '),
('0', 'pario  ', 'Debate2 ', '', '', '2015-02-22 01:28:57 PM '),
('0', 'pario  ', 'Debate2 ', '', '', '2015-02-22 01:30:10 PM ');

-- --------------------------------------------------------

--
-- Table structure for table `reporte`
--

CREATE TABLE IF NOT EXISTS `reporte` (
  `USUARIO` varchar(600) NOT NULL,
  `SESION` varchar(600) NOT NULL,
  `LEGISLACION` varchar(600) NOT NULL,
  `NOMBRE` varchar(600) NOT NULL,
  `PROPONENTE` varchar(600) NOT NULL,
  `PARTIDO` varchar(600) NOT NULL,
  `STATUS` varchar(600) NOT NULL,
  `DEBATE` varchar(600) NOT NULL,
  `COMISION` varchar(600) NOT NULL,
  `FECHA` varchar(600) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reporteOriginal`
--

CREATE TABLE IF NOT EXISTS `reporteOriginal` (
  `USUARIO` varchar(600) NOT NULL,
  `sesion_nombre` varchar(600) NOT NULL,
  `legislacion_nombre` varchar(600) NOT NULL,
  `proyecto_nombre` varchar(600) NOT NULL,
  `diputado_nombre` varchar(600) NOT NULL,
  `partido_nombre` varchar(600) NOT NULL,
  `status_nombre` varchar(600) NOT NULL,
  `tipo_debate_nombre` varchar(600) NOT NULL,
  `comision_dictaminadora_nombre` varchar(600) NOT NULL,
  `FECHA` varchar(600) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reporteProyectos`
--

CREATE TABLE IF NOT EXISTS `reporteProyectos` (
  `usuario` varchar(600) NOT NULL,
  `sesion_nombre` varchar(600) NOT NULL,
  `legislacion_nombre` varchar(600) NOT NULL,
  `proyecto_nombre` varchar(600) NOT NULL,
  `diputado_nombre` varchar(600) NOT NULL,
  `partido_nombre` varchar(600) NOT NULL,
  `status_nombre` varchar(600) NOT NULL,
  `tipo_debate_nombre` varchar(600) NOT NULL,
  `comision_dictaminadora_nombre` varchar(600) NOT NULL,
  `fecha` varchar(600) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reporteProyectos`
--

INSERT INTO `reporteProyectos` (`usuario`, `sesion_nombre`, `legislacion_nombre`, `proyecto_nombre`, `diputado_nombre`, `partido_nombre`, `status_nombre`, `tipo_debate_nombre`, `comision_dictaminadora_nombre`, `fecha`) VALUES
('jonh', '201502-1568249146', 'chiste  ', 'vecindad  ', 'chavo  ', 'No definido', 'actibo  ', 'priemro  ', 'patronato  ', '2015-02-22 06:09:34'),
('jonh', '3455', 'mi tipo ', 'las vegas ', 'mi diputado ', 'No definido', 'mi status ', 'mi debate ', 'mi comision ', '2015-02-22 04:20:22'),
('jonh', '3455', 'Manifestación', 'nueva ciudad ', 'tatiana ', 'No definido', 'ok ', 'doble ', 'pwriferica ', '2015-02-22 03:53:42'),
('jonh', '201502-1568249146', 'Manifestación', 'plaga ', 'felicia ', 'No definido', 'Rotundo No', 'Debate2', 'Comision 1', '2015-02-22 03:40:59'),
('jonh', '3455', 'Manifestación', 'gakin ', 'rodolfo ', 'No definido', 'prueba', 'Debate1', 'xom ', '2015-02-22 02:44:29'),
('jonh', '3455', 'Manifestación', 'pario ', 'Clara', 'Democrata', 'Rotundo No', 'Debate2', 'Comision 1', '2015-02-22 01:20:36'),
('jonh', '20150125', 'Proyecto old', 'Reforma N', 'Leonel', 'Republicano', 'Aprobadod', 'Debate 7', 'Comision 6', '2015-02-16 19:07:35'),
('jonh', '20150125', 'nueva', 'Paseo legislativo', 'Clara', 'Democrata', 'Rotundo No', 'Debate 6', 'Comision 6', '2015-02-10 19:07:04'),
('jonh', '20150125', 'Manifestación', 'Pelicula', 'Alfonso Malagon', 'Democrata', 'Aprobadod', 'Debate2', 'Comision 5', '2015-02-17 17:32:46'),
('jonh', '20150125', 'Manifestación', 'Prueba', 'Alfonso Malagon', 'Democrata', 'Rechazado', 'Debate1', 'Comision 1', '2015-02-17 17:32:22'),
('jonh', '20150125', 'Manifestación', 'Prueba Militar', 'Marisol', 'Republicano', 'Rotundo No', 'Debate1', 'Comision 1', '2013-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `reporteProyectosInter`
--

CREATE TABLE IF NOT EXISTS `reporteProyectosInter` (
  `id_sesion_proyecto` int(4) NOT NULL,
  `descripcion` varchar(10000) NOT NULL,
  `usuario` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reporteProyectosInter`
--

INSERT INTO `reporteProyectosInter` (`id_sesion_proyecto`, `descripcion`, `usuario`) VALUES
(113, '', 'all'),
(112, '', 'all'),
(109, '', 'all'),
(3, '<b>José Tomás Zambrano Molina</b> : Que se agregue a la moción que no sea una simple nota, sino que la comisión especial de energía, mas los diputados de los departamentos afectados por la no aplicación de esta disposición con la gerencia de la ENEE. ', 'd'),
(188, '', 'malcolm'),
(186, '', 'malcolm'),
(185, '', 'malcolm'),
(184, '', 'malcolm'),
(183, '', 'malcolm'),
(179, '', 'malcolm'),
(178, '', 'malcolm'),
(177, '', 'malcolm'),
(173, '', 'malcolm'),
(170, '', 'malcolm'),
(169, '', 'malcolm'),
(168, '', 'malcolm'),
(166, '', 'malcolm'),
(159, '', 'malcolm'),
(153, '', 'malcolm'),
(147, '', 'malcolm'),
(130, '', 'malcolm'),
(127, '', 'malcolm'),
(125, '', 'malcolm'),
(124, '', 'malcolm'),
(123, '', 'malcolm'),
(121, '', 'malcolm'),
(120, '', 'malcolm'),
(116, '', 'malcolm'),
(113, '', 'malcolm'),
(112, '', 'malcolm'),
(109, '', 'malcolm'),
(104, '', 'malcolm'),
(103, '', 'malcolm'),
(102, '', 'malcolm'),
(100, '', 'malcolm'),
(99, '', 'malcolm'),
(98, '', 'malcolm'),
(96, '', 'malcolm'),
(95, '', 'malcolm'),
(94, '', 'malcolm'),
(93, '', 'malcolm'),
(91, '', 'malcolm'),
(90, '', 'malcolm'),
(89, '', 'malcolm'),
(88, '', 'malcolm'),
(87, '', 'malcolm'),
(86, '', 'malcolm'),
(83, '', 'malcolm'),
(82, '', 'malcolm'),
(79, '', 'malcolm'),
(78, '', 'malcolm'),
(77, '', 'malcolm'),
(76, '', 'malcolm'),
(72, '', 'malcolm'),
(71, '', 'malcolm'),
(195, '<b>Manuel Zelaya Rosales</b> : mirador policia ', 'malcolm'),
(191, '<b>Fredy Renán Najera Hernández</b> : policia militar nacional <br><b>Gerardo Tulio Martínez Pineda</b> : guiaba policia militar ', 'malcolm'),
(167, '<b>Manuel Zelaya Rosales</b> : policia militar <br><b>Manuel Zelaya Rosales</b> : policia militar ', 'malcolm'),
(190, '<b>Hugo Ricardo Hernández</b> : proyecto 1 policia militar  <br><b>Anibal Javier Cálix</b> : intervención 2 policia militar <br><b>Carlos Alfredo Lara Watson</b> : intervención 3 policia militar ', 'malcolm'),
(189, '<b>José Oswaldo Ramos Soto</b> : nueva policia militar <br><b>Ana Joselina Fortín</b> : vieja policia militar ', 'malcolm'),
(187, '<b>Lisandro Mauricio Arias Aquino</b> : policia militar  ', 'malcolm'),
(176, '<b>César Enrique Hendal Fernández</b> : hgf <br><b>Walter Alex Banegas</b> : hgfc ', 'malcolm'),
(174, '<b>Manuel Zelaya Rosales</b> : policia militar <br><b>Diana Patricia Urbina Soto</b> : pturba ', 'malcolm'),
(175, '<b>Manuel Zelaya Rosales</b> : policia <br><b>Manuel Zelaya Rosales</b> : prueba a ', 'malcolm'),
(171, '<b>Manuel Zelaya Rosales</b> : policia militar <br><b>Manuel Zelaya Rosales</b> : alacena', 'malcolm'),
(172, '<b>Manuel Zelaya Rosales</b> : prueba a  ', 'malcolm'),
(32, '<b>Manuel Iván Fiallos Rodas</b> : test ', 'malcolm'),
(39, '<b>Gabriela Núñez Ennabe</b> : Consulto como queda la figura del intermediario en el art. 4, sobre definiciones. <br><b>José Eduardo Coto</b> : Pregunto si el termino es facturación. <br><b>Pedro Rafael Alegría</b> : Pidió explicación de la relación del Estado y empresas, ya que en Honduras operan transnacionales de servicios de internet y debe existir garantía que el Estado mantendrá el control y seguridad en el manejo de estas transacciones. <br><b>Rasel Antonio Tomé Flores</b> : Como miembro de la Comisión sugirió que se hubiera llevado la técnica legislativa leyendo cada concepto por separado. <br><b>Luis Rolando Redondo</b> : Planteamiento para que mensaje de datos se entienda como actividad comercial, y el intercambio de datos aglomerando 3 conceptos en uno solo.\n\nAl respecto Rasel Tome aclaro que estan separadas en varios numerales. ', 'malcolm'),
(157, '<b>Rasel Antonio Tomé Flores</b> : Cuestiona el por que exonerar de impuestos al adquirente del vehículo si el fin es recaudar mayor ingreso. <br><b>Gabriela Núñez Ennabe</b> : Le aclara a Rassel Tome que la razón para la exoneración es la falta de cumplimiento del Estado con sus obligaciones tributarias, sobre estos vehículos que fueron donados e inventariados al Estado, para posteriores subastas. <br><b>Mario Alonso Pérez López</b> : Solicita dispensa de debates.\n\nMoción aprobada. ', 'malcolm'),
(158, '<b>Jari Dixon Herrera</b> : Se pronuncia en contra ya que no se esta dando el tiempo prometido el día anterior para discutir este proyecto en 3 debates. Lamenta que cuestiones con interés personal se toman como emergencia y proyectos con real interés de la población están engavetados. <br><b>María Aracely Leiva Peña</b> : Se pronuncio a favor del proyecto. <br><b>Gabriela Núñez Ennabe</b> : Se pronuncio a favor del proyecto. <br><b>Román Villeda Aguilar</b> : Se pronuncio a favor del proyecto. <br><b>Augusto Domingo Cruz Asencio</b> : Se pronuncio en contra del proyecto. <br><b>Edwin Roberto Pavón León</b> : Se pronuncio a favor del proyecto. <br><b>Jaime Enrique Villegas</b> : Se pronuncio a favor del proyecto. ', 'malcolm'),
(156, '<b>Nery Orlando Reyes Hernández</b> : Solicita dispensa de debates.\n\nMoción aprobada. ', 'malcolm'),
(122, '<b>Yury Cristhian Sabas Gutierrez</b> : solicitó dispensa de debates.\n\nMoción aprobada.  <br><b>César Humberto Agurcia López</b> : Se pronunció a favor de los ascensos, pero como bancada no están de acuerdo de apoyar personas que han tenido denuncias por violación de derechos humanos, también agregó se debe reformar el proceso de aprobación de ascensos.  <br><b>Wilfredo Paz Zúniga</b> : Se sumó a la petición de César Agurcia.  <br><b>Rasel Antonio Tomé Flores</b> : También se sumó a la petición de César Agurcia.  <br><b>Delia Beatríz Valle</b> : Se sumó a la petición de César Agurcia.  <br><b>Luis Rolando Redondo</b> : En contra del proceso por falta de transparencia en el mismo ya que no se brindó tiempo a las bancadas para razonar su voto.\n\nSe le retiró la palabra por estar fuera de orden.  ', 'malcolm'),
(142, '<b>Pedro Rafael Alegría</b> : Consulta por sanciones a empresas que tienen exenciones fiscales a sus impuestos amparados en mala interpretación de la ley. <br><b>Carlos Alfredo Lara Watson</b> : Aclara que estas reformas a la Ley para la Defensa y Promoción de la Competencia afectaran a la Comisión para la Defensa y Promoción de la Competencia y no la competitividad en si. <br><b>Rasel Antonio Tomé Flores</b> : Aclara que la ley viene a dar medios a la CDPC para que cumpla sus funciones que a la fecha aun no ha podido realizar a plenitud. <br><b>Gabriela Núñez Ennabe</b> : Recomienda que el 100 % de la recaudación no sea destinado a la CDPC, sino solo el % definido anualmente por la SEFIN mediante el Presupuesto General.\n\nMoción aprobada. <br><b>Rasel Antonio Tomé Flores</b> : Pide aclaración sobre el monto que sera trasladado luego de ser aprobada la sugerencia de la diputada Gabriela Nuñez, ya que no sera trasladado el 100 %. <br><b>Representante de la CDPC </b> : Manifiesta que la CDPC es un ente autónomo y que por tanto las recaudaciones no deberían ser administradas por la SEFIN. Actualmente la CDPC se ha visto limitada por el bajo presupuesto asignado a la institución. ', 'malcolm'),
(107, '<b>Juan Orlando Hernandez </b> : Llevo solicitud de plebiscito acerca de la elevación a rango constitucional de la PMOP.\n\nNo quedo presentada al pleno, se despejara en la nueva legislatura. ', 'malcolm'),
(108, '<b>Carlos Roberto Ledezma Casco</b> : Solicito dispensa de debates. ', 'malcolm'),
(106, '<b>Delia Beatríz Valle</b> : Se manifiesta en contra de la ratificación, representando además a la bancada de LIBRE. Considera que no se puede ratificar algo a lo cual se le quiere hacer cambios. <br><b>Marco Antonio Andino</b> : Se manifiesta en contra de la ratificación, representando además a una parte de la bancada del Partido Liberal. <br><b>Augusto Domingo Cruz Asencio</b> : Se manifiesta a favor de la ratificación representando además la bancada del Partido Demócrata Cristiano. <br><b>Rasel Antonio Tomé Flores</b> : Se manifiesta en contra de la elevación a rango constitucional pero no de la PMOP en si. <br><b>Fatima Patricia Mena</b> : Se proclama en contra de la ratificación representando además a la bancada del PAC. <br><b>Edwin Roberto Pavón León</b> : Se manifiesta a favor de la ratificación. <br><b>Doris Gutiérrez</b> : Manifiesta que JOH tiene una agenda secreta y desea otorgarle mas atribuciones al Presidente de la República en las ZEDES, por tanto se manifiesta en contra de la ratificación. <br><b>Oscar Álvarez</b> : Se manifiesta a favor de la ratificación representando además a la bancada del Partido Nacional. ', 'malcolm'),
(101, '<b>Cristhian Reniery Santamaría</b> : Opina que debe aclararse la definición "afro descendientes" y su aplicación como comunidad garifuna.\n\nMoción aprobada. <br><b>Pedro Rafael Alegría</b> : Pregunta cual es la definición del termino "derecho preferente". <br><b>Milton Jesús Puerto Oseguera</b> : Sugirió incluir la definición de "Emergencia Pesquera".\n\nMoción aprobada. <br><b>José Oswaldo Ramos Soto</b> : Sugirió a la comisión dictaminadora que se mejore condiciones de semántica.\n\nMoción aprobada. <br><b>Rasel Antonio Tomé Flores</b> : Solicita aclaración sobre definición del termino "procedimiento científico y técnico".\n <br><b>Edwin Roberto Pavón León</b> : Se manifestó a favor del termino "procedimiento científico y técnico" explicado por el Dr. Romeo Ucles. <br><b>Augusto Domingo Cruz Asencio</b> : Se manifestó a favor del termino "procedimiento científico y técnico" explicado por el Dr. Romeo Ucles. <br><b>José Oswaldo Ramos Soto</b> : Sugirió se incorpore en la definición "procedimiento científico y técnico" la frase "realizado por el ser humano".\n\nMoción aprobada.\n\nTambién sugirió que debería decir "extraer" en vez de "separar".\n\nMoción aprobada. <br><b>Edwin Roberto Pavón León</b> : Sugirió incorporar termino "pesca comercial".\n\nMoción aprobada. <br><b>Milton Jesús Puerto Oseguera</b> : Sugirió agregar conceptos de "pesca científica" y "pesca en alta mar".\n\nMoción aprobada. <br><b>José Oswaldo Ramos Soto</b> : Sugirió cambiar el termino "actividad pesquera" por "en protección de la fauna".\n\nMoción aprobada. \n ', 'malcolm'),
(92, '<b>Esdras Amado López</b> : Sugirió que debe incluirse moción presentada por el en sesión anterior.\n  <br><b>Lena Gutierrez</b> : Aclaro a Esdras Lopez que en la sesión anterior el presento una manifestación y no una moción y que por esa razón no aparece en el acta. Le sugirió que la vuelva a presentar como moción.  <br><b>Rasel Antonio Tomé Flores</b> : Opina que en el decreto aprobado en la sesión anterior sobre la dispensa de la tasa por tramites administrativos a menores de 25 años, que se agregue la palabra "reformar".  <br><b>Lena Gutierrez</b> : Le aclaro a Rassel Tome que la palabra reformar ya esta incluida.  ', 'malcolm'),
(97, '<b>Mario Alexander Ayala</b> : Solicito se suspenda la discusión de este contrato. <br><b>Lena Gutierrez</b> : Le manifestó a Mario Ayala que ya era el tercer debate por lo que su solicitud estaba fuera de lugar. ', 'malcolm'),
(75, '<b>Carlos Roberto Ledezma Casco</b> : Solicito dispensa de debates. ', 'malcolm'),
(80, '<b>Gladis Aurora López Calderón</b> : Solicito dispensa de debates.\n\nDicha solicitud fue aprobada. <br><b>Abel Benítez</b> : Exigió que se revise la situación de Yarumela y su alcantarillado al igual que Marcala.\n\nLa moción fue rechazada. ', 'malcolm'),
(81, '<b>José Francisco Rivera Hernández</b> : Solicito dispensa de debate.\n\nMoción fue rechazada. ', 'malcolm'),
(84, '<b>José Oswaldo Ramos Soto</b> : Agradecimiento al Abg. Jorge Maradiaga quien estuvo presente como asesor de la Comisión.  <br><b>Gabriela Núñez Ennabe</b> : Consulto como queda la figura del intermediario en el art. 4 que contiene las definiciones de la Ley.  <br><b>José Eduardo Coto</b> : Pregunto sobre el termino de facturacion  <br><b>Pedro Rafael Alegría</b> : Pidió explicación de la relación entre el Estado y empresas ya que en Honduras operan transnacionales de servicios de internet y debe existir garantía que el Estado mantendrá el control y seguridad en el manejo de transacciones  <br><b>Rasel Antonio Tomé Flores</b> : Como miembro de la Comisión Dictaminadora sugirió que se debe llevar la técnica legislativa leyendo cada concepto por separado  <br><b>Marlon Guillermo Lara Orellana</b> : Consulto que pasaría en el caso de usurpación de firmas. Que mecanismos habrá para la prevención del tema.  <br><b>Luis Rolando Redondo</b> : Sugiere que mensajes de datos se entienda como una actividad comercial y el intercambio de datos que están en 3 conceptos, se aglomeren en uno solo.\n\nRasel Tome despejo la duda como miembro de la Comisión Dictaminadora aclarando que están separadas en varios numerales.  <br><b>José Oswaldo Ramos Soto</b> : Realiza sugerencia de estilo.\n\nSugerencia aprobada. <br><b>Angel Dario Banegas Leiva</b> : Propone se sustituya la frase "llevar a cabo" por "para realizar" en art. 25.\n\nSugerencia aprobada. <br><b>José Oswaldo Ramos Soto</b> : Propone sustituir "prevalencia" por "preminencia" en art. 27.\n\nPropuesta aprobada. <br><b>Jose Perdomo </b> : Comento que por tener su base en el modelo de la ONU de 1996, el sistema de informática del cual se habla esta desfasado, también que en Honduras no tenemos la tipificación de los delitos informáticos, los cuales serán agregados en las reformas del Código Penal. <br><b>Edwin Roberto Pavón León</b> : Agradeció al pleno por la aprobación de esta ley. ', 'malcolm'),
(85, '<b>Jeffrey Alexander Flores Chavarría</b> : Solicito dispensa de debates. <br><b>Walter Alex Banegas</b> : Sugiere se incluya dentro del proyecto una programación por parte de la Secretaria de Seguridad para que la gente sepa que día debe retornar por ella.\n\nLa moción fue aprobada. <br><b>Elvia Argentina Valle</b> : Opino se incluya también el canon de los antecedentes judiciales.\n\nMoción no aprobada. <br><b>Rasel Antonio Tomé Flores</b> : Se pronuncio a favor del proyecto. ', 'malcolm'),
(64, '<b>Gladis Aurora López Calderón</b> : Solicitó dispensa se debates. ', 'malcolm'),
(65, '<b>José Francisco Rivera Hernández</b> : Solicitó dispensa de debate.  <br><b>Miguel Angel Navarro</b> : A favor.  <br><b>Mario Alexander Ayala</b> : A favor.  ', 'malcolm'),
(67, '<b>Pedro Rafael Alegría</b> : Propone se tome en cuenta la sugerencia sobre la inclusión de comunidades no sólo étnicas, sino a aquellos que practican la pesca artesanal. ', 'malcolm'),
(68, '<b>Walter Alex Banegas</b> : Intervención.  ', 'malcolm'),
(69, '<b>Delia Beatríz Valle</b> : Se proclama en contra de la representación de la bancada del partido libre, ya que no se puede ratificar algo a lo cual se le puede hacer cambios.  <br><b>Marco Antonio Andino</b> : Se proclama en contra de la representación del partido liberal.  ', 'malcolm'),
(70, '<b>José Oswaldo Ramos Soto</b> : Dice que no es correcto utilizar la denominación indígenas y afrohondureños.\n\nSe genero debate a partir de esta intervención. <br><b>Milton Jesús Puerto Oseguera</b> : Como Presidente de la Comisión Dictaminadora dispuso que la ultima palabra sobre los termino indígena y afrohondureño, lo manejara la comisión de estilo. <br><b>Angel Dario Banegas Leiva</b> : Propuso sustituir las palabras "llegar a cabo" por "realizar" en el articulo 12. <br><b>Milton Jesús Puerto Oseguera</b> : Propone nueva redacción para el arte. 13 literales f y h.\n\nTambién agrego un nuevo párrafo en el art. 13 sobre que la Conopesca y la digipesca contaran con un asesor. <br><b>Pedro Rafael Alegría</b> : Agrego al arte. 13 inciso b para agregar protección a los pescadores artesanales nacionales ante la problemática de fuerza que ejercen los países vecinos <br><b>Francisco Javier Paz Laínea</b> : Consulto que pasara con los pequeños pescadores, si gozaran de seguridad social o solamente aquellos que laboren para una empresa especifica dado en el inciso g arte. 15. <br><b>Romeo Ucles </b> : Contesta la pregunta de Francisco Paz diciendo que eso esta contemplado en el nuevo proyecto de seguridad social. <br><b>José Oswaldo Ramos Soto</b> : Dice que la palabra "concurrencia" en el arte. 16, debe reemplazarse por el termino " tengan relación" <br><b>Pedro Rafael Alegría</b> : Propone se tome en cuenta las sugerencias sobre la inclusión de comunidades no solo étnicas, sino aquellos practican la pesca artesanal. <br><b>Jerry Dave Hynds Julio</b> : Propone la suspensión por no tener el material suficiente para defender los intereses del departamento que representa. <br><b>José Rodolfo Irías Navas</b> : Apoyo posición de Jerry Hynds <br><b>Wilfredo Paz Zúniga</b> : Se manifestó preocupado por la pesca artesanal para las comunidades aledañas al mar, de norte y sur. <br><b>Milton Jesús Puerto Oseguera</b> : Se manifestó a favor. <br><b>Lena Gutierrez</b> : Suspendió discusión como última oportunidad para que los diputados interesados en el tema se reúnan con la comisión dictaminadora. <br><b>Rasel Antonio Tomé Flores</b> : Se manifestó en contra de requisitos adicionales a pescadores artesanales, ya que obliga al contribuyente a incumplir la ley por falta de recursos para gestionar dichos requisitos. <br><b>Rafael Virgilio Padilla</b> : Apoyo la opinión de Rassel Tome sobre los nuevos requisitos para los pescadores artesanales. <br><b>David Armando Reyes</b> : Opina que debe agregarse que los requisitos nuevos aplican solamente a la pesca industrial. <br><b>Carlos Alfredo Lara Watson</b> : No esta de acuerdo con el agregado sugerido por David Reyes.\n\nFinalmente no fue considerado el agregado. ', 'malcolm'),
(74, '<b>José Francisco Rivera Hernández</b> : No se escucho dentro de la lista para inauguración de aeródromos el de El Aguacate, Olancho. <br><b>Mario Alonso Pérez López</b> : Presento reconsideracion para incluir en la lista de aeródromos los ya construidos en Tela y La Ceiba para exonerarlos del Impuesto de Ganancia de Capital. ', 'malcolm'),
(73, '<b>Delia Beatríz Valle</b> : Se unió a la moción y explico que en estos anuncios también se encuentran Jari Dixon, Manuel Zelaya, Luis Redondo y ella.  <br><b>David Guillermo Chávez Madison</b> : Opina que debe investigarse fuentes y medios electrónicos ya que Lena Gutierrez salio en una pag. con sus 2 hijos menores y fueron objeto de bullying.\n\nSe voto y se aprobó incorporar a moción original.  <br><b>Walter Alex Banegas</b> : Opina que se debe agregar que la Secretaria de DDHH ordene a la URSAC la cancelación de la personalidad jurídica de esta organización.\n\nSe voto y aprobó.  <br><b>Jari Dixon Herrera</b> : Opina que no se necesita investigar, con seguridad que atrás esta JOH  <br><b>Doris Gutiérrez</b> : Hace referencia a las expresiones de JOH pues la afectaron a ella y a sus compañeros por estar en contra de la Policia militar.\n\nPropuso se agregue que se investigue la denuncia interpuesta por 17 diputados. Esto no fue tomado en consideracion  <br><b>Elvia Argentina Valle</b> : Hace un recordatorio sobre la querella presentada para que JOH exponga pruebas sobre sus afirmaciones sobre los diputados en contra de la PMOP y que se incluya en la moción que los órganos gubernamentales actúen de oficio contra estas campañas.  <br><b>Fatima Patricia Mena</b> : Opina que se agregue petición para investigar el origen de los fondos de estas campañas y ponerle un termino para que las instituciones rindan cuentas.\n\nEsta moción fue aprobada.  ', 'malcolm'),
(143, '<b>Rolando Dubón Bueso</b> : Solicita dispensa de debates.\n\nMoción aprobada. <br><b>Rasel Antonio Tomé Flores</b> : No esta de acuerdo con dispensa de debates. ', 'all'),
(156, '<b>Nery Orlando Reyes Hernández</b> : Solicita dispensa de debates.\n\nMoción aprobada. ', 'all'),
(157, '<b>Rasel Antonio Tomé Flores</b> : Cuestiona el por que exonerar de impuestos al adquirente del vehículo si el fin es recaudar mayor ingreso. <br><b>Gabriela Núñez Ennabe</b> : Le aclara a Rassel Tome que la razón para la exoneración es la falta de cumplimiento del Estado con sus obligaciones tributarias, sobre estos vehículos que fueron donados e inventariados al Estado, para posteriores subastas. <br><b>Mario Alonso Pérez López</b> : Solicita dispensa de debates.\n\nMoción aprobada. ', 'all'),
(104, '', 'all'),
(103, '', 'all'),
(102, '', 'all'),
(100, '', 'all'),
(172, '<b>Manuel Zelaya Rosales</b> : prueba a  ', 'all'),
(174, '<b>Manuel Zelaya Rosales</b> : policia militar <br><b>Diana Patricia Urbina Soto</b> : pturba ', 'all'),
(175, '<b>Manuel Zelaya Rosales</b> : policia <br><b>Manuel Zelaya Rosales</b> : prueba a ', 'all'),
(176, '<b>César Enrique Hendal Fernández</b> : hgf <br><b>Walter Alex Banegas</b> : hgfc ', 'all'),
(71, '', 'all'),
(72, '', 'all'),
(76, '', 'all'),
(77, '', 'all'),
(78, '', 'all'),
(79, '', 'all'),
(82, '', 'all'),
(83, '', 'all'),
(86, '', 'all'),
(87, '', 'all'),
(88, '', 'all'),
(89, '', 'all'),
(90, '', 'all'),
(91, '', 'all'),
(93, '', 'all'),
(94, '', 'all'),
(95, '', 'all'),
(96, '', 'all'),
(98, '', 'all'),
(99, '', 'all'),
(158, '<b>Jari Dixon Herrera</b> : Se pronuncia en contra ya que no se esta dando el tiempo prometido el día anterior para discutir este proyecto en 3 debates. Lamenta que cuestiones con interés personal se toman como emergencia y proyectos con real interés de la población están engavetados. <br><b>María Aracely Leiva Peña</b> : Se pronuncio a favor del proyecto. <br><b>Gabriela Núñez Ennabe</b> : Se pronuncio a favor del proyecto. <br><b>Román Villeda Aguilar</b> : Se pronuncio a favor del proyecto. <br><b>Augusto Domingo Cruz Asencio</b> : Se pronuncio en contra del proyecto. <br><b>Edwin Roberto Pavón León</b> : Se pronuncio a favor del proyecto. <br><b>Jaime Enrique Villegas</b> : Se pronuncio a favor del proyecto. ', 'all'),
(167, '<b>Manuel Zelaya Rosales</b> : policia militar <br><b>Manuel Zelaya Rosales</b> : policia militar ', 'all'),
(171, '<b>Manuel Zelaya Rosales</b> : policia militar <br><b>Manuel Zelaya Rosales</b> : a <br><b>Manuel Zelaya Rosales</b> : b ', 'all'),
(142, '<b>Pedro Rafael Alegría</b> : Consulta por sanciones a empresas que tienen exenciones fiscales a sus impuestos amparados en mala interpretación de la ley. <br><b>Carlos Alfredo Lara Watson</b> : Aclara que estas reformas a la Ley para la Defensa y Promoción de la Competencia afectaran a la Comisión para la Defensa y Promoción de la Competencia y no la competitividad en si. <br><b>Rasel Antonio Tomé Flores</b> : Aclara que la ley viene a dar medios a la CDPC para que cumpla sus funciones que a la fecha aun no ha podido realizar a plenitud. <br><b>Gabriela Núñez Ennabe</b> : Recomienda que el 100 % de la recaudación no sea destinado a la CDPC, sino solo el % definido anualmente por la SEFIN mediante el Presupuesto General.\n\nMoción aprobada. <br><b>Rasel Antonio Tomé Flores</b> : Pide aclaración sobre el monto que sera trasladado luego de ser aprobada la sugerencia de la diputada Gabriela Nuñez, ya que no sera trasladado el 100 %. <br><b>Representante de la CDPC </b> : Manifiesta que la CDPC es un ente autónomo y que por tanto las recaudaciones no deberían ser administradas por la SEFIN. Actualmente la CDPC se ha visto limitada por el bajo presupuesto asignado a la institución. ', 'all'),
(106, '<b>Delia Beatríz Valle</b> : Se manifiesta en contra de la ratificación, representando además a la bancada de LIBRE. Considera que no se puede ratificar algo a lo cual se le quiere hacer cambios. <br><b>Marco Antonio Andino</b> : Se manifiesta en contra de la ratificación, representando además a una parte de la bancada del Partido Liberal. <br><b>Augusto Domingo Cruz Asencio</b> : Se manifiesta a favor de la ratificación representando además la bancada del Partido Demócrata Cristiano. <br><b>Rasel Antonio Tomé Flores</b> : Se manifiesta en contra de la elevación a rango constitucional pero no de la PMOP en si. <br><b>Fatima Patricia Mena</b> : Se proclama en contra de la ratificación representando además a la bancada del PAC. <br><b>Edwin Roberto Pavón León</b> : Se manifiesta a favor de la ratificación. <br><b>Doris Gutiérrez</b> : Manifiesta que JOH tiene una agenda secreta y desea otorgarle mas atribuciones al Presidente de la República en las ZEDES, por tanto se manifiesta en contra de la ratificación. <br><b>Oscar Álvarez</b> : Se manifiesta a favor de la ratificación representando además a la bancada del Partido Nacional. ', 'all'),
(81, '<b>José Francisco Rivera Hernández</b> : Solicito dispensa de debate.\n\nMoción fue rechazada. ', 'all'),
(84, '<b>José Oswaldo Ramos Soto</b> : Agradecimiento al Abg. Jorge Maradiaga quien estuvo presente como asesor de la Comisión.  <br><b>Gabriela Núñez Ennabe</b> : Consulto como queda la figura del intermediario en el art. 4 que contiene las definiciones de la Ley.  <br><b>José Eduardo Coto</b> : Pregunto sobre el termino de facturacion  <br><b>Pedro Rafael Alegría</b> : Pidió explicación de la relación entre el Estado y empresas ya que en Honduras operan transnacionales de servicios de internet y debe existir garantía que el Estado mantendrá el control y seguridad en el manejo de transacciones  <br><b>Rasel Antonio Tomé Flores</b> : Como miembro de la Comisión Dictaminadora sugirió que se debe llevar la técnica legislativa leyendo cada concepto por separado  <br><b>Marlon Guillermo Lara Orellana</b> : Consulto que pasaría en el caso de usurpación de firmas. Que mecanismos habrá para la prevención del tema.  <br><b>Luis Rolando Redondo</b> : Sugiere que mensajes de datos se entienda como una actividad comercial y el intercambio de datos que están en 3 conceptos, se aglomeren en uno solo.\n\nRasel Tome despejo la duda como miembro de la Comisión Dictaminadora aclarando que están separadas en varios numerales.  <br><b>José Oswaldo Ramos Soto</b> : Realiza sugerencia de estilo.\n\nSugerencia aprobada. <br><b>Angel Dario Banegas Leiva</b> : Propone se sustituya la frase "llevar a cabo" por "para realizar" en art. 25.\n\nSugerencia aprobada. <br><b>José Oswaldo Ramos Soto</b> : Propone sustituir "prevalencia" por "preminencia" en art. 27.\n\nPropuesta aprobada. <br><b>Jose Perdomo </b> : Comento que por tener su base en el modelo de la ONU de 1996, el sistema de informática del cual se habla esta desfasado, también que en Honduras no tenemos la tipificación de los delitos informáticos, los cuales serán agregados en las reformas del Código Penal. <br><b>Edwin Roberto Pavón León</b> : Agradeció al pleno por la aprobación de esta ley. ', 'all'),
(107, '<b>Juan Orlando Hernandez </b> : Llevo solicitud de plebiscito acerca de la elevación a rango constitucional de la PMOP.\n\nNo quedo presentada al pleno, se despejara en la nueva legislatura. ', 'all'),
(108, '<b>Carlos Roberto Ledezma Casco</b> : Solicito dispensa de debates. ', 'all'),
(122, '<b>Yury Cristhian Sabas Gutierrez</b> : solicitó dispensa de debates.\n\nMoción aprobada.  <br><b>César Humberto Agurcia López</b> : Se pronunció a favor de los ascensos, pero como bancada no están de acuerdo de apoyar personas que han tenido denuncias por violación de derechos humanos, también agregó se debe reformar el proceso de aprobación de ascensos.  <br><b>Wilfredo Paz Zúniga</b> : Se sumó a la petición de César Agurcia.  <br><b>Rasel Antonio Tomé Flores</b> : También se sumó a la petición de César Agurcia.  <br><b>Delia Beatríz Valle</b> : Se sumó a la petición de César Agurcia.  <br><b>Luis Rolando Redondo</b> : En contra del proceso por falta de transparencia en el mismo ya que no se brindó tiempo a las bancadas para razonar su voto.\n\nSe le retiró la palabra por estar fuera de orden.  ', 'all'),
(85, '<b>Jeffrey Alexander Flores Chavarría</b> : Solicito dispensa de debates. <br><b>Walter Alex Banegas</b> : Sugiere se incluya dentro del proyecto una programación por parte de la Secretaria de Seguridad para que la gente sepa que día debe retornar por ella.\n\nLa moción fue aprobada. <br><b>Elvia Argentina Valle</b> : Opino se incluya también el canon de los antecedentes judiciales.\n\nMoción no aprobada. <br><b>Rasel Antonio Tomé Flores</b> : Se pronuncio a favor del proyecto. ', 'all'),
(92, '<b>Esdras Amado López</b> : Sugirió que debe incluirse moción presentada por el en sesión anterior.\n  <br><b>Lena Gutierrez</b> : Aclaro a Esdras Lopez que en la sesión anterior el presento una manifestación y no una moción y que por esa razón no aparece en el acta. Le sugirió que la vuelva a presentar como moción.  <br><b>Rasel Antonio Tomé Flores</b> : Opina que en el decreto aprobado en la sesión anterior sobre la dispensa de la tasa por tramites administrativos a menores de 25 años, que se agregue la palabra "reformar".  <br><b>Lena Gutierrez</b> : Le aclaro a Rassel Tome que la palabra reformar ya esta incluida.  ', 'all'),
(97, '<b>Mario Alexander Ayala</b> : Solicito se suspenda la discusión de este contrato. <br><b>Lena Gutierrez</b> : Le manifestó a Mario Ayala que ya era el tercer debate por lo que su solicitud estaba fuera de lugar. ', 'all'),
(101, '<b>Cristhian Reniery Santamaría</b> : Opina que debe aclararse la definición "afro descendientes" y su aplicación como comunidad garifuna.\n\nMoción aprobada. <br><b>Pedro Rafael Alegría</b> : Pregunta cual es la definición del termino "derecho preferente". <br><b>Milton Jesús Puerto Oseguera</b> : Sugirió incluir la definición de "Emergencia Pesquera".\n\nMoción aprobada. <br><b>José Oswaldo Ramos Soto</b> : Sugirió a la comisión dictaminadora que se mejore condiciones de semántica.\n\nMoción aprobada. <br><b>Rasel Antonio Tomé Flores</b> : Solicita aclaración sobre definición del termino "procedimiento científico y técnico".\n <br><b>Edwin Roberto Pavón León</b> : Se manifestó a favor del termino "procedimiento científico y técnico" explicado por el Dr. Romeo Ucles. <br><b>Augusto Domingo Cruz Asencio</b> : Se manifestó a favor del termino "procedimiento científico y técnico" explicado por el Dr. Romeo Ucles. <br><b>José Oswaldo Ramos Soto</b> : Sugirió se incorpore en la definición "procedimiento científico y técnico" la frase "realizado por el ser humano".\n\nMoción aprobada.\n\nTambién sugirió que debería decir "extraer" en vez de "separar".\n\nMoción aprobada. <br><b>Edwin Roberto Pavón León</b> : Sugirió incorporar termino "pesca comercial".\n\nMoción aprobada. <br><b>Milton Jesús Puerto Oseguera</b> : Sugirió agregar conceptos de "pesca científica" y "pesca en alta mar".\n\nMoción aprobada. <br><b>José Oswaldo Ramos Soto</b> : Sugirió cambiar el termino "actividad pesquera" por "en protección de la fauna".\n\nMoción aprobada. \n ', 'all'),
(75, '<b>Carlos Roberto Ledezma Casco</b> : Solicito dispensa de debates. ', 'all'),
(80, '<b>Gladis Aurora López Calderón</b> : Solicito dispensa de debates.\n\nDicha solicitud fue aprobada. <br><b>Abel Benítez</b> : Exigió que se revise la situación de Yarumela y su alcantarillado al igual que Marcala.\n\nLa moción fue rechazada. ', 'all'),
(73, '<b>Delia Beatríz Valle</b> : Se unió a la moción y explico que en estos anuncios también se encuentran Jari Dixon, Manuel Zelaya, Luis Redondo y ella.  <br><b>David Guillermo Chávez Madison</b> : Opina que debe investigarse fuentes y medios electrónicos ya que Lena Gutierrez salio en una pag. con sus 2 hijos menores y fueron objeto de bullying.\n\nSe voto y se aprobó incorporar a moción original.  <br><b>Walter Alex Banegas</b> : Opina que se debe agregar que la Secretaria de DDHH ordene a la URSAC la cancelación de la personalidad jurídica de esta organización.\n\nSe voto y aprobó.  <br><b>Jari Dixon Herrera</b> : Opina que no se necesita investigar, con seguridad que atrás esta JOH  <br><b>Doris Gutiérrez</b> : Hace referencia a las expresiones de JOH pues la afectaron a ella y a sus compañeros por estar en contra de la Policia militar.\n\nPropuso se agregue que se investigue la denuncia interpuesta por 17 diputados. Esto no fue tomado en consideracion  <br><b>Elvia Argentina Valle</b> : Hace un recordatorio sobre la querella presentada para que JOH exponga pruebas sobre sus afirmaciones sobre los diputados en contra de la PMOP y que se incluya en la moción que los órganos gubernamentales actúen de oficio contra estas campañas.  <br><b>Fatima Patricia Mena</b> : Opina que se agregue petición para investigar el origen de los fondos de estas campañas y ponerle un termino para que las instituciones rindan cuentas.\n\nEsta moción fue aprobada.  ', 'all'),
(74, '<b>José Francisco Rivera Hernández</b> : No se escucho dentro de la lista para inauguración de aeródromos el de El Aguacate, Olancho. <br><b>Mario Alonso Pérez López</b> : Presento reconsideracion para incluir en la lista de aeródromos los ya construidos en Tela y La Ceiba para exonerarlos del Impuesto de Ganancia de Capital. ', 'all'),
(28, '<b>Gladis Aurora López Calderón</b> : Solicitó dispensa de debates. <br><b>Abel Benítez</b> : Exige se vea situación de la comunidad de Yarumela y su alcantarillado, al igual que Marcala. ', 'all'),
(32, '<b>Manuel Iván Fiallos Rodas</b> : test ', 'all'),
(39, '<b>Gabriela Núñez Ennabe</b> : Consulto como queda la figura del intermediario en el art. 4, sobre definiciones. <br><b>José Eduardo Coto</b> : Pregunto si el termino es facturación. <br><b>Pedro Rafael Alegría</b> : Pidió explicación de la relación del Estado y empresas, ya que en Honduras operan transnacionales de servicios de internet y debe existir garantía que el Estado mantendrá el control y seguridad en el manejo de estas transacciones. <br><b>Rasel Antonio Tomé Flores</b> : Como miembro de la Comisión sugirió que se hubiera llevado la técnica legislativa leyendo cada concepto por separado. <br><b>Luis Rolando Redondo</b> : Planteamiento para que mensaje de datos se entienda como actividad comercial, y el intercambio de datos aglomerando 3 conceptos en uno solo.\n\nAl respecto Rasel Tome aclaro que estan separadas en varios numerales. ', 'all'),
(70, '<b>José Oswaldo Ramos Soto</b> : Dice que no es correcto utilizar la denominación indígenas y afrohondureños.\n\nSe genero debate a partir de esta intervención. <br><b>Milton Jesús Puerto Oseguera</b> : Como Presidente de la Comisión Dictaminadora dispuso que la ultima palabra sobre los termino indígena y afrohondureño, lo manejara la comisión de estilo. <br><b>Angel Dario Banegas Leiva</b> : Propuso sustituir las palabras "llegar a cabo" por "realizar" en el articulo 12. <br><b>Milton Jesús Puerto Oseguera</b> : Propone nueva redacción para el arte. 13 literales f y h.\n\nTambién agrego un nuevo párrafo en el art. 13 sobre que la Conopesca y la digipesca contaran con un asesor. <br><b>Pedro Rafael Alegría</b> : Agrego al arte. 13 inciso b para agregar protección a los pescadores artesanales nacionales ante la problemática de fuerza que ejercen los países vecinos <br><b>Francisco Javier Paz Laínea</b> : Consulto que pasara con los pequeños pescadores, si gozaran de seguridad social o solamente aquellos que laboren para una empresa especifica dado en el inciso g arte. 15. <br><b>Romeo Ucles </b> : Contesta la pregunta de Francisco Paz diciendo que eso esta contemplado en el nuevo proyecto de seguridad social. <br><b>José Oswaldo Ramos Soto</b> : Dice que la palabra "concurrencia" en el arte. 16, debe reemplazarse por el termino " tengan relación" <br><b>Pedro Rafael Alegría</b> : Propone se tome en cuenta las sugerencias sobre la inclusión de comunidades no solo étnicas, sino aquellos practican la pesca artesanal. <br><b>Jerry Dave Hynds Julio</b> : Propone la suspensión por no tener el material suficiente para defender los intereses del departamento que representa. <br><b>José Rodolfo Irías Navas</b> : Apoyo posición de Jerry Hynds <br><b>Wilfredo Paz Zúniga</b> : Se manifestó preocupado por la pesca artesanal para las comunidades aledañas al mar, de norte y sur. <br><b>Milton Jesús Puerto Oseguera</b> : Se manifestó a favor. <br><b>Lena Gutierrez</b> : Suspendió discusión como última oportunidad para que los diputados interesados en el tema se reúnan con la comisión dictaminadora. <br><b>Rasel Antonio Tomé Flores</b> : Se manifestó en contra de requisitos adicionales a pescadores artesanales, ya que obliga al contribuyente a incumplir la ley por falta de recursos para gestionar dichos requisitos. <br><b>Rafael Virgilio Padilla</b> : Apoyo la opinión de Rassel Tome sobre los nuevos requisitos para los pescadores artesanales. <br><b>David Armando Reyes</b> : Opina que debe agregarse que los requisitos nuevos aplican solamente a la pesca industrial. <br><b>Carlos Alfredo Lara Watson</b> : No esta de acuerdo con el agregado sugerido por David Reyes.\n\nFinalmente no fue considerado el agregado. ', 'all'),
(67, '<b>Pedro Rafael Alegría</b> : Propone se tome en cuenta la sugerencia sobre la inclusión de comunidades no sólo étnicas, sino a aquellos que practican la pesca artesanal. ', 'all'),
(68, '<b>Walter Alex Banegas</b> : Intervención.  ', 'all'),
(69, '<b>Delia Beatríz Valle</b> : Se proclama en contra de la representación de la bancada del partido libre, ya que no se puede ratificar algo a lo cual se le puede hacer cambios.  <br><b>Marco Antonio Andino</b> : Se proclama en contra de la representación del partido liberal.  ', 'all'),
(64, '<b>Gladis Aurora López Calderón</b> : Solicitó dispensa se debates. ', 'all'),
(65, '<b>José Francisco Rivera Hernández</b> : Solicitó dispensa de debate.  <br><b>Miguel Angel Navarro</b> : A favor.  <br><b>Mario Alexander Ayala</b> : A favor.  ', 'all'),
(43, '<b>Jeffrey Alexander Flores Chavarría</b> : Solicitó dispensa de debates. <br><b>Walter Alex Banegas</b> : Sugiere se incluya dentro del proyecto: la inclusión de una programación por parte de la Secretaria de Seguridad sobre la entrega de las hojas de antecedentes, para que la gente sepa que día debe retornar por ella. (aprobada) <br><b>Elvia Argentina Valle</b> : Opinó se incluya también el canon de los antecedentes judiciales. (no aprobada) <br><b>Rasel Antonio Tomé Flores</b> : Se pronunció a favor. ', 'all'),
(63, '<b>Yury Cristhian Sabas Gutierrez</b> : Solicitó dispensa de debates. <br><b>César Humberto Agurcia López</b> : A favor de los ascensos,pero no están de acuerdo como bancada en apoyar personas que han tenido denuncias por violación de derechos humanos, en la misma postura Wilfredo Paz, Rassel Tome y Beatriz Valle, también opinaron se deben reformar los procesos de ascensos. ', 'all'),
(25, '<b>Yury Cristhian Sabas Gutierrez</b> : Solicitó dispensa de debates. <br><b>César Humberto Agurcia López</b> : A favor de los ascensos, pero no esta de acuerdo como bancada en apoyar personas que han tenido denuncias por violación a los derechos humanos. <br><b>Wilfredo Paz Zúniga</b> : De acuerdo con la postura de César Agurcia. <br><b>Rasel Antonio Tomé Flores</b> : Opinó que se debe reformar el proceso de ascensos. <br><b>Delia Beatríz Valle</b> : De acuerdo con opinion de Rasel Tome. <br><b>Luis Rolando Redondo</b> : En contra del proceso, por falta de transparencia en el mismo, pues no se les brindo tiempo como bancada para razonar su voto. (Se le retiro la palabra por estar fuera de orden). ', 'all'),
(24, '<b>Carlos Roberto Ledezma Casco</b> : Solicitó dispensa de debates. ', 'all'),
(23, '<b>José Francisco Rivera Hernández</b> : No se escuchó dentro de la lista del proyecto para inauguración de aeródromos el El Aguacate, Olancho. <br><b>Mario Alonso Pérez López</b> : Presentó reconsideración para incluir dentro de la lista de aeródromos los ya construidos en Tela, La Ceiba, así como excluir impuestos de ganancia de capital de los mismos. ', 'all'),
(8, '<b>Delia Beatríz Valle</b> : hace la anotacion que en el art. 400 se hizo omision de las palabras Derechos de Servidumbre tal cual aparece en el Codigo, Oswaldo Ramos acepto la sugerencia y remitio la misma a la Comision de estilo para su correccion. ', 'all'),
(16, '<b>Manuel Zelaya Rosales</b> : prieba <br><b>Manuel Iván Fiallos Rodas</b> : otra prueba <br><b>Hugo Ricardo Hernández</b> : djdbdjdndjdjd\ndjdbdjdndjdjd\ndndmdmmd\n\n\ninició\ndifundir\ndjdbdjdndjdjd\ndjdbdjdndjdjd\ndndmdmmd\ndjdbdjdndjdjd\n\n\nfin\n\ndndmdmmd\ndjdbdjdndjdjd\nJudith\n\nfinal  ', 'all'),
(18, '<b>Mauricio Oliva</b> : sin conexion  <br><b>Mauricio Oliva</b> : Hola\namigos\nde\nCuba libre\nque\n\n\n\nestán\nal otro\nlado\ndel\nCaribe\n <br><b>Mauricio Oliva</b> : gialala <br><b>Lisandro Mauricio Arias Aquino</b> : maur. \n\npolicia \n\nmilitar \n\n\nde\nhonduras ', 'all'),
(20, '<b>Lisandro Mauricio Arias Aquino</b> : policia. militar  ', 'all'),
(22, '<b>José Francisco Rivera Hernández</b> : No se escucho dentro de la lista del proyecto para inauguracion de aerodromos, los ya construidos en Tela, La Ceiba, así como excluir impuestos de ganacia de capital de los mismos. ', 'all'),
(4, '<b>Lena Gutierrez</b> : Sugiere que los diputados de FM se reunan y den forma a la idea para ayudar a los afectados por el incendio. <br><b>Edwin Roberto Pavón León</b> : Aclara que una mocion debe tenerbuna idea especifica o solicitud ya sea verbal o escrita. <br><b>Antonio César Rivera Callejas</b> : Consulta sobre el fondo, ¿si es moción, manifestación o charla? <br><b>Delia Beatríz Valle</b> : agrega que debe incluirse que se aprueben 3 millones de Lempiras para ayuda a los afectados del incendio. <br><b>Lena Gutierrez</b> : Aclaro la idea de Beatriz Valle debe ser presentado vía decreto. <br><b>José Oswaldo Ramos Soto</b> : Expreso que debe presentarse decreto que obligue a que las compañías distribuidoras de gas LPG lo realicen en tanques de la calidad del primer mundo así como un fondo de prevención de incidentes de este tipo. <br><b>Yury Cristhian Sabas Gutierrez</b> : Respalda la propuesta para revisar los protocolos de atención de emergencia. <br><b>Elvia Argentina Valle</b> : Los hospitales  no cuentan con los recursos necesarios por eso creo que se debe agregar que venga al congreso nacional la ministra de salud para que explique que se puede hacer para ese tipo de situación del por que del desabastecimiento de medicamentos. ', 'all'),
(143, '<b>Rolando Dubón Bueso</b> : Solicita dispensa de debates.\n\nMoción aprobada. <br><b>Rasel Antonio Tomé Flores</b> : No esta de acuerdo con dispensa de debates. ', 'malcolm'),
(43, '<b>Jeffrey Alexander Flores Chavarría</b> : Solicitó dispensa de debates. <br><b>Walter Alex Banegas</b> : Sugiere se incluya dentro del proyecto: la inclusión de una programación por parte de la Secretaria de Seguridad sobre la entrega de las hojas de antecedentes, para que la gente sepa que día debe retornar por ella. (aprobada) <br><b>Elvia Argentina Valle</b> : Opinó se incluya también el canon de los antecedentes judiciales. (no aprobada) <br><b>Rasel Antonio Tomé Flores</b> : Se pronunció a favor. ', 'malcolm'),
(63, '<b>Yury Cristhian Sabas Gutierrez</b> : Solicitó dispensa de debates. <br><b>César Humberto Agurcia López</b> : A favor de los ascensos,pero no están de acuerdo como bancada en apoyar personas que han tenido denuncias por violación de derechos humanos, en la misma postura Wilfredo Paz, Rassel Tome y Beatriz Valle, también opinaron se deben reformar los procesos de ascensos. ', 'malcolm'),
(1, '<b>Manuel Zelaya Rosales</b> : prueba <br><b>Luis René Oliva</b> : otra prueba ', 'malcolm'),
(2, '<b>Manuel Zelaya Rosales</b> : manuel  ', 'malcolm'),
(3, '<b>José Tomás Zambrano Molina</b> : Que se agregue a la moción que no sea una simple nota, sino que la comisión especial de energía, mas los diputados de los departamentos afectados por la no aplicación de esta disposición con la gerencia de la ENEE. ', 'malcolm'),
(4, '<b>Lena Gutierrez</b> : Sugiere que los diputados de FM se reunan y den forma a la idea para ayudar a los afectados por el incendio. <br><b>Edwin Roberto Pavón León</b> : Aclara que una mocion debe tenerbuna idea especifica o solicitud ya sea verbal o escrita. <br><b>Antonio César Rivera Callejas</b> : Consulta sobre el fondo, ¿si es moción, manifestación o charla? <br><b>Delia Beatríz Valle</b> : agrega que debe incluirse que se aprueben 3 millones de Lempiras para ayuda a los afectados del incendio. <br><b>Lena Gutierrez</b> : Aclaro la idea de Beatriz Valle debe ser presentado vía decreto. <br><b>José Oswaldo Ramos Soto</b> : Expreso que debe presentarse decreto que obligue a que las compañías distribuidoras de gas LPG lo realicen en tanques de la calidad del primer mundo así como un fondo de prevención de incidentes de este tipo. <br><b>Yury Cristhian Sabas Gutierrez</b> : Respalda la propuesta para revisar los protocolos de atención de emergencia. <br><b>Elvia Argentina Valle</b> : Los hospitales  no cuentan con los recursos necesarios por eso creo que se debe agregar que venga al congreso nacional la ministra de salud para que explique que se puede hacer para ese tipo de situación del por que del desabastecimiento de medicamentos. ', 'malcolm'),
(3, '<b>José Tomás Zambrano Molina</b> : Que se agregue a la moción que no sea una simple nota, sino que la comisión especial de energía, mas los diputados de los departamentos afectados por la no aplicación de esta disposición con la gerencia de la ENEE. ', 'all'),
(2, '<b>Manuel Zelaya Rosales</b> : manuel  ', 'all'),
(1, '<b>Manuel Zelaya Rosales</b> : prueba <br><b>Luis René Oliva</b> : otra prueba ', 'all'),
(116, '', 'all'),
(120, '', 'all'),
(121, '', 'all'),
(123, '', 'all'),
(124, '', 'all'),
(125, '', 'all'),
(127, '', 'all'),
(130, '', 'all'),
(147, '', 'all'),
(153, '', 'all'),
(159, '', 'all'),
(166, '', 'all'),
(168, '', 'all'),
(169, '', 'all'),
(170, '', 'all'),
(173, '', 'all'),
(177, '', 'all'),
(178, '', 'all'),
(179, '', 'all'),
(28, '<b>Gladis Aurora López Calderón</b> : Solicitó dispensa de debates. <br><b>Abel Benítez</b> : Exige se vea situación de la comunidad de Yarumela y su alcantarillado, al igual que Marcala. ', 'malcolm'),
(24, '<b>Carlos Roberto Ledezma Casco</b> : Solicitó dispensa de debates. ', 'malcolm'),
(25, '<b>Yury Cristhian Sabas Gutierrez</b> : Solicitó dispensa de debates. <br><b>César Humberto Agurcia López</b> : A favor de los ascensos, pero no esta de acuerdo como bancada en apoyar personas que han tenido denuncias por violación a los derechos humanos. <br><b>Wilfredo Paz Zúniga</b> : De acuerdo con la postura de César Agurcia. <br><b>Rasel Antonio Tomé Flores</b> : Opinó que se debe reformar el proceso de ascensos. <br><b>Delia Beatríz Valle</b> : De acuerdo con opinion de Rasel Tome. <br><b>Luis Rolando Redondo</b> : En contra del proceso, por falta de transparencia en el mismo, pues no se les brindo tiempo como bancada para razonar su voto. (Se le retiro la palabra por estar fuera de orden). ', 'malcolm'),
(23, '<b>José Francisco Rivera Hernández</b> : No se escuchó dentro de la lista del proyecto para inauguración de aeródromos el El Aguacate, Olancho. <br><b>Mario Alonso Pérez López</b> : Presentó reconsideración para incluir dentro de la lista de aeródromos los ya construidos en Tela, La Ceiba, así como excluir impuestos de ganancia de capital de los mismos. ', 'malcolm'),
(22, '<b>José Francisco Rivera Hernández</b> : No se escucho dentro de la lista del proyecto para inauguracion de aerodromos, los ya construidos en Tela, La Ceiba, así como excluir impuestos de ganacia de capital de los mismos. ', 'malcolm'),
(20, '<b>Lisandro Mauricio Arias Aquino</b> : policia. militar  ', 'malcolm'),
(18, '<b>Mauricio Oliva</b> : sin conexion  <br><b>Mauricio Oliva</b> : Hola\namigos\nde\nCuba libre\nque\n\n\n\nestán\nal otro\nlado\ndel\nCaribe\n <br><b>Mauricio Oliva</b> : gialala <br><b>Lisandro Mauricio Arias Aquino</b> : maur. \n\npolicia \n\nmilitar \n\n\nde\nhonduras ', 'malcolm'),
(16, '<b>Manuel Zelaya Rosales</b> : prieba <br><b>Manuel Iván Fiallos Rodas</b> : otra prueba <br><b>Hugo Ricardo Hernández</b> : djdbdjdndjdjd\ndjdbdjdndjdjd\ndndmdmmd\n\n\ninició\ndifundir\ndjdbdjdndjdjd\ndjdbdjdndjdjd\ndndmdmmd\ndjdbdjdndjdjd\n\n\nfin\n\ndndmdmmd\ndjdbdjdndjdjd\nJudith\n\nfinal  ', 'malcolm'),
(8, '<b>Delia Beatríz Valle</b> : hace la anotacion que en el art. 400 se hizo omision de las palabras Derechos de Servidumbre tal cual aparece en el Codigo, Oswaldo Ramos acepto la sugerencia y remitio la misma a la Comision de estilo para su correccion. ', 'malcolm'),
(2, '<b>Manuel Zelaya Rosales</b> : manuel  ', 'd'),
(78, '', ''),
(79, '', ''),
(82, '', ''),
(83, '', ''),
(86, '', ''),
(87, '', ''),
(88, '', ''),
(89, '', ''),
(90, '', ''),
(91, '', ''),
(93, '', ''),
(94, '', ''),
(95, '', ''),
(96, '', ''),
(98, '', ''),
(99, '', ''),
(100, '', ''),
(102, '', ''),
(103, '', ''),
(104, '', ''),
(109, '', ''),
(112, '', ''),
(113, '', ''),
(116, '', ''),
(120, '', ''),
(121, '', ''),
(123, '', ''),
(124, '', ''),
(125, '', ''),
(127, '', ''),
(130, '', ''),
(147, '', ''),
(153, '', ''),
(159, '', ''),
(166, '', ''),
(168, '', ''),
(169, '', ''),
(170, '', ''),
(173, '', ''),
(177, '', ''),
(178, '', ''),
(179, '', ''),
(183, '', ''),
(184, '', ''),
(185, '', ''),
(186, '', ''),
(188, '', ''),
(192, '', ''),
(193, '', ''),
(194, '', ''),
(1, '<b>Manuel Zelaya Rosales</b> : prueba <br><b>Luis René Oliva</b> : otra prueba ', 'd'),
(195, '<b>Manuel Zelaya Rosales</b> : mirador policia ', ''),
(71, '', ''),
(72, '', ''),
(76, '', ''),
(77, '', ''),
(167, '<b>Manuel Zelaya Rosales</b> : policia militar <br><b>Manuel Zelaya Rosales</b> : policia militar ', ''),
(171, '<b>Manuel Zelaya Rosales</b> : policia militar <br><b>Manuel Zelaya Rosales</b> : alacena', ''),
(172, '<b>Manuel Zelaya Rosales</b> : prueba a  ', ''),
(174, '<b>Manuel Zelaya Rosales</b> : policia militar <br><b>Diana Patricia Urbina Soto</b> : pturba ', ''),
(175, '<b>Manuel Zelaya Rosales</b> : policia <br><b>Manuel Zelaya Rosales</b> : prueba a ', ''),
(176, '<b>César Enrique Hendal Fernández</b> : hgf <br><b>Walter Alex Banegas</b> : hgfc ', ''),
(187, '<b>Lisandro Mauricio Arias Aquino</b> : policia militar  ', '');
INSERT INTO `reporteProyectosInter` (`id_sesion_proyecto`, `descripcion`, `usuario`) VALUES
(158, '<b>Jari Dixon Herrera</b> : Se pronuncia en contra ya que no se esta dando el tiempo prometido el día anterior para discutir este proyecto en 3 debates. Lamenta que cuestiones con interés personal se toman como emergencia y proyectos con real interés de la población están engavetados. <br><b>María Aracely Leiva Peña</b> : Se pronuncio a favor del proyecto. <br><b>Gabriela Núñez Ennabe</b> : Se pronuncio a favor del proyecto. <br><b>Román Villeda Aguilar</b> : Se pronuncio a favor del proyecto. <br><b>Augusto Domingo Cruz Asencio</b> : Se pronuncio en contra del proyecto. <br><b>Edwin Roberto Pavón León</b> : Se pronuncio a favor del proyecto. <br><b>Jaime Enrique Villegas</b> : Se pronuncio a favor del proyecto. ', ''),
(189, '<b>José Oswaldo Ramos Soto</b> : nueva policia militar <br><b>Ana Joselina Fortín</b> : vieja policia militar ', ''),
(190, '<b>Hugo Ricardo Hernández</b> : proyecto 1 policia militar  <br><b>Anibal Javier Cálix</b> : intervención 2 policia militar <br><b>Carlos Alfredo Lara Watson</b> : intervención 3 policia militar ', ''),
(191, '<b>Fredy Renán Najera Hernández</b> : policia militar nacional <br><b>Gerardo Tulio Martínez Pineda</b> : guiaba policia militar ', ''),
(142, '<b>Pedro Rafael Alegría</b> : Consulta por sanciones a empresas que tienen exenciones fiscales a sus impuestos amparados en mala interpretación de la ley. <br><b>Carlos Alfredo Lara Watson</b> : Aclara que estas reformas a la Ley para la Defensa y Promoción de la Competencia afectaran a la Comisión para la Defensa y Promoción de la Competencia y no la competitividad en si. <br><b>Rasel Antonio Tomé Flores</b> : Aclara que la ley viene a dar medios a la CDPC para que cumpla sus funciones que a la fecha aun no ha podido realizar a plenitud. <br><b>Gabriela Núñez Ennabe</b> : Recomienda que el 100 % de la recaudación no sea destinado a la CDPC, sino solo el % definido anualmente por la SEFIN mediante el Presupuesto General.\n\nMoción aprobada. <br><b>Rasel Antonio Tomé Flores</b> : Pide aclaración sobre el monto que sera trasladado luego de ser aprobada la sugerencia de la diputada Gabriela Nuñez, ya que no sera trasladado el 100 %. <br><b>Representante de la CDPC </b> : Manifiesta que la CDPC es un ente autónomo y que por tanto las recaudaciones no deberían ser administradas por la SEFIN. Actualmente la CDPC se ha visto limitada por el bajo presupuesto asignado a la institución. ', ''),
(106, '<b>Delia Beatríz Valle</b> : Se manifiesta en contra de la ratificación, representando además a la bancada de LIBRE. Considera que no se puede ratificar algo a lo cual se le quiere hacer cambios. <br><b>Marco Antonio Andino</b> : Se manifiesta en contra de la ratificación, representando además a una parte de la bancada del Partido Liberal. <br><b>Augusto Domingo Cruz Asencio</b> : Se manifiesta a favor de la ratificación representando además la bancada del Partido Demócrata Cristiano. <br><b>Rasel Antonio Tomé Flores</b> : Se manifiesta en contra de la elevación a rango constitucional pero no de la PMOP en si. <br><b>Fatima Patricia Mena</b> : Se proclama en contra de la ratificación representando además a la bancada del PAC. <br><b>Edwin Roberto Pavón León</b> : Se manifiesta a favor de la ratificación. <br><b>Doris Gutiérrez</b> : Manifiesta que JOH tiene una agenda secreta y desea otorgarle mas atribuciones al Presidente de la República en las ZEDES, por tanto se manifiesta en contra de la ratificación. <br><b>Oscar Álvarez</b> : Se manifiesta a favor de la ratificación representando además a la bancada del Partido Nacional. ', ''),
(143, '<b>Rolando Dubón Bueso</b> : Solicita dispensa de debates.\n\nMoción aprobada. <br><b>Rasel Antonio Tomé Flores</b> : No esta de acuerdo con dispensa de debates. ', ''),
(156, '<b>Nery Orlando Reyes Hernández</b> : Solicita dispensa de debates.\n\nMoción aprobada. ', ''),
(157, '<b>Rasel Antonio Tomé Flores</b> : Cuestiona el por que exonerar de impuestos al adquirente del vehículo si el fin es recaudar mayor ingreso. <br><b>Gabriela Núñez Ennabe</b> : Le aclara a Rassel Tome que la razón para la exoneración es la falta de cumplimiento del Estado con sus obligaciones tributarias, sobre estos vehículos que fueron donados e inventariados al Estado, para posteriores subastas. <br><b>Mario Alonso Pérez López</b> : Solicita dispensa de debates.\n\nMoción aprobada. ', ''),
(122, '<b>Yury Cristhian Sabas Gutierrez</b> : solicitó dispensa de debates.\n\nMoción aprobada.  <br><b>César Humberto Agurcia López</b> : Se pronunció a favor de los ascensos, pero como bancada no están de acuerdo de apoyar personas que han tenido denuncias por violación de derechos humanos, también agregó se debe reformar el proceso de aprobación de ascensos.  <br><b>Wilfredo Paz Zúniga</b> : Se sumó a la petición de César Agurcia.  <br><b>Rasel Antonio Tomé Flores</b> : También se sumó a la petición de César Agurcia.  <br><b>Delia Beatríz Valle</b> : Se sumó a la petición de César Agurcia.  <br><b>Luis Rolando Redondo</b> : En contra del proceso por falta de transparencia en el mismo ya que no se brindó tiempo a las bancadas para razonar su voto.\n\nSe le retiró la palabra por estar fuera de orden.  ', ''),
(108, '<b>Carlos Roberto Ledezma Casco</b> : Solicito dispensa de debates. ', ''),
(107, '<b>Juan Orlando Hernandez </b> : Llevo solicitud de plebiscito acerca de la elevación a rango constitucional de la PMOP.\n\nNo quedo presentada al pleno, se despejara en la nueva legislatura. ', ''),
(97, '<b>Mario Alexander Ayala</b> : Solicito se suspenda la discusión de este contrato. <br><b>Lena Gutierrez</b> : Le manifestó a Mario Ayala que ya era el tercer debate por lo que su solicitud estaba fuera de lugar. ', ''),
(101, '<b>Cristhian Reniery Santamaría</b> : Opina que debe aclararse la definición "afro descendientes" y su aplicación como comunidad garifuna.\n\nMoción aprobada. <br><b>Pedro Rafael Alegría</b> : Pregunta cual es la definición del termino "derecho preferente". <br><b>Milton Jesús Puerto Oseguera</b> : Sugirió incluir la definición de "Emergencia Pesquera".\n\nMoción aprobada. <br><b>José Oswaldo Ramos Soto</b> : Sugirió a la comisión dictaminadora que se mejore condiciones de semántica.\n\nMoción aprobada. <br><b>Rasel Antonio Tomé Flores</b> : Solicita aclaración sobre definición del termino "procedimiento científico y técnico".\n <br><b>Edwin Roberto Pavón León</b> : Se manifestó a favor del termino "procedimiento científico y técnico" explicado por el Dr. Romeo Ucles. <br><b>Augusto Domingo Cruz Asencio</b> : Se manifestó a favor del termino "procedimiento científico y técnico" explicado por el Dr. Romeo Ucles. <br><b>José Oswaldo Ramos Soto</b> : Sugirió se incorpore en la definición "procedimiento científico y técnico" la frase "realizado por el ser humano".\n\nMoción aprobada.\n\nTambién sugirió que debería decir "extraer" en vez de "separar".\n\nMoción aprobada. <br><b>Edwin Roberto Pavón León</b> : Sugirió incorporar termino "pesca comercial".\n\nMoción aprobada. <br><b>Milton Jesús Puerto Oseguera</b> : Sugirió agregar conceptos de "pesca científica" y "pesca en alta mar".\n\nMoción aprobada. <br><b>José Oswaldo Ramos Soto</b> : Sugirió cambiar el termino "actividad pesquera" por "en protección de la fauna".\n\nMoción aprobada. \n ', ''),
(73, '<b>Delia Beatríz Valle</b> : Se unió a la moción y explico que en estos anuncios también se encuentran Jari Dixon, Manuel Zelaya, Luis Redondo y ella.  <br><b>David Guillermo Chávez Madison</b> : Opina que debe investigarse fuentes y medios electrónicos ya que Lena Gutierrez salio en una pag. con sus 2 hijos menores y fueron objeto de bullying.\n\nSe voto y se aprobó incorporar a moción original.  <br><b>Walter Alex Banegas</b> : Opina que se debe agregar que la Secretaria de DDHH ordene a la URSAC la cancelación de la personalidad jurídica de esta organización.\n\nSe voto y aprobó.  <br><b>Jari Dixon Herrera</b> : Opina que no se necesita investigar, con seguridad que atrás esta JOH  <br><b>Doris Gutiérrez</b> : Hace referencia a las expresiones de JOH pues la afectaron a ella y a sus compañeros por estar en contra de la Policia militar.\n\nPropuso se agregue que se investigue la denuncia interpuesta por 17 diputados. Esto no fue tomado en consideracion  <br><b>Elvia Argentina Valle</b> : Hace un recordatorio sobre la querella presentada para que JOH exponga pruebas sobre sus afirmaciones sobre los diputados en contra de la PMOP y que se incluya en la moción que los órganos gubernamentales actúen de oficio contra estas campañas.  <br><b>Fatima Patricia Mena</b> : Opina que se agregue petición para investigar el origen de los fondos de estas campañas y ponerle un termino para que las instituciones rindan cuentas.\n\nEsta moción fue aprobada.  ', ''),
(74, '<b>José Francisco Rivera Hernández</b> : No se escucho dentro de la lista para inauguración de aeródromos el de El Aguacate, Olancho. <br><b>Mario Alonso Pérez López</b> : Presento reconsideracion para incluir en la lista de aeródromos los ya construidos en Tela y La Ceiba para exonerarlos del Impuesto de Ganancia de Capital. ', ''),
(75, '<b>Carlos Roberto Ledezma Casco</b> : Solicito dispensa de debates. ', ''),
(80, '<b>Gladis Aurora López Calderón</b> : Solicito dispensa de debates.\n\nDicha solicitud fue aprobada. <br><b>Abel Benítez</b> : Exigió que se revise la situación de Yarumela y su alcantarillado al igual que Marcala.\n\nLa moción fue rechazada. ', ''),
(81, '<b>José Francisco Rivera Hernández</b> : Solicito dispensa de debate.\n\nMoción fue rechazada. ', ''),
(84, '<b>José Oswaldo Ramos Soto</b> : Agradecimiento al Abg. Jorge Maradiaga quien estuvo presente como asesor de la Comisión.  <br><b>Gabriela Núñez Ennabe</b> : Consulto como queda la figura del intermediario en el art. 4 que contiene las definiciones de la Ley.  <br><b>José Eduardo Coto</b> : Pregunto sobre el termino de facturacion  <br><b>Pedro Rafael Alegría</b> : Pidió explicación de la relación entre el Estado y empresas ya que en Honduras operan transnacionales de servicios de internet y debe existir garantía que el Estado mantendrá el control y seguridad en el manejo de transacciones  <br><b>Rasel Antonio Tomé Flores</b> : Como miembro de la Comisión Dictaminadora sugirió que se debe llevar la técnica legislativa leyendo cada concepto por separado  <br><b>Marlon Guillermo Lara Orellana</b> : Consulto que pasaría en el caso de usurpación de firmas. Que mecanismos habrá para la prevención del tema.  <br><b>Luis Rolando Redondo</b> : Sugiere que mensajes de datos se entienda como una actividad comercial y el intercambio de datos que están en 3 conceptos, se aglomeren en uno solo.\n\nRasel Tome despejo la duda como miembro de la Comisión Dictaminadora aclarando que están separadas en varios numerales.  <br><b>José Oswaldo Ramos Soto</b> : Realiza sugerencia de estilo.\n\nSugerencia aprobada. <br><b>Angel Dario Banegas Leiva</b> : Propone se sustituya la frase "llevar a cabo" por "para realizar" en art. 25.\n\nSugerencia aprobada. <br><b>José Oswaldo Ramos Soto</b> : Propone sustituir "prevalencia" por "preminencia" en art. 27.\n\nPropuesta aprobada. <br><b>Jose Perdomo </b> : Comento que por tener su base en el modelo de la ONU de 1996, el sistema de informática del cual se habla esta desfasado, también que en Honduras no tenemos la tipificación de los delitos informáticos, los cuales serán agregados en las reformas del Código Penal. <br><b>Edwin Roberto Pavón León</b> : Agradeció al pleno por la aprobación de esta ley. ', ''),
(85, '<b>Jeffrey Alexander Flores Chavarría</b> : Solicito dispensa de debates. <br><b>Walter Alex Banegas</b> : Sugiere se incluya dentro del proyecto una programación por parte de la Secretaria de Seguridad para que la gente sepa que día debe retornar por ella.\n\nLa moción fue aprobada. <br><b>Elvia Argentina Valle</b> : Opino se incluya también el canon de los antecedentes judiciales.\n\nMoción no aprobada. <br><b>Rasel Antonio Tomé Flores</b> : Se pronuncio a favor del proyecto. ', ''),
(92, '<b>Esdras Amado López</b> : Sugirió que debe incluirse moción presentada por el en sesión anterior.\n  <br><b>Lena Gutierrez</b> : Aclaro a Esdras Lopez que en la sesión anterior el presento una manifestación y no una moción y que por esa razón no aparece en el acta. Le sugirió que la vuelva a presentar como moción.  <br><b>Rasel Antonio Tomé Flores</b> : Opina que en el decreto aprobado en la sesión anterior sobre la dispensa de la tasa por tramites administrativos a menores de 25 años, que se agregue la palabra "reformar".  <br><b>Lena Gutierrez</b> : Le aclaro a Rassel Tome que la palabra reformar ya esta incluida.  ', ''),
(43, '<b>Jeffrey Alexander Flores Chavarría</b> : Solicitó dispensa de debates. <br><b>Walter Alex Banegas</b> : Sugiere se incluya dentro del proyecto: la inclusión de una programación por parte de la Secretaria de Seguridad sobre la entrega de las hojas de antecedentes, para que la gente sepa que día debe retornar por ella. (aprobada) <br><b>Elvia Argentina Valle</b> : Opinó se incluya también el canon de los antecedentes judiciales. (no aprobada) <br><b>Rasel Antonio Tomé Flores</b> : Se pronunció a favor. ', ''),
(63, '<b>Yury Cristhian Sabas Gutierrez</b> : Solicitó dispensa de debates. <br><b>César Humberto Agurcia López</b> : A favor de los ascensos,pero no están de acuerdo como bancada en apoyar personas que han tenido denuncias por violación de derechos humanos, en la misma postura Wilfredo Paz, Rassel Tome y Beatriz Valle, también opinaron se deben reformar los procesos de ascensos. ', ''),
(64, '<b>Gladis Aurora López Calderón</b> : Solicitó dispensa se debates. ', ''),
(65, '<b>José Francisco Rivera Hernández</b> : Solicitó dispensa de debate.  <br><b>Miguel Angel Navarro</b> : A favor.  <br><b>Mario Alexander Ayala</b> : A favor.  ', ''),
(67, '<b>Pedro Rafael Alegría</b> : Propone se tome en cuenta la sugerencia sobre la inclusión de comunidades no sólo étnicas, sino a aquellos que practican la pesca artesanal. ', ''),
(68, '<b>Walter Alex Banegas</b> : Intervención.  ', ''),
(69, '<b>Delia Beatríz Valle</b> : Se proclama en contra de la representación de la bancada del partido libre, ya que no se puede ratificar algo a lo cual se le puede hacer cambios.  <br><b>Marco Antonio Andino</b> : Se proclama en contra de la representación del partido liberal.  ', ''),
(24, '<b>Carlos Roberto Ledezma Casco</b> : Solicitó dispensa de debates. ', ''),
(25, '<b>Yury Cristhian Sabas Gutierrez</b> : Solicitó dispensa de debates. <br><b>César Humberto Agurcia López</b> : A favor de los ascensos, pero no esta de acuerdo como bancada en apoyar personas que han tenido denuncias por violación a los derechos humanos. <br><b>Wilfredo Paz Zúniga</b> : De acuerdo con la postura de César Agurcia. <br><b>Rasel Antonio Tomé Flores</b> : Opinó que se debe reformar el proceso de ascensos. <br><b>Delia Beatríz Valle</b> : De acuerdo con opinion de Rasel Tome. <br><b>Luis Rolando Redondo</b> : En contra del proceso, por falta de transparencia en el mismo, pues no se les brindo tiempo como bancada para razonar su voto. (Se le retiro la palabra por estar fuera de orden). ', ''),
(70, '<b>José Oswaldo Ramos Soto</b> : Dice que no es correcto utilizar la denominación indígenas y afrohondureños.\n\nSe genero debate a partir de esta intervención. <br><b>Milton Jesús Puerto Oseguera</b> : Como Presidente de la Comisión Dictaminadora dispuso que la ultima palabra sobre los termino indígena y afrohondureño, lo manejara la comisión de estilo. <br><b>Angel Dario Banegas Leiva</b> : Propuso sustituir las palabras "llegar a cabo" por "realizar" en el articulo 12. <br><b>Milton Jesús Puerto Oseguera</b> : Propone nueva redacción para el arte. 13 literales f y h.\n\nTambién agrego un nuevo párrafo en el art. 13 sobre que la Conopesca y la digipesca contaran con un asesor. <br><b>Pedro Rafael Alegría</b> : Agrego al arte. 13 inciso b para agregar protección a los pescadores artesanales nacionales ante la problemática de fuerza que ejercen los países vecinos <br><b>Francisco Javier Paz Laínea</b> : Consulto que pasara con los pequeños pescadores, si gozaran de seguridad social o solamente aquellos que laboren para una empresa especifica dado en el inciso g arte. 15. <br><b>Romeo Ucles </b> : Contesta la pregunta de Francisco Paz diciendo que eso esta contemplado en el nuevo proyecto de seguridad social. <br><b>José Oswaldo Ramos Soto</b> : Dice que la palabra "concurrencia" en el arte. 16, debe reemplazarse por el termino " tengan relación" <br><b>Pedro Rafael Alegría</b> : Propone se tome en cuenta las sugerencias sobre la inclusión de comunidades no solo étnicas, sino aquellos practican la pesca artesanal. <br><b>Jerry Dave Hynds Julio</b> : Propone la suspensión por no tener el material suficiente para defender los intereses del departamento que representa. <br><b>José Rodolfo Irías Navas</b> : Apoyo posición de Jerry Hynds <br><b>Wilfredo Paz Zúniga</b> : Se manifestó preocupado por la pesca artesanal para las comunidades aledañas al mar, de norte y sur. <br><b>Milton Jesús Puerto Oseguera</b> : Se manifestó a favor. <br><b>Lena Gutierrez</b> : Suspendió discusión como última oportunidad para que los diputados interesados en el tema se reúnan con la comisión dictaminadora. <br><b>Rasel Antonio Tomé Flores</b> : Se manifestó en contra de requisitos adicionales a pescadores artesanales, ya que obliga al contribuyente a incumplir la ley por falta de recursos para gestionar dichos requisitos. <br><b>Rafael Virgilio Padilla</b> : Apoyo la opinión de Rassel Tome sobre los nuevos requisitos para los pescadores artesanales. <br><b>David Armando Reyes</b> : Opina que debe agregarse que los requisitos nuevos aplican solamente a la pesca industrial. <br><b>Carlos Alfredo Lara Watson</b> : No esta de acuerdo con el agregado sugerido por David Reyes.\n\nFinalmente no fue considerado el agregado. ', ''),
(20, '<b>Lisandro Mauricio Arias Aquino</b> : policia. militar  ', ''),
(22, '<b>José Francisco Rivera Hernández</b> : No se escucho dentro de la lista del proyecto para inauguracion de aerodromos, los ya construidos en Tela, La Ceiba, así como excluir impuestos de ganacia de capital de los mismos. ', ''),
(23, '<b>José Francisco Rivera Hernández</b> : No se escuchó dentro de la lista del proyecto para inauguración de aeródromos el El Aguacate, Olancho. <br><b>Mario Alonso Pérez López</b> : Presentó reconsideración para incluir dentro de la lista de aeródromos los ya construidos en Tela, La Ceiba, así como excluir impuestos de ganancia de capital de los mismos. ', ''),
(39, '<b>Gabriela Núñez Ennabe</b> : Consulto como queda la figura del intermediario en el art. 4, sobre definiciones. <br><b>José Eduardo Coto</b> : Pregunto si el termino es facturación. <br><b>Pedro Rafael Alegría</b> : Pidió explicación de la relación del Estado y empresas, ya que en Honduras operan transnacionales de servicios de internet y debe existir garantía que el Estado mantendrá el control y seguridad en el manejo de estas transacciones. <br><b>Rasel Antonio Tomé Flores</b> : Como miembro de la Comisión sugirió que se hubiera llevado la técnica legislativa leyendo cada concepto por separado. <br><b>Luis Rolando Redondo</b> : Planteamiento para que mensaje de datos se entienda como actividad comercial, y el intercambio de datos aglomerando 3 conceptos en uno solo.\n\nAl respecto Rasel Tome aclaro que estan separadas en varios numerales. ', ''),
(32, '<b>Manuel Iván Fiallos Rodas</b> : test ', ''),
(28, '<b>Gladis Aurora López Calderón</b> : Solicitó dispensa de debates. <br><b>Abel Benítez</b> : Exige se vea situación de la comunidad de Yarumela y su alcantarillado, al igual que Marcala. ', ''),
(8, '<b>Delia Beatríz Valle</b> : hace la anotacion que en el art. 400 se hizo omision de las palabras Derechos de Servidumbre tal cual aparece en el Codigo, Oswaldo Ramos acepto la sugerencia y remitio la misma a la Comision de estilo para su correccion. ', ''),
(16, '<b>Manuel Zelaya Rosales</b> : prieba <br><b>Manuel Iván Fiallos Rodas</b> : otra prueba <br><b>Hugo Ricardo Hernández</b> : djdbdjdndjdjd\ndjdbdjdndjdjd\ndndmdmmd\n\n\ninició\ndifundir\ndjdbdjdndjdjd\ndjdbdjdndjdjd\ndndmdmmd\ndjdbdjdndjdjd\n\n\nfin\n\ndndmdmmd\ndjdbdjdndjdjd\nJudith\n\nfinal  ', ''),
(18, '<b>Mauricio Oliva</b> : sin conexion  <br><b>Mauricio Oliva</b> : Hola\namigos\nde\nCuba libre\nque\n\n\n\nestán\nal otro\nlado\ndel\nCaribe\n <br><b>Mauricio Oliva</b> : gialala <br><b>Lisandro Mauricio Arias Aquino</b> : maur. \n\npolicia \n\nmilitar \n\n\nde\nhonduras ', ''),
(4, '<b>Lena Gutierrez</b> : Sugiere que los diputados de FM se reunan y den forma a la idea para ayudar a los afectados por el incendio. <br><b>Edwin Roberto Pavón León</b> : Aclara que una mocion debe tenerbuna idea especifica o solicitud ya sea verbal o escrita. <br><b>Antonio César Rivera Callejas</b> : Consulta sobre el fondo, ¿si es moción, manifestación o charla? <br><b>Delia Beatríz Valle</b> : agrega que debe incluirse que se aprueben 3 millones de Lempiras para ayuda a los afectados del incendio. <br><b>Lena Gutierrez</b> : Aclaro la idea de Beatriz Valle debe ser presentado vía decreto. <br><b>José Oswaldo Ramos Soto</b> : Expreso que debe presentarse decreto que obligue a que las compañías distribuidoras de gas LPG lo realicen en tanques de la calidad del primer mundo así como un fondo de prevención de incidentes de este tipo. <br><b>Yury Cristhian Sabas Gutierrez</b> : Respalda la propuesta para revisar los protocolos de atención de emergencia. <br><b>Elvia Argentina Valle</b> : Los hospitales  no cuentan con los recursos necesarios por eso creo que se debe agregar que venga al congreso nacional la ministra de salud para que explique que se puede hacer para ese tipo de situación del por que del desabastecimiento de medicamentos. ', ''),
(2, '<b>Manuel Zelaya Rosales</b> : manuel  ', ''),
(3, '<b>José Tomás Zambrano Molina</b> : Que se agregue a la moción que no sea una simple nota, sino que la comisión especial de energía, mas los diputados de los departamentos afectados por la no aplicación de esta disposición con la gerencia de la ENEE. ', ''),
(1, '<b>Manuel Zelaya Rosales</b> : prueba <br><b>Luis René Oliva</b> : otra prueba ', ''),
(4, '<b>Lena Gutierrez</b> : Sugiere que los diputados de FM se reunan y den forma a la idea para ayudar a los afectados por el incendio. <br><b>Edwin Roberto Pavón León</b> : Aclara que una mocion debe tenerbuna idea especifica o solicitud ya sea verbal o escrita. <br><b>Antonio César Rivera Callejas</b> : Consulta sobre el fondo, ¿si es moción, manifestación o charla? <br><b>Delia Beatríz Valle</b> : agrega que debe incluirse que se aprueben 3 millones de Lempiras para ayuda a los afectados del incendio. <br><b>Lena Gutierrez</b> : Aclaro la idea de Beatriz Valle debe ser presentado vía decreto. <br><b>José Oswaldo Ramos Soto</b> : Expreso que debe presentarse decreto que obligue a que las compañías distribuidoras de gas LPG lo realicen en tanques de la calidad del primer mundo así como un fondo de prevención de incidentes de este tipo. <br><b>Yury Cristhian Sabas Gutierrez</b> : Respalda la propuesta para revisar los protocolos de atención de emergencia. <br><b>Elvia Argentina Valle</b> : Los hospitales  no cuentan con los recursos necesarios por eso creo que se debe agregar que venga al congreso nacional la ministra de salud para que explique que se puede hacer para ese tipo de situación del por que del desabastecimiento de medicamentos. ', 'd'),
(8, '<b>Delia Beatríz Valle</b> : hace la anotacion que en el art. 400 se hizo omision de las palabras Derechos de Servidumbre tal cual aparece en el Codigo, Oswaldo Ramos acepto la sugerencia y remitio la misma a la Comision de estilo para su correccion. ', 'd'),
(16, '<b>Manuel Zelaya Rosales</b> : prieba <br><b>Manuel Iván Fiallos Rodas</b> : otra prueba <br><b>Hugo Ricardo Hernández</b> : djdbdjdndjdjd\ndjdbdjdndjdjd\ndndmdmmd\n\n\ninició\ndifundir\ndjdbdjdndjdjd\ndjdbdjdndjdjd\ndndmdmmd\ndjdbdjdndjdjd\n\n\nfin\n\ndndmdmmd\ndjdbdjdndjdjd\nJudith\n\nfinal  ', 'd'),
(18, '<b>Mauricio Oliva</b> : sin conexion  <br><b>Mauricio Oliva</b> : Hola\namigos\nde\nCuba libre\nque\n\n\n\nestán\nal otro\nlado\ndel\nCaribe\n <br><b>Mauricio Oliva</b> : gialala <br><b>Lisandro Mauricio Arias Aquino</b> : maur. \n\npolicia \n\nmilitar \n\n\nde\nhonduras ', 'd'),
(20, '<b>Lisandro Mauricio Arias Aquino</b> : policia. militar  ', 'd'),
(22, '<b>José Francisco Rivera Hernández</b> : No se escucho dentro de la lista del proyecto para inauguracion de aerodromos, los ya construidos en Tela, La Ceiba, así como excluir impuestos de ganacia de capital de los mismos. ', 'd'),
(23, '<b>José Francisco Rivera Hernández</b> : No se escuchó dentro de la lista del proyecto para inauguración de aeródromos el El Aguacate, Olancho. <br><b>Mario Alonso Pérez López</b> : Presentó reconsideración para incluir dentro de la lista de aeródromos los ya construidos en Tela, La Ceiba, así como excluir impuestos de ganancia de capital de los mismos. ', 'd'),
(24, '<b>Carlos Roberto Ledezma Casco</b> : Solicitó dispensa de debates. ', 'd'),
(25, '<b>Yury Cristhian Sabas Gutierrez</b> : Solicitó dispensa de debates. <br><b>César Humberto Agurcia López</b> : A favor de los ascensos, pero no esta de acuerdo como bancada en apoyar personas que han tenido denuncias por violación a los derechos humanos. <br><b>Wilfredo Paz Zúniga</b> : De acuerdo con la postura de César Agurcia. <br><b>Rasel Antonio Tomé Flores</b> : Opinó que se debe reformar el proceso de ascensos. <br><b>Delia Beatríz Valle</b> : De acuerdo con opinion de Rasel Tome. <br><b>Luis Rolando Redondo</b> : En contra del proceso, por falta de transparencia en el mismo, pues no se les brindo tiempo como bancada para razonar su voto. (Se le retiro la palabra por estar fuera de orden). ', 'd'),
(28, '<b>Gladis Aurora López Calderón</b> : Solicitó dispensa de debates. <br><b>Abel Benítez</b> : Exige se vea situación de la comunidad de Yarumela y su alcantarillado, al igual que Marcala. ', 'd'),
(32, '<b>Manuel Iván Fiallos Rodas</b> : test ', 'd'),
(39, '<b>Gabriela Núñez Ennabe</b> : Consulto como queda la figura del intermediario en el art. 4, sobre definiciones. <br><b>José Eduardo Coto</b> : Pregunto si el termino es facturación. <br><b>Pedro Rafael Alegría</b> : Pidió explicación de la relación del Estado y empresas, ya que en Honduras operan transnacionales de servicios de internet y debe existir garantía que el Estado mantendrá el control y seguridad en el manejo de estas transacciones. <br><b>Rasel Antonio Tomé Flores</b> : Como miembro de la Comisión sugirió que se hubiera llevado la técnica legislativa leyendo cada concepto por separado. <br><b>Luis Rolando Redondo</b> : Planteamiento para que mensaje de datos se entienda como actividad comercial, y el intercambio de datos aglomerando 3 conceptos en uno solo.\n\nAl respecto Rasel Tome aclaro que estan separadas en varios numerales. ', 'd'),
(43, '<b>Jeffrey Alexander Flores Chavarría</b> : Solicitó dispensa de debates. <br><b>Walter Alex Banegas</b> : Sugiere se incluya dentro del proyecto: la inclusión de una programación por parte de la Secretaria de Seguridad sobre la entrega de las hojas de antecedentes, para que la gente sepa que día debe retornar por ella. (aprobada) <br><b>Elvia Argentina Valle</b> : Opinó se incluya también el canon de los antecedentes judiciales. (no aprobada) <br><b>Rasel Antonio Tomé Flores</b> : Se pronunció a favor. ', 'd'),
(63, '<b>Yury Cristhian Sabas Gutierrez</b> : Solicitó dispensa de debates. <br><b>César Humberto Agurcia López</b> : A favor de los ascensos,pero no están de acuerdo como bancada en apoyar personas que han tenido denuncias por violación de derechos humanos, en la misma postura Wilfredo Paz, Rassel Tome y Beatriz Valle, también opinaron se deben reformar los procesos de ascensos. ', 'd'),
(64, '<b>Gladis Aurora López Calderón</b> : Solicitó dispensa se debates. ', 'd'),
(65, '<b>José Francisco Rivera Hernández</b> : Solicitó dispensa de debate.  <br><b>Miguel Angel Navarro</b> : A favor.  <br><b>Mario Alexander Ayala</b> : A favor.  ', 'd'),
(67, '<b>Pedro Rafael Alegría</b> : Propone se tome en cuenta la sugerencia sobre la inclusión de comunidades no sólo étnicas, sino a aquellos que practican la pesca artesanal. ', 'd'),
(68, '<b>Walter Alex Banegas</b> : Intervención.  ', 'd'),
(69, '<b>Delia Beatríz Valle</b> : Se proclama en contra de la representación de la bancada del partido libre, ya que no se puede ratificar algo a lo cual se le puede hacer cambios.  <br><b>Marco Antonio Andino</b> : Se proclama en contra de la representación del partido liberal.  ', 'd'),
(70, '<b>José Oswaldo Ramos Soto</b> : Dice que no es correcto utilizar la denominación indígenas y afrohondureños.\n\nSe genero debate a partir de esta intervención. <br><b>Milton Jesús Puerto Oseguera</b> : Como Presidente de la Comisión Dictaminadora dispuso que la ultima palabra sobre los termino indígena y afrohondureño, lo manejara la comisión de estilo. <br><b>Angel Dario Banegas Leiva</b> : Propuso sustituir las palabras "llegar a cabo" por "realizar" en el articulo 12. <br><b>Milton Jesús Puerto Oseguera</b> : Propone nueva redacción para el arte. 13 literales f y h.\n\nTambién agrego un nuevo párrafo en el art. 13 sobre que la Conopesca y la digipesca contaran con un asesor. <br><b>Pedro Rafael Alegría</b> : Agrego al arte. 13 inciso b para agregar protección a los pescadores artesanales nacionales ante la problemática de fuerza que ejercen los países vecinos <br><b>Francisco Javier Paz Laínea</b> : Consulto que pasara con los pequeños pescadores, si gozaran de seguridad social o solamente aquellos que laboren para una empresa especifica dado en el inciso g arte. 15. <br><b>Romeo Ucles </b> : Contesta la pregunta de Francisco Paz diciendo que eso esta contemplado en el nuevo proyecto de seguridad social. <br><b>José Oswaldo Ramos Soto</b> : Dice que la palabra "concurrencia" en el arte. 16, debe reemplazarse por el termino " tengan relación" <br><b>Pedro Rafael Alegría</b> : Propone se tome en cuenta las sugerencias sobre la inclusión de comunidades no solo étnicas, sino aquellos practican la pesca artesanal. <br><b>Jerry Dave Hynds Julio</b> : Propone la suspensión por no tener el material suficiente para defender los intereses del departamento que representa. <br><b>José Rodolfo Irías Navas</b> : Apoyo posición de Jerry Hynds <br><b>Wilfredo Paz Zúniga</b> : Se manifestó preocupado por la pesca artesanal para las comunidades aledañas al mar, de norte y sur. <br><b>Milton Jesús Puerto Oseguera</b> : Se manifestó a favor. <br><b>Lena Gutierrez</b> : Suspendió discusión como última oportunidad para que los diputados interesados en el tema se reúnan con la comisión dictaminadora. <br><b>Rasel Antonio Tomé Flores</b> : Se manifestó en contra de requisitos adicionales a pescadores artesanales, ya que obliga al contribuyente a incumplir la ley por falta de recursos para gestionar dichos requisitos. <br><b>Rafael Virgilio Padilla</b> : Apoyo la opinión de Rassel Tome sobre los nuevos requisitos para los pescadores artesanales. <br><b>David Armando Reyes</b> : Opina que debe agregarse que los requisitos nuevos aplican solamente a la pesca industrial. <br><b>Carlos Alfredo Lara Watson</b> : No esta de acuerdo con el agregado sugerido por David Reyes.\n\nFinalmente no fue considerado el agregado. ', 'd'),
(73, '<b>Delia Beatríz Valle</b> : Se unió a la moción y explico que en estos anuncios también se encuentran Jari Dixon, Manuel Zelaya, Luis Redondo y ella.  <br><b>David Guillermo Chávez Madison</b> : Opina que debe investigarse fuentes y medios electrónicos ya que Lena Gutierrez salio en una pag. con sus 2 hijos menores y fueron objeto de bullying.\n\nSe voto y se aprobó incorporar a moción original.  <br><b>Walter Alex Banegas</b> : Opina que se debe agregar que la Secretaria de DDHH ordene a la URSAC la cancelación de la personalidad jurídica de esta organización.\n\nSe voto y aprobó.  <br><b>Jari Dixon Herrera</b> : Opina que no se necesita investigar, con seguridad que atrás esta JOH  <br><b>Doris Gutiérrez</b> : Hace referencia a las expresiones de JOH pues la afectaron a ella y a sus compañeros por estar en contra de la Policia militar.\n\nPropuso se agregue que se investigue la denuncia interpuesta por 17 diputados. Esto no fue tomado en consideracion  <br><b>Elvia Argentina Valle</b> : Hace un recordatorio sobre la querella presentada para que JOH exponga pruebas sobre sus afirmaciones sobre los diputados en contra de la PMOP y que se incluya en la moción que los órganos gubernamentales actúen de oficio contra estas campañas.  <br><b>Fatima Patricia Mena</b> : Opina que se agregue petición para investigar el origen de los fondos de estas campañas y ponerle un termino para que las instituciones rindan cuentas.\n\nEsta moción fue aprobada.  ', 'd'),
(74, '<b>José Francisco Rivera Hernández</b> : No se escucho dentro de la lista para inauguración de aeródromos el de El Aguacate, Olancho. <br><b>Mario Alonso Pérez López</b> : Presento reconsideracion para incluir en la lista de aeródromos los ya construidos en Tela y La Ceiba para exonerarlos del Impuesto de Ganancia de Capital. ', 'd'),
(75, '<b>Carlos Roberto Ledezma Casco</b> : Solicito dispensa de debates. ', 'd'),
(80, '<b>Gladis Aurora López Calderón</b> : Solicito dispensa de debates.\n\nDicha solicitud fue aprobada. <br><b>Abel Benítez</b> : Exigió que se revise la situación de Yarumela y su alcantarillado al igual que Marcala.\n\nLa moción fue rechazada. ', 'd'),
(81, '<b>José Francisco Rivera Hernández</b> : Solicito dispensa de debate.\n\nMoción fue rechazada. ', 'd'),
(84, '<b>José Oswaldo Ramos Soto</b> : Agradecimiento al Abg. Jorge Maradiaga quien estuvo presente como asesor de la Comisión.  <br><b>Gabriela Núñez Ennabe</b> : Consulto como queda la figura del intermediario en el art. 4 que contiene las definiciones de la Ley.  <br><b>José Eduardo Coto</b> : Pregunto sobre el termino de facturacion  <br><b>Pedro Rafael Alegría</b> : Pidió explicación de la relación entre el Estado y empresas ya que en Honduras operan transnacionales de servicios de internet y debe existir garantía que el Estado mantendrá el control y seguridad en el manejo de transacciones  <br><b>Rasel Antonio Tomé Flores</b> : Como miembro de la Comisión Dictaminadora sugirió que se debe llevar la técnica legislativa leyendo cada concepto por separado  <br><b>Marlon Guillermo Lara Orellana</b> : Consulto que pasaría en el caso de usurpación de firmas. Que mecanismos habrá para la prevención del tema.  <br><b>Luis Rolando Redondo</b> : Sugiere que mensajes de datos se entienda como una actividad comercial y el intercambio de datos que están en 3 conceptos, se aglomeren en uno solo.\n\nRasel Tome despejo la duda como miembro de la Comisión Dictaminadora aclarando que están separadas en varios numerales.  <br><b>José Oswaldo Ramos Soto</b> : Realiza sugerencia de estilo.\n\nSugerencia aprobada. <br><b>Angel Dario Banegas Leiva</b> : Propone se sustituya la frase "llevar a cabo" por "para realizar" en art. 25.\n\nSugerencia aprobada. <br><b>José Oswaldo Ramos Soto</b> : Propone sustituir "prevalencia" por "preminencia" en art. 27.\n\nPropuesta aprobada. <br><b>Jose Perdomo </b> : Comento que por tener su base en el modelo de la ONU de 1996, el sistema de informática del cual se habla esta desfasado, también que en Honduras no tenemos la tipificación de los delitos informáticos, los cuales serán agregados en las reformas del Código Penal. <br><b>Edwin Roberto Pavón León</b> : Agradeció al pleno por la aprobación de esta ley. ', 'd'),
(85, '<b>Jeffrey Alexander Flores Chavarría</b> : Solicito dispensa de debates. <br><b>Walter Alex Banegas</b> : Sugiere se incluya dentro del proyecto una programación por parte de la Secretaria de Seguridad para que la gente sepa que día debe retornar por ella.\n\nLa moción fue aprobada. <br><b>Elvia Argentina Valle</b> : Opino se incluya también el canon de los antecedentes judiciales.\n\nMoción no aprobada. <br><b>Rasel Antonio Tomé Flores</b> : Se pronuncio a favor del proyecto. ', 'd'),
(92, '<b>Esdras Amado López</b> : Sugirió que debe incluirse moción presentada por el en sesión anterior.\n  <br><b>Lena Gutierrez</b> : Aclaro a Esdras Lopez que en la sesión anterior el presento una manifestación y no una moción y que por esa razón no aparece en el acta. Le sugirió que la vuelva a presentar como moción.  <br><b>Rasel Antonio Tomé Flores</b> : Opina que en el decreto aprobado en la sesión anterior sobre la dispensa de la tasa por tramites administrativos a menores de 25 años, que se agregue la palabra "reformar".  <br><b>Lena Gutierrez</b> : Le aclaro a Rassel Tome que la palabra reformar ya esta incluida.  ', 'd'),
(97, '<b>Mario Alexander Ayala</b> : Solicito se suspenda la discusión de este contrato. <br><b>Lena Gutierrez</b> : Le manifestó a Mario Ayala que ya era el tercer debate por lo que su solicitud estaba fuera de lugar. ', 'd'),
(101, '<b>Cristhian Reniery Santamaría</b> : Opina que debe aclararse la definición "afro descendientes" y su aplicación como comunidad garifuna.\n\nMoción aprobada. <br><b>Pedro Rafael Alegría</b> : Pregunta cual es la definición del termino "derecho preferente". <br><b>Milton Jesús Puerto Oseguera</b> : Sugirió incluir la definición de "Emergencia Pesquera".\n\nMoción aprobada. <br><b>José Oswaldo Ramos Soto</b> : Sugirió a la comisión dictaminadora que se mejore condiciones de semántica.\n\nMoción aprobada. <br><b>Rasel Antonio Tomé Flores</b> : Solicita aclaración sobre definición del termino "procedimiento científico y técnico".\n <br><b>Edwin Roberto Pavón León</b> : Se manifestó a favor del termino "procedimiento científico y técnico" explicado por el Dr. Romeo Ucles. <br><b>Augusto Domingo Cruz Asencio</b> : Se manifestó a favor del termino "procedimiento científico y técnico" explicado por el Dr. Romeo Ucles. <br><b>José Oswaldo Ramos Soto</b> : Sugirió se incorpore en la definición "procedimiento científico y técnico" la frase "realizado por el ser humano".\n\nMoción aprobada.\n\nTambién sugirió que debería decir "extraer" en vez de "separar".\n\nMoción aprobada. <br><b>Edwin Roberto Pavón León</b> : Sugirió incorporar termino "pesca comercial".\n\nMoción aprobada. <br><b>Milton Jesús Puerto Oseguera</b> : Sugirió agregar conceptos de "pesca científica" y "pesca en alta mar".\n\nMoción aprobada. <br><b>José Oswaldo Ramos Soto</b> : Sugirió cambiar el termino "actividad pesquera" por "en protección de la fauna".\n\nMoción aprobada. \n ', 'd'),
(106, '<b>Delia Beatríz Valle</b> : Se manifiesta en contra de la ratificación, representando además a la bancada de LIBRE. Considera que no se puede ratificar algo a lo cual se le quiere hacer cambios. <br><b>Marco Antonio Andino</b> : Se manifiesta en contra de la ratificación, representando además a una parte de la bancada del Partido Liberal. <br><b>Augusto Domingo Cruz Asencio</b> : Se manifiesta a favor de la ratificación representando además la bancada del Partido Demócrata Cristiano. <br><b>Rasel Antonio Tomé Flores</b> : Se manifiesta en contra de la elevación a rango constitucional pero no de la PMOP en si. <br><b>Fatima Patricia Mena</b> : Se proclama en contra de la ratificación representando además a la bancada del PAC. <br><b>Edwin Roberto Pavón León</b> : Se manifiesta a favor de la ratificación. <br><b>Doris Gutiérrez</b> : Manifiesta que JOH tiene una agenda secreta y desea otorgarle mas atribuciones al Presidente de la República en las ZEDES, por tanto se manifiesta en contra de la ratificación. <br><b>Oscar Álvarez</b> : Se manifiesta a favor de la ratificación representando además a la bancada del Partido Nacional. ', 'd'),
(107, '<b>Juan Orlando Hernandez </b> : Llevo solicitud de plebiscito acerca de la elevación a rango constitucional de la PMOP.\n\nNo quedo presentada al pleno, se despejara en la nueva legislatura. ', 'd'),
(108, '<b>Carlos Roberto Ledezma Casco</b> : Solicito dispensa de debates. ', 'd'),
(122, '<b>Yury Cristhian Sabas Gutierrez</b> : solicitó dispensa de debates.\n\nMoción aprobada.  <br><b>César Humberto Agurcia López</b> : Se pronunció a favor de los ascensos, pero como bancada no están de acuerdo de apoyar personas que han tenido denuncias por violación de derechos humanos, también agregó se debe reformar el proceso de aprobación de ascensos.  <br><b>Wilfredo Paz Zúniga</b> : Se sumó a la petición de César Agurcia.  <br><b>Rasel Antonio Tomé Flores</b> : También se sumó a la petición de César Agurcia.  <br><b>Delia Beatríz Valle</b> : Se sumó a la petición de César Agurcia.  <br><b>Luis Rolando Redondo</b> : En contra del proceso por falta de transparencia en el mismo ya que no se brindó tiempo a las bancadas para razonar su voto.\n\nSe le retiró la palabra por estar fuera de orden.  ', 'd'),
(142, '<b>Pedro Rafael Alegría</b> : Consulta por sanciones a empresas que tienen exenciones fiscales a sus impuestos amparados en mala interpretación de la ley. <br><b>Carlos Alfredo Lara Watson</b> : Aclara que estas reformas a la Ley para la Defensa y Promoción de la Competencia afectaran a la Comisión para la Defensa y Promoción de la Competencia y no la competitividad en si. <br><b>Rasel Antonio Tomé Flores</b> : Aclara que la ley viene a dar medios a la CDPC para que cumpla sus funciones que a la fecha aun no ha podido realizar a plenitud. <br><b>Gabriela Núñez Ennabe</b> : Recomienda que el 100 % de la recaudación no sea destinado a la CDPC, sino solo el % definido anualmente por la SEFIN mediante el Presupuesto General.\n\nMoción aprobada. <br><b>Rasel Antonio Tomé Flores</b> : Pide aclaración sobre el monto que sera trasladado luego de ser aprobada la sugerencia de la diputada Gabriela Nuñez, ya que no sera trasladado el 100 %. <br><b>Representante de la CDPC </b> : Manifiesta que la CDPC es un ente autónomo y que por tanto las recaudaciones no deberían ser administradas por la SEFIN. Actualmente la CDPC se ha visto limitada por el bajo presupuesto asignado a la institución. ', 'd'),
(143, '<b>Rolando Dubón Bueso</b> : Solicita dispensa de debates.\n\nMoción aprobada. <br><b>Rasel Antonio Tomé Flores</b> : No esta de acuerdo con dispensa de debates. ', 'd'),
(156, '<b>Nery Orlando Reyes Hernández</b> : Solicita dispensa de debates.\n\nMoción aprobada. ', 'd'),
(157, '<b>Rasel Antonio Tomé Flores</b> : Cuestiona el por que exonerar de impuestos al adquirente del vehículo si el fin es recaudar mayor ingreso. <br><b>Gabriela Núñez Ennabe</b> : Le aclara a Rassel Tome que la razón para la exoneración es la falta de cumplimiento del Estado con sus obligaciones tributarias, sobre estos vehículos que fueron donados e inventariados al Estado, para posteriores subastas. <br><b>Mario Alonso Pérez López</b> : Solicita dispensa de debates.\n\nMoción aprobada. ', 'd'),
(158, '<b>Jari Dixon Herrera</b> : Se pronuncia en contra ya que no se esta dando el tiempo prometido el día anterior para discutir este proyecto en 3 debates. Lamenta que cuestiones con interés personal se toman como emergencia y proyectos con real interés de la población están engavetados. <br><b>María Aracely Leiva Peña</b> : Se pronuncio a favor del proyecto. <br><b>Gabriela Núñez Ennabe</b> : Se pronuncio a favor del proyecto. <br><b>Román Villeda Aguilar</b> : Se pronuncio a favor del proyecto. <br><b>Augusto Domingo Cruz Asencio</b> : Se pronuncio en contra del proyecto. <br><b>Edwin Roberto Pavón León</b> : Se pronuncio a favor del proyecto. <br><b>Jaime Enrique Villegas</b> : Se pronuncio a favor del proyecto. ', 'd'),
(167, '<b>Manuel Zelaya Rosales</b> : policia militar <br><b>Manuel Zelaya Rosales</b> : policia militar ', 'd'),
(171, '<b>Manuel Zelaya Rosales</b> : policia militar <br><b>Manuel Zelaya Rosales</b> : alacena', 'd'),
(172, '<b>Manuel Zelaya Rosales</b> : prueba a  ', 'd'),
(174, '<b>Manuel Zelaya Rosales</b> : policia militar <br><b>Diana Patricia Urbina Soto</b> : pturba ', 'd'),
(175, '<b>Manuel Zelaya Rosales</b> : policia <br><b>Manuel Zelaya Rosales</b> : prueba a ', 'd'),
(176, '<b>César Enrique Hendal Fernández</b> : hgf <br><b>Walter Alex Banegas</b> : hgfc ', 'd'),
(187, '<b>Lisandro Mauricio Arias Aquino</b> : policia militar  ', 'd'),
(189, '<b>José Oswaldo Ramos Soto</b> : nueva policia militar <br><b>Ana Joselina Fortín</b> : vieja policia militar ', 'd'),
(190, '<b>Hugo Ricardo Hernández</b> : proyecto 1 policia militar  <br><b>Anibal Javier Cálix</b> : intervención 2 policia militar <br><b>Carlos Alfredo Lara Watson</b> : intervención 3 policia militar ', 'd'),
(191, '<b>Fredy Renán Najera Hernández</b> : policia militar nacional <br><b>Gerardo Tulio Martínez Pineda</b> : guiaba policia militar ', 'd'),
(195, '<b>Manuel Zelaya Rosales</b> : mirador policia ', 'd'),
(71, '', 'd'),
(72, '', 'd'),
(76, '', 'd'),
(77, '', 'd'),
(78, '', 'd'),
(79, '', 'd'),
(82, '', 'd'),
(83, '', 'd'),
(86, '', 'd'),
(87, '', 'd'),
(88, '', 'd'),
(89, '', 'd'),
(90, '', 'd'),
(91, '', 'd'),
(93, '', 'd'),
(94, '', 'd'),
(95, '', 'd'),
(96, '', 'd'),
(98, '', 'd'),
(99, '', 'd'),
(100, '', 'd'),
(102, '', 'd'),
(103, '', 'd'),
(104, '', 'd'),
(109, '', 'd'),
(112, '', 'd'),
(113, '', 'd'),
(116, '', 'd'),
(120, '', 'd'),
(121, '', 'd'),
(123, '', 'd'),
(124, '', 'd'),
(125, '', 'd'),
(127, '', 'd'),
(130, '', 'd'),
(147, '', 'd'),
(153, '', 'd'),
(159, '', 'd'),
(166, '', 'd'),
(168, '', 'd'),
(169, '', 'd'),
(170, '', 'd'),
(173, '', 'd'),
(177, '', 'd'),
(178, '', 'd'),
(179, '', 'd'),
(183, '', 'd'),
(184, '', 'd'),
(185, '', 'd'),
(186, '', 'd'),
(188, '', 'd'),
(192, '', 'd'),
(193, '', 'd'),
(194, '', 'd'),
(192, '', 'malcolm'),
(193, '', 'malcolm'),
(194, '', 'malcolm');

-- --------------------------------------------------------

--
-- Table structure for table `reporteProyectosInternecion`
--

CREATE TABLE IF NOT EXISTS `reporteProyectosInternecion` (
  `id_sesion_proyecto` tinyint(4) NOT NULL,
  `descripcion` varchar(10000) NOT NULL,
  `usuario` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reporteProyectosInternecion`
--

INSERT INTO `reporteProyectosInternecion` (`id_sesion_proyecto`, `descripcion`, `usuario`) VALUES
(1, '<b>Manuel Zelaya Rosales</b> : prueba </br><b>Luis René Oliva</b> : otra prueba ', 'john'),
(2, '<b>Manuel Zelaya Rosales</b> : manuel  ', 'john'),
(3, '<b>José Tomás Zambrano Molina</b> : Que se agregue a la moción que no sea una simple nota, sino que la comisión especial de energía, mas los diputados de los departamentos afectados por la no aplicación de esta disposición con la gerencia de la ENEE. ', 'john'),
(4, '<b>Lena Gutierrez</b> : Sugiere que los diputados de FM se reunan y den forma a la idea para ayudar a los afectados por el incendio. </br><b>Edwin Roberto Pavón León</b> : Aclara que una mocion debe tenerbuna idea especifica o solicitud ya sea verbal o escrita. </br><b>Antonio César Rivera Callejas</b> : Consulta sobre el fondo, ¿si es moción, manifestación o charla? </br><b>Delia Beatríz Valle</b> : agrega que debe incluirse que se aprueben 3 millones de Lempiras para ayuda a los afectados del incendio. </br><b>Lena Gutierrez</b> : Aclaro la idea de Beatriz Valle debe ser presentado vía decreto. </br><b>José Oswaldo Ramos Soto</b> : Expreso que debe presentarse decreto que obligue a que las compañías distribuidoras de gas LPG lo realicen en tanques de la calidad del primer mundo así como un fondo de prevención de incidentes de este tipo. </br><b>Yury Cristhian Sabas Gutierrez</b> : Respalda la propuesta para revisar los protocolos de atención de emergencia. </br><b>Elvia Argentina Valle</b> : Los hospitales ', 'john'),
(8, '<b>Delia Beatríz Valle</b> : hace la anotacion que en el art. 400 se hizo omision de las palabras Derechos de Servidumbre tal cual aparece en el Codigo, Oswaldo Ramos acepto la sugerencia y remitio la misma a la Comision de estilo para su correccion. ', 'john'),
(16, '<b>Manuel Zelaya Rosales</b> : prieba </br><b>Manuel Iván Fiallos Rodas</b> : otra prueba </br><b>Hugo Ricardo Hernández</b> : djdbdjdndjdjd\ndjdbdjdndjdjd\ndndmdmmd\n\n\ninició\ndifundir\ndjdbdjdndjdjd\ndjdbdjdndjdjd\ndndmdmmd\ndjdbdjdndjdjd\n\n\nfin\n\ndndmdmmd\ndjdbdjdndjdjd\nJudith\n\nfinal  ', 'john'),
(18, '<b>Mauricio Oliva</b> : sin conexion  </br><b>Mauricio Oliva</b> : Hola\namigos\nde\nCuba libre\nque\n\n\n\nestán\nal otro\nlado\ndel\nCaribe\n </br><b>Mauricio Oliva</b> : gialala </br><b>Lisandro Mauricio Arias Aquino</b> : maur. \n\npolicia \n\nmilitar \n\n\nde\nhonduras ', 'john'),
(20, '<b>Lisandro Mauricio Arias Aquino</b> : policia. militar  ', 'john'),
(22, '<b>José Francisco Rivera Hernández</b> : No se escucho dentro de la lista del proyecto para inauguracion de aerodromos, los ya construidos en Tela, La Ceiba, así como excluir impuestos de ganacia de capital de los mismos. ', 'john'),
(23, '<b>José Francisco Rivera Hernández</b> : No se escuchó dentro de la lista del proyecto para inauguración de aeródromos el El Aguacate, Olancho. </br><b>Mario Alonso Pérez López</b> : Presentó reconsideración para incluir dentro de la lista de aeródromos los ya construidos en Tela, La Ceiba, así como excluir impuestos de ganancia de capital de los mismos. ', 'john'),
(24, '<b>Carlos Roberto Ledezma Casco</b> : Solicitó dispensa de debates. ', 'john'),
(25, '<b>Yury Cristhian Sabas Gutierrez</b> : Solicitó dispensa de debates. </br><b>César Humberto Agurcia</b> : A favor de los ascensos, pero no esta de acuerdo como bancada en apoyar personas que han tenido denuncias por violación a los derechos humanos. </br><b>Wilfredo Paz Zúñiga</b> : De acuerdo con la postura de César Agurcia. </br><b>Rasel Antonio Tomé Flores</b> : Opinó que se debe reformar el proceso de ascensos. </br><b>Delia Beatríz Valle</b> : De acuerdo con opinion de Rasel Tome. </br><b>Luis Rolando Redondo</b> : En contra del proceso, por falta de transparencia en el mismo, pues no se les brindo tiempo como bancada para razonar su voto. (Se le retiro la palabra por estar fuera de orden). ', 'john'),
(28, '<b>Gladis Aurora López Calderón</b> : Solicitó dispensa de debates. </br><b>Abel Benítez</b> : Exige se vea situación de la comunidad de Yarumela y su alcantarillado, al igual que Marcala. ', 'john'),
(32, '<b>Manuel Iván Fiallos Rodas</b> : test ', 'john'),
(39, '<b>Gabriela Núñez Ennabe</b> : Consulto como queda la figura del intermediario en el art. 4, sobre definiciones. </br><b>José Eduardo Coto</b> : Pregunto si el termino es facturación. </br><b>Pedro Rafael Alegría</b> : Pidió explicación de la relación del Estado y empresas, ya que en Honduras operan transnacionales de servicios de internet y debe existir garantía que el Estado mantendrá el control y seguridad en el manejo de estas transacciones. </br><b>Rasel Antonio Tomé Flores</b> : Como miembro de la Comisión sugirió que se hubiera llevado la técnica legislativa leyendo cada concepto por separado. </br><b>Luis Rolando Redondo</b> : Planteamiento para que mensaje de datos se entienda como actividad comercial, y el intercambio de datos aglomerando 3 conceptos en uno solo.\n\nAl respecto Rasel Tome aclaro que estan separadas en varios numerales. ', 'john'),
(43, '<b>Jeffrey Alexander Flores Chavarría</b> : Solicitó dispensa de debates. </br><b>Walter Alex Banegas</b> : Sugiere se incluya dentro del proyecto: la inclusión de una programación por parte de la Secretaria de Seguridad sobre la entrega de las hojas de antecedentes, para que la gente sepa que día debe retornar por ella. (aprobada) </br><b>Elvia Argentina Valle</b> : Opinó se incluya también el canon de los antecedentes judiciales. (no aprobada) </br><b>Rasel Antonio Tomé Flores</b> : Se pronunció a favor. ', 'john'),
(63, '<b>Yury Cristhian Sabas Gutierrez</b> : Solicitó dispensa de debates. </br><b>César Humberto Agurcia</b> : A favor de los ascensos,pero no están de acuerdo como bancada en apoyar personas que han tenido denuncias por violación de derechos humanos, en la misma postura Wilfredo Paz, Rassel Tome y Beatriz Valle, también opinaron se deben reformar los procesos de ascensos. ', 'john'),
(64, '<b>Gladis Aurora López Calderón</b> : Solicitó dispensa se debates. ', 'john'),
(65, '<b>José Francisco Rivera Hernández</b> : Solicitó dispensa de debate.  </br><b>Miguel Angel Navarro</b> : A favor.  </br><b>Mario Alexander Ayala</b> : A favor.  ', 'john'),
(67, '<b>Pedro Rafael Alegría</b> : Propone se tome en cuenta la sugerencia sobre la inclusión de comunidades no sólo étnicas, sino a aquellos que practican la pesca artesanal. ', 'john'),
(68, '<b>Walter Alex Banegas</b> : Intervención.  ', 'john'),
(69, '<b>Delia Beatríz Valle</b> : Se proclama en contra de la representación de la bancada del partido libre, ya que no se puede ratificar algo a lo cual se le puede hacer cambios.  </br><b>Marco Antonio Andino</b> : Se proclama en contra de la representación del partido liberal.  ', 'john'),
(70, '<b>José Oswaldo Ramos Soto</b> : Dice que no es correcto utilizar la denominación indígenas y afrohondureños.\n\nSe genero debate a partir de esta intervención. </br><b>Milton Jesús Puerto Oseguera</b> : Como Presidente de la Comisión Dictaminadora dispuso que la ultima palabra sobre los termino indígena y afrohondureño, lo manejara la comisión de estilo. </br><b>Angel Dario Banegas Leiva</b> : Propuso sustituir las palabras "llegar a cabo" por "realizar" en el articulo 12. </br><b>Milton Jesús Puerto Oseguera</b> : Propone nueva redacción para el arte. 13 literales f y h.\n\nTambién agrego un nuevo párrafo en el art. 13 sobre que la Conopesca y la digipesca contaran con un asesor. </br><b>Pedro Rafael Alegría</b> : Agrego al arte. 13 inciso b para agregar protección a los pescadores artesanales nacionales ante la problemática de fuerza que ejercen los países vecinos </br><b>Francisco Javier Paz Laínea</b> : Consulto que pasara con los pequeños pescadores, si gozaran de seguridad social o solamente aquellos que l', 'john'),
(73, '<b>Delia Beatríz Valle</b> : Se unió a la moción y explico que en estos anuncios también se encuentran Jari Dixon, Manuel Zelaya, Luis Redondo y ella.  </br><b>David Guillermo Chávez Madison</b> : Opina que debe investigarse fuentes y medios electrónicos ya que Lena Gutierrez salio en una pag. con sus 2 hijos menores y fueron objeto de bullying.\n\nSe voto y se aprobó incorporar a moción original.  </br><b>Walter Alex Banegas</b> : Opina que se debe agregar que la Secretaria de DDHH ordene a la URSAC la cancelación de la personalidad jurídica de esta organización.\n\nSe voto y aprobó.  </br><b>Jari Dixon Herrera</b> : Opina que no se necesita investigar, con seguridad que atrás esta JOH  </br><b>Doris Gutiérrez</b> : Hace referencia a las expresiones de JOH pues la afectaron a ella y a sus compañeros por estar en contra de la Policia militar.\n\nPropuso se agregue que se investigue la denuncia interpuesta por 17 diputados. Esto no fue tomado en consideracion  </br><b>Elvia Argentina Valle</b> : Hace un recordatorio', 'john'),
(74, '<b>José Francisco Rivera Hernández</b> : No se escucho dentro de la lista para inauguración de aeródromos el de El Aguacate, Olancho. </br><b>Mario Alonso Pérez López</b> : Presento reconsideracion para incluir en la lista de aeródromos los ya construidos en Tela y La Ceiba para exonerarlos del Impuesto de Ganancia de Capital. ', 'john'),
(75, '<b>Carlos Roberto Ledezma Casco</b> : Solicito dispensa de debates. ', 'john'),
(80, '<b>Gladis Aurora López Calderón</b> : Solicito dispensa de debates.\n\nDicha solicitud fue aprobada. </br><b>Abel Benítez</b> : Exigió que se revise la situación de Yarumela y su alcantarillado al igual que Marcala.\n\nLa moción fue rechazada. ', 'john'),
(81, '<b>José Francisco Rivera Hernández</b> : Solicito dispensa de debate.\n\nMoción fue rechazada. ', 'john'),
(84, '<b>José Oswaldo Ramos Soto</b> : Agradecimiento al Abg. Jorge Maradiaga quien estuvo presente como asesor de la Comisión.  </br><b>Gabriela Núñez Ennabe</b> : Consulto como queda la figura del intermediario en el art. 4 que contiene las definiciones de la Ley.  </br><b>José Eduardo Coto</b> : Pregunto sobre el termino de facturacion  </br><b>Pedro Rafael Alegría</b> : Pidió explicación de la relación entre el Estado y empresas ya que en Honduras operan transnacionales de servicios de internet y debe existir garantía que el Estado mantendrá el control y seguridad en el manejo de transacciones  </br><b>Rasel Antonio Tomé Flores</b> : Como miembro de la Comisión Dictaminadora sugirió que se debe llevar la técnica legislativa leyendo cada concepto por separado  </br><b>Marlon Guillermo Lara Orellana</b> : Consulto que pasaría en el caso de usurpación de firmas. Que mecanismos habrá para la prevención del tema.  </br><b>Luis Rolando Redondo</b> : Sugiere que mensajes de datos se entienda como una actividad comerci', 'john'),
(85, '<b>Jeffrey Alexander Flores Chavarría</b> : Solicito dispensa de debates. </br><b>Walter Alex Banegas</b> : Sugiere se incluya dentro del proyecto una programación por parte de la Secretaria de Seguridad para que la gente sepa que día debe retornar por ella.\n\nLa moción fue aprobada. </br><b>Elvia Argentina Valle</b> : Opino se incluya también el canon de los antecedentes judiciales.\n\nMoción no aprobada. </br><b>Rasel Antonio Tomé Flores</b> : Se pronuncio a favor del proyecto. ', 'john'),
(92, '<b>Esdras Amado López</b> : Sugirió que debe incluirse moción presentada por el en sesión anterior.\n  </br><b>Lena Gutierrez</b> : Aclaro a Esdras Lopez que en la sesión anterior el presento una manifestación y no una moción y que por esa razón no aparece en el acta. Le sugirió que la vuelva a presentar como moción.  </br><b>Rasel Antonio Tomé Flores</b> : Opina que en el decreto aprobado en la sesión anterior sobre la dispensa de la tasa por tramites administrativos a menores de 25 años, que se agregue la palabra "reformar".  </br><b>Lena Gutierrez</b> : Le aclaro a Rassel Tome que la palabra reformar ya esta incluida.  ', 'john'),
(97, '<b>Mario Alexander Ayala</b> : Solicito se suspenda la discusión de este contrato. </br><b>Lena Gutierrez</b> : Le manifestó a Mario Ayala que ya era el tercer debate por lo que su solicitud estaba fuera de lugar. ', 'john'),
(101, '<b>Cristhian Reniery Santamaría</b> : Opina que debe aclararse la definición "afro descendientes" y su aplicación como comunidad garifuna.\n\nMoción aprobada. </br><b>Pedro Rafael Alegría</b> : Pregunta cual es la definición del termino "derecho preferente". </br><b>Milton Jesús Puerto Oseguera</b> : Sugirió incluir la definición de "Emergencia Pesquera".\n\nMoción aprobada. </br><b>José Oswaldo Ramos Soto</b> : Sugirió a la comisión dictaminadora que se mejore condiciones de semántica.\n\nMoción aprobada. </br><b>Rasel Antonio Tomé Flores</b> : Solicita aclaración sobre definición del termino "procedimiento científico y técnico".\n </br><b>Edwin Roberto Pavón León</b> : Se manifestó a favor del termino "procedimiento científico y técnico" explicado por el Dr. Romeo Ucles. </br><b>Augusto Domingo Cruz Asencio</b> : Se manifestó a favor del termino "procedimiento científico y técnico" explicado por el Dr. Romeo Ucles. </br><b>José Oswaldo Ramos Soto</b> : Sugirió se incorpore en la definición "procedimiento científic', 'john'),
(106, '<b>Delia Beatríz Valle</b> : Se manifiesta en contra de la ratificación, representando además a la bancada de LIBRE. Considera que no se puede ratificar algo a lo cual se le quiere hacer cambios. </br><b>Marco Antonio Andino</b> : Se manifiesta en contra de la ratificación, representando además a una parte de la bancada del Partido Liberal. </br><b>Augusto Domingo Cruz Asencio</b> : Se manifiesta a favor de la ratificación representando además la bancada del Partido Demócrata Cristiano. </br><b>Rasel Antonio Tomé Flores</b> : Se manifiesta en contra de la elevación a rango constitucional pero no de la PMOP en si. </br><b>Fatima Patricia Mena</b> : Se proclama en contra de la ratificación representando además a la bancada del PAC. </br><b>Edwin Roberto Pavón León</b> : Se manifiesta a favor de la ratificación. </br><b>Doris Gutiérrez</b> : Manifiesta que JOH tiene una agenda secreta y desea otorgarle mas atribuciones al Presidente de la República en las ZEDES, por tanto se manifiesta en contra de la ratificaci', 'john'),
(107, '<b>Juan Orlando Hernandez </b> : Llevo solicitud de plebiscito acerca de la elevación a rango constitucional de la PMOP.\n\nNo quedo presentada al pleno, se despejara en la nueva legislatura. ', 'john'),
(108, '<b>Carlos Roberto Ledezma Casco</b> : Solicito dispensa de debates. ', 'john'),
(122, '<b>Yury Cristhian Sabas Gutierrez</b> : solicitó dispensa de debates.\n\nMoción aprobada.  </br><b>César Humberto Agurcia</b> : Se pronunció a favor de los ascensos, pero como bancada no están de acuerdo de apoyar personas que han tenido denuncias por violación de derechos humanos, también agregó se debe reformar el proceso de aprobación de ascensos.  </br><b>Wilfredo Paz Zúñiga</b> : Se sumó a la petición de César Agurcia.  </br><b>Rasel Antonio Tomé Flores</b> : También se sumó a la petición de César Agurcia.  </br><b>Delia Beatríz Valle</b> : Se sumó a la petición de César Agurcia.  </br><b>Luis Rolando Redondo</b> : En contra del proceso por falta de transparencia en el mismo ya que no se brindó tiempo a las bancadas para razonar su voto.\n\nSe le retiró la palabra por estar fuera de orden.  ', 'john'),
(127, '<b>Pedro Rafael Alegría</b> : Consulta por sanciones a empresas que tienen exenciones fiscales a sus impuestos amparados en mala interpretación de la ley. </br><b>Carlos Alfredo Lara Watson</b> : Aclara que estas reformas a la Ley para la Defensa y Promoción de la Competencia afectaran a la Comisión para la Defensa y Promoción de la Competencia y no la competitividad en si. </br><b>Rasel Antonio Tomé Flores</b> : Aclara que la ley viene a dar medios a la CDPC para que cumpla sus funciones que a la fecha aun no ha podido realizar a plenitud. </br><b>Gabriela Núñez Ennabe</b> : Recomienda que el 100 % de la recaudación no sea destinado a la CDPC, sino solo el % definido anualmente por la SEFIN mediante el Presupuesto General.\n\nMoción aprobada. </br><b>Rasel Antonio Tomé Flores</b> : Pide aclaración sobre el monto que sera trasladado luego de ser aprobada la sugerencia de la diputada Gabriela Nuñez, ya que no sera trasladado el 100 %. </br><b>Representante de la CDPC </b> : Manifiesta que la CDPC es un ente autó', 'john');

-- --------------------------------------------------------

--
-- Table structure for table `sesiones`
--

CREATE TABLE IF NOT EXISTS `sesiones` (
  `id_sesiones` int(11) NOT NULL,
  `sesion_nombre` varchar(8000) DEFAULT NULL,
  `sesion_fecha_creacion` datetime DEFAULT NULL,
  `descripcion_corta` varchar(200) NOT NULL,
  `descripcion_larga` varchar(600) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sesiones`
--

INSERT INTO `sesiones` (`id_sesiones`, `sesion_nombre`, `sesion_fecha_creacion`, `descripcion_corta`, `descripcion_larga`) VALUES
(30, '2015021593116855', '2015-01-23 00:00:00', 'Fecha', '2015-01-23 08:00:00 a.m. '),
(31, '201502225536130', '2015-01-12 00:00:00', 'Fecha', '2015-01-12 08:00:00 a.m. '),
(32, '2015022075835153', '2015-01-13 00:00:00', 'Fecha', '2015-01-13 08:00:00 a.m. '),
(33, '201502-570432797', '2015-01-14 00:00:00', 'Fecha', '2015-01-14 08:00:00 a.m. '),
(34, '201502-1537668885', '2015-01-20 00:00:00', 'Fecha', '2015-01-20 08:00:00 a.m. '),
(35, '201502811860867', '2015-01-21 00:00:00', 'Fecha', '2015-01-21 08:00:00 a.m. '),
(36, '2015021936812611', '2015-01-22 00:00:00', 'Fecha', '2015-01-22 08:00:00 a.m. '),
(37, '201502560309097', '2015-01-24 00:00:00', 'Fecha', '2015-01-24 08:00:00 a.m. '),
(38, '2015021162203564', '2015-02-09 00:00:00', 'Fecha', '2015-02-09 08:00:00 a.m. '),
(39, '201502-404535823', '2015-02-10 00:00:00', 'Fecha', '2015-02-10 08:00:00 a.m. '),
(42, '201502-738539578', '2015-02-11 00:00:00', 'Fecha', '2015-02-11 08:00:00 a.m. '),
(44, '201502-494148526  888888', '2015-04-05 08:12:53', 'Fecha', '2015-04-05 08:12:53 p.m. '),
(45, '2015319-1338540471', '2015-04-19 07:28:48', 'Fecha', '2015-04-19 07:28:48 p.m. ');

-- --------------------------------------------------------

--
-- Table structure for table `sesion_proyecto`
--

CREATE TABLE IF NOT EXISTS `sesion_proyecto` (
  `id_sesion_proyecto` int(11) NOT NULL,
  `id_sesion` int(11) NOT NULL,
  `id_proyecto` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `id_tipo_debate` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sesion_proyecto`
--

INSERT INTO `sesion_proyecto` (`id_sesion_proyecto`, `id_sesion`, `id_proyecto`, `id_status`, `id_tipo_debate`, `fecha_creacion`) VALUES
(70, 30, 62, 32, 6, '2015-03-29 07:28:21'),
(71, 30, 63, 4, 10, '2015-03-29 07:45:42'),
(72, 30, 64, 23, 10, '2015-03-29 07:49:44'),
(73, 30, 65, 1, 21, '2015-03-29 07:56:08'),
(74, 31, 66, 23, 10, '2015-04-04 03:24:21'),
(75, 31, 67, 23, 10, '2015-04-04 03:31:16'),
(76, 31, 68, 4, 10, '2015-04-04 03:34:50'),
(77, 31, 69, 4, 10, '2015-04-04 03:36:55'),
(78, 31, 70, 4, 10, '2015-04-04 03:38:32'),
(79, 31, 71, 33, 1, '2015-04-04 03:40:58'),
(80, 31, 72, 1, 1, '2015-04-04 03:44:17'),
(81, 31, 73, 33, 1, '2015-04-04 03:51:02'),
(82, 31, 74, 1, 6, '2015-04-04 03:55:02'),
(83, 31, 75, 1, 7, '2015-04-04 04:13:51'),
(84, 31, 76, 32, 6, '2015-04-04 04:02:56'),
(85, 32, 77, 1, 7, '2015-04-04 04:35:39'),
(86, 32, 78, 33, 1, '2015-04-04 04:44:55'),
(87, 32, 79, 4, 10, '2015-04-04 05:15:23'),
(88, 32, 80, 23, 10, '2015-04-04 05:18:58'),
(89, 32, 81, 23, 10, '2015-04-04 04:26:59'),
(90, 32, 82, 32, 1, '2015-04-04 04:51:41'),
(91, 33, 83, 23, 10, '2015-04-04 05:50:51'),
(92, 33, 84, 23, 10, '2015-04-04 05:37:47'),
(93, 34, 85, 1, 6, '2015-04-04 09:04:10'),
(94, 34, 86, 23, 1, '2015-04-05 10:10:27'),
(95, 35, 87, 33, 1, '2015-04-05 10:25:44'),
(96, 35, 88, 1, 6, '2015-04-05 10:29:25'),
(97, 35, 89, 1, 6, '2015-04-05 10:32:28'),
(98, 35, 90, 33, 2, '2015-04-05 10:37:09'),
(99, 35, 91, 33, 2, '2015-04-05 10:39:53'),
(100, 35, 92, 33, 2, '2015-04-05 10:42:25'),
(101, 35, 62, 32, 1, '2015-04-05 10:45:19'),
(102, 36, 94, 4, 10, '2015-04-05 01:25:11'),
(103, 36, 95, 23, 10, '2015-04-05 01:30:17'),
(104, 35, 96, 4, 10, '2015-04-05 10:19:46'),
(106, 37, 98, 2, 7, '2015-04-05 01:37:39'),
(107, 37, 99, 23, 10, '2015-04-05 01:47:21'),
(108, 38, 100, 1, 7, '2015-04-05 01:54:06'),
(109, 38, 101, 33, 1, '2015-04-05 01:56:29'),
(112, 38, 104, 33, 2, '2015-04-05 02:03:38'),
(113, 38, 105, 23, 10, '2015-04-05 02:05:40'),
(116, 38, 82, 32, 2, '2015-04-05 02:07:16'),
(120, 32, 81, 23, 10, '0000-00-00 00:00:00'),
(121, 32, 82, 32, 1, '0000-00-00 00:00:00'),
(122, 32, 68, 1, 7, '0000-00-00 00:00:00'),
(123, 33, 84, 23, 10, '0000-00-00 00:00:00'),
(124, 33, 82, 32, 1, '0000-00-00 00:00:00'),
(125, 33, 82, 32, 1, '0000-00-00 00:00:00'),
(127, 34, 76, 1, 6, '0000-00-00 00:00:00'),
(130, 35, 96, 4, 10, '0000-00-00 00:00:00'),
(142, 39, 108, 1, 6, '0000-00-00 00:00:00'),
(143, 39, 79, 1, 7, '0000-00-00 00:00:00'),
(147, 39, 109, 4, 10, '0000-00-00 00:00:00'),
(153, 42, 110, 23, 10, '0000-00-00 00:00:00'),
(156, 42, 101, 1, 6, '0000-00-00 00:00:00'),
(157, 42, 111, 1, 7, '0000-00-00 00:00:00'),
(158, 42, 109, 1, 7, '0000-00-00 00:00:00'),
(159, 42, 112, 23, 10, '0000-00-00 00:00:00'),
(166, 42, 114, 32, 2, '0000-00-00 00:00:00'),
(167, 44, 115, 33, 1, '0000-00-00 00:00:00'),
(168, 44, 116, 33, 1, '0000-00-00 00:00:00'),
(169, 42, 117, 1, 6, '0000-00-00 00:00:00'),
(170, 42, 118, 1, 6, '0000-00-00 00:00:00'),
(171, 45, 119, 4, 10, '0000-00-00 00:00:00'),
(172, 45, 120, 1, 1, '0000-00-00 00:00:00'),
(173, 45, 121, 23, 1, '0000-00-00 00:00:00'),
(174, 45, 122, 23, 1, '0000-00-00 00:00:00'),
(175, 45, 123, 1, 1, '0000-00-00 00:00:00'),
(176, 45, 124, 23, 10, '0000-00-00 00:00:00'),
(177, 45, 124, 23, 10, '0000-00-00 00:00:00'),
(178, 45, 125, 23, 10, '0000-00-00 00:00:00'),
(179, 45, 125, 23, 10, '0000-00-00 00:00:00'),
(183, 45, 86, 23, 10, '0000-00-00 00:00:00'),
(184, 45, 127, 23, 10, '0000-00-00 00:00:00'),
(185, 45, 128, 23, 10, '0000-00-00 00:00:00'),
(186, 45, 129, 23, 10, '0000-00-00 00:00:00'),
(187, 45, 130, 23, 10, '0000-00-00 00:00:00'),
(188, 45, 130, 23, 10, '0000-00-00 00:00:00'),
(189, 45, 131, 23, 10, '0000-00-00 00:00:00'),
(190, 45, 132, 23, 10, '0000-00-00 00:00:00'),
(191, 45, 133, 23, 10, '0000-00-00 00:00:00'),
(192, 45, 134, 23, 10, '0000-00-00 00:00:00'),
(193, 45, 135, 23, 10, '0000-00-00 00:00:00'),
(194, 45, 136, 23, 10, '0000-00-00 00:00:00'),
(195, 45, 137, 23, 10, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id_status` int(11) NOT NULL,
  `status_nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_status`, `status_nombre`) VALUES
(1, 'Aprobado'),
(2, 'Rechazado'),
(4, 'Presentado y Turnado a Comisión'),
(16, 'No Tomada en Consideración'),
(20, 'Tomada en Consideración'),
(21, 'Favorable'),
(22, 'Desfavorable'),
(23, 'No Aplica'),
(32, 'Continúa en Debate'),
(33, 'Sujeto a Nuevo Debate'),
(34, 'No se ratifica el Decreto  ');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_cargo`
--

CREATE TABLE IF NOT EXISTS `tipo_cargo` (
  `id_tipo_cargo` int(11) NOT NULL,
  `tipo_cargo_nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipo_cargo`
--

INSERT INTO `tipo_cargo` (`id_tipo_cargo`, `tipo_cargo_nombre`) VALUES
(1, ' hh');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_debate`
--

CREATE TABLE IF NOT EXISTS `tipo_debate` (
  `id_tipo_debate` int(11) NOT NULL,
  `tipo_debate_nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipo_debate`
--

INSERT INTO `tipo_debate` (`id_tipo_debate`, `tipo_debate_nombre`) VALUES
(1, 'Primer Debate'),
(2, 'Segundo Debate'),
(6, 'Tercer Debate'),
(7, 'Único Debate'),
(10, 'No Aplica'),
(21, 'Tomada en Consideración  ');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL,
  `usuario_nombre` varchar(45) DEFAULT NULL,
  `usuario_contrasena` varchar(45) DEFAULT NULL,
  `usuario_fecha_expira` varchar(45) DEFAULT NULL,
  `usuario_google` varchar(600) DEFAULT NULL,
  `usuario_email` varchar(45) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  `perfil` varchar(30) NOT NULL,
  `device` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `usuario_nombre`, `usuario_contrasena`, `usuario_fecha_expira`, `usuario_google`, `usuario_email`, `id_empresa`, `perfil`, `device`) VALUES
(2, 'malcolm', 'x', '', 'APA91bEnDQVMSNMXKDKNHNg31ajvOOjJT2p1YufKl5HyID3mSyvTn2a9m0rFjnL8G9r5jiedDaknPLGIZfk4sPGZk0xv_l2PCn-SiGeiT7QaBEaLwOifDjx3FEG-UUDeY4Ac9OjSxMLPrR-MkXe3i_p-TM6wRXdc-Q', 'lordkortex@gmail.com', 1, 'admin', 'ddced224797580d0'),
(5, 'prueba', 'p', '', 'APA91bHgDQILUQF1bU_K_yM8ul3uctHde3UMWhMUqsCAHIxkS2kGgMCcIrtZ3egdoMZCuF3nw7mhtPGWv9n4MOE39p6bDTYswDll8cvq8MSgx3jGe97BYMULAXK5ihHYDTkvnO-DfpiHqZ6s2S6YmkJDpA2RkXx36z2REZJgzMbla-JKvSyJoD0', 'info@lawfinances.com', 4, 'monitor', 'f2ba9f67249c822b'),
(11, 'fmejia', 'fmejia', 'System.Web.UI.WebControls.TextBox', 'APA91bHR0j9Mq9GAJmDGEiM5-n5ZxwBhTSbLYAXeV-eRaDFhNVatPHazCeIgKTGOrg1ZbrCEoL5Y2_uSL3RymIRN3emLlgsjXqk05gpmbAJjyNGpTJfZqq3ei_Z39Z8jjFwdyjyOprM0ubJjvj8dldxms5WLBTc19hmFkDRc9L7ujvMcddDLArY9oG7ED4cW1j_FamIynW_4', 'fernando.mejia@lawfinances.com', 4, 'admin', 'f2ba9f67249c822b'),
(12, 'mlanza', 'mlanza', 'System.Web.UI.WebControls.TextBox', '', 'info@lawfinances.com', 1, 'monitor', '834329dd70f093dc'),
(13, 'fmejiac', 'fmejiac', 'System.Web.UI.WebControls.TextBox', 'APA91bF2Wp8ZWmxxOYEcfWyFzTS1p2i_l_QiC4fMEZuudu8UCcwxv7eX2y6TuHrweQ6X7ku4OUA7QT5VPigTcq8b16NKTloR9KqvButWxXRUmzbSJnUEcGE0Fp9EaPoC3BcCRgKm4mwH6fIglQ2uUeK08yS6pdFxXxCN4zJ_XaT0wg3rf6DA6K0', 'info@lawfinances.com', 4, 'cliente', 'f2ba9f67249c822b'),
(14, 'mlanzac', 'mlanzac', '', 'APA91bH0Or7EjUShNiBq3YbnUUdDHQUv4_jWPYT0IcmfTBdTjX-oQDQwdYZvlSdADBllYGYRTkqzDuQ2OYpZFs0ATt_1eInItwI1yadDWfIYIrLw7keAts6qfX-dJ1j-lH7V75tvMdy6ngetM_UelXm74s3PX8IqVP-k0ecjyfAX2K6RUxYDycc', 'fanizmoncada16@gmail.com', 1, 'cliente', '528216ab9ea7ee39');

-- --------------------------------------------------------

--
-- Table structure for table `usuario_palabra_clave`
--

CREATE TABLE IF NOT EXISTS `usuario_palabra_clave` (
  `id_usuario_palabra_clave` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_palabra_clave` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comision_dicatminadora_diputado`
--
ALTER TABLE `comision_dicatminadora_diputado`
  ADD PRIMARY KEY (`id_comision_diputado`);

--
-- Indexes for table `comision_dictaminadora`
--
ALTER TABLE `comision_dictaminadora`
  ADD PRIMARY KEY (`id_comision_dictaminadora`);

--
-- Indexes for table `detalle_intervencion`
--
ALTER TABLE `detalle_intervencion`
  ADD PRIMARY KEY (`id_detalle_intervencion`);

--
-- Indexes for table `detalle_intervencion_log`
--
ALTER TABLE `detalle_intervencion_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diputado`
--
ALTER TABLE `diputado`
  ADD PRIMARY KEY (`id_diputado`),
  ADD KEY `fk_partido` (`id_partido`);

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Indexes for table `legislacion`
--
ALTER TABLE `legislacion`
  ADD PRIMARY KEY (`id_legislacion`);

--
-- Indexes for table `palabra_clave`
--
ALTER TABLE `palabra_clave`
  ADD PRIMARY KEY (`id_palabra_clave`);

--
-- Indexes for table `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`id_partido`);

--
-- Indexes for table `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id_proyecto`),
  ADD KEY `fk_legislacion` (`id_legislacion`),
  ADD KEY `fk_comision_dictaminadora` (`id_comision_dictaminadora`);

--
-- Indexes for table `reporteProyectosInternecion`
--
ALTER TABLE `reporteProyectosInternecion`
  ADD PRIMARY KEY (`id_sesion_proyecto`);

--
-- Indexes for table `sesiones`
--
ALTER TABLE `sesiones`
  ADD PRIMARY KEY (`id_sesiones`);

--
-- Indexes for table `sesion_proyecto`
--
ALTER TABLE `sesion_proyecto`
  ADD PRIMARY KEY (`id_sesion_proyecto`),
  ADD UNIQUE KEY `id_sesion_proyecto_UNIQUE` (`id_sesion_proyecto`),
  ADD KEY `fk_sesion` (`id_sesion`),
  ADD KEY `fk_status` (`id_status`),
  ADD KEY `fk_debate` (`id_tipo_debate`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tipo_cargo`
--
ALTER TABLE `tipo_cargo`
  ADD PRIMARY KEY (`id_tipo_cargo`);

--
-- Indexes for table `tipo_debate`
--
ALTER TABLE `tipo_debate`
  ADD PRIMARY KEY (`id_tipo_debate`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Indexes for table `usuario_palabra_clave`
--
ALTER TABLE `usuario_palabra_clave`
  ADD PRIMARY KEY (`id_usuario_palabra_clave`),
  ADD UNIQUE KEY `id_usuario_palabra_clave_UNIQUE` (`id_usuario_palabra_clave`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comision_dicatminadora_diputado`
--
ALTER TABLE `comision_dicatminadora_diputado`
  MODIFY `id_comision_diputado` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=179;
--
-- AUTO_INCREMENT for table `comision_dictaminadora`
--
ALTER TABLE `comision_dictaminadora`
  MODIFY `id_comision_dictaminadora` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `detalle_intervencion`
--
ALTER TABLE `detalle_intervencion`
  MODIFY `id_detalle_intervencion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=179;
--
-- AUTO_INCREMENT for table `detalle_intervencion_log`
--
ALTER TABLE `detalle_intervencion_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `diputado`
--
ALTER TABLE `diputado`
  MODIFY `id_diputado` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=271;
--
-- AUTO_INCREMENT for table `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `legislacion`
--
ALTER TABLE `legislacion`
  MODIFY `id_legislacion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `palabra_clave`
--
ALTER TABLE `palabra_clave`
  MODIFY `id_palabra_clave` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `partido`
--
ALTER TABLE `partido`
  MODIFY `id_partido` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id_proyecto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `sesiones`
--
ALTER TABLE `sesiones`
  MODIFY `id_sesiones` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `sesion_proyecto`
--
ALTER TABLE `sesion_proyecto`
  MODIFY `id_sesion_proyecto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `tipo_cargo`
--
ALTER TABLE `tipo_cargo`
  MODIFY `id_tipo_cargo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tipo_debate`
--
ALTER TABLE `tipo_debate`
  MODIFY `id_tipo_debate` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `usuario_palabra_clave`
--
ALTER TABLE `usuario_palabra_clave`
  MODIFY `id_usuario_palabra_clave` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `diputado`
--
ALTER TABLE `diputado`
  ADD CONSTRAINT `diputado_ibfk_1` FOREIGN KEY (`id_partido`) REFERENCES `partido` (`id_partido`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `proyectos_ibfk_1` FOREIGN KEY (`id_legislacion`) REFERENCES `legislacion` (`id_legislacion`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `proyectos_ibfk_2` FOREIGN KEY (`id_comision_dictaminadora`) REFERENCES `comision_dictaminadora` (`id_comision_dictaminadora`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `sesion_proyecto`
--
ALTER TABLE `sesion_proyecto`
  ADD CONSTRAINT `sesion_proyecto_ibfk_1` FOREIGN KEY (`id_sesion`) REFERENCES `sesiones` (`id_sesiones`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `sesion_proyecto_ibfk_2` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `sesion_proyecto_ibfk_3` FOREIGN KEY (`id_tipo_debate`) REFERENCES `tipo_debate` (`id_tipo_debate`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

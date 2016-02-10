-- phpMyAdmin SQL Dump
-- version 4.4.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 10, 2016 at 11:20 AM
-- Server version: 5.6.28-0ubuntu0.15.10.1
-- PHP Version: 5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `accounting`
--

-- --------------------------------------------------------

--
-- Table structure for table `accoount_sub_group`
--

CREATE TABLE IF NOT EXISTS `accoount_sub_group` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parent_group` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accoount_sub_group`
--

INSERT INTO `accoount_sub_group` (`id`, `description`, `parent_group`) VALUES
(1, 'Amortizime', '4'),
(2, 'Angazhime', '11'),
(3, 'AQ financiare', '3'),
(4, 'Arka', '8'),
(5, 'Banka', '8'),
(6, 'Blerje', '9'),
(7, 'Celje/mbyllje', '11'),
(8, 'Debitore/Kreditore te tjere', '6'),
(9, 'Diferenca / Zhvleresim', '5'),
(10, 'Diferenca konvertim bilanci', '7'),
(11, 'Financiare', '10'),
(12, 'Fonde e Subvencione', '1'),
(13, 'Furnitore', '6'),
(14, 'Grupe & Ortake', '7'),
(15, 'Hua te Ndryshme', '2'),
(16, 'Kapitali i Vete', '1'),
(17, 'Kliente', '6'),
(18, 'Leasing & aktive me qera', '11'),
(19, 'Mallra', '5'),
(20, 'Materiale', '5'),
(21, 'Ndryshim i gjendjeve prodhimi', '10'),
(22, 'Ndryshimi i gjendjeve', '9'),
(23, 'Ne proces', '3'),
(24, 'Objekte inventari', '5'),
(25, 'Personeli', '6'),
(26, 'Prodhim AQT', '10'),
(27, 'Produkt ', '5'),
(28, 'Produkte ne proces', '5'),
(29, 'Provigjione', '1'),
(30, 'Rezerva', '1'),
(31, 'Rezultati', '1'),
(32, 'Rimarrje e transferim', '10'),
(33, 'Sherbime nga te trete', '9'),
(34, 'Shitje mallra e materiale', '10'),
(35, 'Shitje Prodhim', '10'),
(36, 'Shitje produkte', '10'),
(37, 'Shitje sherbime', '10'),
(39, 'Shpenzime Amortizim & Zhvleresim', '9'),
(40, 'Shpenzime Financiare', '9'),
(41, 'Shpenzime Personeli', '9'),
(42, 'Shperndarje shpenzimi', '7'),
(43, 'Shteti', '6'),
(44, 'Sigurime', '6'),
(45, 'Tatime e taksa', '9'),
(46, 'Te ardhura te tjera', '10'),
(47, 'Te patrupezuara', '3'),
(48, 'Te tjera inventare', '5'),
(49, 'Te tjera likuiditete', '8'),
(50, 'Te tjera rregulluese', '7'),
(51, 'Te tjera shpenzime', '9'),
(52, 'Te trupezuara', '3'),
(53, 'Xhirime te brendshme', '8'),
(54, 'Zhvleresime', '4'),
(55, 'Furnitor Afat Gjate', '2'),
(56, 'Detyrime Te Tjera', '2');

-- --------------------------------------------------------

--
-- Table structure for table `account_group`
--

CREATE TABLE IF NOT EXISTS `account_group` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_group`
--

INSERT INTO `account_group` (`id`, `description`) VALUES
(1, 'Kapital & Fonde'),
(2, 'Hua & Detyrime'),
(3, 'Aktive te Qendrueshme'),
(4, 'Amortizim & Zhvleresim'),
(5, 'Inventare'),
(6, 'Te Trete'),
(7, 'Rregulluese '),
(8, 'Likuiditete'),
(9, 'Shpenzime'),
(10, 'Te Ardhura '),
(11, 'Jashte Bilancit');

-- --------------------------------------------------------

--
-- Table structure for table `account_standart`
--

CREATE TABLE IF NOT EXISTS `account_standart` (
  `id` int(11) NOT NULL,
  `code` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `subgroup_id` int(11) DEFAULT NULL,
  `parent_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_standart`
--

INSERT INTO `account_standart` (`id`, `code`, `description`, `group_id`, `subgroup_id`, `parent_id`) VALUES
(1, 1, 'Kapitali Rezervat', 1, -1, '-1'),
(2, 10, 'Kapitali', 1, 16, '1'),
(3, 101, 'Kapitali i paguar', 1, 16, '2'),
(4, 104, 'Prime te lidhura me kapitalin', 1, 16, '2'),
(5, 105, 'Zbritje te lidhura me kapitalin', 1, 30, '2'),
(6, 106, 'Rezerva nga rivleresimi', 1, 30, '2'),
(10, 107, 'Rezerva te tjera', 1, 16, '2'),
(11, 108, 'Fitimi/Humbja e pashperndare', 1, 16, '2'),
(48, 2, 'Aktivet Afatgjate', 3, -1, '-1'),
(49, 20, 'AA Jomateriale', 3, 47, '48'),
(50, 201, 'Emri i mire', 3, 47, '49'),
(51, 203, 'Shpenzime te zhvillimit', 3, 47, '49'),
(54, 208, 'Te tjera AA Jomateriale', 3, 47, '49'),
(55, 21, 'AA Materiale', 3, 52, '48'),
(56, 211, 'Toka', 3, 52, '55'),
(61, 212, 'Ndertime', 3, 52, '55'),
(66, 213, 'Instalime teknike; makineri; pajisje', 3, 52, '55'),
(71, 215, 'Mjete transporti', 3, 52, '55'),
(73, 218, 'Te tjera AA materiale', 3, 52, '55'),
(74, 2181, 'Mobilje dhe pajisje zyre', 3, 52, '73'),
(75, 2182, 'Pajisje informative', 3, 52, '73'),
(76, 2188, 'Te tjera', 3, 52, '73'),
(78, 23, 'AA ne proces', 3, 23, '48'),
(79, 231, 'AA materiale ne proces', 3, 23, '78'),
(80, 232, 'AA jomaterial ne proces', 3, 23, '78'),
(83, 24, 'AA bilogjike', 3, 52, '48'),
(84, 25, 'AA te mbajtura per shitje', 3, 52, '48'),
(85, 26, 'AA financiare', 3, 3, '48'),
(86, 261, 'Aksione te shoqerive te kontrulluara', 3, 3, '85'),
(87, 262, 'Aksione te shoqerive te lidhura', 3, 3, '85'),
(88, 263, 'Aksione te tjera dhe letra me vlere', 3, 3, '85'),
(101, 28, 'Amortizimi dhe zhvleresimi i aktiveve afatgjate', 4, 1, '48'),
(102, 280, 'Amortizimi i AA jomateriale', 4, 1, '101'),
(103, 2801, 'Per emrin e mire', 4, 1, '102'),
(104, 2803, 'Per shepnzimet e zhvillimit', 4, 1, '102'),
(105, 2805, 'Per koncesion e te drejta te ngjashme; patenta', 4, 1, '102'),
(107, 2808, 'Per te tjera jomateriale', 4, 1, '102'),
(108, 281, 'Amortizimi i AA materiale', 4, 1, '101'),
(110, 2812, 'Per ndertesat', 4, 1, '108'),
(111, 2813, 'Per instalime teknike; makiner; pajisje; etj..', 4, 1, '108'),
(112, 2815, 'Per mjetet e transportit', 4, 1, '108'),
(114, 2818, 'Per te tjera AA materiale', 4, 1, '108'),
(115, 284, 'Amortizim i AA bilogjike', 4, 1, '101'),
(116, 29, 'Zhvleresimi i AA', 4, 54, '48'),
(117, 290, 'Per AA jomateriale', 4, 54, '116'),
(118, 2905, 'Per koncesione patenta; licensa; marka etj..', 4, 54, '117'),
(119, 2908, 'Per te tjera AA jomateriale', 4, 54, '117'),
(120, 291, 'Per AA materiale', 4, 54, '116'),
(121, 2911, 'Per Tokat', 4, 54, '120'),
(122, 2912, 'Per ndertesat', 4, 54, '120'),
(123, 2913, 'Per instalime teknike; makinerite; pajisjet', 4, 54, '120'),
(124, 2915, 'Per mjetet e transportit', 4, 54, '120'),
(126, 2918, 'Per te tjera AA materiale', 4, 54, '120'),
(127, 293, 'Per AA ne proces', 4, 54, '116'),
(130, 294, 'Per AA biologjike', 4, 54, '116'),
(131, 296, 'Per investime financiare afatgjate', 4, 54, '116'),
(132, 2961, 'Aksione te shoqerive te kontrolluara', 4, 54, '131'),
(133, 2962, 'Aksione te shoqerive te lidhura', 4, 54, '131'),
(135, 2965, 'Huadhenie afatgjate', 4, 54, '131'),
(136, 2966, 'Te drejta te tjera afatgjata', 4, 54, '131'),
(138, 3, 'Inventaret', 5, -1, '-1'),
(140, 31, 'Materiale', 5, 20, '138'),
(141, 311, 'Materiale te para', 5, 20, '140'),
(142, 312, 'Materiale te tjera', 5, 20, '140'),
(143, 3123, 'Materiale ndihmese', 5, 20, '142'),
(144, 3124, 'Lende djegese', 5, 20, '142'),
(145, 3125, 'Pjese nderrimi', 5, 20, '142'),
(146, 3126, 'Materiale amballazhimi', 5, 20, '142'),
(148, 32, 'Inventari i imet dhe ambalazhet', 5, 24, '138'),
(154, 33, 'Prodhimi ne proces', 5, 28, '138'),
(155, 331, 'Prodhime ne proces', 5, 28, '154'),
(156, 332, 'Punime ne proces', 5, 28, '154'),
(157, 333, 'Sherbime ne proces', 5, 28, '154'),
(158, 34, 'Produkte', 5, 27, '138'),
(159, 341, 'Produkte te ndermjetme', 5, 27, '158'),
(160, 342, 'Produkte te gatshme', 5, 27, '158'),
(161, 347, 'Nenprodukte dhe produkte mbeturine', 5, 27, '158'),
(162, 35, 'Mallra', 5, 19, '138'),
(163, 351, 'Mallra', 5, 19, '162'),
(164, 36, 'Aktive Biologjike', 5, 48, '138'),
(165, 37, 'Inventar i pamberritur ose tek te tretet', 5, 48, '138'),
(166, 371, 'Materiale te para', 5, 48, '165'),
(167, 372, 'Materiale te tjera', 5, 48, '165'),
(168, 374, 'Produkte', 5, 48, '165'),
(169, 375, 'Mallra (dhe produkte) per shitje', 5, 48, '165'),
(170, 376, 'Gje e gjalle', 5, 48, '165'),
(172, 39, 'Zhvleresimi i inventareve', 5, 9, '138'),
(173, 391, 'Zhvleresimi i materialeve te para', 5, 9, '172'),
(174, 392, 'Zhvleresimi i materialeve te tjera', 5, 9, '172'),
(175, 394, 'Zhvleresimi i produkteve te gatshme', 5, 9, '172'),
(176, 395, 'Zhvleresimi i mallrave dhe produkteve per shitje', 5, 9, '172'),
(177, 4, 'Llogarite me te Tretet', 6, -1, '-1'),
(178, 40, 'Detyrime tregtare', 6, 13, '177'),
(179, 401, 'Furnitore per mallra produkte e sherbime', 6, 13, '178'),
(180, 403, 'Premtim pagesa te pagueshme', 6, 13, '178'),
(181, 404, 'Furnitore per aktivet afatgjata', 6, 13, '178'),
(184, 409, 'Parapagime te marra', 6, 13, '178'),
(185, 41, 'Te drejta tregtare', 6, 17, '177'),
(186, 411, 'Kliente per mallra produkte e sherbime', 6, 17, '185'),
(187, 413, 'Premtim pagesa te arketueshme', 6, 17, '185'),
(188, 416, 'Te drejta per t''u arketuar nga proceset gjyqesore', 6, 17, '185'),
(189, 418, 'Parapagime te dhena', 6, 17, '185'),
(191, 42, 'Detyrime ndaj personelit', 6, 25, '177'),
(192, 421, 'Paga dhe shperblime', 6, 25, '191'),
(193, 423, 'Paradhenie per punonjesit', 6, 25, '191'),
(197, 43, 'Detyrime per sigurimet shoqerore', 6, 44, '177'),
(198, 431, 'Sigurime Shoqerore dhe shendetesore', 6, 44, '197'),
(199, 437, 'Organizma te tjera shoqerore ', 6, 44, '197'),
(200, 438, 'Detyrime te tjera ', 6, 44, '197'),
(201, 44, 'Shteti per tatime dhe taxa', 6, 43, '177'),
(202, 441, 'Akciza', 6, 43, '201'),
(203, 442, 'Tatim mbi te ardhurat personale', 6, 43, '201'),
(204, 443, 'Tatime te tjera per punonjesit', 6, 43, '201'),
(205, 444, 'Tatim mbi fitimin', 6, 43, '201'),
(206, 445, 'TVSH', 6, 43, '201'),
(207, 4453, 'Shteti-TVSh per tu paguar', 6, 43, '206'),
(208, 4454, 'Shteti-TVSh per tu marre', 6, 43, '206'),
(209, 4456, 'Shteti-TVSh e zbritshme', 6, 43, '206'),
(210, 4457, 'Shteti-TVSh e pagueshme', 6, 43, '206'),
(211, 4458, 'Shteti-TVSh per tu rregulluar', 6, 43, '206'),
(212, 447, 'Te tjera tatime per tu paguar dhe per tu kthyer', 6, 43, '201'),
(213, 448, 'Tatimi te shtyra', 6, 43, '201'),
(214, 45, 'Te drejta dhe detyrime ndaj paleve te lidhura', 7, 14, '177'),
(215, 451, 'Te drejta dhe detyrime ndaj pjesetareve te tjere te grupit', 7, 14, '214'),
(218, 455, 'Te drejta dhe detyrime ndaj ortakeve dhe aksionerve', 7, 14, '214'),
(219, 456, 'Te drejta ndaj pronareve per kapitalin e nen shkruar', 7, 14, '214'),
(224, 457, 'Dividente per tu paguar', 7, 14, '214'),
(225, 46, 'Debitore dhe kreditore te ndryshem', 6, 8, '177'),
(227, 464, 'Detyrime per blerjen e letrave me vlere', 6, 8, '225'),
(228, 465, 'Te drejta per tu arketuar nga shitja e letrave me vlere', 6, 8, '225'),
(229, 467, 'Debitore te tjere dhe kreditore te tjere', 6, 8, '225'),
(230, 468, 'Huamarrjet afatgjata', 6, 8, '225'),
(231, 47, 'Llogari te perkohshme ose ne pritje', 7, 50, '177'),
(239, 48, 'Te ardhura dhe shpenzime te llogaritura', 7, 50, '177'),
(240, 481, 'Shpenzime te llogaritura', 7, 42, '239'),
(241, 486, 'Shpenzime te periudhave te ardhshme', 7, 42, '239'),
(242, 487, 'Te ardhura te llogaritura', 7, 50, '239'),
(243, 488, 'Te ardhura te periudhave te ardhshme', 7, 50, '239'),
(244, 49, 'Zhvleresimi i te drejtave dhe detyrimeve', 6, 8, '177'),
(248, 5, 'Mjete monetare dhe te ngjashme', 8, -1, '-1'),
(249, 50, 'Letra me vlere afatshkurtra', 8, 49, '248'),
(252, 503, 'Letra me vlere te pjesemarrjes', 8, 49, '249'),
(253, 504, 'Letra me vlere te huave', 8, 49, '249'),
(259, 51, 'Banka dhe institucione te tjera financiare', 8, 5, '248'),
(260, 511, 'Vlera monetare ne tranzit', 8, 5, '259'),
(263, 5114, 'Vlera monetare ne tranzit ne monedhe te huaj', 8, 5, '260'),
(264, 512, 'Vlera monetare ne banke', 8, 5, '259'),
(265, 5121, 'Vlera monetare ne leke', 8, 5, '264'),
(266, 5124, 'Vlera monetare ne monedha te huaja', 8, 5, '264'),
(269, 519, 'Llogari bankare te zbuluara (overdrafte bankare)', 8, 5, '259'),
(270, 53, 'Vlera ne arke', 8, 4, '248'),
(271, 531, 'Vlera monetare ne arke', 8, 4, '270'),
(272, 5311, 'Vlera monetare ne leke', 8, 4, '271'),
(273, 5314, 'Vlera monetare ne monedha te huaja', 8, 4, '271'),
(274, 532, 'Vlera te tjera ne arke', 8, 4, '270'),
(275, 5321, 'Pulla tatimore', 8, 4, '274'),
(276, 5328, 'Vlera te tjera', 8, 4, '274'),
(277, 54, 'Hua dhe letra me vlere te borxhit deri ne tre muaj', 8, 49, '248'),
(278, 541, 'Hua te dhena', 8, 49, '277'),
(279, 5411, 'Hua ne Leke', 8, 49, '278'),
(280, 5412, 'Hua ne monedha te huaja', 8, 49, '278'),
(281, 542, 'Hua te marr', 8, 49, '277'),
(282, 58, 'Xhirime te brendshme', 8, 53, '248'),
(283, 581, 'Xhirime te brendeshme', 8, 53, '282'),
(284, 59, 'Zhvleresimi i aktiveve financiare', 8, 49, '248'),
(285, 590, 'Zhvleresimi i letrave me vlere', 8, 49, '284'),
(289, 6, 'Shpenzimet', 9, -1, '-1'),
(290, 60, 'Blerje te konsumuara', 9, 6, '289'),
(291, 601, 'Blerje/shpenzime te materialeve', 9, 6, '290'),
(292, 602, 'Blerje/shpenzime te materialeve te tjera', 9, 6, '290'),
(298, 605, 'Blerje/shpenzime mallrash/sherbimesh', 9, 6, '290'),
(301, 608, 'Blerje/shpenzime te tjera', 9, 6, '290'),
(302, 61, 'Sherbime nga te tretet', 9, 33, '289'),
(303, 611, 'Trajtime te pergjithshme', 9, 33, '302'),
(304, 613, 'Qira', 9, 33, '302'),
(305, 615, 'Mirembajtje dhe riparime', 9, 33, '302'),
(306, 616, 'Sigurime', 9, 33, '302'),
(307, 617, 'Kerkime dhe Studime ', 9, 33, '302'),
(308, 618, 'Te tjera', 9, 33, '302'),
(309, 62, 'Sherbime te tjera ', 9, 33, '289'),
(310, 621, 'Personel jashte njesise', 9, 33, '309'),
(312, 623, 'Shpenzime per koncesione; patenta; licensa dhe te ngjashme', 9, 33, '309'),
(313, 624, 'Publicitet;  reklama', 9, 33, '309'),
(314, 625, 'Transferime; udhetime; dieta', 9, 33, '309'),
(315, 626, 'Shpenzime postare dhe telekomunikimi', 9, 33, '309'),
(316, 627, 'Shpenzime Transporti', 9, 33, '309'),
(317, 6271, 'Per blerje', 9, 33, '316'),
(318, 6272, 'Per shitje', 9, 33, '316'),
(319, 6276, 'Per personelin', 9, 33, '316'),
(320, 628, 'Shpenzime per sherbime bankare', 9, 33, '309'),
(321, 63, 'Tatime dhe Taksa', 9, 45, '289'),
(323, 632, 'Taksa; tarifa doganore', 9, 45, '321'),
(324, 633, 'Akciza', 9, 45, '321'),
(325, 638, 'Tatime te tjera', 9, 45, '321'),
(326, 64, 'Shpenzime per personelin', 9, 41, '289'),
(327, 641, 'Pagat dhe shperblimet e personelit', 9, 41, '326'),
(328, 644, 'Sigurimet shoqerore dhe shendetesore', 9, 41, '326'),
(329, 645, 'Kontribute dhe kuota te tjera per personelin', 9, 41, '326'),
(331, 65, 'Shpenzime te tjera', 9, 51, '289'),
(333, 653, 'Subvencione te dhena', 9, 51, '331'),
(334, 654, 'Shpenzime per pritje dhe perfaqesime', 9, 51, '331'),
(336, 657, 'Gjoba dhe demshperblime', 9, 51, '331'),
(337, 658, 'Shpenzime te tjera', 9, 51, '331'),
(338, 66, 'Shpenzime financiare', 9, 40, '289'),
(339, 661, 'Shpenzime financiare nga shoqerite e kontrolluara', 9, 40, '338'),
(340, 662, 'Shpenzime financiare nga shoqerite e lidhura', 9, 40, '338'),
(342, 665, 'Humbje nga shitja e letrave me vlere', 9, 40, '338'),
(344, 668, 'Shpenzime financiare te tjera', 9, 40, '338'),
(351, 68, 'Zhvleresime dhe amortizim', 9, 39, '289'),
(352, 681, 'Amortizimet e aktiveve afatgjata', 9, 39, '351'),
(358, 686, 'Provizione per zhvleresimin e aktiveve financiare', 9, 39, '351'),
(362, 69, 'Tatim mbi fitimin', 9, 45, '289'),
(365, 7, 'Te ardhurat', 10, -1, '-1'),
(366, 70, 'Te ardhura nga shitjet; sherbimet dhe punime te tjera', 10, -1, '365'),
(367, 701, 'Shitje e produkteve te gatshme', 10, 35, '366'),
(368, 702, 'Shitje e produkteve te ndermjetme', 10, 35, '366'),
(369, 703, 'Shitje e nenprodukteve', 10, 35, '366'),
(370, 704, 'Shitje e punimeve dhe sherbimeve', 10, 37, '366'),
(371, 705, 'Shitje Mallrash', 10, 34, '366'),
(374, 708, 'Te ardhura nga shitje te tjera', 10, 46, '366'),
(375, 7081, 'Qera', 10, 46, '374'),
(376, 7082, 'Komisione', 10, 46, '374'),
(377, 7083, 'Transport per te tretet', 10, 46, '374'),
(379, 71, 'Ndryshimi i gjendjes se prodhimit ne proces dhe te produkteve te gatshme', 10, 21, '365'),
(382, 72, 'Prodhimi i aktiveve afatgjate', 10, 26, '365'),
(383, 721, 'Prodhimi i AA jomateriale', 10, 26, '382'),
(384, 722, 'Prodhimi i AA materiale', 10, 26, '382'),
(385, 73, 'Te ardhurat nga grantet', 10, 46, '365'),
(395, 76, 'Te ardhura financiare', 10, 11, '365'),
(396, 761, 'Te ardhura financiare nga shoqerite e kontrolluara', 10, 11, '395'),
(397, 762, 'Te ardhura financiare nga shoqerite e lidhura', 10, 11, '395'),
(398, 763, 'Te ardhura nga dividentet', 10, 11, '395'),
(399, 764, 'Fitim nga rivleresimi i letrave me vlere', 10, 11, '395'),
(400, 765, 'Fitim nga shitja e letrave me vlere', 10, 11, '395'),
(402, 767, 'Te ardhura nga interesat', 10, 11, '395'),
(403, 768, 'Te ardhura te tjera financiare', 10, 11, '395'),
(404, 77, 'Te ardhura nga rivleresimi/shitja e aktiveve', 10, 46, '365'),
(419, 8, 'Llogarite jashte bilancit', 11, -1, '-1'),
(420, 80, 'Llogari te angazhimeve(aktive) ', 11, 2, '419'),
(421, 801, 'Angazhime te ndermarrjes ndaj te treteve(aktive)', 11, 2, '420'),
(422, 8014, 'Efekte ne qarkullim ne ngarkim te nderm', 11, 2, '421'),
(423, 802, 'Angazhime te te treteve(aktive)', 11, 2, '420'),
(424, 809, 'Kunderparti e angazhimeve(aktive)', 11, 2, '420'),
(425, 8091, 'Kunderparti e llogarise 801', 11, 2, '424'),
(426, 8092, 'Kunderparti e llogarise 802', 11, 2, '424'),
(427, 81, 'Llogari te sendeve te marra me qira(aktive)', 11, 18, '419'),
(428, 812, 'Aktive te qendrueshme(aktive)', 11, 18, '427'),
(429, 813, 'Gjendje te inventarit(aktive)', 11, 18, '427'),
(430, 819, 'Llogari kunderparti(aktive)', 11, 18, '427'),
(431, 8192, 'Kunderparti e llogarise 812', 11, 18, '430'),
(432, 8193, 'Kunderparti e llogarise 813', 11, 18, '430'),
(433, 89, 'Llogarite rregulluese tatimore(pasive)', 11, 7, '419'),
(434, 890, 'Bilanci i Çeljes', 11, 7, '433'),
(435, 891, 'Bilanci i Mbylljes', 11, 7, '433'),
(498, 109, 'Rezultati i ushtrimit', 1, 16, '2'),
(499, 205, 'Koncesione te drejta te ngjashme licenca te ngjashme', 3, 47, '49'),
(500, 3127, 'Materiale te tjera', 5, 20, '142'),
(501, 414, 'Kliente per aktivet afatgjata', 6, 17, '185'),
(502, 460, 'Qera financiare', 6, 8, '225'),
(503, 461, 'Huamarrje afatshkurtra', 6, 8, '225'),
(504, 463, 'Provizionet', 6, 8, '225'),
(505, 4631, 'Afatshkurter', 6, 8, '504'),
(506, 4632, 'Afatgjate', 6, 8, '504'),
(507, 466, 'Grante', 6, 8, '225'),
(508, 4661, 'Afatshkurtra', 6, 8, '507'),
(509, 4662, 'Afatgjate', 6, 8, '507'),
(510, 4681, 'Bankat', 6, 8, '230'),
(511, 4682, 'Obligacionet', 6, 8, '230'),
(512, 46821, 'Primi i obligacionit', 6, 8, '511'),
(513, 46822, 'Zbritja e obligacionit', 6, 8, '511'),
(514, 469, 'Huadhenie afatshkurter', 6, 8, '225'),
(515, 483, 'Interesa aktive te llogaritura', 7, 50, '239'),
(516, 484, 'Interesa pasive te llogaritura', 7, 50, '239'),
(517, 5111, 'Vlera monetare ne tranzit ne lek', 8, 5, '260'),
(518, 5322, 'Bileta', 8, 4, '274'),
(519, 5421, 'Hua ne lek', 8, 49, '281'),
(520, 5422, 'Hua ne monedha te huaja', 8, 49, '281'),
(521, 543, 'Letra me vlere te blera (te mbajtura deri ne maturim)', 8, 49, '277'),
(522, 5431, 'Letra me vlere te blera ne lek', 8, 49, '521'),
(523, 5432, 'Letra me vlere te blera ne monedha te huaja', 8, 49, '521'),
(524, 544, 'Letra me vlere te borxhit te emetuara', 8, 49, '277'),
(525, 5441, 'Letra me vlere te emetuara ne lek', 8, 49, '524'),
(526, 5442, 'Letra me vlere te emetuara ne monedha te huaja', 8, 49, '524'),
(527, 55, 'Derivatet dhe instrumentat financiare', 8, -1, '248'),
(528, 551, 'Derivatet', 8, -1, '527'),
(529, 5511, 'Vlera pozitive(aktivet)', 8, -1, '528'),
(530, 5512, 'Vlera negative(detyrimet)', 8, -1, '528'),
(531, 552, 'Instrumente financiare primare per tregtim', 8, -1, '527'),
(532, 559, 'Aktive te tjera financiare per tregtim', 8, -1, '527'),
(533, 5903, 'Aksionet', 8, 49, '285'),
(534, 5905, 'Obligacionet', 8, 49, '285'),
(535, 599, 'Zhvleresime te tjera per aktivet financiare', 8, 49, '284'),
(536, 634, 'Taksa dhe tarifa vendore', 9, 45, '321'),
(537, 635, 'Taksa e regjistrimit', 9, 45, '321'),
(538, 648, 'Shpenzime te tjera per personelin', 9, 41, '326'),
(539, 664, 'Huumbje nga rivleresimi i letrave me vlere', 9, 40, '338'),
(540, 667, 'Shpenzime per interesa', 9, 40, '338'),
(541, 669, 'Humbje nga kembimet dhe perkthimet valutore', 9, 40, '338'),
(542, 687, 'Shpenzime te tjera per zhvleresime dhe amortizim', 9, 39, '351'),
(543, 7088, 'Te tjera', 10, 46, '374'),
(544, 769, 'Fitim nga kembimet valutore', 10, 11, '395'),
(545, 82, 'Llogarite e angazhimeve(aktive)', 11, -1, '419'),
(546, 820, 'llogarite e angazhimeve', 11, -1, '545'),
(547, 810, 'Sistemi i mjeteve te njesise prane te treteve(aktive)', 11, 18, '427'),
(548, 83, 'Llogarite e rreziqeve(aktive)', 11, -1, '419'),
(549, 830, 'Llogarite e rreziqeve', 11, -1, '548'),
(550, 84, 'Llogarite rregulluese tatimore(aktive)', 11, -1, '419'),
(551, 840, 'Llogarite rregulluese tatimore', 11, -1, '550'),
(552, 85, 'Llogarite e mjeteve te te treteve ne prane njesise(pasive)', 11, -1, '419'),
(553, 850, 'Llogarite e mjeteve te te treteve ne prane njesise(pasive)', 11, -1, '552'),
(554, 86, 'Llogarite e mejeteve te njesise prane te treteve(pasive)', 11, -1, '419'),
(555, 860, 'Llogarite e mejeteve te njesise prane te treteve(pasive)', 11, -1, '554'),
(556, 87, 'Llogarite e angazhimeve(pasive)', 11, -1, '419'),
(557, 870, 'Llogarite e angazhimeve(pasive)', 11, -1, '556'),
(558, 88, 'Llogarite e rreziqeve(pasive)', 11, -1, '419'),
(559, 880, 'Llogarite e rreziqeve(pasive)', 11, -1, '558'),
(560, 102, 'Kapitali i nenshkruar i papaguar', 1, 16, '2'),
(561, 1071, 'Rezerva ligjore', 1, 16, '10'),
(563, 1073, 'Rezerva statutore', 1, 16, '10'),
(564, 1078, 'Rezerva te tjera', 1, 16, '10'),
(565, 265, 'Huadhenie afatgjate', 3, 3, '85'),
(566, 268, 'Te drejta te tjera afatgjata', 3, 3, '85'),
(567, 2901, 'Per emrin e mire', 4, 54, '117'),
(568, 2903, 'Per shpenzimet e zhvillimit', 4, 54, '117'),
(569, 2963, 'Te tjera aksione ose letra me vlere', 4, 54, '131'),
(570, 393, 'Zhvleresimi i prodhimeve ne proces', 5, 9, '172'),
(571, 449, 'Tatim ne burim', 6, 43, '201'),
(572, 4611, 'Bankat', 6, 8, '503'),
(573, 4612, 'Te tjere tituj', 6, 8, '503'),
(580, 103, 'Aksione te thesarit', 1, 16, '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accoount_sub_group`
--
ALTER TABLE `accoount_sub_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_group`
--
ALTER TABLE `account_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_standart`
--
ALTER TABLE `account_standart`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accoount_sub_group`
--
ALTER TABLE `accoount_sub_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `account_group`
--
ALTER TABLE `account_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-04-2020 a las 08:48:13
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `envato`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `add_consolidate`
--

CREATE TABLE IF NOT EXISTS `add_consolidate` (
`id` int(11) NOT NULL,
  `idcon` int(11) NOT NULL,
  `con_tmp` int(11) NOT NULL,
  `order_inv` varchar(60) DEFAULT NULL,
  `s_name` varchar(255) DEFAULT NULL,
  `r_qnty` varchar(128) DEFAULT NULL,
  `r_weight` varchar(128) DEFAULT NULL,
  `v_weight` varchar(60) DEFAULT NULL,
  `r_description` text,
  `r_costtotal` double NOT NULL,
  `created` date NOT NULL,
  `r_hour` time NOT NULL,
  `act_status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `add_container`
--

CREATE TABLE IF NOT EXISTS `add_container` (
`id` int(11) NOT NULL,
  `idcon` int(11) NOT NULL,
  `letter_or` varchar(6) DEFAULT NULL,
  `tracking` varchar(120) DEFAULT NULL,
  `order_inv` varchar(60) DEFAULT NULL,
  `username` varchar(60) NOT NULL,
  `r_name` varchar(255) DEFAULT NULL,
  `r_email` varchar(255) DEFAULT NULL,
  `r_address` varchar(255) DEFAULT NULL,
  `r_phone` varchar(255) DEFAULT NULL,
  `r_dest` varchar(255) DEFAULT NULL,
  `r_city` varchar(255) DEFAULT NULL,
  `r_postal` varchar(255) DEFAULT NULL,
  `origin_port` varchar(120) DEFAULT NULL,
  `destination_port` varchar(120) DEFAULT NULL,
  `origin_off` varchar(255) DEFAULT NULL,
  `package` varchar(255) NOT NULL,
  `r_tax` varchar(128) DEFAULT NULL,
  `total_tax` varchar(60) DEFAULT NULL,
  `r_insurance` varchar(128) DEFAULT NULL,
  `total_insurance` varchar(60) DEFAULT NULL,
  `ship_mode` varchar(128) DEFAULT NULL,
  `n_weight` varchar(128) DEFAULT NULL,
  `g_weight` varchar(60) DEFAULT NULL,
  `s_description` text,
  `length` varchar(128) DEFAULT NULL,
  `width` varchar(128) DEFAULT NULL,
  `height` varchar(128) DEFAULT NULL,
  `incoterms` varchar(128) DEFAULT NULL,
  `pay_mode` varchar(40) DEFAULT NULL,
  `r_curren` varchar(128) DEFAULT NULL,
  `r_costtotal` double NOT NULL,
  `payment_status` tinyint(4) NOT NULL,
  `s_week` varchar(6) DEFAULT NULL,
  `expiration_date` varchar(20) NOT NULL,
  `deli_time` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `r_hour` time NOT NULL,
  `courier` varchar(255) NOT NULL,
  `status_courier` varchar(128) DEFAULT NULL,
  `act_status` tinyint(1) NOT NULL,
  `level` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `add_courier`
--

CREATE TABLE IF NOT EXISTS `add_courier` (
`id` int(11) NOT NULL,
  `qid` int(11) DEFAULT NULL,
  `letter_or` varchar(6) DEFAULT NULL,
  `tracking` varchar(120) DEFAULT NULL,
  `order_inv` varchar(60) DEFAULT NULL,
  `order_purchase` varchar(255) DEFAULT NULL,
  `n_trackc` varchar(60) DEFAULT NULL,
  `s_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(60) NOT NULL,
  `r_name` varchar(255) DEFAULT NULL,
  `r_email` varchar(255) DEFAULT NULL,
  `r_address` varchar(255) DEFAULT NULL,
  `r_addresspickup` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude_history` varchar(255) DEFAULT NULL,
  `longitude_history` varchar(255) DEFAULT NULL,
  `r_phone` varchar(255) DEFAULT NULL,
  `rc_phone` varchar(120) DEFAULT NULL,
  `r_dest` varchar(255) DEFAULT NULL,
  `r_city` varchar(255) DEFAULT NULL,
  `r_postal` varchar(255) DEFAULT NULL,
  `origin_off` varchar(255) DEFAULT NULL,
  `code_offnew` varchar(120) DEFAULT NULL,
  `agency` varchar(255) DEFAULT NULL,
  `package` varchar(255) NOT NULL,
  `r_tax` varchar(128) DEFAULT NULL,
  `total_tax` varchar(60) DEFAULT NULL,
  `r_insurance` varchar(128) DEFAULT NULL,
  `total_insurance` varchar(60) DEFAULT NULL,
  `value_weight` varchar(120) DEFAULT NULL,
  `c_handling` varchar(120) DEFAULT NULL,
  `l_price` varchar(120) DEFAULT NULL,
  `itemcat` varchar(255) NOT NULL,
  `r_qnty` varchar(128) DEFAULT NULL,
  `r_weight` varchar(128) DEFAULT NULL,
  `v_weight` varchar(60) DEFAULT NULL,
  `r_description` text,
  `supplier` text,
  `package_invoice` text,
  `t_weight` varchar(128) DEFAULT NULL,
  `r_custom` varchar(128) DEFAULT NULL,
  `pay_mode` varchar(40) DEFAULT NULL,
  `r_curren` varchar(128) DEFAULT NULL,
  `r_costtotal` varchar(255) DEFAULT NULL,
  `payment_status` varchar(12) DEFAULT NULL,
  `deli_time` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `r_hour` time NOT NULL,
  `courier` varchar(255) NOT NULL,
  `service_options` varchar(120) DEFAULT NULL,
  `collection_courier` varchar(255) DEFAULT NULL,
  `c_driver` varchar(120) DEFAULT NULL,
  `status_courier` varchar(128) DEFAULT NULL,
  `status_novelty` tinyint(1) NOT NULL DEFAULT '0',
  `status_prealert` varchar(120) DEFAULT NULL,
  `status_pickup` tinyint(11) DEFAULT NULL,
  `act_status` varchar(12) DEFAULT NULL,
  `con_status` tinyint(11) DEFAULT NULL,
  `consol_id` tinyint(11) DEFAULT NULL,
  `consol_tid` int(11) DEFAULT NULL,
  `id_pickup` tinyint(11) DEFAULT NULL,
  `id_quote` int(11) DEFAULT NULL,
  `id_quotes` varchar(11) DEFAULT NULL,
  `reasons` text,
  `pickup_date` date NOT NULL,
  `pickup_hour` time NOT NULL,
  `new_collection` varchar(255) DEFAULT NULL,
  `deliver_date` varchar(40) DEFAULT NULL,
  `delivery_hour` varchar(40) DEFAULT NULL,
  `person_receives` varchar(120) DEFAULT NULL,
  `name_employee` varchar(120) DEFAULT NULL,
  `level` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `add_quote`
--

CREATE TABLE IF NOT EXISTS `add_quote` (
`id` int(11) NOT NULL,
  `qid` int(20) DEFAULT NULL,
  `idquote` int(20) DEFAULT NULL,
  `letter_or` varchar(6) DEFAULT NULL,
  `tracking` varchar(120) DEFAULT NULL,
  `order_inv` varchar(60) DEFAULT NULL,
  `order_purchase` varchar(255) DEFAULT NULL,
  `n_trackc` varchar(60) DEFAULT NULL,
  `s_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(60) NOT NULL,
  `r_name` varchar(255) DEFAULT NULL,
  `r_email` varchar(255) DEFAULT NULL,
  `r_address` varchar(255) DEFAULT NULL,
  `r_addresspickup` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude_history` varchar(255) DEFAULT NULL,
  `longitude_history` varchar(255) DEFAULT NULL,
  `r_phone` varchar(255) DEFAULT NULL,
  `rc_phone` varchar(120) DEFAULT NULL,
  `r_dest` varchar(255) DEFAULT NULL,
  `r_city` varchar(255) DEFAULT NULL,
  `r_postal` varchar(255) DEFAULT NULL,
  `origin_off` varchar(255) DEFAULT NULL,
  `code_offnew` varchar(120) DEFAULT NULL,
  `package` varchar(255) NOT NULL,
  `r_tax` varchar(128) DEFAULT NULL,
  `total_tax` varchar(60) DEFAULT NULL,
  `r_insurance` varchar(128) DEFAULT NULL,
  `total_insurance` varchar(60) DEFAULT NULL,
  `itemcat` varchar(255) NOT NULL,
  `r_qnty` varchar(128) DEFAULT NULL,
  `r_weight` varchar(128) DEFAULT NULL,
  `v_weight` varchar(60) DEFAULT NULL,
  `r_description` text,
  `supplier` text,
  `package_invoice` text,
  `t_weight` varchar(128) DEFAULT NULL,
  `r_custom` varchar(128) DEFAULT NULL,
  `pay_mode` varchar(40) DEFAULT NULL,
  `r_curren` varchar(128) DEFAULT NULL,
  `r_costtotal` varchar(255) DEFAULT NULL,
  `payment_status` tinyint(4) NOT NULL,
  `deli_time` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `r_hour` time NOT NULL,
  `courier` varchar(255) NOT NULL,
  `service_options` varchar(120) DEFAULT NULL,
  `collection_courier` varchar(255) DEFAULT NULL,
  `c_driver` varchar(120) DEFAULT NULL,
  `status_courier` varchar(128) DEFAULT NULL,
  `status_prealert` varchar(120) DEFAULT NULL,
  `status_pickup` tinyint(11) DEFAULT NULL,
  `act_status` varchar(12) DEFAULT NULL,
  `con_status` tinyint(11) DEFAULT NULL,
  `consol_id` tinyint(11) DEFAULT NULL,
  `consol_tid` int(11) DEFAULT NULL,
  `id_pickup` tinyint(11) DEFAULT NULL,
  `id_quote` tinyint(11) DEFAULT NULL,
  `reasons` text,
  `pickup_date` date NOT NULL,
  `pickup_hour` time NOT NULL,
  `new_collection` varchar(255) DEFAULT NULL,
  `deliver_date` varchar(40) DEFAULT NULL,
  `delivery_hour` varchar(40) DEFAULT NULL,
  `person_receives` varchar(120) DEFAULT NULL,
  `name_employee` varchar(120) DEFAULT NULL,
  `level` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `branchoffices`
--

CREATE TABLE IF NOT EXISTS `branchoffices` (
`id` int(10) NOT NULL,
  `name_branch` varchar(100) DEFAULT NULL,
  `branch_address` varchar(120) DEFAULT NULL,
  `branch_city` varchar(100) DEFAULT NULL,
  `phone_branch` varchar(20) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `branchoffices`
--

INSERT INTO `branchoffices` (`id`, `name_branch`, `branch_address`, `branch_city`, `phone_branch`) VALUES
(1, 'AGENCY 1', 'Miami', 'Miami', '123456789'),
(2, 'AGENCY 2', 'Chile', 'Chile', '123456789'),
(3, 'AGENCY 3', 'Panama', 'Panama', '123456789'),
(4, 'ALL AGENCIES', 'MIAMI', 'MIAMI', '1234567');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(5) NOT NULL,
  `name_item` varchar(120) DEFAULT NULL,
  `detail_item` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name_item`, `detail_item`) VALUES
(1, 'Accessory (no-battery)', 'Accessory (no-battery)'),
(2, 'Accessory (with battery)', 'Accessory (with battery)'),
(3, 'Audio Video', 'Audio Video'),
(4, 'Bags & Luggages', 'Bags & Luggages'),
(5, 'Books & Collectibles', 'Books & Collectibles'),
(6, 'Cameras', 'Cameras'),
(7, 'Computers & Laptops', 'Computers & Laptops'),
(8, 'Documents', 'Documents'),
(9, 'Dry Food & Supplements', 'Dry Food & Supplements'),
(10, 'Fashion', 'Fashion'),
(11, 'Gaming', 'Gaming'),
(12, 'Health & Beauty', 'Health & Beauty'),
(13, 'Home Appliances', 'Home Appliances'),
(14, 'Home Decor', 'Home Decor'),
(15, 'Jewelry', 'Jewelry'),
(16, 'Mobile Phones', 'Mobile Phones'),
(17, 'Pet Accessory', 'Pet Accessory'),
(18, 'Sauce', 'Sauce'),
(19, 'Sport & Leisure', 'Sport & Leisure'),
(20, 'Tablets', 'Tablets'),
(21, 'Toys', 'Toys'),
(22, 'Watches', 'Watches');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consolidate`
--

CREATE TABLE IF NOT EXISTS `consolidate` (
`id` int(11) NOT NULL,
  `letter_or` varchar(6) DEFAULT NULL,
  `tracking` varchar(120) DEFAULT NULL,
  `order_inv` varchar(60) DEFAULT NULL,
  `seals` varchar(60) DEFAULT NULL,
  `username` varchar(60) NOT NULL,
  `r_name` varchar(255) DEFAULT NULL,
  `r_email` varchar(255) DEFAULT NULL,
  `r_address` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude_history` varchar(500) DEFAULT NULL,
  `longitude_history` varchar(500) DEFAULT NULL,
  `r_phone` varchar(255) DEFAULT NULL,
  `r_dest` varchar(255) DEFAULT NULL,
  `r_declarate` varchar(60) DEFAULT NULL,
  `r_tax` varchar(11) DEFAULT NULL,
  `r_insurance` varchar(11) DEFAULT NULL,
  `r_qnty` varchar(60) DEFAULT NULL,
  `r_weight` varchar(60) DEFAULT NULL,
  `v_weight` varchar(11) DEFAULT NULL,
  `code_off` varchar(128) DEFAULT NULL,
  `agency` varchar(120) DEFAULT NULL,
  `c_add_pound` varchar(60) DEFAULT NULL,
  `reexpedition` varchar(60) DEFAULT NULL,
  `r_costtotal` double NOT NULL,
  `total_insurance` varchar(120) DEFAULT NULL,
  `total_tax` varchar(60) DEFAULT NULL,
  `value_weight` varchar(60) DEFAULT NULL,
  `c_handling` varchar(60) DEFAULT NULL,
  `l_price` varchar(60) DEFAULT NULL,
  `pay_mode` varchar(60) NOT NULL,
  `payment_status` tinyint(4) NOT NULL,
  `deli_time` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `r_hour` time NOT NULL,
  `courier` varchar(255) NOT NULL,
  `service_options` varchar(120) DEFAULT NULL,
  `c_driver` varchar(255) DEFAULT NULL,
  `status_courier` varchar(128) DEFAULT NULL,
  `act_status` tinyint(1) DEFAULT NULL,
  `con_status` tinyint(11) DEFAULT NULL,
  `consol_id` tinyint(11) DEFAULT NULL,
  `consol_tid` int(11) DEFAULT NULL,
  `comments` text,
  `deliver_date` varchar(40) DEFAULT NULL,
  `delivery_hour` varchar(40) DEFAULT NULL,
  `person_receives` varchar(120) DEFAULT NULL,
  `name_employee` varchar(120) DEFAULT NULL,
  `level` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courier_com`
--

CREATE TABLE IF NOT EXISTS `courier_com` (
`id` int(10) NOT NULL,
  `name_com` varchar(100) DEFAULT NULL,
  `address_cou` varchar(120) DEFAULT NULL,
  `phone_cou` varchar(20) DEFAULT NULL,
  `country_cou` varchar(100) DEFAULT NULL,
  `city_cou` varchar(100) DEFAULT NULL,
  `postal_cou` varchar(100) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `courier_com`
--

INSERT INTO `courier_com` (`id`, `name_com`, `address_cou`, `phone_cou`, `country_cou`, `city_cou`, `postal_cou`) VALUES
(83, 'USPS / international mail', 'WASHINGTON DC', '+1-800-275-8777', 'U.S', 'WASHINGTON DC', '05781'),
(78, 'FedEx', 'Renaissance Center 1715 Aaron Brenner Drive Suite 600 Memphis,', '1.866.393.4585', 'UNITED STATES', 'Memphis', '38120'),
(85, 'DHL/Airborne', 'WASHINGTON DC', '1-800-225-5345', 'UNITED STATES', 'WASHINGTON DC', '38120'),
(86, 'TNT', 'WASHINGTON DC', '800-003-3339', 'UNITED STATES', 'WASHINGTON DC', '38120'),
(87, 'UPS', 'WASHINGTON DC', '01 8000 120 920', 'UNITED STATES', 'MIAMI', '38120'),
(88, 'ROYAL MAIL', '100 Victoria Embankment London EC4Y 0HQ', '034758598', 'REINO UNIDO', 'LONDRES', '38120'),
(89, 'FedEx Freight', 'Renaissance Center 1715 Aaron Brenner Drive Suite 600 Memphis,', '1.866.393.4585', 'UNITED STATES', 'Memphis', '38120'),
(90, 'LaserShip', 'LaserShip Inc. 1912 Woodford Road Vienna, VA 22182 United States', '(804) 414-2590', 'UNITED STATES', 'New Jersey', '38120'),
(91, 'UPS Mail Innovations', 'WASHINGTON DC', '01 8000 120 920', 'UNITED STATES', 'MMIAMI', '38120'),
(92, 'China Post / international mail', 'No.3 Financial Street, Xicheng District, Beijing', '8610 4008909999', 'CHINA', 'Pekin', '100808');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courier_track`
--

CREATE TABLE IF NOT EXISTS `courier_track` (
`id` int(10) NOT NULL,
  `t_id` varchar(20) DEFAULT NULL,
  `order_track` varchar(100) DEFAULT NULL,
  `t_dest` varchar(255) DEFAULT NULL,
  `t_city` varchar(250) DEFAULT NULL,
  `latitude_history` varchar(255) DEFAULT NULL,
  `longitude_history` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `rc_phone` varchar(60) DEFAULT NULL,
  `t_date` varchar(100) DEFAULT NULL,
  `t_hour` varchar(120) DEFAULT NULL,
  `status_courier` varchar(120) DEFAULT NULL,
  `code_offnew` varchar(120) DEFAULT NULL,
  `t_level` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `custom_novelty`
--

CREATE TABLE IF NOT EXISTS `custom_novelty` (
`id` int(11) NOT NULL,
  `id_custom` int(11) DEFAULT NULL,
  `n_qid` varchar(11) DEFAULT NULL,
  `order_inv` varchar(120) DEFAULT NULL,
  `type_novelty` varchar(255) DEFAULT NULL,
  `readjustment` varchar(120) DEFAULT NULL,
  `novelty_concept` varchar(255) DEFAULT NULL,
  `novelty_observation` text,
  `novelty_observation_liberate` varchar(500) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `date_novelty` varchar(120) NOT NULL,
  `date_novelty_liberate` varchar(255) DEFAULT NULL,
  `declared_value` varchar(120) DEFAULT NULL,
  `origin_off` varchar(120) DEFAULT NULL,
  `novelty_origin` varchar(255) DEFAULT NULL,
  `status_novelty` varchar(60) DEFAULT NULL,
  `level` varchar(60) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_tracking`
--

CREATE TABLE IF NOT EXISTS `c_tracking` (
`id` int(100) NOT NULL,
  `n_order` varchar(255) DEFAULT NULL,
  `order_track` varchar(120) DEFAULT NULL,
  `name_off` varchar(250) DEFAULT NULL,
  `role_user` varchar(250) DEFAULT NULL,
  `created_courier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_time`
--

CREATE TABLE IF NOT EXISTS `delivery_time` (
`id` int(11) NOT NULL,
  `delitime` varchar(200) DEFAULT NULL,
  `detail` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `delivery_time`
--

INSERT INTO `delivery_time` (`id`, `delitime`, `detail`) VALUES
(1, '1 - 2 Days', 'Delivery time from 1 to 2 days'),
(2, '1 - 3 Days', 'Delivery time from 1 to 3 days'),
(3, '1 - 4 Days', 'Delivery time from 1 to 4 days'),
(4, '1 - 5 Days', 'Delivery time from 1 to 5 days'),
(5, '1 - 6 Days', 'Delivery time from 1 to 6 days'),
(6, '1 - 7 Days', 'Delivery time from 1 to 7 days'),
(7, '1  Week', 'Delivery time from 1 week'),
(8, '2 Week', 'Delivery time from 2 week'),
(9, '3 Week', 'Delivery time from 3 week'),
(10, '1 Month', 'Delivery time from 1 month'),
(11, '2 Month', 'Delivery time from 2 month');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detail_addcourier`
--

CREATE TABLE IF NOT EXISTS `detail_addcourier` (
`id` int(11) NOT NULL,
  `id_add` int(20) NOT NULL,
  `detail_weight` varchar(60) NOT NULL,
  `detail_length` text NOT NULL,
  `detail_width` varchar(255) NOT NULL,
  `detail_height` varchar(255) NOT NULL,
  `detail_vol` varchar(255) NOT NULL,
  `detail_description` varchar(255) NOT NULL,
  `detail_qnty` text,
  `detail_created` date NOT NULL,
  `origin_off` varchar(255) DEFAULT NULL,
  `level` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detail_addcourier_tmp`
--

CREATE TABLE IF NOT EXISTS `detail_addcourier_tmp` (
`id` int(11) NOT NULL,
  `id_add` int(20) NOT NULL,
  `detail_weight` varchar(60) NOT NULL,
  `detail_length` varchar(255) NOT NULL,
  `detail_width` varchar(255) NOT NULL,
  `detail_height` varchar(255) NOT NULL,
  `detail_vol` varchar(255) NOT NULL,
  `detail_description` varchar(255) NOT NULL,
  `detail_qnty` text,
  `detail_created` date NOT NULL,
  `origin_off` varchar(255) DEFAULT NULL,
  `level` varchar(120) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detail_addquote`
--

CREATE TABLE IF NOT EXISTS `detail_addquote` (
`id` int(11) NOT NULL,
  `id_add` int(20) NOT NULL,
  `detail_weight` varchar(60) NOT NULL,
  `detail_length` text NOT NULL,
  `detail_width` varchar(255) NOT NULL,
  `detail_height` varchar(255) NOT NULL,
  `detail_vol` varchar(255) NOT NULL,
  `detail_description` varchar(255) NOT NULL,
  `detail_qnty` text,
  `detail_created` date NOT NULL,
  `origin_off` varchar(255) DEFAULT NULL,
  `level` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detail_addquote_tmp`
--

CREATE TABLE IF NOT EXISTS `detail_addquote_tmp` (
`id` int(11) NOT NULL,
  `id_add` int(20) NOT NULL,
  `detail_weight` varchar(60) NOT NULL,
  `detail_length` varchar(255) NOT NULL,
  `detail_width` varchar(255) NOT NULL,
  `detail_height` varchar(255) NOT NULL,
  `detail_vol` varchar(255) NOT NULL,
  `detail_description` varchar(255) NOT NULL,
  `detail_qnty` text,
  `detail_created` date NOT NULL,
  `origin_off` varchar(255) DEFAULT NULL,
  `level` varchar(120) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detail_container`
--

CREATE TABLE IF NOT EXISTS `detail_container` (
`id` int(11) NOT NULL,
  `idcon` int(20) NOT NULL,
  `order_inv` varchar(60) NOT NULL,
  `detail_container` text NOT NULL,
  `detail_weight` varchar(255) NOT NULL,
  `detail_qty` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `tprice` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `act_status` varchar(6) NOT NULL,
  `origin_off` varchar(255) DEFAULT NULL,
  `level` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detail_container_tmp`
--

CREATE TABLE IF NOT EXISTS `detail_container_tmp` (
`id` int(11) NOT NULL,
  `idcon` int(20) NOT NULL,
  `order_inv` varchar(60) NOT NULL,
  `detail_container` text NOT NULL,
  `detail_weight` varchar(255) NOT NULL,
  `detail_qty` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `tprice` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `act_status` varchar(6) NOT NULL,
  `origin_off` varchar(255) DEFAULT NULL,
  `level` varchar(120) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_templates`
--

CREATE TABLE IF NOT EXISTS `email_templates` (
`id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `help` text,
  `body` text
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `help`, `body`) VALUES
(1, 'Registration Email', 'Please verify your email', 'This template is used to send Registration Verification Email, when Configuration-&gt;Registration Verification is set to YES', '												&lt;link href=&quot;https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600&quot; rel=&quot;stylesheet&quot; type=&quot;text/css&quot;&gt;	&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;		&lt;/table&gt;&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot; style=&quot;max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;&quot;&gt; 			&lt;tbody&gt;&lt;tr bgcolor=&quot;#f62d51&quot; height=&quot;5px&quot;&gt;				&lt;td align=&quot;center&quot; style=&quot;font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;&quot;&gt;				&lt;/td&gt;			&lt;/tr&gt;			&lt;tr bgcolor=&quot;#f9f9f9&quot;&gt;				&lt;td style=&quot;padding:40px;&quot;&gt;					&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;						&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;img src=&quot;[URL]/uploads/logo.png&quot; class=&quot;logo&quot;&gt;&lt;/td&gt;&lt;/tr&gt;												&lt;tr&gt;							&lt;td style=&quot;font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;&quot;&gt;							Hi!							&lt;/td&gt;						&lt;/tr&gt;						&lt;tr&gt;&lt;td style=&quot;font-family: Montserrat, Arial, sans serif; margin:5px 0 0; font-size: 12px; font-weight:400;word-break: break-word;color:#333;line-height: 22px; position: relative; top: 10px;&quot;&gt;							[NAME]! Thanks for registering.						&lt;/td&gt;						&lt;/tr&gt;&lt;tr height=&quot;30&quot;&gt;&lt;/tr&gt;						&lt;tr&gt;							&lt;td style=&quot;margin: 40px 0;line-height: 22px; font-family: &#039;Montserrat&#039;, Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;&quot;&gt;								You&#039;re now a member of [SITE_NAME].								&lt;br&gt;								Here are your login details. Please keep them in a safe place:								&lt;br&gt;&lt;br&gt;								Username: &lt;b&gt;[USERNAME]&lt;/b&gt;								&lt;br&gt;								Password: &lt;b&gt;[PASSWORD]&lt;/b&gt;                                                                &lt;br&gt;                                                                Locker: &lt;b&gt;[LOCKER]&lt;/b&gt; 								&lt;br&gt;&lt;br&gt;									The administrator of this site has requested all new accounts									to be activated by the users who created them thus your account									is currently inactive. To activate your account,									please visit the link below and enter the following:								&lt;br&gt;&lt;br&gt;								&lt;span style=&quot;color:#846add;&quot;&gt;Activate Information:&lt;/span&gt;&lt;br&gt;&lt;br&gt;								&lt;span&gt;								Token: [TOKEN]								&lt;br&gt;								Email: [EMAIL]								&lt;br&gt;&lt;br&gt;								&lt;a href=&quot;[URL]/activate.php&quot;&gt;Click here to activate tour account&lt;/a&gt;								&lt;/span&gt;								&lt;br&gt;&lt;br&gt;&lt;br&gt;								Thanks,&lt;br&gt;								[SITE_NAME] Team,&lt;br&gt;								&lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/td&gt;													&lt;/tr&gt;						&lt;tr height=&quot;50&quot;&gt;&lt;/tr&gt;						&lt;tr&gt;							&lt;td style=&quot;margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;&quot;&gt;								To reply to this message you can simply reply this email.							&lt;/td&gt;						&lt;/tr&gt;					&lt;/tbody&gt;&lt;/table&gt;				&lt;/td&gt;			&lt;/tr&gt;		&lt;/tbody&gt;&lt;/table&gt; 												'),
(2, 'I forgot my email password', 'Password Reset', 'This template is used to recover lost user password.', '												&lt;!doctype html&gt;\n&lt;html&gt;\n\n&lt;head&gt;\n&lt;link href=&#039;https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600&#039; rel=&#039;stylesheet&#039; type=&#039;text/css&#039;&gt;\n&lt;/head&gt;\n\n&lt;body style=&#039;margin: 0; padding: 20px; font-family: Montserrat, Arial, sans serif; font-size: 12px;font-weight:400;word-break: break-word;color:#555;line-height: 18px;&#039;&gt;\n	&lt;table border=&#039;0&#039; cellpadding=&#039;0&#039; cellspacing=&#039;0&#039; width=&#039;100%&#039;&gt;\n		&lt;table align=&#039;center&#039; border=&#039;0&#039; cellpadding=&#039;0&#039; cellspacing=&#039;0&#039; width=&#039;100%&#039; style=&#039;max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;&#039;&gt; \n\n			&lt;tr bgcolor=&#039;#f62d51&#039; height=&#039;5px&#039;&gt;\n				&lt;td align=&#039;center&#039; style=&#039;font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;&#039;&gt;\n				&lt;/td&gt;\n			&lt;/tr&gt;\n			&lt;tr bgcolor=&#039;#f9f9f9&#039;&gt;\n				&lt;td style=&#039;padding:40px;&#039;&gt;\n					&lt;table border=&#039;0&#039; cellpadding=&#039;0&#039; cellspacing=&#039;0&#039; width=&#039;100%&#039;&gt;\n						&lt;tr&gt;&lt;td&gt;&lt;img src=&quot;[URL]/uploads/logo.png&quot; class=&quot;logo&quot;/&gt;&lt;/td&gt;&lt;/tr&gt;\n						&lt;br&gt;&lt;br&gt;&lt;br&gt;\n						&lt;tr&gt;\n							&lt;td style=&#039;font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;&#039;&gt;\n							Hi!\n							&lt;/td&gt;\n						&lt;/tr&gt;\n						&lt;td style=&#039;font-family: Montserrat, Arial, sans serif; margin:5px 0 0; font-size: 12px; font-weight:400;word-break: break-word;color:#333;line-height: 22px; position: relative; top: 10px;&#039;&gt;\n							&lt;strong&gt;[USERNAME]&lt;/strong&gt;\n						&lt;/td&gt;\n						&lt;tr height=&#039;30&#039;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;margin: 40px 0;line-height: 22px; font-family: &#039;Montserrat&#039;, Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;&quot;&gt;\n								You&#039;re now a member of [SITE_NAME].\n								&lt;br&gt;\n								It seems that you or someone requested a new password for you.\n								We have generated a new password, as requested:\n								&lt;br&gt;&lt;br&gt;\n								Your new password: &lt;b&gt;[PASSWORD]&lt;/b&gt;\n								&lt;br&gt;&lt;br&gt;\n								To use the new password you need to activate it. To do this click the link provided below and login with your new password.\n								&lt;br&gt;&lt;br&gt;\n								&lt;a href=&quot;[LINK]&quot;&gt;[LINK]&lt;/a&gt;&lt;br /&gt;\n								&lt;br&gt;&lt;br&gt;\n								You can change your password after you sign in.&lt;hr /&gt;\n								Password requested from IP: [IP]&lt;/td&gt;\n								&lt;br&gt;&lt;br&gt;&lt;br&gt;\n								Thanks,&lt;br&gt;\n								[SITE_NAME] Team,&lt;br&gt;\n								&lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/em&gt;&lt;/td&gt;\n							&lt;/td&gt;\n						&lt;/tr&gt;\n						&lt;tr height=&#039;50&#039;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&#039;margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;&#039;&gt;\n								To reply to this message you can simply reply this email.\n							&lt;/td&gt;\n						&lt;/tr&gt;\n					&lt;/table&gt;\n				&lt;/td&gt;\n			&lt;/tr&gt;\n		&lt;/table&gt; \n	&lt;/table&gt;\n&lt;/body&gt;\n&lt;/html&gt;											'),
(3, 'Welcome Mail From Admin', 'You have been registered', 'This template is used to send welcome email, when user is added by administrator', '																							&lt;!doctype html&gt;\n&lt;html&gt;\n\n&lt;head&gt;\n&lt;link href=&#039;https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600&#039; rel=&#039;stylesheet&#039; type=&#039;text/css&#039;&gt;\n&lt;/head&gt;\n\n&lt;body style=&#039;margin: 0; padding: 20px; font-family: Montserrat, Arial, sans serif; font-size: 12px;font-weight:400;word-break: break-word;color:#555;line-height: 18px;&#039;&gt;\n	&lt;table border=&#039;0&#039; cellpadding=&#039;0&#039; cellspacing=&#039;0&#039; width=&#039;100%&#039;&gt;\n		&lt;table align=&#039;center&#039; border=&#039;0&#039; cellpadding=&#039;0&#039; cellspacing=&#039;0&#039; width=&#039;100%&#039; style=&#039;max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;&#039;&gt; \n\n			&lt;tr bgcolor=&#039;#f62d51&#039; height=&#039;5px&#039;&gt;\n				&lt;td align=&#039;center&#039; style=&#039;font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;&#039;&gt;\n				&lt;/td&gt;\n			&lt;/tr&gt;\n			&lt;tr bgcolor=&#039;#f9f9f9&#039;&gt;\n				&lt;td style=&#039;padding:40px;&#039;&gt;\n					&lt;table border=&#039;0&#039; cellpadding=&#039;0&#039; cellspacing=&#039;0&#039; width=&#039;100%&#039;&gt;\n						&lt;tr&gt;&lt;td&gt;&lt;img src=&quot;[URL]/uploads/logo.png&quot; class=&quot;logo&quot;/&gt;&lt;/td&gt;&lt;/tr&gt;\n						&lt;br&gt;&lt;br&gt;\n						&lt;tr height=&#039;30&#039;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&#039;font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:17px; font-weight:400;&#039;&gt;\n							Hi! [NAME]!, Welcome You have been Registered\n							&lt;/td&gt;\n						&lt;/tr&gt;\n						&lt;tr height=&#039;15&#039;&gt;&lt;/tr&gt;\n						&lt;td style=&#039;font-family: Montserrat, Arial, sans serif; margin:5px 0 0; font-size: 12px; font-weight:400;word-break: break-word;color:#333;line-height: 22px; position: relative; top: 10px;&#039;&gt;\n							You&#039;re now a member of [SITE_NAME].\n						&lt;/td&gt;\n						&lt;tr height=&#039;30&#039;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;margin: 40px 0;line-height: 22px; font-family: &#039;Montserrat&#039;, Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;&quot;&gt;\n								Here are your login details. Please keep them in a safe place:\n								&lt;br&gt;&lt;br&gt;\n								Username: &lt;b&gt;[USERNAME]&lt;/b&gt;\n								&lt;br&gt;\n								Password: &lt;b&gt;[PASSWORD]&lt;/b&gt;								\n								&lt;br&gt;&lt;br&gt;&lt;br&gt;\n								Thanks,&lt;br&gt;\n								[SITE_NAME] Team,&lt;br&gt;\n								&lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/em&gt;&lt;/td&gt;\n							&lt;/td&gt;\n						&lt;/tr&gt;\n						&lt;tr height=&#039;50&#039;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&#039;margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;&#039;&gt;\n								To reply to this message you can simply reply this email.\n							&lt;/td&gt;\n						&lt;/tr&gt;\n					&lt;/table&gt;\n				&lt;/td&gt;\n			&lt;/tr&gt;\n		&lt;/table&gt; \n	&lt;/table&gt;\n&lt;/body&gt;\n&lt;/html&gt;																					'),
(4, 'Default mail', 'Newsletter', 'This is a default newsletter template.', '																							&lt;link href=&quot;https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600&quot; rel=&quot;stylesheet&quot; type=&quot;text/css&quot;&gt;	&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;		&lt;/table&gt;&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot; style=&quot;max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;&quot;&gt; 			&lt;tbody&gt;&lt;tr bgcolor=&quot;#f62d51&quot; height=&quot;5px&quot;&gt;				&lt;td align=&quot;center&quot; style=&quot;font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;&quot;&gt;				&lt;/td&gt;			&lt;/tr&gt;			&lt;tr bgcolor=&quot;#f9f9f9&quot;&gt;				&lt;td style=&quot;padding:40px;&quot;&gt;					&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;						&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;img src=&quot;[URL]/uploads/logo.png&quot; class=&quot;logo&quot;&gt;&lt;/td&gt;&lt;/tr&gt;												&lt;tr height=&quot;15&quot;&gt;&lt;/tr&gt;						&lt;tr&gt;							&lt;td style=&quot;font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;&quot;&gt;							Hello! [NAME]!							&lt;/td&gt;						&lt;/tr&gt;						&lt;tr height=&quot;30&quot;&gt;&lt;/tr&gt;						&lt;tr&gt;							&lt;td style=&quot;margin: 40px 0;line-height: 22px; font-family: &#039;Montserrat&#039;, Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;&quot;&gt;								You are now a member of [SITE_NAME].																&lt;br&gt;&lt;br&gt;									You are receiving this email as part of your newsletter subscription.									&lt;hr&gt;									Here is the content of your newsletter									&lt;hr&gt;								&lt;br&gt;&lt;br&gt;&lt;br&gt;								Thank you,&lt;br&gt;								[SITE_NAME] Team,&lt;br&gt;								&lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/td&gt;													&lt;/tr&gt;						&lt;tr height=&quot;50&quot;&gt;&lt;/tr&gt;						&lt;tr&gt;							&lt;td style=&quot;margin: 40px 0px; line-height: 22px; word-break: break-word; padding-top: 10px; border-top: 1px solid rgb(226, 226, 226);&quot;&gt;&lt;font face=&quot;Montserrat, Arial, sans serif&quot;&gt;&lt;span style=&quot;font-size: 11px;&quot;&gt;&lt;i&gt;To stop receiving future newsletters, log in to your account and uncheck the newsletter subscription box.&lt;/i&gt;&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;br&gt;&lt;font face=&quot;Montserrat, Arial, sans serif&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;To reply to this message, you can simply reply to this email.&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/td&gt;						&lt;/tr&gt;					&lt;/tbody&gt;&lt;/table&gt;				&lt;/td&gt;			&lt;/tr&gt;		&lt;/tbody&gt;&lt;/table&gt; 																																			'),
(7, 'Welcome customer registration', 'Welcome', 'This template is used to welcome newly registered user when Configuration-&gt;Registration Verification and Configuration-&gt;Auto Registration are both set to YES', '																																	&lt;table style=&quot;font-family: Roboto,RobotoDraft,Helvetica,Arial,sans-serif; justify-content: center;align-items: center;font-weight: 600; max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;&quot; align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td class=&quot;m_-8364453557841243647logo&quot;&gt;\n				&lt;a href=&quot;https://colbox.online&quot;&gt;\n				  &lt;img src=&quot;[URL]/uploads/logo.png&quot; height=&quot;40&quot; alt=&quot;&quot; class=&quot;CToWUd&quot;&gt;\n				&lt;/a&gt;          \n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;table border=&quot;0&quot; width=&quot;100%&quot; height=&quot;100%&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;\n					&lt;tbody&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;height:5px;width:50%;background:#f7d872&quot;&gt;&lt;/td&gt;\n							&lt;td style=&quot;height:5px;width:25%;background:#2D00B2&quot;&gt;&lt;/td&gt;\n							&lt;td style=&quot;height:5px;width:25%;background:#ff636f&quot;&gt;&lt;/td&gt;\n						&lt;/tr&gt;\n					&lt;/tbody&gt;\n				&lt;/table&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr style=&quot;background:#f9f9f9&quot;&gt;\n			&lt;td class=&quot;m_-8364453557841243647container-padding&quot; bgcolor=&quot;#fff&quot; style=&quot;background-color:#fff;padding-left:30px;padding-right:30px&quot;&gt;\n				&lt;br&gt;&lt;br&gt;\n				&lt;p&gt;\n				  Hello [NAME],\n				&lt;/p&gt;\n\n				&lt;p&gt;\n				  Great news! Your account has been activated and you can start shopping online using your US shipping address.\n				&lt;/p&gt;\n\n				&lt;table class=&quot;m_-8364453557841243647table&quot;&gt;\n				  &lt;tbody&gt;\n						&lt;tr&gt;\n							&lt;td class=&quot;m_-8364453557841243647first&quot;&gt;\n								You are now a member of [SITE_NAME].\n								&lt;br&gt;\n								Here are your login details. Keep them in a safe place:\n								&lt;br&gt;&lt;br&gt;\n								Username: &lt;b&gt;[USERNAME]&lt;/b&gt;\n								&lt;br&gt;\n								Password: &lt;b&gt;[PASSWORD]&lt;/b&gt;\n								&lt;br&gt;&lt;br&gt;&lt;br&gt;\n							&lt;/td&gt;\n							\n						&lt;/tr&gt;\n					&lt;/tbody&gt;\n				&lt;/table&gt;\n\n				&lt;p&gt;Locker Address:&lt;/p&gt;\n				\n				&lt;table class=&quot;m_-8364453557841243647table&quot;&gt;\n					&lt;tbody&gt;\n						&lt;tr&gt;\n							&lt;td class=&quot;m_-8364453557841243647first&quot;&gt; Full name:&lt;/td&gt;\n							&lt;td&gt;&lt;strong&gt;[NAME]&lt;/strong&gt;&lt;/td&gt;\n						&lt;/tr&gt;\n\n						&lt;tr&gt;\n							&lt;td class=&quot;m_-8364453557841243647first&quot;&gt;Direction Line 1:&lt;/td&gt;\n							&lt;td&gt;&lt;strong&gt;1435 W 49th st Hialeah Florida&lt;/strong&gt;&lt;/td&gt;\n						&lt;/tr&gt;\n\n						&lt;tr&gt;\n							&lt;td class=&quot;m_-8364453557841243647first&quot;&gt;Address line 2:&lt;/td&gt;\n							&lt;td&gt;&lt;strong&gt;[LOCKER]&lt;/strong&gt;&lt;/td&gt;\n						&lt;/tr&gt;\n\n						&lt;tr&gt;\n							&lt;td class=&quot;m_-8364453557841243647first&quot;&gt;City:&lt;/td&gt;\n							&lt;td&gt;&lt;strong&gt;Miami&lt;/strong&gt;&lt;/td&gt;\n						&lt;/tr&gt;\n\n						&lt;tr&gt;\n							&lt;td class=&quot;m_-8364453557841243647first&quot;&gt;State:&lt;/td&gt;\n							&lt;td&gt;&lt;strong&gt;FL&lt;/strong&gt;&lt;/td&gt;\n						&lt;/tr&gt;\n\n						&lt;tr&gt;\n							&lt;td class=&quot;m_-8364453557841243647first&quot;&gt;CP:&lt;/td&gt;\n							&lt;td&gt;&lt;strong&gt;33012&lt;/strong&gt;&lt;/td&gt;\n						&lt;/tr&gt;\n\n						&lt;tr&gt;\n							&lt;td class=&quot;m_-8364453557841243647first&quot;&gt;Phone:&lt;/td&gt;\n							&lt;td&gt;&lt;strong&gt;+13053621960&lt;/strong&gt;&lt;/td&gt;\n						&lt;/tr&gt;\n					&lt;/tbody&gt;\n				&lt;/table&gt;\n\n				&lt;p&gt;\n				  &quot;Line 2&quot; of your address is the part that identifies you, and it is very important to include it when you add your shipping address in online stores.\n				&lt;/p&gt;\n\n				&lt;p&gt;When your packages arrive at the warehouse, we will notify you and you can see them in your locker.&lt;br&gt;&lt;/p&gt;\n\n\n				&lt;p&gt;\n				  &lt;a style=&quot;background: #ff636f;border-radius: 100px;line-height: 1;border-style: none;display: inline-block;font-size: 16px;padding: 13px 22px 12px;text-decoration: none;color: white;outline: none;&quot; href=&quot;[URL]&quot;&gt;\n					Access your &lt;span class=&quot;il&quot;&gt;locker&lt;/span&gt; →\n				&lt;/a&gt;&lt;/p&gt;\n\n				&lt;p&gt;\n				  If you have any questions, just reply to this email. We are here to help you!\n				&lt;/p&gt;\n\n				&lt;p&gt;\n				  Best regards,&lt;br&gt; Team&lt;/p&gt;\n			&lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n          &lt;td&gt;\n            &lt;table border=&quot;0&quot; width=&quot;100%&quot; height=&quot;100%&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;\n              &lt;tbody&gt;&lt;tr&gt;\n                &lt;td style=&quot;height:5px;width:50%;background:#f7d872&quot;&gt;&lt;/td&gt;\n                &lt;td style=&quot;height:5px;width:25%;background:#2D00B2&quot;&gt;&lt;/td&gt;\n				&lt;td style=&quot;height:5px;width:25%;background:#ff636f&quot;&gt;&lt;/td&gt;\n              &lt;/tr&gt;\n            &lt;/tbody&gt;&lt;/table&gt;\n          &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n          &lt;td align=&quot;center&quot; style=&quot;padding:30px;text-align:center&quot;&gt;\n            &lt;a style=&quot;font-size:18px;color:#ff636f;text-decoration:none&quot; href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt; - Service at your door\n          &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;																																						'),
(10, 'Quotes', 'Contact quote', 'This template is used to send quotes', '																																			\n\n\n\n&lt;link href=&quot;https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600&quot; rel=&quot;stylesheet&quot; type=&quot;text/css&quot;&gt;\n\n\n\n	&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n		&lt;/table&gt;&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot; style=&quot;max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;&quot;&gt; \n\n			&lt;tbody&gt;&lt;tr bgcolor=&quot;#f62d51&quot; height=&quot;5px&quot;&gt;\n				&lt;td align=&quot;center&quot; style=&quot;font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;&quot;&gt;\n\n				&lt;/td&gt;\n			&lt;/tr&gt;\n			&lt;tr bgcolor=&quot;#f9f9f9&quot;&gt;\n				&lt;td style=&quot;padding:40px;&quot;&gt;\n					&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n						&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;img src=&quot;[URL]/uploads/logo.png&quot; class=&quot;logo&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\n						\n						&lt;tr height=&quot;15&quot;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;&quot;&gt;\n							Hello!\n							&lt;/td&gt;\n						&lt;/tr&gt;\n						&lt;tr height=&quot;30&quot;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;margin: 40px 0px; line-height: 22px; word-break: break-word;&quot;&gt;\n								&lt;br&gt;&lt;br&gt;&lt;font color=&quot;#333333&quot; face=&quot;Montserrat, Arial, sans serif&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;\n									You have a new request for quotation .:         \n									&lt;/span&gt;&lt;/font&gt;&lt;hr style=&quot;color: rgb(51, 51, 51); font-family: Montserrat, Arial, &amp;quot;sans serif&amp;quot;; font-size: 12px; font-weight: 100;&quot;&gt;&lt;font color=&quot;#333333&quot; face=&quot;Montserrat, Arial, sans serif&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;\n									[MESSAGE]         \n									&lt;/span&gt;&lt;/font&gt;&lt;hr style=&quot;color: rgb(51, 51, 51); font-family: Montserrat, Arial, &amp;quot;sans serif&amp;quot;; font-size: 12px; font-weight: 100;&quot;&gt;\n								&lt;br&gt;&lt;br&gt;&lt;font color=&quot;#846add&quot; face=&quot;Montserrat, Arial, sans serif&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;Information:&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;br&gt;&lt;font face=&quot;Montserrat, Arial, sans serif&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;From&lt;/span&gt;&lt;/font&gt;&lt;font color=&quot;#333333&quot; face=&quot;Montserrat, Arial, sans serif&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;: &lt;/span&gt;&lt;/font&gt;&lt;strong style=&quot;color: rgb(51, 51, 51); font-family: Montserrat, Arial, &amp;quot;sans serif&amp;quot;; font-size: 12px; font-weight: 100;&quot;&gt;[SENDER] - [NAME]&lt;/strong&gt;&lt;br&gt;&lt;font face=&quot;Montserrat, Arial, sans serif&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;Affair&lt;/span&gt;&lt;font color=&quot;#333333&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;: &lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;strong style=&quot;color: rgb(51, 51, 51); font-family: Montserrat, Arial, &amp;quot;sans serif&amp;quot;; font-size: 12px; font-weight: 100;&quot;&gt;[MAILSUBJECT]&lt;/strong&gt;&lt;br&gt;&lt;font color=&quot;#333333&quot; face=&quot;Montserrat, Arial, sans serif&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;\n								Senders IP: &lt;/span&gt;&lt;/font&gt;&lt;strong style=&quot;color: rgb(51, 51, 51); font-family: Montserrat, Arial, &amp;quot;sans serif&amp;quot;; font-size: 12px; font-weight: 100;&quot;&gt;[IP]&lt;/strong&gt;\n								\n							&lt;/td&gt;\n						&lt;/tr&gt;\n						&lt;tr height=&quot;50&quot;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;&quot;&gt;\n								\nTo reply to this message, you can simply reply to this email.\n							&lt;/td&gt;\n						&lt;/tr&gt;\n					&lt;/tbody&gt;&lt;/table&gt;\n				&lt;/td&gt;\n			&lt;/tr&gt;\n		&lt;/tbody&gt;&lt;/table&gt; \n	\n\n																																'),
(12, 'Single Email', 'Single User Email', 'This template is used to email single user', '<!doctype html>\r\n<html>\r\n\r\n<head>\r\n<link href=''https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600'' rel=''stylesheet'' type=''text/css''>\r\n</head>\r\n\r\n<body style=''margin: 0; padding: 20px; font-family: Montserrat, Arial, sans serif; font-size: 12px;font-weight:400;word-break: break-word;color:#555;line-height: 18px;''>\r\n	<table border=''0'' cellpadding=''0'' cellspacing=''0'' width=''100%''>\r\n		<table align=''center'' border=''0'' cellpadding=''0'' cellspacing=''0'' width=''100%'' style=''max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;''> \r\n\r\n			<tr bgcolor=''#f62d51'' height=''5px''>\r\n				<td align=''center'' style=''font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;''>\r\n\r\n				</td>\r\n			</tr>\r\n			<tr bgcolor=''#f9f9f9''>\r\n				<td style=''padding:40px;''>\r\n					<table border=''0'' cellpadding=''0'' cellspacing=''0'' width=''100%''>\r\n						<tr><td><img src="[URL]/uploads/logo.png" class="logo"/></td></tr>\r\n						<br><br><br>\r\n						<tr height=''15''></tr>\r\n						<tr>\r\n							<td style=''font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;''>\r\n							Hello [NAME]\r\n							</td>\r\n						</tr>\r\n						<tr height=''30''></tr>\r\n						<tr>\r\n							<td style="margin: 40px 0;line-height: 22px; font-family: ''Montserrat'', Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;">\r\n								<br><br>\r\n									Your message goes here...         \r\n									\r\n								<br><br>\r\n								<span style=''color:#846add;''>Thanks,</span><br><br>\r\n								<span>\r\n								[SITE_NAME] Team\r\n								</span>\r\n							</td>\r\n						</tr>\r\n						<tr height=''50''></tr>\r\n						<tr>\r\n							<td style=''margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;''>\r\n								To reply to this message you can simply reply this email.\r\n							</td>\r\n						</tr>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</table> \r\n	</table>\r\n</body>\r\n</html>'),
(13, 'Administrator Notification', 'New User Registration', 'This template is used to notify the administrator of the new record when Configuration- &amp; gt; Registration notification is set to YES New User Registration', '																							\n\n\n\n&lt;link href=&quot;https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600&quot; rel=&quot;stylesheet&quot; type=&quot;text/css&quot;&gt;\n\n\n\n	&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n		&lt;/table&gt;&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot; style=&quot;max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;&quot;&gt; \n\n			&lt;tbody&gt;&lt;tr bgcolor=&quot;#6610f2&quot; height=&quot;5px&quot;&gt;\n				&lt;td align=&quot;center&quot; style=&quot;font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;&quot;&gt;\n				&lt;/td&gt;\n			&lt;/tr&gt;\n			&lt;tr bgcolor=&quot;#f9f9f9&quot;&gt;\n				&lt;td style=&quot;padding:40px;&quot;&gt;\n					&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n						&lt;tbody&gt;&lt;tr&gt;\n							&lt;td style=&quot;font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;&quot;&gt;\n							Hello!\n							&lt;/td&gt;\n						&lt;/tr&gt;\n						\n						&lt;tr&gt;&lt;td style=&quot;font-family: Montserrat, Arial, sans serif; margin:5px 0 0; font-size: 12px; font-weight:400;word-break: break-word;color:#333;line-height: 22px; position: relative; top: 10px;&quot;&gt;\n							You have a new user registration. You can log in to your administration panel to see the details:\n						&lt;/td&gt;\n						&lt;/tr&gt;&lt;tr height=&quot;30&quot;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;margin: 40px 0;line-height: 22px; font-family: &#039;Montserrat&#039;, Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;&quot;&gt;\n								Username: &lt;b&gt;[USERNAME]&lt;/b&gt;\n								&lt;br&gt;\n								Name: &lt;b&gt;[NAME]&lt;/b&gt;\n								&lt;br&gt;Address IP:   &lt;b&gt;[IP]&lt;/b&gt;\n								&lt;br&gt;\n							&lt;/td&gt;\n						&lt;/tr&gt;\n					&lt;/tbody&gt;&lt;/table&gt;\n				&lt;/td&gt;\n			&lt;/tr&gt;\n		&lt;/tbody&gt;&lt;/table&gt; \n	\n\n																					'),
(14, 'User Registration', 'Registration Verification Pending', 'This template is used to send a registration verification email, when Settings- &amp; gt; Automatic registration is set to NO', '																							\n\n\n\n&lt;link href=&quot;https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600&quot; rel=&quot;stylesheet&quot; type=&quot;text/css&quot;&gt;\n\n\n\n	&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n		&lt;/table&gt;&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot; style=&quot;max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;&quot;&gt; \n\n			&lt;tbody&gt;&lt;tr bgcolor=&quot;#f62d51&quot; height=&quot;5px&quot;&gt;\n				&lt;td align=&quot;center&quot; style=&quot;font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;&quot;&gt;\n				&lt;/td&gt;\n			&lt;/tr&gt;\n			&lt;tr bgcolor=&quot;#f9f9f9&quot;&gt;\n				&lt;td style=&quot;padding:40px;&quot;&gt;\n					&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n						&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;img src=&quot;[URL]/uploads/logo.png&quot; class=&quot;logo&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\n						\n						&lt;tr height=&quot;15&quot;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;&quot;&gt;\n							Hello!\n							&lt;/td&gt;\n						&lt;/tr&gt;\n						&lt;tr&gt;&lt;td style=&quot;font-family: Montserrat, Arial, sans serif; margin:5px 0 0; font-size: 12px; font-weight:400;word-break: break-word;color:#333;line-height: 22px; position: relative; top: 10px;&quot;&gt;\n							Welcome [NAME]! \nThanks for signing up.\n						&lt;/td&gt;\n						&lt;/tr&gt;&lt;tr height=&quot;30&quot;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;margin: 40px 0;line-height: 22px; font-family: &#039;Montserrat&#039;, Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;&quot;&gt;You are now a member of [SITE_NAME].&amp;nbsp;&lt;br&gt;&lt;span style=&quot;color: rgb(51, 51, 51);&quot;&gt;Here are your login details. Please keep them in a safe place:	&lt;/span&gt;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;color: rgb(51, 51, 51);&quot;&gt;User name:&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;[USERNAME]&lt;/span&gt;&lt;br&gt;&lt;span style=&quot;color: rgb(51, 51, 51);&quot;&gt;Password:&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;[PASSWORD]&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51);&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;span style=&quot;color: rgb(51, 51, 51);&quot;&gt;locker #:&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;[LOCKER]&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51);&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;br&gt;\n        &lt;hr&gt;\n								\nThe administrator of this site has requested all new accounts.&lt;br&gt;\n								\nto be activated by the users who created them, therefore, your account&lt;br&gt;\n								The verification process is currently pending.								&lt;br&gt;&lt;br&gt;&lt;br&gt;\n								Thanks team,&lt;br&gt;\n								[SITE_NAME],&lt;br&gt;\n								&lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/td&gt;\n							\n						&lt;/tr&gt;\n						&lt;tr height=&quot;50&quot;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;&quot;&gt;\n								To reply to this message, you can simply reply to this email.\n							&lt;/td&gt;\n						&lt;/tr&gt;\n					&lt;/tbody&gt;&lt;/table&gt;\n				&lt;/td&gt;\n			&lt;/tr&gt;\n		&lt;/tbody&gt;&lt;/table&gt; \n	\n\n																					'),
(16, 'New shipment notification', 'support@jaom.info', 'This template is used to notify the user when manual account activation is complete.', '																							\n\n\n\n&lt;link href=&quot;https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600&quot; rel=&quot;stylesheet&quot; type=&quot;text/css&quot;&gt;\n\n\n\n	&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n		&lt;/table&gt;&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot; style=&quot;max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;&quot;&gt; \n\n			&lt;tbody&gt;&lt;tr bgcolor=&quot;#f62d51&quot; height=&quot;5px&quot;&gt;\n				&lt;td align=&quot;center&quot; style=&quot;font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;&quot;&gt;\n				&lt;/td&gt;\n			&lt;/tr&gt;\n			&lt;tr bgcolor=&quot;#f9f9f9&quot;&gt;\n				&lt;td style=&quot;padding:40px;&quot;&gt;\n					&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n						&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;img src=&quot;[URL]/uploads/logo.png&quot; class=&quot;logo&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\n						\n						&lt;tr height=&quot;15&quot;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;&quot;&gt;\n							Hello!\n							&lt;/td&gt;\n						&lt;/tr&gt;\n						&lt;tr&gt;&lt;td style=&quot;font-family: Montserrat, Arial, sans serif; margin:5px 0 0; font-size: 12px; font-weight:400;word-break: break-word;color:#333;line-height: 22px; position: relative; top: 10px;&quot;&gt;\n							[NAME], [SNAME] \n¡Sending a package to you!\n						&lt;/td&gt;\n						&lt;/tr&gt;&lt;tr height=&quot;30&quot;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;margin: 40px 0;line-height: 22px; font-family: &#039;Montserrat&#039;, Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;&quot;&gt;\n								These are the data of your shipment. [NAME].\n								&lt;br&gt;&lt;br&gt;\n								# Tracking: &lt;b&gt;[TRACKING]&lt;/b&gt;\n								&lt;br&gt;\n								Delivery Status: &lt;b&gt;[COURIER]&lt;/b&gt;\n								&lt;br&gt;\n								Destination: &lt;b&gt;[DESTINATION]&lt;/b&gt;\n								&lt;br&gt;\n								Address: &lt;b&gt;[ADDRESS]&lt;/b&gt;\n								&lt;br&gt;\n								Shipping date: &lt;b&gt;[DELIVERY_TIME]&lt;/b&gt;\n								&lt;br&gt;\n								Shipping Details: &lt;b&gt;[DESCRIPTION]&lt;/b&gt;\n								&lt;br&gt;&lt;br&gt;\n								&lt;br&gt;&lt;br&gt;\n								&lt;a href=&quot;[URL]/tracking.php&quot;&gt;See your shipment&lt;/a&gt;\n								\n								&lt;br&gt;&lt;br&gt;&lt;br&gt;\n								Thank you,&lt;br&gt;\n								[SITE_NAME] Team,&lt;br&gt;\n								&lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;\n							&lt;/td&gt;\n						&lt;/tr&gt;\n						&lt;tr height=&quot;50&quot;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;&quot;&gt;\n								\nTo reply to this message, you can simply reply to this email.\n							&lt;/td&gt;\n						&lt;/tr&gt;\n					&lt;/tbody&gt;&lt;/table&gt;\n				&lt;/td&gt;\n			&lt;/tr&gt;\n		&lt;/tbody&gt;&lt;/table&gt; \n	\n\n																					'),
(17, 'Account activation', 'Your account has been activated', 'This template is used to notify the user when manual account activation is complete.', '																																																																					\n\n\n\n&lt;link href=&quot;https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600&quot; rel=&quot;stylesheet&quot; type=&quot;text/css&quot;&gt;\n\n\n\n	&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n		&lt;/table&gt;&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot; style=&quot;max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;&quot;&gt; \n\n			&lt;tbody&gt;&lt;tr bgcolor=&quot;#36bea6&quot; height=&quot;5px&quot;&gt;\n				&lt;td align=&quot;center&quot; style=&quot;font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;&quot;&gt;\n				&lt;/td&gt;\n			&lt;/tr&gt;\n			&lt;tr bgcolor=&quot;#f9f9f9&quot;&gt;\n				&lt;td style=&quot;padding:40px;&quot;&gt;\n					&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n						&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;img src=&quot;[URL]/uploads/logo.png&quot; class=&quot;logo&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\n						\n						&lt;tr height=&quot;15&quot;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;&quot;&gt;\n							Hello, [NAME]!\n							&lt;/td&gt;\n						&lt;/tr&gt;\n						&lt;tr height=&quot;30&quot;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;margin: 40px 0;line-height: 22px; font-family: &#039;Montserrat&#039;, Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;&quot;&gt;\n								You are now a member of [SITE_NAME].\n								&lt;br&gt;&lt;br&gt;\n								Your account is now fully activated, and you can log in to\n								&lt;br&gt;&lt;br&gt;\n								&lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;\n								&lt;br&gt;&lt;br&gt;&lt;br&gt;\n								Thank you,&lt;br&gt;\n								[SITE_NAME] work team,&lt;br&gt;\n								&lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/td&gt;\n							\n						&lt;/tr&gt;\n						&lt;tr height=&quot;50&quot;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;&quot;&gt;\n								\nTo reply to this message, you can simply reply to this email.\n							&lt;/td&gt;\n						&lt;/tr&gt;\n					&lt;/tbody&gt;&lt;/table&gt;\n				&lt;/td&gt;\n			&lt;/tr&gt;\n		&lt;/tbody&gt;&lt;/table&gt; \n	\n\n																																																															'),
(18, 'Online courier approval', 'Your shipment has been approved', 'This template is used for approved shipments.', '																							\n\n\n\n&lt;link href=&quot;https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600&quot; rel=&quot;stylesheet&quot; type=&quot;text/css&quot;&gt;\n\n\n\n	&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n		&lt;/table&gt;&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot; style=&quot;max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;&quot;&gt; \n\n			&lt;tbody&gt;&lt;tr bgcolor=&quot;#f62d51&quot; height=&quot;5px&quot;&gt;\n				&lt;td align=&quot;center&quot; style=&quot;font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;&quot;&gt;\n				&lt;/td&gt;\n			&lt;/tr&gt;\n			&lt;tr bgcolor=&quot;#f9f9f9&quot;&gt;\n				&lt;td style=&quot;padding:40px;&quot;&gt;\n					&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n						&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;img src=&quot;[URL]/uploads/logo.png&quot; class=&quot;logo&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\n						\n						&lt;tr height=&quot;15&quot;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;&quot;&gt;\n							Hello!\n							&lt;/td&gt;\n						&lt;/tr&gt;\n						&lt;tr&gt;&lt;td style=&quot;font-family: Montserrat, Arial, sans serif; margin:5px 0 0; font-size: 12px; font-weight:400;word-break: break-word;color:#333;line-height: 22px; position: relative; top: 10px;&quot;&gt;\n							[NAME], \nYour shipment was approved.\n						&lt;/td&gt;\n						&lt;/tr&gt;&lt;tr height=&quot;30&quot;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;margin: 40px 0;line-height: 22px; font-family: &#039;Montserrat&#039;, Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;&quot;&gt;\n								\nThese are the data of your shipment. [NAME].\n								&lt;br&gt;&lt;br&gt;\n								# Tracking: &lt;b&gt;[TRACKING]&lt;/b&gt;\n								&lt;br&gt;\n								Delivery status: &lt;b&gt;[COURIER]&lt;/b&gt;\n								&lt;br&gt;								\n								&lt;br&gt;&lt;br&gt;\n								&lt;br&gt;&lt;br&gt;\n								&lt;a href=&quot;[URL]/login.php&quot;&gt;Log in&lt;/a&gt;\n								\n								&lt;br&gt;&lt;br&gt;&lt;br&gt;\n								Thank you,&lt;br&gt;\n								[SITE_NAME] Team,&lt;br&gt;\n								&lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;\n							&lt;/td&gt;\n						&lt;/tr&gt;\n						&lt;tr height=&quot;50&quot;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;&quot;&gt;\n								\nTo reply to this message, you can simply reply to this email.\n							&lt;/td&gt;\n						&lt;/tr&gt;\n					&lt;/tbody&gt;&lt;/table&gt;\n				&lt;/td&gt;\n			&lt;/tr&gt;\n		&lt;/tbody&gt;&lt;/table&gt; \n	\n\n																					');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incoterm`
--

CREATE TABLE IF NOT EXISTS `incoterm` (
`id` int(11) NOT NULL,
  `inco_name` varchar(200) DEFAULT NULL,
  `detail` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `incoterm`
--

INSERT INTO `incoterm` (`id`, `inco_name`, `detail`) VALUES
(1, 'EXW', 'EXW - ExWorks'),
(2, 'FCA', 'FCA - Free Carrier'),
(3, 'FAS', 'FAS - Free Alongside Ship'),
(4, 'FOB', 'FOB - Free On Board'),
(5, 'CFR', 'CFR - Cost and Freight'),
(6, 'CIF', 'CIF - Cost, Insurance, Freight'),
(7, 'CIP', 'CIP - Carriage and Insurance Paid'),
(8, 'CPT', 'CPT - Carriage Paid To'),
(9, 'DAF', 'DAF - Delivered At Frontier'),
(10, 'DES', 'DES - Delivered Ex Ship'),
(11, 'DEQ', 'DEQ - Delivered Ex Quay'),
(12, 'DDU', 'DDU - Delivered Duty Unpaid'),
(13, 'DDP', 'DDP - Delivered Duty Paid'),
(14, 'DAT', 'DAT – Delivered at Terminal (named terminal at port or place of destination)'),
(15, 'DAP', 'DAP - Delivered At Place (named place of destination)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `met_payment`
--

CREATE TABLE IF NOT EXISTS `met_payment` (
`id` int(11) NOT NULL,
  `met_payment` varchar(200) DEFAULT NULL,
  `detail` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `met_payment`
--

INSERT INTO `met_payment` (`id`, `met_payment`, `detail`) VALUES
(1, 'Cash', 'Cash Payment'),
(2, 'Credit Card', 'Payment with Credit Card'),
(3, 'Debit Card', 'Payment with Debit Card'),
(5, 'Wire Transfer', 'Payment with Wire transfer'),
(6, 'Paypal', 'Paypal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`id` int(11) NOT NULL,
  `title` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `body` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `author` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created` date NOT NULL DEFAULT '0000-00-00',
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `news`
--

INSERT INTO `news` (`id`, `title`, `body`, `author`, `created`, `active`) VALUES
(6, 'Welcome to our Client Area!', '&lt;p&gt;We are pleased to announce the new release DEPRIXA PRO v3.2.6.2&lt;br&gt;&lt;/p&gt;', 'Administrator', '2019-02-02', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offices`
--

CREATE TABLE IF NOT EXISTS `offices` (
`id` int(10) NOT NULL,
  `name_off` varchar(100) DEFAULT NULL,
  `code_off` varchar(60) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `phone_off` varchar(20) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `offices`
--

INSERT INTO `offices` (`id`, `name_off`, `code_off`, `address`, `city`, `phone_off`) VALUES
(83, 'OFFICE 3', 'AG1560', 'HELICVONIASD', 'fsdfsdf', '55215'),
(78, 'OFFICE 1', 'AG1598', 'HELICONIAS', 'APARTADO', '454544'),
(82, 'OFFICE 2', 'AG1599', 'HELICVONIASD', 'APARTADO', '55215');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `packaging`
--

CREATE TABLE IF NOT EXISTS `packaging` (
`id` int(5) NOT NULL,
  `name_pack` varchar(120) DEFAULT NULL,
  `detail_pack` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `packaging`
--

INSERT INTO `packaging` (`id`, `name_pack`, `detail_pack`) VALUES
(12, 'Paperboard boxes', 'Paperboard is a paper-based material that is lightweight, yet strong.'),
(13, 'Corrugated boxes', 'Corrugated boxes simply refer to what is commonly known as: Cardboard....'),
(14, 'Plastic boxes', 'Corrugated boxes simply refer to what is commonly known as: Cardboard.Plastic is used in a wide range of products, from spaceships to paper clips.'),
(15, 'Rigid boxes', 'A rigid box is made out of highly condensed paperboard that is 4 times thicker than the paperboard used in the construction of a standard folding carton.'),
(16, 'Chipboard packaging', 'Chipboard packaging is used in industries such as electronic, medical, food, cosmetic, and beverage.'),
(17, 'Poly bags', 'A poly bag, also known as a pouch or a plastic bag, is manufactured out of flexible, thin, plastic film fabric.'),
(18, 'Foil sealed bags', 'Foil sealed bags can be seen typically in most coffee and tea packaging.'),
(20, 'Container', 'Foil sealed bags can be seen typically in most coffee and tea packaging.'),
(21, 'Pallets', 'Foil sealed bags can be seen typically in most coffee and tea packaging.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quote`
--

CREATE TABLE IF NOT EXISTS `quote` (
`id` int(11) NOT NULL,
  `idquote` int(20) DEFAULT NULL,
  `order_quote` varchar(60) DEFAULT NULL,
  `s_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(60) NOT NULL,
  `locker` varchar(125) DEFAULT NULL,
  `url_product` text,
  `r_name` varchar(255) DEFAULT NULL,
  `r_phone` varchar(255) DEFAULT NULL,
  `r_address` varchar(355) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(120) DEFAULT NULL,
  `r_dest` varchar(255) DEFAULT NULL,
  `r_city` varchar(255) DEFAULT NULL,
  `your_purchase` text,
  `your_quote` text,
  `name_product` varchar(255) DEFAULT NULL,
  `quantity` varchar(120) DEFAULT NULL,
  `weight_product` varchar(60) DEFAULT NULL,
  `price_product` varchar(60) DEFAULT NULL,
  `customs_tax` varchar(20) DEFAULT NULL,
  `freight` varchar(20) DEFAULT NULL,
  `handling` varchar(120) DEFAULT NULL,
  `r_costotal` varchar(60) DEFAULT NULL,
  `avatar` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `status_quote` varchar(128) DEFAULT NULL,
  `reasons` text,
  `level` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
`id` int(11) NOT NULL,
  `site_name` varchar(50) DEFAULT NULL,
  `c_nit` varchar(30) DEFAULT NULL,
  `c_phone` varchar(30) DEFAULT NULL,
  `cell_phone` varchar(30) DEFAULT NULL,
  `c_address` varchar(60) DEFAULT NULL,
  `locker_address` text,
  `c_country` varchar(60) DEFAULT NULL,
  `c_city` varchar(60) DEFAULT NULL,
  `c_postal` varchar(30) DEFAULT NULL,
  `site_email` varchar(40) DEFAULT NULL,
  `interms` text,
  `signing_customer` varchar(60) DEFAULT NULL,
  `signing_company` varchar(60) DEFAULT NULL,
  `site_url` varchar(200) DEFAULT NULL,
  `reg_allowed` tinyint(1) NOT NULL DEFAULT '1',
  `user_limit` tinyint(1) NOT NULL DEFAULT '0',
  `reg_verify` tinyint(1) NOT NULL DEFAULT '0',
  `notify_admin` tinyint(1) NOT NULL DEFAULT '0',
  `auto_verify` tinyint(1) NOT NULL DEFAULT '0',
  `account_paypal` varchar(60) DEFAULT NULL,
  `client_id` varchar(250) DEFAULT NULL,
  `user_perpage` varchar(4) NOT NULL DEFAULT '10',
  `thumb_w` varchar(4) NOT NULL,
  `thumb_h` varchar(4) NOT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `favicon` varchar(50) DEFAULT NULL,
  `backup` varchar(60) DEFAULT NULL,
  `mailer` enum('PHP','SMTP') NOT NULL DEFAULT 'PHP',
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_user` varchar(50) DEFAULT NULL,
  `smtp_pass` varchar(50) DEFAULT NULL,
  `smtp_port` varchar(6) DEFAULT NULL,
  `is_ssl` tinyint(1) NOT NULL DEFAULT '0',
  `version` varchar(5) DEFAULT NULL,
  `prefix` varchar(6) DEFAULT NULL,
  `track_digit` varchar(15) DEFAULT NULL,
  `prefix_con` varchar(6) DEFAULT NULL,
  `track_container` varchar(12) DEFAULT NULL,
  `prefix_consolidate` varchar(6) DEFAULT NULL,
  `track_consolidate` varchar(12) DEFAULT NULL,
  `tax` varchar(4) DEFAULT NULL,
  `insurance` varchar(4) DEFAULT NULL,
  `value_weight` varchar(16) DEFAULT NULL,
  `meter` varchar(16) DEFAULT NULL,
  `c_value_pound` varchar(4) DEFAULT NULL,
  `c_add_pound` varchar(4) DEFAULT NULL,
  `c_handling` varchar(4) DEFAULT NULL,
  `c_fuel` varchar(4) DEFAULT NULL,
  `c_reexpedition` varchar(4) DEFAULT NULL,
  `c_logistic` varchar(4) DEFAULT NULL,
  `c_surcharges` varchar(4) DEFAULT NULL,
  `c_safe` varchar(4) DEFAULT NULL,
  `c_nationalization` varchar(4) DEFAULT NULL,
  `c_tariffs` varchar(4) DEFAULT NULL,
  `c_vat` varchar(4) DEFAULT NULL,
  `currency` varchar(120) NOT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `apikey` varchar(455) DEFAULT NULL,
  `timezone` varchar(120) NOT NULL,
  `language` varchar(120) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `c_nit`, `c_phone`, `cell_phone`, `c_address`, `locker_address`, `c_country`, `c_city`, `c_postal`, `site_email`, `interms`, `signing_customer`, `signing_company`, `site_url`, `reg_allowed`, `user_limit`, `reg_verify`, `notify_admin`, `auto_verify`, `account_paypal`, `client_id`, `user_perpage`, `thumb_w`, `thumb_h`, `logo`, `favicon`, `backup`, `mailer`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_port`, `is_ssl`, `version`, `prefix`, `track_digit`, `prefix_con`, `track_container`, `prefix_consolidate`, `track_consolidate`, `tax`, `insurance`, `value_weight`, `meter`, `c_value_pound`, `c_add_pound`, `c_handling`, `c_fuel`, `c_reexpedition`, `c_logistic`, `c_surcharges`, `c_safe`, `c_nationalization`, `c_tariffs`, `c_vat`, `currency`, `longitude`, `latitude`, `apikey`, `timezone`, `language`) VALUES
(1, 'DEPRIXA PRO', '800124570-87', '3193196868', '3193196868', 'Avenida centro', 'Avenida centro', 'Miami', 'FL', '34343434', 'demo@demo.com', 'ACCEPTED: This Invoice is a title value in accordance with the provisions of art. 3 of law 1231 of July 17/08. The signature by third parties in representation, mandate or other quality on behalf of the buyer implies its obligation in accordance with art. 640 of the commercial code.', 'SIGNATURE / SEAL WHO RECEIVES', 'COMPANY SIGNATURE', 'http://localhost/alaska', 1, 0, 0, 1, 1, 'osorio2380@yahoo.es', 'AZh1tcwI9IuTWqKlU_YV1fPDZ0HrXtRflE87FsI_kIpTPjItBSYewsMpKQeLB-PdukPKP0Pb_pIJJKKZ', '0', '200', '200', 'logo.png', 'favicon.png', NULL, 'PHP', 'n3plcpnl0258.prod.ams3.secureserver.net', 'sales@shipmentscript.com', 'Mega@09731', '465', 1, '3.2.7', 'AWB', '6', 'MSCU', '6', 'COEE', '6', '19', '5', '2', '5000', '2', '0', '7', '0', '0', '0', '0', '0', '0', '0', '19', 'USD', '-80.1936589', '25.7742658', 'AIzaSyC9INLAuOPMqm6Pj8Z8jL1ixTTBcls_SKA', 'America/Chicago', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shipping_line`
--

CREATE TABLE IF NOT EXISTS `shipping_line` (
`id` int(11) NOT NULL,
  `ship_line` varchar(200) DEFAULT NULL,
  `detail` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `shipping_line`
--

INSERT INTO `shipping_line` (`id`, `ship_line`, `detail`) VALUES
(1, 'Atlantic Container Line', 'Freight forwarding - Atlantic Container Line'),
(2, 'American President Lines', 'Freight forwarding - American President Lines (APL)'),
(3, 'Atlantic Ro-Ro Carriers', 'Atlantic Ro-Ro Carriers'),
(4, 'China Shipping', 'Freight forwarding - China Shipping'),
(5, 'CMA CGM', 'Freight forwarding - CMA CGM Group'),
(6, 'Evergreen Marine Corp.', 'Freight forwarding - Evergreen Marine Corp (EMC)'),
(7, 'Fesco Transportation Group', 'FESCO Transportation Group'),
(8, 'Hanjin Shipping', 'Hanjin Shipping - Container Carrier'),
(9, 'Hamburg Süd Group', 'Hamburg Süd Group - Ocean Freight'),
(10, 'Hapag Lloyd', 'Freight forwarding - Hapag-Lloyd'),
(11, 'Maersk Sealand', 'Freight forwarding - Maersk Line'),
(12, 'MSC Mediterranean Shipping Company', 'Freight forwarding - Mediterranean Shipping Company'),
(13, 'OOCL Logistics', 'OOCL Vessel &amp; Rail Tracking'),
(14, 'Safmarine', 'Safmarine Container Lines'),
(15, 'Zim Integrated Shipping Services', 'Freight forwarding - ZIM Integrated Shipping Services'),
(16, 'Wallenius Lines', 'Freight forwarding - Wallenius Logistics');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shipping_mode`
--

CREATE TABLE IF NOT EXISTS `shipping_mode` (
`id` int(11) NOT NULL,
  `ship_mode` varchar(200) DEFAULT NULL,
  `detail` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `shipping_mode`
--

INSERT INTO `shipping_mode` (`id`, `ship_mode`, `detail`) VALUES
(1, 'Priority Mail Express', 'Priority Mail Express'),
(2, 'Priority Mail', 'Priority Mail ExpressPriority Mail'),
(3, 'Priority MailFirst-Class Mail', 'First-Class Mail'),
(4, 'International Economy', 'International Economy'),
(5, 'International Priority', 'International Priority'),
(6, 'Express Domestic', 'Express Domestic');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ship_rate`
--

CREATE TABLE IF NOT EXISTS `ship_rate` (
`id` int(11) NOT NULL,
  `n_courier` varchar(255) DEFAULT NULL,
  `services` varchar(120) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `rate` varchar(10) DEFAULT NULL,
  `deli_time` varchar(120) DEFAULT NULL,
  `typeweight` varchar(120) DEFAULT NULL,
  `free_ship` varchar(120) DEFAULT NULL,
  `drop_off` varchar(120) DEFAULT NULL,
  `created` datetime NOT NULL,
  `brand` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ship_rate`
--

INSERT INTO `ship_rate` (`id`, `n_courier`, `services`, `weight`, `rate`, `deli_time`, `typeweight`, `free_ship`, `drop_off`, `created`, `brand`) VALUES
(1, 'UNITED STATES - Postal Service', 'USPS - Priority Mail', '0.5', '6.36', '1 - 3 working days', 'Lb', 'Free Pickup', 'Drop-off', '2018-08-04 23:53:10', 'AVT_BE778B-406FA7-1D5C38-B462B5-DBB8A8-1280CE.png'),
(2, 'UNITED STATES - Postal Service', 'USPS - First Class', '3', '3.18', '2 - 5 working days', 'Lb', 'Free Pickup', 'Drop-off', '2018-08-04 23:54:29', 'AVT_71EF42-B6C9E1-911929-371D01-F8C840-772FE7.png'),
(3, 'UNITED STATES - Postal Service', 'USPS - Parcel Select', '15', '6.55', '3 - 7 working days', 'lbs', 'Free Pickup', 'Drop-off', '2018-08-04 23:55:05', 'AVT_E390F7-5FB26C-1B0FD5-976D59-4DCAE9-ACFD51.png'),
(4, 'UNITED STATES - Postal Service', 'USPS - Priority Mail Express', '210', '21.98', '1 - 3 working days', 'lbs', 'Free Pickup', 'Drop-off', '2018-08-04 23:55:43', 'AVT_E3DA7B-271ADE-482DC9-AC3511-D24D54-FE7611.png'),
(5, 'DEMO', 'DEMOS', '78', '15', '1 TO 5 DAYS', 'Lb', 'SDGG', 'FGFGFG', '2019-05-09 11:13:59', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sms_templates`
--

CREATE TABLE IF NOT EXISTS `sms_templates` (
`id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `help` text,
  `body1` text,
  `body2` text,
  `body3` text,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sms_templates`
--

INSERT INTO `sms_templates` (`id`, `name`, `help`, `body1`, `body2`, `body3`, `active`) VALUES
(1, 'Shipping notification', 'This template is used to notify the destination customer of your pending shipment', 'Deprixa Pro has sent you package, shipping number #', 'date of shipment', 'Check the status of your shipment, link:', 1),
(2, 'Status update Courier', 'This template is used to notify the recipient of the status of the shipment', 'Your shipment has changed its status', 'new location', '# shipping', 1),
(3, 'Approval of the shipment', 'This template is used by the system administrator to approve managed shipments online', 'the reserved shipment on his dashboard was', 'delivery number', 'approved date', 1),
(16, 'Notification paypal payments or credit cards', 'This template is used when the client wants to pay online and the incoming payment is notified by text message to the system administrator', 'Hi Admin !, you have a payment made by PAYPAL, total amount of', 'transaction date', 'Tracking #', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `styles`
--

CREATE TABLE IF NOT EXISTS `styles` (
`id` int(11) NOT NULL,
  `mod_style` varchar(200) DEFAULT NULL,
  `detail` varchar(200) DEFAULT NULL,
  `color` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `styles`
--

INSERT INTO `styles` (`id`, `mod_style`, `detail`, `color`) VALUES
(1, 'Pending Collection', 'Pending Collection', '#a3a3a3'),
(2, 'Received Office', 'Received Office', '#74c22b'),
(3, 'In Transit', 'In Transit', '#00e39a'),
(4, 'In Warehouse', 'In Warehouse', '#e0ce07'),
(5, 'Distribution', 'Distribution', '#cd88ee'),
(6, 'Available', 'Available (only when you must retire at the offices)', '#0ae4ff'),
(7, 'On Route', 'En route for delivery (only when it''s door to door)', '#a2ff00'),
(8, 'Delivered', 'Deliveries delivered', '#43bd00'),
(10, 'Approved', 'Reserve Approved', '#ffa6a6'),
(11, 'Pending', 'Pending', '#ff8e0d'),
(12, 'Rejected', 'Booking Online Canceled', '#ff0505'),
(13, 'Consolidate', 'Consolidated Shipments', '#00ffbb'),
(14, 'Pick up', 'Pick up package', '#2962ff'),
(15, 'Picked up', 'Picked up package', '#00adf2'),
(16, 'No Picked up', 'Not picked up package', '#ff008c'),
(17, 'Quotation', 'Quotation List', '#00ffc4'),
(18, 'Pending quote', 'Pending quote', '#68c251'),
(19, 'Invoiced', 'Quotation approved quotation', '#1ac9d9'),
(20, 'Pre Alert', 'Pre alert packages', '#ffb091');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `textsms`
--

CREATE TABLE IF NOT EXISTS `textsms` (
`id` int(11) NOT NULL,
  `namesms` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `account_sid` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `auth_token` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `twilio_number` varchar(120) DEFAULT NULL,
  `active_twi` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `textsms`
--

INSERT INTO `textsms` (`id`, `namesms`, `account_sid`, `auth_token`, `twilio_number`, `active_twi`) VALUES
(6, 'Twilio', 'AC1357c40d3e37e016cbdf8df20106deba', '701c6008343a2fd707c8cdbbc238f845', '+13203378467', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `textsmsnexmo`
--

CREATE TABLE IF NOT EXISTS `textsmsnexmo` (
`id` int(11) NOT NULL,
  `namesms` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `api_key` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `api_secret` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `nexmo_number` varchar(120) DEFAULT NULL,
  `active_nex` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `textsmsnexmo`
--

INSERT INTO `textsmsnexmo` (`id`, `namesms`, `api_key`, `api_secret`, `nexmo_number`, `active_nex`) VALUES
(6, 'Nexmo', 'bb21885b', 'XPx2bNMsOIgNGcX6', '+447449764031', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
`id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `transaction_id` varchar(250) NOT NULL,
  `transaction_amount` varchar(250) NOT NULL,
  `transaction_state` varchar(250) NOT NULL,
  `transaction_track` varchar(250) NOT NULL,
  `transaction_date` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `name_off` varchar(255) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `locker` varchar(255) DEFAULT NULL,
  `cookie_id` varchar(64) NOT NULL DEFAULT '0',
  `token` varchar(128) NOT NULL DEFAULT '0',
  `userlevel` tinyint(1) unsigned NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `country` varchar(60) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal` varchar(255) DEFAULT NULL,
  `avatar` varchar(60) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastip` varchar(16) DEFAULT NULL,
  `notes` text,
  `code_phone` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `enrollment` varchar(20) DEFAULT NULL,
  `vehiclecode` varchar(20) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `terms` varchar(120) DEFAULT NULL,
  `active` enum('y','n','b','t') NOT NULL DEFAULT 'n'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zone`
--

CREATE TABLE IF NOT EXISTS `zone` (
`zone_id` int(10) NOT NULL,
  `country_code` char(2) COLLATE utf8_bin NOT NULL,
  `zone_name` varchar(35) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=425 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `zone`
--

INSERT INTO `zone` (`zone_id`, `country_code`, `zone_name`) VALUES
(1, 'AD', 'Europe/Andorra'),
(2, 'AE', 'Asia/Dubai'),
(3, 'AF', 'Asia/Kabul'),
(4, 'AG', 'America/Antigua'),
(5, 'AI', 'America/Anguilla'),
(6, 'AL', 'Europe/Tirane'),
(7, 'AM', 'Asia/Yerevan'),
(8, 'AO', 'Africa/Luanda'),
(9, 'AQ', 'Antarctica/McMurdo'),
(10, 'AQ', 'Antarctica/Casey'),
(11, 'AQ', 'Antarctica/Davis'),
(12, 'AQ', 'Antarctica/DumontDUrville'),
(13, 'AQ', 'Antarctica/Mawson'),
(14, 'AQ', 'Antarctica/Palmer'),
(15, 'AQ', 'Antarctica/Rothera'),
(16, 'AQ', 'Antarctica/Syowa'),
(17, 'AQ', 'Antarctica/Troll'),
(18, 'AQ', 'Antarctica/Vostok'),
(19, 'AR', 'America/Argentina/Buenos_Aires'),
(20, 'AR', 'America/Argentina/Cordoba'),
(21, 'AR', 'America/Argentina/Salta'),
(22, 'AR', 'America/Argentina/Jujuy'),
(23, 'AR', 'America/Argentina/Tucuman'),
(24, 'AR', 'America/Argentina/Catamarca'),
(25, 'AR', 'America/Argentina/La_Rioja'),
(26, 'AR', 'America/Argentina/San_Juan'),
(27, 'AR', 'America/Argentina/Mendoza'),
(28, 'AR', 'America/Argentina/San_Luis'),
(29, 'AR', 'America/Argentina/Rio_Gallegos'),
(30, 'AR', 'America/Argentina/Ushuaia'),
(31, 'AS', 'Pacific/Pago_Pago'),
(32, 'AT', 'Europe/Vienna'),
(33, 'AU', 'Australia/Lord_Howe'),
(34, 'AU', 'Antarctica/Macquarie'),
(35, 'AU', 'Australia/Hobart'),
(36, 'AU', 'Australia/Currie'),
(37, 'AU', 'Australia/Melbourne'),
(38, 'AU', 'Australia/Sydney'),
(39, 'AU', 'Australia/Broken_Hill'),
(40, 'AU', 'Australia/Brisbane'),
(41, 'AU', 'Australia/Lindeman'),
(42, 'AU', 'Australia/Adelaide'),
(43, 'AU', 'Australia/Darwin'),
(44, 'AU', 'Australia/Perth'),
(45, 'AU', 'Australia/Eucla'),
(46, 'AW', 'America/Aruba'),
(47, 'AX', 'Europe/Mariehamn'),
(48, 'AZ', 'Asia/Baku'),
(49, 'BA', 'Europe/Sarajevo'),
(50, 'BB', 'America/Barbados'),
(51, 'BD', 'Asia/Dhaka'),
(52, 'BE', 'Europe/Brussels'),
(53, 'BF', 'Africa/Ouagadougou'),
(54, 'BG', 'Europe/Sofia'),
(55, 'BH', 'Asia/Bahrain'),
(56, 'BI', 'Africa/Bujumbura'),
(57, 'BJ', 'Africa/Porto-Novo'),
(58, 'BL', 'America/St_Barthelemy'),
(59, 'BM', 'Atlantic/Bermuda'),
(60, 'BN', 'Asia/Brunei'),
(61, 'BO', 'America/La_Paz'),
(62, 'BQ', 'America/Kralendijk'),
(63, 'BR', 'America/Noronha'),
(64, 'BR', 'America/Belem'),
(65, 'BR', 'America/Fortaleza'),
(66, 'BR', 'America/Recife'),
(67, 'BR', 'America/Araguaina'),
(68, 'BR', 'America/Maceio'),
(69, 'BR', 'America/Bahia'),
(70, 'BR', 'America/Sao_Paulo'),
(71, 'BR', 'America/Campo_Grande'),
(72, 'BR', 'America/Cuiaba'),
(73, 'BR', 'America/Santarem'),
(74, 'BR', 'America/Porto_Velho'),
(75, 'BR', 'America/Boa_Vista'),
(76, 'BR', 'America/Manaus'),
(77, 'BR', 'America/Eirunepe'),
(78, 'BR', 'America/Rio_Branco'),
(79, 'BS', 'America/Nassau'),
(80, 'BT', 'Asia/Thimphu'),
(81, 'BW', 'Africa/Gaborone'),
(82, 'BY', 'Europe/Minsk'),
(83, 'BZ', 'America/Belize'),
(84, 'CA', 'America/St_Johns'),
(85, 'CA', 'America/Halifax'),
(86, 'CA', 'America/Glace_Bay'),
(87, 'CA', 'America/Moncton'),
(88, 'CA', 'America/Goose_Bay'),
(89, 'CA', 'America/Blanc-Sablon'),
(90, 'CA', 'America/Toronto'),
(91, 'CA', 'America/Nipigon'),
(92, 'CA', 'America/Thunder_Bay'),
(93, 'CA', 'America/Iqaluit'),
(94, 'CA', 'America/Pangnirtung'),
(95, 'CA', 'America/Atikokan'),
(96, 'CA', 'America/Winnipeg'),
(97, 'CA', 'America/Rainy_River'),
(98, 'CA', 'America/Resolute'),
(99, 'CA', 'America/Rankin_Inlet'),
(100, 'CA', 'America/Regina'),
(101, 'CA', 'America/Swift_Current'),
(102, 'CA', 'America/Edmonton'),
(103, 'CA', 'America/Cambridge_Bay'),
(104, 'CA', 'America/Yellowknife'),
(105, 'CA', 'America/Inuvik'),
(106, 'CA', 'America/Creston'),
(107, 'CA', 'America/Dawson_Creek'),
(108, 'CA', 'America/Fort_Nelson'),
(109, 'CA', 'America/Vancouver'),
(110, 'CA', 'America/Whitehorse'),
(111, 'CA', 'America/Dawson'),
(112, 'CC', 'Indian/Cocos'),
(113, 'CD', 'Africa/Kinshasa'),
(114, 'CD', 'Africa/Lubumbashi'),
(115, 'CF', 'Africa/Bangui'),
(116, 'CG', 'Africa/Brazzaville'),
(117, 'CH', 'Europe/Zurich'),
(118, 'CI', 'Africa/Abidjan'),
(119, 'CK', 'Pacific/Rarotonga'),
(120, 'CL', 'America/Santiago'),
(121, 'CL', 'America/Punta_Arenas'),
(122, 'CL', 'Pacific/Easter'),
(123, 'CM', 'Africa/Douala'),
(124, 'CN', 'Asia/Shanghai'),
(125, 'CN', 'Asia/Urumqi'),
(126, 'CO', 'America/Bogota'),
(127, 'CR', 'America/Costa_Rica'),
(128, 'CU', 'America/Havana'),
(129, 'CV', 'Atlantic/Cape_Verde'),
(130, 'CW', 'America/Curacao'),
(131, 'CX', 'Indian/Christmas'),
(132, 'CY', 'Asia/Nicosia'),
(133, 'CY', 'Asia/Famagusta'),
(134, 'CZ', 'Europe/Prague'),
(135, 'DE', 'Europe/Berlin'),
(136, 'DE', 'Europe/Busingen'),
(137, 'DJ', 'Africa/Djibouti'),
(138, 'DK', 'Europe/Copenhagen'),
(139, 'DM', 'America/Dominica'),
(140, 'DO', 'America/Santo_Domingo'),
(141, 'DZ', 'Africa/Algiers'),
(142, 'EC', 'America/Guayaquil'),
(143, 'EC', 'Pacific/Galapagos'),
(144, 'EE', 'Europe/Tallinn'),
(145, 'EG', 'Africa/Cairo'),
(146, 'EH', 'Africa/El_Aaiun'),
(147, 'ER', 'Africa/Asmara'),
(148, 'ES', 'Europe/Madrid'),
(149, 'ES', 'Africa/Ceuta'),
(150, 'ES', 'Atlantic/Canary'),
(151, 'ET', 'Africa/Addis_Ababa'),
(152, 'FI', 'Europe/Helsinki'),
(153, 'FJ', 'Pacific/Fiji'),
(154, 'FK', 'Atlantic/Stanley'),
(155, 'FM', 'Pacific/Chuuk'),
(156, 'FM', 'Pacific/Pohnpei'),
(157, 'FM', 'Pacific/Kosrae'),
(158, 'FO', 'Atlantic/Faroe'),
(159, 'FR', 'Europe/Paris'),
(160, 'GA', 'Africa/Libreville'),
(161, 'GB', 'Europe/London'),
(162, 'GD', 'America/Grenada'),
(163, 'GE', 'Asia/Tbilisi'),
(164, 'GF', 'America/Cayenne'),
(165, 'GG', 'Europe/Guernsey'),
(166, 'GH', 'Africa/Accra'),
(167, 'GI', 'Europe/Gibraltar'),
(168, 'GL', 'America/Godthab'),
(169, 'GL', 'America/Danmarkshavn'),
(170, 'GL', 'America/Scoresbysund'),
(171, 'GL', 'America/Thule'),
(172, 'GM', 'Africa/Banjul'),
(173, 'GN', 'Africa/Conakry'),
(174, 'GP', 'America/Guadeloupe'),
(175, 'GQ', 'Africa/Malabo'),
(176, 'GR', 'Europe/Athens'),
(177, 'GS', 'Atlantic/South_Georgia'),
(178, 'GT', 'America/Guatemala'),
(179, 'GU', 'Pacific/Guam'),
(180, 'GW', 'Africa/Bissau'),
(181, 'GY', 'America/Guyana'),
(182, 'HK', 'Asia/Hong_Kong'),
(183, 'HN', 'America/Tegucigalpa'),
(184, 'HR', 'Europe/Zagreb'),
(185, 'HT', 'America/Port-au-Prince'),
(186, 'HU', 'Europe/Budapest'),
(187, 'ID', 'Asia/Jakarta'),
(188, 'ID', 'Asia/Pontianak'),
(189, 'ID', 'Asia/Makassar'),
(190, 'ID', 'Asia/Jayapura'),
(191, 'IE', 'Europe/Dublin'),
(192, 'IL', 'Asia/Jerusalem'),
(193, 'IM', 'Europe/Isle_of_Man'),
(194, 'IN', 'Asia/Kolkata'),
(195, 'IO', 'Indian/Chagos'),
(196, 'IQ', 'Asia/Baghdad'),
(197, 'IR', 'Asia/Tehran'),
(198, 'IS', 'Atlantic/Reykjavik'),
(199, 'IT', 'Europe/Rome'),
(200, 'JE', 'Europe/Jersey'),
(201, 'JM', 'America/Jamaica'),
(202, 'JO', 'Asia/Amman'),
(203, 'JP', 'Asia/Tokyo'),
(204, 'KE', 'Africa/Nairobi'),
(205, 'KG', 'Asia/Bishkek'),
(206, 'KH', 'Asia/Phnom_Penh'),
(207, 'KI', 'Pacific/Tarawa'),
(208, 'KI', 'Pacific/Enderbury'),
(209, 'KI', 'Pacific/Kiritimati'),
(210, 'KM', 'Indian/Comoro'),
(211, 'KN', 'America/St_Kitts'),
(212, 'KP', 'Asia/Pyongyang'),
(213, 'KR', 'Asia/Seoul'),
(214, 'KW', 'Asia/Kuwait'),
(215, 'KY', 'America/Cayman'),
(216, 'KZ', 'Asia/Almaty'),
(217, 'KZ', 'Asia/Qyzylorda'),
(218, 'KZ', 'Asia/Aqtobe'),
(219, 'KZ', 'Asia/Aqtau'),
(220, 'KZ', 'Asia/Atyrau'),
(221, 'KZ', 'Asia/Oral'),
(222, 'LA', 'Asia/Vientiane'),
(223, 'LB', 'Asia/Beirut'),
(224, 'LC', 'America/St_Lucia'),
(225, 'LI', 'Europe/Vaduz'),
(226, 'LK', 'Asia/Colombo'),
(227, 'LR', 'Africa/Monrovia'),
(228, 'LS', 'Africa/Maseru'),
(229, 'LT', 'Europe/Vilnius'),
(230, 'LU', 'Europe/Luxembourg'),
(231, 'LV', 'Europe/Riga'),
(232, 'LY', 'Africa/Tripoli'),
(233, 'MA', 'Africa/Casablanca'),
(234, 'MC', 'Europe/Monaco'),
(235, 'MD', 'Europe/Chisinau'),
(236, 'ME', 'Europe/Podgorica'),
(237, 'MF', 'America/Marigot'),
(238, 'MG', 'Indian/Antananarivo'),
(239, 'MH', 'Pacific/Majuro'),
(240, 'MH', 'Pacific/Kwajalein'),
(241, 'MK', 'Europe/Skopje'),
(242, 'ML', 'Africa/Bamako'),
(243, 'MM', 'Asia/Yangon'),
(244, 'MN', 'Asia/Ulaanbaatar'),
(245, 'MN', 'Asia/Hovd'),
(246, 'MN', 'Asia/Choibalsan'),
(247, 'MO', 'Asia/Macau'),
(248, 'MP', 'Pacific/Saipan'),
(249, 'MQ', 'America/Martinique'),
(250, 'MR', 'Africa/Nouakchott'),
(251, 'MS', 'America/Montserrat'),
(252, 'MT', 'Europe/Malta'),
(253, 'MU', 'Indian/Mauritius'),
(254, 'MV', 'Indian/Maldives'),
(255, 'MW', 'Africa/Blantyre'),
(256, 'MX', 'America/Mexico_City'),
(257, 'MX', 'America/Cancun'),
(258, 'MX', 'America/Merida'),
(259, 'MX', 'America/Monterrey'),
(260, 'MX', 'America/Matamoros'),
(261, 'MX', 'America/Mazatlan'),
(262, 'MX', 'America/Chihuahua'),
(263, 'MX', 'America/Ojinaga'),
(264, 'MX', 'America/Hermosillo'),
(265, 'MX', 'America/Tijuana'),
(266, 'MX', 'America/Bahia_Banderas'),
(267, 'MY', 'Asia/Kuala_Lumpur'),
(268, 'MY', 'Asia/Kuching'),
(269, 'MZ', 'Africa/Maputo'),
(270, 'NA', 'Africa/Windhoek'),
(271, 'NC', 'Pacific/Noumea'),
(272, 'NE', 'Africa/Niamey'),
(273, 'NF', 'Pacific/Norfolk'),
(274, 'NG', 'Africa/Lagos'),
(275, 'NI', 'America/Managua'),
(276, 'NL', 'Europe/Amsterdam'),
(277, 'NO', 'Europe/Oslo'),
(278, 'NP', 'Asia/Kathmandu'),
(279, 'NR', 'Pacific/Nauru'),
(280, 'NU', 'Pacific/Niue'),
(281, 'NZ', 'Pacific/Auckland'),
(282, 'NZ', 'Pacific/Chatham'),
(283, 'OM', 'Asia/Muscat'),
(284, 'PA', 'America/Panama'),
(285, 'PE', 'America/Lima'),
(286, 'PF', 'Pacific/Tahiti'),
(287, 'PF', 'Pacific/Marquesas'),
(288, 'PF', 'Pacific/Gambier'),
(289, 'PG', 'Pacific/Port_Moresby'),
(290, 'PG', 'Pacific/Bougainville'),
(291, 'PH', 'Asia/Manila'),
(292, 'PK', 'Asia/Karachi'),
(293, 'PL', 'Europe/Warsaw'),
(294, 'PM', 'America/Miquelon'),
(295, 'PN', 'Pacific/Pitcairn'),
(296, 'PR', 'America/Puerto_Rico'),
(297, 'PS', 'Asia/Gaza'),
(298, 'PS', 'Asia/Hebron'),
(299, 'PT', 'Europe/Lisbon'),
(300, 'PT', 'Atlantic/Madeira'),
(301, 'PT', 'Atlantic/Azores'),
(302, 'PW', 'Pacific/Palau'),
(303, 'PY', 'America/Asuncion'),
(304, 'QA', 'Asia/Qatar'),
(305, 'RE', 'Indian/Reunion'),
(306, 'RO', 'Europe/Bucharest'),
(307, 'RS', 'Europe/Belgrade'),
(308, 'RU', 'Europe/Kaliningrad'),
(309, 'RU', 'Europe/Moscow'),
(310, 'RU', 'Europe/Simferopol'),
(311, 'RU', 'Europe/Volgograd'),
(312, 'RU', 'Europe/Kirov'),
(313, 'RU', 'Europe/Astrakhan'),
(314, 'RU', 'Europe/Saratov'),
(315, 'RU', 'Europe/Ulyanovsk'),
(316, 'RU', 'Europe/Samara'),
(317, 'RU', 'Asia/Yekaterinburg'),
(318, 'RU', 'Asia/Omsk'),
(319, 'RU', 'Asia/Novosibirsk'),
(320, 'RU', 'Asia/Barnaul'),
(321, 'RU', 'Asia/Tomsk'),
(322, 'RU', 'Asia/Novokuznetsk'),
(323, 'RU', 'Asia/Krasnoyarsk'),
(324, 'RU', 'Asia/Irkutsk'),
(325, 'RU', 'Asia/Chita'),
(326, 'RU', 'Asia/Yakutsk'),
(327, 'RU', 'Asia/Khandyga'),
(328, 'RU', 'Asia/Vladivostok'),
(329, 'RU', 'Asia/Ust-Nera'),
(330, 'RU', 'Asia/Magadan'),
(331, 'RU', 'Asia/Sakhalin'),
(332, 'RU', 'Asia/Srednekolymsk'),
(333, 'RU', 'Asia/Kamchatka'),
(334, 'RU', 'Asia/Anadyr'),
(335, 'RW', 'Africa/Kigali'),
(336, 'SA', 'Asia/Riyadh'),
(337, 'SB', 'Pacific/Guadalcanal'),
(338, 'SC', 'Indian/Mahe'),
(339, 'SD', 'Africa/Khartoum'),
(340, 'SE', 'Europe/Stockholm'),
(341, 'SG', 'Asia/Singapore'),
(342, 'SH', 'Atlantic/St_Helena'),
(343, 'SI', 'Europe/Ljubljana'),
(344, 'SJ', 'Arctic/Longyearbyen'),
(345, 'SK', 'Europe/Bratislava'),
(346, 'SL', 'Africa/Freetown'),
(347, 'SM', 'Europe/San_Marino'),
(348, 'SN', 'Africa/Dakar'),
(349, 'SO', 'Africa/Mogadishu'),
(350, 'SR', 'America/Paramaribo'),
(351, 'SS', 'Africa/Juba'),
(352, 'ST', 'Africa/Sao_Tome'),
(353, 'SV', 'America/El_Salvador'),
(354, 'SX', 'America/Lower_Princes'),
(355, 'SY', 'Asia/Damascus'),
(356, 'SZ', 'Africa/Mbabane'),
(357, 'TC', 'America/Grand_Turk'),
(358, 'TD', 'Africa/Ndjamena'),
(359, 'TF', 'Indian/Kerguelen'),
(360, 'TG', 'Africa/Lome'),
(361, 'TH', 'Asia/Bangkok'),
(362, 'TJ', 'Asia/Dushanbe'),
(363, 'TK', 'Pacific/Fakaofo'),
(364, 'TL', 'Asia/Dili'),
(365, 'TM', 'Asia/Ashgabat'),
(366, 'TN', 'Africa/Tunis'),
(367, 'TO', 'Pacific/Tongatapu'),
(368, 'TR', 'Europe/Istanbul'),
(369, 'TT', 'America/Port_of_Spain'),
(370, 'TV', 'Pacific/Funafuti'),
(371, 'TW', 'Asia/Taipei'),
(372, 'TZ', 'Africa/Dar_es_Salaam'),
(373, 'UA', 'Europe/Kiev'),
(374, 'UA', 'Europe/Uzhgorod'),
(375, 'UA', 'Europe/Zaporozhye'),
(376, 'UG', 'Africa/Kampala'),
(377, 'UM', 'Pacific/Midway'),
(378, 'UM', 'Pacific/Wake'),
(379, 'US', 'America/New_York'),
(380, 'US', 'America/Detroit'),
(381, 'US', 'America/Kentucky/Louisville'),
(382, 'US', 'America/Kentucky/Monticello'),
(383, 'US', 'America/Indiana/Indianapolis'),
(384, 'US', 'America/Indiana/Vincennes'),
(385, 'US', 'America/Indiana/Winamac'),
(386, 'US', 'America/Indiana/Marengo'),
(387, 'US', 'America/Indiana/Petersburg'),
(388, 'US', 'America/Indiana/Vevay'),
(389, 'US', 'America/Chicago'),
(390, 'US', 'America/Indiana/Tell_City'),
(391, 'US', 'America/Indiana/Knox'),
(392, 'US', 'America/Menominee'),
(393, 'US', 'America/North_Dakota/Center'),
(394, 'US', 'America/North_Dakota/New_Salem'),
(395, 'US', 'America/North_Dakota/Beulah'),
(396, 'US', 'America/Denver'),
(397, 'US', 'America/Boise'),
(398, 'US', 'America/Phoenix'),
(399, 'US', 'America/Los_Angeles'),
(400, 'US', 'America/Anchorage'),
(401, 'US', 'America/Juneau'),
(402, 'US', 'America/Sitka'),
(403, 'US', 'America/Metlakatla'),
(404, 'US', 'America/Yakutat'),
(405, 'US', 'America/Nome'),
(406, 'US', 'America/Adak'),
(407, 'US', 'Pacific/Honolulu'),
(408, 'UY', 'America/Montevideo'),
(409, 'UZ', 'Asia/Samarkand'),
(410, 'UZ', 'Asia/Tashkent'),
(411, 'VA', 'Europe/Vatican'),
(412, 'VC', 'America/St_Vincent'),
(413, 'VE', 'America/Caracas'),
(414, 'VG', 'America/Tortola'),
(415, 'VI', 'America/St_Thomas'),
(416, 'VN', 'Asia/Ho_Chi_Minh'),
(417, 'VU', 'Pacific/Efate'),
(418, 'WF', 'Pacific/Wallis'),
(419, 'WS', 'Pacific/Apia'),
(420, 'YE', 'Asia/Aden'),
(421, 'YT', 'Indian/Mayotte'),
(422, 'ZA', 'Africa/Johannesburg'),
(423, 'ZM', 'Africa/Lusaka'),
(424, 'ZW', 'Africa/Harare');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `add_consolidate`
--
ALTER TABLE `add_consolidate`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `add_container`
--
ALTER TABLE `add_container`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `add_courier`
--
ALTER TABLE `add_courier`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `add_quote`
--
ALTER TABLE `add_quote`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `branchoffices`
--
ALTER TABLE `branchoffices`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `consolidate`
--
ALTER TABLE `consolidate`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courier_com`
--
ALTER TABLE `courier_com`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courier_track`
--
ALTER TABLE `courier_track`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `custom_novelty`
--
ALTER TABLE `custom_novelty`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `c_tracking`
--
ALTER TABLE `c_tracking`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `delivery_time`
--
ALTER TABLE `delivery_time`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detail_addcourier`
--
ALTER TABLE `detail_addcourier`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detail_addcourier_tmp`
--
ALTER TABLE `detail_addcourier_tmp`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detail_addquote`
--
ALTER TABLE `detail_addquote`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detail_addquote_tmp`
--
ALTER TABLE `detail_addquote_tmp`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detail_container`
--
ALTER TABLE `detail_container`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detail_container_tmp`
--
ALTER TABLE `detail_container_tmp`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `email_templates`
--
ALTER TABLE `email_templates`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `incoterm`
--
ALTER TABLE `incoterm`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `met_payment`
--
ALTER TABLE `met_payment`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `offices`
--
ALTER TABLE `offices`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `packaging`
--
ALTER TABLE `packaging`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `quote`
--
ALTER TABLE `quote`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shipping_line`
--
ALTER TABLE `shipping_line`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shipping_mode`
--
ALTER TABLE `shipping_mode`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ship_rate`
--
ALTER TABLE `ship_rate`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sms_templates`
--
ALTER TABLE `sms_templates`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `styles`
--
ALTER TABLE `styles`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `textsms`
--
ALTER TABLE `textsms`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `textsmsnexmo`
--
ALTER TABLE `textsmsnexmo`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transactions`
--
ALTER TABLE `transactions`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zone`
--
ALTER TABLE `zone`
 ADD PRIMARY KEY (`zone_id`), ADD KEY `idx_country_code` (`country_code`), ADD KEY `idx_zone_name` (`zone_name`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `add_consolidate`
--
ALTER TABLE `add_consolidate`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `add_container`
--
ALTER TABLE `add_container`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `add_courier`
--
ALTER TABLE `add_courier`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `add_quote`
--
ALTER TABLE `add_quote`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `branchoffices`
--
ALTER TABLE `branchoffices`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `consolidate`
--
ALTER TABLE `consolidate`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `courier_com`
--
ALTER TABLE `courier_com`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT de la tabla `courier_track`
--
ALTER TABLE `courier_track`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `custom_novelty`
--
ALTER TABLE `custom_novelty`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_tracking`
--
ALTER TABLE `c_tracking`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `delivery_time`
--
ALTER TABLE `delivery_time`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `detail_addcourier`
--
ALTER TABLE `detail_addcourier`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detail_addcourier_tmp`
--
ALTER TABLE `detail_addcourier_tmp`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `detail_addquote`
--
ALTER TABLE `detail_addquote`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detail_addquote_tmp`
--
ALTER TABLE `detail_addquote_tmp`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `detail_container`
--
ALTER TABLE `detail_container`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detail_container_tmp`
--
ALTER TABLE `detail_container_tmp`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT de la tabla `email_templates`
--
ALTER TABLE `email_templates`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `incoterm`
--
ALTER TABLE `incoterm`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `met_payment`
--
ALTER TABLE `met_payment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `news`
--
ALTER TABLE `news`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `offices`
--
ALTER TABLE `offices`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT de la tabla `packaging`
--
ALTER TABLE `packaging`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `quote`
--
ALTER TABLE `quote`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `shipping_line`
--
ALTER TABLE `shipping_line`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `shipping_mode`
--
ALTER TABLE `shipping_mode`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `ship_rate`
--
ALTER TABLE `ship_rate`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `sms_templates`
--
ALTER TABLE `sms_templates`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `styles`
--
ALTER TABLE `styles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `textsms`
--
ALTER TABLE `textsms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `textsmsnexmo`
--
ALTER TABLE `textsmsnexmo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `transactions`
--
ALTER TABLE `transactions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `zone`
--
ALTER TABLE `zone`
MODIFY `zone_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=425;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

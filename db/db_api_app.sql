-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 23-06-2022 a las 21:05:34
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_api_app`
--
CREATE DATABASE IF NOT EXISTS `db_api_app` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_api_app`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`, `logo_max_height`, `logo_max_width`, `foldable_apps`) VALUES
(1, 'Django', 1, 'Django administration', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_suscripcion`
--

CREATE TABLE `app_suscripcion` (
  `suscripcion` tinyint(1) DEFAULT NULL,
  `usuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_suscripcion`
--

INSERT INTO `app_suscripcion` (`suscripcion`, `usuario`) VALUES
(0, 'admin'),
(1, 'beto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add Theme', 1, 'add_theme'),
(2, 'Can change Theme', 1, 'change_theme'),
(3, 'Can delete Theme', 1, 'delete_theme'),
(4, 'Can view Theme', 1, 'view_theme'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add productos_ carro', 8, 'add_productos_carro'),
(30, 'Can change productos_ carro', 8, 'change_productos_carro'),
(31, 'Can delete productos_ carro', 8, 'delete_productos_carro'),
(32, 'Can view productos_ carro', 8, 'view_productos_carro'),
(33, 'Can add productos_ segui', 9, 'add_productos_segui'),
(34, 'Can change productos_ segui', 9, 'change_productos_segui'),
(35, 'Can delete productos_ segui', 9, 'delete_productos_segui'),
(36, 'Can view productos_ segui', 9, 'view_productos_segui'),
(37, 'Can add suscripcion', 10, 'add_suscripcion'),
(38, 'Can change suscripcion', 10, 'change_suscripcion'),
(39, 'Can delete suscripcion', 10, 'delete_suscripcion'),
(40, 'Can view suscripcion', 10, 'view_suscripcion'),
(41, 'Can add tipo cliente', 11, 'add_tipocliente'),
(42, 'Can change tipo cliente', 11, 'change_tipocliente'),
(43, 'Can delete tipo cliente', 11, 'delete_tipocliente'),
(44, 'Can view tipo cliente', 11, 'view_tipocliente'),
(45, 'Can add tipo mascota', 12, 'add_tipomascota'),
(46, 'Can change tipo mascota', 12, 'change_tipomascota'),
(47, 'Can delete tipo mascota', 12, 'delete_tipomascota'),
(48, 'Can view tipo mascota', 12, 'view_tipomascota'),
(49, 'Can add tipo pedido', 13, 'add_tipopedido'),
(50, 'Can change tipo pedido', 13, 'change_tipopedido'),
(51, 'Can delete tipo pedido', 13, 'delete_tipopedido'),
(52, 'Can view tipo pedido', 13, 'view_tipopedido'),
(53, 'Can add tipo producto', 14, 'add_tipoproducto'),
(54, 'Can change tipo producto', 14, 'change_tipoproducto'),
(55, 'Can delete tipo producto', 14, 'delete_tipoproducto'),
(56, 'Can view tipo producto', 14, 'view_tipoproducto'),
(57, 'Can add producto', 15, 'add_producto'),
(58, 'Can change producto', 15, 'change_producto'),
(59, 'Can delete producto', 15, 'delete_producto'),
(60, 'Can view producto', 15, 'view_producto'),
(61, 'Can add pedido', 16, 'add_pedido'),
(62, 'Can change pedido', 16, 'change_pedido'),
(63, 'Can delete pedido', 16, 'delete_pedido'),
(64, 'Can view pedido', 16, 'view_pedido'),
(65, 'Can add mascota', 17, 'add_mascota'),
(66, 'Can change mascota', 17, 'change_mascota'),
(67, 'Can delete mascota', 17, 'delete_mascota'),
(68, 'Can view mascota', 17, 'view_mascota'),
(69, 'Can add cliente', 18, 'add_cliente'),
(70, 'Can change cliente', 18, 'change_cliente'),
(71, 'Can delete cliente', 18, 'delete_cliente'),
(72, 'Can view cliente', 18, 'view_cliente'),
(73, 'Can add carro', 19, 'add_carro'),
(74, 'Can change carro', 19, 'change_carro'),
(75, 'Can delete carro', 19, 'delete_carro'),
(76, 'Can view carro', 19, 'view_carro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$CpMQ0YI7NZuKrTR3dxre3D$P3LK38NsbFjtlD1MO4IXbFBrRF7yNAeKUTAKvVS1Wl8=', '2022-06-23 18:46:55.143074', 1, 'admin', '', '', 'alb.diaz@duocuc.cl', 1, 1, '2022-06-23 17:30:46.788817'),
(2, 'pbkdf2_sha256$320000$zQdexCLN02BsO9RUKKkC3u$w/rGteuGStxySOmHLG+GG4b68Mi06lHxlzNJkox3tWE=', '2022-06-23 18:48:24.395234', 0, 'beto', 'Alberto', 'Diaz', 'betito@gmail.com', 0, 1, '2022-06-23 18:46:14.707527');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_carro`
--

CREATE TABLE `db_carro` (
  `id` bigint(20) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_cliente`
--

CREATE TABLE `db_cliente` (
  `run` varchar(9) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `contraseña` varchar(20) NOT NULL,
  `mail` varchar(35) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `fecha_registro` date NOT NULL,
  `tipo_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_mascota`
--

CREATE TABLE `db_mascota` (
  `id` bigint(20) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `raza` varchar(20) NOT NULL,
  `años` int(11) NOT NULL,
  `tipo_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_pedido`
--

CREATE TABLE `db_pedido` (
  `id` bigint(20) NOT NULL,
  `numero` int(11) NOT NULL,
  `producto` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL,
  `fecha` varchar(35) NOT NULL,
  `tipo_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_producto`
--

CREATE TABLE `db_producto` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `tipo_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_producto`
--

INSERT INTO `db_producto` (`codigo`, `nombre`, `marca`, `precio`, `stock`, `imagen`, `created_at`, `updated_at`, `tipo_id`) VALUES
(12, 'Correa Cuero', 'Animalist', 1200, 45, 'productos/correa_T2hXKCW.jpg', '2022-06-23', '2022-06-23', 1),
(55, 'Comida', '2000', 3300, 13, 'productos/perro1_5jsqhhh.png', '2022-06-23', '2022-06-23', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_productos_carro`
--

CREATE TABLE `db_productos_carro` (
  `codigo_producto` int(11) NOT NULL,
  `nombre_producto` varchar(20) NOT NULL,
  `precio_producto` int(11) NOT NULL,
  `imagen_producto` varchar(100) DEFAULT NULL,
  `stock_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_productos_carro`
--

INSERT INTO `db_productos_carro` (`codigo_producto`, `nombre_producto`, `precio_producto`, `imagen_producto`, `stock_producto`) VALUES
(12, 'Correa Cuero', 1200, 'productos/correa_T2hXKCW.jpg', 45),
(55, 'Comida', 3300, 'productos/perro1_5jsqhhh.png', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_productos_segui`
--

CREATE TABLE `db_productos_segui` (
  `seg_codigo` int(11) NOT NULL,
  `seg_nombre` varchar(20) NOT NULL,
  `seg_precio` int(11) NOT NULL,
  `seg_imagen` varchar(100) DEFAULT NULL,
  `seg_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_productos_segui`
--

INSERT INTO `db_productos_segui` (`seg_codigo`, `seg_nombre`, `seg_precio`, `seg_imagen`, `seg_stock`) VALUES
(12, 'Correa Cuero', 1200, 'productos/correa_T2hXKCW.jpg', 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_tipo_cliente`
--

CREATE TABLE `db_tipo_cliente` (
  `id` bigint(20) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_tipo_mascota`
--

CREATE TABLE `db_tipo_mascota` (
  `id` bigint(20) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_tipo_pedido`
--

CREATE TABLE `db_tipo_pedido` (
  `id` bigint(20) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_tipo_producto`
--

CREATE TABLE `db_tipo_producto` (
  `id` bigint(20) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_tipo_producto`
--

INSERT INTO `db_tipo_producto` (`id`, `tipo`) VALUES
(1, 'Correa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-06-23 17:32:02.433723', '1', 'Correa', 1, '[{\"added\": {}}]', 14, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(1, 'admin_interface', 'theme'),
(19, 'app', 'carro'),
(18, 'app', 'cliente'),
(17, 'app', 'mascota'),
(16, 'app', 'pedido'),
(15, 'app', 'producto'),
(8, 'app', 'productos_carro'),
(9, 'app', 'productos_segui'),
(10, 'app', 'suscripcion'),
(11, 'app', 'tipocliente'),
(12, 'app', 'tipomascota'),
(13, 'app', 'tipopedido'),
(14, 'app', 'tipoproducto'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-06-23 17:27:50.054950'),
(2, 'auth', '0001_initial', '2022-06-23 17:27:53.808214'),
(3, 'admin', '0001_initial', '2022-06-23 17:27:54.734217'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-06-23 17:27:54.747204'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-23 17:27:54.761195'),
(6, 'admin_interface', '0001_initial', '2022-06-23 17:27:54.799336'),
(7, 'admin_interface', '0002_add_related_modal', '2022-06-23 17:27:55.005443'),
(8, 'admin_interface', '0003_add_logo_color', '2022-06-23 17:27:55.174708'),
(9, 'admin_interface', '0004_rename_title_color', '2022-06-23 17:27:55.447879'),
(10, 'admin_interface', '0005_add_recent_actions_visible', '2022-06-23 17:27:55.630312'),
(11, 'admin_interface', '0006_bytes_to_str', '2022-06-23 17:27:55.742218'),
(12, 'admin_interface', '0007_add_favicon', '2022-06-23 17:27:55.821427'),
(13, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2022-06-23 17:27:55.919979'),
(14, 'admin_interface', '0009_add_enviroment', '2022-06-23 17:27:56.070093'),
(15, 'admin_interface', '0010_add_localization', '2022-06-23 17:27:56.106629'),
(16, 'admin_interface', '0011_add_environment_options', '2022-06-23 17:27:56.237663'),
(17, 'admin_interface', '0012_update_verbose_names', '2022-06-23 17:27:56.251658'),
(18, 'admin_interface', '0013_add_related_modal_close_button', '2022-06-23 17:27:56.279279'),
(19, 'admin_interface', '0014_name_unique', '2022-06-23 17:27:56.337366'),
(20, 'admin_interface', '0015_add_language_chooser_active', '2022-06-23 17:27:56.384610'),
(21, 'admin_interface', '0016_add_language_chooser_display', '2022-06-23 17:27:56.471084'),
(22, 'admin_interface', '0017_change_list_filter_dropdown', '2022-06-23 17:27:56.493085'),
(23, 'admin_interface', '0018_theme_list_filter_sticky', '2022-06-23 17:27:56.529094'),
(24, 'admin_interface', '0019_add_form_sticky', '2022-06-23 17:27:56.833089'),
(25, 'admin_interface', '0020_module_selected_colors', '2022-06-23 17:27:57.243065'),
(26, 'admin_interface', '0021_file_extension_validator', '2022-06-23 17:27:57.259181'),
(27, 'admin_interface', '0022_add_logo_max_width_and_height', '2022-06-23 17:27:57.510626'),
(28, 'admin_interface', '0023_theme_foldable_apps', '2022-06-23 17:27:57.614789'),
(29, 'admin_interface', '0024_remove_theme_css', '2022-06-23 17:27:57.644781'),
(30, 'app', '0001_initial', '2022-06-23 17:28:07.802661'),
(31, 'contenttypes', '0002_remove_content_type_name', '2022-06-23 17:28:08.006935'),
(32, 'auth', '0002_alter_permission_name_max_length', '2022-06-23 17:28:08.294964'),
(33, 'auth', '0003_alter_user_email_max_length', '2022-06-23 17:28:08.357696'),
(34, 'auth', '0004_alter_user_username_opts', '2022-06-23 17:28:08.399086'),
(35, 'auth', '0005_alter_user_last_login_null', '2022-06-23 17:28:08.583340'),
(36, 'auth', '0006_require_contenttypes_0002', '2022-06-23 17:28:08.614953'),
(37, 'auth', '0007_alter_validators_add_error_messages', '2022-06-23 17:28:08.641982'),
(38, 'auth', '0008_alter_user_username_max_length', '2022-06-23 17:28:08.798981'),
(39, 'auth', '0009_alter_user_last_name_max_length', '2022-06-23 17:28:08.874443'),
(40, 'auth', '0010_alter_group_name_max_length', '2022-06-23 17:28:08.911239'),
(41, 'auth', '0011_update_proxy_permissions', '2022-06-23 17:28:08.937692'),
(42, 'auth', '0012_alter_user_first_name_max_length', '2022-06-23 17:28:08.973705'),
(43, 'sessions', '0001_initial', '2022-06-23 17:28:09.347100');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('panmre1vrqy4acu02qtm7ad1ctrfcrw5', '.eJxVjMsOwiAQRf-FtSEDlJdL934DAWaQqoGktCvjv2uTLnR7zzn3xULc1hq2QUuYkZ2ZZKffLcX8oLYDvMd26zz3ti5z4rvCDzr4tSM9L4f7d1DjqN9ayxKzhkRKaENJEXhd0AMKmdAZqb1FI53z5IyehHVgrRTgihIQKU3s_QHUdDbs:1o4RsO:mmumIAzPpe1_FrDt__lqGwB26RTmcW9wmi9-fSZgXRU', '2022-07-07 18:48:24.397251');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

--
-- Indices de la tabla `app_suscripcion`
--
ALTER TABLE `app_suscripcion`
  ADD PRIMARY KEY (`usuario`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `db_carro`
--
ALTER TABLE `db_carro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `db_carro_producto_id_de20df27_fk_db_producto_codigo` (`producto_id`);

--
-- Indices de la tabla `db_cliente`
--
ALTER TABLE `db_cliente`
  ADD PRIMARY KEY (`run`),
  ADD KEY `db_cliente_tipo_id_a68a96cb_fk_db_tipo_cliente_id` (`tipo_id`);

--
-- Indices de la tabla `db_mascota`
--
ALTER TABLE `db_mascota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `db_mascota_tipo_id_9280f3f6_fk_db_tipo_mascota_id` (`tipo_id`);

--
-- Indices de la tabla `db_pedido`
--
ALTER TABLE `db_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `db_pedido_tipo_id_a11b819f_fk_db_tipo_pedido_id` (`tipo_id`);

--
-- Indices de la tabla `db_producto`
--
ALTER TABLE `db_producto`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `db_producto_tipo_id_b9ba0546_fk_db_tipo_producto_id` (`tipo_id`);

--
-- Indices de la tabla `db_productos_carro`
--
ALTER TABLE `db_productos_carro`
  ADD PRIMARY KEY (`codigo_producto`);

--
-- Indices de la tabla `db_productos_segui`
--
ALTER TABLE `db_productos_segui`
  ADD PRIMARY KEY (`seg_codigo`);

--
-- Indices de la tabla `db_tipo_cliente`
--
ALTER TABLE `db_tipo_cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `db_tipo_mascota`
--
ALTER TABLE `db_tipo_mascota`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `db_tipo_pedido`
--
ALTER TABLE `db_tipo_pedido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `db_tipo_producto`
--
ALTER TABLE `db_tipo_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `db_carro`
--
ALTER TABLE `db_carro`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `db_mascota`
--
ALTER TABLE `db_mascota`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `db_pedido`
--
ALTER TABLE `db_pedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `db_tipo_cliente`
--
ALTER TABLE `db_tipo_cliente`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `db_tipo_mascota`
--
ALTER TABLE `db_tipo_mascota`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `db_tipo_pedido`
--
ALTER TABLE `db_tipo_pedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `db_tipo_producto`
--
ALTER TABLE `db_tipo_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `db_carro`
--
ALTER TABLE `db_carro`
  ADD CONSTRAINT `db_carro_producto_id_de20df27_fk_db_producto_codigo` FOREIGN KEY (`producto_id`) REFERENCES `db_producto` (`codigo`);

--
-- Filtros para la tabla `db_cliente`
--
ALTER TABLE `db_cliente`
  ADD CONSTRAINT `db_cliente_tipo_id_a68a96cb_fk_db_tipo_cliente_id` FOREIGN KEY (`tipo_id`) REFERENCES `db_tipo_cliente` (`id`);

--
-- Filtros para la tabla `db_mascota`
--
ALTER TABLE `db_mascota`
  ADD CONSTRAINT `db_mascota_tipo_id_9280f3f6_fk_db_tipo_mascota_id` FOREIGN KEY (`tipo_id`) REFERENCES `db_tipo_mascota` (`id`);

--
-- Filtros para la tabla `db_pedido`
--
ALTER TABLE `db_pedido`
  ADD CONSTRAINT `db_pedido_tipo_id_a11b819f_fk_db_tipo_pedido_id` FOREIGN KEY (`tipo_id`) REFERENCES `db_tipo_pedido` (`id`);

--
-- Filtros para la tabla `db_producto`
--
ALTER TABLE `db_producto`
  ADD CONSTRAINT `db_producto_tipo_id_b9ba0546_fk_db_tipo_producto_id` FOREIGN KEY (`tipo_id`) REFERENCES `db_tipo_producto` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.40-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.1.0.5580
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para bdticket
CREATE DATABASE IF NOT EXISTS `bdticket` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bdticket`;

-- Volcando estructura para tabla bdticket.api_tickets
CREATE TABLE IF NOT EXISTS `api_tickets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `detail` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `ticket_pedido` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_api_tickets_system_user` (`id_user`),
  CONSTRAINT `FK_api_tickets_system_user` FOREIGN KEY (`id_user`) REFERENCES `system_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bdticket.api_tickets: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `api_tickets` DISABLE KEYS */;
INSERT INTO `api_tickets` (`id`, `detail`, `id_user`, `ticket_pedido`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Habilitacion de nuevo router wifi San Rafael', 2, 'SI', '2019-08-14 01:01:25', '2019-08-16 15:10:35', NULL),
	(2, 'Asignacion de equipo de empresa, Oriana Isla, Tejas Verdes', 2, 'NO', '2019-08-14 03:14:14', '2019-08-16 17:27:13', NULL),
	(3, 'Nuevo requerimiento del Usuario para maquina de terreno', 2, 'SI', '2019-08-14 06:04:08', '2019-08-16 17:27:08', NULL),
	(4, 'Nuevo Requerimiento Nevas propuesta de plataforma Aloerw', 2, 'SI', '2019-08-14 07:50:58', '2019-08-16 15:34:44', NULL),
	(5, 'Puesta en Marcha de nuevo panel de gestion, Ersoft', 2, 'NO', '2019-08-14 08:57:52', '2019-08-16 15:35:16', NULL),
	(6, 'Envio de Repetidor a Sucursal, Tejas Verdes', 2, 'NO', '2019-08-14 15:15:18', '2019-08-14 15:15:35', NULL),
	(7, 'Correccion y verificacion del enlace a Tejas Verdes', 2, 'NO', '2019-08-14 15:30:53', '2019-08-16 17:11:20', NULL),
	(8, 'Toma de Requerimientos de nueva maquina Manuel Soto.', 2, 'NO', '2019-08-14 15:39:34', '2019-08-16 16:58:21', NULL),
	(9, 'Adaptar nuevo router en el rack', 2, 'NO', '2019-08-14 15:41:04', '2019-08-16 15:35:06', NULL),
	(10, 'Cambio de Maquina Emiliana Cantillana', 2, 'SI', '2019-08-14 15:41:46', '2019-08-16 15:42:57', NULL),
	(11, 'Nuevo telefono movil para Manuel Serrano', 2, 'NO', '2019-08-14 15:45:30', '2019-08-16 15:43:02', NULL),
	(12, 'Estructuracion de nueva sucursal telefonica, Las Condes', 2, 'SI', '2019-08-16 05:30:40', '2019-08-16 17:07:36', NULL),
	(13, 'Nuevo Computador para administracion', 2, 'NO', '2019-08-16 08:16:16', '2019-08-16 17:07:43', NULL),
	(14, 'Nuevo Requerimiento especial', 2, 'NO', '2019-08-16 09:25:29', '2019-08-16 17:07:48', NULL),
	(15, 'Nuevo Requerimiento de avance', 2, 'SI', '2019-08-16 09:59:45', '2019-08-16 17:10:44', NULL),
	(16, 'Cambios finales control de entradas', 2, 'NO', '2019-08-16 16:48:44', '2019-08-16 16:48:44', NULL),
	(17, 'Nueva maquina para gerente general', 2, 'NO', '2019-08-16 16:50:56', '2019-08-16 16:50:56', NULL),
	(18, 'Checkeo de Systema de Facturación, sistema funcionando con retrasos, intentar reiniciar los servicios', 2, 'NO', '2019-08-16 17:29:26', '2019-08-16 17:29:26', NULL);
/*!40000 ALTER TABLE `api_tickets` ENABLE KEYS */;

-- Volcando estructura para tabla bdticket.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bdticket.migrations: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_14_012200_api_tickets', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla bdticket.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bdticket.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla bdticket.system_tipo_usuario
CREATE TABLE IF NOT EXISTS `system_tipo_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `tipo_usuario` varchar(50) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bdticket.system_tipo_usuario: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `system_tipo_usuario` DISABLE KEYS */;
INSERT INTO `system_tipo_usuario` (`id`, `created_at`, `updated_at`, `tipo_usuario`, `deleted_at`) VALUES
	(1, '2019-08-16 04:00:45', '2019-08-16 04:00:46', 'Administrador', NULL),
	(2, '2019-08-16 04:01:06', '2019-08-16 04:01:05', 'Tecnico', NULL);
/*!40000 ALTER TABLE `system_tipo_usuario` ENABLE KEYS */;

-- Volcando estructura para tabla bdticket.system_user
CREATE TABLE IF NOT EXISTS `system_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `id_tipouser` int(11),
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_system_user_system_tipo_usuario` (`id_tipouser`),
  CONSTRAINT `FK_system_user_system_tipo_usuario` FOREIGN KEY (`id_tipouser`) REFERENCES `system_tipo_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bdticket.system_user: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `system_user` DISABLE KEYS */;
INSERT INTO `system_user` (`id`, `created_at`, `updated_at`, `name`, `email`, `password`, `id_tipouser`, `deleted_at`) VALUES
	(1, '2019-08-14 01:02:53', '2019-08-14 01:02:54', 'Eduardo Sanchez', 'eso@ejemplo.cl', '$2y$10$ROOLAFnuiynwuGDX8DijOOuaIB9gvRtI2eR.z3JhUd2NWCcnpjCbq', 1, NULL),
	(2, '2019-08-14 03:32:55', NULL, 'Antonio Mora', 'mbm@ejemplo.cl', '$2y$10$ROOLAFnuiynwuGDX8DijOOuaIB9gvRtI2eR.z3JhUd2NWCcnpjCbq', 2, NULL),
	(3, '2019-08-16 16:57:52', '2019-08-16 16:57:52', 'Mariano Soto', 'mss@ejemplo.cl', '$2y$10$G2kH6qbiyI1.s6.DxcLlw.6vOKnTdMpNaqUrqhdgdW1OfFcVXT5q.', 2, NULL),
	(18, '2019-08-16 17:40:25', '2019-08-16 17:40:25', 'Mario Maldonado', 'mms@ejemplo.cl', '$2y$10$80Xgr3vb3lkHHONh6v1IPuagT8tChF6mqIINBhF9FaPJvMHxDR/Vi', 2, NULL);
/*!40000 ALTER TABLE `system_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

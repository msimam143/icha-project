-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.11.0-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for icha
CREATE DATABASE IF NOT EXISTS `icha` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `icha`;

-- Dumping structure for table icha.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table icha.auth_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Dumping structure for table icha.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table icha.auth_group_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Dumping structure for table icha.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table icha.auth_permission: ~36 rows (approximately)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add artikel', 7, 'add_artikel'),
	(26, 'Can change artikel', 7, 'change_artikel'),
	(27, 'Can delete artikel', 7, 'delete_artikel'),
	(28, 'Can view artikel', 7, 'view_artikel'),
	(29, 'Can add kategori', 8, 'add_kategori'),
	(30, 'Can change kategori', 8, 'change_kategori'),
	(31, 'Can delete kategori', 8, 'delete_kategori'),
	(32, 'Can view kategori', 8, 'view_kategori'),
	(33, 'Can add komen', 9, 'add_komen'),
	(34, 'Can change komen', 9, 'change_komen'),
	(35, 'Can delete komen', 9, 'delete_komen'),
	(36, 'Can view komen', 9, 'view_komen');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Dumping structure for table icha.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table icha.auth_user: ~2 rows (approximately)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$390000$jxCmb8DT3g6rbkc3rgH3tH$WkyQwRs72OWoPMJErVnYn0w2yghkWWBHLuJoNX2XI5M=', '2023-01-02 04:44:26.349965', 1, 'icha', '', '', 'icha23@gmail.com', 1, 1, '2022-12-26 11:54:16.051466'),
	(2, 'pbkdf2_sha256$390000$0uNdxchx5daBamQj8yrtnU$p2udz+0fo5b/Ltf9AqfPlrOnDPNlBmaNebbA4kauuow=', NULL, 0, 'najwa11', 'najwa', 'shihab', 'ichaa@gmail.com', 1, 1, '2022-12-26 12:02:36.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Dumping structure for table icha.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table icha.auth_user_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Dumping structure for table icha.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table icha.auth_user_user_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Dumping structure for table icha.blog_artikel
CREATE TABLE IF NOT EXISTS `blog_artikel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` datetime(6) DEFAULT NULL,
  `kategori_id` bigint(20) DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_artikel_kategori_id_d850ff1f_fk_blog_kategori_id` (`kategori_id`),
  KEY `blog_artikel_slug_73a9d6d3` (`slug`),
  CONSTRAINT `blog_artikel_kategori_id_d850ff1f_fk_blog_kategori_id` FOREIGN KEY (`kategori_id`) REFERENCES `blog_kategori` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table icha.blog_artikel: ~3 rows (approximately)
/*!40000 ALTER TABLE `blog_artikel` DISABLE KEYS */;
INSERT INTO `blog_artikel` (`id`, `judul`, `isi`, `tanggal`, `kategori_id`, `slug`, `gambar`) VALUES
	(3, 'ini berita satu', 'berita sambo', '2022-12-27 05:52:55.369243', 3, 'ini-berita-satu', 'media/kartun-anak-kecil-belajar1.jpg'),
	(4, 'ini pengumuman', 'ini pengumuman guys', '2022-12-27 05:53:37.524915', 2, 'ini-pengumuman', 'media/istockphoto-1141102555-1024x10241.jpg'),
	(5, 'halo', 'halo nama saya icha :D', '2022-12-27 11:40:46.709621', 2, 'halo', 'media/istockphoto-1141102555-1024x10241_KsmEf0B.jpg');
/*!40000 ALTER TABLE `blog_artikel` ENABLE KEYS */;

-- Dumping structure for table icha.blog_kategori
CREATE TABLE IF NOT EXISTS `blog_kategori` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_kategori_slug_92bd33f7` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table icha.blog_kategori: ~2 rows (approximately)
/*!40000 ALTER TABLE `blog_kategori` DISABLE KEYS */;
INSERT INTO `blog_kategori` (`id`, `nama`, `keterangan`, `slug`) VALUES
	(1, 'Berita', 'halo ini  adalah kategori berita', NULL),
	(2, 'pengumaman', 'ini penting', NULL),
	(3, 'info', 'buat karyawan', NULL);
/*!40000 ALTER TABLE `blog_kategori` ENABLE KEYS */;

-- Dumping structure for table icha.blog_komen
CREATE TABLE IF NOT EXISTS `blog_komen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime(6) DEFAULT NULL,
  `isi` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `artikel_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_komen_artikel_id_82177ddd_fk_blog_artikel_id` (`artikel_id`),
  CONSTRAINT `blog_komen_artikel_id_82177ddd_fk_blog_artikel_id` FOREIGN KEY (`artikel_id`) REFERENCES `blog_artikel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table icha.blog_komen: ~15 rows (approximately)
/*!40000 ALTER TABLE `blog_komen` DISABLE KEYS */;
INSERT INTO `blog_komen` (`id`, `tanggal`, `isi`, `email`, `artikel_id`) VALUES
	(1, '2023-01-02 06:59:34.256198', 'halo halo', 'aku@gmail.com', 5),
	(2, '2023-01-02 07:02:34.969818', 'halo halo', 'admin19@gmail.com', 5),
	(3, '2023-01-02 07:05:42.701512', 'halo halo', 'admin19@gmail.com', 5),
	(4, '2023-01-02 07:08:52.104501', 'halo halo', 'aku@gmail.com', 5),
	(5, '2023-01-02 07:10:40.042560', 'halo halo', 'aku@gmail.com', 5),
	(6, '2023-01-02 07:10:50.135300', 'halo halo', 'aku@gmail.com', 5),
	(7, '2023-01-02 07:11:38.003336', 'halo halo', 'aku@gmail.com', 5),
	(8, '2023-01-02 07:12:49.748218', 'halo halo', 'aku@gmail.com', 5),
	(9, '2023-01-02 07:17:28.825308', 'halo', 'aku@gmail.com', 5),
	(10, '2023-01-02 07:19:49.080602', 'halo halo', 'imam-ms19@gmail.com', 5),
	(11, '2023-01-02 07:21:58.685377', 'halo halo', 'imam-ms19@gmail.com', 5),
	(12, '2023-01-02 07:24:18.650313', 'halo halo', 'imam-ms19@gmail.com', 5),
	(13, '2023-01-02 07:25:21.722750', 'halo halo', 'admin19@gmail.com', 5),
	(14, '2023-01-02 07:32:35.275768', 'umar tolol', 'fahmi123@gmail.com', 5),
	(15, '2023-01-02 07:52:00.407264', 'halo', 'fahmi123@gmail.com', 5);
/*!40000 ALTER TABLE `blog_komen` ENABLE KEYS */;

-- Dumping structure for table icha.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table icha.django_admin_log: ~29 rows (approximately)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2022-12-26 12:02:37.040991', '2', 'najwa11', 1, '[{"added": {}}]', 4, 1),
	(2, '2022-12-26 12:03:48.312014', '2', 'najwa11', 2, '[{"changed": {"fields": ["First name", "Last name", "Email address"]}}]', 4, 1),
	(3, '2022-12-26 12:04:38.306955', '2', 'najwa11', 2, '[{"changed": {"fields": ["Staff status"]}}]', 4, 1),
	(4, '2022-12-27 05:33:24.524865', '1', 'artikel object (1)', 1, '[{"added": {}}]', 7, 1),
	(5, '2022-12-27 05:36:32.624388', '1', 'halo semua', 2, '[{"changed": {"fields": ["Judul"]}}]', 7, 1),
	(6, '2022-12-27 05:36:48.460452', '1', 'halo semua', 3, '', 7, 1),
	(7, '2022-12-27 05:40:58.711161', '2', 'halo', 1, '[{"added": {}}]', 7, 1),
	(8, '2022-12-27 05:46:28.694295', '1', 'Berita', 1, '[{"added": {}}]', 8, 1),
	(9, '2022-12-27 05:46:50.877606', '2', 'pengumaman', 1, '[{"added": {}}]', 8, 1),
	(10, '2022-12-27 05:47:09.953704', '2', 'halo', 3, '', 7, 1),
	(11, '2022-12-27 05:52:52.244853', '3', 'info', 1, '[{"added": {}}]', 8, 1),
	(12, '2022-12-27 05:52:55.372769', '3', 'ini berita satu', 1, '[{"added": {}}]', 7, 1),
	(13, '2022-12-27 05:53:37.526688', '4', 'ini pengumuman', 1, '[{"added": {}}]', 7, 1),
	(14, '2022-12-27 07:48:07.340315', '4', 'ini pengumuman', 2, '[{"changed": {"fields": ["Gambar"]}}]', 7, 1),
	(15, '2022-12-27 07:50:05.008256', '4', 'ini pengumuman', 2, '[{"changed": {"fields": ["Gambar"]}}]', 7, 1),
	(16, '2022-12-27 07:51:54.522022', '4', 'ini pengumuman', 2, '[{"changed": {"fields": ["Gambar"]}}]', 7, 1),
	(17, '2022-12-27 07:52:54.495206', '4', 'ini pengumuman', 2, '[]', 7, 1),
	(18, '2022-12-27 08:32:56.254007', '4', 'ini pengumuman', 2, '[]', 7, 1),
	(19, '2022-12-27 11:39:03.767692', '4', 'ini pengumuman', 2, '[{"changed": {"fields": ["Gambar"]}}]', 7, 1),
	(20, '2022-12-27 11:40:07.104137', '3', 'ini berita satu', 2, '[{"changed": {"fields": ["Gambar"]}}]', 7, 1),
	(21, '2022-12-27 11:40:46.712883', '5', 'halo', 1, '[{"added": {}}]', 7, 1),
	(22, '2022-12-27 11:41:24.600017', '6', 'hai', 1, '[{"added": {}}]', 7, 1),
	(23, '2022-12-27 11:41:24.774015', '7', 'hai', 1, '[{"added": {}}]', 7, 1),
	(24, '2022-12-27 11:42:08.961093', '7', 'hai', 3, '', 7, 1),
	(25, '2022-12-27 11:42:08.966104', '6', 'hai', 3, '', 7, 1),
	(26, '2022-12-27 11:42:32.142334', '5', 'halo', 2, '[{"changed": {"fields": ["Isi", "Kategori", "Gambar"]}}]', 7, 1),
	(27, '2022-12-27 12:22:07.794884', '4', 'ini pengumuman', 2, '[{"changed": {"fields": ["Isi"]}}]', 7, 1),
	(28, '2022-12-27 12:22:25.284224', '3', 'ini berita satu', 2, '[{"changed": {"fields": ["Isi"]}}]', 7, 1),
	(29, '2022-12-27 12:22:47.132154', '5', 'halo', 2, '[{"changed": {"fields": ["Isi"]}}]', 7, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Dumping structure for table icha.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table icha.django_content_type: ~9 rows (approximately)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(7, 'blog', 'artikel'),
	(8, 'blog', 'kategori'),
	(9, 'blog', 'komen'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Dumping structure for table icha.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table icha.django_migrations: ~27 rows (approximately)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2022-12-26 11:51:52.905275'),
	(2, 'auth', '0001_initial', '2022-12-26 11:51:53.179222'),
	(3, 'admin', '0001_initial', '2022-12-26 11:51:53.243591'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-26 11:51:53.251790'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-26 11:51:53.259769'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-26 11:51:53.303847'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-26 11:51:53.333862'),
	(8, 'auth', '0003_alter_user_email_max_length', '2022-12-26 11:51:53.354479'),
	(9, 'auth', '0004_alter_user_username_opts', '2022-12-26 11:51:53.362708'),
	(10, 'auth', '0005_alter_user_last_login_null', '2022-12-26 11:51:53.387272'),
	(11, 'auth', '0006_require_contenttypes_0002', '2022-12-26 11:51:53.389577'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-26 11:51:53.397559'),
	(13, 'auth', '0008_alter_user_username_max_length', '2022-12-26 11:51:53.416525'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-26 11:51:53.436251'),
	(15, 'auth', '0010_alter_group_name_max_length', '2022-12-26 11:51:53.454963'),
	(16, 'auth', '0011_update_proxy_permissions', '2022-12-26 11:51:53.466985'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-26 11:51:53.486794'),
	(18, 'sessions', '0001_initial', '2022-12-26 11:51:53.515459'),
	(19, 'blog', '0001_initial', '2022-12-26 13:08:09.095905'),
	(20, 'blog', '0002_alter_artikel_isi', '2022-12-26 13:12:33.453603'),
	(21, 'blog', '0003_artikel_tanggal', '2022-12-27 05:40:13.967681'),
	(22, 'blog', '0004_kategori', '2022-12-27 05:45:43.834265'),
	(23, 'blog', '0005_artikel_kategori', '2022-12-27 05:51:41.078631'),
	(24, 'blog', '0006_artikel_slug', '2022-12-27 07:09:38.418726'),
	(25, 'blog', '0007_kategori_slug', '2022-12-27 07:27:26.528106'),
	(26, 'blog', '0008_artikel_gambar', '2022-12-27 07:45:52.544581'),
	(27, 'blog', '0009_komen', '2023-01-01 13:44:55.083464');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Dumping structure for table icha.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table icha.django_session: ~2 rows (approximately)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('5pfg7kwtihzanwvolfzk5b0l4xoz72wd', '.eJxVjLsOAiEUBf-F2hAuIBBLe7-B3AfKqoFk2a2M_66bbKHtmZnzUhnXpeZ1lDlPok4K1OF3I-RHaRuQO7Zb19zbMk-kN0XvdOhLl_I87-7fQcVRvzW55IwnIwFSDMLX4ImjHIG9OGDHxviAjMYAEjgrNgEikKdANjqr3h_aUTeR:1pA48P:7DGKx4LomD6Te3r0MZMjZRZDTJAIgKiN8cWmdGSGN_4', '2023-01-10 07:12:25.349683'),
	('dajscdolyz1t0tmlho6nvvl32lrgebw7', '.eJxVjLsOAiEUBf-F2hAuIBBLe7-B3AfKqoFk2a2M_66bbKHtmZnzUhnXpeZ1lDlPok4K1OF3I-RHaRuQO7Zb19zbMk-kN0XvdOhLl_I87-7fQcVRvzW55IwnIwFSDMLX4ImjHIG9OGDHxviAjMYAEjgrNgEikKdANjqr3h_aUTeR:1pCCgU:-45LKjNjiQj_Lsfa21jxh0RX54BMhXFNLYhFfl9BWF8', '2023-01-16 04:44:26.352996');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

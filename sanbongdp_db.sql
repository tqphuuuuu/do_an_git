/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : sanbongdp_db

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 02/03/2024 12:22:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chi_tiet_dat_san
-- ----------------------------
DROP TABLE IF EXISTS `chi_tiet_dat_san`;
CREATE TABLE `chi_tiet_dat_san`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ma_dat_san` int(11) NULL DEFAULT NULL,
  `ma_san` int(11) UNSIGNED NOT NULL,
  `khung_gio` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ma_loai_dv` int(11) NOT NULL,
  `so_luong_dv` int(11) NULL DEFAULT NULL,
  `ngay_gio_huy` date NULL DEFAULT NULL,
  `ngay_su_dung` date NULL DEFAULT NULL,
  `gia_tien` double(8, 2) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `ma_tk` int(5) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ma_tk`(`ma_tk`) USING BTREE,
  INDEX `ma_san`(`ma_san`) USING BTREE,
  INDEX `ma_loai_dv`(`ma_loai_dv`) USING BTREE,
  CONSTRAINT `chi_tiet_dat_san_ibfk_1` FOREIGN KEY (`ma_san`) REFERENCES `san` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `chi_tiet_dat_san_ibfk_2` FOREIGN KEY (`ma_loai_dv`) REFERENCES `dich_vu` (`ma_loai_dv`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chi_tiet_dat_san
-- ----------------------------
INSERT INTO `chi_tiet_dat_san` (`id`, `ma_dat_san`, `ma_san`, `khung_gio`, `ma_loai_dv`, `so_luong_dv`, `ngay_gio_huy`, `ngay_su_dung`, `gia_tien`, `created_at`, `updated_at`, `ma_tk`) VALUES
(59, 8059, 1, '5', 1, 10, NULL, '2024-05-09', 300000.00, '2024-05-08 06:16:20', '2024-05-08 06:16:20', 35),
(62, 8535, 3, '6', 2, 20, NULL, '2024-05-09', 320000.00, '2024-05-09 04:40:53', '2024-05-09 04:40:53', 35),
(63, 6347, 1, '5', 1, 10, NULL, '2024-05-10', 300000.00, '2024-05-09 20:03:57', '2024-05-09 20:03:57', 35),
(64, 3366, 5, '5', 1, 20, NULL, '2024-05-10', 400000.00, '2024-05-09 20:05:25', '2024-05-09 20:05:25', 35),
(65, 8612, 3, '5', 1, 10, NULL, '2024-05-10', 300000.00, '2024-05-09 20:06:21', '2024-05-09 20:06:21', 35),
(67, 9895, 3, '6', 1, 10, NULL, '2024-05-10', 320000.00, '2024-05-09 22:44:57', '2024-05-09 22:44:57', 35),
(68, 6344, 1, '6', 2, 10, NULL, '2024-05-10', 270000.00, '2024-05-10 06:41:31', '2024-05-10 06:41:31', 35),
(69, 6584, 1, '5', 1, 10, NULL, '2024-05-13', 300000.00, '2024-05-12 20:00:00', '2024-05-12 20:00:00', 35),
(70, 5999, 1, '5', 1, 10, NULL, '2024-05-14', 300000.00, '2024-05-14 06:58:43', '2024-05-14 06:58:43', 35),
(71, 9043, 1, '6', 1, 10, NULL, '2024-05-14', 320000.00, '2024-05-14 07:42:35', '2024-05-14 07:42:35', 35),
(75, 1657, 1, '9', 1, 10, NULL, '2024-05-14', 320000.00, '2024-05-14 08:05:35', '2024-05-14 08:05:35', 35),
(78, 9811, 4, '5', 1, 10, NULL, '2024-05-14', 300000.00, '2024-05-14 08:44:19', '2024-05-14 08:44:19', 35),
(79, 7851, 4, '6', 1, 20, NULL, '2024-05-14', 420000.00, '2024-05-14 08:45:40', '2024-05-14 08:45:40', 35),
(80, 5218, 4, '7', 1, 20, NULL, '2024-05-14', 420000.00, '2024-05-14 08:52:57', '2024-05-14 08:52:57', 35),
(81, 9416, 1, '7', 1, 50, NULL, '2024-05-14', 720000.00, '2024-05-14 08:57:07', '2024-05-14 08:57:07', 35),
(83, 9416, 1, '7', 1, 50, NULL, '2024-05-14', 720000.00, '2024-05-14 08:59:56', '2024-05-14 08:59:56', 35),
(84, 9416, 1, '7', 1, 50, NULL, '2024-05-14', 720000.00, '2024-05-14 09:00:50', '2024-05-14 09:00:50', 35),
(85, 8388, 1, '5', 1, 5, NULL, '2024-05-15', 250000.00, '2024-05-14 19:03:41', '2024-05-14 19:03:41', 35),
(86, 6596, 1, '6', 1, 10, NULL, '2024-05-15', 320000.00, '2024-05-15 02:44:55', '2024-05-15 02:44:55', 35),
(87, 6596, 1, '7', 1, 0, NULL, '2024-05-15', 220000.00, '2024-05-15 02:44:55', '2024-05-15 02:44:55', 35),
(88, 6596, 1, '8', 1, 0, NULL, '2024-05-15', 220000.00, '2024-05-15 02:44:55', '2024-05-15 02:44:55', 35),
(89, 6596, 1, '9', 1, 0, NULL, '2024-05-15', 220000.00, '2024-05-15 02:44:55', '2024-05-15 02:44:55', 35),
(90, 7070, 1, '5', 2, 10, NULL, '2024-05-19', 250000.00, '2024-05-19 00:27:37', '2024-05-19 00:27:37', 35),
(92, 4776, 1, '6', 2, 1, '2024-05-20', '2024-05-20', 225000.00, '2024-05-19 22:35:58', '2024-05-19 22:43:53', 37),
(94, 1524, 1, '5', 1, 1, NULL, '2024-05-20', 210000.00, '2024-05-19 22:40:08', '2024-05-19 22:40:08', 35),
(96, 2459, 1, '5', 2, 15, '2024-05-21', '2024-05-21', 275000.00, '2024-05-21 03:42:06', '2024-05-21 03:49:41', 35);


-- ----------------------------
-- Table structure for dat_san
-- ----------------------------
DROP TABLE IF EXISTS `dat_san`;
CREATE TABLE `dat_san`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ma_tk` int(11) NOT NULL,
  `ngay_dat` date NOT NULL,
  `ten_nguoi_dat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt_nguoi_dat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_trang_thai` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `ma_tk`) USING BTREE,
  INDEX `ma_tk`(`ma_tk`) USING BTREE,
  INDEX `ma_trang_thai`(`ma_trang_thai`) USING BTREE,
  INDEX `ma_tk_2`(`ma_tk`) USING BTREE,
  CONSTRAINT `dat_san_ibfk_1` FOREIGN KEY (`ma_tk`) REFERENCES `tai_khoan` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ma_trang_thai` FOREIGN KEY (`ma_trang_thai`) REFERENCES `trang_thai_dat_san` (`ma_trang_thai`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dat_san
-- ----------------------------
INSERT INTO `dat_san` (`id`, `ma_tk`, `ngay_dat`, `ten_nguoi_dat`, `sdt_nguoi_dat`, `ma_trang_thai`, `created_at`, `updated_at`) VALUES
(59, 35, '2024-05-08', 'Dương', '0123456789', 2, '2024-05-08 06:16:20', '2024-05-08 06:16:20'),
(62, 35, '2024-05-09', 'Dương', '0123456789', 2, '2024-05-09 04:40:53', '2024-05-09 04:40:53'),
(63, 35, '2024-05-10', 'Dương', '0123456789', 2, '2024-05-09 20:03:57', '2024-05-09 20:03:57'),
(64, 35, '2024-05-10', 'Dương', '0123456789', 2, '2024-05-09 20:05:25', '2024-05-09 20:05:25'),
(65, 35, '2024-05-10', 'Dương', '0123456789', 2, '2024-05-09 20:06:21', '2024-05-09 20:06:21'),
(67, 35, '2024-05-10', 'Dương', '0123456789', 2, '2024-05-09 22:44:57', '2024-05-09 22:44:57'),
(68, 35, '2024-05-10', 'Dương', '0123456789', 2, '2024-05-10 06:41:31', '2024-05-10 06:41:31'),
(69, 35, '2024-05-13', 'Dương', '0123456789', 2, '2024-05-12 20:00:00', '2024-05-12 20:00:00'),
(70, 35, '2024-05-14', 'Dương', '0123456789', 2, '2024-05-14 06:58:43', '2024-05-14 06:58:43'),
(71, 35, '2024-05-14', 'Dương', '0123456789', 2, '2024-05-14 07:42:35', '2024-05-14 07:42:35'),
(75, 35, '2024-05-14', 'Dương', '0123456789', 2, '2024-05-14 08:05:35', '2024-05-14 08:05:35'),
(78, 35, '2024-05-14', 'Dương', '0123456789', 2, '2024-05-14 08:44:19', '2024-05-14 08:44:19'),
(79, 35, '2024-05-14', 'Dương', '0123456789', 2, '2024-05-14 08:45:40', '2024-05-14 08:45:40'),
(80, 35, '2024-05-14', 'Dương', '0123456789', 2, '2024-05-14 08:52:57', '2024-05-14 08:52:57'),
(81, 35, '2024-05-14', 'Dương', '0123456789', 2, '2024-05-14 08:57:07', '2024-05-14 08:57:07'),
(83, 35, '2024-05-14', 'Dương', '0123456789', 2, '2024-05-14 08:59:56', '2024-05-14 08:59:56'),
(84, 35, '2024-05-14', 'Dương', '0123456789', 2, '2024-05-14 09:00:50', '2024-05-14 09:00:50'),
(85, 35, '2024-05-15', 'Dương', '0123456789', 2, '2024-05-14 19:03:41', '2024-05-14 19:03:41'),
(86, 35, '2024-05-15', 'Dương', '0123456789', 2, '2024-05-15 02:44:55', '2024-05-15 02:44:55'),
(87, 35, '2024-05-15', 'Dương', '0123456789', 2, '2024-05-15 02:44:55', '2024-05-15 02:44:55'),
(88, 35, '2024-05-15', 'Dương', '0123456789', 2, '2024-05-15 02:44:55', '2024-05-15 02:44:55'),
(89, 35, '2024-05-15', 'Dương', '0123456789', 2, '2024-05-15 02:44:55', '2024-05-15 02:44:55'),
(90, 35, '2024-05-19', 'Dương', '0123456789', 2, '2024-05-19 00:27:37', '2024-05-19 00:27:37'),
(92, 37, '2024-05-20', 'duong', '1022333', 3, '2024-05-19 22:35:58', '2024-05-19 22:43:53'),
(94, 35, '2024-05-20', 'Dương', '0123456789', 2, '2024-05-19 22:40:08', '2024-05-19 22:40:08'),
(96, 35, '2024-05-21', 'Dương', '0123456789', 3, '2024-05-21 03:42:06', '2024-05-21 03:49:41');
 
-- ----------------------------
-- Table structure for dich_vu
-- ----------------------------
DROP TABLE IF EXISTS `dich_vu`;
CREATE TABLE `dich_vu`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ma_loai_dv` int(11) NOT NULL,
  `ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia_tien` double(8, 2) NOT NULL,
  `don_vi` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ma_loai_dv`(`ma_loai_dv`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  CONSTRAINT `ma_loai_dv` FOREIGN KEY (`ma_loai_dv`) REFERENCES `loai_dich_vu` (`ma_dv`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dich_vu
-- ----------------------------
INSERT INTO `dich_vu` VALUES (1, 1, 'Nước khoáng lạc', 10000.00, 100, NULL, NULL);
INSERT INTO `dich_vu` VALUES (2, 2, 'Nước lọc', 5000.00, 100, NULL, NULL);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for gia_theo_khung_gio
-- ----------------------------
DROP TABLE IF EXISTS `gia_theo_khung_gio`;
CREATE TABLE `gia_theo_khung_gio`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ma_loai_san` bigint(20) UNSIGNED NOT NULL,
  `khung_gio` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gia_tien` double(8, 2) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ma_loai_san`(`ma_loai_san`) USING BTREE,
  CONSTRAINT `gia_theo_khung_gio_ibfk_1` FOREIGN KEY (`ma_loai_san`) REFERENCES `loai_san` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gia_theo_khung_gio
-- ----------------------------
INSERT INTO `gia_theo_khung_gio` VALUES (1, 1, '05:00-06:00', NULL, 200000.00, NULL, '2024-04-04 03:16:26');
INSERT INTO `gia_theo_khung_gio` VALUES (2, 1, '06:00-07:00', NULL, 220000.00, NULL, NULL);
INSERT INTO `gia_theo_khung_gio` VALUES (3, 1, '07:00-08:00', NULL, 220000.00, NULL, NULL);
INSERT INTO `gia_theo_khung_gio` VALUES (4, 1, '08:00-09:00', NULL, 220000.00, NULL, NULL);
INSERT INTO `gia_theo_khung_gio` VALUES (5, 1, '09:00-10:00', NULL, 220000.00, NULL, NULL);
INSERT INTO `gia_theo_khung_gio` VALUES (6, 1, '14:00-15:00', NULL, 240000.00, NULL, NULL);
INSERT INTO `gia_theo_khung_gio` VALUES (7, 1, '15:00-16:00', NULL, 240000.00, NULL, NULL);
INSERT INTO `gia_theo_khung_gio` VALUES (8, 1, '16:00-17:00', NULL, 280000.00, NULL, NULL);
INSERT INTO `gia_theo_khung_gio` VALUES (9, 1, '17:00-18:00', NULL, 300000.00, NULL, NULL);
INSERT INTO `gia_theo_khung_gio` VALUES (10, 1, '18:00-19:00', NULL, 320000.00, NULL, NULL);
INSERT INTO `gia_theo_khung_gio` VALUES (11, 1, '19:00-20:00', NULL, 320000.00, NULL, NULL);
INSERT INTO `gia_theo_khung_gio` VALUES (12, 1, '20:00-21:00', NULL, 340000.00, NULL, NULL);
INSERT INTO `gia_theo_khung_gio` VALUES (13, 1, '21:00-22:00', NULL, 340000.00, NULL, NULL);
INSERT INTO `gia_theo_khung_gio` VALUES (14, 1, '22:00-23:00', NULL, 360000.00, NULL, NULL);
INSERT INTO `gia_theo_khung_gio` VALUES (15, 1, '23:00-24:00', NULL, 360000.00, NULL, NULL);
INSERT INTO `gia_theo_khung_gio` VALUES (16, 1, '10:00-11:00', NULL, 250000.00, NULL, NULL);

-- ----------------------------
-- Table structure for loai_dich_vu
-- ----------------------------
DROP TABLE IF EXISTS `loai_dich_vu`;
CREATE TABLE `loai_dich_vu`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ma_dv` int(11) NOT NULL,
  `ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ma_dv`(`ma_dv`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of loai_dich_vu
-- ----------------------------
INSERT INTO `loai_dich_vu` VALUES (1, 1, 'Nước khoáng', NULL, NULL);
INSERT INTO `loai_dich_vu` VALUES (2, 2, 'Nước lọc', NULL, NULL);
INSERT INTO `loai_dich_vu` VALUES (3, 3, 'Nước chanh muối', NULL, NULL);

-- ----------------------------
-- Table structure for loai_san
-- ----------------------------
DROP TABLE IF EXISTS `loai_san`;
CREATE TABLE `loai_san`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_luong_nguoi_da` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_san` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ma_san`(`ma_san`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of loai_san
-- ----------------------------
INSERT INTO `loai_san` VALUES (1, 'Sân 5', '5 người', 1, NULL, NULL);
INSERT INTO `loai_san` VALUES (2, 'Sân 7', '7 người', 2, NULL, NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2024_03_02_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2024_03_02_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2024_03_05_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2024_03_07_021307_create_quyen_table', 1);
INSERT INTO `migrations` VALUES (5, '2024_03_07_021504_create_quidinh_table', 1);
INSERT INTO `migrations` VALUES (6, '2024_03_07_021544_create_taikhoan_table', 1);
INSERT INTO `migrations` VALUES (7, '2024_03_07_021615_create_loaisan_table', 1);
INSERT INTO `migrations` VALUES (8, '2024_03_07_021636_create_san_table', 1);
INSERT INTO `migrations` VALUES (9, '2024_03_07_021702_create_dichvu_table', 1);
INSERT INTO `migrations` VALUES (10, '2024_03_09_021844_create_loaidichvu_table', 1);
INSERT INTO `migrations` VALUES (11, '2024_03_09_022011_create_chitietdatsan_table', 1);
INSERT INTO `migrations` VALUES (12, '2024_03_16_030159_create_chitietdichvu_table', 1);
INSERT INTO `migrations` VALUES (13, '2024_03_16_030401_create_giatheokhunggio_table', 1);
INSERT INTO `migrations` VALUES (14, '2024_03_16_030751_create_trangthaidatsan_table', 1);
INSERT INTO `migrations` VALUES (15, '2024_03_16_030936_create_datsan_table', 1);
INSERT INTO `migrations` VALUES (16, '2024_03_28_032741_create_payments_table', 2);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for quyen
-- ----------------------------
DROP TABLE IF EXISTS `quyen`;
CREATE TABLE `quyen`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_quyen` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ma_quyen`(`ma_quyen`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of quyen
-- ----------------------------
INSERT INTO `quyen` VALUES (1, 'Quản lý', 0, NULL, NULL);
INSERT INTO `quyen` VALUES (2, 'Nhân viên', 1, NULL, NULL);
INSERT INTO `quyen` VALUES (3, 'Khách hàng', 2, NULL, NULL);

-- ----------------------------
-- Table structure for san
-- ----------------------------
DROP TABLE IF EXISTS `san`;
CREATE TABLE `san`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ma_loai_san` int(11) NOT NULL,
  `ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mo_ta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ma_loai_san`(`ma_loai_san`) USING BTREE,
  CONSTRAINT `ma_loai_san` FOREIGN KEY (`ma_loai_san`) REFERENCES `loai_san` (`ma_san`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of san
-- ----------------------------
INSERT INTO `san` VALUES (1, 1, 'Sân 5A', 'Sân 5A', NULL, NULL);
INSERT INTO `san` VALUES (3, 1, 'Sân 5B', '5B', NULL, NULL);
INSERT INTO `san` VALUES (4, 1, 'Sân 5C', '5C', NULL, NULL);
INSERT INTO `san` VALUES (5, 1, 'Sân 5D', '5D', NULL, NULL);
INSERT INTO `san` VALUES (6, 1, 'Sân 5E', '5E', NULL, NULL);

-- ----------------------------
-- Table structure for tai_khoan
-- ----------------------------
DROP TABLE IF EXISTS `tai_khoan`;
CREATE TABLE `tai_khoan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ngay_sinh` date NULL DEFAULT NULL,
  `dia_chi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sdt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioi_tinh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `quoc_tich` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ngay_lam_viec` date NULL DEFAULT NULL,
  `ma_quyen` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tai_khoan_email_unique`(`email`) USING BTREE,
  INDEX `ma_quyen`(`ma_quyen`) USING BTREE,
  CONSTRAINT `ma_quyen` FOREIGN KEY (`ma_quyen`) REFERENCES `quyen` (`ma_quyen`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tai_khoan
-- ----------------------------
INSERT INTO `tai_khoan` (`id`, `ten`, `email`, `password`, `ngay_sinh`, `dia_chi`, `sdt`, `gioi_tinh`, `quoc_tich`, `ngay_lam_viec`, `ma_quyen`, `created_at`, `updated_at`) VALUES
(23, 'Hồ Tấn Đạt', 'htdat@gmail.com', '$2y$10$sAkBLpDM2sR5wu30BrqBMuiJsD2K0ZoBcNbYQLpbb7OsPG7SeXMBm', NULL, NULL, '0877778819', NULL, NULL, NULL, 2, '2024-04-07 02:33:29', '2024-05-07 20:37:27'),
(25, 'Trần Quang Phú', 'tranquangphu29@gmail.com', '$2y$10$Hes.tJRBtxiJYa.SRffrJ.GepPilsDBQ2iKX6/RL3jagZf16CU42G', '1972-01-01', 'Da Nang', '0839641618', 'Nam', 'Viet Nam', NULL, 2, '2024-04-08 03:34:48', '2024-05-07 20:37:56'),
(29, 'Nguyễn Đức Huy', 'duochuy12345@gmail.com', '$2y$10$mqKX7olIxKOPmItoeKiuw./.44IeVbv009ba12SizhoHKSPjhb08G', '2002-01-13', 'Da Nang', '0889198108', 'Nam', 'Viet Nam', NULL, 2, '2024-04-10 06:45:49', '2024-05-07 20:37:01'),
(31, 'Admin', 'quanli@gmail.com', '$2y$10$f19Vug7Qp9fTAHMcxGUP2Ol6c/O5pRCjDnizh7iRB1j2r6YKv9J6y', NULL, NULL, '1022333', NULL, NULL, NULL, 0, '2024-04-25 05:21:56', '2024-05-07 20:39:22'),
(32, 'Phú Lê', 'quanlii@gmail.com', '$2y$10$PRoXyEWOONi1/sfUMmwAEOfCNt/75ViGU9ZWqnGytA3WvclX3mUem', NULL, NULL, '0126549796', NULL, NULL, NULL, 2, '2024-04-25 06:01:11', '2024-05-07 20:36:48'),
(34, 'Dương', 'nhanvienn@gmail.com', '$2y$10$LM3CYR.oDYc4y6NjBZDQluKmxFZAvhKaF.d1OjG51KxqTMeF3Plb.', NULL, 'Thừa Thiên Huế', '0123456789', NULL, 'Việt Nam', NULL, 1, '2024-04-25 06:02:24', '2024-05-07 20:26:59'),
(35, 'Dương', 'khachhang@gmail.com', '$2y$10$pQBGJ4FUbCapHUitlUSYQuuZhMYoIyOlI3g50GzHGX9WsE0rcUQ/u', NULL, NULL, '0123456789', NULL, NULL, NULL, 2, '2024-05-07 20:07:18', '2024-05-07 20:07:18'),

-- ----------------------------
-- Table structure for trang_thai_dat_san
-- ----------------------------
DROP TABLE IF EXISTS `trang_thai_dat_san`;
CREATE TABLE `trang_thai_dat_san`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ma_trang_thai` int(11) NOT NULL,
  `ten_trang_thai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ma_trang_thai`(`ma_trang_thai`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of trang_thai_dat_san
-- ----------------------------
INSERT INTO `trang_thai_dat_san` VALUES (2, 2, 'Đã đặt', NULL, NULL);
INSERT INTO `trang_thai_dat_san` VALUES (3, 3, 'Đã hủy', NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;

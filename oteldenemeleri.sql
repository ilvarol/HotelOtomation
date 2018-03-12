/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100128
 Source Host           : localhost:3306
 Source Schema         : oteldenemeleri

 Target Server Type    : MySQL
 Target Server Version : 100128
 File Encoding         : 65001

 Date: 29/01/2018 10:39:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for billing
-- ----------------------------
DROP TABLE IF EXISTS `billing`;
CREATE TABLE `billing`  (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  `room_id` int(11) NULL DEFAULT NULL,
  `total_amount` decimal(10, 2) NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`bill_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of billing
-- ----------------------------
INSERT INTO `billing` VALUES (1, 1, 2, 9, 1500.00, '2018-01-21 18:08:54');
INSERT INTO `billing` VALUES (2, 1, 3, 15, 2000.00, '2018-01-16 15:03:11');
INSERT INTO `billing` VALUES (3, 2, 4, 17, 700.00, '2018-01-11 15:03:18');
INSERT INTO `billing` VALUES (4, NULL, 7, 4, 0.20, '2018-01-22 18:00:02');
INSERT INTO `billing` VALUES (5, NULL, 3, 1, 2.00, '2018-01-22 18:01:35');
INSERT INTO `billing` VALUES (6, NULL, 9, 2, 10.00, '2018-01-22 18:02:22');
INSERT INTO `billing` VALUES (7, NULL, 9, 2, 5000.00, '2018-01-22 18:23:40');
INSERT INTO `billing` VALUES (8, NULL, 3, 2, 1000.00, '2018-01-22 18:25:35');
INSERT INTO `billing` VALUES (9, NULL, 4, 3, NULL, '2018-01-22 18:29:20');
INSERT INTO `billing` VALUES (10, NULL, 4, 3, 450.00, '2018-01-22 18:30:04');
INSERT INTO `billing` VALUES (11, NULL, 1, 1, 0.00, '2018-01-22 19:19:27');
INSERT INTO `billing` VALUES (12, NULL, 5, 1, 500.00, '2018-01-23 17:40:22');
INSERT INTO `billing` VALUES (13, NULL, 2, 2, 1000.00, '2018-01-23 17:58:03');
INSERT INTO `billing` VALUES (14, NULL, 3, 8, 250.00, '2018-01-23 19:17:57');

-- ----------------------------
-- Table structure for bookings
-- ----------------------------
DROP TABLE IF EXISTS `bookings`;
CREATE TABLE `bookings`  (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NULL DEFAULT NULL,
  `phone_number` char(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `start_date` datetime(0) NULL DEFAULT NULL,
  `due_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`booking_id`) USING BTREE,
  FULLTEXT INDEX `fulltext`(`phone_number`)
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bookings
-- ----------------------------
INSERT INTO `bookings` VALUES (16, 4, '05367656567', '2018-01-30 11:30:00', '2018-01-31 11:30:00');
INSERT INTO `bookings` VALUES (17, 5, '05435333747', '2018-01-30 11:32:00', '2018-01-31 11:33:00');
INSERT INTO `bookings` VALUES (18, 18, '05416278532', '2018-01-30 11:33:00', '2018-01-31 11:34:00');
INSERT INTO `bookings` VALUES (19, 18, '05439517075', '2018-01-23 03:58:00', '2018-01-26 03:59:00');

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities`  (
  `city_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`city_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES (1, 'ADANA');
INSERT INTO `cities` VALUES (2, 'ADIYAMAN');
INSERT INTO `cities` VALUES (3, 'AFYONKARAHİSAR');
INSERT INTO `cities` VALUES (4, 'AĞRI');
INSERT INTO `cities` VALUES (5, 'AMASYA');
INSERT INTO `cities` VALUES (6, 'ANKARA');
INSERT INTO `cities` VALUES (7, 'ANTALYA');
INSERT INTO `cities` VALUES (8, 'ARTVİN');
INSERT INTO `cities` VALUES (9, 'AYDIN');
INSERT INTO `cities` VALUES (10, 'BALIKESİR');
INSERT INTO `cities` VALUES (11, 'BİLECİK');
INSERT INTO `cities` VALUES (12, 'BİNGÖL');
INSERT INTO `cities` VALUES (13, 'BİTLİS');
INSERT INTO `cities` VALUES (14, 'BOLU');
INSERT INTO `cities` VALUES (15, 'BURDUR');
INSERT INTO `cities` VALUES (16, 'BURSA');
INSERT INTO `cities` VALUES (17, 'ÇANAKKALE');
INSERT INTO `cities` VALUES (18, 'ÇANKIRI');
INSERT INTO `cities` VALUES (19, 'ÇORUM');
INSERT INTO `cities` VALUES (20, 'DENİZLİ');
INSERT INTO `cities` VALUES (21, 'DİYARBAKIR');
INSERT INTO `cities` VALUES (22, 'EDİRNE');
INSERT INTO `cities` VALUES (23, 'ELAZIĞ');
INSERT INTO `cities` VALUES (24, 'ERZİNCAN');
INSERT INTO `cities` VALUES (25, 'ERZURUM');
INSERT INTO `cities` VALUES (26, 'ESKİŞEHİR');
INSERT INTO `cities` VALUES (27, 'GAZİANTEP');
INSERT INTO `cities` VALUES (28, 'GİRESUN');
INSERT INTO `cities` VALUES (29, 'MUŞ');
INSERT INTO `cities` VALUES (30, 'HAKKARİ');
INSERT INTO `cities` VALUES (31, 'HATAY');
INSERT INTO `cities` VALUES (32, 'ISPARTA');
INSERT INTO `cities` VALUES (33, 'MERSİN');
INSERT INTO `cities` VALUES (34, 'İSTANBUL');
INSERT INTO `cities` VALUES (35, 'İZMİR');
INSERT INTO `cities` VALUES (36, 'KARS');
INSERT INTO `cities` VALUES (37, 'KASTAMONU');
INSERT INTO `cities` VALUES (38, 'KAYSERİ');
INSERT INTO `cities` VALUES (39, 'KIRKLARELİ');
INSERT INTO `cities` VALUES (40, 'KIRŞEHİR');
INSERT INTO `cities` VALUES (41, 'KOCAELİ');
INSERT INTO `cities` VALUES (42, 'KONYA');
INSERT INTO `cities` VALUES (43, 'KÜTAHYA');
INSERT INTO `cities` VALUES (44, 'MALATYA');
INSERT INTO `cities` VALUES (45, 'MANİSA');
INSERT INTO `cities` VALUES (46, 'KAHRAMANMARAŞ');
INSERT INTO `cities` VALUES (47, 'MARDİN');
INSERT INTO `cities` VALUES (48, 'MUĞLA');
INSERT INTO `cities` VALUES (49, 'Muş');
INSERT INTO `cities` VALUES (50, 'NEVŞEHİR');
INSERT INTO `cities` VALUES (51, 'NİĞDE');
INSERT INTO `cities` VALUES (52, 'ORDU');
INSERT INTO `cities` VALUES (53, 'RİZE');
INSERT INTO `cities` VALUES (54, 'SAKARYA');
INSERT INTO `cities` VALUES (55, 'SAMSUN');
INSERT INTO `cities` VALUES (56, 'SİİRT');
INSERT INTO `cities` VALUES (57, 'SİNOP');
INSERT INTO `cities` VALUES (58, 'SİVAS');
INSERT INTO `cities` VALUES (59, 'TEKİRDAĞ');
INSERT INTO `cities` VALUES (60, 'TOKAT');
INSERT INTO `cities` VALUES (61, 'TRABZON');
INSERT INTO `cities` VALUES (62, 'TUNCELİ');
INSERT INTO `cities` VALUES (63, 'ŞANLIURFA');
INSERT INTO `cities` VALUES (64, 'UŞAK');
INSERT INTO `cities` VALUES (65, 'VAN');
INSERT INTO `cities` VALUES (66, 'YOZGAT');
INSERT INTO `cities` VALUES (67, 'ZONGULDAK');
INSERT INTO `cities` VALUES (68, 'AKSARAY');
INSERT INTO `cities` VALUES (69, 'BAYBURT');
INSERT INTO `cities` VALUES (70, 'KARAMAN');
INSERT INTO `cities` VALUES (71, 'KIRIKKALE');
INSERT INTO `cities` VALUES (72, 'BATMAN');
INSERT INTO `cities` VALUES (73, 'ŞIRNAK');
INSERT INTO `cities` VALUES (74, 'BARTIN');
INSERT INTO `cities` VALUES (75, 'ARDAHAN');
INSERT INTO `cities` VALUES (76, 'IĞDIR');
INSERT INTO `cities` VALUES (77, 'YALOVA');
INSERT INTO `cities` VALUES (78, 'KARABÜK');
INSERT INTO `cities` VALUES (79, 'KİLİS');
INSERT INTO `cities` VALUES (80, 'OSMANİYE');
INSERT INTO `cities` VALUES (81, 'DÜZCE');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `identity_number` char(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL COMMENT 'unique',
  `phone_number` char(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL COMMENT 'unique',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL COMMENT 'unique',
  `town_id` int(11) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `customer_state` char(1) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE,
  UNIQUE INDEX `identity`(`identity_number`, `phone_number`, `email`) USING BTREE,
  FULLTEXT INDEX `FullTextIndex`(`first_name`, `last_name`, `identity_number`, `phone_number`, `email`)
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (1, 'ilyas', 'varol', '20562818146', '05324663436', 'ilyas@gmail.com', 1, 'yeni mahalles hasim belin bulvarı no 32/1 kat 4', '1');
INSERT INTO `customers` VALUES (2, 'suleyman', 'kurucay', '46739139014', '05552784421', 'suleymankurucay@gmail.com', 1, 'doktorlar caddesi yenişehir mahallesi no/20', '1');
INSERT INTO `customers` VALUES (3, 'mehmet', 'karasurmeli', '44155230532', '05432937563', 'm.ali@gmail.com', 387, 'doktorlar caddesi no/22', '1');
INSERT INTO `customers` VALUES (4, 'sema', 'bilgin', '52532682312', '05327268594', 'semabilgin@gmail.com', 1, 'derya sokak no1/2', '1');
INSERT INTO `customers` VALUES (5, 'ali', 'satar', '18938532616', '05376362735', 'ali_satar@gmail.com', 46, 'özçınar sokak dumankaya sitesi', '0');
INSERT INTO `customers` VALUES (6, 'zeynep', 'çınar', '20153437646', '05316426119', 'cinar.zeynep@gmail.com', 1, 'hamur caddesi cendere sokak no/11', '1');
INSERT INTO `customers` VALUES (7, 'ali', 'kavuncu', '20146828724', '05412211156', 'kavuncu@gmail.com', 1, 'araklı caddesi no/79', '0');
INSERT INTO `customers` VALUES (9, 'ramazan', 'keskin', '52463147862', '05427623364', 'ramazan_keskin.56@gmail.com', 963, 'akcakoca mahallesi silivri cadesi no/96', '1');
INSERT INTO `customers` VALUES (10, 'fatma', 'rüzgar', '43851062918', '05354286725', 'fatmar@gmail.com', 1, 'mimar sinan caddesi zekeriya sokak no/15', '1');
INSERT INTO `customers` VALUES (11, 'Necati', 'Türkoğlu', '28593225084', '05317637886', 'turkoglu_n@gmail.com', 65, 'fevzipaşa mahallesi \nyenidoğan sokak no/12', '1');

-- ----------------------------
-- Table structure for hosting_customers
-- ----------------------------
DROP TABLE IF EXISTS `hosting_customers`;
CREATE TABLE `hosting_customers`  (
  `host_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NULL DEFAULT NULL,
  `room_id` int(11) NULL DEFAULT NULL,
  `enter_date` datetime(0) NULL DEFAULT NULL,
  `exit_date` datetime(0) NULL DEFAULT NULL,
  `sale_percent` int(2) NULL DEFAULT NULL,
  `host_state` char(1) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`host_id`) USING BTREE,
  INDEX `customerId`(`customer_id`) USING BTREE,
  CONSTRAINT `customerId` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hosting_customers
-- ----------------------------
INSERT INTO `hosting_customers` VALUES (2, 2, 2, '2018-01-10 22:45:52', '2018-01-12 00:49:19', 0, '0');
INSERT INTO `hosting_customers` VALUES (3, 3, 8, '2018-01-10 22:48:22', '2018-01-11 19:08:30', 0, '0');
INSERT INTO `hosting_customers` VALUES (4, 4, 11, '2018-01-10 22:49:06', '2018-01-17 22:51:35', 10, '0');
INSERT INTO `hosting_customers` VALUES (5, 5, 5, '2018-01-10 23:01:27', '2018-01-10 23:03:38', 5, '0');
INSERT INTO `hosting_customers` VALUES (6, 1, 6, '2018-01-10 23:12:32', '2018-01-10 23:24:14', 5, '0');
INSERT INTO `hosting_customers` VALUES (7, 4, 7, '2018-01-10 23:18:25', '2018-01-10 23:24:44', 0, '0');
INSERT INTO `hosting_customers` VALUES (8, 7, 7, '2018-01-10 23:25:18', '2018-01-10 23:35:47', 0, '0');
INSERT INTO `hosting_customers` VALUES (9, 3, 31, '2018-01-10 23:27:02', '2018-01-10 23:27:13', 20, '0');
INSERT INTO `hosting_customers` VALUES (10, 5, 1, '2018-01-10 23:33:22', '2018-01-25 23:35:02', 12, '0');
INSERT INTO `hosting_customers` VALUES (11, 3, 1, '2018-01-10 23:36:47', '2018-01-10 23:37:15', 12, '0');
INSERT INTO `hosting_customers` VALUES (12, 4, 6, '2018-01-10 23:36:57', '2018-01-10 23:37:15', 15, '0');
INSERT INTO `hosting_customers` VALUES (14, 3, 8, '2018-01-11 12:49:45', '2018-01-11 12:49:50', 30, '0');
INSERT INTO `hosting_customers` VALUES (15, 10, 10, '2018-02-01 12:50:26', '2018-03-01 12:51:14', 50, '0');
INSERT INTO `hosting_customers` VALUES (25, 2, 1, '2018-01-21 15:11:49', '2018-01-21 23:47:01', 23, '0');
INSERT INTO `hosting_customers` VALUES (26, 9, 2, '2018-01-21 15:12:06', '2018-01-31 18:01:59', 25, '0');
INSERT INTO `hosting_customers` VALUES (27, 4, 3, '2019-02-01 15:12:13', '2019-02-03 18:29:43', 10, '1');
INSERT INTO `hosting_customers` VALUES (28, 7, 4, '2018-01-21 15:12:21', '2018-01-23 17:59:53', 10, '1');
INSERT INTO `hosting_customers` VALUES (30, 6, 9, '2018-01-21 17:42:44', '2018-01-23 18:07:33', 10, '0');
INSERT INTO `hosting_customers` VALUES (31, 3, 2, '2018-01-21 23:05:44', '2018-01-23 18:25:30', 15, '1');
INSERT INTO `hosting_customers` VALUES (32, 2, 1, '2018-01-21 23:47:45', '2018-01-22 15:49:48', 10, '0');
INSERT INTO `hosting_customers` VALUES (33, 2, 1, '2018-01-22 15:49:40', '2018-01-22 15:49:48', 0, '0');
INSERT INTO `hosting_customers` VALUES (34, 4, 1, '2018-01-22 15:50:23', '2018-01-22 15:50:52', 0, '0');
INSERT INTO `hosting_customers` VALUES (35, 3, 1, '2018-01-22 15:51:13', '2018-01-24 18:01:27', 0, '1');
INSERT INTO `hosting_customers` VALUES (36, 1, 1, '2018-01-22 19:18:27', '2018-01-22 23:19:15', 10, '1');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (1, 'mini bar');
INSERT INTO `item` VALUES (2, 'kahve makinesi');
INSERT INTO `item` VALUES (3, 'Televizyon');
INSERT INTO `item` VALUES (4, 'Kurutma makinesi');
INSERT INTO `item` VALUES (5, 'Telefon');
INSERT INTO `item` VALUES (6, 'Oyun konsolu');
INSERT INTO `item` VALUES (8, 'LCD TV');
INSERT INTO `item` VALUES (10, 'Süs Bitkisi');
INSERT INTO `item` VALUES (11, 'Dinlenme Koltuğu');
INSERT INTO `item` VALUES (12, 'Klima');
INSERT INTO `item` VALUES (16, 'çelik kasa');

-- ----------------------------
-- Table structure for reports
-- ----------------------------
DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports`  (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `login_date` datetime(0) NULL DEFAULT NULL,
  `logout_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`report_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL COMMENT 'unique',
  `type_id` int(11) NULL DEFAULT NULL,
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`room_id`) USING BTREE,
  UNIQUE INDEX `number`(`number`) USING BTREE,
  FULLTEXT INDEX `fullText`(`number`)
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (1, '101', 1, '4');
INSERT INTO `room` VALUES (2, '102', 1, '4');
INSERT INTO `room` VALUES (3, '103', 2, '1');
INSERT INTO `room` VALUES (4, '104', 1, '1');
INSERT INTO `room` VALUES (5, '105', 1, '4');
INSERT INTO `room` VALUES (6, '106', 1, '4');
INSERT INTO `room` VALUES (7, '107', 2, '4');
INSERT INTO `room` VALUES (8, '108', 2, '4');
INSERT INTO `room` VALUES (9, '109', 2, '4');
INSERT INTO `room` VALUES (10, '110', 3, '4');
INSERT INTO `room` VALUES (11, '111', 3, '4');
INSERT INTO `room` VALUES (12, '112', 3, '3');
INSERT INTO `room` VALUES (13, '113', 3, '3');
INSERT INTO `room` VALUES (14, '114', 3, '3');
INSERT INTO `room` VALUES (15, '115', 2, '3');
INSERT INTO `room` VALUES (16, '116', 3, '3');
INSERT INTO `room` VALUES (17, '117', 2, '3');
INSERT INTO `room` VALUES (18, '118', 1, '3');
INSERT INTO `room` VALUES (19, '119', 1, '3');
INSERT INTO `room` VALUES (20, '120', 1, '3');
INSERT INTO `room` VALUES (21, '121', 2, '3');
INSERT INTO `room` VALUES (22, '122', 1, '3');
INSERT INTO `room` VALUES (23, '123', 2, '3');
INSERT INTO `room` VALUES (24, '124', 3, '3');
INSERT INTO `room` VALUES (25, '125', 1, '3');
INSERT INTO `room` VALUES (26, '126', 2, '3');
INSERT INTO `room` VALUES (27, '127', 3, '3');
INSERT INTO `room` VALUES (28, '128', 1, '3');
INSERT INTO `room` VALUES (29, '129', 3, '3');
INSERT INTO `room` VALUES (30, '130', 2, '3');
INSERT INTO `room` VALUES (31, '131', 2, '4');
INSERT INTO `room` VALUES (32, '132', 2, '3');
INSERT INTO `room` VALUES (33, '133', 2, '3');
INSERT INTO `room` VALUES (65, '134', 1, '3');
INSERT INTO `room` VALUES (66, '135', 3, '3');
INSERT INTO `room` VALUES (67, '136', 5, '3');
INSERT INTO `room` VALUES (68, '137', 5, '3');
INSERT INTO `room` VALUES (69, '138', 3, '3');
INSERT INTO `room` VALUES (71, '164', 7, '3');

-- ----------------------------
-- Table structure for room_item
-- ----------------------------
DROP TABLE IF EXISTS `room_item`;
CREATE TABLE `room_item`  (
  `room_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NULL DEFAULT NULL,
  `item_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`room_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of room_item
-- ----------------------------
INSERT INTO `room_item` VALUES (1, 1, 1);
INSERT INTO `room_item` VALUES (2, 2, 1);
INSERT INTO `room_item` VALUES (3, 4, 1);
INSERT INTO `room_item` VALUES (4, 4, 2);
INSERT INTO `room_item` VALUES (5, 1, 2);
INSERT INTO `room_item` VALUES (6, 2, 2);
INSERT INTO `room_item` VALUES (7, 3, 2);
INSERT INTO `room_item` VALUES (8, 1, 3);
INSERT INTO `room_item` VALUES (9, 4, 3);
INSERT INTO `room_item` VALUES (10, 1, 4);
INSERT INTO `room_item` VALUES (11, 2, 4);
INSERT INTO `room_item` VALUES (12, 4, 4);
INSERT INTO `room_item` VALUES (13, 65, 1);
INSERT INTO `room_item` VALUES (14, 65, 2);
INSERT INTO `room_item` VALUES (15, 65, 6);
INSERT INTO `room_item` VALUES (16, 66, 1);
INSERT INTO `room_item` VALUES (17, 66, 2);
INSERT INTO `room_item` VALUES (18, 66, 3);
INSERT INTO `room_item` VALUES (19, 66, 4);
INSERT INTO `room_item` VALUES (20, 66, 5);
INSERT INTO `room_item` VALUES (21, 66, 6);
INSERT INTO `room_item` VALUES (23, 67, 1);
INSERT INTO `room_item` VALUES (24, 67, 2);
INSERT INTO `room_item` VALUES (25, 67, 3);
INSERT INTO `room_item` VALUES (26, 67, 4);
INSERT INTO `room_item` VALUES (28, 68, 1);
INSERT INTO `room_item` VALUES (29, 68, 2);
INSERT INTO `room_item` VALUES (30, 68, 3);
INSERT INTO `room_item` VALUES (31, 68, 4);
INSERT INTO `room_item` VALUES (32, 68, 5);
INSERT INTO `room_item` VALUES (34, 69, 8);
INSERT INTO `room_item` VALUES (36, 70, 1);
INSERT INTO `room_item` VALUES (37, 70, 2);
INSERT INTO `room_item` VALUES (38, 70, 8);
INSERT INTO `room_item` VALUES (40, 71, 1);
INSERT INTO `room_item` VALUES (41, 71, 2);
INSERT INTO `room_item` VALUES (42, 71, 3);
INSERT INTO `room_item` VALUES (43, 71, 8);
INSERT INTO `room_item` VALUES (44, 71, 16);

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `identity_number` char(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL COMMENT 'unique',
  `phone_number` char(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL COMMENT 'unique',
  `staff_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `start_date` datetime(0) NULL DEFAULT NULL,
  `quit_date` datetime(0) NULL DEFAULT NULL,
  `salary` decimal(10, 2) NULL DEFAULT NULL,
  `town_id` int(11) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `staff_state` char(1) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`staff_id`) USING BTREE,
  UNIQUE INDEX `identity`(`identity_number`, `phone_number`) USING BTREE,
  FULLTEXT INDEX `fulltextIndex`(`first_name`, `last_name`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES (1, 'fatma', 'Arık', '12345678904', '05444647532', 'Resepsiyonist', '2018-01-20 15:35:48', NULL, 3000.00, 603, '', '1');
INSERT INTO `staff` VALUES (2, 'sema', 'bilgin', '12744678922', '05327263285', 'Resepsiyonist', '2018-01-20 15:45:22', NULL, 4200.00, 426, '', '1');
INSERT INTO `staff` VALUES (3, 'mali', 'kara', '15445678982', '05554367891', 'Bellboy', '2018-01-20 15:47:51', NULL, 2000.00, 245, '', '1');
INSERT INTO `staff` VALUES (4, 'suleyman', 'akarçay', '15445644254', '05424362466', 'Müdür', '2016-04-06 15:28:32', NULL, 5000.00, 4, NULL, '1');

-- ----------------------------
-- Table structure for towns
-- ----------------------------
DROP TABLE IF EXISTS `towns`;
CREATE TABLE `towns`  (
  `town_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`town_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 971 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of towns
-- ----------------------------
INSERT INTO `towns` VALUES (1, 1, 'ALADAĞ');
INSERT INTO `towns` VALUES (2, 1, 'CEYHAN');
INSERT INTO `towns` VALUES (3, 1, 'ÇUKUROVA');
INSERT INTO `towns` VALUES (4, 1, 'FEKE');
INSERT INTO `towns` VALUES (5, 1, 'İMAMOĞLU');
INSERT INTO `towns` VALUES (6, 1, 'KARAİSALI');
INSERT INTO `towns` VALUES (7, 1, 'KARATAŞ');
INSERT INTO `towns` VALUES (8, 1, 'KOZAN');
INSERT INTO `towns` VALUES (9, 1, 'POZANTI');
INSERT INTO `towns` VALUES (10, 1, 'SAİMBEYLİ');
INSERT INTO `towns` VALUES (11, 1, 'SARIÇAM');
INSERT INTO `towns` VALUES (12, 1, 'SEYHAN');
INSERT INTO `towns` VALUES (13, 1, 'TUFANBEYLİ');
INSERT INTO `towns` VALUES (14, 1, 'YUMURTALIK');
INSERT INTO `towns` VALUES (15, 1, 'YÜREĞİR');
INSERT INTO `towns` VALUES (16, 2, 'BESNİ');
INSERT INTO `towns` VALUES (17, 2, 'ÇELİKHAN');
INSERT INTO `towns` VALUES (18, 2, 'GERGER');
INSERT INTO `towns` VALUES (19, 2, 'GÖLBAŞI');
INSERT INTO `towns` VALUES (20, 2, 'KAHTA');
INSERT INTO `towns` VALUES (21, 2, 'MERKEZ');
INSERT INTO `towns` VALUES (22, 2, 'SAMSAT');
INSERT INTO `towns` VALUES (23, 2, 'SİNCİK');
INSERT INTO `towns` VALUES (24, 2, 'TUT');
INSERT INTO `towns` VALUES (25, 3, 'BAŞMAKÇI');
INSERT INTO `towns` VALUES (26, 3, 'BAYAT');
INSERT INTO `towns` VALUES (27, 3, 'BOLVADİN');
INSERT INTO `towns` VALUES (28, 3, 'ÇAY');
INSERT INTO `towns` VALUES (29, 3, 'ÇOBANLAR');
INSERT INTO `towns` VALUES (30, 3, 'DAZKIRI');
INSERT INTO `towns` VALUES (31, 3, 'DİNAR');
INSERT INTO `towns` VALUES (32, 3, 'EMİRDAĞ');
INSERT INTO `towns` VALUES (33, 3, 'EVCİLER');
INSERT INTO `towns` VALUES (34, 3, 'HOCALAR');
INSERT INTO `towns` VALUES (35, 3, 'İHSANİYE');
INSERT INTO `towns` VALUES (36, 3, 'İSCEHİSAR');
INSERT INTO `towns` VALUES (37, 3, 'KIZILÖREN');
INSERT INTO `towns` VALUES (38, 3, 'MERKEZ');
INSERT INTO `towns` VALUES (39, 3, 'SANDIKLI');
INSERT INTO `towns` VALUES (40, 3, 'SİNANPAŞA');
INSERT INTO `towns` VALUES (41, 3, 'SULTANDAĞI');
INSERT INTO `towns` VALUES (42, 3, 'ŞUHUT');
INSERT INTO `towns` VALUES (43, 4, 'DİYADİN');
INSERT INTO `towns` VALUES (44, 4, 'DOĞUBAYAZIT');
INSERT INTO `towns` VALUES (45, 4, 'ELEŞKİRT');
INSERT INTO `towns` VALUES (46, 4, 'HAMUR');
INSERT INTO `towns` VALUES (47, 4, 'MERKEZ');
INSERT INTO `towns` VALUES (48, 4, 'PATNOS');
INSERT INTO `towns` VALUES (49, 4, 'TAŞLIÇAY');
INSERT INTO `towns` VALUES (50, 4, 'TUTAK');
INSERT INTO `towns` VALUES (51, 5, 'GÖYNÜCEK');
INSERT INTO `towns` VALUES (52, 5, 'GÜMÜŞHACIKÖY');
INSERT INTO `towns` VALUES (53, 5, 'HAMAMÖZÜ');
INSERT INTO `towns` VALUES (54, 5, 'MERKEZ');
INSERT INTO `towns` VALUES (55, 5, 'MERZİFON');
INSERT INTO `towns` VALUES (56, 5, 'SULUOVA');
INSERT INTO `towns` VALUES (57, 5, 'TAŞOVA');
INSERT INTO `towns` VALUES (58, 6, 'AKYURT');
INSERT INTO `towns` VALUES (59, 6, 'ALTINDAĞ');
INSERT INTO `towns` VALUES (60, 6, 'AYAŞ');
INSERT INTO `towns` VALUES (61, 6, 'BALA');
INSERT INTO `towns` VALUES (62, 6, 'BEYPAZARI');
INSERT INTO `towns` VALUES (63, 6, 'ÇAMLIDERE');
INSERT INTO `towns` VALUES (64, 6, 'ÇANKAYA');
INSERT INTO `towns` VALUES (65, 6, 'ÇUBUK');
INSERT INTO `towns` VALUES (66, 6, 'ELMADAĞ');
INSERT INTO `towns` VALUES (67, 6, 'ETİMESGUT');
INSERT INTO `towns` VALUES (68, 6, 'EVREN');
INSERT INTO `towns` VALUES (69, 6, 'GÖLBAŞI');
INSERT INTO `towns` VALUES (70, 6, 'GÜDÜL');
INSERT INTO `towns` VALUES (71, 6, 'HAYMANA');
INSERT INTO `towns` VALUES (72, 6, 'KALECİK');
INSERT INTO `towns` VALUES (73, 6, 'KAZAN');
INSERT INTO `towns` VALUES (74, 6, 'KEÇİÖREN');
INSERT INTO `towns` VALUES (75, 6, 'KIZILCAHAMAM');
INSERT INTO `towns` VALUES (76, 6, 'MAMAK');
INSERT INTO `towns` VALUES (77, 6, 'NALLIHAN');
INSERT INTO `towns` VALUES (78, 6, 'POLATLI');
INSERT INTO `towns` VALUES (79, 6, 'PURSAKLAR');
INSERT INTO `towns` VALUES (80, 6, 'SİNCAN');
INSERT INTO `towns` VALUES (81, 6, 'ŞEREFLİKOÇHİSAR');
INSERT INTO `towns` VALUES (82, 6, 'YENİMAHALLE');
INSERT INTO `towns` VALUES (83, 7, 'AKSEKİ');
INSERT INTO `towns` VALUES (84, 7, 'AKSU');
INSERT INTO `towns` VALUES (85, 7, 'ALANYA');
INSERT INTO `towns` VALUES (86, 7, 'DEMRE');
INSERT INTO `towns` VALUES (87, 7, 'DÖŞEMEALTI');
INSERT INTO `towns` VALUES (88, 7, 'ELMALI');
INSERT INTO `towns` VALUES (89, 7, 'FİNİKE');
INSERT INTO `towns` VALUES (90, 7, 'GAZİPAŞA');
INSERT INTO `towns` VALUES (91, 7, 'GÜNDOĞMUŞ');
INSERT INTO `towns` VALUES (92, 7, 'İBRADI');
INSERT INTO `towns` VALUES (93, 7, 'KAŞ');
INSERT INTO `towns` VALUES (94, 7, 'KEMER');
INSERT INTO `towns` VALUES (95, 7, 'KEPEZ');
INSERT INTO `towns` VALUES (96, 7, 'KONYAALTI');
INSERT INTO `towns` VALUES (97, 7, 'KORKUTELİ');
INSERT INTO `towns` VALUES (98, 7, 'KUMLUCA');
INSERT INTO `towns` VALUES (99, 7, 'MANAVGAT');
INSERT INTO `towns` VALUES (100, 7, 'MURATPAŞA');
INSERT INTO `towns` VALUES (101, 7, 'SERİK');
INSERT INTO `towns` VALUES (102, 8, 'ARDANUÇ');
INSERT INTO `towns` VALUES (103, 8, 'ARHAVİ');
INSERT INTO `towns` VALUES (104, 8, 'BORÇKA');
INSERT INTO `towns` VALUES (105, 8, 'HOPA');
INSERT INTO `towns` VALUES (106, 8, 'MERKEZ');
INSERT INTO `towns` VALUES (107, 8, 'MURGUL');
INSERT INTO `towns` VALUES (108, 8, 'ŞAVŞAT');
INSERT INTO `towns` VALUES (109, 8, 'YUSUFELİ');
INSERT INTO `towns` VALUES (110, 9, 'BOZDOĞAN');
INSERT INTO `towns` VALUES (111, 9, 'BUHARKENT');
INSERT INTO `towns` VALUES (112, 9, 'ÇİNE');
INSERT INTO `towns` VALUES (113, 9, 'DİDİM');
INSERT INTO `towns` VALUES (114, 9, 'EFELER');
INSERT INTO `towns` VALUES (115, 9, 'GERMENCİK');
INSERT INTO `towns` VALUES (116, 9, 'İNCİRLİOVA');
INSERT INTO `towns` VALUES (117, 9, 'KARACASU');
INSERT INTO `towns` VALUES (118, 9, 'KARPUZLU');
INSERT INTO `towns` VALUES (119, 9, 'KOÇARLI');
INSERT INTO `towns` VALUES (120, 9, 'KÖŞK');
INSERT INTO `towns` VALUES (121, 9, 'KUŞADASI');
INSERT INTO `towns` VALUES (122, 9, 'KUYUCAK');
INSERT INTO `towns` VALUES (123, 9, 'NAZİLLİ');
INSERT INTO `towns` VALUES (124, 9, 'SÖKE');
INSERT INTO `towns` VALUES (125, 9, 'SULTANHİSAR');
INSERT INTO `towns` VALUES (126, 9, 'YENİPAZAR');
INSERT INTO `towns` VALUES (127, 10, 'ALTIEYLÜL');
INSERT INTO `towns` VALUES (128, 10, 'AYVALIK');
INSERT INTO `towns` VALUES (129, 10, 'BALYA');
INSERT INTO `towns` VALUES (130, 10, 'BANDIRMA');
INSERT INTO `towns` VALUES (131, 10, 'BİGADİÇ');
INSERT INTO `towns` VALUES (132, 10, 'BURHANİYE');
INSERT INTO `towns` VALUES (133, 10, 'DURSUNBEY');
INSERT INTO `towns` VALUES (134, 10, 'EDREMİT');
INSERT INTO `towns` VALUES (135, 10, 'ERDEK');
INSERT INTO `towns` VALUES (136, 10, 'GÖMEÇ');
INSERT INTO `towns` VALUES (137, 10, 'GÖNEN');
INSERT INTO `towns` VALUES (138, 10, 'HAVRAN');
INSERT INTO `towns` VALUES (139, 10, 'İVRİNDİ');
INSERT INTO `towns` VALUES (140, 10, 'KARESİ');
INSERT INTO `towns` VALUES (141, 10, 'KEPSUT');
INSERT INTO `towns` VALUES (142, 10, 'MANYAS');
INSERT INTO `towns` VALUES (143, 10, 'MARMARA');
INSERT INTO `towns` VALUES (144, 10, 'SAVAŞTEPE');
INSERT INTO `towns` VALUES (145, 10, 'SINDIRGI');
INSERT INTO `towns` VALUES (146, 10, 'SUSURLUK');
INSERT INTO `towns` VALUES (147, 11, 'BOZÜYÜK');
INSERT INTO `towns` VALUES (148, 11, 'GÖLPAZARI');
INSERT INTO `towns` VALUES (149, 11, 'İNHİSAR');
INSERT INTO `towns` VALUES (150, 11, 'MERKEZ');
INSERT INTO `towns` VALUES (151, 11, 'OSMANELİ');
INSERT INTO `towns` VALUES (152, 11, 'PAZARYERİ');
INSERT INTO `towns` VALUES (153, 11, 'SÖĞÜT');
INSERT INTO `towns` VALUES (154, 11, 'YENİPAZAR');
INSERT INTO `towns` VALUES (155, 12, 'ADAKLI');
INSERT INTO `towns` VALUES (156, 12, 'GENÇ');
INSERT INTO `towns` VALUES (157, 12, 'KARLIOVA');
INSERT INTO `towns` VALUES (158, 12, 'KİĞI');
INSERT INTO `towns` VALUES (159, 12, 'MERKEZ');
INSERT INTO `towns` VALUES (160, 12, 'SOLHAN');
INSERT INTO `towns` VALUES (161, 12, 'YAYLADERE');
INSERT INTO `towns` VALUES (162, 12, 'YEDİSU');
INSERT INTO `towns` VALUES (163, 13, 'ADİLCEVAZ');
INSERT INTO `towns` VALUES (164, 13, 'AHLAT');
INSERT INTO `towns` VALUES (165, 13, 'GÜROYMAK');
INSERT INTO `towns` VALUES (166, 13, 'HİZAN');
INSERT INTO `towns` VALUES (167, 13, 'MERKEZ');
INSERT INTO `towns` VALUES (168, 13, 'MUTKİ');
INSERT INTO `towns` VALUES (169, 13, 'TATVAN');
INSERT INTO `towns` VALUES (170, 14, 'DÖRTDİVAN');
INSERT INTO `towns` VALUES (171, 14, 'GEREDE');
INSERT INTO `towns` VALUES (172, 14, 'GÖYNÜK');
INSERT INTO `towns` VALUES (173, 14, 'KIBRISCIK');
INSERT INTO `towns` VALUES (174, 14, 'MENGEN');
INSERT INTO `towns` VALUES (175, 14, 'MERKEZ');
INSERT INTO `towns` VALUES (176, 14, 'MUDURNU');
INSERT INTO `towns` VALUES (177, 14, 'SEBEN');
INSERT INTO `towns` VALUES (178, 14, 'YENİÇAĞA');
INSERT INTO `towns` VALUES (179, 15, 'AĞLASUN');
INSERT INTO `towns` VALUES (180, 15, 'ALTINYAYLA');
INSERT INTO `towns` VALUES (181, 15, 'BUCAK');
INSERT INTO `towns` VALUES (182, 15, 'ÇAVDIR');
INSERT INTO `towns` VALUES (183, 15, 'ÇELTİKÇİ');
INSERT INTO `towns` VALUES (184, 15, 'GÖLHİSAR');
INSERT INTO `towns` VALUES (185, 15, 'KARAMANLI');
INSERT INTO `towns` VALUES (186, 15, 'KEMER');
INSERT INTO `towns` VALUES (187, 15, 'MERKEZ');
INSERT INTO `towns` VALUES (188, 15, 'TEFENNİ');
INSERT INTO `towns` VALUES (189, 15, 'YEŞİLOVA');
INSERT INTO `towns` VALUES (190, 16, 'BÜYÜKORHAN');
INSERT INTO `towns` VALUES (191, 16, 'GEMLİK');
INSERT INTO `towns` VALUES (192, 16, 'GÜRSU');
INSERT INTO `towns` VALUES (193, 16, 'HARMANCIK');
INSERT INTO `towns` VALUES (194, 16, 'İNEGÖL');
INSERT INTO `towns` VALUES (195, 16, 'İZNİK');
INSERT INTO `towns` VALUES (196, 16, 'KARACABEY');
INSERT INTO `towns` VALUES (197, 16, 'KELES');
INSERT INTO `towns` VALUES (198, 16, 'KESTEL');
INSERT INTO `towns` VALUES (199, 16, 'MUDANYA');
INSERT INTO `towns` VALUES (200, 16, 'MUSTAFAKEMALPAŞA');
INSERT INTO `towns` VALUES (201, 16, 'NİLÜFER');
INSERT INTO `towns` VALUES (202, 16, 'ORHANELİ');
INSERT INTO `towns` VALUES (203, 16, 'ORHANGAZİ');
INSERT INTO `towns` VALUES (204, 16, 'OSMANGAZİ');
INSERT INTO `towns` VALUES (205, 16, 'YENİŞEHİR');
INSERT INTO `towns` VALUES (206, 16, 'YILDIRIM');
INSERT INTO `towns` VALUES (207, 17, 'AYVACIK');
INSERT INTO `towns` VALUES (208, 17, 'BAYRAMİÇ');
INSERT INTO `towns` VALUES (209, 17, 'BİGA');
INSERT INTO `towns` VALUES (210, 17, 'BOZCAADA');
INSERT INTO `towns` VALUES (211, 17, 'ÇAN');
INSERT INTO `towns` VALUES (212, 17, 'ECEABAT');
INSERT INTO `towns` VALUES (213, 17, 'EZİNE');
INSERT INTO `towns` VALUES (214, 17, 'GELİBOLU');
INSERT INTO `towns` VALUES (215, 17, 'GÖKÇEADA');
INSERT INTO `towns` VALUES (216, 17, 'LAPSEKİ');
INSERT INTO `towns` VALUES (217, 17, 'MERKEZ');
INSERT INTO `towns` VALUES (218, 17, 'YENİCE');
INSERT INTO `towns` VALUES (219, 18, 'ATKARACALAR');
INSERT INTO `towns` VALUES (220, 18, 'BAYRAMÖREN');
INSERT INTO `towns` VALUES (221, 18, 'ÇERKEŞ');
INSERT INTO `towns` VALUES (222, 18, 'ELDİVAN');
INSERT INTO `towns` VALUES (223, 18, 'ILGAZ');
INSERT INTO `towns` VALUES (224, 18, 'KIZILIRMAK');
INSERT INTO `towns` VALUES (225, 18, 'KORGUN');
INSERT INTO `towns` VALUES (226, 18, 'KURŞUNLU');
INSERT INTO `towns` VALUES (227, 18, 'MERKEZ');
INSERT INTO `towns` VALUES (228, 18, 'ORTA');
INSERT INTO `towns` VALUES (229, 18, 'ŞABANÖZÜ');
INSERT INTO `towns` VALUES (230, 18, 'YAPRAKLI');
INSERT INTO `towns` VALUES (231, 19, 'ALACA');
INSERT INTO `towns` VALUES (232, 19, 'BAYAT');
INSERT INTO `towns` VALUES (233, 19, 'BOĞAZKALE');
INSERT INTO `towns` VALUES (234, 19, 'DODURGA');
INSERT INTO `towns` VALUES (235, 19, 'İSKİLİP');
INSERT INTO `towns` VALUES (236, 19, 'KARGI');
INSERT INTO `towns` VALUES (237, 19, 'LAÇİN');
INSERT INTO `towns` VALUES (238, 19, 'MECİTÖZÜ');
INSERT INTO `towns` VALUES (239, 19, 'MERKEZ');
INSERT INTO `towns` VALUES (240, 19, 'OĞUZLAR');
INSERT INTO `towns` VALUES (241, 19, 'ORTAKÖY');
INSERT INTO `towns` VALUES (242, 19, 'OSMANCIK');
INSERT INTO `towns` VALUES (243, 19, 'SUNGURLU');
INSERT INTO `towns` VALUES (244, 19, 'UĞURLUDAĞ');
INSERT INTO `towns` VALUES (245, 20, 'ACIPAYAM');
INSERT INTO `towns` VALUES (246, 20, 'BABADAĞ');
INSERT INTO `towns` VALUES (247, 20, 'BAKLAN');
INSERT INTO `towns` VALUES (248, 20, 'BEKİLLİ');
INSERT INTO `towns` VALUES (249, 20, 'BEYAĞAÇ');
INSERT INTO `towns` VALUES (250, 20, 'BOZKURT');
INSERT INTO `towns` VALUES (251, 20, 'BULDAN');
INSERT INTO `towns` VALUES (252, 20, 'ÇAL');
INSERT INTO `towns` VALUES (253, 20, 'ÇAMELİ');
INSERT INTO `towns` VALUES (254, 20, 'ÇARDAK');
INSERT INTO `towns` VALUES (255, 20, 'ÇİVRİL');
INSERT INTO `towns` VALUES (256, 20, 'GÜNEY');
INSERT INTO `towns` VALUES (257, 20, 'HONAZ');
INSERT INTO `towns` VALUES (258, 20, 'KALE');
INSERT INTO `towns` VALUES (259, 20, 'MERKEZEFENDİ');
INSERT INTO `towns` VALUES (260, 20, 'PAMUKKALE');
INSERT INTO `towns` VALUES (261, 20, 'SARAYKÖY');
INSERT INTO `towns` VALUES (262, 20, 'SERİNHİSAR');
INSERT INTO `towns` VALUES (263, 20, 'TAVAS');
INSERT INTO `towns` VALUES (264, 21, 'BAĞLAR');
INSERT INTO `towns` VALUES (265, 21, 'BİSMİL');
INSERT INTO `towns` VALUES (266, 21, 'ÇERMİK');
INSERT INTO `towns` VALUES (267, 21, 'ÇINAR');
INSERT INTO `towns` VALUES (268, 21, 'ÇÜNGÜŞ');
INSERT INTO `towns` VALUES (269, 21, 'DİCLE');
INSERT INTO `towns` VALUES (270, 21, 'EĞİL');
INSERT INTO `towns` VALUES (271, 21, 'ERGANİ');
INSERT INTO `towns` VALUES (272, 21, 'HANİ');
INSERT INTO `towns` VALUES (273, 21, 'HAZRO');
INSERT INTO `towns` VALUES (274, 21, 'KAYAPINAR');
INSERT INTO `towns` VALUES (275, 21, 'KOCAKÖY');
INSERT INTO `towns` VALUES (276, 21, 'KULP');
INSERT INTO `towns` VALUES (277, 21, 'LİCE');
INSERT INTO `towns` VALUES (278, 21, 'SİLVAN');
INSERT INTO `towns` VALUES (279, 21, 'SUR');
INSERT INTO `towns` VALUES (280, 21, 'YENİŞEHİR');
INSERT INTO `towns` VALUES (281, 22, 'ENEZ');
INSERT INTO `towns` VALUES (282, 22, 'HAVSA');
INSERT INTO `towns` VALUES (283, 22, 'İPSALA');
INSERT INTO `towns` VALUES (284, 22, 'KEŞAN');
INSERT INTO `towns` VALUES (285, 22, 'LALAPAŞA');
INSERT INTO `towns` VALUES (286, 22, 'MERİÇ');
INSERT INTO `towns` VALUES (287, 22, 'MERKEZ');
INSERT INTO `towns` VALUES (288, 22, 'SÜLOĞLU');
INSERT INTO `towns` VALUES (289, 22, 'UZUNKÖPRÜ');
INSERT INTO `towns` VALUES (290, 23, 'AĞIN');
INSERT INTO `towns` VALUES (291, 23, 'ALACAKAYA');
INSERT INTO `towns` VALUES (292, 23, 'ARICAK');
INSERT INTO `towns` VALUES (293, 23, 'BASKİL');
INSERT INTO `towns` VALUES (294, 23, 'KARAKOÇAN');
INSERT INTO `towns` VALUES (295, 23, 'KEBAN');
INSERT INTO `towns` VALUES (296, 23, 'KOVANCILAR');
INSERT INTO `towns` VALUES (297, 23, 'MADEN');
INSERT INTO `towns` VALUES (298, 23, 'MERKEZ');
INSERT INTO `towns` VALUES (299, 23, 'PALU');
INSERT INTO `towns` VALUES (300, 23, 'SİVRİCE');
INSERT INTO `towns` VALUES (301, 24, 'ÇAYIRLI');
INSERT INTO `towns` VALUES (302, 24, 'İLİÇ');
INSERT INTO `towns` VALUES (303, 24, 'KEMAH');
INSERT INTO `towns` VALUES (304, 24, 'KEMALİYE');
INSERT INTO `towns` VALUES (305, 24, 'MERKEZ');
INSERT INTO `towns` VALUES (306, 24, 'OTLUKBELİ');
INSERT INTO `towns` VALUES (307, 24, 'REFAHİYE');
INSERT INTO `towns` VALUES (308, 24, 'TERCAN');
INSERT INTO `towns` VALUES (309, 24, 'ÜZÜMLÜ');
INSERT INTO `towns` VALUES (310, 25, 'AŞKALE');
INSERT INTO `towns` VALUES (311, 25, 'AZİZİYE');
INSERT INTO `towns` VALUES (312, 25, 'ÇAT');
INSERT INTO `towns` VALUES (313, 25, 'HINIS');
INSERT INTO `towns` VALUES (314, 25, 'HORASAN');
INSERT INTO `towns` VALUES (315, 25, 'İSPİR');
INSERT INTO `towns` VALUES (316, 25, 'KARAÇOBAN');
INSERT INTO `towns` VALUES (317, 25, 'KARAYAZI');
INSERT INTO `towns` VALUES (318, 25, 'KÖPRÜKÖY');
INSERT INTO `towns` VALUES (319, 25, 'NARMAN');
INSERT INTO `towns` VALUES (320, 25, 'OLTU');
INSERT INTO `towns` VALUES (321, 25, 'OLUR');
INSERT INTO `towns` VALUES (322, 25, 'PALANDÖKEN');
INSERT INTO `towns` VALUES (323, 25, 'PASİNLER');
INSERT INTO `towns` VALUES (324, 25, 'PAZARYOLU');
INSERT INTO `towns` VALUES (325, 25, 'ŞENKAYA');
INSERT INTO `towns` VALUES (326, 25, 'TEKMAN');
INSERT INTO `towns` VALUES (327, 25, 'TORTUM');
INSERT INTO `towns` VALUES (328, 25, 'UZUNDERE');
INSERT INTO `towns` VALUES (329, 25, 'YAKUTİYE');
INSERT INTO `towns` VALUES (330, 26, 'ALPU');
INSERT INTO `towns` VALUES (331, 26, 'BEYLİKOVA');
INSERT INTO `towns` VALUES (332, 26, 'ÇİFTELER');
INSERT INTO `towns` VALUES (333, 26, 'GÜNYÜZÜ');
INSERT INTO `towns` VALUES (334, 26, 'HAN');
INSERT INTO `towns` VALUES (335, 26, 'İNÖNÜ');
INSERT INTO `towns` VALUES (336, 26, 'MAHMUDİYE');
INSERT INTO `towns` VALUES (337, 26, 'MİHALGAZİ');
INSERT INTO `towns` VALUES (338, 26, 'MİHALIÇÇIK');
INSERT INTO `towns` VALUES (339, 26, 'ODUNPAZARI');
INSERT INTO `towns` VALUES (340, 26, 'SARICAKAYA');
INSERT INTO `towns` VALUES (341, 26, 'SEYİTGAZİ');
INSERT INTO `towns` VALUES (342, 26, 'SİVRİHİSAR');
INSERT INTO `towns` VALUES (343, 26, 'TEPEBAŞI');
INSERT INTO `towns` VALUES (344, 27, 'ARABAN');
INSERT INTO `towns` VALUES (345, 27, 'İSLAHİYE');
INSERT INTO `towns` VALUES (346, 27, 'KARKAMIŞ');
INSERT INTO `towns` VALUES (347, 27, 'NİZİP');
INSERT INTO `towns` VALUES (348, 27, 'NURDAĞI');
INSERT INTO `towns` VALUES (349, 27, 'OĞUZELİ');
INSERT INTO `towns` VALUES (350, 27, 'ŞAHİNBEY');
INSERT INTO `towns` VALUES (351, 27, 'ŞEHİTKAMİL');
INSERT INTO `towns` VALUES (352, 27, 'YAVUZELİ');
INSERT INTO `towns` VALUES (353, 28, 'ALUCRA');
INSERT INTO `towns` VALUES (354, 28, 'BULANCAK');
INSERT INTO `towns` VALUES (355, 28, 'ÇAMOLUK');
INSERT INTO `towns` VALUES (356, 28, 'ÇANAKÇI');
INSERT INTO `towns` VALUES (357, 28, 'DERELİ');
INSERT INTO `towns` VALUES (358, 28, 'DOĞANKENT');
INSERT INTO `towns` VALUES (359, 28, 'ESPİYE');
INSERT INTO `towns` VALUES (360, 28, 'EYNESİL');
INSERT INTO `towns` VALUES (361, 28, 'GÖRELE');
INSERT INTO `towns` VALUES (362, 28, 'GÜCE');
INSERT INTO `towns` VALUES (363, 28, 'KEŞAP');
INSERT INTO `towns` VALUES (364, 28, 'MERKEZ');
INSERT INTO `towns` VALUES (365, 28, 'PİRAZİZ');
INSERT INTO `towns` VALUES (366, 28, 'ŞEBİNKARAHİSAR');
INSERT INTO `towns` VALUES (367, 28, 'TİREBOLU');
INSERT INTO `towns` VALUES (368, 28, 'YAĞLIDERE');
INSERT INTO `towns` VALUES (369, 29, 'BULANIK');
INSERT INTO `towns` VALUES (370, 29, 'HASKÖY');
INSERT INTO `towns` VALUES (371, 29, 'KORKUT');
INSERT INTO `towns` VALUES (372, 29, 'MALAZGİRT');
INSERT INTO `towns` VALUES (373, 29, 'MERKEZ');
INSERT INTO `towns` VALUES (374, 29, 'VARTO');
INSERT INTO `towns` VALUES (375, 30, 'ÇUKURCA');
INSERT INTO `towns` VALUES (376, 30, 'MERKEZ');
INSERT INTO `towns` VALUES (377, 30, 'ŞEMDİNLİ');
INSERT INTO `towns` VALUES (378, 30, 'YÜKSEKOVA');
INSERT INTO `towns` VALUES (379, 31, 'ALTINÖZÜ');
INSERT INTO `towns` VALUES (380, 31, 'ANTAKYA');
INSERT INTO `towns` VALUES (381, 31, 'ARSUZ');
INSERT INTO `towns` VALUES (382, 31, 'BELEN');
INSERT INTO `towns` VALUES (383, 31, 'DEFNE');
INSERT INTO `towns` VALUES (384, 31, 'DÖRTYOL');
INSERT INTO `towns` VALUES (385, 31, 'ERZİN');
INSERT INTO `towns` VALUES (386, 31, 'HASSA');
INSERT INTO `towns` VALUES (387, 31, 'İSKENDERUN');
INSERT INTO `towns` VALUES (388, 31, 'KIRIKHAN');
INSERT INTO `towns` VALUES (389, 31, 'KUMLU');
INSERT INTO `towns` VALUES (390, 31, 'PAYAS');
INSERT INTO `towns` VALUES (391, 31, 'REYHANLI');
INSERT INTO `towns` VALUES (392, 31, 'SAMANDAĞ');
INSERT INTO `towns` VALUES (393, 31, 'YAYLADAĞI');
INSERT INTO `towns` VALUES (394, 32, 'AKSU');
INSERT INTO `towns` VALUES (395, 32, 'ATABEY');
INSERT INTO `towns` VALUES (396, 32, 'EĞİRDİR');
INSERT INTO `towns` VALUES (397, 32, 'GELENDOST');
INSERT INTO `towns` VALUES (398, 32, 'GÖNEN');
INSERT INTO `towns` VALUES (399, 32, 'KEÇİBORLU');
INSERT INTO `towns` VALUES (400, 32, 'MERKEZ');
INSERT INTO `towns` VALUES (401, 32, 'SENİRKENT');
INSERT INTO `towns` VALUES (402, 32, 'SÜTÇÜLER');
INSERT INTO `towns` VALUES (403, 32, 'ŞARKİKARAAĞAÇ');
INSERT INTO `towns` VALUES (404, 32, 'ULUBORLU');
INSERT INTO `towns` VALUES (405, 32, 'YALVAÇ');
INSERT INTO `towns` VALUES (406, 32, 'YENİŞARBADEMLİ');
INSERT INTO `towns` VALUES (407, 33, 'AKDENİZ');
INSERT INTO `towns` VALUES (408, 33, 'ANAMUR');
INSERT INTO `towns` VALUES (409, 33, 'AYDINCIK');
INSERT INTO `towns` VALUES (410, 33, 'BOZYAZI');
INSERT INTO `towns` VALUES (411, 33, 'ÇAMLIYAYLA');
INSERT INTO `towns` VALUES (412, 33, 'ERDEMLİ');
INSERT INTO `towns` VALUES (413, 33, 'GÜLNAR');
INSERT INTO `towns` VALUES (414, 33, 'MEZİTLİ');
INSERT INTO `towns` VALUES (415, 33, 'MUT');
INSERT INTO `towns` VALUES (416, 33, 'SİLİFKE');
INSERT INTO `towns` VALUES (417, 33, 'TARSUS');
INSERT INTO `towns` VALUES (418, 33, 'TOROSLAR');
INSERT INTO `towns` VALUES (419, 33, 'YENİŞEHİR');
INSERT INTO `towns` VALUES (420, 34, 'ADALAR');
INSERT INTO `towns` VALUES (421, 34, 'ARNAVUTKÖY');
INSERT INTO `towns` VALUES (422, 34, 'ATAŞEHİR');
INSERT INTO `towns` VALUES (423, 34, 'AVCILAR');
INSERT INTO `towns` VALUES (424, 34, 'BAĞCILAR');
INSERT INTO `towns` VALUES (425, 34, 'BAHÇELİEVLER');
INSERT INTO `towns` VALUES (426, 34, 'BAKIRKÖY');
INSERT INTO `towns` VALUES (427, 34, 'BAŞAKŞEHİR');
INSERT INTO `towns` VALUES (428, 34, 'BAYRAMPAŞA');
INSERT INTO `towns` VALUES (429, 34, 'BEŞİKTAŞ');
INSERT INTO `towns` VALUES (430, 34, 'BEYKOZ');
INSERT INTO `towns` VALUES (431, 34, 'BEYLİKDÜZÜ');
INSERT INTO `towns` VALUES (432, 34, 'BEYOĞLU');
INSERT INTO `towns` VALUES (433, 34, 'BÜYÜKÇEKMECE');
INSERT INTO `towns` VALUES (434, 34, 'ÇATALCA');
INSERT INTO `towns` VALUES (435, 34, 'ÇEKMEKÖY');
INSERT INTO `towns` VALUES (436, 34, 'ESENLER');
INSERT INTO `towns` VALUES (437, 34, 'ESENYURT');
INSERT INTO `towns` VALUES (438, 34, 'EYÜP');
INSERT INTO `towns` VALUES (439, 34, 'FATİH');
INSERT INTO `towns` VALUES (440, 34, 'GAZİOSMANPAŞA');
INSERT INTO `towns` VALUES (441, 34, 'GÜNGÖREN');
INSERT INTO `towns` VALUES (442, 34, 'KADIKÖY');
INSERT INTO `towns` VALUES (443, 34, 'KAĞITHANE');
INSERT INTO `towns` VALUES (444, 34, 'KARTAL');
INSERT INTO `towns` VALUES (445, 34, 'KÜÇÜKÇEKMECE');
INSERT INTO `towns` VALUES (446, 34, 'MALTEPE');
INSERT INTO `towns` VALUES (447, 34, 'PENDİK');
INSERT INTO `towns` VALUES (448, 34, 'SANCAKTEPE');
INSERT INTO `towns` VALUES (449, 34, 'SARIYER');
INSERT INTO `towns` VALUES (450, 34, 'SİLİVRİ');
INSERT INTO `towns` VALUES (451, 34, 'SULTANBEYLİ');
INSERT INTO `towns` VALUES (452, 34, 'SULTANGAZİ');
INSERT INTO `towns` VALUES (453, 34, 'ŞİLE');
INSERT INTO `towns` VALUES (454, 34, 'ŞİŞLİ');
INSERT INTO `towns` VALUES (455, 34, 'TUZLA');
INSERT INTO `towns` VALUES (456, 34, 'ÜMRANİYE');
INSERT INTO `towns` VALUES (457, 34, 'ÜSKÜDAR');
INSERT INTO `towns` VALUES (458, 34, 'ZEYTİNBURNU');
INSERT INTO `towns` VALUES (459, 35, 'ALİAĞA');
INSERT INTO `towns` VALUES (460, 35, 'BALÇOVA');
INSERT INTO `towns` VALUES (461, 35, 'BAYINDIR');
INSERT INTO `towns` VALUES (462, 35, 'BAYRAKLI');
INSERT INTO `towns` VALUES (463, 35, 'BERGAMA');
INSERT INTO `towns` VALUES (464, 35, 'BEYDAĞ');
INSERT INTO `towns` VALUES (465, 35, 'BORNOVA');
INSERT INTO `towns` VALUES (466, 35, 'BUCA');
INSERT INTO `towns` VALUES (467, 35, 'ÇEŞME');
INSERT INTO `towns` VALUES (468, 35, 'ÇİĞLİ');
INSERT INTO `towns` VALUES (469, 35, 'DİKİLİ');
INSERT INTO `towns` VALUES (470, 35, 'FOÇA');
INSERT INTO `towns` VALUES (471, 35, 'GAZİEMİR');
INSERT INTO `towns` VALUES (472, 35, 'GÜZELBAHÇE');
INSERT INTO `towns` VALUES (473, 35, 'KARABAĞLAR');
INSERT INTO `towns` VALUES (474, 35, 'KARABURUN');
INSERT INTO `towns` VALUES (475, 35, 'KARŞIYAKA');
INSERT INTO `towns` VALUES (476, 35, 'KEMALPAŞA');
INSERT INTO `towns` VALUES (477, 35, 'KINIK');
INSERT INTO `towns` VALUES (478, 35, 'KİRAZ');
INSERT INTO `towns` VALUES (479, 35, 'KONAK');
INSERT INTO `towns` VALUES (480, 35, 'MENDERES');
INSERT INTO `towns` VALUES (481, 35, 'MENEMEN');
INSERT INTO `towns` VALUES (482, 35, 'NARLIDERE');
INSERT INTO `towns` VALUES (483, 35, 'ÖDEMİŞ');
INSERT INTO `towns` VALUES (484, 35, 'SEFERİHİSAR');
INSERT INTO `towns` VALUES (485, 35, 'SELÇUK');
INSERT INTO `towns` VALUES (486, 35, 'TİRE');
INSERT INTO `towns` VALUES (487, 35, 'TORBALI');
INSERT INTO `towns` VALUES (488, 35, 'URLA');
INSERT INTO `towns` VALUES (489, 36, 'AKYAKA');
INSERT INTO `towns` VALUES (490, 36, 'ARPAÇAY');
INSERT INTO `towns` VALUES (491, 36, 'DİGOR');
INSERT INTO `towns` VALUES (492, 36, 'KAĞIZMAN');
INSERT INTO `towns` VALUES (493, 36, 'MERKEZ');
INSERT INTO `towns` VALUES (494, 36, 'SARIKAMIŞ');
INSERT INTO `towns` VALUES (495, 36, 'SELİM');
INSERT INTO `towns` VALUES (496, 36, 'SUSUZ');
INSERT INTO `towns` VALUES (497, 37, 'ABANA');
INSERT INTO `towns` VALUES (498, 37, 'AĞLI');
INSERT INTO `towns` VALUES (499, 37, 'ARAÇ');
INSERT INTO `towns` VALUES (500, 37, 'AZDAVAY');
INSERT INTO `towns` VALUES (501, 37, 'BOZKURT');
INSERT INTO `towns` VALUES (502, 37, 'CİDE');
INSERT INTO `towns` VALUES (503, 37, 'ÇATALZEYTİN');
INSERT INTO `towns` VALUES (504, 37, 'DADAY');
INSERT INTO `towns` VALUES (505, 37, 'DEVREKANİ');
INSERT INTO `towns` VALUES (506, 37, 'DOĞANYURT');
INSERT INTO `towns` VALUES (507, 37, 'HANÖNÜ');
INSERT INTO `towns` VALUES (508, 37, 'İHSANGAZİ');
INSERT INTO `towns` VALUES (509, 37, 'İNEBOLU');
INSERT INTO `towns` VALUES (510, 37, 'KÜRE');
INSERT INTO `towns` VALUES (511, 37, 'MERKEZ');
INSERT INTO `towns` VALUES (512, 37, 'PINARBAŞI');
INSERT INTO `towns` VALUES (513, 37, 'SEYDİLER');
INSERT INTO `towns` VALUES (514, 37, 'ŞENPAZAR');
INSERT INTO `towns` VALUES (515, 37, 'TAŞKÖPRÜ');
INSERT INTO `towns` VALUES (516, 37, 'TOSYA');
INSERT INTO `towns` VALUES (517, 38, 'AKKIŞLA');
INSERT INTO `towns` VALUES (518, 38, 'BÜNYAN');
INSERT INTO `towns` VALUES (519, 38, 'DEVELİ');
INSERT INTO `towns` VALUES (520, 38, 'FELAHİYE');
INSERT INTO `towns` VALUES (521, 38, 'HACILAR');
INSERT INTO `towns` VALUES (522, 38, 'İNCESU');
INSERT INTO `towns` VALUES (523, 38, 'KOCASİNAN');
INSERT INTO `towns` VALUES (524, 38, 'MELİKGAZİ');
INSERT INTO `towns` VALUES (525, 38, 'ÖZVATAN');
INSERT INTO `towns` VALUES (526, 38, 'PINARBAŞI');
INSERT INTO `towns` VALUES (527, 38, 'SARIOĞLAN');
INSERT INTO `towns` VALUES (528, 38, 'SARIZ');
INSERT INTO `towns` VALUES (529, 38, 'TALAS');
INSERT INTO `towns` VALUES (530, 38, 'TOMARZA');
INSERT INTO `towns` VALUES (531, 38, 'YAHYALI');
INSERT INTO `towns` VALUES (532, 38, 'YEŞİLHİSAR');
INSERT INTO `towns` VALUES (533, 39, 'BABAESKİ');
INSERT INTO `towns` VALUES (534, 39, 'DEMİRKÖY');
INSERT INTO `towns` VALUES (535, 39, 'KOFÇAZ');
INSERT INTO `towns` VALUES (536, 39, 'LÜLEBURGAZ');
INSERT INTO `towns` VALUES (537, 39, 'MERKEZ');
INSERT INTO `towns` VALUES (538, 39, 'PEHLİVANKÖY');
INSERT INTO `towns` VALUES (539, 39, 'PINARHİSAR');
INSERT INTO `towns` VALUES (540, 39, 'VİZE');
INSERT INTO `towns` VALUES (541, 40, 'AKÇAKENT');
INSERT INTO `towns` VALUES (542, 40, 'AKPINAR');
INSERT INTO `towns` VALUES (543, 40, 'BOZTEPE');
INSERT INTO `towns` VALUES (544, 40, 'ÇİÇEKDAĞI');
INSERT INTO `towns` VALUES (545, 40, 'KAMAN');
INSERT INTO `towns` VALUES (546, 40, 'MERKEZ');
INSERT INTO `towns` VALUES (547, 40, 'MUCUR');
INSERT INTO `towns` VALUES (548, 41, 'BAŞİSKELE');
INSERT INTO `towns` VALUES (549, 41, 'ÇAYIROVA');
INSERT INTO `towns` VALUES (550, 41, 'DARICA');
INSERT INTO `towns` VALUES (551, 41, 'DERİNCE');
INSERT INTO `towns` VALUES (552, 41, 'DİLOVASI');
INSERT INTO `towns` VALUES (553, 41, 'GEBZE');
INSERT INTO `towns` VALUES (554, 41, 'GÖLCÜK');
INSERT INTO `towns` VALUES (555, 41, 'İZMİT');
INSERT INTO `towns` VALUES (556, 41, 'KANDIRA');
INSERT INTO `towns` VALUES (557, 41, 'KARAMÜRSEL');
INSERT INTO `towns` VALUES (558, 41, 'KARTEPE');
INSERT INTO `towns` VALUES (559, 41, 'KÖRFEZ');
INSERT INTO `towns` VALUES (560, 42, 'AHIRLI');
INSERT INTO `towns` VALUES (561, 42, 'AKÖREN');
INSERT INTO `towns` VALUES (562, 42, 'AKŞEHİR');
INSERT INTO `towns` VALUES (563, 42, 'ALTINEKİN');
INSERT INTO `towns` VALUES (564, 42, 'BEYŞEHİR');
INSERT INTO `towns` VALUES (565, 42, 'BOZKIR');
INSERT INTO `towns` VALUES (566, 42, 'CİHANBEYLİ');
INSERT INTO `towns` VALUES (567, 42, 'ÇELTİK');
INSERT INTO `towns` VALUES (568, 42, 'ÇUMRA');
INSERT INTO `towns` VALUES (569, 42, 'DERBENT');
INSERT INTO `towns` VALUES (570, 42, 'DEREBUCAK');
INSERT INTO `towns` VALUES (571, 42, 'DOĞANHİSAR');
INSERT INTO `towns` VALUES (572, 42, 'EMİRGAZİ');
INSERT INTO `towns` VALUES (573, 42, 'EREĞLİ');
INSERT INTO `towns` VALUES (574, 42, 'GÜNEYSINIR');
INSERT INTO `towns` VALUES (575, 42, 'HADİM');
INSERT INTO `towns` VALUES (576, 42, 'HALKAPINAR');
INSERT INTO `towns` VALUES (577, 42, 'HÜYÜK');
INSERT INTO `towns` VALUES (578, 42, 'ILGIN');
INSERT INTO `towns` VALUES (579, 42, 'KADINHANI');
INSERT INTO `towns` VALUES (580, 42, 'KARAPINAR');
INSERT INTO `towns` VALUES (581, 42, 'KARATAY');
INSERT INTO `towns` VALUES (582, 42, 'KULU');
INSERT INTO `towns` VALUES (583, 42, 'MERAM');
INSERT INTO `towns` VALUES (584, 42, 'SARAYÖNÜ');
INSERT INTO `towns` VALUES (585, 42, 'SELÇUKLU');
INSERT INTO `towns` VALUES (586, 42, 'SEYDİŞEHİR');
INSERT INTO `towns` VALUES (587, 42, 'TAŞKENT');
INSERT INTO `towns` VALUES (588, 42, 'TUZLUKÇU');
INSERT INTO `towns` VALUES (589, 42, 'YALIHÜYÜK');
INSERT INTO `towns` VALUES (590, 42, 'YUNAK');
INSERT INTO `towns` VALUES (591, 43, 'ALTINTAŞ');
INSERT INTO `towns` VALUES (592, 43, 'ASLANAPA');
INSERT INTO `towns` VALUES (593, 43, 'ÇAVDARHİSAR');
INSERT INTO `towns` VALUES (594, 43, 'DOMANİÇ');
INSERT INTO `towns` VALUES (595, 43, 'DUMLUPINAR');
INSERT INTO `towns` VALUES (596, 43, 'EMET');
INSERT INTO `towns` VALUES (597, 43, 'GEDİZ');
INSERT INTO `towns` VALUES (598, 43, 'HİSARCIK');
INSERT INTO `towns` VALUES (599, 43, 'MERKEZ');
INSERT INTO `towns` VALUES (600, 43, 'PAZARLAR');
INSERT INTO `towns` VALUES (601, 43, 'SİMAV');
INSERT INTO `towns` VALUES (602, 43, 'ŞAPHANE');
INSERT INTO `towns` VALUES (603, 43, 'TAVŞANLI');
INSERT INTO `towns` VALUES (604, 44, 'AKÇADAĞ');
INSERT INTO `towns` VALUES (605, 44, 'ARAPGİR');
INSERT INTO `towns` VALUES (606, 44, 'ARGUVAN');
INSERT INTO `towns` VALUES (607, 44, 'BATTALGAZİ');
INSERT INTO `towns` VALUES (608, 44, 'DARENDE');
INSERT INTO `towns` VALUES (609, 44, 'DOĞANŞEHİR');
INSERT INTO `towns` VALUES (610, 44, 'DOĞANYOL');
INSERT INTO `towns` VALUES (611, 44, 'HEKİMHAN');
INSERT INTO `towns` VALUES (612, 44, 'KALE');
INSERT INTO `towns` VALUES (613, 44, 'KULUNCAK');
INSERT INTO `towns` VALUES (614, 44, 'PÜTÜRGE');
INSERT INTO `towns` VALUES (615, 44, 'YAZIHAN');
INSERT INTO `towns` VALUES (616, 44, 'YEŞİLYURT');
INSERT INTO `towns` VALUES (617, 45, 'AHMETLİ');
INSERT INTO `towns` VALUES (618, 45, 'AKHİSAR');
INSERT INTO `towns` VALUES (619, 45, 'ALAŞEHİR');
INSERT INTO `towns` VALUES (620, 45, 'DEMİRCİ');
INSERT INTO `towns` VALUES (621, 45, 'GÖLMARMARA');
INSERT INTO `towns` VALUES (622, 45, 'GÖRDES');
INSERT INTO `towns` VALUES (623, 45, 'KIRKAĞAÇ');
INSERT INTO `towns` VALUES (624, 45, 'KÖPRÜBAŞI');
INSERT INTO `towns` VALUES (625, 45, 'KULA');
INSERT INTO `towns` VALUES (626, 45, 'SALİHLİ');
INSERT INTO `towns` VALUES (627, 45, 'SARIGÖL');
INSERT INTO `towns` VALUES (628, 45, 'SARUHANLI');
INSERT INTO `towns` VALUES (629, 45, 'SELENDİ');
INSERT INTO `towns` VALUES (630, 45, 'SOMA');
INSERT INTO `towns` VALUES (631, 45, 'ŞEHZADELER');
INSERT INTO `towns` VALUES (632, 45, 'TURGUTLU');
INSERT INTO `towns` VALUES (633, 45, 'YUNUSEMRE');
INSERT INTO `towns` VALUES (634, 46, 'AFŞİN');
INSERT INTO `towns` VALUES (635, 46, 'ANDIRIN');
INSERT INTO `towns` VALUES (636, 46, 'ÇAĞLAYANCERİT');
INSERT INTO `towns` VALUES (637, 46, 'DULKADİROĞLU');
INSERT INTO `towns` VALUES (638, 46, 'EKİNÖZÜ');
INSERT INTO `towns` VALUES (639, 46, 'ELBİSTAN');
INSERT INTO `towns` VALUES (640, 46, 'GÖKSUN');
INSERT INTO `towns` VALUES (641, 46, 'NURHAK');
INSERT INTO `towns` VALUES (642, 46, 'ONİKİŞUBAT');
INSERT INTO `towns` VALUES (643, 46, 'PAZARCIK');
INSERT INTO `towns` VALUES (644, 46, 'TÜRKOĞLU');
INSERT INTO `towns` VALUES (645, 47, 'ARTUKLU');
INSERT INTO `towns` VALUES (646, 47, 'DARGEÇİT');
INSERT INTO `towns` VALUES (647, 47, 'DERİK');
INSERT INTO `towns` VALUES (648, 47, 'KIZILTEPE');
INSERT INTO `towns` VALUES (649, 47, 'MAZIDAĞI');
INSERT INTO `towns` VALUES (650, 47, 'MİDYAT');
INSERT INTO `towns` VALUES (651, 47, 'NUSAYBİN');
INSERT INTO `towns` VALUES (652, 47, 'ÖMERLİ');
INSERT INTO `towns` VALUES (653, 47, 'SAVUR');
INSERT INTO `towns` VALUES (654, 47, 'YEŞİLLİ');
INSERT INTO `towns` VALUES (655, 48, 'BODRUM');
INSERT INTO `towns` VALUES (656, 48, 'DALAMAN');
INSERT INTO `towns` VALUES (657, 48, 'DATÇA');
INSERT INTO `towns` VALUES (658, 48, 'FETHİYE');
INSERT INTO `towns` VALUES (659, 48, 'KAVAKLIDERE');
INSERT INTO `towns` VALUES (660, 48, 'KÖYCEĞİZ');
INSERT INTO `towns` VALUES (661, 48, 'MARMARİS');
INSERT INTO `towns` VALUES (662, 48, 'MENTEŞE');
INSERT INTO `towns` VALUES (663, 48, 'MİLAS');
INSERT INTO `towns` VALUES (664, 48, 'ORTACA');
INSERT INTO `towns` VALUES (665, 48, 'SEYDİKEMER');
INSERT INTO `towns` VALUES (666, 48, 'ULA');
INSERT INTO `towns` VALUES (667, 48, 'YATAĞAN');
INSERT INTO `towns` VALUES (668, 49, 'BULANIK');
INSERT INTO `towns` VALUES (669, 49, 'HASKÖY');
INSERT INTO `towns` VALUES (670, 49, 'KORKUT');
INSERT INTO `towns` VALUES (671, 49, 'MALAZGİRT');
INSERT INTO `towns` VALUES (672, 49, 'MERKEZ');
INSERT INTO `towns` VALUES (673, 49, 'VARTO');
INSERT INTO `towns` VALUES (674, 50, 'ACIGÖL');
INSERT INTO `towns` VALUES (675, 50, 'AVANOS');
INSERT INTO `towns` VALUES (676, 50, 'DERİNKUYU');
INSERT INTO `towns` VALUES (677, 50, 'GÜLŞEHİR');
INSERT INTO `towns` VALUES (678, 50, 'HACIBEKTAŞ');
INSERT INTO `towns` VALUES (679, 50, 'KOZAKLI');
INSERT INTO `towns` VALUES (680, 50, 'MERKEZ');
INSERT INTO `towns` VALUES (681, 50, 'ÜRGÜP');
INSERT INTO `towns` VALUES (682, 51, 'ALTUNHİSAR');
INSERT INTO `towns` VALUES (683, 51, 'BOR');
INSERT INTO `towns` VALUES (684, 51, 'ÇAMARDI');
INSERT INTO `towns` VALUES (685, 51, 'ÇİFTLİK');
INSERT INTO `towns` VALUES (686, 51, 'MERKEZ');
INSERT INTO `towns` VALUES (687, 51, 'ULUKIŞLA');
INSERT INTO `towns` VALUES (688, 52, 'AKKUŞ');
INSERT INTO `towns` VALUES (689, 52, 'ALTINORDU');
INSERT INTO `towns` VALUES (690, 52, 'AYBASTI');
INSERT INTO `towns` VALUES (691, 52, 'ÇAMAŞ');
INSERT INTO `towns` VALUES (692, 52, 'ÇATALPINAR');
INSERT INTO `towns` VALUES (693, 52, 'ÇAYBAŞI');
INSERT INTO `towns` VALUES (694, 52, 'FATSA');
INSERT INTO `towns` VALUES (695, 52, 'GÖLKÖY');
INSERT INTO `towns` VALUES (696, 52, 'GÜLYALI');
INSERT INTO `towns` VALUES (697, 52, 'GÜRGENTEPE');
INSERT INTO `towns` VALUES (698, 52, 'İKİZCE');
INSERT INTO `towns` VALUES (699, 52, 'KABADÜZ');
INSERT INTO `towns` VALUES (700, 52, 'KABATAŞ');
INSERT INTO `towns` VALUES (701, 52, 'KORGAN');
INSERT INTO `towns` VALUES (702, 52, 'KUMRU');
INSERT INTO `towns` VALUES (703, 52, 'MESUDİYE');
INSERT INTO `towns` VALUES (704, 52, 'PERŞEMBE');
INSERT INTO `towns` VALUES (705, 52, 'ULUBEY');
INSERT INTO `towns` VALUES (706, 52, 'ÜNYE');
INSERT INTO `towns` VALUES (707, 53, 'ARDEŞEN');
INSERT INTO `towns` VALUES (708, 53, 'ÇAMLIHEMŞİN');
INSERT INTO `towns` VALUES (709, 53, 'ÇAYELİ');
INSERT INTO `towns` VALUES (710, 53, 'DEREPAZARI');
INSERT INTO `towns` VALUES (711, 53, 'FINDIKLI');
INSERT INTO `towns` VALUES (712, 53, 'GÜNEYSU');
INSERT INTO `towns` VALUES (713, 53, 'HEMŞİN');
INSERT INTO `towns` VALUES (714, 53, 'İKİZDERE');
INSERT INTO `towns` VALUES (715, 53, 'İYİDERE');
INSERT INTO `towns` VALUES (716, 53, 'KALKANDERE');
INSERT INTO `towns` VALUES (717, 53, 'MERKEZ');
INSERT INTO `towns` VALUES (718, 53, 'PAZAR');
INSERT INTO `towns` VALUES (719, 54, 'ADAPAZARI');
INSERT INTO `towns` VALUES (720, 54, 'AKYAZI');
INSERT INTO `towns` VALUES (721, 54, 'ARİFİYE');
INSERT INTO `towns` VALUES (722, 54, 'ERENLER');
INSERT INTO `towns` VALUES (723, 54, 'FERİZLİ');
INSERT INTO `towns` VALUES (724, 54, 'GEYVE');
INSERT INTO `towns` VALUES (725, 54, 'HENDEK');
INSERT INTO `towns` VALUES (726, 54, 'KARAPÜRÇEK');
INSERT INTO `towns` VALUES (727, 54, 'KARASU');
INSERT INTO `towns` VALUES (728, 54, 'KAYNARCA');
INSERT INTO `towns` VALUES (729, 54, 'KOCAALİ');
INSERT INTO `towns` VALUES (730, 54, 'PAMUKOVA');
INSERT INTO `towns` VALUES (731, 54, 'SAPANCA');
INSERT INTO `towns` VALUES (732, 54, 'SERDİVAN');
INSERT INTO `towns` VALUES (733, 54, 'SÖĞÜTLÜ');
INSERT INTO `towns` VALUES (734, 54, 'TARAKLI');
INSERT INTO `towns` VALUES (735, 55, '19.May');
INSERT INTO `towns` VALUES (736, 55, 'ALAÇAM');
INSERT INTO `towns` VALUES (737, 55, 'ASARCIK');
INSERT INTO `towns` VALUES (738, 55, 'ATAKUM');
INSERT INTO `towns` VALUES (739, 55, 'AYVACIK');
INSERT INTO `towns` VALUES (740, 55, 'BAFRA');
INSERT INTO `towns` VALUES (741, 55, 'CANİK');
INSERT INTO `towns` VALUES (742, 55, 'ÇARŞAMBA');
INSERT INTO `towns` VALUES (743, 55, 'HAVZA');
INSERT INTO `towns` VALUES (744, 55, 'İLKADIM');
INSERT INTO `towns` VALUES (745, 55, 'KAVAK');
INSERT INTO `towns` VALUES (746, 55, 'LADİK');
INSERT INTO `towns` VALUES (747, 55, 'SALIPAZARI');
INSERT INTO `towns` VALUES (748, 55, 'TEKKEKÖY');
INSERT INTO `towns` VALUES (749, 55, 'TERME');
INSERT INTO `towns` VALUES (750, 55, 'VEZİRKÖPRÜ');
INSERT INTO `towns` VALUES (751, 55, 'YAKAKENT');
INSERT INTO `towns` VALUES (752, 56, 'BAYKAN');
INSERT INTO `towns` VALUES (753, 56, 'ERUH');
INSERT INTO `towns` VALUES (754, 56, 'KURTALAN');
INSERT INTO `towns` VALUES (755, 56, 'MERKEZ');
INSERT INTO `towns` VALUES (756, 56, 'PERVARİ');
INSERT INTO `towns` VALUES (757, 56, 'ŞİRVAN');
INSERT INTO `towns` VALUES (758, 56, 'TİLLO');
INSERT INTO `towns` VALUES (759, 57, 'AYANCIK');
INSERT INTO `towns` VALUES (760, 57, 'BOYABAT');
INSERT INTO `towns` VALUES (761, 57, 'DİKMEN');
INSERT INTO `towns` VALUES (762, 57, 'DURAĞAN');
INSERT INTO `towns` VALUES (763, 57, 'ERFELEK');
INSERT INTO `towns` VALUES (764, 57, 'GERZE');
INSERT INTO `towns` VALUES (765, 57, 'MERKEZ');
INSERT INTO `towns` VALUES (766, 57, 'SARAYDÜZÜ');
INSERT INTO `towns` VALUES (767, 57, 'TÜRKELİ');
INSERT INTO `towns` VALUES (768, 58, 'AKINCILAR');
INSERT INTO `towns` VALUES (769, 58, 'ALTINYAYLA');
INSERT INTO `towns` VALUES (770, 58, 'DİVRİĞİ');
INSERT INTO `towns` VALUES (771, 58, 'DOĞANŞAR');
INSERT INTO `towns` VALUES (772, 58, 'GEMEREK');
INSERT INTO `towns` VALUES (773, 58, 'GÖLOVA');
INSERT INTO `towns` VALUES (774, 58, 'GÜRÜN');
INSERT INTO `towns` VALUES (775, 58, 'HAFİK');
INSERT INTO `towns` VALUES (776, 58, 'İMRANLI');
INSERT INTO `towns` VALUES (777, 58, 'KANGAL');
INSERT INTO `towns` VALUES (778, 58, 'KOYULHİSAR');
INSERT INTO `towns` VALUES (779, 58, 'MERKEZ');
INSERT INTO `towns` VALUES (780, 58, 'SUŞEHRİ');
INSERT INTO `towns` VALUES (781, 58, 'ŞARKIŞLA');
INSERT INTO `towns` VALUES (782, 58, 'ULAŞ');
INSERT INTO `towns` VALUES (783, 58, 'YILDIZELİ');
INSERT INTO `towns` VALUES (784, 58, 'ZARA');
INSERT INTO `towns` VALUES (785, 59, 'ÇERKEZKÖY');
INSERT INTO `towns` VALUES (786, 59, 'ÇORLU');
INSERT INTO `towns` VALUES (787, 59, 'ERGENE');
INSERT INTO `towns` VALUES (788, 59, 'HAYRABOLU');
INSERT INTO `towns` VALUES (789, 59, 'KAPAKLI');
INSERT INTO `towns` VALUES (790, 59, 'MALKARA');
INSERT INTO `towns` VALUES (791, 59, 'MARMARAEREĞLİSİ');
INSERT INTO `towns` VALUES (792, 59, 'MURATLI');
INSERT INTO `towns` VALUES (793, 59, 'SARAY');
INSERT INTO `towns` VALUES (794, 59, 'SÜLEYMANPAŞA');
INSERT INTO `towns` VALUES (795, 59, 'ŞARKÖY');
INSERT INTO `towns` VALUES (796, 60, 'ALMUS');
INSERT INTO `towns` VALUES (797, 60, 'ARTOVA');
INSERT INTO `towns` VALUES (798, 60, 'BAŞÇİFTLİK');
INSERT INTO `towns` VALUES (799, 60, 'ERBAA');
INSERT INTO `towns` VALUES (800, 60, 'MERKEZ');
INSERT INTO `towns` VALUES (801, 60, 'NİKSAR');
INSERT INTO `towns` VALUES (802, 60, 'PAZAR');
INSERT INTO `towns` VALUES (803, 60, 'REŞADİYE');
INSERT INTO `towns` VALUES (804, 60, 'SULUSARAY');
INSERT INTO `towns` VALUES (805, 60, 'TURHAL');
INSERT INTO `towns` VALUES (806, 60, 'YEŞİLYURT');
INSERT INTO `towns` VALUES (807, 60, 'ZİLE');
INSERT INTO `towns` VALUES (808, 61, 'AKÇAABAT');
INSERT INTO `towns` VALUES (809, 61, 'ARAKLI');
INSERT INTO `towns` VALUES (810, 61, 'ARSİN');
INSERT INTO `towns` VALUES (811, 61, 'BEŞİKDÜZÜ');
INSERT INTO `towns` VALUES (812, 61, 'ÇARŞIBAŞI');
INSERT INTO `towns` VALUES (813, 61, 'ÇAYKARA');
INSERT INTO `towns` VALUES (814, 61, 'DERNEKPAZARI');
INSERT INTO `towns` VALUES (815, 61, 'DÜZKÖY');
INSERT INTO `towns` VALUES (816, 61, 'HAYRAT');
INSERT INTO `towns` VALUES (817, 61, 'KÖPRÜBAŞI');
INSERT INTO `towns` VALUES (818, 61, 'MAÇKA');
INSERT INTO `towns` VALUES (819, 61, 'OF');
INSERT INTO `towns` VALUES (820, 61, 'ORTAHİSAR');
INSERT INTO `towns` VALUES (821, 61, 'SÜRMENE');
INSERT INTO `towns` VALUES (822, 61, 'ŞALPAZARI');
INSERT INTO `towns` VALUES (823, 61, 'TONYA');
INSERT INTO `towns` VALUES (824, 61, 'VAKFIKEBİR');
INSERT INTO `towns` VALUES (825, 61, 'YOMRA');
INSERT INTO `towns` VALUES (826, 62, 'ÇEMİŞGEZEK');
INSERT INTO `towns` VALUES (827, 62, 'HOZAT');
INSERT INTO `towns` VALUES (828, 62, 'MAZGİRT');
INSERT INTO `towns` VALUES (829, 62, 'MERKEZ');
INSERT INTO `towns` VALUES (830, 62, 'NAZIMİYE');
INSERT INTO `towns` VALUES (831, 62, 'OVACIK');
INSERT INTO `towns` VALUES (832, 62, 'PERTEK');
INSERT INTO `towns` VALUES (833, 62, 'PÜLÜMÜR');
INSERT INTO `towns` VALUES (834, 63, 'AKÇAKALE');
INSERT INTO `towns` VALUES (835, 63, 'BİRECİK');
INSERT INTO `towns` VALUES (836, 63, 'BOZOVA');
INSERT INTO `towns` VALUES (837, 63, 'CEYLANPINAR');
INSERT INTO `towns` VALUES (838, 63, 'EYYÜBİYE');
INSERT INTO `towns` VALUES (839, 63, 'HALFETİ');
INSERT INTO `towns` VALUES (840, 63, 'HALİLİYE');
INSERT INTO `towns` VALUES (841, 63, 'HARRAN');
INSERT INTO `towns` VALUES (842, 63, 'HİLVAN');
INSERT INTO `towns` VALUES (843, 63, 'KARAKÖPRÜ');
INSERT INTO `towns` VALUES (844, 63, 'SİVEREK');
INSERT INTO `towns` VALUES (845, 63, 'SURUÇ');
INSERT INTO `towns` VALUES (846, 63, 'VİRANŞEHİR');
INSERT INTO `towns` VALUES (847, 64, 'BANAZ');
INSERT INTO `towns` VALUES (848, 64, 'EŞME');
INSERT INTO `towns` VALUES (849, 64, 'KARAHALLI');
INSERT INTO `towns` VALUES (850, 64, 'MERKEZ');
INSERT INTO `towns` VALUES (851, 64, 'SİVASLI');
INSERT INTO `towns` VALUES (852, 64, 'ULUBEY');
INSERT INTO `towns` VALUES (853, 65, 'BAHÇESARAY');
INSERT INTO `towns` VALUES (854, 65, 'BAŞKALE');
INSERT INTO `towns` VALUES (855, 65, 'ÇALDIRAN');
INSERT INTO `towns` VALUES (856, 65, 'ÇATAK');
INSERT INTO `towns` VALUES (857, 65, 'EDREMİT');
INSERT INTO `towns` VALUES (858, 65, 'ERCİŞ');
INSERT INTO `towns` VALUES (859, 65, 'GEVAŞ');
INSERT INTO `towns` VALUES (860, 65, 'GÜRPINAR');
INSERT INTO `towns` VALUES (861, 65, 'İPEKYOLU');
INSERT INTO `towns` VALUES (862, 65, 'MURADİYE');
INSERT INTO `towns` VALUES (863, 65, 'ÖZALP');
INSERT INTO `towns` VALUES (864, 65, 'SARAY');
INSERT INTO `towns` VALUES (865, 65, 'TUŞBA');
INSERT INTO `towns` VALUES (866, 66, 'AKDAĞMADENİ');
INSERT INTO `towns` VALUES (867, 66, 'AYDINCIK');
INSERT INTO `towns` VALUES (868, 66, 'BOĞAZLIYAN');
INSERT INTO `towns` VALUES (869, 66, 'ÇANDIR');
INSERT INTO `towns` VALUES (870, 66, 'ÇAYIRALAN');
INSERT INTO `towns` VALUES (871, 66, 'ÇEKEREK');
INSERT INTO `towns` VALUES (872, 66, 'KADIŞEHRİ');
INSERT INTO `towns` VALUES (873, 66, 'MERKEZ');
INSERT INTO `towns` VALUES (874, 66, 'SARAYKENT');
INSERT INTO `towns` VALUES (875, 66, 'SARIKAYA');
INSERT INTO `towns` VALUES (876, 66, 'SORGUN');
INSERT INTO `towns` VALUES (877, 66, 'ŞEFAATLİ');
INSERT INTO `towns` VALUES (878, 66, 'YENİFAKILI');
INSERT INTO `towns` VALUES (879, 66, 'YERKÖY');
INSERT INTO `towns` VALUES (880, 67, 'ALAPLI');
INSERT INTO `towns` VALUES (881, 67, 'ÇAYCUMA');
INSERT INTO `towns` VALUES (882, 67, 'DEVREK');
INSERT INTO `towns` VALUES (883, 67, 'EREĞLİ');
INSERT INTO `towns` VALUES (884, 67, 'GÖKÇEBEY');
INSERT INTO `towns` VALUES (885, 67, 'KİLİMLİ');
INSERT INTO `towns` VALUES (886, 67, 'KOZLU');
INSERT INTO `towns` VALUES (887, 67, 'MERKEZ');
INSERT INTO `towns` VALUES (888, 68, 'AĞAÇÖREN');
INSERT INTO `towns` VALUES (889, 68, 'ESKİL');
INSERT INTO `towns` VALUES (890, 68, 'GÜLAĞAÇ');
INSERT INTO `towns` VALUES (891, 68, 'GÜZELYURT');
INSERT INTO `towns` VALUES (892, 68, 'MERKEZ');
INSERT INTO `towns` VALUES (893, 68, 'ORTAKÖY');
INSERT INTO `towns` VALUES (894, 68, 'SARIYAHŞİ');
INSERT INTO `towns` VALUES (895, 69, 'AYDINTEPE');
INSERT INTO `towns` VALUES (896, 69, 'DEMİRÖZÜ');
INSERT INTO `towns` VALUES (897, 69, 'MERKEZ');
INSERT INTO `towns` VALUES (898, 70, 'AYRANCI');
INSERT INTO `towns` VALUES (899, 70, 'BAŞYAYLA');
INSERT INTO `towns` VALUES (900, 70, 'ERMENEK');
INSERT INTO `towns` VALUES (901, 70, 'KAZIMKARABEKİR');
INSERT INTO `towns` VALUES (902, 70, 'MERKEZ');
INSERT INTO `towns` VALUES (903, 70, 'SARIVELİLER');
INSERT INTO `towns` VALUES (904, 71, 'BAHŞİLİ');
INSERT INTO `towns` VALUES (905, 71, 'BALIŞEYH');
INSERT INTO `towns` VALUES (906, 71, 'ÇELEBİ');
INSERT INTO `towns` VALUES (907, 71, 'DELİCE');
INSERT INTO `towns` VALUES (908, 71, 'KARAKEÇİLİ');
INSERT INTO `towns` VALUES (909, 71, 'KESKİN');
INSERT INTO `towns` VALUES (910, 71, 'MERKEZ');
INSERT INTO `towns` VALUES (911, 71, 'SULAKYURT');
INSERT INTO `towns` VALUES (912, 71, 'YAHŞİHAN');
INSERT INTO `towns` VALUES (913, 72, 'BEŞİRİ');
INSERT INTO `towns` VALUES (914, 72, 'GERCÜŞ');
INSERT INTO `towns` VALUES (915, 72, 'HASANKEYF');
INSERT INTO `towns` VALUES (916, 72, 'KOZLUK');
INSERT INTO `towns` VALUES (917, 72, 'MERKEZ');
INSERT INTO `towns` VALUES (918, 72, 'SASON');
INSERT INTO `towns` VALUES (919, 73, 'BEYTÜŞŞEBAP');
INSERT INTO `towns` VALUES (920, 73, 'CİZRE');
INSERT INTO `towns` VALUES (921, 73, 'GÜÇLÜKONAK');
INSERT INTO `towns` VALUES (922, 73, 'İDİL');
INSERT INTO `towns` VALUES (923, 73, 'MERKEZ');
INSERT INTO `towns` VALUES (924, 73, 'SİLOPİ');
INSERT INTO `towns` VALUES (925, 73, 'ULUDERE');
INSERT INTO `towns` VALUES (926, 74, 'AMASRA');
INSERT INTO `towns` VALUES (927, 74, 'KURUCAŞİLE');
INSERT INTO `towns` VALUES (928, 74, 'MERKEZ');
INSERT INTO `towns` VALUES (929, 74, 'ULUS');
INSERT INTO `towns` VALUES (930, 75, 'ÇILDIR');
INSERT INTO `towns` VALUES (931, 75, 'DAMAL');
INSERT INTO `towns` VALUES (932, 75, 'GÖLE');
INSERT INTO `towns` VALUES (933, 75, 'HANAK');
INSERT INTO `towns` VALUES (934, 75, 'MERKEZ');
INSERT INTO `towns` VALUES (935, 75, 'POSOF');
INSERT INTO `towns` VALUES (936, 76, 'ARALIK');
INSERT INTO `towns` VALUES (937, 76, 'KARAKOYUNLU');
INSERT INTO `towns` VALUES (938, 76, 'MERKEZ');
INSERT INTO `towns` VALUES (939, 76, 'TUZLUCA');
INSERT INTO `towns` VALUES (940, 77, 'ALTINOVA');
INSERT INTO `towns` VALUES (941, 77, 'ARMUTLU');
INSERT INTO `towns` VALUES (942, 77, 'ÇINARCIK');
INSERT INTO `towns` VALUES (943, 77, 'ÇİFTLİKKÖY');
INSERT INTO `towns` VALUES (944, 77, 'MERKEZ');
INSERT INTO `towns` VALUES (945, 77, 'TERMAL');
INSERT INTO `towns` VALUES (946, 78, 'EFLANİ');
INSERT INTO `towns` VALUES (947, 78, 'ESKİPAZAR');
INSERT INTO `towns` VALUES (948, 78, 'MERKEZ');
INSERT INTO `towns` VALUES (949, 78, 'OVACIK');
INSERT INTO `towns` VALUES (950, 78, 'SAFRANBOLU');
INSERT INTO `towns` VALUES (951, 78, 'YENİCE');
INSERT INTO `towns` VALUES (952, 79, 'ELBEYLİ');
INSERT INTO `towns` VALUES (953, 79, 'MERKEZ');
INSERT INTO `towns` VALUES (954, 79, 'MUSABEYLİ');
INSERT INTO `towns` VALUES (955, 79, 'POLATELİ');
INSERT INTO `towns` VALUES (956, 80, 'BAHÇE');
INSERT INTO `towns` VALUES (957, 80, 'DÜZİÇİ');
INSERT INTO `towns` VALUES (958, 80, 'HASANBEYLİ');
INSERT INTO `towns` VALUES (959, 80, 'KADİRLİ');
INSERT INTO `towns` VALUES (960, 80, 'MERKEZ');
INSERT INTO `towns` VALUES (961, 80, 'SUMBAS');
INSERT INTO `towns` VALUES (962, 80, 'TOPRAKKALE');
INSERT INTO `towns` VALUES (963, 81, 'AKÇAKOCA');
INSERT INTO `towns` VALUES (964, 81, 'CUMAYERİ');
INSERT INTO `towns` VALUES (965, 81, 'ÇİLİMLİ');
INSERT INTO `towns` VALUES (966, 81, 'GÖLYAKA');
INSERT INTO `towns` VALUES (967, 81, 'GÜMÜŞOVA');
INSERT INTO `towns` VALUES (968, 81, 'KAYNAŞLI');
INSERT INTO `towns` VALUES (969, 81, 'MERKEZ');
INSERT INTO `towns` VALUES (970, 81, 'YIĞILCA');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, 'Suit', 500.00);
INSERT INTO `type` VALUES (2, 'Standart', 250.00);
INSERT INTO `type` VALUES (3, 'King', 1000.00);
INSERT INTO `type` VALUES (4, 'Single', 220.00);
INSERT INTO `type` VALUES (5, 'Double', 300.00);
INSERT INTO `type` VALUES (7, 'deluxe', 2000.00);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL COMMENT 'unique',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `authory` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `staff_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `users`(`user_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin1234', '1', 4);
INSERT INTO `user` VALUES (4, 'ilyas', 'varol', '0', 1);

-- ----------------------------
-- Procedure structure for billingSelectPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `billingSelectPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `billingSelectPro`(IN startd VARCHAR(255),IN dated VARCHAR(255),IN search VARCHAR(255))
BEGIN

IF (search!='' OR startd!='' OR dated!='') THEN

IF(search!='' AND startd!='' And dated!='')THEN

		SELECT b.bill_id,st.first_name,st.last_name,c.identity_number,c.first_name,c.last_name,c.phone_number,r.number,b.total_amount,b.date FROM billing as b INNER JOIN `user` as u on b.user_id=u.user_id INNER JOIN customers as c on b.customer_id=c.customer_id INNER JOIN room as r on b.room_id=r.room_id
 INNER JOIN staff as st on st.staff_id=u.staff_id 
WHERE (b.date BETWEEN startd and dated) and
(MATCH (c.identity_number,c.first_name,c.last_name,c.phone_number,c.email)AGAINST(search in boolean MODE) or 
MATCH (st.first_name,st.last_name)AGAINST(search in boolean MODE) or
MATCH (r.number)AGAINST(search in boolean MODE));


ELSE IF(startd!='' And dated!='')THEN

		SELECT b.bill_id,st.first_name,st.last_name,c.identity_number,c.first_name,c.last_name,c.phone_number,r.number,b.total_amount,b.date FROM billing as b INNER JOIN `user` as u on b.user_id=u.user_id INNER JOIN customers as c on b.customer_id=c.customer_id INNER JOIN room as r on b.room_id=r.room_id
INNER JOIN staff as st on st.staff_id=u.staff_id WHERE b.date BETWEEN startd and dated;

ELSE
SELECT b.bill_id,st.first_name,st.last_name,c.identity_number,c.first_name,c.last_name,c.phone_number,r.number,b.total_amount,b.date FROM billing as b INNER JOIN `user` as u on b.user_id=u.user_id INNER JOIN customers as c on b.customer_id=c.customer_id INNER JOIN room as r on b.room_id=r.room_id
 INNER JOIN staff as st on st.staff_id=u.staff_id 
WHERE MATCH (c.identity_number,c.first_name,c.last_name,c.phone_number,c.email)AGAINST(search in boolean MODE) or 
MATCH (st.first_name,st.last_name)AGAINST(search in boolean MODE) or
MATCH (r.number)AGAINST(search in boolean MODE);

END IF;

END IF;
ElSE

	SELECT b.bill_id,st.first_name,st.last_name,c.identity_number,c.first_name,c.last_name,c.phone_number,r.number,b.total_amount,b.date FROM billing as b INNER JOIN `user` as u on b.user_id=u.user_id INNER JOIN customers as c on b.customer_id=c.customer_id INNER JOIN room as r on b.room_id=r.room_id
  INNER JOIN staff as st on st.staff_id=u.staff_id;

END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for bookingsControlPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `bookingsControlPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bookingsControlPro`()
BEGIN
DELETE FROM bookings WHERE start_date<now();

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for bookingsInsertPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `bookingsInsertPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bookingsInsertPro`( IN `rid` int ( 255 ),IN `phone` VARCHAR(255),IN `startd` VARCHAR(255), IN `dued` VARCHAR(255))
BEGIN

INSERT INTO bookings VALUES(null,rid,phone,startd,dued);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for bookingsSearchPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `bookingsSearchPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bookingsSearchPro`(IN startd VARCHAR(255),IN dated VARCHAR(255),IN search VARCHAR(255))
BEGIN

IF (search!='' OR startd!='' OR dated!='') THEN

IF(search!='' AND startd!='' And dated!='')THEN

		SELECT * FROM bookings as b JOIN room as r on b.room_id=r.room_id
WHERE (b.start_date BETWEEN startd and dated) and (b.due_date BETWEEN startd and dated) AND
(MATCH (b.phone_number)AGAINST(search in boolean MODE));


ELSE IF(startd!='' And dated!='')THEN

SELECT * FROM bookings as b JOIN room as r on b.room_id=r.room_id
WHERE  (b.start_date BETWEEN startd and dated) and (b.due_date BETWEEN startd and dated);

ELSE
SELECT * FROM bookings as b JOIN room as r on b.room_id=r.room_id
WHERE MATCH (b.phone_number)AGAINST(search in boolean MODE);
END IF;

END IF;
ElSE
SELECT * FROM bookings as b JOIN room as r on b.room_id=r.room_id;
END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for bookingsSelectPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `bookingsSelectPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bookingsSelectPro`( IN `startd` VARCHAR(255), IN `dued` VARCHAR(255), IN `type` VARCHAR ( 255 ) )
BEGIN

IF (type='')THEN
SELECT
r.room_id,r.number,t.type,t.price 
FROM
bookings AS b
RIGHT JOIN room AS r ON b.room_id = r.room_id INNER JOIN type as t on r.type_id=t.type_id
WHERE
(((
	(start_date NOT BETWEEN startd AND dued )
	AND ( due_date NOT BETWEEN startd AND dued )
	)
	OR
	(r.room_id NOT IN ( SELECT room_id FROM bookings))
	)
	and r.state in('3','4')
	)
	ORDER BY  r.room_id asc;

ELSE

SELECT
	r.room_id,r.number,t.type,t.price
FROM
	bookings AS b
	RIGHT JOIN room AS r ON b.room_id = r.room_id INNER JOIN type as t on r.type_id=t.type_id
WHERE
	(((
	(start_date NOT BETWEEN startd AND dued )
	AND ( due_date NOT BETWEEN startd AND dued )
	AND r.type_id=type
	
	) 
	OR 
	( r.room_id NOT IN ( SELECT room_id FROM bookings ) and r.type_id=type))
		and r.state in('3','4')
		)
ORDER BY  r.room_id asc;
	
END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for citiesSelectPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `citiesSelectPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `citiesSelectPro`()
BEGIN
	select * from cities;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for customerDeletePro
-- ----------------------------
DROP PROCEDURE IF EXISTS `customerDeletePro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `customerDeletePro`(IN `id` int)
BEGIN 
UPDATE  customers set customer_state=0 where customer_id=id;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for customerInsertPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `customerInsertPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `customerInsertPro`(IN `f_name` varchar(255),IN `l_name` varchar(255),IN `i_nmbr` varchar(255),IN `p_nmbr` varchar(255),IN `mail` varchar(255),IN `townid` int,IN `adres` varchar(255))
BEGIN
 INSERT into customers values (null,f_name,l_name,i_nmbr,p_nmbr,mail,townid,adres,1);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for customerSearchPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `customerSearchPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `customerSearchPro`(IN `Search` varchar(255))
BEGIN

	select c.customer_id,c.first_name,c.last_name,c.identity_number,c.phone_number,c.email,ci.`name`,t.`name`,c.address from customers  as c join towns  as t on c.town_id=t.town_id join cities as ci  on ci.city_id=t.city_id  where customer_state!=0 AND
	 MATCH (first_name,last_name,identity_number,phone_number,email)
	AGAINST(Search in boolean MODE);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for customerSelectPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `customerSelectPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `customerSelectPro`()
BEGIN
	select c.customer_id,c.first_name,c.last_name,c.identity_number,c.phone_number,c.email,ci.`name`,t.`name`,c.address from customers  as c join towns  as t on c.town_id=t.town_id join cities as ci  on ci.city_id=t.city_id  where customer_state!=0 ;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for customerUpdatePro
-- ----------------------------
DROP PROCEDURE IF EXISTS `customerUpdatePro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `customerUpdatePro`(IN `id` int,
IN `fname` VARCHAR(255),IN `lname` VARCHAR(255),
IN `tc` VARCHAR(255),IN `pnmbr` VARCHAR(255),
IN `mail` VARCHAR(255),IN `tid` int,
IN `caddress` VARCHAR(255))
BEGIN 
UPDATE  customers set first_name=fname,last_name=lname,identity_number=tc,phone_number=pnmbr,email=mail,town_id=tid,address= caddress where customer_id=id;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for get_item_id
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_item_id`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_item_id`(IN `nmbr` VARCHAR(255))
BEGIN
	SELECT room_id from room where number=nmbr; 

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for hostingCustomerAllSearch
-- ----------------------------
DROP PROCEDURE IF EXISTS `hostingCustomerAllSearch`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hostingCustomerAllSearch`(IN `searchname` varchar(255),IN `startdate` varchar(255),IN `duedate` varchar(255))
BEGIN
set @search=searchname;
select * from hosting_customers inner join customers on hosting_customers.customer_id=customers.customer_id WHERE ((hosting_customers.enter_date between startdate and duedate) and (hosting_customers.exit_date between startdate and duedate)) and match(first_name, last_name,identity_number,phone_number,email) against (@search in boolean mode);


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for hostingCustomerDateSearch
-- ----------------------------
DROP PROCEDURE IF EXISTS `hostingCustomerDateSearch`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hostingCustomerDateSearch`(IN `startdate` VARCHAR(255),IN `duedate` VARCHAR(255))
BEGIN
	select * from hosting_customers inner join customers on hosting_customers.customer_id=customers.customer_id WHERE (hosting_customers.enter_date between startdate and duedate) and (hosting_customers.exit_date between startdate and duedate);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for hostingCustomerEnterPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `hostingCustomerEnterPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hostingCustomerEnterPro`(IN `cid` int,IN `rid` int,IN `sale` int)
BEGIN
	insert into hosting_customers VALUES(NULL,cid,rid,now(),null,sale,'1');

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for hostingCustomerExitPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `hostingCustomerExitPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hostingCustomerExitPro`(IN `rid` int)
BEGIN
	UPDATE hosting_customers as h SET  h.exit_date = now() , host_state='0'  WHERE h.room_id=rid and h.host_state='1';

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for hostingCustomerNameSearch
-- ----------------------------
DROP PROCEDURE IF EXISTS `hostingCustomerNameSearch`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hostingCustomerNameSearch`(IN `src` varchar(255))
BEGIN
	set @search=src;
	select * from customers inner JOIN hosting_customers on hosting_customers.customer_id= customers.customer_id where match(first_name, last_name,identity_number,phone_number,email) against (@search in boolean mode);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for hostingCustomerSelectPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `hostingCustomerSelectPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hostingCustomerSelectPro`()
BEGIN
	select customers.customer_id, customers.first_name, customers.last_name, customers.phone_number, customers.email, hosting_customers.enter_date, hosting_customers.exit_date from hosting_customers inner join customers on customers.customer_id=hosting_customers.customer_id inner join room on hosting_customers.room_id=room.room_id ;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for hostingCustomerUpdateRoomPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `hostingCustomerUpdateRoomPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hostingCustomerUpdateRoomPro`(IN `oldrid` int,IN `newrid` int)
BEGIN

	UPDATE hosting_customers as h SET  h.room_id=newrid  WHERE h.room_id=oldrid and h.host_state='1';

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for itemDeletePro
-- ----------------------------
DROP PROCEDURE IF EXISTS `itemDeletePro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `itemDeletePro`(IN `id` int)
BEGIN

DELETE from item where  item_id=id;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for itemInsertPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `itemInsertPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `itemInsertPro`(IN `item_name` varchar(255))
BEGIN
 INSERT into item values (null,item_name);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for itemSelectPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `itemSelectPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `itemSelectPro`()
BEGIN
	SELECT * FROM item ; 

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for itemUpdatePro
-- ----------------------------
DROP PROCEDURE IF EXISTS `itemUpdatePro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `itemUpdatePro`(IN `id` int,IN `iname` VARCHAR(255))
BEGIN 
UPDATE  item set item.`name`=iname where item_id=id;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for loginSelectPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `loginSelectPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `loginSelectPro`(IN `username` varchar(255),IN `upassword` varchar(255))
BEGIN
SELECT * from `user` where (user.user_name=username and user.`password`=upassword) ;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for roomInsertPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `roomInsertPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `roomInsertPro`(IN `nmbr` varchar(255),IN `type_id` int)
BEGIN
	insert into room VALUES(NULL,nmbr,type_id,3);
	select room_id from room where number=nmbr;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for roomInsertTypePro
-- ----------------------------
DROP PROCEDURE IF EXISTS `roomInsertTypePro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `roomInsertTypePro`(IN `rid` int,IN `iid` int)
BEGIN
	
	insert into room_item values (null,rid,iid);
	
	
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for roomItemReadPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `roomItemReadPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `roomItemReadPro`()
BEGIN
	SELECT * FROM room_item ; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for roomSelectEmptyPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `roomSelectEmptyPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `roomSelectEmptyPro`(IN `typeId`  int,IN `rid`  int)
BEGIN
	
	set @type = typeId;
	
	IF @type=0 THEN
	select * from room  as r join type as t on r.type_id=t.type_id WHERE (r.state='3' or r.state='4');
ELSE
	select * from room  as r join type as t on r.type_id=t.type_id WHERE (r.state='3' or r.state='4') and r.type_id=@type and not r.room_id= rid ;
END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for roomSelectPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `roomSelectPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `roomSelectPro`()
BEGIN
	SELECT * FROM room 
	inner join type on room.type_id=type.type_id ORDER BY number asc;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for roomUpdateStatePro
-- ----------------------------
DROP PROCEDURE IF EXISTS `roomUpdateStatePro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `roomUpdateStatePro`(IN `roomId` int,IN `state` int)
BEGIN
	
	UPDATE room set room.state = state where room.room_id=roomId ; 

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for room_delete
-- ----------------------------
DROP PROCEDURE IF EXISTS `room_delete`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `room_delete`(IN `rid` int  )
BEGIN 
UPDATE  room set state=0 where room_id=rid;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for room_information
-- ----------------------------
DROP PROCEDURE IF EXISTS `room_information`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `room_information`()
BEGIN
	SELECT
 rm.room_id,rm.number,rm.bed_number, i.name  
FROM
	room AS rm
	INNER JOIN room_item AS ri ON ri.room_id = rm.room_id
	INNER JOIN item as i on i.item_id=ri.item_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for room_update
-- ----------------------------
DROP PROCEDURE IF EXISTS `room_update`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `room_update`(IN `rid` int,IN `nmbr` VARCHAR(255),IN `tip`int  )
BEGIN 
UPDATE  room set number=nmbr,type_id=tip,state=4 where room_id=rid;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_room
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_room`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_room`()
BEGIN
	select * from room  as r join type as t on r.type_id=t.type_id ;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for staffDelete
-- ----------------------------
DROP PROCEDURE IF EXISTS `staffDelete`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `staffDelete`(In `sid` int)
BEGIN
 UPDATE staff  as st set  st.staff_state=0 where staff_id=sid; 

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for staffInsert
-- ----------------------------
DROP PROCEDURE IF EXISTS `staffInsert`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `staffInsert`(IN `f_name` varchar(255),IN `l_name` varchar(255),IN `i_nmbr` varchar(255),IN `p_nmbr` varchar(255),IN `tit` varchar(255),IN `sal` int ,IN `townid` int,IN `adres` varchar(255))
BEGIN
 INSERT into staff values (null,f_name,l_name,i_nmbr,p_nmbr,tit,now(),null,sal,townid,adres,1);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for staffSelect
-- ----------------------------
DROP PROCEDURE IF EXISTS `staffSelect`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `staffSelect`()
BEGIN
	select st.staff_id, st.first_name, st.last_name, st.identity_number, st.phone_number, st.staff_title, st.start_date,           st.quit_date, st.salary, st.address, ci.`name` as city, t.`name` as town, st.staff_state from staff   as  st join towns  as t on st.town_id=t.town_id join cities as ci  on ci.city_id=t.city_id  where staff_state!=0 ;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for staffSelectNotUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `staffSelectNotUser`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `staffSelectNotUser`()
BEGIN
	SELECT *FROM staff where staff_id not in(SELECT staff_id from `user`);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for staffUpdate
-- ----------------------------
DROP PROCEDURE IF EXISTS `staffUpdate`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `staffUpdate`(In `sid` int,IN `f_name` varchar(255),IN `l_name` varchar(255),IN `i_nmbr` varchar(255),IN `p_nmbr` varchar(255),IN `tit` varchar(255),IN `sal` int ,IN `townid` int,IN `adres` varchar(255))
BEGIN
 UPDATE staff  as st set  st.first_name=f_name ,st.last_name=l_name, st.identity_number =i_nmbr, st.phone_number=p_nmbr, st.staff_title=tit,st.salary= sal, st.town_id=townid, st.address=adres  where staff_id=sid; 

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for townSelect
-- ----------------------------
DROP PROCEDURE IF EXISTS `townSelect`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `townSelect`()
BEGIN
	select * from towns as t JOIN cities  as c on t.city_id=c.city_id ;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for townSelectPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `townSelectPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `townSelectPro`(IN `cityid`  int)
BEGIN
	select * from towns as t JOIN cities  as c on t.city_id=c.city_id where c.city_id= cityid;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for typeDeletePro
-- ----------------------------
DROP PROCEDURE IF EXISTS `typeDeletePro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `typeDeletePro`(IN `id` int)
BEGIN

DELETE from type where  type.type_id=id;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for typeInsertPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `typeInsertPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `typeInsertPro`(IN `type` varchar(255),IN `price`FLOAT)
BEGIN
 INSERT into type values (null,type,price);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for typeSelectPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `typeSelectPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `typeSelectPro`()
BEGIN
	SELECT * from type;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for typeUpdatePro
-- ----------------------------
DROP PROCEDURE IF EXISTS `typeUpdatePro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `typeUpdatePro`(IN `id` int,IN `type1` VARCHAR(255),IN `price1` FLOAT)
BEGIN 
UPDATE type set type=type1,price=price1  where type_id=id;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for userControlPasswordPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `userControlPasswordPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userControlPasswordPro`(IN id int,IN `parola` varchar(255))
BEGIN
			SELECT * FROM `user` WHERE `password`=parola and user_id=id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for userDeletePro
-- ----------------------------
DROP PROCEDURE IF EXISTS `userDeletePro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userDeletePro`(IN `id` int)
BEGIN
	delete FROM `user` where user_id=id;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for userInsertPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `userInsertPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userInsertPro`(IN `user_name` varchar(255),IN `password` varchar(255),IN `authory` varchar(255),`staff_id` int)
BEGIN
	INSERT into `user` VALUES(NULL,user_name,`password`,authory,staff_id);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for userSelectPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `userSelectPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userSelectPro`()
BEGIN
	select * from `user`;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for userUpdateAuthoryPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `userUpdateAuthoryPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userUpdateAuthoryPro`(IN `id` int,IN `aid` VARCHAR(255))
BEGIN
	update `user` set authory=aid WHERE user_id=id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for userUpdatePasswordPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `userUpdatePasswordPro`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userUpdatePasswordPro`(IN id int,IN `parola` varchar(255))
BEGIN
UPDATE `user` SET `password`=parola where user_id=id;

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table hosting_customers
-- ----------------------------
DROP TRIGGER IF EXISTS `RoomStateChange`;
delimiter ;;
CREATE TRIGGER `RoomStateChange` AFTER INSERT ON `hosting_customers` FOR EACH ROW BEGIN 

Set @rid = new.room_id;
UPDATE room set room.state = '1' WHERE room.room_id=@rid;

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table hosting_customers
-- ----------------------------
DROP TRIGGER IF EXISTS `RoomStateChange1`;
delimiter ;;
CREATE TRIGGER `RoomStateChange1` AFTER UPDATE ON `hosting_customers` FOR EACH ROW BEGIN 

UPDATE room set room.state = '4' WHERE room.room_id=old.room_id;
UPDATE room set room.state = '1' WHERE new.host_state='1' and room_id=new.room_id;

Set @totalday = DATEDIFF(new.exit_date,new.enter_date); 

Set @prices = (SELECT price FROM hosting_customers as hc JOIN room as r on r.room_id = old.room_id JOIN type as t on t.type_id=r.type_id WHERE hc.host_id = new.host_id) ;

SET @totalprices = (@totalday * @prices) - (@totalday * @prices * new.sale_percent / 100); 

IF ( @totalday='0')then
INSERT into billing VALUES(null,null,new.customer_id,new.room_id,@prices,now());
else 
INSERT into billing VALUES(null,null,new.customer_id,new.room_id,@totalprices,now());
end if;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table item
-- ----------------------------
DROP TRIGGER IF EXISTS `room_item_delete`;
delimiter ;;
CREATE TRIGGER `room_item_delete` BEFORE DELETE ON `item` FOR EACH ROW begin 

set @degisken= old.item_id;

DELETE from room_item WHERE room_item.item_id=@degisken;

end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;

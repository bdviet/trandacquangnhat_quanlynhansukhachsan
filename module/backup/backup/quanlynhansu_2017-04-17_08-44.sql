#SKD101|quanlynhansu|20|2017.04.17 08:44:42|111|11|1|7|1|10|13|3|12|8|3|2|7|2|4|5|3|6|9|4

DROP TABLE IF EXISTS `tlb_bangcap`;
CREATE TABLE `tlb_bangcap` (
  `bang_cap_id` varchar(10) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `ten_bang_cap` varchar(50) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  PRIMARY KEY (`bang_cap_id`)
) ENGINE=InnoDB /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `tlb_bangcap` VALUES
('BTVH', 'Bổ túc văn hóa'),
('CD001', 'Cao đẳng'),
('DH001', 'Đại học xây dựng'),
('DH002', 'Đại học luật'),
('DH003', 'Đại học'),
('LDPT', 'Lao động phổ thông'),
('TC001', 'Trung cấp xây dựng'),
('TC002', 'Trung cấp CNTT'),
('TC003', 'Trung cấp'),
('THCS01', 'Trung học cơ sở'),
('THPT01', 'Trung học phổ thông');

DROP TABLE IF EXISTS `tlb_baohiem`;
CREATE TABLE `tlb_baohiem` (
  `ma_nhan_vien` varchar(10) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `so_bhxh` varchar(25) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `ngay_cap_bhxh` varchar(25) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `noi_cap_bhxh` varchar(100) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `so_bhyt` varchar(25) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `ngay_cap_bhyt` varchar(25) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `noi_cap_bhyt` varchar(100) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  PRIMARY KEY (`ma_nhan_vien`)
) ENGINE=InnoDB /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `tlb_baohiem` VALUES;

DROP TABLE IF EXISTS `tlb_chucvu`;
CREATE TABLE `tlb_chucvu` (
  `chuc_vu_id` varchar(10) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `ten_chuc_vu` varchar(50) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  PRIMARY KEY (`chuc_vu_id`)
) ENGINE=InnoDB /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `tlb_chucvu` VALUES
('BGD002', 'Phó giám đốc'),
('BGD01', 'Giám đốc'),
('NV001', 'Nhân viên'),
('PTP001', 'Phó trưởng phòng'),
('TGD', 'Tổng giám đốc'),
('TP001', 'Trưởng phòng'),
('TT', 'Tổ Trưởng');

DROP TABLE IF EXISTS `tlb_congviec`;
CREATE TABLE `tlb_congviec` (
  `ma_nhan_vien` varchar(10) /*!40101 COLLATE utf8_unicode_ci */ NOT NULL,
  `ngay_vao_lam` varchar(25) /*!40101 COLLATE utf8_unicode_ci */ NOT NULL,
  `phong_ban_id` varchar(10) /*!40101 COLLATE utf8_unicode_ci */ NOT NULL,
  `cong_viec_id` varchar(10) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `chuc_vu_id` varchar(15) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `muc_luong_cb` varchar(30) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `he_so` varchar(10) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `phu_cap` varchar(30) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `so_sld` varchar(30) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `ngay_cap` varchar(25) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `noi_cap` varchar(100) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `tknh` varchar(30) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `ngan_hang` varchar(50) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `hoc_van_id` varchar(10) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `bang_cap_id` varchar(10) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `ngoai_ngu_id` varchar(10) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `tin_hoc_id` varchar(10) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `dan_toc_id` varchar(10) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `quoc_tich_id` varchar(10) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `ton_giao_id` varchar(10) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `tinh_thanh_id` varchar(10) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  PRIMARY KEY (`ma_nhan_vien`,`phong_ban_id`)
) ENGINE=MyISAM /*!40101 DEFAULT CHARSET=utf8 */ /*!40101 COLLATE=utf8_unicode_ci */;

INSERT INTO `tlb_congviec` VALUES
('NV001', '12/12/2000', 'PBV', 'BV001', 'NV001', '2500000', '2', '300000', 'LD0001', '7/7/2006', 'Huế', '3232432432424', 'Agribank', 'HV005', 'THPT01', 'AV001', 'TH000', 'DT001', 'QT001', '1', 'TT006');

DROP TABLE IF EXISTS `tlb_ctcongviec`;
CREATE TABLE `tlb_ctcongviec` (
  `cong_viec_id` varchar(10) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `ten_cong_viec` varchar(50) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  PRIMARY KEY (`cong_viec_id`)
) ENGINE=InnoDB /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `tlb_ctcongviec` VALUES
('ATLD', 'An toàn lao động'),
('BP', 'Buồng Phòng'),
('BV001', 'Bảo vệ'),
('GD', 'Giám đốc'),
('KTT001', 'Kế toán trưởng'),
('KTV001', 'Kế toán viên'),
('LT', 'Lễ Tân'),
('LT001', 'Bảo mật'),
('TX001', 'Tài xế'),
('VT001', 'Văn thư');

DROP TABLE IF EXISTS `tlb_dantoc`;
CREATE TABLE `tlb_dantoc` (
  `dan_toc_id` varchar(10) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `ten_dan_toc` varchar(50) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  PRIMARY KEY (`dan_toc_id`)
) ENGINE=InnoDB /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `tlb_dantoc` VALUES
('DT001', 'Kinh'),
('DT002', 'Mường'),
('DT003', 'Bana'),
('DT004', 'Tày'),
('DT005', 'Nùng'),
('DT006', 'Thái'),
('DT007', 'Dao'),
('DT008', 'Khơ Me'),
('DT009', 'Ê Đê'),
('DT010', 'Hơ Mông'),
('DT011', 'Mèo'),
('DT012', 'Tà Ôi'),
('DT013', 'Chăm');

DROP TABLE IF EXISTS `tlb_hinhanh`;
CREATE TABLE `tlb_hinhanh` (
  `id` mediumint(10) NOT NULL AUTO_INCREMENT,
  `ten_anh` varchar(25) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `tlb_hinhanh` VALUES
(1, ''),
(2, '1492417131.jpg'),
(3, '1492417138.jpg');

DROP TABLE IF EXISTS `tlb_hocvan`;
CREATE TABLE `tlb_hocvan` (
  `hoc_van_id` varchar(10) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `ten_hoc_van` varchar(50) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  PRIMARY KEY (`hoc_van_id`)
) ENGINE=InnoDB /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `tlb_hocvan` VALUES
('HV002', 'Lớp 7'),
('HV003', 'Lớp 8'),
('HV004', 'Lớp 9'),
('HV005', 'Lớp 12'),
('HV01', 'Lớp 1'),
('HV02', 'Lớp 2'),
('HV03', 'Lớp 3'),
('HV04', 'Lớp 4'),
('HV05', 'Lớp 5'),
('HV06', 'Lớp 6'),
('HV10', 'Lớp 10'),
('HV11', 'Lớp 11');

DROP TABLE IF EXISTS `tlb_hopdong`;
CREATE TABLE `tlb_hopdong` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `ma_nhan_vien` varchar(10) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `so_quyet_dinh` varchar(25) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `tu_ngay` date DEFAULT NULL,
  `den_ngay` date DEFAULT NULL,
  `loai_hop_dong` int(1) DEFAULT NULL,
  `ghi_chu` varchar(100) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

DROP TABLE IF EXISTS `tlb_ngoaingu`;
CREATE TABLE `tlb_ngoaingu` (
  `ngoai_ngu_id` varchar(10) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `ten_ngoai_ngu` varchar(50) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  PRIMARY KEY (`ngoai_ngu_id`)
) ENGINE=InnoDB /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `tlb_ngoaingu` VALUES
('AV000', 'Không'),
('AV001', 'Bằng A anh văn'),
('AV002', 'Bằng B anh văn'),
('AV003', 'Bằng C anh văn'),
('FRE', 'Tiếng Pháp'),
('IE', 'IELTS'),
('RUS', 'Tiếng Nga'),
('TOEIC', 'Toeic');

DROP TABLE IF EXISTS `tlb_nguoidung`;
CREATE TABLE `tlb_nguoidung` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ten_dang_nhap` varchar(50) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `mat_khau` varchar(50) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `quyen_them` int(1) DEFAULT '0',
  `quyen_sua` int(1) DEFAULT '0',
  `quyen_xoa` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `tlb_nguoidung` VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 1),
(2, 'viet', 'a4e614247683e150b2b9812a8fa33a71', 0, 0, 0),
(3, 'an', '18b049cc8d8535787929df716f9f4e68', 1, 1, 0),
(4, 'nhat', '35eb7cca72023c8eae70ad11595bae67', 1, 1, 0);

DROP TABLE IF EXISTS `tlb_nhanvien`;
CREATE TABLE `tlb_nhanvien` (
  `ma_nhan_vien` varchar(10) /*!40101 COLLATE utf8_unicode_ci */ NOT NULL,
  `ho_ten` varchar(50) /*!40101 COLLATE utf8_unicode_ci */ NOT NULL,
  `gioi_tinh` tinyint(1) NOT NULL,
  `gia_dinh` tinyint(1) NOT NULL,
  `dt_di_dong` varchar(15) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `dt_nha` varchar(15) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `email` varchar(50) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `ngay_sinh` varchar(25) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `noi_sinh` varchar(100) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `tinh_thanh` varchar(30) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `cmnd` varchar(20) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `ngay_cap` varchar(25) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `noi_cap` varchar(100) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `que_quan` varchar(100) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `dia_chi` varchar(100) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `tam_tru` varchar(100) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT NULL,
  `hinh_anh` varchar(30) /*!40101 COLLATE utf8_unicode_ci */ DEFAULT 'no_image.jpg',
  `nghi_viec` int(1) DEFAULT NULL,
  PRIMARY KEY (`ma_nhan_vien`)
) ENGINE=MyISAM /*!40101 DEFAULT CHARSET=utf8 */ /*!40101 COLLATE=utf8_unicode_ci */;

INSERT INTO `tlb_nhanvien` VALUES
('NV002', 'Nguyễn  B', 1, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
('NV001', 'Nguyễn Văn A', 1, 1, '2013213', '324324234', 'vana@hotel.com', '12/12/1980', 'Huế', 'Huế', '2342324234', '26/11/1999', 'Huế', 'Huế', 'Ngự Bình, Huế', 'Ngự Bình Huế', '1492417138.jpg', NULL);

DROP TABLE IF EXISTS `tlb_phongban`;
CREATE TABLE `tlb_phongban` (
  `phong_ban_id` varchar(10) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `ten_phong_ban` varchar(100) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  PRIMARY KEY (`phong_ban_id`)
) ENGINE=InnoDB /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `tlb_phongban` VALUES
('PBV', 'Phòng Bảo Vệ'),
('PKH', 'Phòng Kế hoạch'),
('PKT', 'Phòng Kỹ thuật'),
('PNS', 'Phòng Nhân Sự'),
('PTCHC', 'Tổ chức Hành chính'),
('SEO', 'Phòng Seo'),
('TCKT', 'Tài chính Kế toán');

DROP TABLE IF EXISTS `tlb_quanhegiadinh`;
CREATE TABLE `tlb_quanhegiadinh` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `ma_nhan_vien` varchar(10) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `ten_nguoi_than` varchar(50) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `nam_sinh` int(4) NOT NULL,
  `moi_quan_he` varchar(10) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `nghe_nghiep` varchar(50) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `dia_chi` varchar(100) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `noi_lam` varchar(100) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `dtdd` varchar(20) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `dtcq` varchar(20) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `ghi_chu` varchar(200) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `tlb_quanhegiadinh` VALUES
(2, 'TCHC008', 'Đặng lệ thu', 1961, 'Mẹ', 'Nhân viên thu hoa chi chợ Cao Lãnh', 'F3-Đồng Tháp', 'Cty TNHH Hoàng Anh', '120251514', '021548785', 'f ầ sfas f ádf'),
(3, 'TCHC008', 'Phạm Thị Thuỳ Dung', 1985, 'Em', 'CNVCB', 'Đồng Tháp', NULL, '0955581815', NULL, NULL);

DROP TABLE IF EXISTS `tlb_quatrinhcongtac`;
CREATE TABLE `tlb_quatrinhcongtac` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `ma_nhan_vien` varchar(10) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `so_quyet_dinh` varchar(50) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `ngay_ky` varchar(25) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `ngay_hieu_luc` varchar(25) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `cong_viec` varchar(100) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `ghi_chu` text /*!40101 COLLATE utf8mb4_unicode_ci */,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `tlb_quatrinhcongtac` VALUES
(1, 'TCHC008', '300/2010/QĐ-TCHC', '02/02/2008', '02/02/2008', 'CNTT', 'Testtttggg'),
(2, 'TCHC008', '350/2010/QĐ-TCHC', '06/08/2009', '01/09/2009', 'Nhân viên lưu trữ', 'Phòng QLTC'),
(3, 'TCHC002', '390/2010/QĐ-TCHC', '2008-09-01', '2009-09-02', 'An toàn lao động', 'Phòng TCHC'),
(4, 'TCHC002', '305/2010/QĐ-TCHC', '2009-05-01', '2010-09-02', 'An toàn lao động 222', 'pppppppppp');

DROP TABLE IF EXISTS `tlb_quatrinhluong`;
CREATE TABLE `tlb_quatrinhluong` (
  `id` mediumint(11) NOT NULL AUTO_INCREMENT,
  `ma_nhan_vien` varchar(25) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `so_quyet_dinh` varchar(25) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `ngay_chuyen` date DEFAULT NULL,
  `muc_luong` varchar(4) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `ghi_chu` varchar(200) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `tlb_quatrinhluong` VALUES
(1, 'TCHC008', '312/2010/QĐ-TCHC', '2010-02-02', '3', '2 năm nâng bậc'),
(2, 'TCHC003', '312/2010/QĐ-TCHC', '2010-02-02', '3', NULL),
(3, 'TCHC008', '315/2010/QĐ-TCHC', '2010-02-02', '1.33', 'nâng bậc 2 năm'),
(4, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL);

DROP TABLE IF EXISTS `tlb_quoctich`;
CREATE TABLE `tlb_quoctich` (
  `quoc_tich_id` varchar(10) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `ten_quoc_tich` varchar(50) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  PRIMARY KEY (`quoc_tich_id`)
) ENGINE=InnoDB /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `tlb_quoctich` VALUES
('QT001', 'Việt Nam'),
('QT002', 'Anh'),
('QT003', 'Mỹ');

DROP TABLE IF EXISTS `tlb_tinhoc`;
CREATE TABLE `tlb_tinhoc` (
  `tin_hoc_id` varchar(10) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `ten_tin_hoc` varchar(50) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  PRIMARY KEY (`tin_hoc_id`)
) ENGINE=InnoDB /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `tlb_tinhoc` VALUES
('TH000', 'Không'),
('TH001', 'Tin học A'),
('TH002', 'Tin học B'),
('TH003', 'Trung cấp'),
('TH004', 'MOS'),
('TH005', 'IC3');

DROP TABLE IF EXISTS `tlb_tinhthanh`;
CREATE TABLE `tlb_tinhthanh` (
  `tinh_thanh_id` varchar(10) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  `ten_tinh_thanh` varchar(50) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  PRIMARY KEY (`tinh_thanh_id`)
) ENGINE=InnoDB /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `tlb_tinhthanh` VALUES
('TT001', 'Đồng Tháp'),
('TT002', 'Tiền Giang'),
('TT003', 'An Giang'),
('TT004', 'Vĩnh Long'),
('TT005', 'Trà Vinh'),
('TT006', 'Huế'),
('TT007', 'Quảng Trị'),
('TT008', 'Hà Nội'),
('TT009', 'HCM');

DROP TABLE IF EXISTS `tlb_tongiao`;
CREATE TABLE `tlb_tongiao` (
  `ton_giao_id` int(10) NOT NULL,
  `ten_ton_giao` varchar(50) /*!40101 COLLATE utf8mb4_unicode_ci */ NOT NULL,
  PRIMARY KEY (`ton_giao_id`)
) ENGINE=InnoDB /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `tlb_tongiao` VALUES
(1, 'Không'),
(2, 'Cao Đài'),
(3, 'Thiên Chúa'),
(4, 'Đạo Phật');


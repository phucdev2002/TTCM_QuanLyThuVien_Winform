CREATE DATABASE QuanLyThuVien
GO

USE QuanLyThuVien
GO

CREATE TABLE dbo.Docgia
(
	MaDocGia NCHAR(10) NOT NULL PRIMARY KEY,
	HoTen NVARCHAR(50) NULL,
	NgaySinh DATE NULL,
	DiaChi NVARCHAR(100) NULL,
	Sdt NCHAR(20) NULL,
	Email NVARCHAR(50) NULL,
	CMND NCHAR(12) NULL,
	PhiThuongNien INT NULL,
	SoNgayMuonToiDa INT NULL,
	SoSachMuonToiDa INT NULL,
	TaiLieuDB bit NULL,
	LoaiDocGia NCHAR(10) NULL,
	MSSV NCHAR(10) NULL,
	MCB NCHAR(10) NULL,
	
)
GO

CREATE TABLE dbo.NhanVien
(
	MaNV NCHAR(10) NOT NULL PRIMARY KEY,
	HoTenNV NVARCHAR(50) NULL,
	SdtNV NCHAR(20) NULL,
	CaTruc INT NULL,
	ChucVu NVARCHAR(50) NULL,
)
GO

CREATE TABLE dbo.PhieuMuon
(
	MaPhieuMuon NCHAR(10) NOT NULL PRIMARY KEY,
	MaDocGiaMuon NCHAR(10) NOT NULL,
	NgayLapPhieuMuon DATE NULL,
	MaSachMuon NCHAR(10) NULL,
	HoanTraSach DATE NULL,
	MaNVLapPhieuMuon NCHAR(10) NULL,
)
GO

CREATE TABLE dbo.PhieuPhat
(
	MaPhieuPhat NCHAR(10) NOT NULL PRIMARY KEY,
	MaDocGiaMuon NCHAR(10) NULL,
	SoNgayQuaHan INT NULL,
	SoTienPhat NCHAR(10) NULL,
	MaNVLapPhieuPhat NCHAR(10) NULL,
	MaPhieuMuon NCHAR(10) NULL,
	MaSachMuon NCHAR(10) NULL,
)
GO

CREATE TABLE dbo.PhieuTra
(
	MaPhieuTra NCHAR(10) NOT NULL PRIMARY KEY,
	MaDocGiaMuon NCHAR(10) NULL,
	MaPhieuMuon NCHAR(10) NULL,
	NgayLapPhieuTra DATE NULL,
	MaSachMuon NCHAR(10) NULL,
	MaNVLapPhieuTra NCHAR(10) NULL,
)
GO

CREATE TABLE dbo.Sach
(
	MaSach NCHAR(10) NOT NULL PRIMARY KEY,
	TenSach NVARCHAR(50) NULL,
	LoaiSach NVARCHAR(50) NULL,
	SoLuongCon INT NULL,
)
GO

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0001',       -- MaDocGia - nchar(10)
    N'Nguyễn Minh Phúc',       -- HoTen - nvarchar(50)
    '2002-02-02', -- NgaySinh - date
    N'290/2b Ấp Hòa Tây, xã Quới Sơn, Châu Thành ,Bến Tre',       -- DiaChi - nvarchar(100)
    N'0908420792',       -- Sdt - nchar(20)
    N'ngphuc@gmail.com',       -- Email - nvarchar(50)
    N'250533628',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    10,         -- SoSachMuonToiDa - int
    0,      -- TaiLieuDB - bit
    N'SV',       -- LoaiDocGia - nchar(10)
    N'6151071084',       -- MSSV - nchar(10)
    NULL        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0002',       -- MaDocGia - nchar(10)
    N'Nguyễn Thị Thanh Lan',       -- HoTen - nvarchar(50)
    '2000-06-23', -- NgaySinh - date
    N'451 Bình Đông, P.13, Q.8, HCM',       -- DiaChi - nvarchar(100)
    N'0974105576',       -- Sdt - nchar(20)
    N'thanhlan@gmail.com',       -- Email - nvarchar(50)
    N'182116400',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    10,         -- SoSachMuonToiDa - int
    0,      -- TaiLieuDB - bit
    N'SV',       -- LoaiDocGia - nchar(10)
    N'6151071123',       -- MSSV - nchar(10)
    NULL        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0003',       -- MaDocGia - nchar(10)
    N'Nguyễn Hoàng Lâm',       -- HoTen - nvarchar(50)
    '2000-03-10', -- NgaySinh - date
    N'978 Hậu Giang, P.11, Q.6, TPHCM',       -- DiaChi - nvarchar(100)
    N'0979235435',       -- Sdt - nchar(20)
    N'hoanglam1@gmail.com',       -- Email - nvarchar(50)
    N'022106702',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    10,         -- SoSachMuonToiDa - int
    0,      -- TaiLieuDB - bit
    N'SV',       -- LoaiDocGia - nchar(10)
    N'6151072563',       -- MSSV - nchar(10)
    NULL        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0004',       -- MaDocGia - nchar(10)
    N'TRẦN BÌNH LIÊU',       -- HoTen - nvarchar(50)
    '2001-06-30', -- NgaySinh - date
    N'108 CAM ĐÀO MỘC, P.4, Q.8, TPHCM',       -- DiaChi - nvarchar(100)
    N'0988807188',       -- Sdt - nchar(20)
    N'binhlieu@gmail.com',       -- Email - nvarchar(50)
    N'023369993',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    10,         -- SoSachMuonToiDa - int
    0,      -- TaiLieuDB - bit
    N'SV',       -- LoaiDocGia - nchar(10)
    N'6151071027',       -- MSSV - nchar(10)
    NULL        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0005',       -- MaDocGia - nchar(10)
    N'NGUYỄN HIỆP LINH',       -- HoTen - nvarchar(50)
    '2002-09-12', -- NgaySinh - date
    N'q79A5/2 Nguyễn Kiệm, Gò Vấp, TPHCM',       -- DiaChi - nvarchar(100)
    N'0977412102',       -- Sdt - nchar(20)
    N'hieplinh@gmail.com',       -- Email - nvarchar(50)
    N'023436305',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    10,         -- SoSachMuonToiDa - int
    0,      -- TaiLieuDB - bit
    N'SV',       -- LoaiDocGia - nchar(10)
    N'6151074290',       -- MSSV - nchar(10)
    NULL        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0006',       -- MaDocGia - nchar(10)
    N'NGUYỄN THỊ THÚY KIỀU',       -- HoTen - nvarchar(50)
    '1999-08-06', -- NgaySinh - date
    N'Hưng Đạo, Hương Nguyên, Nghệ An',       -- DiaChi - nvarchar(100)
    N'0376183576',       -- Sdt - nchar(20)
    N'thuykieu@gmail.com',       -- Email - nvarchar(50)
    N'146348620',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    10,         -- SoSachMuonToiDa - int
    0,      -- TaiLieuDB - bit
    N'SV',       -- LoaiDocGia - nchar(10)
    N'6151073688',       -- MSSV - nchar(10)
    NULL        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0007',       -- MaDocGia - nchar(10)
    N'PHẠM TẤN KIỀU',       -- HoTen - nvarchar(50)
    '2003-03-22', -- NgaySinh - date
    N'Ấp Bình Tả I, Xã Đức Hòa Hạ, huyện Đức Hòa, Tỉnh Long An',       -- DiaChi - nvarchar(100)
    N'0988775511',       -- Sdt - nchar(20)
    N'tankieu03@gmail.com',       -- Email - nvarchar(50)
    N'264224587',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    10,         -- SoSachMuonToiDa - int
    0,      -- TaiLieuDB - bit
    N'SV',       -- LoaiDocGia - nchar(10)
    N'6151071177',       -- MSSV - nchar(10)
    NULL        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0008',       -- MaDocGia - nchar(10)
    N'Trần Minh Dũng',       -- HoTen - nvarchar(50)
    '2002-12-16', -- NgaySinh - date
    N'961 Hậu Giang, P.11, Q.6, TPHCM',       -- DiaChi - nvarchar(100)
    N'0915579872',       -- Sdt - nchar(20)
    N'trandung@gmail.com',       -- Email - nvarchar(50)
    N'210554821',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    10,         -- SoSachMuonToiDa - int
    0,      -- TaiLieuDB - bit
    N'SV',       -- LoaiDocGia - nchar(10)
    N'6151070366',       -- MSSV - nchar(10)
    NULL        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0009',       -- MaDocGia - nchar(10)
    N'Mai Chí Tùng',       -- HoTen - nvarchar(50)
    '2002-07-14', -- NgaySinh - date
    N'83/5 Trương Đăng Qué, Gò Vấp, TP HCM',       -- DiaChi - nvarchar(100)
    N'0393246894',       -- Sdt - nchar(20)
    N'chitung364@gmail.com',       -- Email - nvarchar(50)
    N'305489772',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    10,         -- SoSachMuonToiDa - int
    0,      -- TaiLieuDB - bit
    N'SV',       -- LoaiDocGia - nchar(10)
    N'6151071547',       -- MSSV - nchar(10)
    NULL        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0010',       -- MaDocGia - nchar(10)
    N'Tạ Thị Kim Chi',       -- HoTen - nvarchar(50)
    '2000-02-27', -- NgaySinh - date
    N'128b/ 13 Tân Hòa Đông, P.14, Q.6, TPHCM',       -- DiaChi - nvarchar(100)
    N'0393784449',       -- Sdt - nchar(20)
    N'kimchita27@gmail.com',       -- Email - nvarchar(50)
    N'199647204',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    10,         -- SoSachMuonToiDa - int
    0,      -- TaiLieuDB - bit
    N'SV',       -- LoaiDocGia - nchar(10)
    N'6151077522',       -- MSSV - nchar(10)
    NULL        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0011',       -- MaDocGia - nchar(10)
    N'Hoàng Đình Long',       -- HoTen - nvarchar(50)
    '1984-05-21', -- NgaySinh - date
    N'6/12 Nguyễn Siêu, P.Bến Nghé, TPHCM ',       -- DiaChi - nvarchar(100)
    N'0907201996',       -- Sdt - nchar(20)
    N'dinhlong21@gmail.com',       -- Email - nvarchar(50)
    N'334408858',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    15,         -- SoSachMuonToiDa - int
    1,      -- TaiLieuDB - bit
    N'CB',       -- LoaiDocGia - nchar(10)
    NULL,       -- MSSV - nchar(10)
    N'CB1001'        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0012',       -- MaDocGia - nchar(10)
    N'Lê Phát Lộc',       -- HoTen - nvarchar(50)
    '1979-10-03', -- NgaySinh - date
    N'385 Trường Chinh, TP Tuy Hòa, Phú Yên ',       -- DiaChi - nvarchar(100)
    N'0955248056',       -- Sdt - nchar(20)
    N'phatloc79@gmail.com',       -- Email - nvarchar(50)
    N'351915554',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    15,         -- SoSachMuonToiDa - int
    1,      -- TaiLieuDB - bit
    N'CB',       -- LoaiDocGia - nchar(10)
    NULL,       -- MSSV - nchar(10)
    N'CB1002'        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0013',       -- MaDocGia - nchar(10)
    N'NGUYỄN THẾ LỢI',       -- HoTen - nvarchar(50)
    '1990-01-29', -- NgaySinh - date
    N'130 Âu Cơ, F.10, Q.Tân Bình,TPHCM ',       -- DiaChi - nvarchar(100)
    N'0975371451',       -- Sdt - nchar(20)
    N'theloi90@gmail.com',       -- Email - nvarchar(50)
    N'212144786',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    15,         -- SoSachMuonToiDa - int
    1,      -- TaiLieuDB - bit
    N'CB',       -- LoaiDocGia - nchar(10)
    NULL,       -- MSSV - nchar(10)
    N'CB1003'        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0014',       -- MaDocGia - nchar(10)
    N'Đinh Công Luân',       -- HoTen - nvarchar(50)
    '1988-03-25', -- NgaySinh - date
    N'427/8 Minh Phụng, P.10, Q.10, TPHCM ',       -- DiaChi - nvarchar(100)
    N'0977694677',       -- Sdt - nchar(20)
    N'congluan@gmail.com',       -- Email - nvarchar(50)
    N'142027604',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    15,         -- SoSachMuonToiDa - int
    1,      -- TaiLieuDB - bit
    N'CB',       -- LoaiDocGia - nchar(10)
    NULL,       -- MSSV - nchar(10)
    N'CB1004'        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0015',       -- MaDocGia - nchar(10)
    N'PHẠM ĐÌNH LUÂN',       -- HoTen - nvarchar(50)
    '1986-04-30', -- NgaySinh - date
    N'225 Tô Hiến Thành, P.13, Q.10, TPHCM ',       -- DiaChi - nvarchar(100)
    N'0903113887',       -- Sdt - nchar(20)
    N'dinhluan86@gmail.com',       -- Email - nvarchar(50)
    N'260558757',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    15,         -- SoSachMuonToiDa - int
    1,      -- TaiLieuDB - bit
    N'CB',       -- LoaiDocGia - nchar(10)
    NULL,       -- MSSV - nchar(10)
    N'CB1005'        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0016',       -- MaDocGia - nchar(10)
    N'HUỲNH VĂN MINH',       -- HoTen - nvarchar(50)
    '1975-07-11', -- NgaySinh - date
    N'314 Phạm Hữu Lầu, Q.7, TPHCM ',       -- DiaChi - nvarchar(100)
    N'0983777391',       -- Sdt - nchar(20)
    N'vanminh75@gmail.com',       -- Email - nvarchar(50)
    N'221095383',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    15,         -- SoSachMuonToiDa - int
    1,      -- TaiLieuDB - bit
    N'CB',       -- LoaiDocGia - nchar(10)
    NULL,       -- MSSV - nchar(10)
    N'CB1006'        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0017',       -- MaDocGia - nchar(10)
    N'PHÙNG THỊ KIM NGÂN',       -- HoTen - nvarchar(50)
    '1988-09-21', -- NgaySinh - date
    N'277/16 Trường Chinh, Q.Tân Bình, TPHCM ',       -- DiaChi - nvarchar(100)
    N'0907647247',       -- Sdt - nchar(20)
    N'kimngan88@gmail.com',       -- Email - nvarchar(50)
    N'301534719',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    15,         -- SoSachMuonToiDa - int
    1,      -- TaiLieuDB - bit
    N'CB',       -- LoaiDocGia - nchar(10)
    NULL,       -- MSSV - nchar(10)
    N'CB1007'        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0018',       -- MaDocGia - nchar(10)
    N'Bùi Hữu Nghĩa',       -- HoTen - nvarchar(50)
    '1993-01-18', -- NgaySinh - date
    N'274 Phạm Thế Hiển, P.2, Q.8, TPHCM ',       -- DiaChi - nvarchar(100)
    N'0385267315',       -- Sdt - nchar(20)
    N'huunghia@gmail.com',       -- Email - nvarchar(50)
    N'286822881',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    5,         -- SoSachMuonToiDa - int
    0,      -- TaiLieuDB - bit
    N'Thuong',       -- LoaiDocGia - nchar(10)
    NULL,       -- MSSV - nchar(10)
    NULL        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0019',       -- MaDocGia - nchar(10)
    N'TÔ ANH NGHĨA',       -- HoTen - nvarchar(50)
    '1989-04-12', -- NgaySinh - date
    N'209 Nguyễn Tri Phương, P.5, Q.9, TPHCM ',       -- DiaChi - nvarchar(100)
    N'0966254367',       -- Sdt - nchar(20)
    N'anhnghia89@gmail.com',       -- Email - nvarchar(50)
    N'126448671',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    5,         -- SoSachMuonToiDa - int
    0,      -- TaiLieuDB - bit
    N'Thuong',       -- LoaiDocGia - nchar(10)
    NULL,       -- MSSV - nchar(10)
    NULL        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0020',       -- MaDocGia - nchar(10)
    N'TRƯƠNG TIẾN NGỌC',       -- HoTen - nvarchar(50)
    '1996-04-30', -- NgaySinh - date
    N'108/8 Hồng Lạc, P.11, Tân BÌnh, TPHCM ',       -- DiaChi - nvarchar(100)
    N'0125589657',       -- Sdt - nchar(20)
    N'tienngoc@gmail.com',       -- Email - nvarchar(50)
    N'252230577',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    5,         -- SoSachMuonToiDa - int
    0,      -- TaiLieuDB - bit
    N'Thuong',       -- LoaiDocGia - nchar(10)
    NULL,       -- MSSV - nchar(10)
    NULL        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0021',       -- MaDocGia - nchar(10)
    N'LÊ VŨ NGUYÊN',       -- HoTen - nvarchar(50)
    '1980-11-20', -- NgaySinh - date
    N'83 Bùi Hữu Nghĩa, P.5, Q.5, TPHCM ',       -- DiaChi - nvarchar(100)
    N'0364589657',       -- Sdt - nchar(20)
    N'LeNguyen80@gmail.com',       -- Email - nvarchar(50)
    N'284007784',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    5,         -- SoSachMuonToiDa - int
    0,      -- TaiLieuDB - bit
    N'Thuong',       -- LoaiDocGia - nchar(10)
    NULL,       -- MSSV - nchar(10)
    NULL        -- MCB - nchar(10)
    )

INSERT dbo.Docgia
(
    MaDocGia, HoTen, NgaySinh, DiaChi, Sdt, Email, CMND, PhiThuongNien, SoNgayMuonToiDa, SoSachMuonToiDa, TaiLieuDB, LoaiDocGia, MSSV, MCB
)
VALUES
(   N'DG0022',       -- MaDocGia - nchar(10)
    N'PHẠM ÁNH NGUYỆT',       -- HoTen - nvarchar(50)
    '1979-03-15', -- NgaySinh - date
    N'51/26 Nguyễn Trãi, F2, Q.5, TPHCM ',       -- DiaChi - nvarchar(100)
    N'0915569364',       -- Sdt - nchar(20)
    N'anhnguyet79@gmail.com',       -- Email - nvarchar(50)
    N'253369798',       -- CMND - nchar(12)
    NULL,         -- PhiThuongNien - int
    NULL,         -- SoNgayMuonToiDa - int
    5,         -- SoSachMuonToiDa - int
    0,      -- TaiLieuDB - bit
    N'Thuong',       -- LoaiDocGia - nchar(10)
    NULL,       -- MSSV - nchar(10)
    NULL        -- MCB - nchar(10)
    )

	ALTER TABLE dbo.PhieuMuon WITH CHECK ADD CONSTRAINT FK_PhieuMuon_Docgia FOREIGN KEY(MaDocGiaMuon) REFERENCES dbo.Docgia(MaDocGia)
	GO
    ALTER TABLE dbo.PhieuMuon CHECK CONSTRAINT FK_PhieuMuon_Docgia
	GO
	ALTER TABLE dbo.PhieuMuon WITH CHECK ADD CONSTRAINT FK_PhieuMuon_NhanVien FOREIGN KEY(MaNVLapPhieuMuon) REFERENCES dbo.NhanVien(MaNV)
	GO
    ALTER TABLE dbo.PhieuMuon CHECK CONSTRAINT FK_PhieuMuon_NhanVien
	Go
	ALTER TABLE dbo.PhieuMuon WITH CHECK ADD CONSTRAINT FK_PhieuMuon_Sach FOREIGN KEY(MaSachMuon) REFERENCES dbo.Sach(MaSach)
	GO
    ALTER TABLE dbo.PhieuMuon CHECK CONSTRAINT FK_PhieuMuon_Sach
	GO
    ALTER TABLE dbo.PhieuPhat WITH CHECK ADD CONSTRAINT FK_PhieuPhat_NhanVien FOREIGN KEY(MaNVLapPhieuPhat) REFERENCES dbo.NhanVien(MaNV)
	GO
    ALTER TABLE dbo.PhieuPhat CHECK CONSTRAINT FK_PhieuPhat_NhanVien
	Go
	ALTER TABLE dbo.PhieuPhat WITH CHECK ADD CONSTRAINT FK_PhieuPhat_PhieuMuon FOREIGN KEY(MaPhieuMuon) REFERENCES dbo.PhieuMuon(MaPhieuMuon)
	GO
    ALTER TABLE dbo.PhieuPhat CHECK CONSTRAINT FK_PhieuPhat_PhieuMuon
	GO
    ALTER TABLE dbo.PhieuTra WITH CHECK ADD CONSTRAINT FK_PhieuTra_NhanVien FOREIGN KEY(MaNVLapPhieuTra) REFERENCES dbo.NhanVien(MaNV)
	GO
    ALTER TABLE dbo.PhieuTra CHECK CONSTRAINT FK_PhieuTra_NhanVien
	GO
    ALTER TABLE dbo.PhieuTra WITH CHECK ADD CONSTRAINT FK_PhieuTra_PhieuMuon FOREIGN KEY(MaPhieuMuon) REFERENCES dbo.PhieuMuon(MaPhieuMuon)
	GO
	ALTER TABLE dbo.PhieuTra CHECK CONSTRAINT FK_PhieuTra_PhieuMuon
	GO
    
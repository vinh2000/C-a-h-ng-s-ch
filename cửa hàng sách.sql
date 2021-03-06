USE [master]
GO
/****** Object:  Database [CuaHangSach]    Script Date: 6/22/2021 4:20:32 AM ******/
CREATE DATABASE [CuaHangSach]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CuaHangSach', FILENAME = N'D:\BookShop-Winforms\CuaHangSach.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CuaHangSach_log', FILENAME = N'D:\BookShop-Winforms\CuaHangSach_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CuaHangSach] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CuaHangSach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CuaHangSach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CuaHangSach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CuaHangSach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CuaHangSach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CuaHangSach] SET ARITHABORT OFF 
GO
ALTER DATABASE [CuaHangSach] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CuaHangSach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CuaHangSach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CuaHangSach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CuaHangSach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CuaHangSach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CuaHangSach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CuaHangSach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CuaHangSach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CuaHangSach] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CuaHangSach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CuaHangSach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CuaHangSach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CuaHangSach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CuaHangSach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CuaHangSach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CuaHangSach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CuaHangSach] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CuaHangSach] SET  MULTI_USER 
GO
ALTER DATABASE [CuaHangSach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CuaHangSach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CuaHangSach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CuaHangSach] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CuaHangSach] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CuaHangSach] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CuaHangSach] SET QUERY_STORE = OFF
GO
USE [CuaHangSach]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaCTHD] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SoLuongBan] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaCTPN] [int] IDENTITY(1,1) NOT NULL,
	[MaPN] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SoLuongNhap] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaCTPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayBan] [date] NOT NULL,
	[GiamGia] [int] NOT NULL,
	[MaNV] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [varchar](100) NOT NULL,
	[MatKhau] [varchar](1000) NOT NULL,
	[HoTen] [nvarchar](150) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[SDT] [varchar](20) NOT NULL,
	[DiaChi] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[MaNXB] [int] IDENTITY(1,1) NOT NULL,
	[TenNXB] [nvarchar](250) NOT NULL,
	[DiaChi] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaNV] [int] NOT NULL,
	[MaQuyen] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[MaNV] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[TenSach] [nvarchar](250) NOT NULL,
	[GiaBan] [float] NOT NULL,
	[NamXB] [int] NOT NULL,
	[SoLuongTon] [int] NOT NULL,
	[MaNXB] [int] NOT NULL,
	[MaTL] [int] NOT NULL,
	[MaTG] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTG] [int] IDENTITY(1,1) NOT NULL,
	[TenTG] [nvarchar](100) NOT NULL,
	[SDT] [varchar](20) NOT NULL,
	[DiaChi] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK__TacGia__27250074FF772FFF] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTL] [int] IDENTITY(1,1) NOT NULL,
	[TenTL] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (getdate()) FOR [NgayBan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [GiamGia]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT ((0)) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[NhaXuatBan] ADD  CONSTRAINT [DF_NhaXuatBan_DiaChi]  DEFAULT (N'Trống') FOR [DiaChi]
GO
ALTER TABLE [dbo].[PhieuNhap] ADD  DEFAULT (getdate()) FOR [NgayNhap]
GO
ALTER TABLE [dbo].[Sach] ADD  DEFAULT ((0)) FOR [GiaBan]
GO
ALTER TABLE [dbo].[Sach] ADD  DEFAULT ((2018)) FOR [NamXB]
GO
ALTER TABLE [dbo].[Sach] ADD  CONSTRAINT [DF__Sach__SoLuongTon__3F466844]  DEFAULT ((0)) FOR [SoLuongTon]
GO
ALTER TABLE [dbo].[TacGia] ADD  CONSTRAINT [DF_TacGia_SDT]  DEFAULT ((900000000)) FOR [SDT]
GO
ALTER TABLE [dbo].[TacGia] ADD  CONSTRAINT [DF_TacGia_DiaChi]  DEFAULT (N'Trống') FOR [DiaChi]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK__Sach__MaNXB__403A8C7D] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NhaXuatBan] ([MaNXB])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK__Sach__MaNXB__403A8C7D]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK__Sach__MaTG__4222D4EF] FOREIGN KEY([MaTG])
REFERENCES [dbo].[TacGia] ([MaTG])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK__Sach__MaTG__4222D4EF]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD FOREIGN KEY([MaTL])
REFERENCES [dbo].[TheLoai] ([MaTL])
GO
/****** Object:  StoredProcedure [dbo].[sp_BaoCaoDoanhThuCuaHang]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_BaoCaoDoanhThuCuaHang]
@frmdate date,
@todate date
AS
BEGIN
SELECT dbo.HoaDon.NgayBan AS [NgayBan], sum(dbo.Sach.GiaBan*dbo.ChiTietHoaDon.SoLuongBan*(1-dbo.HoaDon.GiamGia*0.01)) AS [DoanhThu] FROM dbo.HoaDon, dbo.ChiTietHoaDon, dbo.Sach WHERE dbo.HoaDon.MaHD=dbo.ChiTietHoaDon.MaHD AND dbo.ChiTietHoaDon.MaSach=dbo.Sach.MaSach AND dbo.HoaDon.NgayBan>=@frmdate AND dbo.HoaDon.NgayBan<=@todate
GROUP BY dbo.HoaDon.NgayBan
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BaoCaoHoaDonTheoMa]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_BaoCaoHoaDonTheoMa]
@mahd int
AS
BEGIN
	SELECT dbo.Sach.TenSach AS [TenSach], dbo.ChiTietHoaDon.SoLuongBan AS [SoLuong], dbo.Sach.GiaBan AS [Gia], dbo.ChiTietHoaDon.SoLuongBan*dbo.Sach.GiaBan AS [ThanhTien] FROM dbo.ChiTietHoaDon, dbo.Sach 
	WHERE dbo.ChiTietHoaDon.MaSach=dbo.Sach.MaSach AND dbo.ChiTietHoaDon.MaHD=@mahd
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BaoCaoNangSuatNhanVien]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_BaoCaoNangSuatNhanVien]
@frmdate date,
@todate date
AS
BEGIN
	SELECT dbo.NhanVien.HoTen AS [TenNhanVien], iif(T.SoLuongBan>0,T.SoLuongBan,0) AS [SoLuongBan],  iif(T.DoanhThu>0,T.DoanhThu,0) AS [DoanhThu]
	FROM dbo.NhanVien LEFT JOIN (SELECT dbo.HoaDon.MaNV AS [MaNV], sum(dbo.ChiTietHoaDon.SoLuongBan) AS [SoLuongBan], sum(dbo.Sach.GiaBan*dbo.ChiTietHoaDon.SoLuongBan*(1-dbo.HoaDon.GiamGia*0.01)) AS [DoanhThu] FROM dbo.Sach, dbo.HoaDon, dbo.ChiTietHoaDon WHERE dbo.HoaDon.MaHD=dbo.ChiTietHoaDon.MaHD 
	AND dbo.ChiTietHoaDon.MaSach=dbo.Sach.MaSach AND dbo.HoaDon.NgayBan>=@frmdate AND dbo.HoaDon.NgayBan<=@todate GROUP BY dbo.HoaDon.MaNV) AS T
	ON dbo.NhanVien.MaNV=T.MaNV
	ORDER BY T.SoLuongBan DESC, T.DoanhThu DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BaoCaoPhieuNhapTheoMa]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_BaoCaoPhieuNhapTheoMa]
@mapn int
AS
BEGIN
	SELECT dbo.Sach.TenSach AS [TenSach], dbo.ChiTietPhieuNhap.SoLuongNhap AS [SoLuong], dbo.Sach.GiaBan AS [GiaBan], (dbo.ChiTietPhieuNhap.SoLuongNhap*dbo.Sach.GiaBan) AS [ThanhTien] FROM dbo.ChiTietPhieuNhap, dbo.Sach 
	WHERE dbo.ChiTietPhieuNhap.MaPN=@mapn AND dbo.ChiTietPhieuNhap.MaSach=dbo.Sach.MaSach
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CapNhatNhaXuatBan]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_CapNhatNhaXuatBan]
@manxb int,
@tennxb nvarchar(250),
@diachi nvarchar(250)
AS
BEGIN
	IF (@manxb!=20)
		BEGIN 
			UPDATE dbo.NhaXuatBan
			SET
				--MaNXB - this column value is auto-generated
				dbo.NhaXuatBan.TenNXB = @tennxb, -- nvarchar
				dbo.NhaXuatBan.DiaChi = @diachi -- nvarchar
			WHERE dbo.NhaXuatBan.MaNXB=@manxb
		END 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CapNhatSach]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_CapNhatSach]
@masach int, 
@tensach nvarchar(250), 
@giaban float, 
@namxb int,
@soluongton int, 
@manxb int, 
@matl int, 
@matg int
AS
BEGIN
	UPDATE dbo.Sach
	SET
	    --MaSach - this column value is auto-generated
	    dbo.Sach.TenSach = @tensach, -- nvarchar
	    dbo.Sach.GiaBan = @giaban, -- float
	    dbo.Sach.NamXB = @namxb, -- int
	    dbo.Sach.MaNXB = @manxb, -- int
		dbo.Sach.SoLuongTon = @soluongton,
	    dbo.Sach.MaTL = @matl, -- int
	    dbo.Sach.MaTG = @matg -- int
	WHERE dbo.Sach.MaSach=@masach
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CapNhatTacGia]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_CapNhatTacGia]
@matg int,
@tentg nvarchar(250),
@sdt varchar(20),
@diachi nvarchar(250)
AS
BEGIN
	IF (@matg!=28)
	BEGIN
		UPDATE dbo.TacGia
		SET
			--MaTG - this column value is auto-generated
			dbo.TacGia.TenTG = @tentg, -- nvarchar
			dbo.TacGia.SDT = @sdt, -- varchar
			dbo.TacGia.DiaChi = @diachi -- nvarchar
		WHERE dbo.TacGia.MaTG=@matg
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CapNhatTheLoai]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_CapNhatTheLoai]
@matl int,
@tentl nvarchar(250)
AS
BEGIN
	IF (@matl!=15)
	BEGIN
		UPDATE dbo.TheLoai
		SET
			--MaTL - this column value is auto-generated
			dbo.TheLoai.TenTL = @tentl -- nvarchar
		WHERE dbo.TheLoai.MaTL=@matl
	END 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CapNhatThongTinNhanVien]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_CapNhatThongTinNhanVien]
@manv int,
@tendangnhap varchar(100),
@hoten nvarchar(150),
@ngaysinh date,
@gioitinh bit,
@sdt varchar(20),
@diachi nvarchar(250)
AS
BEGIN
	UPDATE dbo.NhanVien
	SET
	    --MaNV - this column value is auto-generated
	    dbo.NhanVien.TenDangNhap = @tendangnhap, -- varchar
	    dbo.NhanVien.HoTen = @hoten, -- nvarchar
	    dbo.NhanVien.NgaySinh = @ngaysinh, -- date
	    dbo.NhanVien.GioiTinh = @gioitinh, -- bit
	    dbo.NhanVien.SDT = @sdt, -- varchar
	    dbo.NhanVien.DiaChi = @diachi -- nvarchar
	WHERE dbo.NhanVien.MaNV=@manv
END

GO
/****** Object:  StoredProcedure [dbo].[sp_DangNhap]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DangNhap]
@user varchar(100),
@pass varchar(1000)
AS
BEGIN
	SELECT * FROM dbo.NhanVien WHERE dbo.NhanVien.TenDangNhap=@user AND dbo.NhanVien.MatKhau=@pass
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DatLaiMatKhau]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DatLaiMatKhau]
@manv int
AS
BEGIN
	UPDATE dbo.NhanVien
	SET
	    --MaNV - this column value is auto-generated
	    dbo.NhanVien.MatKhau = 'e10adc3949ba59abbe56e057f20f883e' -- varchar
	WHERE dbo.NhanVien.MaNV=@manv
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DoiMatKhau]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DoiMatKhau]
@manv int,
@matkhaumoi varchar(1000)
AS
BEGIN
	UPDATE dbo.NhanVien
	SET
	    dbo.NhanVien.MatKhau=@matkhaumoi
	WHERE dbo.NhanVien.MaNV=@manv
END
GO
/****** Object:  StoredProcedure [dbo].[sp_KiemTraSoLuong]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_KiemTraSoLuong]
@masach int,
@soluongban int
AS
BEGIN
	SELECT iif(dbo.Sach.SoLuongTon-@soluongban>=0, 1 , 0) FROM dbo.Sach WHERE dbo.Sach.MaSach=@masach
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachHoaDon]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayDanhSachHoaDon]
@manv int,
@frmdate date,
@todate date
AS
BEGIN
	IF(@manv=1)
	BEGIN
		SELECT * FROM dbo.HoaDon WHERE dbo.HoaDon.NgayBan>=@frmdate AND dbo.HoaDon.NgayBan<=@todate
	END
	ELSE
	BEGIN
		SELECT * FROM dbo.HoaDon WHERE dbo.HoaDon.NgayBan>=@frmdate AND dbo.HoaDon.NgayBan<=@todate AND dbo.HoaDon.MaNV=@manv
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachNhanVien]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayDanhSachNhanVien]
@manv int
AS
BEGIN
	IF (@manv=1)
		SELECT dbo.NhanVien.MaNV, dbo.NhanVien.TenDangNhap, dbo.NhanVien.HoTen, dbo.NhanVien.NgaySinh, 
		dbo.NhanVien.GioiTinh, dbo.NhanVien.SDT, dbo.NhanVien.DiaChi FROM dbo.NhanVien 
		WHERE dbo.NhanVien.MaNV!=1
	ELSE 
	SELECT dbo.NhanVien.MaNV, dbo.NhanVien.TenDangNhap, dbo.NhanVien.HoTen, dbo.NhanVien.NgaySinh, 
		dbo.NhanVien.GioiTinh, dbo.NhanVien.SDT, dbo.NhanVien.DiaChi FROM dbo.NhanVien 
		WHERE dbo.NhanVien.MaNV!=1 AND dbo.NhanVien.MaNV NOT IN 
		(SELECT dbo.PhanQuyen.MaNV FROM dbo.PhanQuyen WHERE dbo.PhanQuyen.MaQuyen=1)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachNXB]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayDanhSachNXB]
AS
BEGIN
	SELECT * FROM dbo.NhaXuatBan WHERE dbo.NhaXuatBan.MaNXB!=20
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachPhanQuyen]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayDanhSachPhanQuyen]
AS
BEGIN
	SELECT * FROM dbo.PhanQuyen WHERE dbo.PhanQuyen.MaNV!=1
END

GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachPhieuNhap]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayDanhSachPhieuNhap]
@manv int,
@frmdate date,
@todate date
AS
BEGIN
	IF(@manv=1)
	SELECT * FROM dbo.PhieuNhap WHERE dbo.PhieuNhap.NgayNhap>=@frmdate AND dbo.PhieuNhap.NgayNhap<=@todate
	ELSE
	SELECT * FROM dbo.PhieuNhap WHERE dbo.PhieuNhap.MaNV=@manv AND dbo.PhieuNhap.NgayNhap>=@frmdate AND dbo.PhieuNhap.NgayNhap<=@todate
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachQuyen]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayDanhSachQuyen]
AS
BEGIN
	SELECT * FROM dbo.Quyen
END

GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachSach]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayDanhSachSach]
AS
BEGIN
	SELECT * FROM dbo.Sach
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachTacGia]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayDanhSachTacGia]
AS
BEGIN
	SELECT * FROM dbo.TacGia WHERE dbo.TacGia.MaTG!=28
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachTheLoai]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayDanhSachTheLoai]
AS
BEGIN
	SELECT * FROM dbo.TheLoai WHERE dbo.TheLoai.MaTL!=15
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDSSachBanChay]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayDSSachBanChay]
@frmdate date,
@todate date
AS
BEGIN
	SELECT dbo.Sach.TenSach AS [TenSach], dbo.Sach.GiaBan AS [GiaBan], sum(dbo.ChiTietHoaDon.SoLuongBan) AS [SoLuongBan], sum(dbo.Sach.GiaBan*dbo.ChiTietHoaDon.SoLuongBan) AS [TongTien] 
	FROM dbo.Sach, dbo.ChiTietHoaDon, dbo.HoaDon
	WHERE dbo.Sach.MaSach=dbo.ChiTietHoaDon.MaSach AND dbo.ChiTietHoaDon.MaHD=dbo.HoaDon.MaHD
	AND dbo.HoaDon.NgayBan>=@frmdate AND dbo.HoaDon.NgayBan<=@todate
	GROUP BY dbo.Sach.MaSach, dbo.Sach.TenSach, dbo.Sach.GiaBan ORDER BY sum(dbo.ChiTietHoaDon.SoLuongBan) DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDSSachChiTiet]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayDSSachChiTiet]
AS
BEGIN
	SELECT dbo.Sach.MaSach, dbo.Sach.TenSach, dbo.Sach.GiaBan, dbo.Sach.NamXB, dbo.Sach.SoLuongTon, dbo.NhaXuatBan.TenNXB, dbo.TheLoai.TenTL, dbo.TacGia.TenTG FROM dbo.Sach, dbo.NhaXuatBan, dbo.TheLoai, dbo.TacGia 
	WHERE dbo.Sach.MaNXB=dbo.NhaXuatBan.MaNXB AND dbo.Sach.MaTL=dbo.TheLoai.MaTL AND dbo.Sach.MaTG=dbo.TacGia.MaTG
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayHoaDonMoiNhat]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayHoaDonMoiNhat]
AS
BEGIN
	SELECT max(dbo.HoaDon.MaHD) FROM dbo.HoaDon
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayHoaDonThang]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayHoaDonThang]
@manv int,
@thang int
AS 
BEGIN
	DECLARE @quyen int = 0
	SELECT @quyen=dbo.PhanQuyen.MaQuyen FROM dbo.PhanQuyen WHERE dbo.PhanQuyen.MaNV=@manv

	IF (@quyen=1)
	BEGIN
		SELECT top 10 dbo.HoaDon.MaHD, sum(dbo.ChiTietHoaDon.SoLuongBan) AS [SoLuongBan], dbo.HoaDon.GiamGia, sum(dbo.Sach.GiaBan*dbo.ChiTietHoaDon.SoLuongBan*(1-dbo.HoaDon.GiamGia*0.01)) AS [DoanhThu] 
		FROM dbo.HoaDon, dbo.ChiTietHoaDon, dbo.Sach
		WHERE month(dbo.HoaDon.NgayBan)=@thang AND dbo.HoaDon.MaHD=dbo.ChiTietHoaDon.MaHD AND dbo.ChiTietHoaDon.MaSach=dbo.Sach.MaSach
		GROUP BY dbo.HoaDon.MaHD, dbo.HoaDon.GiamGia
	END
	ELSE 
	BEGIN
		SELECT top 10 dbo.HoaDon.MaHD, sum(dbo.ChiTietHoaDon.SoLuongBan) AS [SoLuongBan], dbo.HoaDon.GiamGia, sum(dbo.Sach.GiaBan*dbo.ChiTietHoaDon.SoLuongBan*(1-dbo.HoaDon.GiamGia*0.01)) AS [DoanhThu] 
		FROM dbo.HoaDon, dbo.ChiTietHoaDon, dbo.Sach
		WHERE month(dbo.HoaDon.NgayBan)=@thang AND dbo.HoaDon.MaHD=dbo.ChiTietHoaDon.MaHD AND dbo.ChiTietHoaDon.MaSach=dbo.Sach.MaSach AND dbo.HoaDon.MaNV=@manv
		GROUP BY dbo.HoaDon.MaHD, dbo.HoaDon.GiamGia
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayHoaDonTheoMa]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[sp_LayHoaDonTheoMa]
@mahd int
AS
BEGIN
	SELECT * FROM dbo.HoaDon WHERE dbo.HoaDon.MaHD=@mahd
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayMaPNMoiNhat]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayMaPNMoiNhat]
AS
BEGIN
	SELECT max(dbo.PhieuNhap.MaPN) FROM dbo.PhieuNhap
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayNhanVienTheoMa]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayNhanVienTheoMa]
@manv int
AS
BEGIN
	SELECT dbo.NhanVien.MaNV, dbo.NhanVien.TenDangNhap, dbo.NhanVien.HoTen, dbo.NhanVien.NgaySinh, 
	dbo.NhanVien.GioiTinh, dbo.NhanVien.SDT, dbo.NhanVien.DiaChi FROM dbo.NhanVien WHERE dbo.NhanVien.MaNV=@manv
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayNXBTheoMa]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayNXBTheoMa]
@manxb int
AS
BEGIN
	SELECT * FROM dbo.NhaXuatBan WHERE dbo.NhaXuatBan.MaNXB=@manxb 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayPhanQuyenTheoMaNV]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayPhanQuyenTheoMaNV]
@manv int
AS
BEGIN
	SELECT * FROM dbo.PhanQuyen WHERE dbo.PhanQuyen.MaNV=@manv
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayPhieuNhapTheoMa]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayPhieuNhapTheoMa]
@mapn int
AS
BEGIN
	SELECT * FROM dbo.PhieuNhap WHERE dbo.PhieuNhap.MaPN=@mapn
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LaySachBanChayThang]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LaySachBanChayThang]
@manv int,
@thang int
AS
BEGIN
	DECLARE @quyen int = 0
	SELECT @quyen=dbo.PhanQuyen.MaQuyen FROM dbo.PhanQuyen WHERE dbo.PhanQuyen.MaNV=@manv

	IF (@quyen=1)
	BEGIN
		SELECT TOP 10 dbo.Sach.TenSach, sum(dbo.ChiTietHoaDon.SoLuongBan) AS [SoLuongBan], dbo.Sach.SoLuongTon 
		FROM dbo.Sach, dbo.HoaDon, dbo.ChiTietHoaDon
		WHERE dbo.HoaDon.MaHD=dbo.ChiTietHoaDon.MaHD AND dbo.Sach.MaSach=dbo.ChiTietHoaDon.MaSach
		AND month(dbo.HoaDon.NgayBan)=@thang
		GROUP BY dbo.Sach.TenSach, dbo.Sach.SoLuongTon
	END
	ELSE
	BEGIN
		SELECT TOP 10 dbo.Sach.TenSach, sum(dbo.ChiTietHoaDon.SoLuongBan) AS [SoLuongBan], dbo.Sach.SoLuongTon 
		FROM dbo.Sach, dbo.HoaDon, dbo.ChiTietHoaDon
		WHERE dbo.HoaDon.MaHD=dbo.ChiTietHoaDon.MaHD AND dbo.Sach.MaSach=dbo.ChiTietHoaDon.MaSach
		AND month(dbo.HoaDon.NgayBan)=@thang AND dbo.HoaDon.MaNV=@manv
		GROUP BY dbo.Sach.TenSach, dbo.Sach.SoLuongTon
	END
END

GO
/****** Object:  StoredProcedure [dbo].[sp_LaySachNhap]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LaySachNhap]
@frmdate date,
@todate date
AS
BEGIN
	SELECT dbo.Sach.TenSach AS [TenSach], dbo.Sach.GiaBan AS [GiaBan], sum(dbo.ChiTietPhieuNhap.SoLuongNhap) AS [SoLuongNhap], sum(dbo.Sach.GiaBan*dbo.ChiTietPhieuNhap.SoLuongNhap) AS [TongTien]
	FROM dbo.Sach, dbo.PhieuNhap, dbo.ChiTietPhieuNhap 
	WHERE dbo.Sach.MaSach=dbo.ChiTietPhieuNhap.MaSach AND dbo.PhieuNhap.MaPN=dbo.ChiTietPhieuNhap.MaPN AND dbo.PhieuNhap.MaPN=dbo.ChiTietPhieuNhap.MaPN
	AND dbo.PhieuNhap.NgayNhap>=@frmdate AND dbo.PhieuNhap.NgayNhap<=@todate
	GROUP BY dbo.Sach.MaSach, dbo.Sach.TenSach, dbo.Sach.GiaBan
	ORDER BY SoLuongNhap DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LaySachTheoMa]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LaySachTheoMa]
@masach int
AS
BEGIN
	SELECT * FROM dbo.Sach WHERE dbo.Sach.MaSach=@masach
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LaySachTonKho]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LaySachTonKho]
@frmdate date,
@todate date
AS
BEGIN
	SELECT dbo.Sach.TenSach AS [TenSach], dbo.Sach.GiaBan AS [GiaBan], dbo.Sach.SoLuongTon AS [SoLuongTon], (dbo.Sach.GiaBan*dbo.Sach.SoLuongTon) AS [TongTien]
	FROM dbo.Sach
	WHERE dbo.Sach.MaSach NOT IN 
	(SELECT MaSach FROM dbo.ChiTietHoaDon, dbo.HoaDon WHERE dbo.ChiTietHoaDon.MaHD=dbo.HoaDon.MaHD AND dbo.HoaDon.NgayBan>=@frmdate AND dbo.HoaDon.NgayBan<=@todate)
	ORDER BY dbo.Sach.SoLuongTon DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LaySoLuongSachHD]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LaySoLuongSachHD]
@mahd int
AS
BEGIN
	SELECT sum(dbo.ChiTietHoaDon.SoLuongBan) FROM dbo.ChiTietHoaDon WHERE dbo.ChiTietHoaDon.MaHD=@mahd
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LaySoLuongSachTheoMaPN]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LaySoLuongSachTheoMaPN]
@mapn int
AS
BEGIN
	SELECT sum(dbo.ChiTietPhieuNhap.SoLuongNhap) FROM dbo.ChiTietPhieuNhap WHERE dbo.ChiTietPhieuNhap.MaPN=@mapn
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayTenNhanVienTheoMa]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayTenNhanVienTheoMa]
@manv int
AS
BEGIN
	SELECT dbo.NhanVien.HoTen FROM dbo.NhanVien WHERE dbo.NhanVien.MaNV=@manv
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayTenQuyenTheoMa]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayTenQuyenTheoMa]
@maquyen int
AS
BEGIN
	SELECT dbo.Quyen.TenQuyen FROM dbo.Quyen WHERE dbo.Quyen.MaQuyen=@maquyen
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayTGTheoMa]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayTGTheoMa]
@matg int
AS
BEGIN
	SELECT * FROM dbo.TacGia WHERE dbo.TacGia.MaTG=@matg
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayThongTinNhanVien]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayThongTinNhanVien]
@tendangnhap varchar(150),
@matkhau varchar(1000)
AS
BEGIN
	SELECT dbo.NhanVien.MaNV, dbo.NhanVien.TenDangNhap, dbo.NhanVien.HoTen, dbo.NhanVien.NgaySinh, 
	dbo.NhanVien.GioiTinh, dbo.NhanVien.SDT, dbo.NhanVien.DiaChi FROM dbo.NhanVien 
	WHERE dbo.NhanVien.TenDangNhap=@tendangnhap AND dbo.NhanVien.MatKhau=@matkhau
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayThongTinTong]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayThongTinTong]
@manv int,
@thang int,
@nam int
AS
BEGIN
	DECLARE @sach int = 0
	DECLARE @hoadon int = 0
	DECLARE @phieunhap int = 0
	DECLARE @nhanvien int = 0
	DECLARE @doanhthu float = 0
	DECLARE @quyen int
	
	SELECT @quyen=dbo.PhanQuyen.MaQuyen FROM dbo.PhanQuyen WHERE dbo.PhanQuyen.MaNV=@manv

	SELECT @sach=count(dbo.Sach.MaSach) FROM dbo.Sach

	IF (@quyen=1) 
	BEGIN 
		SELECT @hoadon=count(dbo.HoaDon.MaHD) FROM dbo.HoaDon WHERE month(dbo.HoaDon.NgayBan)=@thang AND year(dbo.HoaDon.NgayBan)=@nam
		SELECT @phieunhap=count(dbo.PhieuNhap.MaPN) FROM dbo.PhieuNhap WHERE month(dbo.PhieuNhap.NgayNhap)=@thang AND year(dbo.PhieuNhap.NgayNhap)=@nam
		SELECT @nhanvien=count(dbo.NhanVien.MaNV) FROM dbo.NhanVien
		SELECT @doanhthu=(sum(dbo.Sach.GiaBan*dbo.ChiTietHoaDon.SoLuongBan*(1-dbo.HoaDon.GiamGia*0.01))) FROM dbo.HoaDon, dbo.ChiTietHoaDon, dbo.Sach 
		WHERE dbo.HoaDon.MaHD=dbo.ChiTietHoaDon.MaHD AND dbo.ChiTietHoaDon.MaSach=dbo.Sach.MaSach AND month(dbo.HoaDon.NgayBan)=@thang AND year(dbo.HoaDon.NgayBan)=@nam
	END 
	ELSE 
	BEGIN 
		SELECT @hoadon=count(dbo.HoaDon.MaHD) FROM dbo.HoaDon WHERE month(dbo.HoaDon.NgayBan)=@thang AND dbo.HoaDon.MaNV=@manv AND year(dbo.HoaDon.NgayBan)=@nam
		SELECT @phieunhap=count(dbo.PhieuNhap.MaPN) FROM dbo.PhieuNhap WHERE month(dbo.PhieuNhap.NgayNhap)=@thang AND dbo.PhieuNhap.MaNV=@manv AND year(dbo.PhieuNhap.NgayNhap)=@nam
		SELECT @nhanvien=-1
		SELECT @doanhthu=(sum(dbo.Sach.GiaBan*dbo.ChiTietHoaDon.SoLuongBan*(1-dbo.HoaDon.GiamGia*0.01))) FROM dbo.HoaDon, dbo.ChiTietHoaDon, dbo.Sach, dbo.NhanVien 
		WHERE dbo.HoaDon.MaHD=dbo.ChiTietHoaDon.MaHD AND dbo.ChiTietHoaDon.MaSach=dbo.Sach.MaSach AND month(dbo.HoaDon.NgayBan)=@thang AND dbo.NhanVien.MaNV=dbo.HoaDon.MaNV AND dbo.HoaDon.MaNV=@manv AND year(dbo.HoaDon.NgayBan)=@nam
	END 
		
	SELECT @sach AS [SoSach], @hoadon AS [SoHD], @phieunhap AS [SoPN], @nhanvien AS [soNV], iif(@doanhthu>=0,@doanhthu,0) AS [DoanhThu]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayTLTheoMa]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayTLTheoMa]
@matl int
AS
BEGIN
	SELECT * FROM dbo.TheLoai WHERE dbo.TheLoai.MaTL=@matl
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayTongTienHD]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayTongTienHD]
@mahd int
AS
BEGIN
	SELECT sum(dbo.Sach.GiaBan*dbo.ChiTietHoaDon.SoLuongBan*(100-dbo.HoaDon.GiamGia)/100) FROM dbo.Sach, dbo.ChiTietHoaDon, dbo.HoaDon 
	WHERE dbo.Sach.MaSach=dbo.ChiTietHoaDon.MaSach AND dbo.ChiTietHoaDon.MaHD=dbo.HoaDon.MaHD 
	AND dbo.HoaDon.MaHD=@mahd
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaDoiQuyen]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_SuaDoiQuyen]
@manv int,
@maquyen int
AS
BEGIN
	UPDATE dbo.PhanQuyen
	SET
	    dbo.PhanQuyen.MaQuyen = @maquyen -- int
	WHERE dbo.PhanQuyen.MaNV = @manv
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemChiTietHoaDon]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemChiTietHoaDon]
@mahd int,
@masach int,
@soluongban int
AS
BEGIN
	INSERT INTO dbo.ChiTietHoaDon
	(
	    --MaCTHD - this column value is auto-generated
	    MaHD,
	    MaSach,
	    SoLuongBan
	)
	VALUES
	(
	    -- MaCTHD - int
	    @mahd, -- MaHD - int
	    @masach, -- MaSach - int
	    @soluongban -- SoLuongBan - int
	)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemChiTietPN]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemChiTietPN]
@mapn int,
@soluongnhap int,
@manv int
AS
BEGIN
	INSERT INTO dbo.ChiTietPhieuNhap
	(
	    --MaCTPN - this column value is auto-generated
	    MaPN,
	    MaSach,
	    SoLuongNhap
	)
	VALUES
	(
	    -- MaCTPN - int
	    @mapn, -- MaPN - int
	    @soluongnhap, -- MaSach - int
	    @manv -- SoLuongNhap - int
	)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemHoaDon]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemHoaDon]
@ngayban date,
@giamgia int,
@manv int
AS
BEGIN
	INSERT INTO dbo.HoaDon
	(
	    --MaHD - this column value is auto-generated
	    NgayBan,
	    GiamGia,
	    MaNV
	)
	VALUES
	(
	    -- MaHD - int
	    @ngayban, -- NgayBan - date
	    @giamgia, -- GiamGia - int
	    @manv -- MaNV - int
	)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemNhanVien]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemNhanVien]
@tendangnhap varchar(100), 
@hoten nvarchar(150), 
@ngaysinh date, 
@gioitinh bit, 
@sdt varchar(20), 
@diachi nvarchar(250)
AS
BEGIN
	INSERT INTO dbo.NhanVien
	(
	    --MaNV - this column value is auto-generated
	    TenDangNhap,
	    MatKhau,
	    HoTen,
	    NgaySinh,
	    GioiTinh,
	    SDT,
	    DiaChi
	)
	VALUES
	(
	    -- MaNV - int
	    @tendangnhap, -- TenDangNhap - varchar
	    '123456', -- MatKhau - varchar
	    @hoten, -- HoTen - nvarchar
	    @ngaysinh, -- NgaySinh - date
	    @gioitinh, -- GioiTinh - bit
	    @sdt, -- SDT - varchar
	    @diachi -- DiaChi - nvarchar
	)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_ThemNhaXuatBan]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemNhaXuatBan]
@tennxb nvarchar(250),
@diachi nvarchar(250)
AS
BEGIN
	INSERT INTO dbo.NhaXuatBan
	(
	    --MaNXB - this column value is auto-generated
	    TenNXB,
	    DiaChi
	)
	VALUES
	(
	    -- MaNXB - int
	    @tennxb, -- TenNXB - nvarchar
	    @diachi -- DiaChi - nvarchar
	)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_ThemPhieuNhap]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemPhieuNhap]
@ngaynhap date,
@manv int
AS
BEGIN
	INSERT INTO dbo.PhieuNhap
	(
	    --MaPN - this column value is auto-generated
	    NgayNhap,
	    MaNV
	)
	VALUES
	(
	    -- MaPN - int
	    @ngaynhap, -- NgayNhap - date
	    @manv -- MaNV - int
	)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemSach]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemSach]
@tensach nvarchar(250), 
@giaban float, 
@namxb int,
@manxb int, 
@matl int, 
@matg int
AS
BEGIN
	INSERT INTO dbo.Sach
	(
	    --MaSach - this column value is auto-generated
	    TenSach,
	    GiaBan,
	    NamXB,
	    MaNXB,
	    MaTL,
	    MaTG
	)
	VALUES
	(
	    -- MaSach - int
	    @tensach, -- TenSach - nvarchar
	    @giaban, -- GiaBan - float
	    @namxb, -- NamXB - int
	    @manxb, -- MaNXB - int
	    @matl, -- MaTL - int
	    @matg -- MaTG - int
	)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_ThemTacGia]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemTacGia]
@tentg nvarchar(250),
@sdt varchar(20),
@diachi nvarchar(250)
AS
BEGIN
	INSERT INTO dbo.TacGia
	(
	    --MaTG - this column value is auto-generated
	    TenTG,
	    SDT,
	    DiaChi
	)
	VALUES
	(
	    -- MaTG - int
	    @tentg, -- TenTG - nvarchar
	    @sdt, -- SDT - varchar
	    @diachi -- DiaChi - nvarchar
	)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemTheLoai]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemTheLoai]
@tentl nvarchar(250)
AS
BEGIN
	INSERT INTO dbo.TheLoai
	(
	    --MaTL - this column value is auto-generated
	    TenTL
	)
	VALUES
	(
	    -- MaTL - int
	    @tentl -- TenTL - nvarchar
	)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_TimDanhSachPhanQuyen]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TimDanhSachPhanQuyen]
@chuoi nvarchar(150)
AS
BEGIN
	SELECT dbo.PhanQuyen.MaNV, dbo.PhanQuyen.MaQuyen FROM dbo.PhanQuyen, dbo.NhanVien 
	WHERE dbo.PhanQuyen.MaNV!=1 AND dbo.NhanVien.HoTen LIKE @chuoi AND dbo.PhanQuyen.MaNV=dbo.NhanVien.MaNV
END
GO
/****** Object:  StoredProcedure [dbo].[sp_TimNhanVien]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TimNhanVien]
@manv int,
@chuoi nvarchar(150)
AS
BEGIN

	IF (@manv=1)
		SELECT dbo.NhanVien.MaNV, dbo.NhanVien.TenDangNhap, dbo.NhanVien.HoTen, dbo.NhanVien.NgaySinh, 
		dbo.NhanVien.GioiTinh, dbo.NhanVien.SDT, dbo.NhanVien.DiaChi FROM dbo.NhanVien 
		WHERE dbo.NhanVien.MaNV!=1 AND dbo.NhanVien.HoTen LIKE @chuoi
	ELSE 
		SELECT dbo.NhanVien.MaNV, dbo.NhanVien.TenDangNhap, dbo.NhanVien.HoTen, dbo.NhanVien.NgaySinh, 
		dbo.NhanVien.GioiTinh, dbo.NhanVien.SDT, dbo.NhanVien.DiaChi FROM dbo.NhanVien 
		WHERE dbo.NhanVien.MaNV!=1 AND dbo.NhanVien.HoTen LIKE @chuoi AND dbo.NhanVien.MaNV NOT IN 
		(SELECT dbo.PhanQuyen.MaNV FROM dbo.PhanQuyen WHERE dbo.PhanQuyen.MaQuyen=1)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_TimNhaXuatBan]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TimNhaXuatBan]
@chuoi nvarchar(150)
AS
BEGIN
	SELECT * FROM dbo.NhaXuatBan WHERE dbo.NhaXuatBan.TenNXB LIKE @chuoi AND dbo.NhaXuatBan.MaNXB!=20
END

GO
/****** Object:  StoredProcedure [dbo].[sp_TimSach]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TimSach]
@chuoi nvarchar(150)
AS
BEGIN
	SELECT * FROM dbo.Sach WHERE dbo.Sach.TenSach LIKE @chuoi
END

GO
/****** Object:  StoredProcedure [dbo].[sp_TimTacGia]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TimTacGia]
@chuoi nvarchar(250)
AS
BEGIN
	SELECT * FROM dbo.TacGia WHERE dbo.TacGia.TenTG LIKE @chuoi AND dbo.TacGia.MaTG!=28
END

GO
/****** Object:  StoredProcedure [dbo].[sp_TimTheLoai]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TimTheLoai]
@chuoi nvarchar(250)
AS
BEGIN
	SELECT * FROM dbo.TheLoai WHERE dbo.TheLoai.TenTL LIKE @chuoi AND dbo.TheLoai.MaTL!=15
END
GO
/****** Object:  StoredProcedure [dbo].[sp_TinhTongTienTheoMaPN]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TinhTongTienTheoMaPN]
@mapn int
AS
BEGIN
	SELECT sum(dbo.Sach.GiaBan*dbo.ChiTietPhieuNhap.SoLuongNhap) FROM dbo.ChiTietPhieuNhap, dbo.Sach, dbo.PhieuNhap 
	WHERE dbo.ChiTietPhieuNhap.MaPN=dbo.PhieuNhap.MaPN AND dbo.ChiTietPhieuNhap.MaSach=dbo.Sach.MaSach
	AND dbo.PhieuNhap.MaPN=@mapn
END
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaHoaDon]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_XoaHoaDon]
@mahd int
AS 
BEGIN
	DELETE FROM dbo.ChiTietHoaDon WHERE dbo.ChiTietHoaDon.MaHD=@mahd
	DELETE FROM dbo.HoaDon WHERE dbo.HoaDon.MaHD=@mahd
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaNhanVien]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_XoaNhanVien]
@manv int
AS
BEGIN
	UPDATE dbo.HoaDon
	SET
	    dbo.HoaDon.MaNV = 1 -- int
	WHERE dbo.HoaDon.MaNV=@manv
	UPDATE dbo.PhieuNhap
	SET
	    dbo.PhieuNhap.MaNV = 1 -- int
	WHERE dbo.PhieuNhap.MaNV=@manv
	DELETE FROM dbo.PhanQuyen WHERE dbo.PhanQuyen.MaNV=@manv
	DELETE FROM dbo.NhanVien WHERE dbo.NhanVien.MaNV=@manv
END
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaNhaXuatBan]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_XoaNhaXuatBan]
@manxb int
AS
BEGIN
	IF (@manxb!=20)
		BEGIN 
			UPDATE dbo.Sach
			SET
			    dbo.Sach.MaNXB = 20 -- int
			WHERE dbo.Sach.MaNXB=@manxb
			DELETE FROM dbo.NhaXuatBan WHERE dbo.NhaXuatBan.MaNXB=@manxb
		END 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaSach]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_XoaSach]
@masach int
AS
BEGIN
	DELETE FROM dbo.ChiTietHoaDon WHERE dbo.ChiTietHoaDon.MaSach=@masach
	DELETE FROM dbo.ChiTietPhieuNhap WHERE dbo.ChiTietPhieuNhap.MaSach=@masach
	DELETE FROM dbo.Sach WHERE dbo.Sach.MaSach=@masach
	DELETE FROM dbo.HoaDon WHERE dbo.HoaDon.MaHD NOT IN 
		(SELECT dbo.ChiTietHoaDon.MaHD FROM dbo.ChiTietHoaDon)
	DELETE FROM dbo.PhieuNhap WHERE dbo.PhieuNhap.MaPN NOT IN 
		(SELECT dbo.ChiTietPhieuNhap.MaPN FROM dbo.ChiTietPhieuNhap)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_XoaTacGia]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_XoaTacGia]
@matg int
AS
BEGIN
	IF (@matg!=28)
	BEGIN
		UPDATE dbo.Sach
		SET
		    dbo.Sach.MaTG = 28 -- int
		WHERE dbo.Sach.MaTG=@matg
		DELETE FROM dbo.TacGia WHERE dbo.TacGia.MaTG=@matg
	END 
END

GO
/****** Object:  StoredProcedure [dbo].[sp_XoaTheLoai]    Script Date: 6/22/2021 4:20:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_XoaTheLoai]
@matl int
AS
BEGIN
	IF (@matl!=15)
		BEGIN 
			UPDATE dbo.Sach
			SET
			    dbo.Sach.MaTL = 15 -- int
			WHERE dbo.Sach.MaTL=@matl
			DELETE FROM dbo.TheLoai WHERE dbo.TheLoai.MaTL=@matl
		END 
END
GO
USE [master]
GO
ALTER DATABASE [CuaHangSach] SET  READ_WRITE 
GO

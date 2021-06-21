USE [master]
GO
/****** Object:  Database [CuaHangSach]    Script Date: 12/19/2018 2:04:08 PM ******/
CREATE DATABASE [CuaHangSach]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CuaHangSach', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\CuaHangSach.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CuaHangSach_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\CuaHangSach_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
ALTER DATABASE [CuaHangSach] SET QUERY_STORE = OFF
GO
USE [CuaHangSach]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 12/19/2018 2:04:08 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 12/19/2018 2:04:08 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/19/2018 2:04:08 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/19/2018 2:04:08 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 12/19/2018 2:04:08 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 12/19/2018 2:04:08 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 12/19/2018 2:04:08 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 12/19/2018 2:04:08 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 12/19/2018 2:04:08 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 12/19/2018 2:04:08 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 12/19/2018 2:04:08 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (1, 1, 2, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (2, 1, 3, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (3, 1, 5, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (4, 1, 7, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (5, 2, 2, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (6, 2, 1, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (7, 2, 8, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (8, 3, 4, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (9, 3, 6, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (10, 3, 10, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (11, 3, 11, 6)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (12, 4, 10, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (13, 4, 5, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (14, 4, 3, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (15, 5, 7, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (16, 5, 11, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (17, 5, 9, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (18, 6, 6, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (19, 6, 1, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (20, 6, 5, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (21, 7, 5, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (22, 7, 9, 3)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (23, 7, 4, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (24, 7, 2, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (25, 7, 10, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (26, 8, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (27, 8, 2, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (28, 8, 6, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (29, 9, 7, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (30, 10, 8, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (31, 11, 8, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (32, 11, 13, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (33, 11, 2, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (34, 11, 1, 11)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (35, 12, 3, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (36, 12, 6, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (37, 12, 7, 3)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (38, 13, 5, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (39, 13, 15, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (40, 14, 3, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (41, 15, 5, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (42, 16, 4, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (43, 16, 8, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (44, 17, 3, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (45, 17, 17, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (46, 18, 17, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (47, 18, 14, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (48, 19, 4, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (49, 19, 8, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (50, 19, 10, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (51, 20, 8, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (52, 20, 17, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (53, 20, 6, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (54, 21, 17, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (55, 22, 17, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (56, 23, 7, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (57, 23, 3, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (58, 23, 8, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (59, 24, 13, 20)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (60, 24, 8, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (61, 24, 6, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (62, 25, 10, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (63, 25, 6, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (64, 25, 17, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (65, 25, 16, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (66, 26, 9, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (67, 26, 14, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (68, 26, 3, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (69, 27, 14, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (70, 27, 3, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (71, 27, 2, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (72, 27, 1, 4)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (73, 28, 6, 15)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (74, 28, 13, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (75, 29, 8, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (76, 29, 11, 20)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (77, 29, 19, 12)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (78, 29, 21, 15)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (79, 30, 20, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (80, 30, 9, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (81, 30, 22, 20)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (82, 31, 11, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (83, 31, 17, 20)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (84, 31, 6, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (85, 31, 20, 6)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (86, 32, 8, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (87, 32, 16, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (88, 32, 20, 15)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (89, 33, 21, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (90, 33, 1, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (91, 33, 5, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (92, 33, 9, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (93, 33, 13, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (94, 33, 16, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (95, 34, 17, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (96, 35, 15, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (97, 35, 9, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (98, 35, 2, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (99, 36, 7, 5)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (100, 36, 16, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (101, 36, 1, 12)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (102, 36, 11, 20)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (103, 37, 8, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (104, 38, 10, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (105, 38, 17, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (106, 38, 20, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (107, 39, 6, 21)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (108, 39, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (109, 39, 3, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (110, 40, 11, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (111, 40, 9, 4)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (112, 40, 10, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (113, 41, 6, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (114, 41, 11, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (115, 41, 15, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (116, 42, 5, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (117, 42, 19, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (118, 42, 22, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (119, 42, 10, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (120, 42, 4, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (121, 43, 11, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (122, 43, 2, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (123, 43, 3, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (124, 43, 20, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (125, 44, 4, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (126, 44, 9, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (127, 44, 1, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (128, 45, 4, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (129, 45, 10, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (130, 45, 15, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (131, 45, 21, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (132, 46, 14, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (133, 47, 5, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (134, 47, 10, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (135, 47, 1, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (136, 48, 19, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (137, 48, 3, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (138, 49, 20, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (139, 50, 22, 15)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (140, 50, 16, 15)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (141, 51, 5, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (142, 51, 2, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (143, 51, 1, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (144, 52, 19, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (145, 52, 22, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (146, 53, 22, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (147, 53, 9, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (148, 53, 5, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (149, 54, 22, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (150, 54, 21, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (151, 54, 16, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (152, 54, 17, 8)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (153, 54, 2, 4)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (154, 55, 7, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (155, 55, 2, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (156, 55, 1, 4)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (157, 55, 11, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (158, 56, 11, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (159, 56, 15, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (160, 56, 9, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (161, 57, 1, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (162, 57, 4, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (163, 57, 6, 15)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (164, 58, 8, 13)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (165, 58, 4, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (166, 59, 4, 25)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (167, 59, 9, 20)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (168, 59, 17, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (169, 60, 4, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (170, 61, 8, 12)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (171, 62, 22, 15)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (172, 63, 21, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (173, 63, 7, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (174, 63, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (175, 64, 22, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (176, 65, 14, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (177, 65, 7, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (180, 68, 22, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (183, 70, 23, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (187, 72, 23, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (188, 73, 8, 11)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (189, 74, 7, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (191, 76, 4, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (192, 76, 6, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (193, 77, 3, 52)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (194, 78, 11, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (195, 78, 14, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (196, 78, 20, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (197, 79, 2, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (198, 79, 13, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (199, 79, 15, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (200, 79, 20, 3)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (201, 80, 11, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (202, 81, 17, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (203, 81, 14, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (204, 82, 9, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (205, 82, 14, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (206, 83, 7, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (207, 84, 7, 2)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (208, 85, 6, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (209, 85, 3, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (210, 85, 11, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (211, 86, 16, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (212, 86, 5, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (213, 86, 4, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (214, 87, 14, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (215, 88, 13, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (216, 89, 3, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (217, 89, 9, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (218, 89, 17, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (219, 89, 23, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (220, 90, 4, 12)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (221, 90, 10, 12)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (222, 91, 6, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (223, 91, 2, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (224, 91, 11, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (225, 92, 20, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (226, 92, 4, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (227, 92, 2, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (228, 93, 20, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (229, 93, 6, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (230, 94, 14, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (231, 94, 7, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (232, 95, 14, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (233, 95, 9, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (234, 95, 11, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (235, 96, 11, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (236, 96, 5, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (237, 96, 3, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (238, 97, 7, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (239, 98, 1, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (240, 99, 11, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (241, 100, 10, 13)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (242, 100, 11, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (243, 100, 13, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (244, 101, 19, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (245, 102, 19, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (246, 103, 21, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (247, 104, 16, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (248, 105, 2, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (249, 105, 22, 8)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (250, 106, 14, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (251, 107, 5, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (252, 107, 3, 20)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (253, 108, 23, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (254, 108, 9, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (255, 109, 16, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (256, 109, 6, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (257, 110, 9, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (258, 110, 8, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (259, 111, 19, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (260, 112, 7, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (261, 113, 5, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (262, 113, 8, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (263, 114, 8, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (264, 115, 11, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (265, 116, 16, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (266, 116, 5, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (267, 116, 2, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (268, 117, 7, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (269, 117, 5, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (270, 117, 2, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (271, 117, 16, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (272, 117, 21, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (273, 118, 5, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (274, 118, 15, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (275, 118, 11, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (276, 119, 17, 4)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (277, 119, 23, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (278, 119, 9, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (279, 120, 9, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (280, 121, 5, 7)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (281, 122, 6, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (282, 122, 3, 12)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (283, 123, 7, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (284, 123, 8, 4)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (285, 123, 14, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (286, 124, 19, 15)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (287, 125, 8, 20)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (288, 125, 1, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (289, 125, 13, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (290, 125, 17, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (291, 126, 22, 15)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (292, 126, 5, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (293, 126, 7, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (294, 127, 3, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (295, 127, 13, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (296, 127, 1, 10)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (297, 128, 16, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (298, 128, 1, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSach], [SoLuongBan]) VALUES (299, 128, 5, 7)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhap] ON 

INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (1, 3, 3, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (2, 3, 4, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (3, 3, 7, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (4, 4, 8, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (5, 5, 11, 20)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (6, 6, 8, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (7, 7, 7, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (8, 7, 3, 2)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (9, 7, 1, 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (10, 7, 11, 7)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (11, 7, 10, 9)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (12, 8, 11, 13)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (13, 9, 5, 20)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (14, 9, 8, 20)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (15, 9, 9, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (16, 10, 13, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (17, 10, 14, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (18, 10, 15, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (19, 10, 16, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (20, 10, 17, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (21, 11, 6, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (22, 11, 14, 17)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (23, 11, 17, 15)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (24, 11, 1, 9)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (25, 12, 6, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (26, 12, 15, 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (27, 12, 9, 7)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (28, 13, 19, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (29, 13, 20, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (30, 13, 21, 150)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (31, 13, 22, 150)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (32, 14, 1, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (33, 14, 2, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (34, 14, 6, 200)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (35, 14, 8, 15)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (36, 14, 13, 20)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (37, 14, 14, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (38, 14, 16, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (39, 14, 17, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (40, 15, 2, 2)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (41, 15, 5, 2)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (42, 15, 1, 2)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (43, 16, 7, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (44, 17, 6, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (45, 17, 2, 2)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (46, 17, 13, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (47, 17, 17, 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (48, 18, 15, 20)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (49, 19, 15, 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (50, 19, 1, 2)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (51, 19, 20, 7)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (52, 20, 6, 1)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (53, 20, 5, 12)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (54, 20, 19, 23)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (55, 20, 20, 12)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (56, 21, 11, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (57, 21, 23, 25)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (58, 21, 20, 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (59, 21, 6, 7)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (60, 22, 13, 7)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (61, 22, 3, 7)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (62, 22, 2, 7)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (63, 22, 10, 2)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (64, 22, 11, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (65, 22, 19, 15)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (70, 26, 23, 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (72, 27, 23, 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (75, 29, 23, 2)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (77, 31, 22, 8)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (78, 32, 6, 7)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (79, 33, 8, 7)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (80, 34, 2, 2)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (81, 34, 7, 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (82, 35, 3, 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (83, 35, 5, 2)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (84, 36, 8, 2)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (85, 37, 17, 15)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (86, 37, 11, 15)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (87, 38, 5, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (88, 38, 15, 15)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (89, 38, 19, 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (90, 38, 6, 7)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (91, 39, 16, 12)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (92, 40, 6, 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (93, 40, 5, 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (94, 40, 8, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (95, 40, 9, 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (96, 41, 10, 25)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (97, 42, 23, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (98, 43, 6, 1)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (99, 43, 3, 1)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (100, 43, 19, 1)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (101, 44, 3, 2)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (102, 44, 2, 1)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (103, 44, 9, 1)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (104, 44, 6, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (105, 45, 7, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (106, 45, 2, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (107, 45, 15, 10)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (108, 46, 22, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (109, 46, 4, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (110, 46, 1, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (111, 46, 13, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (112, 47, 3, 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (113, 48, 3, 21)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSach], [SoLuongNhap]) VALUES (114, 48, 11, 100)
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhap] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (1, CAST(N'2018-10-23' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (2, CAST(N'2018-10-23' AS Date), 20, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (3, CAST(N'2018-10-23' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (4, CAST(N'2018-10-23' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (5, CAST(N'2018-10-23' AS Date), 10, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (6, CAST(N'2018-10-23' AS Date), 5, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (7, CAST(N'2018-10-23' AS Date), 0, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (8, CAST(N'2018-10-23' AS Date), 50, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (9, CAST(N'2018-10-23' AS Date), 0, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (10, CAST(N'2018-10-23' AS Date), 10, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (11, CAST(N'2018-10-24' AS Date), 10, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (12, CAST(N'2018-10-24' AS Date), 10, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (13, CAST(N'2018-10-24' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (14, CAST(N'2018-10-24' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (15, CAST(N'2018-10-24' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (16, CAST(N'2018-10-24' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (17, CAST(N'2018-10-24' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (18, CAST(N'2018-10-24' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (19, CAST(N'2018-10-25' AS Date), 10, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (20, CAST(N'2018-10-25' AS Date), 20, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (21, CAST(N'2018-10-26' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (22, CAST(N'2018-10-26' AS Date), 5, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (23, CAST(N'2018-10-26' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (24, CAST(N'2018-10-27' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (25, CAST(N'2018-10-27' AS Date), 20, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (26, CAST(N'2018-10-27' AS Date), 0, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (27, CAST(N'2018-10-27' AS Date), 0, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (28, CAST(N'2018-10-27' AS Date), 15, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (29, CAST(N'2018-10-30' AS Date), 0, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (30, CAST(N'2018-10-30' AS Date), 15, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (31, CAST(N'2018-10-30' AS Date), 0, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (32, CAST(N'2018-10-31' AS Date), 0, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (33, CAST(N'2018-10-31' AS Date), 0, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (34, CAST(N'2018-10-31' AS Date), 10, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (35, CAST(N'2018-10-31' AS Date), 25, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (36, CAST(N'2018-11-01' AS Date), 25, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (37, CAST(N'2018-11-01' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (38, CAST(N'2018-11-01' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (39, CAST(N'2018-11-01' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (40, CAST(N'2018-11-01' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (41, CAST(N'2018-11-11' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (42, CAST(N'2018-11-11' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (43, CAST(N'2018-11-11' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (44, CAST(N'2018-11-11' AS Date), 0, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (45, CAST(N'2018-11-15' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (46, CAST(N'2018-11-15' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (47, CAST(N'2018-11-16' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (48, CAST(N'2018-11-16' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (49, CAST(N'2018-11-16' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (50, CAST(N'2018-11-16' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (51, CAST(N'2018-11-16' AS Date), 0, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (52, CAST(N'2018-11-16' AS Date), 0, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (53, CAST(N'2018-11-16' AS Date), 0, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (54, CAST(N'2018-11-19' AS Date), 0, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (55, CAST(N'2018-11-19' AS Date), 0, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (56, CAST(N'2018-11-19' AS Date), 0, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (57, CAST(N'2018-11-19' AS Date), 20, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (58, CAST(N'2018-11-19' AS Date), 25, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (59, CAST(N'2018-11-19' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (60, CAST(N'2018-11-28' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (61, CAST(N'2018-11-28' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (62, CAST(N'2018-11-28' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (63, CAST(N'2018-11-28' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (64, CAST(N'2018-11-28' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (65, CAST(N'2018-11-28' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (68, CAST(N'2018-11-30' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (70, CAST(N'2018-11-30' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (72, CAST(N'2018-11-30' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (73, CAST(N'2018-11-30' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (74, CAST(N'2018-11-30' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (76, CAST(N'2018-12-01' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (77, CAST(N'2018-12-01' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (78, CAST(N'2018-12-01' AS Date), 0, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (79, CAST(N'2018-12-01' AS Date), 0, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (80, CAST(N'2018-12-01' AS Date), 0, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (81, CAST(N'2018-12-01' AS Date), 15, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (82, CAST(N'2018-12-01' AS Date), 15, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (83, CAST(N'2018-12-01' AS Date), 5, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (84, CAST(N'2018-12-01' AS Date), 15, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (85, CAST(N'2018-12-01' AS Date), 0, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (86, CAST(N'2018-12-01' AS Date), 0, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (87, CAST(N'2018-12-01' AS Date), 0, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (88, CAST(N'2018-12-01' AS Date), 10, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (89, CAST(N'2018-12-02' AS Date), 5, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (90, CAST(N'2018-12-02' AS Date), 13, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (91, CAST(N'2018-12-04' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (92, CAST(N'2018-12-04' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (93, CAST(N'2018-12-04' AS Date), 0, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (94, CAST(N'2018-12-04' AS Date), 10, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (95, CAST(N'2018-12-04' AS Date), 15, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (96, CAST(N'2018-12-04' AS Date), 0, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (97, CAST(N'2018-12-04' AS Date), 15, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (98, CAST(N'2018-12-04' AS Date), 0, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (99, CAST(N'2018-12-04' AS Date), 5, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (100, CAST(N'2018-12-04' AS Date), 5, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (101, CAST(N'2018-12-04' AS Date), 0, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (102, CAST(N'2018-12-04' AS Date), 0, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (103, CAST(N'2018-12-04' AS Date), 5, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (104, CAST(N'2018-12-04' AS Date), 0, 2)
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (105, CAST(N'2018-12-04' AS Date), 0, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (106, CAST(N'2018-12-04' AS Date), 0, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (107, CAST(N'2018-12-11' AS Date), 15, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (108, CAST(N'2018-12-11' AS Date), 5, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (109, CAST(N'2018-12-11' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (110, CAST(N'2018-12-11' AS Date), 0, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (111, CAST(N'2018-12-11' AS Date), 15, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (112, CAST(N'2018-12-11' AS Date), 15, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (113, CAST(N'2018-12-11' AS Date), 15, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (114, CAST(N'2018-12-12' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (115, CAST(N'2018-12-12' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (116, CAST(N'2018-12-12' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (117, CAST(N'2018-12-12' AS Date), 25, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (118, CAST(N'2018-12-15' AS Date), 0, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (119, CAST(N'2018-12-15' AS Date), 15, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (120, CAST(N'2018-12-15' AS Date), 5, 5)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (121, CAST(N'2018-12-17' AS Date), 0, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (122, CAST(N'2018-12-19' AS Date), 25, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (123, CAST(N'2018-12-19' AS Date), 5, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (124, CAST(N'2018-12-19' AS Date), 0, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (125, CAST(N'2018-12-19' AS Date), 15, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (126, CAST(N'2018-12-19' AS Date), 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (127, CAST(N'2018-12-19' AS Date), 15, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [GiamGia], [MaNV]) VALUES (128, CAST(N'2018-12-19' AS Date), 10, 1)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [TenDangNhap], [MatKhau], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (1, N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'Quản lí', CAST(N'1990-01-01' AS Date), 1, N'0903111111', N'70 Nguyễn Huệ, TP. Huế')
INSERT [dbo].[NhanVien] ([MaNV], [TenDangNhap], [MatKhau], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (2, N'trump', N'e10adc3949ba59abbe56e057f20f883e', N'Donal Trump', CAST(N'1995-01-01' AS Date), 1, N'0975777097', N'Mỹ')
INSERT [dbo].[NhanVien] ([MaNV], [TenDangNhap], [MatKhau], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (4, N'mitien', N'e10adc3949ba59abbe56e057f20f883e', N'Nguyễn Thị Mĩ Tiên', CAST(N'1998-02-03' AS Date), 0, N'0789123456', N'Phú Lộc, Thừa Thiên Huế')
INSERT [dbo].[NhanVien] ([MaNV], [TenDangNhap], [MatKhau], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (5, N'tungpika', N'202cb962ac59075b964b07152d234b70', N'Tạ Thanh Tùng', CAST(N'1995-10-19' AS Date), 1, N'0978912345', N'Huế, Việt Nam')
INSERT [dbo].[NhanVien] ([MaNV], [TenDangNhap], [MatKhau], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (8, N'chuoixanh', N'e10adc3949ba59abbe56e057f20f883e', N'Bành Thị Bưởi', CAST(N'1999-05-11' AS Date), 0, N'0911234720', N'Huế, Việt Nam')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[NhaXuatBan] ON 

INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi]) VALUES (1, N'Nhà xuất bản Trẻ', N'Hà Nội')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi]) VALUES (2, N'MCBooks', N'Hà Nội')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi]) VALUES (3, N'Thái Hà', N'TP. Hồ Chí Minh')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi]) VALUES (4, N'Trí Việt', N'TP. Hồ Chí Minh')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi]) VALUES (5, N'Khang Việt Book', N'Hà Nội')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi]) VALUES (6, N'Nhà sách Minh Trí', N'Hà Nội')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi]) VALUES (7, N'Nhã Nam', N'Hà Nội')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi]) VALUES (8, N'Văn Lang', N'TP. Hồ Chí Minh')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi]) VALUES (9, N'Nhà sách Sao Mai', N'Hà Nội')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi]) VALUES (10, N'Đinh Trị', N'Hà Nội')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi]) VALUES (11, N'AlphaBooks', N'TP. Hồ Chí Minh')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi]) VALUES (12, N'Nhà xuất bản Tổng Hợp', N'Hà Nội')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi]) VALUES (13, N'Nhà xuất bản Kim Đồng', N'Hà Nội')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi]) VALUES (17, N'NXB Giáo Dục Việt Nam', N'TP. Hồ Chí Minh')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi]) VALUES (18, N'Công Ty CP Thiết Bị Giáo Dục Và Công Nghệ Việt Nam', N'Hà Nội')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi]) VALUES (20, N'Trống', N'Trống')
SET IDENTITY_INSERT [dbo].[NhaXuatBan] OFF
INSERT [dbo].[PhanQuyen] ([MaNV], [MaQuyen]) VALUES (1, 1)
INSERT [dbo].[PhanQuyen] ([MaNV], [MaQuyen]) VALUES (2, 2)
INSERT [dbo].[PhanQuyen] ([MaNV], [MaQuyen]) VALUES (4, 2)
INSERT [dbo].[PhanQuyen] ([MaNV], [MaQuyen]) VALUES (5, 1)
INSERT [dbo].[PhanQuyen] ([MaNV], [MaQuyen]) VALUES (8, 2)
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 

INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (3, CAST(N'2018-10-23' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (4, CAST(N'2018-10-23' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (5, CAST(N'2018-10-23' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (6, CAST(N'2018-10-23' AS Date), 5)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (7, CAST(N'2018-10-23' AS Date), 5)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (8, CAST(N'2018-10-23' AS Date), 5)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (9, CAST(N'2018-10-23' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (10, CAST(N'2018-10-23' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (11, CAST(N'2018-10-25' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (12, CAST(N'2018-10-26' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (13, CAST(N'2018-10-27' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (14, CAST(N'2018-10-30' AS Date), 5)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (15, CAST(N'2018-11-11' AS Date), 5)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (16, CAST(N'2018-11-12' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (17, CAST(N'2018-11-13' AS Date), 4)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (18, CAST(N'2018-11-16' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (19, CAST(N'2018-11-19' AS Date), 5)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (20, CAST(N'2018-11-19' AS Date), 5)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (21, CAST(N'2018-11-28' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (22, CAST(N'2018-11-28' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (26, CAST(N'2018-11-30' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (27, CAST(N'2018-11-30' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (29, CAST(N'2018-11-30' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (31, CAST(N'2018-11-30' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (32, CAST(N'2018-11-30' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (33, CAST(N'2018-12-01' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (34, CAST(N'2018-12-01' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (35, CAST(N'2018-12-01' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (36, CAST(N'2018-12-01' AS Date), 5)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (37, CAST(N'2018-12-01' AS Date), 5)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (38, CAST(N'2018-12-04' AS Date), 5)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (39, CAST(N'2018-12-04' AS Date), 5)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (40, CAST(N'2018-12-04' AS Date), 4)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (41, CAST(N'2018-12-04' AS Date), 2)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (42, CAST(N'2018-12-11' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (43, CAST(N'2018-12-12' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (44, CAST(N'2018-12-12' AS Date), 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (45, CAST(N'2018-12-15' AS Date), 5)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (46, CAST(N'2018-12-15' AS Date), 5)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (47, CAST(N'2018-12-17' AS Date), 2)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNV]) VALUES (48, CAST(N'2018-12-19' AS Date), 8)
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
SET IDENTITY_INSERT [dbo].[Quyen] ON 

INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (1, N'Quản lí')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (2, N'Nhân viên')
SET IDENTITY_INSERT [dbo].[Quyen] OFF
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (1, N'Shin - Cậu Bé Bút Chì 1 (Bản Đặc Biệt)', 14240, 2012, 115, 1, 4, 15)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (2, N'Shin - Cậu Bé Bút Chì 5 (Bản Đặc Biệt)', 11200, 2017, 180, 2, 4, 15)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (3, N'Thám Tử Lừng Danh Conan Tập 6 (Tái Bản 2014)', 16020, 2014, 20, 10, 4, 8)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (4, N'Thám Tử Lừng Danh Conan (Tập 82)', 16020, 2015, 35, 6, 4, 8)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (5, N'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', 53300, 2010, 54, 1, 3, 4)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (6, N'Bảy Bước Tới Mùa Hè', 77220, 2015, 333, 1, 3, 4)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (7, N'Trại Hoa Vàng - Tái Bản 2013', 46000, 2013, 102, 7, 3, 4)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (8, N'Cho Tôi Xin Một Vé Đi Tuổi Thơ (Tái Bản 2015)', 44100, 2015, 82, 17, 3, 4)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (9, N'P.Kotler Tiếp thị 4.0 - Dịch Chuyển Từ Truyền Thống Sang Công Nghệ Số', 65000, 2017, 59, 6, 7, 10)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (10, N'Qua Pixar Là Vô Cực', 120900, 2017, 25, 1, 7, 16)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (11, N'Đời Ngắn Đừng Ngủ Dài', 42000, 2014, 102, 7, 7, 17)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (13, N'Luyện Siêu Trí Nhớ Từ Vựng Tiếng Anh', 131600, 2015, 86, 2, 10, 20)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (14, N'Vừa Lười Vừa Bận Vẫn Giỏi Tiếng Anh', 84000, 2018, 177, 11, 10, 21)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (15, N'Đọc Vị Bất Kỳ Ai (Tái Bản)', 48300, 2018, 37, 9, 7, 22)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (16, N'Nhân Tố Enzyme - Phương Thức Sống Lành Mạnh (Tái Bản 2018)', 55300, 2018, 161, 12, 11, 23)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (17, N'Nuôi Con Không Phải Là Cuộc Chiến (Tái Bản)', 6500, 2018, 162, 8, 12, 25)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (19, N'Bộ Sách Bài Tập Lớp 10', 123284, 2018, 89, 3, 6, 5)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (20, N'Sách Hóa Học Lớp 10 (Song Ngữ Việt - Anh)', 38500, 2018, 76, 8, 6, 5)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (21, N'Bộ Sách Bài Tập Lớp 11', 115366, 2018, 111, 4, 6, 5)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (22, N'Bộ Sách Bài Tập Lớp 12', 122026, 2018, 63, 2, 6, 5)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [NamXB], [SoLuongTon], [MaNXB], [MaTL], [MaTG]) VALUES (23, N'Tớ Là Mèo Pusheen', 47000, 2018, 32, 1, 14, 27)
SET IDENTITY_INSERT [dbo].[Sach] OFF
SET IDENTITY_INSERT [dbo].[TacGia] ON 

INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (4, N'Nguyễn Nhật Ánh', N'0903526310', N'Huế')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (5, N'Nhóm Tác Giả', N'0971334444', N'Hà Nội')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (6, N'Trần Ngọc Bảo Hân', N'0971112233', N'Trống')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (7, N'Hương Giang', N'0256789103', N'Trống')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (8, N'Aoyama Gosho', N'112321123', N'Trống')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (9, N'J. K. Rowling', N'9000012345', N'Trống')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (10, N'Nhiều Tác Giải', N'888888888', N'Trống')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (11, N'Huyền Linh', N'7891234560', N'Trống')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (12, N'Hồng Hà', N'900000000', N'Trống')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (13, N'Tịnh Lâm', N'1111111111', N'Trống')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (14, N'Fujiko-F-Fujio', N'900000000', N'Trống')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (15, N'Yoshito Usui', N'0900000000', N'Trống')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (16, N'Lawrence Levy', N'333333333', N'Trống')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (17, N'Robin Sharma', N'1111111111', N'Trống')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (20, N'Nguyễn Anh Đức', N'901234567', N'Trống')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (21, N'Nguyễn Văn Hiệp', N'222222222', N'Trống')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (22, N'TS. David J. Lieberman', N'333333333', N'Mỹ')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (23, N'Hiromi Shinya', N'1237894550', N'Trống')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (25, N'Mẹ Ong Bông', N'0123456789', N'Trống')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (27, N'Claire Belton', N'123456789', N'Mỹ')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [SDT], [DiaChi]) VALUES (28, N'Trống', N'000000000', N'Trống')
SET IDENTITY_INSERT [dbo].[TacGia] OFF
SET IDENTITY_INSERT [dbo].[TheLoai] ON 

INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (1, N'Truyện Ngắn')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (2, N'Tiểu Thuyết')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (3, N'Văn Học')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (4, N'Manga')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (5, N'Truyện Tranh')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (6, N'Giáo Dục')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (7, N'Kinh Doanh')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (8, N'Kỹ Năng Sống')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (10, N'Sách Học Ngoại Ngữ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (11, N'Sách Y học')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (12, N'Sách làm Cha - Mẹ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (14, N'Sách Thiếu Nhi')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (15, N'Trống')
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
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
/****** Object:  StoredProcedure [dbo].[sp_BaoCaoDoanhThuCuaHang]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BaoCaoHoaDonTheoMa]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BaoCaoNangSuatNhanVien]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BaoCaoPhieuNhapTheoMa]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_CapNhatNhaXuatBan]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_CapNhatSach]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_CapNhatTacGia]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_CapNhatTheLoai]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_CapNhatThongTinNhanVien]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_DangNhap]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_DatLaiMatKhau]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_DoiMatKhau]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_KiemTraSoLuong]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachHoaDon]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachNhanVien]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachNXB]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachPhanQuyen]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachPhieuNhap]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachQuyen]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachSach]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachTacGia]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachTheLoai]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayDSSachBanChay]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayDSSachChiTiet]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayHoaDonMoiNhat]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayHoaDonThang]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayHoaDonTheoMa]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayMaPNMoiNhat]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayNhanVienTheoMa]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayNXBTheoMa]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayPhanQuyenTheoMaNV]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayPhieuNhapTheoMa]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LaySachBanChayThang]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LaySachNhap]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LaySachTheoMa]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LaySachTonKho]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LaySoLuongSachHD]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LaySoLuongSachTheoMaPN]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayTenNhanVienTheoMa]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayTenQuyenTheoMa]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayTGTheoMa]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayThongTinNhanVien]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayThongTinTong]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayTLTheoMa]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LayTongTienHD]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SuaDoiQuyen]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ThemChiTietHoaDon]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ThemChiTietPN]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ThemHoaDon]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ThemNhanVien]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ThemNhaXuatBan]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ThemPhieuNhap]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ThemSach]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ThemTacGia]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ThemTheLoai]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TimDanhSachPhanQuyen]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TimNhanVien]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TimNhaXuatBan]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TimSach]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TimTacGia]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TimTheLoai]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TinhTongTienTheoMaPN]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_XoaHoaDon]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_XoaNhanVien]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_XoaNhaXuatBan]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_XoaSach]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_XoaTacGia]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_XoaTheLoai]    Script Date: 12/19/2018 2:04:08 PM ******/
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
/****** Object:  Trigger [dbo].[tg_XoaSoLuongSach]    Script Date: 12/19/2018 2:04:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_XoaSoLuongSach]
ON [dbo].[ChiTietHoaDon]
FOR INSERT
AS
BEGIN
	DECLARE @masach int
	SELECT @masach=i.MaSach FROM INSERTED i
	DECLARE @soluongban int
	SELECT @soluongban=i.SoLuongBan FROM INSERTED i

	UPDATE dbo.Sach
	SET
	    dbo.Sach.SoLuongTon=dbo.Sach.SoLuongTon-@soluongban
	WHERE dbo.Sach.MaSach=@masach
END
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ENABLE TRIGGER [tg_XoaSoLuongSach]
GO
/****** Object:  Trigger [dbo].[tg_ThemSoLuongSach]    Script Date: 12/19/2018 2:04:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_ThemSoLuongSach]
ON [dbo].[ChiTietPhieuNhap]
FOR INSERT
AS
BEGIN
	DECLARE @soluongthem int
	SELECT @soluongthem=i.SoLuongNhap FROM INSERTED i
	DECLARE @masach int
	SELECT @masach=i.MaSach FROM INSERTED i

	UPDATE dbo.Sach
	SET
	    dbo.Sach.SoLuongTon=dbo.Sach.SoLuongTon+@soluongthem
	WHERE dbo.Sach.MaSach=@masach
END
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] ENABLE TRIGGER [tg_ThemSoLuongSach]
GO
/****** Object:  Trigger [dbo].[tg_ThemNhanVien]    Script Date: 12/19/2018 2:04:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_ThemNhanVien]
ON [dbo].[NhanVien] FOR INSERT
AS
BEGIN
	DECLARE @manv int
	SELECT @manv=max(dbo.NhanVien.MaNV) FROM dbo.NhanVien

	INSERT INTO dbo.PhanQuyen
	(
	    MaNV,
	    MaQuyen
	)
	VALUES
	(
	    @manv, -- MaNV - int
	    2 -- MaQuyen - int
	)
END
GO
ALTER TABLE [dbo].[NhanVien] ENABLE TRIGGER [tg_ThemNhanVien]
GO
USE [master]
GO
ALTER DATABASE [CuaHangSach] SET  READ_WRITE 
GO

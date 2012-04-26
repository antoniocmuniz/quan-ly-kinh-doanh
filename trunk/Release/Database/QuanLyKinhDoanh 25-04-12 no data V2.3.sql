USE [master]
GO
/****** Object:  Database [QuanLyKinhDoanh]    Script Date: 04/26/2012 09:45:45 ******/
CREATE DATABASE [QuanLyKinhDoanh] ON  PRIMARY 
( NAME = N'QuanLyKinhDoanh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\QuanLyKinhDoanh.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyKinhDoanh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\QuanLyKinhDoanh_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyKinhDoanh] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyKinhDoanh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyKinhDoanh] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QuanLyKinhDoanh] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QuanLyKinhDoanh] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QuanLyKinhDoanh] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QuanLyKinhDoanh] SET ARITHABORT OFF
GO
ALTER DATABASE [QuanLyKinhDoanh] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QuanLyKinhDoanh] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyKinhDoanh] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QuanLyKinhDoanh] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyKinhDoanh] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QuanLyKinhDoanh] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QuanLyKinhDoanh] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QuanLyKinhDoanh] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QuanLyKinhDoanh] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QuanLyKinhDoanh] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QuanLyKinhDoanh] SET  DISABLE_BROKER
GO
ALTER DATABASE [QuanLyKinhDoanh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QuanLyKinhDoanh] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QuanLyKinhDoanh] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QuanLyKinhDoanh] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QuanLyKinhDoanh] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QuanLyKinhDoanh] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QuanLyKinhDoanh] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QuanLyKinhDoanh] SET  READ_WRITE
GO
ALTER DATABASE [QuanLyKinhDoanh] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QuanLyKinhDoanh] SET  MULTI_USER
GO
ALTER DATABASE [QuanLyKinhDoanh] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QuanLyKinhDoanh] SET DB_CHAINING OFF
GO
USE [QuanLyKinhDoanh]
GO
/****** Object:  ForeignKey [FK_User_UserGroup]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[User] DROP CONSTRAINT [FK_User_UserGroup]
GO
/****** Object:  ForeignKey [FK_SanPham_SanPhamGroup]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[SanPham] DROP CONSTRAINT [FK_SanPham_SanPhamGroup]
GO
/****** Object:  ForeignKey [FK_SanPham_XuatXu]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[SanPham] DROP CONSTRAINT [FK_SanPham_XuatXu]
GO
/****** Object:  ForeignKey [FK_KhachHang_KhachHangGroup]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[KhachHang] DROP CONSTRAINT [FK_KhachHang_KhachHangGroup]
GO
/****** Object:  ForeignKey [FK_HoaDon_HoaDonGroup]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[HoaDon] DROP CONSTRAINT [FK_HoaDon_HoaDonGroup]
GO
/****** Object:  ForeignKey [FK_HoaDon_HoaDonStatus]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[HoaDon] DROP CONSTRAINT [FK_HoaDon_HoaDonStatus]
GO
/****** Object:  ForeignKey [FK_HoaDon_KhachHang]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[HoaDon] DROP CONSTRAINT [FK_HoaDon_KhachHang]
GO
/****** Object:  ForeignKey [FK_HoaDon_User]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[HoaDon] DROP CONSTRAINT [FK_HoaDon_User]
GO
/****** Object:  ForeignKey [FK_ChietKhau_KhachHangGroup]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[ChietKhau] DROP CONSTRAINT [FK_ChietKhau_KhachHangGroup]
GO
/****** Object:  ForeignKey [FK_ChietKhau_SanPham]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[ChietKhau] DROP CONSTRAINT [FK_ChietKhau_SanPham]
GO
/****** Object:  ForeignKey [FK_HoaDonDetail_HoaDon]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[HoaDonDetail] DROP CONSTRAINT [FK_HoaDonDetail_HoaDon]
GO
/****** Object:  ForeignKey [FK_HoaDonDetail_SanPham]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[HoaDonDetail] DROP CONSTRAINT [FK_HoaDonDetail_SanPham]
GO
/****** Object:  Table [dbo].[HoaDonDetail]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[HoaDonDetail] DROP CONSTRAINT [FK_HoaDonDetail_HoaDon]
GO
ALTER TABLE [dbo].[HoaDonDetail] DROP CONSTRAINT [FK_HoaDonDetail_SanPham]
GO
ALTER TABLE [dbo].[HoaDonDetail] DROP CONSTRAINT [DF_HoaDonDetail_SoLuong]
GO
ALTER TABLE [dbo].[HoaDonDetail] DROP CONSTRAINT [DF_HoaDonDetail_ChietKhau]
GO
ALTER TABLE [dbo].[HoaDonDetail] DROP CONSTRAINT [DF_DonHangDetail_ThanhTien]
GO
DROP TABLE [dbo].[HoaDonDetail]
GO
/****** Object:  Table [dbo].[ChietKhau]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[ChietKhau] DROP CONSTRAINT [FK_ChietKhau_KhachHangGroup]
GO
ALTER TABLE [dbo].[ChietKhau] DROP CONSTRAINT [FK_ChietKhau_SanPham]
GO
DROP TABLE [dbo].[ChietKhau]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[HoaDon] DROP CONSTRAINT [FK_HoaDon_HoaDonGroup]
GO
ALTER TABLE [dbo].[HoaDon] DROP CONSTRAINT [FK_HoaDon_HoaDonStatus]
GO
ALTER TABLE [dbo].[HoaDon] DROP CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon] DROP CONSTRAINT [FK_HoaDon_User]
GO
ALTER TABLE [dbo].[HoaDon] DROP CONSTRAINT [DF_HoaDon_IdStatus]
GO
ALTER TABLE [dbo].[HoaDon] DROP CONSTRAINT [DF_DonHang_ThanhTien]
GO
DROP TABLE [dbo].[HoaDon]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[KhachHang] DROP CONSTRAINT [FK_KhachHang_KhachHangGroup]
GO
ALTER TABLE [dbo].[KhachHang] DROP CONSTRAINT [DF_KhachHang_GioiTinh]
GO
ALTER TABLE [dbo].[KhachHang] DROP CONSTRAINT [DF_KhachHang_Diem]
GO
DROP TABLE [dbo].[KhachHang]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[SanPham] DROP CONSTRAINT [FK_SanPham_SanPhamGroup]
GO
ALTER TABLE [dbo].[SanPham] DROP CONSTRAINT [FK_SanPham_XuatXu]
GO
ALTER TABLE [dbo].[SanPham] DROP CONSTRAINT [DF_SanPham_LaiSuat]
GO
ALTER TABLE [dbo].[SanPham] DROP CONSTRAINT [DF_SanPham_SoLuong]
GO
DROP TABLE [dbo].[SanPham]
GO
/****** Object:  Table [dbo].[User]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[User] DROP CONSTRAINT [FK_User_UserGroup]
GO
DROP TABLE [dbo].[User]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 04/26/2012 09:45:46 ******/
DROP TABLE [dbo].[UserGroup]
GO
/****** Object:  Table [dbo].[XuatXu]    Script Date: 04/26/2012 09:45:46 ******/
DROP TABLE [dbo].[XuatXu]
GO
/****** Object:  Table [dbo].[SanPhamGroup]    Script Date: 04/26/2012 09:45:46 ******/
DROP TABLE [dbo].[SanPhamGroup]
GO
/****** Object:  Table [dbo].[KhachHangGroup]    Script Date: 04/26/2012 09:45:46 ******/
DROP TABLE [dbo].[KhachHangGroup]
GO
/****** Object:  Table [dbo].[HoaDonStatus]    Script Date: 04/26/2012 09:45:46 ******/
DROP TABLE [dbo].[HoaDonStatus]
GO
/****** Object:  Table [dbo].[HoaDonType]    Script Date: 04/26/2012 09:45:46 ******/
DROP TABLE [dbo].[HoaDonType]
GO
/****** Object:  Table [dbo].[HoaDonType]    Script Date: 04/26/2012 09:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nchar](3) NOT NULL,
 CONSTRAINT [PK_NhomDonHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonStatus]    Script Date: 04/26/2012 09:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](20) NULL,
 CONSTRAINT [PK_HoaDonStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHangGroup]    Script Date: 04/26/2012 09:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHangGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Diem] [int] NOT NULL,
	[MoTa] [nvarchar](200) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhamGroup]    Script Date: 04/26/2012 09:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPhamGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [varchar](6) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Mota] [nvarchar](200) NULL,
 CONSTRAINT [PK_SanPhamGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XuatXu]    Script Date: 04/26/2012 09:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XuatXu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[Fax] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[CreateDate] [date] NOT NULL,
	[UpdateBy] [nvarchar](50) NOT NULL,
	[UpdateDate] [date] NOT NULL,
	[DeleteFlag] [bit] NOT NULL,
 CONSTRAINT [PK_XuatXu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 04/26/2012 09:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](20) NOT NULL,
	[Mota] [nvarchar](200) NULL,
 CONSTRAINT [PK_NhomNguoiDung] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 04/26/2012 09:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGroup] [int] NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[CMND] [nvarchar](10) NULL,
	[GioiTinh] [nvarchar](3) NOT NULL,
	[DienThoai] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[CreateDate] [date] NOT NULL,
	[UpdateBy] [nvarchar](50) NOT NULL,
	[UpdateDate] [date] NOT NULL,
	[DeleteFlag] [bit] NOT NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 04/26/2012 09:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdSanPham] [nvarchar](10) NOT NULL,
	[IdGroup] [int] NOT NULL,
	[IdXuatXu] [int] NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](200) NULL,
	[GiaMua] [bigint] NOT NULL,
	[GiaBan] [bigint] NOT NULL,
	[LaiSuat] [float] NOT NULL CONSTRAINT [DF_SanPham_LaiSuat]  DEFAULT ((0)),
	[SoLuong] [int] NOT NULL CONSTRAINT [DF_SanPham_SoLuong]  DEFAULT ((0)),
	[DonViTinh] [nvarchar](10) NOT NULL,
	[Hieu] [nvarchar](50) NULL,
	[Size] [nvarchar](50) NULL,
	[ThoiHan] [tinyint] NULL,
	[DonViThoiHan] [nvarchar](10) NULL,
	[ThoiGianBaoHanh] [tinyint] NULL,
	[DonViBaoHanh] [nvarchar](5) NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[CreateDate] [date] NOT NULL,
	[UpdateBy] [nvarchar](50) NOT NULL,
	[UpdateDate] [date] NOT NULL,
	[DeleteFlag] [bit] NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 04/26/2012 09:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGroup] [int] NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](3) NOT NULL CONSTRAINT [DF_KhachHang_GioiTinh]  DEFAULT (N'Nam'),
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[Fax] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[Diem] [int] NULL CONSTRAINT [DF_KhachHang_Diem]  DEFAULT ((0)),
	[GhiChu] [nvarchar](200) NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[CreateDate] [date] NOT NULL,
	[UpdateBy] [nvarchar](50) NOT NULL,
	[UpdateDate] [date] NOT NULL,
	[DeleteFlag] [bit] NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 04/26/2012 09:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdHoaDon] [char](6) NOT NULL,
	[IdType] [int] NOT NULL,
	[IdUser] [int] NULL,
	[IdKhachHang] [int] NULL,
	[IdStatus] [int] NOT NULL CONSTRAINT [DF_HoaDon_IdStatus]  DEFAULT ((1)),
	[ThanhTien] [bigint] NOT NULL CONSTRAINT [DF_DonHang_ThanhTien]  DEFAULT ((0)),
	[GhiChu] [nvarchar](200) NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) NOT NULL,
	[UpdateDate] [date] NOT NULL,
	[DeleteFlag] [bit] NOT NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChietKhau]    Script Date: 04/26/2012 09:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChietKhau](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdSanPham] [int] NULL,
	[idKhachHangGroup] [int] NULL,
	[Value] [int] NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[CreateDate] [date] NOT NULL,
	[UpdateBy] [nvarchar](50) NOT NULL,
	[UpdateDate] [date] NOT NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonDetail]    Script Date: 04/26/2012 09:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdHoaDon] [int] NOT NULL,
	[IdSanPham] [int] NOT NULL,
	[DonGia] [bigint] NOT NULL,
	[SoLuong] [int] NOT NULL CONSTRAINT [DF_HoaDonDetail_SoLuong]  DEFAULT ((1)),
	[ChietKhau] [float] NOT NULL CONSTRAINT [DF_HoaDonDetail_ChietKhau]  DEFAULT ((0)),
	[ThanhTien] [bigint] NOT NULL CONSTRAINT [DF_DonHangDetail_ThanhTien]  DEFAULT ((0)),
 CONSTRAINT [PK_DonHangDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_User_UserGroup]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserGroup] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[UserGroup] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserGroup]
GO
/****** Object:  ForeignKey [FK_SanPham_SanPhamGroup]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_SanPhamGroup] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[SanPhamGroup] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_SanPhamGroup]
GO
/****** Object:  ForeignKey [FK_SanPham_XuatXu]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_XuatXu] FOREIGN KEY([IdXuatXu])
REFERENCES [dbo].[XuatXu] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_XuatXu]
GO
/****** Object:  ForeignKey [FK_KhachHang_KhachHangGroup]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_KhachHangGroup] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[KhachHangGroup] ([Id])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_KhachHangGroup]
GO
/****** Object:  ForeignKey [FK_HoaDon_HoaDonGroup]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_HoaDonGroup] FOREIGN KEY([IdType])
REFERENCES [dbo].[HoaDonType] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_HoaDonGroup]
GO
/****** Object:  ForeignKey [FK_HoaDon_HoaDonStatus]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_HoaDonStatus] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[HoaDonStatus] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_HoaDonStatus]
GO
/****** Object:  ForeignKey [FK_HoaDon_KhachHang]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
/****** Object:  ForeignKey [FK_HoaDon_User]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_User]
GO
/****** Object:  ForeignKey [FK_ChietKhau_KhachHangGroup]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[ChietKhau]  WITH CHECK ADD  CONSTRAINT [FK_ChietKhau_KhachHangGroup] FOREIGN KEY([idKhachHangGroup])
REFERENCES [dbo].[KhachHangGroup] ([Id])
GO
ALTER TABLE [dbo].[ChietKhau] CHECK CONSTRAINT [FK_ChietKhau_KhachHangGroup]
GO
/****** Object:  ForeignKey [FK_ChietKhau_SanPham]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[ChietKhau]  WITH CHECK ADD  CONSTRAINT [FK_ChietKhau_SanPham] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[ChietKhau] CHECK CONSTRAINT [FK_ChietKhau_SanPham]
GO
/****** Object:  ForeignKey [FK_HoaDonDetail_HoaDon]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[HoaDonDetail]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonDetail_HoaDon] FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[HoaDon] ([Id])
GO
ALTER TABLE [dbo].[HoaDonDetail] CHECK CONSTRAINT [FK_HoaDonDetail_HoaDon]
GO
/****** Object:  ForeignKey [FK_HoaDonDetail_SanPham]    Script Date: 04/26/2012 09:45:46 ******/
ALTER TABLE [dbo].[HoaDonDetail]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonDetail_SanPham] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[HoaDonDetail] CHECK CONSTRAINT [FK_HoaDonDetail_SanPham]
GO

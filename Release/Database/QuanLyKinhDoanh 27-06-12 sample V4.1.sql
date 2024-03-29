USE [master]
GO
/****** Object:  Database [QuanLyKinhDoanh]    Script Date: 06/27/2012 17:24:28 ******/
CREATE DATABASE [QuanLyKinhDoanh] ON  PRIMARY 
( NAME = N'QuanLyKinhDoanh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\QuanLyKinhDoanh.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
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
/****** Object:  Table [dbo].[HoaDonType]    Script Date: 06/27/2012 17:24:28 ******/
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
SET IDENTITY_INSERT [dbo].[HoaDonType] ON
INSERT [dbo].[HoaDonType] ([Id], [Ten]) VALUES (1, N'Mua')
INSERT [dbo].[HoaDonType] ([Id], [Ten]) VALUES (2, N'Bán')
INSERT [dbo].[HoaDonType] ([Id], [Ten]) VALUES (3, N'Thu')
INSERT [dbo].[HoaDonType] ([Id], [Ten]) VALUES (4, N'Chi')
SET IDENTITY_INSERT [dbo].[HoaDonType] OFF
/****** Object:  Table [dbo].[HoaDonStatus]    Script Date: 06/27/2012 17:24:28 ******/
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
SET IDENTITY_INSERT [dbo].[HoaDonStatus] ON
INSERT [dbo].[HoaDonStatus] ([Id], [Ten]) VALUES (1, N'Trả hết')
INSERT [dbo].[HoaDonStatus] ([Id], [Ten]) VALUES (2, N'Nợ')
SET IDENTITY_INSERT [dbo].[HoaDonStatus] OFF
/****** Object:  Table [dbo].[KhachHangGroup]    Script Date: 06/27/2012 17:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHangGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [varchar](6) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Diem] [int] NOT NULL,
	[MoTa] [nvarchar](200) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHangGroup] ON
INSERT [dbo].[KhachHangGroup] ([Id], [Ma], [Ten], [Diem], [MoTa]) VALUES (1, N'KT', N'Khách thường', 0, NULL)
INSERT [dbo].[KhachHangGroup] ([Id], [Ma], [Ten], [Diem], [MoTa]) VALUES (2, N'KHTT', N'Khách hàng thân thiết', 0, NULL)
INSERT [dbo].[KhachHangGroup] ([Id], [Ma], [Ten], [Diem], [MoTa]) VALUES (3, N'TVND', N'Thành viên Ngọc Ðăng', 0, NULL)
INSERT [dbo].[KhachHangGroup] ([Id], [Ma], [Ten], [Diem], [MoTa]) VALUES (4, N'KS', N'Khách sĩ', 0, NULL)
INSERT [dbo].[KhachHangGroup] ([Id], [Ma], [Ten], [Diem], [MoTa]) VALUES (5, N'VIP', N'VIP', 0, NULL)
SET IDENTITY_INSERT [dbo].[KhachHangGroup] OFF
/****** Object:  Table [dbo].[SanPhamGroup]    Script Date: 06/27/2012 17:24:28 ******/
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
	[CreateBy] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SanPhamGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SanPhamGroup] ON
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, N'GTTNa', N'Giày Thể Thao Nam', N'Giày Nam dáng thể thao cột dây - dán - sỏ', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, N'GTTNu', N'Giày Thể Thao Nữ', N'Giày Nữ dáng thể thao cột dây - dán - sỏ', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, N'GTNa', N'Giày Tây Nam', N'Giày Tây cột dây - dán - sỏ  ', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, N'SDNa', N'Giày Sandal nam', N'giày dây', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, N'SDNu', N'Giày Sandal Nữ ', N'giày dây thấp - cao ', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (10, N'DDNa', N'Dép Da Nam', N'Dép quai ngan nam', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (12, N'KDNa', N'Dép kẹp Da Nam', N'Dép kẹp nam da ', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (14, N'DSPNa', N'Dép Sapo Nam', N'Dép bít mũi da thường', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (16, N'VADcf', N'Vải áo dài chi fong', N'vải áo khổ thường 1m6 x 2m', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (17, N'MBH', N'Mủ bảo hiểm', N'Mủ bảo hiểm xe máy các loại ', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (18, N'VADTh', N'Vải Áo Dài Thường', N'vải áo dài dệt in hình hoa văn - bông -bi -....', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (19, N'DThom', N'Dầu thơm ', N'', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (20, N'BB', N'giày baby', N'giày baby không gót', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (22, N'BalG', N'giày bal gót ', N'Tất cả các loại giày bal gót rời từ 3F trở lên', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (23, N'BalG5F', N'giày bal gót 5F', N'giày bal gót rời cao 5 phân', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (24, N'BalX3F', N'Giày bal xuồng 3F', N'giày bal đế xuồng cao 3F', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (25, N'BalX5F', N'giày bal xuồng 5F', N'Giày bal đế xuồng cao 5F', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (27, N'DX', N'Dép kẹp xuồng', N'Tất cả các loại dép kẹp xuồng từ thấp đến cao ', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (30, N'VDun', N'Vải Dún', N'vải áo dài dún - kiểu', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (31, N'VCuoi', N'Vải ao dài Cưới', N'tất cả các loại vải thiết kế đặc biệt co Cô Dâu', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (32, N'VADVol', N'vải Vol may ao dài', N'', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (33, N'GM', N'Giày Mọi', N'', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (34, N'DN', N'Dây Nịt', N'', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (35, N'BN', N'Bóp Nam', N'', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (36, N'GB', N'Giày Bé Gái Trai', N'Tất cả các loại giày bé Gái Trai từ 13-34', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (37, N'NBN', N'Nón Bo Nữ', N'', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (39, N'DNG', N'Dép nữ gót rời', N'Tất cả các loại dép gót rời từ 3F trở lên quai ngang và quai kẹp', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (40, N'DXNu', N'Dép đế xuồng nữ', N'Tất cả các loại dép đế xuồng quai ngang và kẹp từ 3F trở lên', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (44, N'DB', N'Dép Bé trai gái', N'Tất cả các loại dép bé trai-gái-kẹp-quai ngang...', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (45, N'DT', N'Dép thường xẹp', N'Tất cả các loại dép xẹp quai ngang kẹp nam nữ rẻ<100', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (49, N'5454', N'test', N'saa', N'admin', CAST(0x0000A0610118A559 AS DateTime), N'admin', CAST(0x0000A0610118A559 AS DateTime))
SET IDENTITY_INSERT [dbo].[SanPhamGroup] OFF
/****** Object:  Table [dbo].[XuatXu]    Script Date: 06/27/2012 17:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XuatXu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[DTDD] [nvarchar](20) NULL,
	[Fax] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_XuatXu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[XuatXu] ON
INSERT [dbo].[XuatXu] ([Id], [Ten], [DiaChi], [DienThoai], [DTDD], [Fax], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, N'Nón Phong Phú', N'sạp 330-333,407-408 chợ Bình Tây/ CH 06 Nguyễn Hữu Thuận,F2,Q6', N'08.2212997', NULL, N'', N'', N'Khẩu trang 0862762968 - 0835544041', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[XuatXu] ([Id], [Ten], [DiaChi], [DienThoai], [DTDD], [Fax], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, N'Kim Hoa ', N'sạp 409-411 398 348 Chợ Bình Tây', N'0839507516', NULL, N'', N'', N'NR: 47 T cư xá Phú Lâm D Đ.Lý Chiêu Hoàng f10 Q6 ĐT:0903732671', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[XuatXu] ([Id], [Ten], [DiaChi], [DienThoai], [DTDD], [Fax], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, N'Nhã Vân', N'Lô I,33-35 Tầng Trệt chợ An Đông', N'0862722021', NULL, N'DĐ:0988330770', N'', N'', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[XuatXu] ([Id], [Ten], [DiaChi], [DienThoai], [DTDD], [Fax], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, N'Tiến Tài', N'sạp L6 L7 K(1)19 k(1)20 chợ An Đông', N'08-35059644-35075412', NULL, N'', N'', N'DĐ 0918928989 STK:Trần Tài 0101084862 Tại Ngân Hàng Đông Á Q5', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[XuatXu] ([Id], [Ten], [DiaChi], [DienThoai], [DTDD], [Fax], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, N'Phương Vy', N'sạp G12-14 tầng trệt chợ An Đông', N'0909515871', NULL, N'', N'cnhtran@gmail.com', N'Giày dép nam nữ', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[XuatXu] ([Id], [Ten], [DiaChi], [DienThoai], [DTDD], [Fax], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, N'Hồng Tính', N'sạp B18 tầng trệt', N'08.38324620-2664', NULL, N'DĐ0908328476', N'', N'Điện thoại nhà (tối) 08.38204567', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[XuatXu] ([Id], [Ten], [DiaChi], [DienThoai], [DTDD], [Fax], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, N'Đại Hoàng Hoa', N'556 Trần Hưng Đạo B Q5-Chợ Soái Kình Lâm', N'0838536584', NULL, N'', N'', N'', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[XuatXu] ([Id], [Ten], [DiaChi], [DienThoai], [DTDD], [Fax], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, N'Ngọc Hảo', N'485 Trần Hưng Đạo B F14 Q5', N'0839509612', NULL, N'', N'', N'', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[XuatXu] ([Id], [Ten], [DiaChi], [DienThoai], [DTDD], [Fax], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (10, N'Như Hồng Đào', N'489 Trần Hưng Đạo B f14 Q5', N'0838590770', NULL, N'', N'', N'', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[XuatXu] ([Id], [Ten], [DiaChi], [DienThoai], [DTDD], [Fax], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (11, N'Quốc Hùng', N'Sạp C11-13 Tầng trệt chợ An Đông', N'0866581860', NULL, N'DĐ:0903938545', N'', N'', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[XuatXu] ([Id], [Ten], [DiaChi], [DienThoai], [DTDD], [Fax], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (12, N'Phượng Giang', N'sạp B1-B2 tầng trệt chợ An Đông', N'088397949_2144', NULL, N'DĐ:0903902883', N'', N'', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[XuatXu] ([Id], [Ten], [DiaChi], [DienThoai], [DTDD], [Fax], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (13, N'Thủy Nhung', N'G15-17 tầng trệt chợ An Đông', N'0835067261', NULL, N'DĐ:0903300651', N'', N'', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[XuatXu] ([Id], [Ten], [DiaChi], [DienThoai], [DTDD], [Fax], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (14, N'Hoài Nam', N'C4-6-8 tầng trệt chợ An Đông /shop 82 Nguyễn Chí Thanh F3 Q10', N'083838350188-250', NULL, N'0838308012', N'', N'', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[XuatXu] ([Id], [Ten], [DiaChi], [DienThoai], [DTDD], [Fax], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (15, N'Thanh Thủy', N'Sạp G21-23 tầng trệt chợ An Đông', N'0822146796', NULL, N'0838350188_325', N'', N'', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
INSERT [dbo].[XuatXu] ([Id], [Ten], [DiaChi], [DienThoai], [DTDD], [Fax], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (16, N'Minh Thủy', N'E12-14 F5-7 tầng trệt Chợ An Đông ', N'0908294007', NULL, N'', N'', N'', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A04D00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[XuatXu] OFF
/****** Object:  Table [dbo].[UserGroup]    Script Date: 06/27/2012 17:24:28 ******/
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
SET IDENTITY_INSERT [dbo].[UserGroup] ON
INSERT [dbo].[UserGroup] ([Id], [Ten], [Mota]) VALUES (1, N'Admin', NULL)
INSERT [dbo].[UserGroup] ([Id], [Ten], [Mota]) VALUES (2, N'Nhân viên', NULL)
SET IDENTITY_INSERT [dbo].[UserGroup] OFF
/****** Object:  Table [dbo].[User]    Script Date: 06/27/2012 17:24:28 ******/
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
	[GioiTinh] [nvarchar](3) NOT NULL,
	[DOB] [date] NULL,
	[CMND] [nvarchar](10) NULL,
	[NgayCap] [date] NULL,
	[NoiCap] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[DTDD] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[DeleteFlag] [bit] NOT NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([Id], [IdGroup], [Ten], [UserName], [Password], [GioiTinh], [DOB], [CMND], [NgayCap], [NoiCap], [DiaChi], [DienThoai], [DTDD], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (1, 1, N'Lê Đăng Khanh', N'ldkhanh', N'21232F297A57A5A743894AE4A801FC345454433454539', N'Nam', CAST(0xBC350B00 AS Date), N'', CAST(0xBC350B00 AS Date), NULL, NULL, N'', NULL, N'', N'', N'', CAST(0x0000A02600000000 AS DateTime), N'', CAST(0x0000A02600000000 AS DateTime), 0)
INSERT [dbo].[User] ([Id], [IdGroup], [Ten], [UserName], [Password], [GioiTinh], [DOB], [CMND], [NgayCap], [NoiCap], [DiaChi], [DienThoai], [DTDD], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (2, 1, N'admin', N'admin', N'21232F297A57A5A743894AE4A801FC345454433454539', N'Nam', CAST(0xBC350B00 AS Date), N'12345', CAST(0xBC350B00 AS Date), NULL, NULL, N'', N'12345645', N'', N'', N'ldkhanh', CAST(0x0000A0610101528A AS DateTime), N'admin', CAST(0x0000A062011A1DCC AS DateTime), 0)
INSERT [dbo].[User] ([Id], [IdGroup], [Ten], [UserName], [Password], [GioiTinh], [DOB], [CMND], [NgayCap], [NoiCap], [DiaChi], [DienThoai], [DTDD], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (3, 2, N'test1234', N'test', N'21232F297A57A5A743894AE4A801FC345454433454539', N'Nam', CAST(0xBC350B00 AS Date), N'1345', CAST(0xBC350B00 AS Date), NULL, NULL, N'gs4545', N'4545', N'fsda', N'sdfas', N'admin', CAST(0x0000A06200F50C47 AS DateTime), N'test', CAST(0x0000A06201242B40 AS DateTime), 0)
INSERT [dbo].[User] ([Id], [IdGroup], [Ten], [UserName], [Password], [GioiTinh], [DOB], [CMND], [NgayCap], [NoiCap], [DiaChi], [DienThoai], [DTDD], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (4, 1, N'123', N'admin1', N'98F6BCD4621D373CADE4E832627B4F645454433454539', N'Nam', CAST(0xBC350B00 AS Date), N'', CAST(0xBC350B00 AS Date), NULL, NULL, N'', N'', N'', N'', N'admin', CAST(0x0000A062010FB6DF AS DateTime), N'admin', CAST(0x0000A062010FB6DF AS DateTime), 0)
INSERT [dbo].[User] ([Id], [IdGroup], [Ten], [UserName], [Password], [GioiTinh], [DOB], [CMND], [NgayCap], [NoiCap], [DiaChi], [DienThoai], [DTDD], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (5, 2, N'test', N'test', N'98F6BCD4621D373CADE4E832627B4F645454433454539', N'Nam', CAST(0xBC350B00 AS Date), N'', CAST(0xBC350B00 AS Date), NULL, NULL, N'', N'', N'', N'', N'admin', CAST(0x0000A0620112700B AS DateTime), N'admin', CAST(0x0000A06201127BF7 AS DateTime), 1)
INSERT [dbo].[User] ([Id], [IdGroup], [Ten], [UserName], [Password], [GioiTinh], [DOB], [CMND], [NgayCap], [NoiCap], [DiaChi], [DienThoai], [DTDD], [Email], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (6, 2, N'test2', N'test2', N'98F6BCD4621D373CADE4E832627B4F645454433454539', N'Nam', CAST(0x07290B00 AS Date), N'456', CAST(0x43200B00 AS Date), N'bbb', N'aaa', N'123', N'789', N'ccc', N'', N'admin', CAST(0x0000A06300BB6E26 AS DateTime), N'admin', CAST(0x0000A063010A3A1D AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[SanPham]    Script Date: 06/27/2012 17:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [varchar](10) NOT NULL,
	[IdGroup] [int] NOT NULL,
	[IdXuatXu] [int] NULL,
	[Avatar] [nvarchar](max) NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](200) NULL,
	[GiaMua] [bigint] NOT NULL,
	[GiaBan] [bigint] NOT NULL,
	[LaiSuat] [float] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonViTinh] [nvarchar](10) NOT NULL,
	[Hieu] [nvarchar](50) NULL,
	[Size] [nvarchar](50) NULL,
	[ThoiHan] [tinyint] NULL,
	[DonViThoiHan] [nvarchar](5) NULL,
	[ThoiGianBaoHanh] [tinyint] NULL,
	[DonViBaoHanh] [nvarchar](5) NULL,
	[IsSold] [bit] NOT NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[DeleteFlag] [bit] NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (1, N'DThom0001', 19, NULL, NULL, N'dầu thơm MD', N'', 20000, 25000, 25, 4, N'Cái', N'', N'', 0, N'', NULL, NULL, 0, N'', CAST(0x0000A05800000000 AS DateTime), N'', CAST(0x0000A06100E58F09 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (2, N'Balxep0001', 20, 11, NULL, N'Baby thung', N'baby thun cong màu xám vân đen', 70000, 90000, 29, 2, N'Đôi', N'', N'', 6, N'Tháng', NULL, NULL, 1, N'', CAST(0x0000A05900000000 AS DateTime), N'admin', CAST(0x0000A07D00F25694 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (3, N'GM0001', 33, 12, NULL, N'Giày Mọi T351', N'Giày mọi da màu đen', 280000, 360000, 29, 2, N'Đôi', N'', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (4, N'DThom0002', 19, NULL, NULL, N'tresor', N'', 300000, 350000, 17, 1, N'Cái', N'Lancôme', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (5, N'DThom0003', 19, NULL, NULL, N'Hyonôse', N'', 210000, 250000, 19, 1, N'Cái', N'Lancôme', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (6, N'DThom0004', 19, NULL, NULL, N'Poême', N'', 290000, 330000, 14, 1, N'Cái', N'Lancôme', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (7, N'DThom0005', 19, NULL, NULL, N'Miracle', N'', 200000, 250000, 25, 1, N'Cái', N'Lancôme', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (8, N'DThom0006', 19, NULL, NULL, N'Magnifique', N'', 230000, 280000, 22, 2, N'Cái', N'Lancôme', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (9, N'DN0001', 34, 13, NULL, N'Nịt Kim', N'Dây nịt kim si rẻ', 40000, 65000, 62, 3, N'Cái', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (10, N'DN0002', 34, 13, NULL, N'Nịt Kim', N'Dây nịt kim si rẻ', 37000, 60000, 62, 6, N'Cái', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (11, N'DN0003', 34, 13, NULL, N'Nịt Kim', N'Dây nịt kim si rẻ', 30000, 50000, 67, 2, N'Cái', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (12, N'DN0004', 34, 13, NULL, N'Nịt Kim', N'Dây nịt kim si rẻ', 35000, 50000, 43, 2, N'Cái', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (13, N'DN0005', 34, 13, NULL, N'Nịt Kim', N'Dây nịt kim si rẻ', 30000, 45000, 50, 3, N'Cái', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (14, N'DN0006', 34, 13, NULL, N'Nịt Kim', N'Dây nịt kim si rẻ', 25000, 35000, 40, 5, N'Cái', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (15, N'DN0007', 34, 13, NULL, N'Nịt Kim', N'Dây nịt kim si rẻ', 20000, 28000, 40, 4, N'Cái', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (16, N'DN0008', 34, 13, NULL, N'Nịt lỗ giữa', N'Dây nịt kim si rẻ', 60000, 90000, 50, 1, N'Cái', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (17, N'DN0009', 34, 13, NULL, N'Nịt lỗ giữa', N'Dây nịt kim si rẻ', 65000, 95000, 46, 1, N'Cái', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (18, N'DN0010', 34, 13, NULL, N'Nịt Godzid', N'dây nịt kim da godzid 4F màu nâu', 185000, 288000, 56, 0, N'Cái', N'', N'', 1, N'Năm', NULL, NULL, 1, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (19, N'DN0011', 34, 13, NULL, N'Nịt Godzid', N'dây nịt kim da godzid 3F màu nâu', 175000, 273000, 56, 1, N'Cái', N'', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (20, N'DN0012', 34, 13, NULL, N'Nịt Tisdeny gài', N'Nịt mặt gài da Tisdeny', 165000, 237000, 44, 1, N'Cái', N'', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (21, N'DN0013', 34, 13, NULL, N'Nịt Tisdeny gài', N'Nịt mặt gài da Tisdeny đen', 160000, 236000, 48, 1, N'Cái', N'', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (22, N'DN0014', 34, 13, NULL, N'Nịt Polo Meisdo gài', N'Nịt mặt gài da Polo Meisdo nâu', 155000, 229000, 48, 1, N'Cái', N'', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (23, N'DN0015', 34, 13, NULL, N'Nịt Valentino Guci gài', N'Nịt mặt gài da Valentino Guci Đen', 185000, 288000, 56, 1, N'Cái', N'', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (24, N'BalG3F0001', 24, 4, NULL, N'Bal 3f lông kết giày', N'giày bal mũi kết lông giày', 85000, 129200, 52, 5, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 1)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (25, N'BalG3F0002', 22, 4, NULL, N'Bal 3f lông kết v/tròn', N'giày bal mũi kết lông vòng tròn màu xanh', 85000, 129000, 52, 5, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 1)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (26, N'BalG5F0001', 23, 4, NULL, N'Bal bọc bố 5f bò', N'giày bal 5F đế bọc bố màu bò', 100000, 158000, 58, 5, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 1)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (27, N'BalG5F0002', 23, 4, NULL, N'Bal bọc bố 5f đỏ', N'giày bal 5F đế bọc bố màu đỏ', 100000, 158000, 58, 5, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 1)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (28, N'BalX3F0002', 24, 4, NULL, N'bal 3F k.lông m.kem', N'giày bal xuồng kết lông màu kem hột giày', 85000, 129000, 52, 1, N'Đôi', N'', N'', 8, N'Ngày', NULL, NULL, 1, N'', CAST(0x0000A05900000000 AS DateTime), N'test', CAST(0x0000A0620113CF49 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (29, N'BalX3F0003', 24, 4, NULL, N'bal 3F k.lông m.xanh', N'giày bal xuồng kết lông màu xanh vòng tròn', 85000, 129000, 52, 3, N'Đôi', N'', N'', 8, N'Ngày', NULL, NULL, 1, N'', CAST(0x0000A05900000000 AS DateTime), N'admin', CAST(0x0000A07D00F25607 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (30, N'BalX5F0001', 25, 4, NULL, N'bal 5F bố m bò', N'giày bal xuồng bọc bố màu bò', 100000, 158000, 58, 4, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 1, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05F010330D9 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (31, N'BalX5F0002', 25, 4, NULL, N'bal 5F bố m đỏ', N'giày bal xuồng bọc bố màu đỏ', 100000, 158000, 58, 5, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (32, N'GTTNu0001', 6, 4, NULL, N'giày boss cột kem', N'giày dáng thể thao cột dây giữa màu kem', 65000, 98000, 51, 4, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 1, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (33, N'GTTNu0002', 6, 4, NULL, N'giày boss cột bên bò', N'giày dáng thể thao cột dây một bên màu bò', 65000, 98000, 51, 5, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (34, N'GSDNa0001', 8, 14, NULL, N'SD da 164 đen', N'sd màu đen da quai chéo', 185000, 278000, 50, 5, N'Đôi', N'', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (35, N'GSDNa0002', 8, 14, NULL, N'SD da 4136 nâu', N'sd màu đen da màu nâu', 160000, 238000, 49, 5, N'Đôi', N'', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (36, N'DDNa0001', 10, 14, NULL, N'Dép da 083 đen', N'dép màu đen da màu đen MS 083', 175000, 265000, 51, 5, N'Đôi', N'', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (37, N'DKNa0001', 12, 12, NULL, N'Kẹp Dr Dragon', N'dép Dr Dragon màu bò', 145000, 210000, 45, 5, N'Đôi', N'', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (38, N'DKNa0002', 12, 12, NULL, N'Kẹp Cá Sấu', N'dép kẹp cá sấu', 105000, 165000, 57, 5, N'Đôi', N'', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (39, N'DKNa0003', 12, 12, NULL, N'Kẹp da ADIDAS', N'dép kẹp da adidas', 100000, 155000, 55, 5, N'Đôi', N'', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (40, N'DKNa0004', 12, 12, NULL, N'Kẹp da Clark', N'dép kẹp da Clark màu bò', 85000, 127000, 49, 5, N'Đôi', N'', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (41, N'DKNa0005', 12, 12, NULL, N'Kẹp da Clark đen', N'dép kẹp da Clark màu đen', 85000, 127000, 49, 5, N'Đôi', N'', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (42, N'DDNa0002', 10, 12, NULL, N'Pu xi SHISNIDO đen', N'dép quai ngang đế PU shi shisnido màu đen', 85000, 127000, 49, 5, N'Đôi', N'', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (43, N'DDNa0003', 10, 12, NULL, N'Pu xi SHISNIDO nâu', N'dép quai ngang đế PU shi shisnido màu nâu', 85000, 127000, 49, 5, N'Đôi', N'', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (44, N'DDNa0004', 10, 12, NULL, N'Pu xi SHISNIDO bò', N'dép quai ngang đế PU shi shisnido màu bò', 85000, 127000, 49, 4, N'Đôi', N'', N'', 1, N'Năm', NULL, NULL, 1, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05F01038B01 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (45, N'DDNa0005', 10, 12, NULL, N'Xốp thường', N'dép quai ngang levi''s', 45000, 75000, 67, 5, N'Đôi', N'', N'', 6, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (46, N'DKNa0006', 12, 12, NULL, N'kẹp xốp thường', N'dép kẹp levi''s', 45000, 75000, 67, 5, N'Đôi', N'', N'', 6, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (47, N'GM0002', 33, 12, NULL, N'G Mọi Clark đen', N'Giày mọi Clark đen ', 240000, 360000, 50, 6, N'Đôi', N'', N'', 6, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (48, N'BN0001', 35, 16, NULL, N'bóp nâu', N'', 140000, 195000, 39, 1, N'Cái', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05A00000000 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (49, N'GBG0001', 36, 5, NULL, N'Sdal trắng UG*', N'', 88000, 115000, 31, 4, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05A00000000 AS DateTime), N'admin', CAST(0x0000A0610121D2E4 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (50, N'NBN0001', 37, 10, NULL, N'nón bo trắng bông', N'', 55000, 75000, 36, 0, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 1, N'', CAST(0x0000A05A00000000 AS DateTime), N'admin', CAST(0x0000A0610121FF95 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (51, N'BN0002', 35, 13, NULL, N'Bóp Dunhill nâu', N'', 80000, 139000, 74, 0, N'Cái', N'', N'', 8, N'Tháng', NULL, NULL, 1, N'', CAST(0x0000A05A00000000 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (52, N'VDun0001', 30, 9, NULL, N'Dún dán c rít ', N'vải dún bông mai chân rít vàng hồng', 195000, 295000, 51, 2, N'Bộ', N'', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05A00000000 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (53, N'VDun0002', 30, 8, NULL, N'Dún thêu lai', N'vải dún bông thêu lai', 195000, 295000, 51, 5, N'Bộ', N'', N'', 1, N'Năm', NULL, NULL, 0, N'', CAST(0x0000A05A00000000 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (54, N'DX0001', 27, 5, NULL, N'kẹp chiếc lá trắng', N'kẹp hột 7F chiếc lá màu trắng', 120000, 165000, 38, 0, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 1, N'', CAST(0x0000A05A00000000 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (55, N'VCuoi0001', 31, NULL, NULL, N'Dún kết cườm trắng', N'', 190000, 265000, 39, 0, N'Bộ', N'', N'', 0, N'Ngày', NULL, NULL, 1, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (56, N'DThom0007', 19, NULL, NULL, N'DT izzi hồng', N'', 24500, 28000, 14, 1, N'Cái', N'', N'', 0, N'Ngày', NULL, NULL, 1, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (57, N'SDNu0001', 9, 5, NULL, N'Sd trắng xoàn giữa', N'sandal trắng gót 7F xoàn giữa dây kéo sau', 125000, 187000, 50, 5, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (58, N'DNG0001', 39, 15, NULL, N'D 2quai tim tr', N'Dép 2 quai tim màu trắng gót rời 7F', 130000, 189000, 45, 5, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (59, N'DNG0002', 39, 15, NULL, N'D Rọ lỗ TM5', N'Dép rọ lỗ TM5 7F màu đen', 130000, 189000, 45, 5, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (60, N'DNG0003', 39, 15, NULL, N'Lưới hột đen 3F', N'Dép lưới màu đ3n 3F+L12', 135000, 189000, 40, 5, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (61, N'DNG0004', 39, 15, NULL, N'Lưới hột nâu 5F', N'Dép lưới màu đ3n 5F+L12', 150000, 198000, 32, 5, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (62, N'SDNu0002', 9, 5, NULL, N'SD trắng hột giữa', N'Giày sandal AV435 trắng hột giữa dây kéo gót 7F', 125000, 187000, 50, 5, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (63, N'DXNu0001', 40, NULL, NULL, N'Xốp 5F xoàn nhí', N'Dép xốp 5F xoàn nhí Titu&Yun', 118000, 157000, 33, 5, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (64, N'DXNu0002', 40, 5, NULL, N'PU 7F lưới chéo trắng', N'Dép đế xuồng PU 7F lưới TiTa Island S23-99', 81000, 128000, 58, 5, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (65, N'DXNu0003', 40, 5, NULL, N'PU 5F quai MK hột', N'Dép đế xuồng PU 5F quai MK hột đá Pure DKNY AM6-VN926', 140000, 198000, 41, 5, N'Đôi', N'', N'', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (66, N'GBG0002', 36, 5, NULL, N'Bal hồng mickey', N'Giày bal hồng đầu chuột Mickey 1 quai dán ngang AD-1 (đại)', 105000, 157000, 50, 6, N'Đôi', N'', N'31-36', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (67, N'GBG0003', 36, 5, NULL, N'SD sen 3 đinh', N'Giày sandal màu sen 3 nút đinh ngang', 69000, 98000, 42, 5, N'Đôi', N'', N'13-17', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (68, N'GBG0004', 36, 5, NULL, N'SD kẻ sọc ZhaoL', N'Giày sandal màu đen kẻ sọc vịt ZhaoL', 40000, 59000, 48, 6, N'Đôi', N'', N'13-17', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (69, N'DB0001', 44, 5, NULL, N'Dr 2007 Đại', N'Dép Dr 2007 đại', 86000, 125000, 45, 5, N'Đôi', N'', N'31-35', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (70, N'DB0002', 44, 5, NULL, N'Dr 2007 Trung', N'Dép Dr 2007 Trung', 84000, 118000, 40, 5, N'Đôi', N'', N'25-29', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (71, N'DXNu0004', 40, 11, NULL, N'Đúc xoàn trắng', N'Dép đế đúc quai dán xoàn màu trắng', 93000, 139000, 49, 4, N'Đôi', N'', N'35-39', 8, N'Ngày', NULL, NULL, 1, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (72, N'DXNu0005', 40, 11, NULL, N'Đúc xoàn đen', N'Dép đế đúc quai dán xoàn màu đen', 93000, 139000, 49, 5, N'Đôi', N'', N'35-39', 15, N'Ngày', NULL, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'admin', CAST(0x0000A06301096F0E AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (73, N'DXNu0006', 40, 11, NULL, N'Đúc xịn trắng xoàn GFTL', N'dép đế xuồng đúc xịn 2 quai ngang xoàn hình chiếc lá', 125000, 187000, 50, 4, N'Đôi', N'', N'36-40', 8, N'Tháng', NULL, NULL, 1, N'', CAST(0x0000A05C00000000 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (74, N'DXNu0007', 40, 11, NULL, N'Đúc xịn 9F vàng Flower', N'dép đế xuồng đúc xịn 2 quai ngang màu vàng hột tròn', 135000, 197000, 46, 5, N'Đôi', N'', N'36-40', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05C00000000 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (75, N'DXNu0008', 40, 11, NULL, N'Kẹp xốp 5F kết đá 7màu', N'dép kẹp xốp đế xuồng kết đá 7 màu 9F BEBE fashion', 72000, 108000, 50, 5, N'Đôi', N'', N'35-39', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05C00000000 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (76, N'DXNu0009', 40, 11, NULL, N'Kẹp xốp hột 5F Gucci', N'dép kẹp xốp đế xuồng 5F in Gucci hột đen', 60000, 96000, 60, 4, N'Đôi', N'', N'35-39', 8, N'Tháng', NULL, NULL, 1, N'', CAST(0x0000A05C00000000 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (77, N'DXNu0010', 40, 11, NULL, N'Ngang xốp hột 5F Gucci', N'dép quai ngang xốp đế xuồng 5F in Gucci hột bạc', 60000, 96000, 60, 5, N'Đôi', N'', N'35-39', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05C00000000 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (78, N'DXNu0011', 40, 11, NULL, N'kẹp xốp hột 9F Gucci', N'dép kẹp xốp đế xuồng 5F in Gucci hột đen', 65000, 108000, 66, 5, N'Đôi', N'', N'35-39', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05C00000000 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (79, N'DT0001', 45, 11, NULL, N'Kẹp tẩy quai Burberry đen', N'dép kẹp tẩy xốp quai Burberry đen', 35000, 55000, 57, 5, N'Đôi', N'', N'35-39', 6, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05C00000000 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (80, N'DT0002', 45, 11, NULL, N'Kẹp tẩy quai thắt nâu', N'dép kẹp tẩy xốp quai thắt nâu', 35000, 55000, 57, 5, N'Đôi', N'', N'35-39', 6, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05C00000000 AS DateTime), N'admin', CAST(0x0000A06200A5B192 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (81, N'DT0003', 45, 11, NULL, N'Kẹp hẹ hột đỏ', N'dép kẹp đúc hẹ hột quai đỏ', 55000, 85000, 55, 5, N'Đôi', N'', N'35-39', 6, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05C00000000 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (91, N'DDNa0006', 10, 7, NULL, N'Bản may nâu xé', N'dép xé bản ngang màu nâu', 55000, 88000, 60, 5, N'Đôi', N'', N'39-42', 8, N'Tháng', NULL, NULL, 0, N'', CAST(0x0000A05C00000000 AS DateTime), N'admin', CAST(0x0000A06200A5A72D AS DateTime), 0)
INSERT [dbo].[SanPham] ([Id], [MaSanPham], [IdGroup], [IdXuatXu], [Avatar], [Ten], [MoTa], [GiaMua], [GiaBan], [LaiSuat], [SoLuong], [DonViTinh], [Hieu], [Size], [ThoiHan], [DonViThoiHan], [ThoiGianBaoHanh], [DonViBaoHanh], [IsSold], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (92, N'BN0003', 35, 13, NULL, N'bóp đen hugo', N'', 160000, 220000, 38, 1, N'Đôi', N'', N'', 1, N'Ngày', NULL, NULL, 1, N'', CAST(0x0000A05C00000000 AS DateTime), N'admin', CAST(0x0000A061012672DC AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
/****** Object:  Table [dbo].[KhachHang]    Script Date: 06/27/2012 17:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [varchar](10) NOT NULL,
	[IdGroup] [int] NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](3) NOT NULL,
	[DOB] [date] NULL,
	[CMND] [nchar](10) NULL,
	[NgayCap] [date] NULL,
	[NoiCap] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[DTDD] [nvarchar](20) NULL,
	[Fax] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[TichLuy] [bigint] NOT NULL,
	[Diem] [int] NOT NULL,
	[GhiChu] [nvarchar](200) NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[DeleteFlag] [bit] NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [IdGroup], [Ten], [GioiTinh], [DOB], [CMND], [NgayCap], [NoiCap], [DiaChi], [DienThoai], [DTDD], [Fax], [Email], [TichLuy], [Diem], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (1, N'KHTT0001', 2, N'Lê Đăng Khanh', N'Nam', CAST(0xED0A0B00 AS Date), N'1234567   ', CAST(0xAC350B00 AS Date), N'sdfghjkl', N'Định Bình long thới tiểu cần Trà Vinh', N'0932824616', N'', N'', N'ldkhanh81@yahoo.com', 120838, 0, N'ngày sinh con gái... kỷ niệm ngày cưới...', N'', CAST(0x0000A04D00000000 AS DateTime), N'admin', CAST(0x0000A07D00F25699 AS DateTime), 0)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [IdGroup], [Ten], [GioiTinh], [DOB], [CMND], [NgayCap], [NoiCap], [DiaChi], [DienThoai], [DTDD], [Fax], [Email], [TichLuy], [Diem], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (2, N'VIP0001', 3, N'Lê Ngọc', N'Nữ', CAST(0x9B160B00 AS Date), N'123456    ', CAST(0xAC350B00 AS Date), N'asdfghj', N'Định phú B long thới Tiểu cần TV', N'0743616794', NULL, N'', N'', 7945, 0, N'', N'', CAST(0x0000A04D00000000 AS DateTime), N'', CAST(0x0000A05300000000 AS DateTime), 0)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [IdGroup], [Ten], [GioiTinh], [DOB], [CMND], [NgayCap], [NoiCap], [DiaChi], [DienThoai], [DTDD], [Fax], [Email], [TichLuy], [Diem], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (3, N'KT0001', 1, N'Khách thường', N'Nam', CAST(0x07240B00 AS Date), N'          ', CAST(0x07240B00 AS Date), N'', N'', N'', NULL, N'', N'', 0, 0, N'', N'', CAST(0x0000A05800000000 AS DateTime), N'', CAST(0x0000A05800000000 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
/****** Object:  Table [dbo].[HoaDon]    Script Date: 06/27/2012 17:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [char](6) NOT NULL,
	[IdType] [int] NOT NULL,
	[IdUser] [int] NULL,
	[IdKhachHang] [int] NULL,
	[IdStatus] [int] NOT NULL,
	[IsCKTichLuy] [bit] NOT NULL,
	[IsCKTongHD] [bit] NOT NULL,
	[TienChietKhau] [bigint] NOT NULL,
	[ConLai] [bigint] NOT NULL,
	[ThanhTien] [bigint] NOT NULL,
	[GhiChu] [nvarchar](200) NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[DeleteFlag] [bit] NOT NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (103, N'M00001', 1, NULL, NULL, 1, 0, 0, 0, 0, 80000, N'', N'', CAST(0x0000A058016217B3 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (104, N'B00001', 2, NULL, 3, 1, 0, 0, 0, 0, 25000, N'', N'', CAST(0x0000A058016681B3 AS DateTime), N'', CAST(0x0000A05800000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (105, N'M00002', 1, NULL, NULL, 1, 0, 0, 0, 0, 280000, N'', N'', CAST(0x0000A059010FFDA6 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (106, N'M00003', 1, NULL, NULL, 1, 0, 0, 0, 0, 840000, N'', N'', CAST(0x0000A059011190FB AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (107, N'B00002', 2, NULL, NULL, 1, 0, 0, 0, 0, 90000, N'', N'', CAST(0x0000A0590111EA6E AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (108, N'B00003', 2, NULL, NULL, 1, 0, 0, 0, 0, 360000, N'', N'', CAST(0x0000A0590112052D AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (109, N'M00004', 1, NULL, NULL, 1, 0, 0, 0, 0, 600000, N'', N'', CAST(0x0000A0590113251F AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (110, N'M00005', 1, NULL, NULL, 1, 0, 0, 0, 0, 420000, N'', N'', CAST(0x0000A059011375FA AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (111, N'M00006', 1, NULL, NULL, 1, 0, 0, 0, 0, 290000, N'', N'', CAST(0x0000A0590113DEF7 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (112, N'M00007', 1, NULL, NULL, 1, 0, 0, 0, 0, 200000, N'', N'', CAST(0x0000A0590113FE56 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (113, N'M00008', 1, NULL, NULL, 1, 0, 0, 0, 0, 460000, N'', N'', CAST(0x0000A05901142C39 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (114, N'B00004', 2, NULL, NULL, 1, 0, 0, 0, 0, 600000, N'', N'', CAST(0x0000A0590114A2B1 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (115, N'M00009', 1, NULL, NULL, 1, 0, 0, 0, 0, 120000, N'', N'', CAST(0x0000A0590119B0B0 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (116, N'M00010', 1, NULL, NULL, 1, 0, 0, 0, 0, 222000, N'', N'', CAST(0x0000A059011AF942 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (117, N'M00011', 1, NULL, NULL, 1, 0, 0, 0, 0, 60000, N'', N'', CAST(0x0000A0590121B952 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (118, N'M00012', 1, NULL, NULL, 1, 0, 0, 0, 0, 70000, N'', N'', CAST(0x0000A0590122122E AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (119, N'M00013', 1, NULL, NULL, 1, 0, 0, 0, 0, 90000, N'', N'', CAST(0x0000A05901223967 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (120, N'M00014', 1, NULL, NULL, 1, 0, 0, 0, 0, 125000, N'', N'', CAST(0x0000A0590122725E AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (121, N'M00015', 1, NULL, NULL, 1, 0, 0, 0, 0, 80000, N'', N'', CAST(0x0000A0590122CA62 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (122, N'M00016', 1, NULL, NULL, 1, 0, 0, 0, 0, 60000, N'', N'', CAST(0x0000A05901231F4A AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (123, N'M00017', 1, NULL, NULL, 1, 0, 0, 0, 0, 65000, N'', N'', CAST(0x0000A05901233E94 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (124, N'M00018', 1, NULL, NULL, 1, 0, 0, 0, 0, 185000, N'', N'', CAST(0x0000A05901361B93 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (125, N'M00019', 1, NULL, NULL, 1, 0, 0, 0, 0, 175000, N'', N'', CAST(0x0000A05901363E29 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (126, N'M00020', 1, NULL, NULL, 1, 0, 0, 0, 0, 165000, N'', N'', CAST(0x0000A05901378180 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (127, N'M00021', 1, NULL, NULL, 1, 0, 0, 0, 0, 160000, N'', N'', CAST(0x0000A0590138A5A9 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (128, N'M00022', 1, NULL, NULL, 1, 0, 0, 0, 0, 155000, N'', N'', CAST(0x0000A05901391068 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (129, N'M00023', 1, NULL, NULL, 1, 0, 0, 0, 0, 185000, N'', N'', CAST(0x0000A05901396AA4 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (130, N'M00024', 1, NULL, NULL, 1, 0, 0, 0, 0, 425000, N'', N'', CAST(0x0000A05901628766 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 1)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (131, N'M00025', 1, NULL, NULL, 1, 0, 0, 0, 0, 425000, N'', N'', CAST(0x0000A0590162D7BB AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 1)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (132, N'M00026', 1, NULL, NULL, 1, 0, 0, 0, 0, 500000, N'', N'', CAST(0x0000A05901635453 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 1)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (133, N'M00027', 1, NULL, NULL, 1, 0, 0, 0, 0, 500000, N'', N'', CAST(0x0000A05901636B9C AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 1)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (134, N'M00028', 1, NULL, NULL, 1, 0, 0, 0, 0, 425000, N'', N'', CAST(0x0000A05901646CA5 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (135, N'M00029', 1, NULL, NULL, 1, 0, 0, 0, 0, 425000, N'', N'', CAST(0x0000A05901648769 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (136, N'M00030', 1, NULL, NULL, 1, 0, 0, 0, 0, 500000, N'', N'', CAST(0x0000A0590164C675 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (137, N'M00031', 1, NULL, NULL, 1, 0, 0, 0, 0, 500000, N'', N'', CAST(0x0000A0590164D60A AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (138, N'M00032', 1, NULL, NULL, 1, 0, 0, 0, 0, 325000, N'', N'', CAST(0x0000A05901653CAB AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (139, N'M00033', 1, NULL, NULL, 1, 0, 0, 0, 0, 325000, N'', N'', CAST(0x0000A0590165591E AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (140, N'M00034', 1, NULL, NULL, 1, 0, 0, 0, 0, 925000, N'', N'', CAST(0x0000A05901668B22 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (141, N'M00035', 1, NULL, NULL, 1, 0, 0, 0, 0, 800000, N'', N'', CAST(0x0000A0590166E730 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (142, N'M00036', 1, NULL, NULL, 1, 0, 0, 0, 0, 875000, N'', N'', CAST(0x0000A05901673B4C AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (143, N'M00037', 1, NULL, NULL, 1, 0, 0, 0, 0, 725000, N'', N'', CAST(0x0000A0590167AD7F AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (144, N'M00038', 1, NULL, NULL, 1, 0, 0, 0, 0, 525000, N'', N'', CAST(0x0000A059016816F7 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (145, N'M00039', 1, NULL, NULL, 1, 0, 0, 0, 0, 500000, N'', N'', CAST(0x0000A059016853A6 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (146, N'M00040', 1, NULL, NULL, 1, 0, 0, 0, 0, 425000, N'', N'', CAST(0x0000A0590168E9BA AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (147, N'M00041', 1, NULL, NULL, 1, 0, 0, 0, 0, 425000, N'', N'', CAST(0x0000A0590168F9AF AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (148, N'M00042', 1, NULL, NULL, 1, 0, 0, 0, 0, 425000, N'', N'', CAST(0x0000A05901696499 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (149, N'M00043', 1, NULL, NULL, 1, 0, 0, 0, 0, 425000, N'', N'', CAST(0x0000A05901697C99 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (150, N'M00044', 1, NULL, NULL, 1, 0, 0, 0, 0, 425000, N'', N'', CAST(0x0000A05901698F20 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (151, N'M00045', 1, NULL, NULL, 1, 0, 0, 0, 0, 225000, N'', N'', CAST(0x0000A059016A47C0 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (152, N'M00046', 1, NULL, NULL, 1, 0, 0, 0, 0, 225000, N'', N'', CAST(0x0000A059016A72F6 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (153, N'M00047', 1, NULL, NULL, 1, 0, 0, 0, 0, 1440000, N'', N'', CAST(0x0000A059016B102F AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (154, N'M00048', 1, NULL, NULL, 1, 0, 0, 0, 0, 140000, N'', N'', CAST(0x0000A05A00A355C0 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (155, N'B00005', 2, NULL, 3, 1, 0, 0, 0, 0, 195000, N'', N'', CAST(0x0000A05A00A38FC0 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (156, N'M00049', 1, NULL, NULL, 1, 0, 0, 0, 0, 352000, N'', N'', CAST(0x0000A05A00BBDC8D AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (157, N'M00050', 1, NULL, NULL, 1, 0, 0, 0, 0, 55000, N'', N'', CAST(0x0000A05A00E47C5A AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (158, N'M00051', 1, NULL, NULL, 1, 0, 0, 0, 0, 80000, N'', N'', CAST(0x0000A05A00E4D1C3 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (159, N'B00006', 2, NULL, 3, 1, 0, 0, 0, 0, 427000, N'', N'', CAST(0x0000A05A00F8DDAD AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (160, N'M00052', 1, NULL, NULL, 1, 0, 0, 0, 0, 390000, N'', N'', CAST(0x0000A05A00FB27A6 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (161, N'M00053', 1, NULL, NULL, 1, 0, 0, 0, 0, 1365000, N'', N'', CAST(0x0000A05A00FB6D0D AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (162, N'C00001', 4, NULL, NULL, 1, 0, 0, 0, 0, 195000, N'khách trả bóp BN0001', N'', CAST(0x0000A05A0102E0D8 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (163, N'M00054', 1, NULL, NULL, 1, 0, 0, 0, 0, 120000, N'', N'', CAST(0x0000A05A0103B394 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (164, N'B00007', 2, NULL, 3, 1, 0, 0, 0, 0, 780000, N'', N'', CAST(0x0000A05A010408FE AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (165, N'C00002', 4, NULL, NULL, 1, 0, 0, 0, 0, 320000, N'bù tiền còn nợ khách bộ áo dài 320000', N'', CAST(0x0000A05A010432C2 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (166, N'B00008', 2, NULL, 3, 1, 0, 0, 0, 0, 190000, N'', N'', CAST(0x0000A05A0104F56E AS DateTime), N'admin', CAST(0x0000A0610121D2E8 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (167, N'M00055', 1, NULL, NULL, 1, 0, 0, 0, 0, 190000, N'', N'', CAST(0x0000A05B00A366F4 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (168, N'B00009', 2, NULL, 3, 1, 0, 0, 0, 0, 265000, N'', N'', CAST(0x0000A05B00A38A44 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (169, N'T00001', 3, NULL, NULL, 1, 0, 0, 0, 0, 89000, N'bán giày baby trắng viền xanh cho bé Ngân ', N'', CAST(0x0000A05B00A3DB71 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (170, N'M00056', 1, NULL, NULL, 1, 0, 0, 0, 0, 73500, N'', N'', CAST(0x0000A05B00DBB9FC AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (171, N'B00010', 2, NULL, 3, 1, 0, 0, 0, 0, 28000, N'', N'', CAST(0x0000A05B00DBF85F AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (172, N'B00011', 2, NULL, 3, 1, 0, 0, 0, 0, 28000, N'', N'', CAST(0x0000A05B00DC2290 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (173, N'M00057', 1, NULL, NULL, 1, 0, 0, 0, 0, 625000, N'', N'', CAST(0x0000A05B00E6DD8F AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (174, N'B00012', 2, NULL, 3, 1, 0, 0, 0, 0, 98000, N'', N'', CAST(0x0000A05B00FEC766 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (175, N'M00058', 1, NULL, NULL, 1, 0, 0, 0, 0, 650000, N'', N'', CAST(0x0000A05B014FB12C AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (176, N'M00059', 1, NULL, NULL, 1, 0, 0, 0, 0, 650000, N'', N'', CAST(0x0000A05B01507C78 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (177, N'M00060', 1, NULL, NULL, 1, 0, 0, 0, 0, 675000, N'', N'', CAST(0x0000A05B015140B6 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (178, N'M00061', 1, NULL, NULL, 1, 0, 0, 0, 0, 750000, N'', N'', CAST(0x0000A05B0151788A AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (179, N'M00062', 1, NULL, NULL, 1, 0, 0, 0, 0, 625000, N'', N'', CAST(0x0000A05B01531DF1 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (180, N'M00063', 1, NULL, NULL, 1, 0, 0, 0, 0, 590000, N'', N'', CAST(0x0000A05B01542B31 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (181, N'M00064', 1, NULL, NULL, 1, 0, 0, 0, 0, 405000, N'', N'', CAST(0x0000A05B01660EF6 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (182, N'M00065', 1, NULL, NULL, 1, 0, 0, 0, 0, 700000, N'', N'', CAST(0x0000A05B0166B1A7 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (183, N'M00066', 1, NULL, NULL, 1, 0, 0, 0, 0, 630000, N'', N'', CAST(0x0000A05B0167738F AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (184, N'M00067', 1, NULL, NULL, 1, 0, 0, 0, 0, 345000, N'', N'', CAST(0x0000A05B0167DD01 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (185, N'M00068', 1, NULL, NULL, 1, 0, 0, 0, 0, 240000, N'', N'', CAST(0x0000A05B01689471 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (186, N'M00069', 1, NULL, NULL, 1, 0, 0, 0, 0, 430000, N'', N'', CAST(0x0000A05B016B7263 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (187, N'M00070', 1, NULL, NULL, 1, 0, 0, 0, 0, 420000, N'', N'', CAST(0x0000A05B016BA9FB AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (188, N'M00071', 1, NULL, NULL, 1, 0, 0, 0, 0, 465000, N'', N'', CAST(0x0000A05B016CFA9E AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (189, N'M00072', 1, NULL, NULL, 1, 0, 0, 0, 0, 465000, N'', N'', CAST(0x0000A05B016D0FAF AS DateTime), N'admin', CAST(0x0000A06301096EFC AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (190, N'M00073', 1, NULL, NULL, 1, 0, 0, 0, 0, 625000, N'', N'', CAST(0x0000A05C0091E59A AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (191, N'M00074', 1, NULL, NULL, 1, 0, 0, 0, 0, 675000, N'', N'', CAST(0x0000A05C0092E4C5 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (192, N'M00075', 1, NULL, NULL, 1, 0, 0, 0, 0, 360000, N'', N'', CAST(0x0000A05C00939BC6 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (193, N'M00076', 1, NULL, NULL, 1, 0, 0, 0, 0, 300000, N'', N'', CAST(0x0000A05C00992A4C AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (194, N'M00077', 1, NULL, NULL, 1, 0, 0, 0, 0, 300000, N'', N'', CAST(0x0000A05C00995D59 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (195, N'M00078', 1, NULL, NULL, 1, 0, 0, 0, 0, 325000, N'', N'', CAST(0x0000A05C0099A94A AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (196, N'M00079', 1, NULL, NULL, 1, 0, 0, 0, 0, 175000, N'', N'', CAST(0x0000A05C00A31827 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (197, N'M00080', 1, NULL, NULL, 1, 0, 0, 0, 0, 175000, N'', N'', CAST(0x0000A05C00A337BE AS DateTime), N'admin', CAST(0x0000A06200A5B192 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (198, N'M00081', 1, NULL, NULL, 1, 0, 0, 0, 0, 275000, N'', N'', CAST(0x0000A05C00A3C29C AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (208, N'M00082', 1, NULL, NULL, 1, 0, 0, 0, 0, 275000, N'', N'', CAST(0x0000A05C0121F9F8 AS DateTime), N'admin', CAST(0x0000A06200A5A724 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (209, N'M00083', 1, NULL, NULL, 1, 0, 0, 0, 0, 160000, N'', N'', CAST(0x0000A05C01394BA6 AS DateTime), N'admin', CAST(0x0000A061012672DC AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (210, N'B00013', 2, NULL, 3, 1, 0, 0, 0, 0, 359000, N'', N'', CAST(0x0000A05C0139B346 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (211, N'B00014', 2, NULL, 3, 1, 0, 0, 0, 0, 187000, N'', N'', CAST(0x0000A05C013B2DCC AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (212, N'B00015', 2, NULL, 3, 1, 0, 0, 0, 0, 96000, N'', N'', CAST(0x0000A05C013B9171 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (213, N'T00001', 3, NULL, NULL, 1, 0, 0, 0, 0, 150000, N'test', N'', CAST(0x0000A05F00BF2B12 AS DateTime), N'', CAST(0x0000A05F00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (214, N'T00002', 3, NULL, NULL, 1, 0, 0, 0, 0, 10000, N'test 2', N'', CAST(0x0000A05F00BF95CD AS DateTime), N'', CAST(0x0000A05F00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (215, N'C00003', 4, NULL, NULL, 1, 0, 0, 0, 0, 10000, N'test', N'', CAST(0x0000A05F00BFCF89 AS DateTime), N'', CAST(0x0000A05F00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (216, N'T00003', 3, NULL, NULL, 1, 0, 0, 0, 0, 143432, N'ettt', N'', CAST(0x0000A05F00E88927 AS DateTime), N'', CAST(0x0000A05F00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (217, N'T00004', 3, NULL, NULL, 1, 0, 0, 0, 0, 656565, N'fggfsdgfd', N'', CAST(0x0000A05F00E891DE AS DateTime), N'', CAST(0x0000A05F00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (218, N'T00005', 3, NULL, NULL, 1, 0, 0, 0, 0, 432423, N'dd', N'', CAST(0x0000A05F0100D112 AS DateTime), N'', CAST(0x0000A05F00000000 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (219, N'T00006', 3, NULL, NULL, 1, 0, 0, 0, 0, 14444, N'tete', N'', CAST(0x0000A05F01016FED AS DateTime), N'', CAST(0x0000A05F0101D2E9 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (220, N'T00007', 3, NULL, NULL, 1, 0, 0, 0, 0, 656565, N'test', N'', CAST(0x0000A05F0101ECE4 AS DateTime), N'', CAST(0x0000A05F0101ECE4 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (221, N'T00008', 3, NULL, NULL, 1, 0, 0, 0, 0, 65656, N'testddd', N'', CAST(0x0000A05F0101F2CE AS DateTime), N'', CAST(0x0000A05F0101F2CE AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (222, N'B00016', 2, NULL, 1, 1, 0, 0, 0, 0, 287000, N'testtttttt', N'', CAST(0x0000A05F0103309C AS DateTime), N'', CAST(0x0000A05F0103309C AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (223, N'B00017', 2, NULL, 1, 1, 0, 0, 0, 0, 256000, N'', N'', CAST(0x0000A05F01038ACE AS DateTime), N'', CAST(0x0000A05F01038ACE AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (224, N'B00018', 2, NULL, 3, 2, 0, 0, 0, -109000, 129000, N'tertstfgsafdsfsafsadfsrf  fgsagfsgdfgad', N'', CAST(0x0000A05F010E1617 AS DateTime), N'', CAST(0x0000A05F010E438E AS DateTime), 1)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (225, N'B00019', 2, NULL, 1, 1, 0, 0, 0, 0, 75000, N'test', N'admin', CAST(0x0000A0610121FF82 AS DateTime), N'admin', CAST(0x0000A0610121FF82 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (226, N'T00009', 3, 2, NULL, 1, 0, 0, 0, 0, 5454, N'test', N'admin', CAST(0x0000A061012939B9 AS DateTime), N'admin', CAST(0x0000A061012939B9 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (227, N'B00020', 2, 2, 1, 2, 0, 0, 0, -99000, 129000, N'', N'admin', CAST(0x0000A06200B4ADC8 AS DateTime), N'admin', CAST(0x0000A07400B0E949 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (228, N'B00021', 2, 3, 1, 1, 0, 0, 0, 0, 129000, N'', N'test', CAST(0x0000A0620113CF24 AS DateTime), N'test', CAST(0x0000A0620113CF24 AS DateTime), 0)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [IdType], [IdUser], [IdKhachHang], [IdStatus], [IsCKTichLuy], [IsCKTongHD], [TienChietKhau], [ConLai], [ThanhTien], [GhiChu], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (229, N'B00022', 2, 2, 1, 1, 1, 0, 0, 0, 348000, N'', N'admin', CAST(0x0000A07D00F25551 AS DateTime), N'admin', CAST(0x0000A07D00F25551 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
/****** Object:  Table [dbo].[ChietKhau]    Script Date: 06/27/2012 17:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChietKhau](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdSanPham] [int] NOT NULL,
	[idKhachHangGroup] [int] NULL,
	[Value] [int] NOT NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[DeleteFlag] [bit] NOT NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChietKhau] ON
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (1, 1, NULL, 0, N'', CAST(0x0000A05800000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (2, 2, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (3, 3, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (4, 4, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (5, 5, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (6, 6, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (7, 7, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (8, 8, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (9, 9, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (10, 10, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (11, 11, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (12, 12, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (13, 13, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (14, 14, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (15, 15, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (16, 16, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (17, 17, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (18, 18, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (19, 19, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (20, 20, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (21, 21, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (22, 22, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (23, 23, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (24, 24, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 1)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (25, 25, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 1)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (26, 26, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 1)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (27, 27, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 1)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (28, 28, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (29, 29, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (30, 30, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (31, 31, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (32, 32, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (33, 33, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (34, 34, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (35, 35, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (36, 36, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (37, 37, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (38, 38, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (39, 39, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (40, 40, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (41, 41, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (42, 42, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (43, 43, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (44, 44, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (45, 45, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (46, 46, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (47, 47, NULL, 0, N'', CAST(0x0000A05900000000 AS DateTime), N'', CAST(0x0000A05900000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (48, 48, NULL, 0, N'', CAST(0x0000A05A00000000 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (49, 49, NULL, 0, N'', CAST(0x0000A05A00000000 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (50, 50, NULL, 0, N'', CAST(0x0000A05A00000000 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (51, 51, NULL, 0, N'', CAST(0x0000A05A00000000 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (52, 52, NULL, 0, N'', CAST(0x0000A05A00000000 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (53, 53, NULL, 0, N'', CAST(0x0000A05A00000000 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (54, 54, NULL, 0, N'', CAST(0x0000A05A00000000 AS DateTime), N'', CAST(0x0000A05A00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (55, 55, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (56, 56, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (57, 57, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (58, 58, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (59, 59, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (60, 60, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (61, 61, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (62, 62, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (63, 63, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (64, 64, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (65, 65, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (66, 66, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (67, 67, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (68, 68, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (69, 69, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (70, 70, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (71, 71, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'', CAST(0x0000A05B00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (72, 72, NULL, 0, N'', CAST(0x0000A05B00000000 AS DateTime), N'admin', CAST(0x0000A06301096F05 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (73, 73, NULL, 0, N'', CAST(0x0000A05C00000000 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (74, 74, NULL, 0, N'', CAST(0x0000A05C00000000 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (75, 75, NULL, 0, N'', CAST(0x0000A05C00000000 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (76, 76, NULL, 0, N'', CAST(0x0000A05C00000000 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (77, 77, NULL, 0, N'', CAST(0x0000A05C00000000 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (78, 78, NULL, 0, N'', CAST(0x0000A05C00000000 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (79, 79, NULL, 0, N'', CAST(0x0000A05C00000000 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (80, 80, NULL, 0, N'', CAST(0x0000A05C00000000 AS DateTime), N'admin', CAST(0x0000A06200A5B192 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (81, 81, NULL, 0, N'', CAST(0x0000A05C00000000 AS DateTime), N'', CAST(0x0000A05C00000000 AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (91, 91, NULL, 0, N'', CAST(0x0000A05C00000000 AS DateTime), N'admin', CAST(0x0000A06200A5A72D AS DateTime), 0)
INSERT [dbo].[ChietKhau] ([Id], [IdSanPham], [idKhachHangGroup], [Value], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [DeleteFlag]) VALUES (92, 92, NULL, 0, N'', CAST(0x0000A05C00000000 AS DateTime), N'admin', CAST(0x0000A061012672DC AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[ChietKhau] OFF
/****** Object:  Table [dbo].[HoaDonDetail]    Script Date: 06/27/2012 17:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdHoaDon] [int] NOT NULL,
	[IdSanPham] [int] NOT NULL,
	[DonGia] [bigint] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ChietKhau] [int] NOT NULL,
	[ThanhTien] [bigint] NOT NULL,
	[IsSendBack] [bit] NOT NULL,
 CONSTRAINT [PK_DonHangDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HoaDonDetail] ON
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (118, 103, 1, 0, 4, 0, 80000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (119, 104, 1, 25000, 1, 0, 25000, 1)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (120, 105, 2, 0, 4, 0, 280000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (121, 106, 3, 0, 3, 0, 840000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (122, 107, 2, 90000, 1, 0, 90000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (123, 108, 3, 360000, 1, 0, 360000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (124, 109, 4, 0, 2, 0, 600000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (125, 110, 5, 0, 2, 0, 420000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (126, 111, 6, 0, 1, 0, 290000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (127, 112, 7, 0, 1, 0, 200000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (128, 113, 8, 0, 2, 0, 460000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (129, 114, 5, 250000, 1, 0, 250000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (130, 114, 4, 350000, 1, 0, 350000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (131, 115, 9, 0, 3, 0, 120000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (132, 116, 10, 0, 6, 0, 222000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (133, 117, 11, 0, 2, 0, 60000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (134, 118, 12, 0, 2, 0, 70000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (135, 119, 13, 0, 3, 0, 90000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (136, 120, 14, 0, 5, 0, 125000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (137, 121, 15, 0, 4, 0, 80000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (138, 122, 16, 0, 1, 0, 60000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (139, 123, 17, 0, 1, 0, 65000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (140, 124, 18, 0, 1, 0, 185000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (141, 125, 19, 0, 1, 0, 175000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (142, 126, 20, 0, 1, 0, 165000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (143, 127, 21, 0, 1, 0, 160000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (144, 128, 22, 0, 1, 0, 155000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (145, 129, 23, 0, 1, 0, 185000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (146, 130, 24, 0, 5, 0, 425000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (147, 131, 25, 0, 5, 0, 425000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (148, 132, 26, 0, 5, 0, 500000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (149, 133, 27, 0, 5, 0, 500000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (150, 134, 28, 0, 5, 0, 425000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (151, 135, 29, 0, 5, 0, 425000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (152, 136, 30, 0, 5, 0, 500000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (153, 137, 31, 0, 5, 0, 500000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (154, 138, 32, 0, 5, 0, 325000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (155, 139, 33, 0, 5, 0, 325000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (156, 140, 34, 0, 5, 0, 925000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (157, 141, 35, 0, 5, 0, 800000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (158, 142, 36, 0, 5, 0, 875000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (159, 143, 37, 0, 5, 0, 725000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (160, 144, 38, 0, 5, 0, 525000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (161, 145, 39, 0, 5, 0, 500000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (162, 146, 40, 0, 5, 0, 425000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (163, 147, 41, 0, 5, 0, 425000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (164, 148, 42, 0, 5, 0, 425000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (165, 149, 43, 0, 5, 0, 425000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (166, 150, 44, 0, 5, 0, 425000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (167, 151, 45, 0, 5, 0, 225000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (168, 152, 46, 0, 5, 0, 225000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (169, 153, 47, 0, 6, 0, 1440000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (170, 154, 48, 0, 1, 0, 140000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (171, 155, 48, 195000, 1, 0, 195000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (172, 156, 49, 0, 4, 0, 352000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (173, 157, 50, 0, 1, 0, 55000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (174, 158, 51, 0, 1, 0, 80000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (175, 159, 51, 139000, 1, 0, 139000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (176, 159, 18, 288000, 1, 0, 288000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (177, 160, 52, 0, 2, 0, 390000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (178, 161, 53, 0, 7, 0, 1365000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (179, 163, 54, 0, 1, 0, 120000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (180, 164, 53, 295000, 2, 2, 590000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (181, 164, 1, 25000, 1, 0, 25000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (182, 164, 54, 165000, 1, 0, 165000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (183, 166, 50, 75000, 1, 0, 75000, 1)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (184, 166, 49, 115000, 1, 0, 115000, 1)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (185, 167, 55, 0, 1, 0, 190000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (186, 168, 55, 265000, 1, 0, 265000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (187, 170, 56, 0, 3, 0, 73500, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (188, 171, 56, 28000, 1, 0, 28000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (189, 172, 56, 28000, 1, 0, 28000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (190, 173, 57, 0, 5, 0, 625000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (191, 174, 32, 98000, 1, 0, 98000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (192, 175, 58, 0, 5, 0, 650000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (193, 176, 59, 0, 5, 0, 650000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (194, 177, 60, 0, 5, 0, 675000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (195, 178, 61, 0, 5, 0, 750000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (196, 179, 62, 0, 5, 0, 625000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (197, 180, 63, 0, 5, 0, 590000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (198, 181, 64, 0, 5, 0, 405000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (199, 182, 65, 0, 5, 0, 700000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (200, 183, 66, 0, 6, 0, 630000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (201, 184, 67, 0, 5, 0, 345000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (202, 185, 68, 0, 6, 0, 240000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (203, 186, 69, 0, 5, 0, 430000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (204, 187, 70, 0, 5, 0, 420000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (205, 188, 71, 0, 5, 0, 465000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (206, 189, 72, 0, 5, 0, 465000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (207, 190, 73, 0, 5, 0, 625000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (208, 191, 74, 0, 5, 0, 675000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (209, 192, 75, 0, 5, 0, 360000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (210, 193, 76, 0, 5, 0, 300000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (211, 194, 77, 0, 5, 0, 300000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (212, 195, 78, 0, 5, 0, 325000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (213, 196, 79, 0, 5, 0, 175000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (214, 197, 80, 0, 5, 0, 175000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (215, 198, 81, 0, 5, 0, 275000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (225, 208, 91, 0, 5, 0, 275000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (226, 209, 92, 0, 1, 0, 160000, 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (227, 210, 92, 220000, 1, 0, 220000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (228, 210, 71, 139000, 1, 0, 139000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (229, 211, 73, 187000, 1, 0, 187000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (230, 212, 76, 96000, 1, 0, 96000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (231, 222, 28, 129000, 1, 10, 129000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (232, 222, 30, 158000, 1, 0, 158000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (233, 223, 28, 129000, 1, 5, 129000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (234, 223, 44, 127000, 1, 10, 127000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (235, 224, 28, 129000, 1, 0, 129000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (236, 225, 50, 75000, 1, 10, 75000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (237, 227, 28, 129000, 1, 5, 129000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (238, 228, 28, 129000, 1, 10, 129000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (239, 229, 29, 129000, 2, 10, 258000, 0)
INSERT [dbo].[HoaDonDetail] ([Id], [IdHoaDon], [IdSanPham], [DonGia], [SoLuong], [ChietKhau], [ThanhTien], [IsSendBack]) VALUES (240, 229, 2, 90000, 1, 20, 90000, 0)
SET IDENTITY_INSERT [dbo].[HoaDonDetail] OFF
/****** Object:  Default [DF_SanPham_LaiSuat]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_LaiSuat]  DEFAULT ((0)) FOR [LaiSuat]
GO
/****** Object:  Default [DF_SanPham_SoLuong]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuong]  DEFAULT ((0)) FOR [SoLuong]
GO
/****** Object:  Default [DF_SanPham_IsSold]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_IsSold]  DEFAULT ((0)) FOR [IsSold]
GO
/****** Object:  Default [DF_KhachHang_GioiTinh]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_KhachHang_GioiTinh]  DEFAULT (N'Nam') FOR [GioiTinh]
GO
/****** Object:  Default [DF_KhachHang_Diem]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_KhachHang_Diem]  DEFAULT ((0)) FOR [TichLuy]
GO
/****** Object:  Default [DF_KhachHang_Diem_1]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_KhachHang_Diem_1]  DEFAULT ((0)) FOR [Diem]
GO
/****** Object:  Default [DF_HoaDon_IdStatus]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_IdStatus]  DEFAULT ((1)) FOR [IdStatus]
GO
/****** Object:  Default [DF_HoaDon_TienChietKhau]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_TienChietKhau]  DEFAULT ((0)) FOR [TienChietKhau]
GO
/****** Object:  Default [DF_HoaDon_ConLai]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_ConLai]  DEFAULT ((0)) FOR [ConLai]
GO
/****** Object:  Default [DF_DonHang_ThanhTien]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_DonHang_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
/****** Object:  Default [DF_HoaDonDetail_SoLuong]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[HoaDonDetail] ADD  CONSTRAINT [DF_HoaDonDetail_SoLuong]  DEFAULT ((1)) FOR [SoLuong]
GO
/****** Object:  Default [DF_HoaDonDetail_ChietKhau]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[HoaDonDetail] ADD  CONSTRAINT [DF_HoaDonDetail_ChietKhau]  DEFAULT ((0)) FOR [ChietKhau]
GO
/****** Object:  Default [DF_DonHangDetail_ThanhTien]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[HoaDonDetail] ADD  CONSTRAINT [DF_DonHangDetail_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
/****** Object:  Default [DF_HoaDonDetail_IsSendBack]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[HoaDonDetail] ADD  CONSTRAINT [DF_HoaDonDetail_IsSendBack]  DEFAULT ((0)) FOR [IsSendBack]
GO
/****** Object:  ForeignKey [FK_User_UserGroup]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserGroup] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[UserGroup] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserGroup]
GO
/****** Object:  ForeignKey [FK_SanPham_SanPhamGroup]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_SanPhamGroup] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[SanPhamGroup] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_SanPhamGroup]
GO
/****** Object:  ForeignKey [FK_SanPham_XuatXu]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_XuatXu] FOREIGN KEY([IdXuatXu])
REFERENCES [dbo].[XuatXu] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_XuatXu]
GO
/****** Object:  ForeignKey [FK_KhachHang_KhachHangGroup]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_KhachHangGroup] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[KhachHangGroup] ([Id])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_KhachHangGroup]
GO
/****** Object:  ForeignKey [FK_HoaDon_HoaDonGroup]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_HoaDonGroup] FOREIGN KEY([IdType])
REFERENCES [dbo].[HoaDonType] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_HoaDonGroup]
GO
/****** Object:  ForeignKey [FK_HoaDon_HoaDonStatus]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_HoaDonStatus] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[HoaDonStatus] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_HoaDonStatus]
GO
/****** Object:  ForeignKey [FK_HoaDon_KhachHang]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
/****** Object:  ForeignKey [FK_HoaDon_User]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_User]
GO
/****** Object:  ForeignKey [FK_ChietKhau_KhachHangGroup]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[ChietKhau]  WITH CHECK ADD  CONSTRAINT [FK_ChietKhau_KhachHangGroup] FOREIGN KEY([idKhachHangGroup])
REFERENCES [dbo].[KhachHangGroup] ([Id])
GO
ALTER TABLE [dbo].[ChietKhau] CHECK CONSTRAINT [FK_ChietKhau_KhachHangGroup]
GO
/****** Object:  ForeignKey [FK_ChietKhau_SanPham]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[ChietKhau]  WITH CHECK ADD  CONSTRAINT [FK_ChietKhau_SanPham] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[ChietKhau] CHECK CONSTRAINT [FK_ChietKhau_SanPham]
GO
/****** Object:  ForeignKey [FK_HoaDonDetail_HoaDon]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[HoaDonDetail]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonDetail_HoaDon] FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[HoaDon] ([Id])
GO
ALTER TABLE [dbo].[HoaDonDetail] CHECK CONSTRAINT [FK_HoaDonDetail_HoaDon]
GO
/****** Object:  ForeignKey [FK_HoaDonDetail_SanPham]    Script Date: 06/27/2012 17:24:28 ******/
ALTER TABLE [dbo].[HoaDonDetail]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonDetail_SanPham] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[HoaDonDetail] CHECK CONSTRAINT [FK_HoaDonDetail_SanPham]
GO

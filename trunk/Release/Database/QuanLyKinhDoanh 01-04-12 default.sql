USE [QuanLyKinhDoanh]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 04/02/2012 00:05:37 ******/
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
/****** Object:  Table [dbo].[KhachHangGroup]    Script Date: 04/02/2012 00:05:37 ******/
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
SET IDENTITY_INSERT [dbo].[KhachHangGroup] ON
INSERT [dbo].[KhachHangGroup] ([Id], [Ten], [Diem], [MoTa]) VALUES (1, N'Mua lẻ', 0, NULL)
INSERT [dbo].[KhachHangGroup] ([Id], [Ten], [Diem], [MoTa]) VALUES (2, N'Mua sĩ', 0, NULL)
INSERT [dbo].[KhachHangGroup] ([Id], [Ten], [Diem], [MoTa]) VALUES (3, N'VIP', 0, NULL)
SET IDENTITY_INSERT [dbo].[KhachHangGroup] OFF
/****** Object:  Table [dbo].[KhachHang]    Script Date: 04/02/2012 00:05:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGroup] [int] NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](3) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[Fax] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[Diem] [int] NULL,
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
/****** Object:  Table [dbo].[HoaDonType]    Script Date: 04/02/2012 00:05:37 ******/
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
/****** Object:  Table [dbo].[SanPhamGroup]    Script Date: 04/02/2012 00:05:37 ******/
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
SET IDENTITY_INSERT [dbo].[SanPhamGroup] ON
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota]) VALUES (1, N'VAD', N'Vải áo dài', N'')
INSERT [dbo].[SanPhamGroup] ([Id], [Ma], [Ten], [Mota]) VALUES (2, N'NBH', N'Nón bảo hiểm', N'')
SET IDENTITY_INSERT [dbo].[SanPhamGroup] OFF
/****** Object:  Table [dbo].[SanPham]    Script Date: 04/02/2012 00:05:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdSanPham] [nvarchar](10) NOT NULL,
	[IdGroup] [int] NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](200) NULL,
	[GiaMua] [bigint] NOT NULL,
	[GiaBan] [bigint] NOT NULL,
	[LaiSuat] [float] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonViTinh] [nvarchar](10) NOT NULL,
	[XuatXu] [nvarchar](50) NULL,
	[Hieu] [nvarchar](50) NULL,
	[Size] [nvarchar](50) NULL,
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
/****** Object:  Table [dbo].[User]    Script Date: 04/02/2012 00:05:37 ******/
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
/****** Object:  Table [dbo].[HoaDon]    Script Date: 04/02/2012 00:05:37 ******/
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
	[Status] [nvarchar](20) NOT NULL,
	[ThanhTien] [bigint] NOT NULL,
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
/****** Object:  Table [dbo].[HoaDonDetail]    Script Date: 04/02/2012 00:05:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdHoaDon] [int] NOT NULL,
	[IdSanPham] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [bigint] NOT NULL,
 CONSTRAINT [PK_DonHangDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_DonHang_ThanhTien]    Script Date: 04/02/2012 00:05:37 ******/
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_DonHang_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
/****** Object:  Default [DF_DonHangDetail_ThanhTien]    Script Date: 04/02/2012 00:05:37 ******/
ALTER TABLE [dbo].[HoaDonDetail] ADD  CONSTRAINT [DF_DonHangDetail_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
/****** Object:  Default [DF_KhachHang_GioiTinh]    Script Date: 04/02/2012 00:05:37 ******/
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_KhachHang_GioiTinh]  DEFAULT (N'Nam') FOR [GioiTinh]
GO
/****** Object:  Default [DF_KhachHang_Diem]    Script Date: 04/02/2012 00:05:37 ******/
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_KhachHang_Diem]  DEFAULT ((0)) FOR [Diem]
GO
/****** Object:  Default [DF_SanPham_SoLuong]    Script Date: 04/02/2012 00:05:37 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuong]  DEFAULT ((0)) FOR [SoLuong]
GO
/****** Object:  ForeignKey [FK_HoaDon_HoaDonGroup]    Script Date: 04/02/2012 00:05:37 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_HoaDonGroup] FOREIGN KEY([IdType])
REFERENCES [dbo].[HoaDonType] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_HoaDonGroup]
GO
/****** Object:  ForeignKey [FK_HoaDon_KhachHang]    Script Date: 04/02/2012 00:05:37 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
/****** Object:  ForeignKey [FK_HoaDon_User]    Script Date: 04/02/2012 00:05:37 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_User]
GO
/****** Object:  ForeignKey [FK_HoaDonDetail_HoaDon]    Script Date: 04/02/2012 00:05:37 ******/
ALTER TABLE [dbo].[HoaDonDetail]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonDetail_HoaDon] FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[HoaDon] ([Id])
GO
ALTER TABLE [dbo].[HoaDonDetail] CHECK CONSTRAINT [FK_HoaDonDetail_HoaDon]
GO
/****** Object:  ForeignKey [FK_HoaDonDetail_SanPham]    Script Date: 04/02/2012 00:05:37 ******/
ALTER TABLE [dbo].[HoaDonDetail]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonDetail_SanPham] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[HoaDonDetail] CHECK CONSTRAINT [FK_HoaDonDetail_SanPham]
GO
/****** Object:  ForeignKey [FK_SanPham_SanPhamGroup]    Script Date: 04/02/2012 00:05:37 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_SanPhamGroup] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[SanPhamGroup] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_SanPhamGroup]
GO
/****** Object:  ForeignKey [FK_User_UserGroup]    Script Date: 04/02/2012 00:05:37 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserGroup] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[UserGroup] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserGroup]
GO

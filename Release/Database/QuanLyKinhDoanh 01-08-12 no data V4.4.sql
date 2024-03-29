USE [QuanLyKinhDoanh]
GO
/****** Object:  Table [dbo].[HoaDonType]    Script Date: 08/01/2012 21:42:00 ******/
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
/****** Object:  Table [dbo].[HoaDonStatus]    Script Date: 08/01/2012 21:42:00 ******/
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
/****** Object:  Table [dbo].[KhachHangGroup]    Script Date: 08/01/2012 21:42:00 ******/
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
	[ChietKhau] [int] NOT NULL,
	[MoTa] [nvarchar](200) NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPhamGroup]    Script Date: 08/01/2012 21:42:00 ******/
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
	[MoTa] [nvarchar](200) NULL,
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
/****** Object:  Table [dbo].[XuatXu]    Script Date: 08/01/2012 21:42:00 ******/
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
/****** Object:  Table [dbo].[UserGroup]    Script Date: 08/01/2012 21:42:00 ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 08/01/2012 21:42:00 ******/
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
/****** Object:  Table [dbo].[SanPham]    Script Date: 08/01/2012 21:42:00 ******/
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 08/01/2012 21:42:00 ******/
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
/****** Object:  Table [dbo].[HoaDon]    Script Date: 08/01/2012 21:42:00 ******/
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
	[SuDung] [bigint] NOT NULL,
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
/****** Object:  Table [dbo].[ChietKhau]    Script Date: 08/01/2012 21:42:00 ******/
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
/****** Object:  Table [dbo].[HoaDonDetail]    Script Date: 08/01/2012 21:42:00 ******/
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
/****** Object:  Default [DF_HoaDon_IdStatus]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_IdStatus]  DEFAULT ((1)) FOR [IdStatus]
GO
/****** Object:  Default [DF_HoaDon_TienChietKhau]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_TienChietKhau]  DEFAULT ((0)) FOR [TienChietKhau]
GO
/****** Object:  Default [DF_HoaDon_DiemSuDung]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_DiemSuDung]  DEFAULT ((0)) FOR [SuDung]
GO
/****** Object:  Default [DF_HoaDon_ConLai]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_ConLai]  DEFAULT ((0)) FOR [ConLai]
GO
/****** Object:  Default [DF_DonHang_ThanhTien]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_DonHang_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
/****** Object:  Default [DF_HoaDonDetail_SoLuong]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[HoaDonDetail] ADD  CONSTRAINT [DF_HoaDonDetail_SoLuong]  DEFAULT ((1)) FOR [SoLuong]
GO
/****** Object:  Default [DF_HoaDonDetail_ChietKhau]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[HoaDonDetail] ADD  CONSTRAINT [DF_HoaDonDetail_ChietKhau]  DEFAULT ((0)) FOR [ChietKhau]
GO
/****** Object:  Default [DF_DonHangDetail_ThanhTien]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[HoaDonDetail] ADD  CONSTRAINT [DF_DonHangDetail_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
/****** Object:  Default [DF_HoaDonDetail_IsSendBack]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[HoaDonDetail] ADD  CONSTRAINT [DF_HoaDonDetail_IsSendBack]  DEFAULT ((0)) FOR [IsSendBack]
GO
/****** Object:  Default [DF_KhachHang_GioiTinh]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_KhachHang_GioiTinh]  DEFAULT (N'Nam') FOR [GioiTinh]
GO
/****** Object:  Default [DF_KhachHang_Diem]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_KhachHang_Diem]  DEFAULT ((0)) FOR [TichLuy]
GO
/****** Object:  Default [DF_KhachHangGroup_ChietKhau]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[KhachHangGroup] ADD  CONSTRAINT [DF_KhachHangGroup_ChietKhau]  DEFAULT ((0)) FOR [ChietKhau]
GO
/****** Object:  Default [DF_SanPham_LaiSuat]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_LaiSuat]  DEFAULT ((0)) FOR [LaiSuat]
GO
/****** Object:  Default [DF_SanPham_SoLuong]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuong]  DEFAULT ((0)) FOR [SoLuong]
GO
/****** Object:  Default [DF_SanPham_IsSold]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_IsSold]  DEFAULT ((0)) FOR [IsSold]
GO
/****** Object:  ForeignKey [FK_ChietKhau_KhachHangGroup]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[ChietKhau]  WITH CHECK ADD  CONSTRAINT [FK_ChietKhau_KhachHangGroup] FOREIGN KEY([idKhachHangGroup])
REFERENCES [dbo].[KhachHangGroup] ([Id])
GO
ALTER TABLE [dbo].[ChietKhau] CHECK CONSTRAINT [FK_ChietKhau_KhachHangGroup]
GO
/****** Object:  ForeignKey [FK_ChietKhau_SanPham]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[ChietKhau]  WITH CHECK ADD  CONSTRAINT [FK_ChietKhau_SanPham] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[ChietKhau] CHECK CONSTRAINT [FK_ChietKhau_SanPham]
GO
/****** Object:  ForeignKey [FK_HoaDon_HoaDonGroup]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_HoaDonGroup] FOREIGN KEY([IdType])
REFERENCES [dbo].[HoaDonType] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_HoaDonGroup]
GO
/****** Object:  ForeignKey [FK_HoaDon_HoaDonStatus]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_HoaDonStatus] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[HoaDonStatus] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_HoaDonStatus]
GO
/****** Object:  ForeignKey [FK_HoaDon_KhachHang]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
/****** Object:  ForeignKey [FK_HoaDon_User]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_User]
GO
/****** Object:  ForeignKey [FK_HoaDonDetail_HoaDon]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[HoaDonDetail]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonDetail_HoaDon] FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[HoaDon] ([Id])
GO
ALTER TABLE [dbo].[HoaDonDetail] CHECK CONSTRAINT [FK_HoaDonDetail_HoaDon]
GO
/****** Object:  ForeignKey [FK_HoaDonDetail_SanPham]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[HoaDonDetail]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonDetail_SanPham] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[HoaDonDetail] CHECK CONSTRAINT [FK_HoaDonDetail_SanPham]
GO
/****** Object:  ForeignKey [FK_KhachHang_KhachHangGroup]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_KhachHangGroup] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[KhachHangGroup] ([Id])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_KhachHangGroup]
GO
/****** Object:  ForeignKey [FK_SanPham_SanPhamGroup]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_SanPhamGroup] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[SanPhamGroup] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_SanPhamGroup]
GO
/****** Object:  ForeignKey [FK_SanPham_XuatXu]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_XuatXu] FOREIGN KEY([IdXuatXu])
REFERENCES [dbo].[XuatXu] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_XuatXu]
GO
/****** Object:  ForeignKey [FK_User_UserGroup]    Script Date: 08/01/2012 21:42:00 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserGroup] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[UserGroup] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserGroup]
GO

USE [DoAnWeb]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 27/07/2021 8:40:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaSP] [int] NOT NULL,
	[MaHD] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 27/07/2021 8:40:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[DaThanhToan] [nvarchar](50) NULL,
	[NgayDat] [date] NULL,
	[NgayGiao] [date] NULL,
	[TinhTrangGiao] [nvarchar](50) NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 27/07/2021 8:40:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[SDT] [int] NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[DiaChi] [nvarchar](150) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 27/07/2021 8:40:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiThucPham] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 27/07/2021 8:40:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](max) NULL,
	[AnhBia] [nvarchar](50) NULL,
	[NgayCapNhat] [date] NULL,
	[SoLuongTon] [int] NULL,
	[MaNSX] [int] NULL,
	[MaLoaiSP] [int] NULL,
	[Moi] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XuatXu]    Script Date: 27/07/2021 8:40:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XuatXu](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](50) NULL,
	[SDT] [int] NULL,
	[DiaChi] [nvarchar](100) NULL,
 CONSTRAINT [PK_XuatXu] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [SDT], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (1, N'Dũng', CAST(N'2000-05-07' AS Date), N'Nam', 334155853, N'admin', N'admin', N'woochi61@gmail.com', N'43- Trần Văn Ơn ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [SDT], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (2, N'Dũng', CAST(N'2000-05-07' AS Date), N'Nam', 334155853, N'admin', N'admin', N'woochi61@gmail.com', N'43- Trần Văn Ơn ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [SDT], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (18, N'Hoàng Dũng', CAST(N'2021-07-08' AS Date), N'Nam', NULL, N'dung123', N'123', N'dung123@gmail.com', N'Bình Dương')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiThucPham]) VALUES (1, N'Rau')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiThucPham]) VALUES (2, N'Củ quả')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiThucPham]) VALUES (3, N'Hạt và đậu')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiThucPham]) VALUES (4, N'Trà')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiThucPham]) VALUES (5, N'Box')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (1, N'Bắp Cải Tím', CAST(56000 AS Decimal(18, 0)), N'Rau Sạch', N'0001.jpeg', CAST(N'2021-08-15' AS Date), 50, 2, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (2, N'Bắp Cải Trắng Đà Lạt', CAST(50000 AS Decimal(18, 0)), N'Rau Sạch', N'0002.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (3, N'Cải Bó Xôi', CAST(23000 AS Decimal(18, 0)), N'Rau Sạch', N'0003.jpeg', CAST(N'2021-08-15' AS Date), 50, 2, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (4, N'Bắp Cải Tím Đà Lạt', CAST(70000 AS Decimal(18, 0)), N'Rau Sạch', N'0004.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (5, N'Bông Cải Súp Lơ baby Đà lạt', CAST(80000 AS Decimal(18, 0)), N'Rau Sạch', N'0005.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (6, N'Bông Cải Súp Lơ Xanh Đà Lạt', CAST(75000 AS Decimal(18, 0)), N'Rau Sạch', N'0006.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (7, N'Cải Bó Xôi Thủy Canh Đà Lạt', CAST(50000 AS Decimal(18, 0)), N'Thủy Canh', N'0007.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (8, N'Cải Bó Xôi', CAST(50000 AS Decimal(18, 0)), N'Rau Sạch', N'0008.jpeg', CAST(N'2021-08-15' AS Date), 50, 3, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (9, N'Cải Đuôi Phụng Mizun', CAST(60000 AS Decimal(18, 0)), N'Rau Sạch', N'0009.jpeg', CAST(N'2021-08-15' AS Date), 50, 2, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (10, N'Cải Đuôi Phụng Tím Thủy Canh', CAST(65000 AS Decimal(18, 0)), N'Thủy Canh', N'0010.jpeg', CAST(N'2021-08-15' AS Date), 50, 2, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (11, N'Cải Hoa Hồng Thủy Canh', CAST(50000 AS Decimal(18, 0)), N'Thủy Canh', N'0011.jpeg', CAST(N'2021-08-15' AS Date), 50, 3, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (12, N'Cải Mù Tạt Tím', CAST(46000 AS Decimal(18, 0)), N'Rau Sạch', N'0012.jpeg', CAST(N'2021-08-15' AS Date), 50, 2, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (13, N'Cải Mù Tạt Xanh Thủy Canh', CAST(50000 AS Decimal(18, 0)), N'Thủy Canh', N'0013.jpeg', CAST(N'2021-08-15' AS Date), 50, 3, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (14, N'Cải Ngọt Thủy Canh Đà Lạt', CAST(46000 AS Decimal(18, 0)), N'Thủy Canh', N'0014.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (15, N'Cải Thảo Đà Lạt ', CAST(50000 AS Decimal(18, 0)), N'Rau Sạch', N'0015.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (16, N'Cải Thìa Thủy Canh Đà Lạt', CAST(56000 AS Decimal(18, 0)), N'Thủy Canh', N'0016.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (17, N'Cải Xoăn Cale Thủy Canh Đà Lạt', CAST(50000 AS Decimal(18, 0)), N'Thủy Canh', N'0017.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (18, N'Cần Tây Đà Lạt', CAST(49000 AS Decimal(18, 0)), N'Rau Sạch', N'0018.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (19, N'Cần Tây nhỏ', CAST(39000 AS Decimal(18, 0)), N'Rau Sạch', N'0019.jpeg', CAST(N'2021-08-15' AS Date), 50, 2, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (20, N'Cần Tây Thủy Canh Đà Lạt', CAST(55000 AS Decimal(18, 0)), N'Thủy Canh', N'0020.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (21, N'Đọt SUSU Đà Lạt ', CAST(60000 AS Decimal(18, 0)), N'Rau Sạch', N'0021.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (22, N'Hành Baro Đà Lạt', CAST(50000 AS Decimal(18, 0)), N'Rau Sạch', N'0022.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (23, N'Hành Lá', CAST(30000 AS Decimal(18, 0)), N'Rau Sạch', N'0023.jpeg', CAST(N'2021-08-15' AS Date), 50, 3, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (24, N'Măng Tây Đà Lạt ', CAST(90000 AS Decimal(18, 0)), N'Rau Sạch', N'0024.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (25, N'Cải Thảo ', CAST(45000 AS Decimal(18, 0)), N'Rau Sạch', N'0025.jpeg', CAST(N'2021-08-15' AS Date), 50, 2, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (26, N'Rau Dền Thủy Canh', CAST(36000 AS Decimal(18, 0)), N'Thủy Canh ', N'0026.jpg', CAST(N'2021-08-15' AS Date), 50, 3, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (27, N'Cúc Tần Ô Đà Lạt', CAST(59000 AS Decimal(18, 0)), N'Rau Sạch', N'0027.jpg', CAST(N'2021-08-15' AS Date), 50, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (28, N'Cúc Tần Ô Thủy Canh Đà Lạt', CAST(65000 AS Decimal(18, 0)), N'Thủy Canh', N'0028.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (29, N'Xà Lách Carol Đà Lạt', CAST(50000 AS Decimal(18, 0)), N'Rau Sạch', N'0029.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (30, N'Xà Lách Frisee Thủy Canh Đà Lạt', CAST(60000 AS Decimal(18, 0)), N'Thủy Canh', N'0030.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (31, N'Xà Lách Tím Thủy Canh', CAST(56000 AS Decimal(18, 0)), N'Thủy Canh', N'0031.jpeg', CAST(N'2021-08-15' AS Date), 50, 2, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (32, N'Xà Lách Oakleaf Thủy Canh Đà Lạt', CAST(65000 AS Decimal(18, 0)), N'Thủy Canh', N'0032.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (33, N'Xà Lách Romaine thủy Canh Đà Lạt ', CAST(60000 AS Decimal(18, 0)), N'Thủy Canh', N'0033.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (34, N'Xà Lách Tím', CAST(50000 AS Decimal(18, 0)), N'Rau Sạch', N'0034.jpeg', CAST(N'2021-08-15' AS Date), 50, 3, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (35, N'Xà Lách Xoong Watercress Thủy Canh', CAST(60000 AS Decimal(18, 0)), N'Thủy Canh', N'0035.jpeg', CAST(N'2021-08-15' AS Date), 50, 2, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (36, N'Bắp Nếp', CAST(70000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1001.jpeg', CAST(N'2021-08-15' AS Date), 50, 3, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (37, N'Bầu Xanh', CAST(60000 AS Decimal(18, 0)), N'Củ Quả sạch', N'1002.jpeg', CAST(N'2021-08-15' AS Date), 50, 2, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (38, N'Bí Đỏ Non Đà Lạt', CAST(60000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1003.jpeg', CAST(N'2021-08-15' AS Date), 50, 3, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (39, N'Bí Đỏ Tròn Đà Lạt ', CAST(65000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1004.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (40, N'Bí Ngòi Đà Lạt', CAST(48000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1005.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (41, N'Bí Ngòi Vàng Đà Lạt', CAST(50000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1006.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (42, N'Bí Nụ Đà Lạt', CAST(69000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1007.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (43, N'Bơ Dẻo ', CAST(90000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1008.jpeg', CAST(N'2021-08-15' AS Date), 50, 2, 2, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (44, N'Bông Atiso Đà Lạt', CAST(70000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1009.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 2, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (45, N'Cà Chua Beef', CAST(60000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1010.jpeg', CAST(N'2021-08-15' AS Date), 50, 2, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (46, N'Cà chua Bi ', CAST(50000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1011.jpg', CAST(N'2021-08-15' AS Date), 50, 2, 2, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (47, N'Cà Chua Rita Đà Lạt', CAST(60000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1012.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (48, N'Cà Rốt siêu ngọt', CAST(50000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1013.jpeg', CAST(N'2021-08-15' AS Date), 50, 2, 2, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (49, N'Chanh Dây Đà Lạt', CAST(50000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1014.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (50, N'Canh Không Hạt Đà Lạt', CAST(40000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1015.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 2, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (51, N'Củ cải Do Red Radish', CAST(60000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1016.jpeg', CAST(N'2021-08-15' AS Date), 50, 2, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (52, N'Dưa Leo Đà Lạt', CAST(36000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1017.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 2, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (53, N'Hành Tây Đà Lạt', CAST(50000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1018.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (54, N'Hành Tím', CAST(30000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1019.jpg', CAST(N'2021-08-15' AS Date), 50, 2, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (55, N'Khoai Lang Nhật', CAST(60000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1020.jpeg', CAST(N'2021-08-15' AS Date), 50, 3, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (56, N'Khoai Lang Mật', CAST(70000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1021.jpeg', CAST(N'2021-08-15' AS Date), 50, 2, 2, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (57, N'Khoai Tây Đà Lạt', CAST(56000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1022.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (58, N'Khoai Tây Hồng Đà Lạt', CAST(69000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1023.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (59, N'Khoai Tây Vàng Đà Lạt', CAST(53000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1024.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (60, N'Khổ Qua Đà Lạt', CAST(36000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1025.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 2, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (61, N'Ớt Chí Thiên Đà Lạt', CAST(20000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1026.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (62, N'Ớt Chuông Vàng ', CAST(30000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1027.jpeg', CAST(N'2021-08-15' AS Date), 50, 2, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (63, N'Ớt Chuông Xanh', CAST(30000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1028.jpeg', CAST(N'2021-08-15' AS Date), 50, 3, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (64, N'Su Hào Đà Lạt', CAST(55000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1029.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (65, N'Su Hào Tím Đà Lạt', CAST(62000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1030.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (66, N'Tỏi Tím Đà Lạt', CAST(23000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'1031.jpeg', CAST(N'2021-08-15' AS Date), 50, 1, 2, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (67, N'Đậu Cô Ve Nhật', CAST(45000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'2001.jpeg', CAST(N'2021-08-15' AS Date), 50, 3, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (68, N'Đậu Cô Ve Xanh', CAST(50000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'2002.jpeg', CAST(N'2021-08-15' AS Date), 50, 3, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (69, N'Đậu Đỗ Trắng tươi', CAST(60000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'2003.jpg', CAST(N'2021-08-15' AS Date), 50, 3, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (70, N'Gạo Ngon Dẻo Thơm', CAST(40000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'2004.jpg', CAST(N'2021-08-15' AS Date), 50, 2, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (71, N'Hạt Tiêu Khô', CAST(30000 AS Decimal(18, 0)), N'Củ Quả Sạch', N'2005.jpg', CAST(N'2021-08-15' AS Date), 50, 2, 3, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (72, N'Trà Ô Long', CAST(50000 AS Decimal(18, 0)), N'Nông Sản Sạch', N'3001.jpg', CAST(N'2021-08-15' AS Date), 50, 3, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (73, N'Trà Gai Leo Khô', CAST(50000 AS Decimal(18, 0)), N'Nông Sản Sạch', N'3002.jpg', CAST(N'2021-08-15' AS Date), 50, 3, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (74, N'Trà Bách Nhật Khô', CAST(50000 AS Decimal(18, 0)), N'Nông Sản Sạch', N'3003.jpg', CAST(N'2021-08-15' AS Date), 50, 3, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (75, N'Trà Hoa Quả', CAST(60000 AS Decimal(18, 0)), N'Nông Sản Sạch', N'3004.jpg', CAST(N'2021-08-15' AS Date), 50, 3, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (76, N'Trà Hoa Hồng Khô', CAST(50000 AS Decimal(18, 0)), N'Nông Sản Sạch', N'3005.jpg', CAST(N'2021-08-15' AS Date), 50, 3, 4, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (77, N'Trà Hoa Cúc', CAST(50000 AS Decimal(18, 0)), N'Nông Sản Sạch', N'3006.jpg', CAST(N'2021-08-15' AS Date), 50, 3, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (78, N'Trà Hoa Cẩm Chướng', CAST(50000 AS Decimal(18, 0)), N'Nông Sản Sạch', N'3007.jpg', CAST(N'2021-08-15' AS Date), 50, 3, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (79, N'Trà Tân Cương', CAST(50000 AS Decimal(18, 0)), N'Nông Sản Sạch', N'3008.jpg', CAST(N'2021-08-15' AS Date), 50, 3, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (80, N'Box Nguyên Liệu làm 5 loại nước ép', CAST(100000 AS Decimal(18, 0)), N'Nông Sản Sạch', N'4001.jpg', CAST(N'2021-08-15' AS Date), 50, 2, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (81, N'Box Rau Củ 10 món', CAST(130000 AS Decimal(18, 0)), N'Nông Sản Sạch', N'4002.jpg', CAST(N'2021-08-15' AS Date), 50, 2, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaLoaiSP], [Moi]) VALUES (82, N'Box Rau Củ Và Trái Cây Tổng Hợp', CAST(200000 AS Decimal(18, 0)), N'Nông Sản Sạch', N'4003.jpg', CAST(N'2021-08-15' AS Date), 50, 2, 5, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[XuatXu] ON 

INSERT [dbo].[XuatXu] ([MaNSX], [TenNSX], [SDT], [DiaChi]) VALUES (1, N'Vườn Đà Lạt', 334155853, N'43 - Lâm Đồng Đà Lạt')
INSERT [dbo].[XuatXu] ([MaNSX], [TenNSX], [SDT], [DiaChi]) VALUES (2, N'Vườn Thủ Dầu Một', 334155853, N'43 - Thủ Dầu Một - Bình Dương')
INSERT [dbo].[XuatXu] ([MaNSX], [TenNSX], [SDT], [DiaChi]) VALUES (3, N'Vườn Thái Nguyên', 334155853, N'43 - Thái Nguyên')
SET IDENTITY_INSERT [dbo].[XuatXu] OFF
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_XuatXu] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[XuatXu] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_XuatXu]
GO

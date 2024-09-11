USE [WebBook]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 6/21/2024 4:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Fullname] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Image] [varchar](255) NULL,
	[Address] [nvarchar](100) NULL,
	[TelePhone] [char](10) NULL,
	[Reset_password] [varchar](50) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 6/21/2024 4:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[RoleId] [nvarchar](10) NULL,
 CONSTRAINT [PK_Authorities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/21/2024 4:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 6/21/2024 4:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[ProductId] [int] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_FeedBacks] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 6/21/2024 4:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[FavoriteId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Favorites] PRIMARY KEY CLUSTERED 
(
	[FavoriteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBacks]    Script Date: 6/21/2024 4:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBacks](
	[FeedBackId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Username] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FeedBacks_1] PRIMARY KEY CLUSTERED 
(
	[FeedBackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/21/2024 4:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NULL,
	[Discount] [float] NULL,
	[Quantity] [int] NULL,
	[Discription] [nvarchar](100) NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/21/2024 4:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[CreateDay] [date] NOT NULL,
	[TelePhone] [varchar](12) NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [varchar](30) NULL,
	[Total] [int] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/21/2024 4:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NULL,
	[Discount] [float] NULL,
	[Image1] [nvarchar](50) NULL,
	[Image2] [nvarchar](50) NOT NULL,
	[Image3] [nvarchar](50) NOT NULL,
	[Image4] [nvarchar](50) NOT NULL,
	[Image5] [nvarchar](50) NOT NULL,
	[EnteredDay] [date] NOT NULL,
	[Discription] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NULL,
	[HotSale] [varchar](20) NOT NULL,
	[OldPrice] [int] NULL,
	[Author] [nvarchar](50) NULL,
	[Publishing] [nvarchar](50) NULL,
	[Provider] [nvarchar](50) NULL,
 CONSTRAINT [PK_Products1] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 6/21/2024 4:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statitic]    Script Date: 6/21/2024 4:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statitic](
	[OrderId] [int] NOT NULL,
	[OrderDetailId] [int] NOT NULL,
	[id] [int] NULL,
	[slDoanhthu] [bigint] NOT NULL,
	[slOrder] [bigint] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Admin', N'123123', N'Admin', N'admin@gmail.com', N'Screenshot 2024-03-19 171042.png', N'50 Nguyễn Thị Thập, Hòa Minh, Liên Chiểu, Đà Nẵng.', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'lananh02', N'123123', N'Nguyễn Thị Lan Anh', N'lananh02@gmail.com', N'khanhquynh.jpg', N'24 Đống Đa, Thuận Phước, Đà Nẵng', N'0969493305', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'nchuongxn', N'nguyenchuong123', N'chuong', N'nguyenchuong22062002@gmail.com', N'noimage2.png', NULL, N'0917425622', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'thucskin202', N'18ffb1025a2', N'Thức Nguyễn Văn', N'thucskin202@gmail.com', N'noimage2.png', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Authorities] ON 
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (143, N'Admin', N'DIRE')
GO
SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (2006, N'Tâm Lý Kĩ Năng')
GO
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (2007, N'Văn Học')
GO
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (2008, N'Thiếu Nhi')
GO
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (2009, N'Sách Học Ngoại Ngữ')
GO
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (2010, N'Kiến Thức Bách Khoa')
GO
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (2012, N'Truyện')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedBacks] ON 
GO
INSERT [dbo].[FeedBacks] ([FeedBackId], [Description], [Username]) VALUES (36, N'ok', N'Admin')
GO
SET IDENTITY_INSERT [dbo].[FeedBacks] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (215, 223, 19, 38000, 5, 1, N'Duyệt', 36100)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (216, 223, 15, 32640, 32, 1, N'Duyệt', 22195)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (217, 224, 13, 22500, 10, 1, N'Duyệt', 20250)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (218, 225, 16, 69300, 30, 1, N'Duyệt', 48510)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (219, 225, 19, 38000, 5, 1, N'Duyệt', 36100)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (220, 225, 7, 31500, 30, 1, N'Duyệt', 22050)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (221, 226, 9, 38500, 30, 2, N'Duyệt', 53900)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (222, 226, 10, 70000, 30, 1, N'Duyệt', 49000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (223, 226, 15, 32640, 32, 1, N'Duyệt', 22195)
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (223, N'Admin', CAST(N'2024-05-22' AS Date), N'0938493348', N'21 Phú Thạnh 1 Liên Chiểu Đà Nẵng', N'Admin', N'admin@gmail.com', 100640, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (224, N'Admin', CAST(N'2024-05-22' AS Date), N'0923232344', N'12 Phú Thạnh 1 Liên Chiểu Đà Nẵng', N'Admin', N'admin@gmail.com', 52500, N'Đang chờ xác nhận')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (225, N'thucskin202', CAST(N'2024-06-09' AS Date), NULL, N'k85/11A hòa minh liên chiểu', N'nguyễn tuấn', N'nguyentuan@gmail.com', 168800, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (226, N'lananh02', CAST(N'2024-06-21' AS Date), N'0969703465', N'30 Nguyễn Lương Bằng, Hòa Khánh Bắc, Liên Chiểu, Đà Nẵng', N'Nguyễn Thị Lan Anh', N'lananh02@gmail.com', 209640, N'Đã giao hàng')
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (1, N'Búp Sen Xanh (Tái Bản 2020)', 40, 54000, 25, N'Screenshot 2024-05-21 114839.png', N'Screenshot 2024-05-21 123250.png', N'Screenshot 2024-05-21 123330.png', N'Screenshot 2024-05-21 114839.png', N'5sao.png', CAST(N'2024-05-21' AS Date), N'Năm XB	2020
Ngôn Ngữ	Tiếng Việt
Trọng lượng (gr)	380
Kích Thước Bao Bì	20.5 x 12.5 cm
Số trang	364
Hình thức	Bìa Mềm
Sản phẩm bán chạy nhất: Top 100 sản phẩm Truyện Đọc Thiếu Nhi bán chạy của tháng', 2008, N'pngegg.png', 72000, N'Sơn Tùng', N'NXB Kim Đồng', N'Nhà Xuất Bản Kim Đồng')
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (3, N'100 Kỹ Năng Sinh Tồn', 200, 69300, 30, N'Screenshot 2024-05-21 132051.png', N'Screenshot 2024-05-21 132228.png', N'Screenshot 2024-05-21 132239.png', N'Screenshot 2024-05-21 132324.png', N'5sao.png', CAST(N'2024-05-21' AS Date), N'Tên Nhà Cung Cấp	Đinh Tị
Tác giả	Clint Emerson
Người Dịch	Mai Loan
NXB	NXB Thanh Niên
Năm XB	2020
Ngôn Ngữ	Tiếng Việt
Trọng lượng (gr)	300
Kích Thước Bao Bì	24 x 16 x 0.5 cm
Số trang	272
Hình thức	Bìa Mềm
Sản phẩm hiển thị trong	
Đinh Tị
Sản phẩm bán chạy nhất	Top 100 sản phẩm Bách Khoa Tri Thức - Câu Hỏi Vì Sao bán chạy của tháng', 2010, N'hot-icon.gif', 99000, N'Clint Emerson', N'NXB Thanh Niên', N'Đinh Tị')
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (5, N'Tủ Sách Bách Khoa Tri Thức', 30, 169000, 30, N'Screenshot 2024-05-21 135232.png', N'Screenshot 2024-05-21 135314.png', N'Screenshot 2024-05-21 135343.png', N'Screenshot 2024-05-21 135331.png', N'5sao.png', CAST(N'2024-05-21' AS Date), N'Tên Nhà Cung Cấp	Đinh Tị
Tác giả	Nhiều Tác Giả
Người Dịch	Bảo Ly
NXB	NXB Thanh Niên
Năm XB	2022
Trọng lượng (gr)	675
Kích Thước Bao Bì	21.0 x 24 x 1.3 cm
Số trang	224
Hình thức	Bìa Mềm
Sản phẩm hiển thị trong	
Đinh Tị
Sản phẩm bán chạy nhất	Top 100 sản phẩm Bách Khoa Tri Thức - Câu Hỏi Vì Sao bán chạy của tháng', 2010, N'hot-icon.gif', 280000, N'Nhiều tác giả', N'NXB Thanh Niên', N'Đinh Tị')
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (7, N'Khám Phá Thế Giới Cho Trẻ Em - Thiên Văn Học', 90, 31500, 30, N'image_195509_1_13548.jpg', N'Screenshot 2024-05-22 135907.png', N'Screenshot 2024-05-22 135940.png', N'Screenshot 2024-05-22 140010.png', N'5sao.png', CAST(N'2024-05-22' AS Date), N'Tên Nhà Cung Cấp	Đinh Tị
Tác giả	Rachel Firth
Người Dịch	Phan Trần Hồng Hạnh
NXB	NXB Thế Giới
Năm XB	2018
Ngôn Ngữ	Tiếng Việt
Trọng lượng (gr)	100
Kích Thước Bao Bì	18.6 x 23.5 cm
Số trang	52
Hình thức	Bìa Mềm
Sản phẩm hiển thị trong	
Đinh Tị
Sản phẩm bán chạy nhất	Top 100 sản phẩm Bách Khoa Tri Thức - Câu Hỏi Vì Sao bán chạy của tháng', 2010, N'pngegg.png', 45000, N'Rachel Firth', N'NXB Thế Giới', N'Đinh Tị')
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (9, N'10 Vạn Câu Hỏi Vì Sao', 80, 38500, 30, N'Screenshot 2024-05-22 140315.png', N'Screenshot 2024-05-22 141134.png', N'Screenshot 2024-05-22 141143.png', N'Screenshot 2024-05-22 141157.png', N'5sao.png', CAST(N'2024-05-22' AS Date), N'Độ Tuổi	5 - 15
Tên Nhà Cung Cấp	Đinh Tị
Tác giả	Tôn Nguyên Vĩ
Người Dịch	Ngọc Linh
NXB	NXB Thanh Niên
Năm XB	2018
Trọng lượng (gr)	100
Kích Thước Bao Bì	17 x 25
Số trang	80
Hình thức	Bìa Mềm', 2010, N'pngegg.png', 55000, N'Tôn Nguyên Vĩ', N'NXB Thanh Niên', N'Đinh Tị')
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (10, N'100 Bí Ẩn Đáng Kinh Ngạc Về Lịch Sử', 70, 70000, 30, N'Screenshot 2024-05-22 140358.png', N'Screenshot 2024-05-22 141634.png', N'Screenshot 2024-05-22 141641.png', N'Screenshot 2024-05-22 141651.png', N'5sao.png', CAST(N'2024-05-22' AS Date), N'Tên Nhà Cung Cấp	Đinh Tị
Tác giả	Nhiều Tác Giả
Người Dịch	Thu Trang
NXB	NXB Thanh Niên
Năm XB	2019
Trọng lượng (gr)	1000
Kích Thước Bao Bì	17 x 24
Số trang	128
Hình thức	Bìa Mềm', 2010, N'pngegg.png', 100000, N'Nhiều Tác Giả', N'NXB Thanh Niên', N'Đinh Tị')
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (11, N'Tiểu Sử Các Quốc Gia Qua Góc Nhìn Lầy Lội', 90, 150500, 30, N'Screenshot 2024-05-22 141936.png', N'Screenshot 2024-05-22 141957.png', N'Screenshot 2024-05-22 142006.png', N'Screenshot 2024-05-22 142014.png', N'5sao.png', CAST(N'2024-05-22' AS Date), N'Tên Nhà Cung Cấp	Nhã Nam
Tác giả	Sai Lei
Người Dịch	Thủy tiên
NXB	NXB Dân Trí
Năm XB	2021
Trọng lượng (gr)	420
Kích Thước Bao Bì	20.5 x 17 cm
Số trang	280
Hình thức	Bìa Mềm', 2010, N'pngegg.png', 215000, N'Sai Lei', N'NXB Dân Trí', N'Nhã Nam')
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (12, N'Lớp Học Mật Ngữ Phiên Bản Mới - Tập 9', 220, 22500, 10, N'Screenshot 2024-05-22 142352.png', N'Screenshot 2024-05-22 142432.png', N'Screenshot 2024-05-22 142511.png', N'Screenshot 2024-05-22 142533.png', N'5sao.png', CAST(N'2024-05-22' AS Date), N'Tên Nhà Cung Cấp	BÁO TIỀN PHONG
Tác giả	B R O Group
NXB	Báo Sinh Viên Việt Nam - Hoa Học Trò
Năm XB	2024
Ngôn Ngữ	Tiếng Việt
Trọng lượng (gr)	100
Kích Thước Bao Bì	22 x 15 x 0.5 cm
Số trang	52
Hình thức	Bìa Mềm', 2008, N'pngegg.png', 25000, N'B R O Group', N'Báo Sinh Viên Việt Nam - Hoa Học Trò', N'BÁO TIỀN PHONG')
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (13, N'Lớp Học Mật Ngữ Phiên Bản Mới - Tập 6', 330, 22500, 10, N'Screenshot 2024-05-22 142756.png', N'Screenshot 2024-05-22 142816.png', N'Screenshot 2024-05-22 142838.png', N'Screenshot 2024-05-22 142852.png', N'5sao.png', CAST(N'2024-05-22' AS Date), N'Nhà Cung Cấp	BÁO TIỀN PHONG
Tác giả	B R O Group
NXB	Báo Sinh Viên Việt Nam - Hoa Học Trò
Năm XB	2023
Ngôn Ngữ	Tiếng Việt
Trọng lượng (gr)	80
Kích Thước Bao Bì	22 x 15 x 0.5 cm
Số trang	52
Hình thức	Bìa Mềm', 2008, N'pngegg.png', 25000, N'B R O Group', N'Báo Sinh Viên Việt Nam - Hoa Học Trò', N'BÁO TIỀN PHONG')
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (15, N'Song Ngữ Việt Anh', 320, 32640, 32, N'Screenshot 2024-05-22 143233.png', N'Screenshot 2024-05-22 143300.png', N'Screenshot 2024-05-22 143328.png', N'Screenshot 2024-05-22 143347.png', N'5sao.png', CAST(N'2024-05-22' AS Date), N'Nhà Cung Cấp	Cty Sách Văn Chương
Tác giả	Phạm Lâm
NXB	NXB Văn Học
Năm XB	2019
Trọng lượng (gr)	80
Kích Thước Bao Bì	20.5 x 29.5
Số trang	35
Hình thức	Bìa Mềm', 2008, N'pngegg.png', 48000, N'Phạm Lâm', N'NXB Văn Học', N'Cty Sách Văn Chương')
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (16, N'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 60, 69300, 30, N'Screenshot 2024-05-22 144018.png', N'Screenshot 2024-05-22 144025.png', N'Screenshot 2024-05-22 144040.png', N'Screenshot 2024-05-22 144050.png', N'5sao.png', CAST(N'2024-05-22' AS Date), N'Nhà Cung Cấp	Công Ty Cổ Phần Time Books
Tác giả	HUỲNH THÁI NGỌC
NXB	Dân Trí
Năm XB	2023
Ngôn Ngữ	Tiếng Việt
Trọng lượng (gr)	200
Kích Thước Bao Bì	19 x 13 x 0.4 cm
Số trang	216
Hình thức	Bìa Mềm', 2012, N'pngegg.png', 99000, N'HUỲNH THÁI NGỌC', N'Dân Trí', N'Công Ty Cổ Phần Time Books')
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (17, N'Thần Đồng Đất Việt - Tập 21', 40, 9000, 10, N'Screenshot 2024-05-22 144346.png', N'Screenshot 2024-05-22 144408.png', N'Screenshot 2024-05-22 144420.png', N'Screenshot 2024-05-22 144434.png', N'5sao.png', CAST(N'2024-05-22' AS Date), N'Nhà Cung Cấp	Cty Phan Thị
Tác giả	Nhiều Tác Giả
NXB	NXB Thời Đại
Năm XB	06-2013
Trọng lượng (gr)	120
Kích Thước Bao Bì	18 x 11
Số trang	112
Hình thức	Bìa Mềm', 2012, N'pngegg.png', 10000, N'Nhiều Tác Giả', N'NXB Thời Đại', N'Cty Phan Thị')
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (18, N'Hợp Tuyển Văn Học Văn Học Cổ Điển Hàn Quốc', 40, 171000, 10, N'Screenshot 2024-05-22 144809.png', N'Screenshot 2024-05-22 144846.png', N'Screenshot 2024-05-22 144856.png', N'Screenshot 2024-05-22 144935.png', N'5sao.png', CAST(N'2024-05-22' AS Date), N'Nhà Cung Cấp	NXB Tổng Hợp TPHCM
Tác giả	Phan Thị Thu Hiền
Người Dịch	Nhiều Người Dịch
NXB	NXB Tổng hợp TP.HCM
Năm XB	05-2017
Trọng lượng (gr)	658
Kích Thước Bao Bì	23 x 15.5
Số trang	655
Hình thức	Bìa Mềm', 2007, N'pngegg.png', 190000, N'Phan Thị Thu Hiền', N'NXB Tổng hợp TP.HCM', N'NXB Tổng Hợp TPHCM')
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (19, N'Truyện Tranh Kĩ Năng Cho Người Trẻ', 650, 38000, 5, N'Screenshot 2024-05-22 145547.png', N'Screenshot 2024-05-22 145621.png', N'Screenshot 2024-05-22 145628.png', N'Screenshot 2024-05-22 145637.png', N'5sao.png', CAST(N'2024-05-22' AS Date), N'Độ Tuổi	18+
Tên Nhà Cung Cấp	Nhà Xuất Bản Kim Đồng
Tác giả	Yoshiya Suzuki, Kyoko Ogata
Người Dịch	Aiko
NXB	Kim Đồng
Năm XB	2023
Ngôn Ngữ	Tiếng Việt
Trọng lượng (gr)	220
Kích Thước Bao Bì	19 x 13 x 1 cm
Số trang	200
Hình thức	Bìa Mềm', 2006, N'pngegg.png', 40000, N'Yoshiya Suzuki, Kyoko Ogata', N'Kim Đồng', N'Nhà Xuất Bản Kim Đồng')
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (20, N'Học Tiếng Anh Siêu Thú Vị - Sách Học 5', 30, 32400, 10, N'Screenshot 2024-05-22 150101.png', N'Screenshot 2024-05-22 150143.png', N'Screenshot 2024-05-22 150153.png', N'Screenshot 2024-05-22 150214.png', N'5sao.png', CAST(N'2024-05-22' AS Date), N'Tên Nhà Cung Cấp	Nhã Nam
Tác giả	Sasbadi Group
Người Dịch	Bồ Câu
NXB	NXB Thế Giới
Năm XB	2018
Ngôn Ngữ	Tiếng Việt
Trọng lượng (gr)	100
Kích Thước Bao Bì	26.3 x 19 x 0.5 cm
Số trang	30
Hình thức	Bìa Mềm', 2009, N'pngegg.png', 36000, N'Sasbadi Group', N'NXB Thế Giới', N'Nhã Nam')
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (21, N'Bách Khoa Lịch Sử Thế Giới', 250, 550000, 27, N'Screenshot 2024-06-21 144931.png', N'Screenshot 2024-06-21 144952.png', N'Screenshot 2024-06-21 145013.png', N'Screenshot 2024-06-21 145036.png', N'5sao.png', CAST(N'2024-06-21' AS Date), N'Tên Nhà Cung Cấp	Đông A
Tác giả	Jane Bingham, Fiona Chandler, Sam Taplin
Người Dịch	Lê Thị Oanh
NXB	NXB Dân Trí
Năm XB	2022
Trọng lượng (gr)	2900
Kích Thước Bao Bì	27.5 x 21.5 x 5.5 cm
Số trang	416
Hình thức	Bìa Cứng
Sản phẩm hiển thị trong	
Đông A
Sản phẩm bán chạy nhất	Top 100 sản phẩm Kiến Thức Khoa Học - Tự Nhiên bán chạy của tháng', 2010, N'pngegg.png', 401500, N'Jane Bingham, Fiona Chandler', N'NXB Dân Trí', N'Đông A')
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (22, N'Danh Nhân Truyền Cảm Hứng - Nelson Mandela', 170, 102400, 20, N'Screenshot 2024-06-21 145652.png', N'Screenshot 2024-06-21 145717.png', N'Screenshot 2024-06-21 145727.png', N'Screenshot 2024-06-21 145748.png', N'5sao.png', CAST(N'2024-06-21' AS Date), N'Tên Nhà Cung Cấp	Đinh Tị
Tác giả	DK, Stephen Krensky, Charlotte Ager
Người Dịch	Thùy Dương
NXB	Thanh Niên
Năm XB	2023
Trọng lượng (gr)	150
Kích Thước Bao Bì	20 x 14 x 0.6 cm
Số trang	136
Hình thức	Bìa Mềm
Sản phẩm bán chạy nhất	Top 100 sản phẩm Câu Chuyện Danh Nhân Nổi Tiếng Thế Giới bán chạy của tháng', 2012, N'pngegg.png', 128000, N'DK, Stephen Krensky, Charlott', N'Thanh Niên', N'Đinh Tị')
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (23, N'Lược Khảo Văn Học III', 448, 85500, 10, N'Screenshot 2024-06-21 150138.png', N'Screenshot 2024-06-21 150207.png', N'Screenshot 2024-06-21 150228.png', N'Screenshot 2024-06-21 150302.png', N'5sao.png', CAST(N'2024-06-21' AS Date), N'Nhà Cung Cấp	NXB Tổng Hợp TPHCM
Tác giả	Nguyễn Văn Trung
NXB	NXB Tổng Hợp TPHCM
Năm XB	2019
Trọng lượng (gr)	280
Kích Thước Bao Bì	16 x 24 x 1.3
Số trang	252
Hình thức	Bìa Mềm
Sản phẩm bán chạy nhất	Top 100 sản phẩm Lịch Sử bán chạy của tháng', 2007, N'pngegg.png', 95000, N'Nguyễn Văn Trung', N'XB Tổng Hợp TPHCM', N'	NXB Tổng Hợp TPHCM')
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (24, N'Kĩ Năng Đọc Thông Minh ', 340, 76000, 20, N'Screenshot 2024-06-21 150607.png', N'Screenshot 2024-06-21 150636.png', N'Screenshot 2024-06-21 150718.png', N'Screenshot 2024-06-21 150648.png', N'5sao.png', CAST(N'2024-06-21' AS Date), N'Tên Nhà Cung Cấp	Minh Long
Tác giả	Instant Research Institude
Người Dịch	Lê Thùy Dương
NXB	NXB Thanh Niên
Năm XB	2021
Trọng lượng (gr)	282
Kích Thước Bao Bì	20.5 x 14.5 x 1.2 cm
Số trang	271
Hình thức	Bìa Mềm
Sản phẩm hiển thị trong	
Minh Long
Tủ Sách Tâm Lý Kỹ Năng
Sản phẩm bán chạy nhất	Top 100 sản phẩm Kỹ năng sống bán chạy của tháng', 2006, N'hot-icon.gif', 95000, N'Instant Research Institude', N'NXB Thanh Niên', N'Minh LongTác')
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [Author], [Publishing], [Provider]) VALUES (25, N'Ứng Dụng Tâm Lý Học Thực Hành', 450, 79200, 20, N'Screenshot 2024-06-21 151017.png', N'Screenshot 2024-06-21 151032.png', N'Screenshot 2024-06-21 151043.png', N'Screenshot 2024-06-21 151051.png', N'5sao.png', CAST(N'2024-06-21' AS Date), N'Tên Nhà Cung Cấp	Cty Văn Hóa Văn Lang
Tác giả	Kairen Cullen
Người Dịch	Khiết Lam
NXB	Hồng Đức
Năm XB	2023
Trọng lượng (gr)	290
Kích Thước Bao Bì	20.5 x 13.5 x 1.2 cm
Số trang	255
Hình thức	Bìa Mềm
Sản phẩm bán chạy nhất	Top 100 sản phẩm Tâm lý bán chạy của tháng', 2006, N'pngegg.png', 90000, N'Kairen Cullen', N'Hồng Đức', N'Cty Văn Hóa Văn Lang')
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Roles] ([RoleId], [Name]) VALUES (N'CUST', N'Customers')
GO
INSERT [dbo].[Roles] ([RoleId], [Name]) VALUES (N'DIRE', N'Directors')
GO
INSERT [dbo].[Roles] ([RoleId], [Name]) VALUES (N'STAF', N'Staffs')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK23fux5pe6yss1vck8iv9juegn]    Script Date: 6/21/2024 4:20:19 PM ******/
ALTER TABLE [dbo].[Authorities] ADD  CONSTRAINT [UK23fux5pe6yss1vck8iv9juegn] UNIQUE NONCLUSTERED 
(
	[Username] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UKef7fbpy09qu6267gf071q71we]    Script Date: 6/21/2024 4:20:19 PM ******/
ALTER TABLE [dbo].[Authorities] ADD  CONSTRAINT [UKef7fbpy09qu6267gf071q71we] UNIQUE NONCLUSTERED 
(
	[Username] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Accounts]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Roles]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Accounts]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Products]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Accounts]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Products]
GO
ALTER TABLE [dbo].[FeedBacks]  WITH CHECK ADD  CONSTRAINT [FK_FeedBacks_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[FeedBacks] CHECK CONSTRAINT [FK_FeedBacks_Accounts]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Statitic]  WITH CHECK ADD  CONSTRAINT [FK_Statitic_OrderDetails] FOREIGN KEY([OrderDetailId])
REFERENCES [dbo].[OrderDetails] ([OrderDetailId])
GO
ALTER TABLE [dbo].[Statitic] CHECK CONSTRAINT [FK_Statitic_OrderDetails]
GO
ALTER TABLE [dbo].[Statitic]  WITH CHECK ADD  CONSTRAINT [FK_Statitic_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[Statitic] CHECK CONSTRAINT [FK_Statitic_Orders]
GO

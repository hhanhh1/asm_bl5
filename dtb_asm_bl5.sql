use asm
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[displayName] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2/24/2022 7:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 2/24/2022 7:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2/24/2022 7:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [text] NULL,
	[created_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/24/2022 7:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[description] [nvarchar](255) NULL,
	[image_url] [nvarchar](255) NULL,
	[created_date] [date] NULL,
	[category_id] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 2/24/2022 7:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Áo len')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Hoa')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'Móc khóa')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'Kẹp tóc')
INSERT [dbo].[Category] ([id], [name]) VALUES (5, N'Túi')
INSERT [dbo].[Category] ([id], [name]) VALUES (6, N'Nến thơm')
INSERT [dbo].[Category] ([id], [name]) VALUES (7, N'Tất cả')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (1, N'Áo len handmade', 5, 300000, N'Áo len freesize dưới 70kg', N'http://localhost:9999/Project_BL5/Picture/danhmucsp/275542646_1368035347038290_3840490951541848611_n.png', CAST(N'2021-08-23' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (2, N'túi handmade', 8, 150000, N' Size 20*25cm', N'http://localhost:9999/Project_BL5/Picture/danhmucsp/277080087_969597183815232_6895424573581673178_n.png', CAST(N'2021-04-03' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (3, N'Chậu hoa hướng dương', 18, 100000, N'Size 15*25 cm. Bao gồm hoa và chậu', N'http://localhost:9999/Project_BL5/Picture/danhmucsp/277435692_5027610087360385_6240365418702625663_n.png', CAST(N'2021-01-21' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (4, N'Móc khóa len thú', 17, 30000, N'Size 5*10cm', N'http://localhost:9999/Project_BL5/Picture/sanphamvip/277473420_424115766070724_4833094248637601977_n.png', CAST(N'2021-02-09' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (5, N'Túi màu xanh', 6, 150000, N'Size 15*22cm', N'http://localhost:9999/Project_BL5/Picture/sanphamvip/277691521_7210877238987697_7161733669373659183_n.png', CAST(N'2021-08-23' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (6, N'Boa hoa len', 16, 250000, N'1 bó gồm 20 bông', N'http://localhost:9999/Project_BL5/Picture/danhmucsp/277683721_1012762976010195_3108623145419320539_n.png', CAST(N'2021-09-25' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (7, N'hoa lavender', 19, 350000, N'250 cành hoa khô', N'http://localhost:9999/Project_BL5/Picture/sanphamvip/277850130_261307516214018_5033806617465884536_n.png', CAST(N'2021-07-07' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (8, N'Nến thơm quả dâu', 10, 25000, N'Size 5*8 cm màu đỏ', N'http://localhost:9999/Project_BL5/Picture/sanphamvip/278146828_4561793397258025_3078569932888622186_n.png', CAST(N'2022-02-03' AS Date), 6)

INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (9, N'Workout Ready Strength Shorts', 10, 40, N'Size 5*8 cm màu đỏ', N'https://assets.reebok.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/f31812a71f77479fb746addb009f4bf7_9366/Workout_Ready_Strength_Shorts_Black_H46644_01_standard.jpg', CAST(N'2022-02-03' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (10, N'Reebok PureMove+ Bra Motion Sense', 10, 65, N'Size 5*8 cm màu đỏ', N'https://assets.reebok.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/7e9586bcdb9d4b7ea6e5ab3b01039c38_9366/Reebok_PureMove+_Bra_Motion_Sense_tm_Pink_FN6360_01_standard.jpg', CAST(N'2022-02-03' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (10, N'Reebok Identity Joggers', 10, 50, N'Size 5*8 cm màu đỏ', N'https://assets.reebok.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/458623c9f1fb480cbfcbac59008c7a6c_9366/Reebok_Identity_Joggers_Black_GJ0554_01_standard.jpg', CAST(N'2022-02-03' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (11, N'Classics Camping Shorts', 10, 45, N'Size 5*8 cm màu đỏ', N'https://assets.reebok.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/f1e7f135eb57412ab4e1acc300120467_9366/Classics_Camping_Shorts_Black_GV3428_01_standard.jpg', CAST(N'2022-02-03' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (12, N'Tech Style Activchill Move T-Shirt', 10, 35, N'Size 5*8 cm màu đỏ', N'https://assets.reebok.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/7393dd751e244b1599eead1901221ae2_9366/Tech_Style_Activchill_Move_T-Shirt_Black_GT5726_01_standard.jpg', CAST(N'2022-02-03' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (13, N'THE FLINTSTONES Jetsons Worlds Collide T-Shirt', 10, 35, N'Size 5*8 cm màu đỏ', N'https://assets.reebok.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/08729a6912284f6fa683ad4e01521a98_9366/THE_FLINTSTONES_Jetsons_Worlds_Collide_T-Shirt_White_HE3341_01_standard.jpg', CAST(N'2022-02-03' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (14, N'Reebok Austin Shorts', 10, 55, N'Size 5*8 cm màu đỏ', N'https://assets.reebok.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/0729bde9e9b04d939f3dad260070a568_9366/Reebok_Austin_Shorts_Yellow_GS6623_01_standard.jpg', CAST(N'2022-02-03' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (15, N'Workout Ready Track Pant', 10, 45, N'Size 5*8 cm màu đỏ', N'https://assets.reebok.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/e61265d7cd94475e8d13ad2c0006593b_9366/Workout_Ready_Track_Pant_Grey_GT5773_01_standard.jpg', CAST(N'2022-02-03' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (16, N'Reebok Classics Natural Dye Waffle Shorts', 10, 40, N'Size 5*8 cm màu đỏ', N'https://assets.reebok.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/6898d1afbcb343ac861fadbe0150e35f_9366/Reebok_Classics_Natural_Dye_Waffle_Shorts_Grey_HB8647_01_standard.jpg', CAST(N'2022-02-03' AS Date), 2)

INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (17, N'AL RIHLA MINI BALL', 10, 20, N'Size 5*8 cm màu đỏ', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/edfc06406f30408e842cae1c00a35c9c_9366/Al_Rihla_Mini_Ball_White_H57793_01_standard.jpg', CAST(N'2022-02-03' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (18, N'AL RIHLA CLUB BALL', 1, 27, N'Size 5*8 cm màu đỏ', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/03c69818a0ca44a8b8cbae6800856278_9366/Al_Rihla_Club_Ball_Grey_H57784_01_standard.jpg', CAST(N'2022-02-03' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (19, N'UCL MINI PYROSTORM BALL', 10, 17.5, N'Size 5*8 cm màu đỏ', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/9e3f4270ad094572857ead120020ca4a_9366/UCL_Mini_Pyrostorm_Ball_White_GU0207_01_standard.jpg', CAST(N'2022-02-03' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (20, N'ALL COURT 2.0 BASKETBALL', 10, 30, N'Size 5*8 cm màu đỏ', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/8d1778943c7644a9bd01abfb0127cc46_9366/All_Court_2.0_Basketball_Black_GL3946_01_standard.jpg', CAST(N'2022-02-03' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (21, N'AL RIHLA CLUB BALL', 10, 27.5, N'Size 5*8 cm màu đỏ', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/5aeae91a66a1475aacc6ae68008644ac_9366/Al_Rihla_Club_Ball_White_H57786_01_standard.jpg', CAST(N'2022-02-03' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (22, N'BALL CASE', 10, 20, N'Size 5*8 cm màu đỏ', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/48bfc978c4644919beeaac61015cbc03_9366/Ball_Case_Black_GM1386_01_standard.jpg', CAST(N'2022-02-03' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (23, N'CLASSIC BOXY BACKPACK', 10, 100, N'Size 5*8 cm màu đỏ', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/fb2fcf2ddcd54af68f4dadf000e7d0c9_9366/Classic_Boxy_Backpack_White_HB1338_01_standard.jpg', CAST(N'2022-02-03' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (24, N'CLASSIC CAMO BACKPACK', 10, 55, N'Size 5*8 cm màu đỏ', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/5d8b101e157b41d7ae3dad06005fd296_9366/Classic_Camo_Backpack_Black_H30354_01_standard.jpg', CAST(N'2022-02-03' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (25, N'ADICOLOR BACKPACK', 0, 47.5, N'Size 5*8 cm màu đỏ', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/abe3a78ccfe34bacb6d0ad5600ee3f3a_9366/Adicolor_Backpack_Black_H35596_01_standard.jpg', CAST(N'2022-02-03' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (26, N'ADICOLOR ARCHIVE BASEBALL CAP', 10, 22.5, N'Size 5*8 cm màu đỏ', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/e8012c98cbfa4e939009adc600e18bec_9366/Adicolor_Archive_Baseball_Cap_Black_HD9725_01_standard.jpg', CAST(N'2022-02-03' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (27, N'AEROREADY RUNNER VISOR', 15, 22.5, N'Size 5*8 cm màu đỏ', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/31cdf26d5caf492583dfada10040faba_9366/AEROREADY_Runner_Visor_Black_HB1306_01_standard.jpg', CAST(N'2022-02-03' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (28, N'PREDATOR TRAINING GOALKEEPER GLOVES', 10, 25000, N'Size 5*8 cm màu đỏ', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/6c4f79e588f14ce0b6f3ad2a00196fb9_9366/Predator_Training_Goalkeeper_Gloves_White_GS4041_21_model.jpg', CAST(N'2022-02-03' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (8, N'Nến thơm quả dâu', 10, 25000, N'Size 5*8 cm màu đỏ', N'http://localhost:9999/Project_BL5/Picture/sanphamvip/278146828_4561793397258025_3078569932888622186_n.png', CAST(N'2022-02-03' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (8, N'Nến thơm quả dâu', 10, 25000, N'Size 5*8 cm màu đỏ', N'http://localhost:9999/Project_BL5/Picture/sanphamvip/278146828_4561793397258025_3078569932888622186_n.png', CAST(N'2022-02-03' AS Date), 5)

GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__order__30F848ED] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__order__30F848ED]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__account___2F10007B] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__account___2F10007B]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__shipping__300424B4] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__shipping__300424B4]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__categor__267ABA7A] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__categor__267ABA7A]
GO
USE [master]
GO
ALTER DATABASE [asm] SET  READ_WRITE 
GO
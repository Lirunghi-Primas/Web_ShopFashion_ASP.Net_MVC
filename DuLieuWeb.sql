USE [ShopFasion]
GO
/****** Object:  Table [dbo].[category]    Script Date: 02/04/2018 3:55:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[link] [nvarchar](max) NULL,
	[meta] [nvarchar](50) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [smalldatetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[menu]    Script Date: 02/04/2018 3:55:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[link] [nvarchar](max) NULL,
	[meta] [nvarchar](50) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [smalldatetime] NULL,
 CONSTRAINT [PK_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[banner]    Script Date: 02/04/2018 3:55:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[banner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[img] [nvarchar](50) NULL,
	[link] [nvarchar](max) NULL,
	[meta] [nvarchar](50) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [smalldatetime] NULL,
 CONSTRAINT [PK_banner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[News]    Script Date: 02/04/2018 3:55:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[img] [nvarchar](30) NULL,
	[description] [nvarchar](max) NULL,
	[detail] [ntext] NULL,
	[meta] [nvarchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [smalldatetime] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product]    Script Date: 02/04/2018 3:55:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[price] [float] NULL,
	[img] [nvarchar](50) NULL,
	[img1] [nvarchar](50) NULL,
	[img2] [nvarchar](50) NULL,
	[img3] [nvarchar](50) NULL,
	[description] [ntext] NULL,
	[meta] [nvarchar](max) NULL,
	[size] [nvarchar](10) NULL,
	[color] [nvarchar](30) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [smalldatetime] NULL,
	[categoryid] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (1, N'Quần áo Nam', NULL, N'quan-ao-nam', 1, 1, CAST(N'2018-03-13 00:00:00' AS SmallDateTime))
INSERT [dbo].[category] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (2, N'Quần áo Nữ', NULL, N'quan-ao-nu', 1, 2, CAST(N'2018-03-13 00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[category] OFF
SET IDENTITY_INSERT [dbo].[menu] ON 

INSERT [dbo].[menu] ([id], [name],  [link], [meta], [hide], [order], [datebegin]) VALUES (1, N'Giới thiệu', NULL, N'gioi-thieu', 1, 2, CAST(N'2018-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (2, N'Sản phẩm', NULL, N'san-pham', 1, 3, CAST(N'2018-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (4, N'Liên hệ', NULL, N'lien-he', 1, 5, CAST(N'2018-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (3, N'Tin tức', NULL, N'tin-tuc', 1, 4, CAST(N'2018-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (1002, N'Trang chủ', NULL, N'trang-chu', 1, 1, CAST(N'2018-03-09 00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[menu] OFF
SET IDENTITY_INSERT [dbo].[banner] ON 

INSERT [dbo].[banner] ([id], [name], [img], [link], [meta], [hide], [order], [datebegin]) VALUES (1, N'banner1', N'banner_img_01.jpg', NULL, NULL, 1, 2, CAST(N'2018-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[banner] ([id], [name], [img], [link], [meta], [hide], [order], [datebegin]) VALUES (2, N'banner2', N'banner_img_02.jpg', NULL, NULL, 1, 3, CAST(N'2018-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[banner] ([id], [name], [img], [link], [meta], [hide], [order], [datebegin]) VALUES (3, N'banner3', N'banner_img_03.jpg', NULL, NULL, 1, 5, CAST(N'2018-03-09 00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[banner] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([id], [name], [img], [description], [detail], [meta], [hide], [order], [datebegin]) VALUES (1, N'tuyển dụng nhân viên giao hàng', N'men1.jpg', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined', N'tuyen-dung-nv-giao-hang', 1, 1, CAST(N'2018-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[News] ([id], [name], [img], [description], [detail], [meta], [hide], [order], [datebegin]) VALUES (2, N'khai trương cửa hàng 1', N'men2.jpg', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined', N'khai-truong-cua-hang', 1, 1, CAST(N'2018-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[News] ([id], [name], [img], [description], [detail], [meta], [hide], [order], [datebegin]) VALUES (1002, N'khai trương cửa hàng 1', N'pi.jpg', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined', N'khai-truong-cua-hang', 1, 1, CAST(N'2018-03-09 00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [price], [img], [img1], [img2], [img3], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (1, N'Áo Vest nam', 230000, N'shop_07.jpg', N'pi.jpg', N'sin1.jpg', N'sin4.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', N'ao-vest-nam', NULL, NULL, 1, 1, CAST(N'2018-03-13 00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[product] ([id], [name], [price], [img], [img1], [img2], [img3], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (2, N'Áo thun nam', 230000, N'shop_04.jpg', N'pi4.jpg', N'sin1.jpg', N'sin3.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', N'ao-thun-nam', NULL, NULL, 1, 2, CAST(N'2018-03-13 00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[product] ([id], [name], [price], [img], [img1], [img2], [img3], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (3, N'Áo nam', 230000, N'shop_05.jpg', N'pi4.jpg', N'sin1.jpg', N'sin3.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', N'ao-nam', NULL, NULL, 1, 3, CAST(N'2018-03-13 00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[product] ([id], [name], [price], [img], [img1], [img2], [img3], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (4, N'Áo nữ', 230000, N'shop_01.jpg', N'pi5.jpg', N'sin1.jpg', N'sin2.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', N'ao-nu', NULL, NULL, 1, 3, CAST(N'2018-03-13 00:00:00' AS SmallDateTime), 2)
INSERT [dbo].[product] ([id], [name], [price], [img], [img1], [img2], [img3], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (5, N'Quần jean nữ', 230000, N'shop_09.jpg', N'pi.jpg', N'sin4.jpg', N'sin2.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', N'quan-jean-nu', NULL, NULL, 1, 1, CAST(N'2018-03-13 00:00:00' AS SmallDateTime), 2)
INSERT [dbo].[product] ([id], [name], [price], [img], [img1], [img2], [img3], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (6, N'Áo thun nữ', 230000, N'shop_11.jpg', N'pi6.jpg', N'sin4.jpg', N'sin2.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', N'ao-thun-nu', NULL, NULL, 1, 2, CAST(N'2018-03-13 00:00:00' AS SmallDateTime), 2)
INSERT [dbo].[product] ([id], [name], [price], [img], [img1], [img2], [img3], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (6, N'Áo sơ mi nam', 230000, N'shop_07.jpg', N'pi6.jpg', N'sin4.jpg', N'sin2.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', N'ao-so-mi-nam', NULL, NULL, 1, 4, CAST(N'2018-03-13 00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[product] ([id], [name], [price], [img], [img1], [img2], [img3], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (6, N'Áo sơ mi nữ', 230000, N'shop_03.jpg', N'pi6.jpg', N'sin4.jpg', N'sin2.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.', N'ao-so-mi-nu', NULL, NULL, 1, 4, CAST(N'2018-03-13 00:00:00' AS SmallDateTime), 2)
SET IDENTITY_INSERT [dbo].[product] OFF

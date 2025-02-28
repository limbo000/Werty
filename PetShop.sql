USE [PetShop]
GO
/****** Object:  Table [dbo].[Adress]    Script Date: 24.10.2024 18:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adress](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdIndex] [int] NOT NULL,
	[IdCity] [int] NOT NULL,
	[IdStreet] [int] NOT NULL,
	[HouseNum] [int] NULL,
 CONSTRAINT [PK_Adress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 24.10.2024 18:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 24.10.2024 18:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Indexes]    Script Date: 24.10.2024 18:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Indexes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IndexOf] [int] NOT NULL,
 CONSTRAINT [PK_Indexes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 24.10.2024 18:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 24.10.2024 18:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[IdOrder] [int] IDENTITY(1,1) NOT NULL,
	[IdClient] [int] NULL,
	[IdStatus] [int] NOT NULL,
	[DateOrder] [date] NOT NULL,
	[DateDelivery] [date] NOT NULL,
	[IdPickPoint] [int] NOT NULL,
	[Code] [int] NOT NULL,
 CONSTRAINT [PK__Order__C3905BAF47AEFB4B] PRIMARY KEY CLUSTERED 
(
	[IdOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 24.10.2024 18:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[IdProduct] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK__OrderPro__817A2662F1CBEFAE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 24.10.2024 18:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductArticleNumber] [nvarchar](50) NOT NULL,
	[IdName] [int] NOT NULL,
	[ProductCost] [decimal](19, 4) NOT NULL,
	[IdManufacturer] [int] NOT NULL,
	[IdSupplier] [int] NOT NULL,
	[IdCategory] [int] NOT NULL,
	[ProductDiscountAmount] [tinyint] NOT NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductDescription] [nvarchar](500) NOT NULL,
	[ProductName] [nvarchar](100) NULL,
	[ProductPhoto] [image] NULL,
 CONSTRAINT [PK__Product__2EA7DCD503B707A7] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductName]    Script Date: 24.10.2024 18:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductName](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductName] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 24.10.2024 18:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Role__8AFACE3A03BB6313] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 24.10.2024 18:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 24.10.2024 18:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[Id] [int] NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 24.10.2024 18:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 24.10.2024 18:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserRole] [int] NOT NULL,
	[UserSurname] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[UserPatronymic] [nvarchar](50) NOT NULL,
	[UserLogin] [nvarchar](100) NOT NULL,
	[UserPassword] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adress] ON 

INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (1, 5, 1, 28, 1)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (2, 24, 1, 25, 30)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (3, 7, 1, 7, 43)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (4, 36, 1, 23, 25)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (5, 3, 1, 30, 40)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (6, 2, 1, 16, 49)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (7, 29, 1, 17, 46)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (8, 26, 1, 11, 50)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (9, 19, 1, 14, 19)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (10, 35, 1, 15, 19)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (11, 21, 1, 20, 4)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (12, 18, 1, 8, 26)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (13, 8, 1, 28, 3)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (14, 20, 1, 4, 28)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (15, 17, 1, 12, 30)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (16, 6, 1, 26, 43)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (17, 12, 1, 29, 50)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (18, 31, 1, 7, 20)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (19, 32, 1, 1, NULL)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (20, 9, 1, 5, 32)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (21, 25, 1, 9, 47)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (22, 11, 1, 21, 46)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (23, 28, 1, 27, 8)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (24, 15, 1, 7, 1)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (25, 22, 1, 24, 46)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (26, 23, 1, 3, 41)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (27, 10, 1, 22, 13)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (28, 13, 1, 2, 32)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (29, 1, 1, 18, 8)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (30, 34, 1, 30, 24)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (31, 27, 1, 19, 35)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (32, 14, 1, 9, 44)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (33, 16, 1, 6, 44)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (34, 30, 1, 13, 12)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (35, 33, 1, 8, 17)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (36, 4, 1, 10, 26)
SET IDENTITY_INSERT [dbo].[Adress] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Для животных')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Товары для кошек')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Товары для собак')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([Id], [City]) VALUES (1, N'г.Нефтеюганск')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Indexes] ON 

INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (1, 125061)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (2, 125703)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (3, 125837)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (4, 190949)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (5, 344288)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (6, 394060)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (7, 394242)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (8, 394782)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (9, 400562)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (10, 410172)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (11, 410542)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (12, 410661)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (13, 420151)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (14, 426030)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (15, 443890)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (16, 450375)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (17, 450558)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (18, 450983)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (19, 454311)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (20, 603002)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (21, 603036)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (22, 603379)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (23, 603721)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (24, 614164)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (25, 614510)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (26, 614611)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (27, 614753)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (28, 620839)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (29, 625283)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (30, 625560)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (31, 625590)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (32, 625683)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (33, 630201)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (34, 630370)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (35, 660007)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (36, 660540)
SET IDENTITY_INSERT [dbo].[Indexes] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([Id], [Name]) VALUES (1, N'Cat Chow')
INSERT [dbo].[Manufacturer] ([Id], [Name]) VALUES (2, N'Chappy')
INSERT [dbo].[Manufacturer] ([Id], [Name]) VALUES (3, N'Dog Chow')
INSERT [dbo].[Manufacturer] ([Id], [Name]) VALUES (4, N'Dreames')
INSERT [dbo].[Manufacturer] ([Id], [Name]) VALUES (5, N'Fancy Pets')
INSERT [dbo].[Manufacturer] ([Id], [Name]) VALUES (6, N'LIKER')
INSERT [dbo].[Manufacturer] ([Id], [Name]) VALUES (7, N'Nobby')
INSERT [dbo].[Manufacturer] ([Id], [Name]) VALUES (8, N'Pro Plan')
INSERT [dbo].[Manufacturer] ([Id], [Name]) VALUES (9, N'TitBit')
INSERT [dbo].[Manufacturer] ([Id], [Name]) VALUES (10, N'Triol')
INSERT [dbo].[Manufacturer] ([Id], [Name]) VALUES (11, N'trixie')
INSERT [dbo].[Manufacturer] ([Id], [Name]) VALUES (12, N'True Touch')
INSERT [dbo].[Manufacturer] ([Id], [Name]) VALUES (13, N'ZooM')
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([IdOrder], [IdClient], [IdStatus], [DateOrder], [DateDelivery], [IdPickPoint], [Code]) VALUES (1, NULL, 2, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 25, 601)
INSERT [dbo].[Order] ([IdOrder], [IdClient], [IdStatus], [DateOrder], [DateDelivery], [IdPickPoint], [Code]) VALUES (2, NULL, 2, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 20, 602)
INSERT [dbo].[Order] ([IdOrder], [IdClient], [IdStatus], [DateOrder], [DateDelivery], [IdPickPoint], [Code]) VALUES (3, 9, 1, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 22, 603)
INSERT [dbo].[Order] ([IdOrder], [IdClient], [IdStatus], [DateOrder], [DateDelivery], [IdPickPoint], [Code]) VALUES (4, NULL, 1, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 24, 604)
INSERT [dbo].[Order] ([IdOrder], [IdClient], [IdStatus], [DateOrder], [DateDelivery], [IdPickPoint], [Code]) VALUES (5, NULL, 1, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 25, 605)
INSERT [dbo].[Order] ([IdOrder], [IdClient], [IdStatus], [DateOrder], [DateDelivery], [IdPickPoint], [Code]) VALUES (6, 7, 1, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 28, 606)
INSERT [dbo].[Order] ([IdOrder], [IdClient], [IdStatus], [DateOrder], [DateDelivery], [IdPickPoint], [Code]) VALUES (7, NULL, 2, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 36, 607)
INSERT [dbo].[Order] ([IdOrder], [IdClient], [IdStatus], [DateOrder], [DateDelivery], [IdPickPoint], [Code]) VALUES (8, NULL, 2, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 32, 608)
INSERT [dbo].[Order] ([IdOrder], [IdClient], [IdStatus], [DateOrder], [DateDelivery], [IdPickPoint], [Code]) VALUES (9, 1, 2, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 34, 609)
INSERT [dbo].[Order] ([IdOrder], [IdClient], [IdStatus], [DateOrder], [DateDelivery], [IdPickPoint], [Code]) VALUES (10, 8, 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 36, 610)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderProduct] ON 

INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (1, 1, 30, 15)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (2, 2, 10, 15)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (3, 3, 9, 10)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (4, 4, 11, 1)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (5, 5, 23, 1)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (6, 6, 16, 1)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (7, 7, 14, 2)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (8, 8, 19, 1)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (9, 9, 27, 1)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (10, 10, 21, 1)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (11, 1, 12, 1)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (12, 2, 29, 15)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (13, 3, 25, 10)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (14, 4, 5, 2)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (15, 5, 6, 10)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (16, 6, 4, 1)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (17, 7, 22, 2)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (18, 8, 27, 1)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (19, 9, 20, 1)
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (20, 10, 28, 1)
SET IDENTITY_INSERT [dbo].[OrderProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (1, N'B427R5', 5, CAST(400.0000 AS Decimal(19, 4)), 10, 2, 1, 4, 5, N'Миска для животных Triol "Стрекоза", 450 мл', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (2, N'D356R4', 6, CAST(600.0000 AS Decimal(19, 4)), 11, 1, 3, 2, 16, N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (3, N'D563F4', 1, CAST(600.0000 AS Decimal(19, 4)), 10, 1, 3, 5, 5, N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (4, N'D643B5', 7, CAST(4100.0000 AS Decimal(19, 4)), 1, 1, 2, 4, 9, N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (5, N'E345R4', 1, CAST(199.0000 AS Decimal(19, 4)), 5, 2, 2, 5, 7, N'Игрушка для животных «Котик» с кошачьей мятой FANCY PETS', N'E345R4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (6, N'E431R5', 3, CAST(170.0000 AS Decimal(19, 4)), 10, 2, 3, 5, 5, N'Лакомство для собак Triol Кость из жил 7.5 см, 4шт. в уп.', N'E431R5.png', NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (7, N'E434U6', 3, CAST(140.0000 AS Decimal(19, 4)), 9, 2, 3, 3, 19, N'Лакомство для собак Titbit Лакомый кусочек Нарезка из говядины, 80 г', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (8, N'E466T6', 2, CAST(3500.0000 AS Decimal(19, 4)), 10, 2, 3, 5, 3, N'Клетка для собак Triol 30671002 61х45.5х52 см серый/белый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (9, N'E532Q5', 3, CAST(166.0000 AS Decimal(19, 4)), 9, 1, 3, 5, 18, N'Лакомство для собак Titbit Печенье Био Десерт с лососем стандарт, 350 г', N'E532Q5.jpg', NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (10, N'F432F4', 7, CAST(1200.0000 AS Decimal(19, 4)), 8, 2, 2, 3, 15, N'Сухой корм для кошек Pro Plan с чувствительным пищеварением', N'F432F4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (11, N'G345E4', 6, CAST(300.0000 AS Decimal(19, 4)), 6, 2, 3, 3, 19, N'Мячик для собак LIKER Мячик Лайкер (6294) оранжевый', N'G345E4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (12, N'G453T5', 8, CAST(149.0000 AS Decimal(19, 4)), 12, 2, 1, 2, 7, N'Щетка-варежка True Touch для вычесывания шерсти, синий', N'G453T5.jpg', NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (13, N'G542F5', 7, CAST(2190.0000 AS Decimal(19, 4)), 8, 1, 3, 4, 7, N'Сухой корм для собак Pro Plan при чувствительном пищеварении, ягненок', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (14, N'H342F5', 1, CAST(510.0000 AS Decimal(19, 4)), 10, 2, 3, 2, 17, N'Игрушка для собак Triol Енот 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (15, N'H432F4', 5, CAST(385.0000 AS Decimal(19, 4)), 10, 2, 1, 2, 17, N'Миска Triol 9002/KIDP3211/30261087 400 мл серебристый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (16, N'H436R4', 1, CAST(300.0000 AS Decimal(19, 4)), 10, 1, 3, 2, 15, N'Игрушка для собак Triol 3D плетение EC-04/12171005 бежевый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (17, N'H542R6', 3, CAST(177.0000 AS Decimal(19, 4)), 10, 2, 3, 3, 15, N'Лакомство для собак Triol Мясные полоски из кролика, 70 г', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (18, N'H643W2', 5, CAST(292.0000 AS Decimal(19, 4)), 10, 1, 1, 3, 13, N'Миска Triol CB02/30231002 100 мл бежевый/голубой', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (19, N'K436T5', 6, CAST(100.0000 AS Decimal(19, 4)), 10, 2, 3, 4, 21, N'Мячик для собак Triol с косточками 12101096 желтый/зеленый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (20, N'K452T5', 4, CAST(800.0000 AS Decimal(19, 4)), 13, 2, 3, 2, 17, N'Лежак для собак и кошек ZooM Lama 40х30х8 см бежевый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (21, N'M356R4', 3, CAST(50.0000 AS Decimal(19, 4)), 9, 2, 3, 4, 6, N'Лакомство для собак Titbit Гематоген мясной Classic, 35 г', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (22, N'Q245F5', 1, CAST(510.0000 AS Decimal(19, 4)), 10, 2, 3, 2, 17, N'Игрушка для собак Triol Бобер 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (23, N'R356F4', 5, CAST(234.0000 AS Decimal(19, 4)), 7, 1, 3, 3, 17, N'Миска Nobby с рисунком Dog для собак 130 мл красный', N'R356F4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (24, N'S245R4', 7, CAST(280.0000 AS Decimal(19, 4)), 1, 2, 2, 3, 8, N'Сухой корм для кошек CAT CHOW', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (25, N'T432F4', 7, CAST(1700.0000 AS Decimal(19, 4)), 2, 2, 3, 2, 5, N'Сухой корм для собак Chappi говядина по-домашнему, с овощами', N'T432F4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (26, N'V352R4', 7, CAST(1700.0000 AS Decimal(19, 4)), 2, 1, 3, 4, 9, N'Сухой корм для собак Chappi Мясное изобилие, мясное ассорти', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (27, N'V527T5', 1, CAST(640.0000 AS Decimal(19, 4)), 10, 1, 3, 5, 4, N'Игрушка для собак Triol Ящерица 39 см коричневый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (28, N'W548O7', 7, CAST(600.0000 AS Decimal(19, 4)), 3, 1, 3, 5, 15, N'Сухой корм для щенков DOG CHOW Puppy, ягненок 2.5 кг', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (29, N'Y324F4', 3, CAST(86.0000 AS Decimal(19, 4)), 9, 1, 3, 4, 17, N'Лакомство для собак Titbit Косточки мясные с индейкой и ягненком, 145 г', N'Y324F4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdName], [ProductCost], [IdManufacturer], [IdSupplier], [IdCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductName], [ProductPhoto]) VALUES (30, N'А112Т4', 3, CAST(123.0000 AS Decimal(19, 4)), 4, 1, 2, 3, 6, N'Лакомство для кошек Dreamies Подушечки с курицей, 140 г', N'А112Т4.png', NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductName] ON 

INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (1, N'Игрушка')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (2, N'Клетка')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (3, N'Лакомство')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (4, N'Лежак')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (5, N'Миска')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (6, N'Мячик')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (7, N'Сухой корм')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (8, N'Щетка-варежка')
SET IDENTITY_INSERT [dbo].[ProductName] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Клиент')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([Id], [Status]) VALUES (1, N'Завершен')
INSERT [dbo].[Status] ([Id], [Status]) VALUES (2, N'Новый ')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
INSERT [dbo].[Street] ([Id], [Street]) VALUES (1, N'ул.8 Марта')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (2, N'ул.Вишневая')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (3, N'ул.Гоголя')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (4, N'ул.Дзержинского')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (5, N'ул.Зеленая')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (6, N'ул.Клубная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (7, N'ул.Коммунистическая')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (8, N'ул.Комсомольская')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (9, N'ул.Маяковского')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (10, N'ул.Мичурина')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (11, N'ул.Молодежная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (12, N'ул.Набережная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (13, N'ул.Некрасова')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (14, N'ул.Новая')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (15, N'ул.Октябрьская')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (16, N'ул.Партизанская')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (17, N'ул.Победы')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (18, N'ул.Подгорная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (19, N'ул.Полевая')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (20, N'ул.Садовая')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (21, N'ул.Светлая')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (22, N'ул.Северная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (23, N'ул.Солнечная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (24, N'ул.Спортивная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (25, N'ул.Степная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (26, N'ул.Фрунзе')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (27, N'ул.Цветочная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (28, N'ул.Чехова')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (29, N'ул.Школьная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (30, N'ул.Шоссейная')
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([Id], [Name]) VALUES (1, N'PetShop')
INSERT [dbo].[Supplier] ([Id], [Name]) VALUES (2, N'ZooMir')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (1, 2, N'Волкова', N'Эмилия', N'Артёмовна', N'nokupekidda2001@gmail.com', N'JlFRCZ')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (2, 3, N'Денисов', N'Михаил', N'Романович', N'frusubroppotou656@yandex.ru', N'YOyhfR')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (3, 1, N'Игнатьева', N'Алина', N'Михайловна', N'vilagajaunne-5170@yandex.ru', N'8ntwUp')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (4, 3, N'Соловьев', N'Ярослав', N'Маркович', N'frapreubrulloba1141@yandex.ru', N'rwVDh9')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (5, 1, N'Суслов', N'Илья', N'Арсентьевич', N'pixil59@gmail.com', N'2L6KZG')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (6, 3, N'Тимофеев', N'Михаил', N'Елисеевич', N'leuttevitrafo1998@mail.ru', N'RSbvHv')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (7, 2, N'Филимонов', N'Роберт', N'Васильевич', N'loudittoimmolau1900@gmail.com', N'LdNyos')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (8, 2, N'Чистякова', N'Виктория', N'Степановна', N'freineiciweijau888@yandex.ru', N'AtnDjr')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (9, 2, N'Шилова', N'Майя', N'Артемьевна', N'hittuprofassa4984@mail.com', N'gynQMT')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (10, 1, N'Яковлева', N'Ярослава', N'Даниэльевна', N'deummecillummu-4992@mail.ru', N'uzWC67')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_City1] FOREIGN KEY([IdCity])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_City1]
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Indexes1] FOREIGN KEY([IdIndex])
REFERENCES [dbo].[Indexes] ([Id])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Indexes1]
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Street] FOREIGN KEY([IdStreet])
REFERENCES [dbo].[Street] ([Id])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Street]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Adress] FOREIGN KEY([IdPickPoint])
REFERENCES [dbo].[Adress] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Adress]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[Status] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([IdClient])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([IdOrder])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category1] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category1]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer1] FOREIGN KEY([IdManufacturer])
REFERENCES [dbo].[Manufacturer] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer1]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductName1] FOREIGN KEY([IdName])
REFERENCES [dbo].[ProductName] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductName1]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier1] FOREIGN KEY([IdSupplier])
REFERENCES [dbo].[Supplier] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier1]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO

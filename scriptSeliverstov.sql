USE [master]
GO
/****** Object:  Database [SeliverstovSport]    Script Date: 27.04.2024 19:31:11 ******/
CREATE DATABASE [SeliverstovSport]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SeliverstovSport', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\SeliverstovSport.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SeliverstovSport_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\SeliverstovSport_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SeliverstovSport] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SeliverstovSport].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SeliverstovSport] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SeliverstovSport] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SeliverstovSport] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SeliverstovSport] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SeliverstovSport] SET ARITHABORT OFF 
GO
ALTER DATABASE [SeliverstovSport] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SeliverstovSport] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SeliverstovSport] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SeliverstovSport] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SeliverstovSport] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SeliverstovSport] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SeliverstovSport] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SeliverstovSport] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SeliverstovSport] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SeliverstovSport] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SeliverstovSport] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SeliverstovSport] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SeliverstovSport] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SeliverstovSport] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SeliverstovSport] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SeliverstovSport] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SeliverstovSport] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SeliverstovSport] SET RECOVERY FULL 
GO
ALTER DATABASE [SeliverstovSport] SET  MULTI_USER 
GO
ALTER DATABASE [SeliverstovSport] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SeliverstovSport] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SeliverstovSport] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SeliverstovSport] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SeliverstovSport] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SeliverstovSport', N'ON'
GO
ALTER DATABASE [SeliverstovSport] SET QUERY_STORE = OFF
GO
USE [SeliverstovSport]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [SeliverstovSport]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 27.04.2024 19:31:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[DeliveryDate] [datetime] NOT NULL,
	[PickUpPoint] [int] NOT NULL,
	[UserID] [int] NULL,
	[CodeToGet] [int] NOT NULL,
	[Status] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersProduct]    Script Date: 27.04.2024 19:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersProduct](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[ProductArctile] [nvarchar](155) NOT NULL,
	[Quantity] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickUpPoints]    Script Date: 27.04.2024 19:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickUpPoints](
	[PUP_ID] [int] IDENTITY(1,1) NOT NULL,
	[PUP_Article] [int] NOT NULL,
	[City] [nvarchar](150) NOT NULL,
	[Street] [nvarchar](150) NOT NULL,
	[Home] [nvarchar](50) NULL,
 CONSTRAINT [PK_PickUpPoints] PRIMARY KEY CLUSTERED 
(
	[PUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 27.04.2024 19:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Article] [nvarchar](155) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Unit] [nvarchar](150) NOT NULL,
	[Cost] [money] NOT NULL,
	[MaxDiscount] [int] NULL,
	[Manufacturer] [nvarchar](150) NOT NULL,
	[Deployer] [nvarchar](150) NOT NULL,
	[Category] [nvarchar](150) NOT NULL,
	[CurrentDiscount] [int] NULL,
	[QuantityInStock] [int] NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
	[Image] [nvarchar](150) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 27.04.2024 19:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 27.04.2024 19:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Login] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](150) NOT NULL,
	[SecondName] [nvarchar](150) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Patronymic] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [PickUpPoint], [UserID], [CodeToGet], [Status]) VALUES (1, CAST(N'2022-05-15T00:00:00.000' AS DateTime), CAST(N'2022-05-21T00:00:00.000' AS DateTime), 18, 7, 401, N'Новый ')
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [PickUpPoint], [UserID], [CodeToGet], [Status]) VALUES (2, CAST(N'2022-05-16T00:00:00.000' AS DateTime), CAST(N'2022-05-22T00:00:00.000' AS DateTime), 20, 8, 402, N'Новый ')
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [PickUpPoint], [UserID], [CodeToGet], [Status]) VALUES (3, CAST(N'2022-05-17T00:00:00.000' AS DateTime), CAST(N'2022-05-23T00:00:00.000' AS DateTime), 20, 9, 403, N'Завершен')
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [PickUpPoint], [UserID], [CodeToGet], [Status]) VALUES (4, CAST(N'2022-05-18T00:00:00.000' AS DateTime), CAST(N'2022-05-24T00:00:00.000' AS DateTime), 22, 10, 404, N'Новый ')
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [PickUpPoint], [UserID], [CodeToGet], [Status]) VALUES (5, CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-05-25T00:00:00.000' AS DateTime), 22, NULL, 405, N'Новый ')
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [PickUpPoint], [UserID], [CodeToGet], [Status]) VALUES (6, CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-05-25T00:00:00.000' AS DateTime), 16, NULL, 406, N'Новый ')
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [PickUpPoint], [UserID], [CodeToGet], [Status]) VALUES (7, CAST(N'2022-05-21T00:00:00.000' AS DateTime), CAST(N'2022-05-27T00:00:00.000' AS DateTime), 16, NULL, 407, N'Завершен')
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [PickUpPoint], [UserID], [CodeToGet], [Status]) VALUES (8, CAST(N'2022-05-22T00:00:00.000' AS DateTime), CAST(N'2022-05-28T00:00:00.000' AS DateTime), 18, NULL, 408, N'Завершен')
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [PickUpPoint], [UserID], [CodeToGet], [Status]) VALUES (9, CAST(N'2022-05-23T00:00:00.000' AS DateTime), CAST(N'2022-05-29T00:00:00.000' AS DateTime), 24, NULL, 409, N'Новый ')
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [PickUpPoint], [UserID], [CodeToGet], [Status]) VALUES (10, CAST(N'2022-05-24T00:00:00.000' AS DateTime), CAST(N'2022-05-30T00:00:00.000' AS DateTime), 24, NULL, 410, N'Завершен')
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[OrdersProduct] ON 

INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (1, N'А112Т4', 2)
INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (2, N'F746E6', 3)
INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (3, N'D648N7', 10)
INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (4, N'F937G4', 1)
INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (5, N'N483G5', 10)
INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (6, N'G480F5', 2)
INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (7, N'V312R4', 1)
INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (8, N'G522B5', 3)
INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (9, N'F047J7', 1)
INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (10, N'N836R5', 5)
INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (1, N'G598Y6', 2)
INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (2, N'D830R5', 3)
INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (3, N'F735B6', 10)
INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (4, N'E324U7', 1)
INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (5, N'D038G6', 10)
INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (6, N'C324S5', 2)
INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (7, N'J4DF5E', 1)
INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (8, N'K432G6', 3)
INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (9, N'S374B5', 1)
INSERT [dbo].[OrdersProduct] ([OrderID], [ProductArctile], [Quantity]) VALUES (10, N'D927K3', 5)
SET IDENTITY_INSERT [dbo].[OrdersProduct] OFF
SET IDENTITY_INSERT [dbo].[PickUpPoints] ON 

INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (1, 344288, N'г.Дубна', N'ул.Чехова', N'1')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (2, 614164, N'г.Дубна', N'ул.Степная', N'30')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (3, 394242, N'г.Дубна', N'ул.Коммунистическая', N'43')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (4, 660540, N'г.Дубна', N'ул.Солнечная', N'25')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (5, 125837, N'г.Дубна', N'ул.Шоссейная', N'40')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (6, 125703, N'г.Дубна', N'ул.Партизанская', N'49')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (7, 625283, N'г.Дубна', N'ул.Победы', N'46')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (8, 614611, N'г.Дубна', N'ул.Молодежная', N'50')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (9, 454311, N'г.Дубна', N'ул.Новая', N'19')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (10, 660007, N'г.Дубна', N'ул.Октябрьская', N'19')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (11, 603036, N'г.Дубна', N'ул.Садовая', N'4')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (12, 450983, N'г.Дубна', N'ул.Комсомольская', N'26')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (13, 394782, N'г.Дубна', N'ул.Чехова', N'3')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (14, 603002, N'г.Дубна', N'ул.Дзержинского', N'28')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (15, 450558, N'г.Дубна', N'ул.Набережная', N'30')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (16, 394060, N'г.Дубна', N'ул.Фрунзе', N'43')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (17, 410661, N'г.Дубна', N'ул.Школьная', N'50')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (18, 625590, N'г.Дубна', N'ул.Коммунистическая', N'20')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (19, 625683, N'г.Дубна', N'ул.8Марта', NULL)
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (20, 400562, N'г.Дубна', N'ул.Зеленая', N'32')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (21, 614510, N'г.Дубна', N'ул.Маяковского', N'47')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (22, 410542, N'г.Дубна', N'ул.Светлая', N'46')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (23, 620839, N'г.Дубна', N'ул.Цветочная', N'8')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (24, 443890, N'г.Дубна', N'ул.Коммунистическая', N'1')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (25, 603379, N'г.Дубна', N'ул.Спортивная', N'46')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (26, 603721, N'г.Дубна', N'ул.Гоголя', N'41')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (27, 410172, N'г.Дубна', N'ул.Северная', N'13')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (28, 420151, N'г.Дубна', N'ул.Вишневая', N'32')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (29, 125061, N'г.Дубна', N'ул.Подгорная', N'8')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (30, 630370, N'г.Дубна', N'ул.Шоссейная', N'24')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (31, 614753, N'г.Дубна', N'ул.Полевая', N'35')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (32, 426030, N'г.Дубна', N'ул.Маяковского', N'44')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (33, 450375, N'г.Дубна', N'ул.Клубная', N'44')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (34, 625560, N'г.Дубна', N'ул.Некрасова', N'12')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (35, 630201, N'г.Дубна', N'ул.Комсомольская', N'17')
INSERT [dbo].[PickUpPoints] ([PUP_ID], [PUP_Article], [City], [Street], [Home]) VALUES (36, 190949, N'г.Дубна', N'ул.Мичурина', N'26')
SET IDENTITY_INSERT [dbo].[PickUpPoints] OFF
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'B538G6', N'Спортивный костюм', N'шт.', 839.0000, 5, N'playToday', N'Спортмастер', N'Одежда', 3, 17, N'Спортивный костюм playToday (футболка + шорты)', N'B538G6.jpg')
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'C324S5', N'Шлем', N'шт.', 4000.0000, 10, N'Salomon', N'Декатлон', N'Спортивный инвентарь', 5, 16, N'Шлем г.л./сноуб. Salomon Grom р.:KS черный (L40836800)', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'D038G6', N'Лыжный комплект', N'шт.', 3000.0000, 30, N'Nordway', N'Декатлон', N'Спортивный инвентарь', 4, 23, N'Лыжный комплект беговые NORDWAY XC Classic, 45-45-45мм, 160см', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'D648N7', N'Набор для хоккея', N'шт.', 350.0000, 10, N'Совтехстром', N'Декатлон', N'Спортивный инвентарь', 4, 7, N'Набор для хоккея Совтехстром', N'D648N7.jpg')
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'D830R5', N'Тренажер прыжков', N'шт.', 1120.0000, 15, N'Moby Kids', N'Спортмастер', N'Спортивный инвентарь', 4, 8, N'Тренажер для прыжков Moby Kids Moby-Jumper со счетчиком', N'D830R5.jpg')
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'D893W4', N'Мяч', N'шт.', 900.0000, 5, N'Demix', N'Спортмастер', N'Спортивный инвентарь', 2, 5, N'Мяч футбольный DEMIX 1STLS1JWWW, универсальный, 4-й размер, белый/зеленый', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'D927K3', N'Перчатки ', N'шт.', 660.0000, 15, N'Starfit', N'Декатлон', N'Спортивный инвентарь', 4, 3, N'Перчатки Starfit SU-125 атлетические S черный', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'E324U7', N'Велотренажер', N'шт.', 6480.0000, 25, N'DFC', N'Спортмастер', N'Спортивный инвентарь', 5, 5, N'Велотренажер двойной DFC B804 dual bike', N'E324U7.jpg')
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'F047J7', N'Коврик', N'шт.', 720.0000, 15, N'Bradex', N'Спортмастер', N'Спортивный инвентарь', 5, 11, N'Коврик Bradex для мягкой йоги дл.:1730мм ш.:610мм т.:3мм серый', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'F687G5', N'Защита голени', N'шт.', 1900.0000, 15, N'Green Hill', N'Спортмастер', N'Спортивный инвентарь', 4, 6, N'Защита голени GREEN HILL Panther, L, синий/черный', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'F735B6', N'Игровой набор', N'шт.', 320.0000, 15, N'Совтехстром', N'Декатлон', N'Спортивный инвентарь', 2, 9, N'Игровой набор Совтехстром Кегли и шары', N'F735B6.jpg')
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'F746E6', N'Шведская стенка', N'шт.', 9900.0000, 10, N'ROMANA Next', N'Декатлон', N'Спортивный инвентарь', 3, 5, N'Шведская стенка ROMANA Next, pastel', N'F746E6.jpg')
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'F937G4', N'Игровой набор', N'шт.', 480.0000, 10, N'Abtoys', N'Спортмастер', N'Спортивный инвентарь', 4, 12, N'Набор Abtoys Бадминтон и теннис ', N'F937G4.jpg')
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'G403T5', N'Тюбинг', N'шт.', 1450.0000, 15, N'Nordway', N'Спортмастер', N'Спортивный инвентарь', 4, 13, N'Тюбинг Nordway, 73 см', N'G403T5.jpg')
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'G480F5', N'Ролики', N'шт.', 1600.0000, 15, N'Ridex', N'Спортмастер', N'Спортивный инвентарь', 4, 7, N'Коньки роликовые Ridex Cricket жен. ABEC 3 кол.:72мм р.:39-42 синий', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'G522B5', N'Ласты', N'шт.', 1980.0000, 15, N'Colton', N'Декатлон', N'Спортивный инвентарь', 3, 6, N'Ласты Colton CF-02 для плавания р.:33-34 серый/голубой', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'G598Y6', N'Спортивный мат', N'шт.', 2390.0000, 15, N'Perfetto Sport', N'Декатлон', N'Спортивный инвентарь', 2, 16, N'Спортивный мат 100x100x10 см Perfetto Sport № 3 бежевый', N'G598Y6.jpg')
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'G873H4', N'Велосипед', N'шт.', 14930.0000, 5, N'SKIF', N'Спортмастер', N'Спортивный инвентарь', 4, 6, N'Велосипед SKIF 29 Disc (2021), горный (взрослый), рама: 17", колеса: 29", темно-серый', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'J4DF5E', N'Насос', N'шт.', 300.0000, 5, N'Molten', N'Спортмастер', N'Спортивный инвентарь', 4, 12, N'Насос Molten HP-18-B для мячей мультиколор', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'J532D4', N'Перчатки для карате', N'шт.', 1050.0000, 15, N'Green Hill', N'Спортмастер', N'Спортивный инвентарь', 3, 5, N'Перчатки для каратэ Green Hill KMС-6083 L красный', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'K432G6', N'Шапочка для плавания', N'шт.', 440.0000, 25, N'Atemi', N'Декатлон', N'Спортивный инвентарь', 5, 17, N'Шапочка для плавания Atemi PU 140 ткань с покрытием желтый', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'K937A5', N'Гиря', N'шт.', 890.0000, 5, N'Starfit', N'Декатлон', N'Спортивный инвентарь', 4, 10, N'Гиря Starfit ГМБ4 мягкое 4кг синий/оранжевый', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'N483G5', N'Клюшка', N'шт.', 1299.0000, 10, N'Nordway', N'Декатлон', N'Спортивный инвентарь', 3, 4, N'Клюшка Nordway NDW300 (2019/2020) SR лев. 19 150см', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'N836R5', N'Коньки', N'шт.', 2000.0000, 10, N'Atemi', N'Декатлон', N'Спортивный инвентарь', 3, 16, N'Коньки ATEMI AKSK01DXS, раздвижные, прогулочные, унисекс, 27-30, черный/зеленый', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'N892G6', N'Очки для плавания', N'шт.', 500.0000, 5, N'Atemi', N'Декатлон', N'Спортивный инвентарь', 5, 14, N'Очки для плавания Atemi N8401 синий', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'S374B5', N'Ролик для йоги', N'шт.', 700.0000, 10, N'Bradex', N'Спортмастер', N'Спортивный инвентарь', 3, 12, N'Ролик для йоги Bradex Туба d=14см ш.:33см оранжевый', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'V312R4', N'Мяч', N'шт.', 4150.0000, 20, N'Mikasa', N'Декатлон', N'Спортивный инвентарь', 2, 5, N'Мяч волейбольный MIKASA VT370W, для зала, 5-й размер, желтый/синий', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'V392H7', N'Степ-платформа', N'шт.', 4790.0000, 10, N'Starfit', N'Спортмастер', N'Спортивный инвентарь', 3, 15, N'Степ-платформа Starfit SP-204 серый/черный', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'V423D4', N'Штанга', N'шт.', 5600.0000, 10, N'Starfit', N'Декатлон', N'Спортивный инвентарь', 3, 8, N'Штанга Starfit BB-401 30кг пласт. черный ', NULL)
INSERT [dbo].[Product] ([Article], [Name], [Unit], [Cost], [MaxDiscount], [Manufacturer], [Deployer], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Image]) VALUES (N'А112Т4', N'Боксерская груша', N'шт.', 778.0000, 30, N'X-Match', N'Спортмастер', N'Спортивный инвентарь', 5, 6, N'Боксерская груша X-Match черная', N'А112Т4.jpg')
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [RoleID], [Login], [Password], [SecondName], [Name], [Patronymic]) VALUES (1, 1, N'm4ic8j5qgstw@gmail.com', N'2L6KZG', N'Пахомова', N'Аиша', N'Анатольевич')
INSERT [dbo].[Users] ([UserID], [RoleID], [Login], [Password], [SecondName], [Name], [Patronymic]) VALUES (2, 1, N'd43zfg9tlsyv@gmail.com', N'uzWC67', N'Жуков', N'Роман', N'Богданович')
INSERT [dbo].[Users] ([UserID], [RoleID], [Login], [Password], [SecondName], [Name], [Patronymic]) VALUES (3, 1, N'8ohgisf6k45w@outlook.com', N'8ntwUp', N'Киселева', N'Анастасия', N'Максимовна')
INSERT [dbo].[Users] ([UserID], [RoleID], [Login], [Password], [SecondName], [Name], [Patronymic]) VALUES (4, 2, N'hi1brwj46czx@mail.com', N'YOyhfR', N'Григорьева', N'Арина', N'Арсентьевна')
INSERT [dbo].[Users] ([UserID], [RoleID], [Login], [Password], [SecondName], [Name], [Patronymic]) VALUES (5, 2, N'fvkbcamhlj52@gmail.com', N'RSbvHv', N'Иванов', N'Лев', N'Михайловна')
INSERT [dbo].[Users] ([UserID], [RoleID], [Login], [Password], [SecondName], [Name], [Patronymic]) VALUES (6, 2, N'9qxnce8jwruv@gmail.com', N'rwVDh9', N'Григорьев', N'Лев', N'Давидович')
INSERT [dbo].[Users] ([UserID], [RoleID], [Login], [Password], [SecondName], [Name], [Patronymic]) VALUES (7, 3, N'dotiex942p1r@gmail.com', N'LdNyos', N'Поляков', N'Степан', N'Егорович')
INSERT [dbo].[Users] ([UserID], [RoleID], [Login], [Password], [SecondName], [Name], [Patronymic]) VALUES (8, 3, N'n0bmi2h1xral@tutanota.com', N'gynQMT', N'Леонова', N'Алиса', N'Кирилловна')
INSERT [dbo].[Users] ([UserID], [RoleID], [Login], [Password], [SecondName], [Name], [Patronymic]) VALUES (9, 3, N'sfm3t278kdvz@yahoo.com', N'AtnDjr', N'Яковлева', N'Платон', N'Константинович')
INSERT [dbo].[Users] ([UserID], [RoleID], [Login], [Password], [SecondName], [Name], [Patronymic]) VALUES (10, 3, N'ilb8rdut0v7e@mail.com', N'JlFRCZ', N'Ковалева', N'Ева', N'Яковлевна')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_PickUpPoints] FOREIGN KEY([PickUpPoint])
REFERENCES [dbo].[PickUpPoints] ([PUP_ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_PickUpPoints]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[OrdersProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrdersProduct_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrdersProduct] CHECK CONSTRAINT [FK_OrdersProduct_Orders]
GO
ALTER TABLE [dbo].[OrdersProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrdersProduct_Product] FOREIGN KEY([ProductArctile])
REFERENCES [dbo].[Product] ([Article])
GO
ALTER TABLE [dbo].[OrdersProduct] CHECK CONSTRAINT [FK_OrdersProduct_Product]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
/****** Object:  StoredProcedure [dbo].[checkPassword]    Script Date: 27.04.2024 19:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[checkPassword]
@Login nvarchar(150),
@Password varchar(150)
AS
BEGIN
SELECT *
FROM [Users]
where [Login] = @Login and [Password] = @Password 
END
GO
USE [master]
GO
ALTER DATABASE [SeliverstovSport] SET  READ_WRITE 
GO

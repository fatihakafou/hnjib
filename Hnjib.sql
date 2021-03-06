USE [master]
GO
/****** Object:  Database [HNjib]    Script Date: 17/04/2016 22:55:36 ******/
CREATE DATABASE [HNjib]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HNjib', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\HNjib.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HNjib_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\HNjib_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HNjib] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HNjib].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HNjib] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HNjib] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HNjib] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HNjib] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HNjib] SET ARITHABORT OFF 
GO
ALTER DATABASE [HNjib] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HNjib] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HNjib] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HNjib] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HNjib] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HNjib] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HNjib] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HNjib] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HNjib] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HNjib] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HNjib] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HNjib] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HNjib] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HNjib] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HNjib] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HNjib] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HNjib] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HNjib] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HNjib] SET  MULTI_USER 
GO
ALTER DATABASE [HNjib] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HNjib] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HNjib] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HNjib] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HNjib] SET DELAYED_DURABILITY = DISABLED 
GO
USE [HNjib]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 17/04/2016 22:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category_id] [int] NOT NULL,
	[Category_denomination] [text] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Client]    Script Date: 17/04/2016 22:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Client](
	[Client_Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Client_Firstname] [varchar](50) NOT NULL,
	[Client_Lastname] [varchar](50) NOT NULL,
	[Client_Phonenumber] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Client_Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order]    Script Date: 17/04/2016 22:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[Order_id] [int] NOT NULL,
	[Client_Username] [varchar](50) NOT NULL,
	[DateTime_rec] [datetime] NOT NULL,
	[DateTime_com] [datetime] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[Worker_id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderLine]    Script Date: 17/04/2016 22:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderLine](
	[OrderLine_id] [int] NOT NULL,
	[Order_id] [int] NOT NULL,
	[Product_id] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderLine] PRIMARY KEY CLUSTERED 
(
	[OrderLine_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phone]    Script Date: 17/04/2016 22:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phone](
	[IME] [varchar](50) NOT NULL,
	[Brand] [varchar](50) NOT NULL,
	[Model] [varchar](50) NOT NULL,
	[Shop_id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED 
(
	[IME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 17/04/2016 22:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Product_id] [varchar](50) NOT NULL,
	[Category_id] [int] NOT NULL,
	[Product_denomination] [text] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 17/04/2016 22:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shop](
	[Shop_id] [varchar](50) NOT NULL,
	[Shop_denomination] [text] NOT NULL,
	[City] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[Shop_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShopOffering]    Script Date: 17/04/2016 22:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShopOffering](
	[ShopOffering_id] [int] NOT NULL,
	[Product_id] [varchar](50) NOT NULL,
	[Shop_id] [varchar](50) NOT NULL,
	[Price] [real] NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ShopOffering] PRIMARY KEY CLUSTERED 
(
	[ShopOffering_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 17/04/2016 22:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Worker](
	[Worker_id] [varchar](50) NOT NULL,
	[Worker_password] [varchar](50) NOT NULL,
	[Worker_Fisrtname] [varchar](50) NOT NULL,
	[Worker_Lastname] [varchar](50) NOT NULL,
	[Shop_id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Worker] PRIMARY KEY CLUSTERED 
(
	[Worker_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Client] FOREIGN KEY([Client_Username])
REFERENCES [dbo].[Client] ([Client_Username])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Client]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Worker] FOREIGN KEY([Worker_id])
REFERENCES [dbo].[Worker] ([Worker_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Worker]
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_Order] FOREIGN KEY([Order_id])
REFERENCES [dbo].[Order] ([Order_id])
GO
ALTER TABLE [dbo].[OrderLine] CHECK CONSTRAINT [FK_OrderLine_Order]
GO
ALTER TABLE [dbo].[Phone]  WITH CHECK ADD  CONSTRAINT [FK_Phone_Shop] FOREIGN KEY([Shop_id])
REFERENCES [dbo].[Shop] ([Shop_id])
GO
ALTER TABLE [dbo].[Phone] CHECK CONSTRAINT [FK_Phone_Shop]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([Category_id])
REFERENCES [dbo].[Category] ([Category_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[ShopOffering]  WITH CHECK ADD  CONSTRAINT [FK_ShopOffering_Product] FOREIGN KEY([Product_id])
REFERENCES [dbo].[Product] ([Product_id])
GO
ALTER TABLE [dbo].[ShopOffering] CHECK CONSTRAINT [FK_ShopOffering_Product]
GO
ALTER TABLE [dbo].[ShopOffering]  WITH CHECK ADD  CONSTRAINT [FK_ShopOffering_Shop] FOREIGN KEY([Shop_id])
REFERENCES [dbo].[Shop] ([Shop_id])
GO
ALTER TABLE [dbo].[ShopOffering] CHECK CONSTRAINT [FK_ShopOffering_Shop]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Shop] FOREIGN KEY([Shop_id])
REFERENCES [dbo].[Shop] ([Shop_id])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Shop]
GO
USE [master]
GO
ALTER DATABASE [HNjib] SET  READ_WRITE 
GO

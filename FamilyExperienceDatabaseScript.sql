USE [master]
GO
/****** Object:  Database [FamExpDb]    Script Date: 9/13/2023 12:50:00 PM ******/
CREATE DATABASE [FamExpDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FamExpDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\FamExpDb.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FamExpDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\FamExpDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [FamExpDb] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FamExpDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FamExpDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FamExpDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FamExpDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FamExpDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FamExpDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [FamExpDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FamExpDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FamExpDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FamExpDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FamExpDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FamExpDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FamExpDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FamExpDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FamExpDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FamExpDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FamExpDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FamExpDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FamExpDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FamExpDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FamExpDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FamExpDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [FamExpDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FamExpDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FamExpDb] SET  MULTI_USER 
GO
ALTER DATABASE [FamExpDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FamExpDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FamExpDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FamExpDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FamExpDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FamExpDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [FamExpDb] SET QUERY_STORE = ON
GO
ALTER DATABASE [FamExpDb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [FamExpDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[IsAdmin] [bit] NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[MailConfirmCode] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banners]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[SubTitle1] [nvarchar](50) NULL,
	[SubTitle2] [nvarchar](50) NULL,
	[BtnText] [nvarchar](50) NULL,
	[BtnUrl] [nvarchar](150) NULL,
	[ImageName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Banners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BasketItems]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BasketItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_BasketItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](35) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[FullName] [nvarchar](35) NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [nvarchar](15) NULL,
	[Subject] [nvarchar](100) NULL,
	[Message] [nvarchar](250) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailAddresses]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailAddresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](100) NULL,
 CONSTRAINT [PK_EmailAddresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genders]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[BtnText] [nvarchar](50) NULL,
	[BtnUrl] [nvarchar](150) NULL,
	[ImageName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Genders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageCarousels]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageCarousels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](100) NULL,
 CONSTRAINT [PK_ImageCarousels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[UnitSalePrice] [decimal](18, 2) NOT NULL,
	[UnitCostPrice] [decimal](18, 2) NOT NULL,
	[DiscountedPrice] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[FullName] [nvarchar](35) NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [nvarchar](15) NULL,
	[Address] [nvarchar](150) NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Note] [nvarchar](250) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[Status] [tinyint] NOT NULL,
	[City] [nvarchar](50) NULL,
	[PostCode] [nvarchar](6) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ImageName] [nvarchar](100) NOT NULL,
	[PosterStatus] [bit] NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductReviews]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductReviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[ProductId] [int] NOT NULL,
	[Rate] [tinyint] NOT NULL,
	[Text] [nvarchar](500) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ProductReviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Desc] [nvarchar](500) NULL,
	[SalePrice] [decimal](18, 2) NOT NULL,
	[CostPrice] [decimal](18, 2) NOT NULL,
	[DiscountedPrice] [decimal](18, 2) NOT NULL,
	[StockStatus] [bit] NOT NULL,
	[IsNew] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Gender] [bit] NULL,
	[IsFavorite] [bit] NOT NULL,
	[Season] [bit] NULL,
	[Rate] [tinyint] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSizes]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSizes](
	[ProductId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
 CONSTRAINT [PK_ProductSizes] PRIMARY KEY CLUSTERED 
(
	[SizeId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Key] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Order] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Desc] [nvarchar](150) NULL,
	[BtnText] [nvarchar](50) NULL,
	[BtnUrl] [nvarchar](150) NULL,
	[ImageName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishlistItems]    Script Date: 9/13/2023 12:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishlistItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_WishlistItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230824234954_SizesTableCreated', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230824235356_AllTablesCreated', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230825225701_AppUsersTableCreated', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230901235146_ProductsTableUpdated', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230902123113_GenderBannerCarouselTablesCreated', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230903225919_BasketItemsTableCreated', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230906130820_ProductReviewsTableCreated', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230907211958_WishlistItemsTableCreated', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230909151301_addUserConfirmCode', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230910104702_OrdersTableCreated', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230910105359_OrdersAndOrderItemsTablesCreated', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230910132054_AddedCityAndPostCodeColumnIntoOrdersTable', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230913093211_OrderColumnDeletedFromProductTable', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230913164102_ContactAndEmailAddressTablesCreated', N'6.0.21')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'283d757c-369d-459c-bc0e-1622fa937935', N'Admin', N'ADMIN', N'00893c29-9294-452e-bef6-04d6946d2b71')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'309d385f-8b6e-4431-a434-37c1745d51dc', N'Member', N'MEMBER', N'cb736dc7-89e3-4476-869f-c300d849ed3f')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'4ac37a0c-9bbe-4d36-8373-447fc095c769', N'SuperAdmin', N'SUPERADMIN', N'acd7e013-69df-404d-9e36-a28277c71cef')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'312b567d-e559-4d5f-a052-17f0ae79b87d', N'283d757c-369d-459c-bc0e-1622fa937935')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3c406bf8-c9c1-428b-a94b-694e998d4d47', N'309d385f-8b6e-4431-a434-37c1745d51dc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'918e3319-ed2a-463d-a1ca-e23c85707b1a', N'309d385f-8b6e-4431-a434-37c1745d51dc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c73b37f1-1604-4d02-8edf-404785abc616', N'4ac37a0c-9bbe-4d36-8373-447fc095c769')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [IsAdmin], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [MailConfirmCode]) VALUES (N'312b567d-e559-4d5f-a052-17f0ae79b87d', N'AppUser', N'Gunel Atlikhanova', 1, N'GunelAdmin', N'GUNELADMIN', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFdFr6r0Y9s26zHEJAY7b9Y8Is+IlFc7DE1LEPwSMlDDoQoTd1EZjBFgYr2Wq9wgEA==', N'CMPIOOPK3QR6KTCQLLUEILEAXNQRSK6F', N'e0725769-f94c-43c5-856c-3dc41d04da47', NULL, 0, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [IsAdmin], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [MailConfirmCode]) VALUES (N'3c406bf8-c9c1-428b-a94b-694e998d4d47', N'AppUser', N'Arzu Alekperova', 0, N'ArzuAlekper', N'ARZUALEKPER', N'arzu@gmail.com', N'ARZU@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJWD2jIqPbhWy5PCK+6GQx4P/hf0s8c/kfldWxoeWs7mc6VApoRgs4qyMFpC81xiuw==', N'77V33VJJBSYRC356YWEXRFV354ALOWCE', N'0d715956-ed62-4350-84b4-a0ff43479456', N'45554545455', 0, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [IsAdmin], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [MailConfirmCode]) VALUES (N'918e3319-ed2a-463d-a1ca-e23c85707b1a', N'AppUser', N'Behruz Rehimov', 0, N'behruzrehimli', N'BEHRUZREHIMLI', N'bahruzkr@code.edu.az', N'BAHRUZKR@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAEOIB459Pt7dIw9Vejw0TxyZrrndiOS2eUdmcJDHb4He3m0v0qB5CVE6SxrT84t0kGw==', N'B5UMQORAGMXKHGZLTQOVJD4ARXEGKWWN', N'a7400ad7-7a2a-4b0f-9465-fe437b36d5e8', N'0555547775', 0, 0, NULL, 1, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [IsAdmin], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [MailConfirmCode]) VALUES (N'c73b37f1-1604-4d02-8edf-404785abc616', N'AppUser', N'Nigar Mahmudova', 1, N'NigarMahmud', N'NIGARMAHMUD', NULL, NULL, 0, N'AQAAAAEAACcQAAAAED9W4ASoQzHIHOlaJXOZvP4BCBoDZKyBKNnlLnxoN3mtYyBRt5JRPWaCzJA1/sfXCw==', N'JS26MNPJ3A3V7ZT63XXH47OMKRYNS5CN', N'608919e2-127c-4b85-807a-8cd982da48d9', NULL, 0, 0, NULL, 1, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Banners] ON 

INSERT [dbo].[Banners] ([Id], [Title], [SubTitle1], [SubTitle2], [BtnText], [BtnUrl], [ImageName]) VALUES (1, N' Top 10 Winter Essentials For 2023 You Should Try ', N'Fashion', N'Inspiration', N'View More', N'https://localhost:7015/shop/index', N'496ba168-7fac-45f6-839c-26f473bd18c9IMG_3460.JPG')
INSERT [dbo].[Banners] ([Id], [Title], [SubTitle1], [SubTitle2], [BtnText], [BtnUrl], [ImageName]) VALUES (2, N' Top 10 Winter Essentials For 2023 You Should Try ', N'Fashion', N'Inspiration', N'View More', N'https://localhost:7015/shop/index', N'5008a284-445c-4e51-a850-0bc4ac97cbabTIM_5578.jpg')
INSERT [dbo].[Banners] ([Id], [Title], [SubTitle1], [SubTitle2], [BtnText], [BtnUrl], [ImageName]) VALUES (3, N' Top 10 Winter Essentials For 2023 You Should Try ', N'Fashion', N'Inspiration', N'View More', N'https://localhost:7015/shop/index', N'1feac6b9-d611-4838-88b0-5bc7ee768f18IMG_3458.JPG')
SET IDENTITY_INSERT [dbo].[Banners] OFF
GO
SET IDENTITY_INSERT [dbo].[BasketItems] ON 

INSERT [dbo].[BasketItems] ([Id], [ProductId], [SizeId], [Count], [AppUserId]) VALUES (27, 3, 1, 1, N'3c406bf8-c9c1-428b-a94b-694e998d4d47')
INSERT [dbo].[BasketItems] ([Id], [ProductId], [SizeId], [Count], [AppUserId]) VALUES (53, 2, 1, 1, N'c73b37f1-1604-4d02-8edf-404785abc616')
INSERT [dbo].[BasketItems] ([Id], [ProductId], [SizeId], [Count], [AppUserId]) VALUES (54, 4, 1, 1, N'c73b37f1-1604-4d02-8edf-404785abc616')
INSERT [dbo].[BasketItems] ([Id], [ProductId], [SizeId], [Count], [AppUserId]) VALUES (55, 4, 1, 1, N'3c406bf8-c9c1-428b-a94b-694e998d4d47')
INSERT [dbo].[BasketItems] ([Id], [ProductId], [SizeId], [Count], [AppUserId]) VALUES (56, 5, 3, 1, N'3c406bf8-c9c1-428b-a94b-694e998d4d47')
SET IDENTITY_INSERT [dbo].[BasketItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'T-shirt')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Set')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Shorts')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Jogger')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'Top')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (7, N'Hoodie')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (9, N'Leggings')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [Name]) VALUES (1, N'Black')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (4, N'White')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (8, N'Blue')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (9, N'darkolivegreen')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (10, N'gray')
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[Genders] ON 

INSERT [dbo].[Genders] ([Id], [Title], [BtnText], [BtnUrl], [ImageName]) VALUES (1, N'Man', N'shop collection', N'https://localhost:7015/shop/index', N'913af44d-885a-46fe-adae-4ffa6224e045IMG_8736.jpg')
INSERT [dbo].[Genders] ([Id], [Title], [BtnText], [BtnUrl], [ImageName]) VALUES (2, N'Woman', N'shop collection', N'https://localhost:7015/shop/index', N'738fb688-7136-471a-9857-f5b914f3f01bIMG_9188.jpg')
SET IDENTITY_INSERT [dbo].[Genders] OFF
GO
SET IDENTITY_INSERT [dbo].[ImageCarousels] ON 

INSERT [dbo].[ImageCarousels] ([Id], [ImageName]) VALUES (1, N'b10abf24-7ab1-4c8f-88a1-ebba4d1b26962023-07-23 20-47-32 (16).jpeg')
INSERT [dbo].[ImageCarousels] ([Id], [ImageName]) VALUES (2, N'7e8da352-c4e9-48ae-86b1-a4f9406ec61cIMG_0704.JPG')
INSERT [dbo].[ImageCarousels] ([Id], [ImageName]) VALUES (3, N'90fb7619-3c1c-43fb-bec8-c6348f55eb1dIMG_3176.JPG')
INSERT [dbo].[ImageCarousels] ([Id], [ImageName]) VALUES (4, N'fe175fb9-af7e-4027-a292-5cc7acad3b042023-07-23 20-55-08.jpeg')
INSERT [dbo].[ImageCarousels] ([Id], [ImageName]) VALUES (5, N'90daad05-0434-4e54-b548-e92c5c7c8bb5IMG_3207.JPG')
INSERT [dbo].[ImageCarousels] ([Id], [ImageName]) VALUES (6, N'f4249a6e-c2d9-41bf-bd63-f4c60f6efad42023-07-23 19-31-06 (11).jpeg')
INSERT [dbo].[ImageCarousels] ([Id], [ImageName]) VALUES (7, N'46d73fc7-8d33-4d12-8708-459bac086d492023-07-23 21-08-14 (1).jpeg')
SET IDENTITY_INSERT [dbo].[ImageCarousels] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 

INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [SizeId], [Count], [UnitSalePrice], [UnitCostPrice], [DiscountedPrice]) VALUES (1, 1, 3, 1, 2, CAST(129.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(79.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [SizeId], [Count], [UnitSalePrice], [UnitCostPrice], [DiscountedPrice]) VALUES (2, 1, 4, 1, 1, CAST(85.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [SizeId], [Count], [UnitSalePrice], [UnitCostPrice], [DiscountedPrice]) VALUES (3, 2, 3, 1, 1, CAST(129.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(79.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [SizeId], [Count], [UnitSalePrice], [UnitCostPrice], [DiscountedPrice]) VALUES (4, 2, 5, 2, 1, CAST(69.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [AppUserId], [FullName], [Email], [Phone], [Address], [TotalAmount], [Note], [CreatedAt], [Status], [City], [PostCode]) VALUES (1, N'3c406bf8-c9c1-428b-a94b-694e998d4d47', N'Arzu Alekperova', N'arzu@gmail.com', N'45554545455', N'R.Rustamov 44D', CAST(243.00 AS Decimal(18, 2)), N'Please, order fast', CAST(N'2023-09-10T17:22:46.7229883' AS DateTime2), 1, N'Baku city, Nizami district', N'123456')
INSERT [dbo].[Orders] ([Id], [AppUserId], [FullName], [Email], [Phone], [Address], [TotalAmount], [Note], [CreatedAt], [Status], [City], [PostCode]) VALUES (2, N'3c406bf8-c9c1-428b-a94b-694e998d4d47', N'Arzu Alekperova', N'arzu@gmail.com', N'45554545455', N'R.Rustamov 44D', CAST(124.00 AS Decimal(18, 2)), N'Please, order fast', CAST(N'2023-09-10T17:26:55.5318326' AS DateTime2), 1, N'Baku city, Nizami district', N'AZ3456')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (6, 2, N'550ac8e8-3fc9-4ded-8386-ae8eaff62301IMG_3179.JPG', 1)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (7, 2, N'f29e4e8c-3fec-4b8f-867a-ba4fb4053a3dIMG_3187.JPG', 0)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (8, 2, N'1bbc75de-f007-407c-ab11-2e6ca3c381e8IMG_3183.JPG', NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (9, 2, N'0bf4a5f9-97ba-4656-914e-cca6b7353f4eIMG_3188.JPG', NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (10, 3, N'1f9203c0-90e2-40a0-b39e-e14c4c5bc684IMG_0631.JPG', 1)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (11, 3, N'ea71199a-aaac-4aec-a0d0-d127a459875dIMG_0669.JPG', 0)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (12, 3, N'dc3abb5a-11e1-42a9-831f-38937c37dbb5IMG_0641.JPG', NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (13, 3, N'cd0d4ca6-3222-4876-9fbf-08c4510a11a5IMG_0650.JPG', NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (14, 3, N'67818445-f4a6-466a-9171-8412725f22c4IMG_0674.JPG', NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (15, 4, N'f9d26cd1-0b0f-402e-a99a-3f8bac5131cbIMG_3453.JPG', 1)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (16, 4, N'b67157ac-392d-4870-962f-4ad5931aa73bIMG_3173.JPG', 0)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (17, 4, N'b66c3476-51cb-450d-9a3d-dd0254f5f795IMG_3174.JPG', NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (18, 5, N'0b184d9a-7cb8-4b9a-96d0-9b1c1c3fdc49IMG_0796.JPG', 1)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (19, 5, N'e4d6e9e0-82c0-4d47-9695-09f3436baf77IMG_0789.JPG', 0)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (20, 5, N'1d9066a7-a491-4547-a6be-07930c0de556IMG_0784.JPG', NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (21, 6, N'c7e31069-f231-4530-b50e-69482fb19321IMG_0563.JPG', 1)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (22, 6, N'763e864a-ea21-4ff7-8b64-6406fd8bfa8cIMG_0570.JPG', 0)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (23, 6, N'525d0592-1f78-47be-aa9f-6515c77303d5IMG_0553.JPG', NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (24, 7, N'685b39c1-ef19-4a6a-929d-aba61168c9de2023-06-11 17-15-59 (7).jpeg', 1)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (25, 7, N'21a58b40-f127-4450-ac88-cf59bc7137452023-06-11 17-15-59 (2).jpeg', 0)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (26, 7, N'deab70cc-e3f5-4d7b-8158-e0b856fc105e2023-06-11 17-15-59 (3).jpeg', NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (27, 8, N'78f8d0f1-de45-4ee5-a9ce-2e9d8e070bc42023-07-23 20-55-08 (4).jpeg', 1)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (28, 8, N'790cc509-fa2f-4ea0-b227-8cd178f3f2432023-07-23 20-55-08 (2).jpeg', 0)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (29, 8, N'270a1caf-6b0b-4991-a287-95668d1837ce2023-07-23 20-55-08 (3).jpeg', NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (30, 8, N'7861588d-3fe6-4c19-87ed-6ba25d9dbf002023-07-23 20-55-08.jpeg', NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (31, 9, N'490f216e-9a43-4d98-ad83-830118e00e0f2023-07-23 20-55-08 (15).jpeg', 1)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (32, 9, N'eb3c85d3-24c2-4133-bb52-def75b79257b2023-07-23 20-55-08 (17).jpeg', 0)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (33, 9, N'a97fceeb-1e88-41e7-9b7f-3dce8004d88f2023-07-23 20-55-08 (12).jpeg', NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (34, 10, N'c16a3a07-44ec-495b-9aa5-b2eb038fa3002023-07-23 19-31-06 (10).jpeg', 1)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (35, 10, N'3b74a00f-a7d2-488b-b13e-acc98f57a6232023-07-23 19-31-06 (26).jpeg', 0)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (36, 10, N'47891f9d-44fc-4918-bb22-e36a9b08081b2023-07-23 19-31-06 (11).jpeg', NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (37, 11, N'65dc584f-39a0-4ae1-8d96-5782086c94e5IMG_8982.jpg', 1)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (38, 11, N'd5529bf8-b991-4d46-af0e-7b3a0b17db83IMG_9004.jpg', 0)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (39, 11, N'bd92fc1b-3531-4486-961d-d66a029c2ae1IMG_9010.jpg', NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImageName], [PosterStatus]) VALUES (40, 12, N'6b875f4a-e7da-4b4b-8815-60fa6afa8e13IMG_8734.jpg', 1)
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductReviews] ON 

INSERT [dbo].[ProductReviews] ([Id], [AppUserId], [ProductId], [Rate], [Text], [CreatedAt]) VALUES (1, N'3c406bf8-c9c1-428b-a94b-694e998d4d47', 4, 5, N'It is good', CAST(N'2023-09-07T17:30:43.8395811' AS DateTime2))
INSERT [dbo].[ProductReviews] ([Id], [AppUserId], [ProductId], [Rate], [Text], [CreatedAt]) VALUES (4, N'3c406bf8-c9c1-428b-a94b-694e998d4d47', 2, 2, N'Not bad', CAST(N'2023-09-07T18:38:54.8939285' AS DateTime2))
INSERT [dbo].[ProductReviews] ([Id], [AppUserId], [ProductId], [Rate], [Text], [CreatedAt]) VALUES (5, N'3c406bf8-c9c1-428b-a94b-694e998d4d47', 5, 3, N'Super', CAST(N'2023-09-07T18:41:26.7198917' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ProductReviews] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [CategoryId], [ColorId], [Name], [Desc], [SalePrice], [CostPrice], [DiscountedPrice], [StockStatus], [IsNew], [IsDeleted], [Gender], [IsFavorite], [Season], [Rate]) VALUES (2, 3, 8, N'Blue Set', N'Our sports sets come with a complete outfit, including jerseys, shorts, and athletic socks, so you''re ready to hit the field or court right away. No need to mix and match, we''ve got it all sorted for you.', CAST(100.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), 1, 0, 0, 0, 1, NULL, 2)
INSERT [dbo].[Products] ([Id], [CategoryId], [ColorId], [Name], [Desc], [SalePrice], [CostPrice], [DiscountedPrice], [StockStatus], [IsNew], [IsDeleted], [Gender], [IsFavorite], [Season], [Rate]) VALUES (3, 3, 4, N'Linen White', N'Our sports sets come with a complete outfit, including jerseys, shorts, and athletic socks, so you''re ready to hit the field or court right away. No need to mix and match, we''ve got it all sorted for you.', CAST(129.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(79.00 AS Decimal(18, 2)), 1, 0, 0, 0, 1, 0, 2)
INSERT [dbo].[Products] ([Id], [CategoryId], [ColorId], [Name], [Desc], [SalePrice], [CostPrice], [DiscountedPrice], [StockStatus], [IsNew], [IsDeleted], [Gender], [IsFavorite], [Season], [Rate]) VALUES (4, 7, 4, N'Ziphoodie White', N'Our sports sets come with a complete outfit, including jerseys, shorts, and athletic socks, so you''re ready to hit the field or court right away. No need to mix and match, we''ve got it all sorted for you.', CAST(85.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 0, 0, 0, 0, NULL, 5)
INSERT [dbo].[Products] ([Id], [CategoryId], [ColorId], [Name], [Desc], [SalePrice], [CostPrice], [DiscountedPrice], [StockStatus], [IsNew], [IsDeleted], [Gender], [IsFavorite], [Season], [Rate]) VALUES (5, 2, 1, N'Pink Black', N'Our sports sets come with a complete outfit, including jerseys, shorts, and athletic socks, so you''re ready to hit the field or court right away. No need to mix and match, we''ve got it all sorted for you.', CAST(69.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 1, 1, 0, 0, 0, 0, 3)
INSERT [dbo].[Products] ([Id], [CategoryId], [ColorId], [Name], [Desc], [SalePrice], [CostPrice], [DiscountedPrice], [StockStatus], [IsNew], [IsDeleted], [Gender], [IsFavorite], [Season], [Rate]) VALUES (6, 3, 9, N'Linen Green', N'Our sports sets come with a complete outfit, including jerseys, shorts, and athletic socks, so you''re ready to hit the field or court right away. No need to mix and match, we''ve got it all sorted for you.', CAST(109.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(59.00 AS Decimal(18, 2)), 1, 1, 0, 0, 1, 0, 0)
INSERT [dbo].[Products] ([Id], [CategoryId], [ColorId], [Name], [Desc], [SalePrice], [CostPrice], [DiscountedPrice], [StockStatus], [IsNew], [IsDeleted], [Gender], [IsFavorite], [Season], [Rate]) VALUES (7, 4, 8, N'Blue Shorts', N'Our sports sets come with a complete outfit, including jerseys, shorts, and athletic socks, so you''re ready to hit the field or court right away. No need to mix and match, we''ve got it all sorted for you.', CAST(45.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0, 1, 0, 0, 1, 0, 0)
INSERT [dbo].[Products] ([Id], [CategoryId], [ColorId], [Name], [Desc], [SalePrice], [CostPrice], [DiscountedPrice], [StockStatus], [IsNew], [IsDeleted], [Gender], [IsFavorite], [Season], [Rate]) VALUES (8, 2, 1, N'Happy', N'Our sports sets come with a complete outfit, including jerseys, shorts, and athletic socks, so you''re ready to hit the field or court right away. No need to mix and match, we''ve got it all sorted for you.', CAST(55.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(33.00 AS Decimal(18, 2)), 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [CategoryId], [ColorId], [Name], [Desc], [SalePrice], [CostPrice], [DiscountedPrice], [StockStatus], [IsNew], [IsDeleted], [Gender], [IsFavorite], [Season], [Rate]) VALUES (9, 6, 4, N'Basic Top', N'Our sports sets come with a complete outfit, including jerseys, shorts, and athletic socks, so you''re ready to hit the field or court right away. No need to mix and match, we''ve got it all sorted for you.', CAST(45.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 1, 0, 0, 1, 0, 0)
INSERT [dbo].[Products] ([Id], [CategoryId], [ColorId], [Name], [Desc], [SalePrice], [CostPrice], [DiscountedPrice], [StockStatus], [IsNew], [IsDeleted], [Gender], [IsFavorite], [Season], [Rate]) VALUES (10, 5, 10, N'Gray Jogger', N'Our sports sets come with a complete outfit, including jerseys, shorts, and athletic socks, so you''re ready to hit the field or court right away. No need to mix and match, we''ve got it all sorted for you.', CAST(55.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 0, 0, 0, 1, NULL, 0)
INSERT [dbo].[Products] ([Id], [CategoryId], [ColorId], [Name], [Desc], [SalePrice], [CostPrice], [DiscountedPrice], [StockStatus], [IsNew], [IsDeleted], [Gender], [IsFavorite], [Season], [Rate]) VALUES (11, 3, 1, N'Experience Man', N'Our sports sets come with a complete outfit, including jerseys, shorts, and athletic socks, so you''re ready to hit the field or court right away. No need to mix and match, we''ve got it all sorted for you.', CAST(120.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 0, 0, 1, 1, 1, 0)
INSERT [dbo].[Products] ([Id], [CategoryId], [ColorId], [Name], [Desc], [SalePrice], [CostPrice], [DiscountedPrice], [StockStatus], [IsNew], [IsDeleted], [Gender], [IsFavorite], [Season], [Rate]) VALUES (12, 3, 4, N'Experience Man', N'Our sports sets come with a complete outfit, including jerseys, shorts, and athletic socks, so you''re ready to hit the field or court right away. No need to mix and match, we''ve got it all sorted for you.', CAST(120.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 1, 0, 1, 0, 1, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (2, 1)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (2, 2)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (2, 3)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (2, 4)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (2, 5)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (3, 1)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (3, 2)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (3, 3)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (3, 4)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (3, 5)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (4, 1)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (4, 2)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (4, 3)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (4, 4)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (4, 5)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (5, 1)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (5, 2)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (5, 3)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (5, 4)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (5, 5)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (6, 1)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (6, 2)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (6, 3)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (6, 4)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (6, 5)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (7, 1)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (7, 2)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (7, 3)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (7, 4)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (7, 5)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (9, 1)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (9, 2)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (9, 3)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (9, 4)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (9, 5)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (10, 1)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (10, 2)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (10, 3)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (10, 4)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (11, 2)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (11, 3)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (11, 4)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (11, 5)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (12, 2)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (12, 3)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (12, 4)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (12, 5)
GO
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'Address', N'Baku city, Nizami district')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'Email', N'FamilyExperience.Online@gmail.com')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'Instagram', N'family__experience')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'Logo', N'fx_logo-removebg.png')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'Phone', N'+994 55 805 14 72')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'WorkingDays', N'Monday – Saturday')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'WorkingHours', N'08AM – 22PM')
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (1, N'XS')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (2, N'S')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (3, N'M')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (4, N'L')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (5, N'XL')
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [Order], [Title], [Desc], [BtnText], [BtnUrl], [ImageName]) VALUES (1, 2, N'Simple & Elegant', N'Experience the allure of minimalism with our sophisticated clothing.', N'shop collection', N'https://localhost:7015/shop/index', N'24817ce6-6710-4d8c-9f7b-841e442dc5102023-06-11 17-15-59 (8).jpeg')
INSERT [dbo].[Sliders] ([Id], [Order], [Title], [Desc], [BtnText], [BtnUrl], [ImageName]) VALUES (2, 1, N'Casual Look', N'Discover the timeless beauty of simplicity with our collection.', N'shop collection', N'https://localhost:7015/shop/index', N'6f5cb047-e2ee-4512-8829-46359755f30dIMG_3182.JPG')
INSERT [dbo].[Sliders] ([Id], [Order], [Title], [Desc], [BtnText], [BtnUrl], [ImageName]) VALUES (3, 3, N'Summer Essentials', N'Let your style speak volumes with our minimalist fashion.', N'shop collection', N'https://localhost:7015/shop/index', N'f185b9b0-492c-48a4-afcd-8ba312594c0cIMG_3868.JPG')
INSERT [dbo].[Sliders] ([Id], [Order], [Title], [Desc], [BtnText], [BtnUrl], [ImageName]) VALUES (4, 4, N'Mixed Textiles', N'Elevate your wardrobe with our collection of refined clothing.', N'shop collection', N'https://localhost:7015/shop/index', N'370bebfd-5f55-4fa9-a67d-991f00b2d899IMG_3900.JPG')
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_BasketItems_AppUserId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_BasketItems_AppUserId] ON [dbo].[BasketItems]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BasketItems_ProductId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_BasketItems_ProductId] ON [dbo].[BasketItems]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BasketItems_SizeId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_BasketItems_SizeId] ON [dbo].[BasketItems]
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Contacts_AppUserId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Contacts_AppUserId] ON [dbo].[Contacts]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_OrderId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_OrderId] ON [dbo].[OrderItems]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_ProductId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_ProductId] ON [dbo].[OrderItems]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_SizeId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_SizeId] ON [dbo].[OrderItems]
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_AppUserId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_AppUserId] ON [dbo].[Orders]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductImages_ProductId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductImages_ProductId] ON [dbo].[ProductImages]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ProductReviews_AppUserId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductReviews_AppUserId] ON [dbo].[ProductReviews]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductReviews_ProductId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductReviews_ProductId] ON [dbo].[ProductReviews]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_ColorId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_ColorId] ON [dbo].[Products]
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductSizes_ProductId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductSizes_ProductId] ON [dbo].[ProductSizes]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_WishlistItems_AppUserId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_WishlistItems_AppUserId] ON [dbo].[WishlistItems]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_WishlistItems_ProductId]    Script Date: 9/13/2023 12:50:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_WishlistItems_ProductId] ON [dbo].[WishlistItems]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsFavorite]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([tinyint],(0))) FOR [Rate]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BasketItems]  WITH CHECK ADD  CONSTRAINT [FK_BasketItems_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BasketItems] CHECK CONSTRAINT [FK_BasketItems_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[BasketItems]  WITH CHECK ADD  CONSTRAINT [FK_BasketItems_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BasketItems] CHECK CONSTRAINT [FK_BasketItems_Products_ProductId]
GO
ALTER TABLE [dbo].[BasketItems]  WITH CHECK ADD  CONSTRAINT [FK_BasketItems_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BasketItems] CHECK CONSTRAINT [FK_BasketItems_Sizes_SizeId]
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_Contacts_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_Contacts_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Sizes_SizeId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductReviews]  WITH CHECK ADD  CONSTRAINT [FK_ProductReviews_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProductReviews] CHECK CONSTRAINT [FK_ProductReviews_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[ProductReviews]  WITH CHECK ADD  CONSTRAINT [FK_ProductReviews_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductReviews] CHECK CONSTRAINT [FK_ProductReviews_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Colors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Colors_ColorId]
GO
ALTER TABLE [dbo].[ProductSizes]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizes_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSizes] CHECK CONSTRAINT [FK_ProductSizes_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductSizes]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizes_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSizes] CHECK CONSTRAINT [FK_ProductSizes_Sizes_SizeId]
GO
ALTER TABLE [dbo].[WishlistItems]  WITH CHECK ADD  CONSTRAINT [FK_WishlistItems_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WishlistItems] CHECK CONSTRAINT [FK_WishlistItems_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[WishlistItems]  WITH CHECK ADD  CONSTRAINT [FK_WishlistItems_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WishlistItems] CHECK CONSTRAINT [FK_WishlistItems_Products_ProductId]
GO
USE [master]
GO
ALTER DATABASE [FamExpDb] SET  READ_WRITE 
GO

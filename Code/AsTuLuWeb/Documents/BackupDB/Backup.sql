USE [AsTuLus]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] DROP CONSTRAINT [fk_UserId]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] DROP CONSTRAINT [fk_RoleId]
GO
ALTER TABLE [dbo].[UserFavorites] DROP CONSTRAINT [FKFavUser]
GO
ALTER TABLE [dbo].[SubCategory] DROP CONSTRAINT [FKSubCategoryCategory]
GO
ALTER TABLE [dbo].[Review] DROP CONSTRAINT [FKReviewUser]
GO
ALTER TABLE [dbo].[Review] DROP CONSTRAINT [FKReviewBook]
GO
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT [FKCommentUser]
GO
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT [FKCommentReview]
GO
ALTER TABLE [dbo].[BookByUser] DROP CONSTRAINT [FKUserToBook]
GO
ALTER TABLE [dbo].[BookByUser] DROP CONSTRAINT [FKBookToUser]
GO
ALTER TABLE [dbo].[BookByEditor] DROP CONSTRAINT [FKEditorToBook]
GO
ALTER TABLE [dbo].[BookByEditor] DROP CONSTRAINT [FKBookToEditor]
GO
ALTER TABLE [dbo].[Book] DROP CONSTRAINT [FKCategoryBook]
GO
ALTER TABLE [dbo].[AuthorByBook] DROP CONSTRAINT [FKBookAuthor]
GO
ALTER TABLE [dbo].[AuthorByBook] DROP CONSTRAINT [FKAuthorBook]
GO
ALTER TABLE [dbo].[UserFavorites] DROP CONSTRAINT [DF__UserFavor__DateA__349F87F6]
GO
ALTER TABLE [dbo].[Review] DROP CONSTRAINT [DF__Review__DateAdde__2DF28A67]
GO
ALTER TABLE [dbo].[Review] DROP CONSTRAINT [DF__Review__ReviewSc__2CFE662E]
GO
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT [DF__Comment__DateAdd__32B73F84]
GO
ALTER TABLE [dbo].[BookByUser] DROP CONSTRAINT [DF__BookByUse__DateC__20988F49]
GO
/****** Object:  Index [UQ__webpages__8A2B61607D8F38B2]    Script Date: 5/16/2016 9:01:17 PM ******/
ALTER TABLE [dbo].[webpages_Roles] DROP CONSTRAINT [UQ__webpages__8A2B61607D8F38B2]
GO
/****** Object:  Index [UQ__UserProf__C9F2845663FEBD90]    Script Date: 5/16/2016 9:01:17 PM ******/
ALTER TABLE [dbo].[UserProfile] DROP CONSTRAINT [UQ__UserProf__C9F2845663FEBD90]
GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP TABLE [dbo].[webpages_UsersInRoles]
GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP TABLE [dbo].[webpages_Roles]
GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP TABLE [dbo].[webpages_OAuthMembership]
GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP TABLE [dbo].[webpages_Membership]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP TABLE [dbo].[UserProfile]
GO
/****** Object:  Table [dbo].[UserFavorites]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP TABLE [dbo].[UserFavorites]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP TABLE [dbo].[UserAccount]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP TABLE [dbo].[SubCategory]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP TABLE [dbo].[Review]
GO
/****** Object:  Table [dbo].[Editor]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP TABLE [dbo].[Editor]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP TABLE [dbo].[Comment]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[BookByUser]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP TABLE [dbo].[BookByUser]
GO
/****** Object:  Table [dbo].[BookByEditor]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP TABLE [dbo].[BookByEditor]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP TABLE [dbo].[Book]
GO
/****** Object:  Table [dbo].[AuthorByBook]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP TABLE [dbo].[AuthorByBook]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP TABLE [dbo].[Author]
GO
/****** Object:  User [test]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP USER [test]
GO
USE [master]
GO
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP LOGIN [##MS_PolicyEventProcessingLogin##]
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP LOGIN [##MS_PolicyTsqlExecutionLogin##]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP LOGIN [BUILTIN\Users]
GO
/****** Object:  Login [Herve/administrator]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP LOGIN [Herve/administrator]
GO
/****** Object:  Login [Herve\herve_simard]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP LOGIN [Herve\herve_simard]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP LOGIN [NT AUTHORITY\SYSTEM]
GO
/****** Object:  Login [NT Service\MSSQL$SQLEXPRESS]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP LOGIN [NT Service\MSSQL$SQLEXPRESS]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP LOGIN [NT SERVICE\SQLWriter]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP LOGIN [NT SERVICE\Winmgmt]
GO
/****** Object:  Login [test]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP LOGIN [test]
GO
/****** Object:  Database [AsTuLus]    Script Date: 5/16/2016 9:01:17 PM ******/
DROP DATABASE [AsTuLus]
GO
/****** Object:  Database [AsTuLus]    Script Date: 5/16/2016 9:01:17 PM ******/
CREATE DATABASE [AsTuLus]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AsTuLus', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\AsTuLus.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AsTuLus_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\AsTuLus_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AsTuLus] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AsTuLus].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AsTuLus] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AsTuLus] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AsTuLus] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AsTuLus] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AsTuLus] SET ARITHABORT OFF 
GO
ALTER DATABASE [AsTuLus] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AsTuLus] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AsTuLus] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AsTuLus] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AsTuLus] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AsTuLus] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AsTuLus] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AsTuLus] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AsTuLus] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AsTuLus] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AsTuLus] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AsTuLus] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AsTuLus] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AsTuLus] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AsTuLus] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AsTuLus] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AsTuLus] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AsTuLus] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AsTuLus] SET  MULTI_USER 
GO
ALTER DATABASE [AsTuLus] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AsTuLus] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AsTuLus] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AsTuLus] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [test]    Script Date: 5/16/2016 9:01:17 PM ******/
CREATE LOGIN [test] WITH PASSWORD=N'Ù÷\»r4z&wV¡(·¢EYu¿[gúrÀc|', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [test] DISABLE
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 5/16/2016 9:01:17 PM ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 5/16/2016 9:01:17 PM ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQL$SQLEXPRESS]    Script Date: 5/16/2016 9:01:17 PM ******/
CREATE LOGIN [NT Service\MSSQL$SQLEXPRESS] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 5/16/2016 9:01:17 PM ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [Herve\herve_simard]    Script Date: 5/16/2016 9:01:17 PM ******/
CREATE LOGIN [Herve\herve_simard] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Herve/administrator]    Script Date: 5/16/2016 9:01:17 PM ******/
CREATE LOGIN [Herve/administrator] WITH PASSWORD=N'³${RøÙyÐÌl´>âs%Õ0b<,=', DEFAULT_DATABASE=[AsTuLus], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [Herve/administrator] DISABLE
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 5/16/2016 9:01:17 PM ******/
CREATE LOGIN [BUILTIN\Users] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 5/16/2016 9:01:17 PM ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'ÿMûµ_áwF¾í.9­JXP¯6àÀÏ
õ¼', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 5/16/2016 9:01:17 PM ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'.ÝÛZJriÙÆµ@¨~r^ØW¼%D.6¯|Iêæ', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [test]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQL$SQLEXPRESS]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [Herve\herve_simard]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [Herve/administrator]
GO
USE [AsTuLus]
GO
/****** Object:  User [test]    Script Date: 5/16/2016 9:01:17 PM ******/
CREATE USER [test] FOR LOGIN [test] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [test]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 5/16/2016 9:01:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Author](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[DateAdded] [datetime] NOT NULL CONSTRAINT [DF__Author__DateAdde__1BD3DA2C]  DEFAULT (getdate()),
	[Score] [int] NOT NULL CONSTRAINT [DF__Author__Score__1CC7FE65]  DEFAULT ((0)),
	[TimesConsulted] [int] NOT NULL CONSTRAINT [DF__Author__TimesCon__1DBC229E]  DEFAULT ((0)),
	[LastTimeChecked] [datetime] NULL,
 CONSTRAINT [PK__Author__70DAFC14AD534FE5] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AuthorByBook]    Script Date: 5/16/2016 9:01:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthorByBook](
	[AuthorByBookID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NOT NULL,
	[AuthorID] [int] NOT NULL,
 CONSTRAINT [PK__AuthorBy__1B6907C3134B073D] PRIMARY KEY CLUSTERED 
(
	[AuthorByBookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Book]    Script Date: 5/16/2016 9:01:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [varchar](200) NOT NULL,
	[BookNumber] [int] NULL,
	[BookCollection] [varchar](100) NULL,
	[BookSerie] [varchar](100) NULL,
	[BookLanguage] [int] NOT NULL,
	[PageNumber] [int] NOT NULL,
	[PublishedYear] [int] NULL,
	[DateAdded] [date] NOT NULL CONSTRAINT [DF__Book__DateAdded__170F250F]  DEFAULT (getdate()),
	[Score] [int] NOT NULL CONSTRAINT [DF__Book__Score__18034948]  DEFAULT ((0)),
	[TimesConsulted] [int] NOT NULL CONSTRAINT [DF__Book__TimesConsu__18F76D81]  DEFAULT ((0)),
	[IsTranslated] [bit] NULL,
	[BookStatus] [int] NOT NULL CONSTRAINT [DF__Book__BookStatus__19EB91BA]  DEFAULT ((0)),
	[CategoryID] [int] NOT NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK__Book__3DE0C22712D8BC14] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BookByEditor]    Script Date: 5/16/2016 9:01:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookByEditor](
	[BookByEditorId] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NOT NULL,
	[EditorID] [int] NOT NULL,
 CONSTRAINT [PK__BookByEd__AAD4CA2E375A08B2] PRIMARY KEY CLUSTERED 
(
	[BookByEditorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BookByUser]    Script Date: 5/16/2016 9:01:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookByUser](
	[BookByUserID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[LikeState] [int] NULL,
	[DateCreated] [date] NOT NULL,
	[DateModified] [date] NULL,
 CONSTRAINT [PK__BookByUs__0384598D89CC3469] PRIMARY KEY CLUSTERED 
(
	[BookByUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/16/2016 9:01:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](100) NOT NULL,
	[TimesCategoryConsulted] [int] NOT NULL CONSTRAINT [DF__Category__TimesC__27458CD8]  DEFAULT ((0)),
	[DateAdded] [date] NOT NULL CONSTRAINT [DF__Category__DateAd__2839B111]  DEFAULT (getdate()),
 CONSTRAINT [PK__Category__19093A2B8E742B2D] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 5/16/2016 9:01:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[CommentText] [varchar](140) NOT NULL,
	[AccountID] [int] NOT NULL,
	[ReviewID] [int] NOT NULL,
	[DateAdded] [date] NOT NULL,
 CONSTRAINT [PK__Comment__C3B4DFAAE8FBD541] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Editor]    Script Date: 5/16/2016 9:01:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Editor](
	[EditorID] [int] IDENTITY(1,1) NOT NULL,
	[EditorName] [varchar](200) NOT NULL,
	[DateCreated] [datetime] NULL,
	[EditorScore] [int] NOT NULL CONSTRAINT [DF__Editor__EditorSc__2280D7BB]  DEFAULT ((0)),
	[DateAdded] [date] NOT NULL CONSTRAINT [DF__Editor__DateAdde__2374FBF4]  DEFAULT (getdate()),
	[TimeEditorConsulted] [int] NOT NULL CONSTRAINT [DF__Editor__TimeEdit__2469202D]  DEFAULT ((0)),
 CONSTRAINT [PK__Editor__986DCA2AA5B26503] PRIMARY KEY CLUSTERED 
(
	[EditorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Review]    Script Date: 5/16/2016 9:01:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[ReviewText] [text] NOT NULL,
	[AccountID] [int] NOT NULL,
	[BookID] [int] NOT NULL,
	[ReviewScore] [int] NOT NULL,
	[DateAdded] [date] NOT NULL,
 CONSTRAINT [PK__Review__74BC79AEEB7A2E43] PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 5/16/2016 9:01:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubCategory](
	[SubCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryName] [varchar](100) NULL,
	[CategoryID] [int] NOT NULL,
	[TimesSubCatConsulted] [int] NOT NULL CONSTRAINT [DF__SubCatego__Times__2A21F983]  DEFAULT ((0)),
	[DateAdded] [date] NOT NULL CONSTRAINT [DF__SubCatego__DateA__2B161DBC]  DEFAULT (getdate()),
 CONSTRAINT [PK__SubCateg__26BE5BF94683EFC3] PRIMARY KEY CLUSTERED 
(
	[SubCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 5/16/2016 9:01:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserAccount](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[DateCreated] [datetime] NOT NULL CONSTRAINT [DF__UserAccou__DateC__2FDAD2D9]  DEFAULT (getdate()),
	[DateLastLog] [datetime] NULL,
	[UserAccountName] [varchar](100) NULL,
	[AccountScore] [int] NOT NULL CONSTRAINT [DF__UserAccou__Accou__30CEF712]  DEFAULT ((0)),
	[Reputation] [varchar](50) NULL,
	[UserID] [int] NULL,
	[UserFavoritesID] [int] NULL,
 CONSTRAINT [PK__UserAcco__349DA586A140430A] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserFavorites]    Script Date: 5/16/2016 9:01:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserFavorites](
	[UserFavoritesID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[DateAdded] [datetime] NOT NULL,
 CONSTRAINT [PK__UserFavo__1D23EAF320AFBC47] PRIMARY KEY CLUSTERED 
(
	[UserFavoritesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 5/16/2016 9:01:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](56) NOT NULL,
 CONSTRAINT [PK__UserProf__1788CC4C7603B287] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 5/16/2016 9:01:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL CONSTRAINT [DF__webpages___IsCon__4E88ABD4]  DEFAULT ((0)),
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL CONSTRAINT [DF__webpages___Passw__4F7CD00D]  DEFAULT ((0)),
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
 CONSTRAINT [PK__webpages__1788CC4C22FAF3E0] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 5/16/2016 9:01:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK__webpages__F53FC0EDEFB2F402] PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 5/16/2016 9:01:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK__webpages__8AFACE1A5A415320] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 5/16/2016 9:01:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK__webpages__AF2760ADA8D3658E] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Author] ON 

GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (1, N'Paulo Coelho', CAST(N'2015-11-14 14:32:09.810' AS DateTime), 0, 10, CAST(N'2016-05-16 20:39:43.043' AS DateTime))
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (2, N'Bill Watterson', CAST(N'2015-11-14 14:32:31.983' AS DateTime), 0, 3, CAST(N'2016-05-09 20:47:07.837' AS DateTime))
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (3, N'Morris Gocinny', CAST(N'2015-11-14 14:32:40.160' AS DateTime), 0, 1, CAST(N'2016-05-13 20:55:36.137' AS DateTime))
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (4, N'Godard', CAST(N'2015-11-14 14:32:40.173' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (5, N'Greg', CAST(N'2015-11-14 14:32:40.193' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (6, N'Fauche', CAST(N'2015-11-14 14:32:40.203' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (7, N'Leturgie', CAST(N'2015-11-14 14:32:40.207' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (8, N'Luguy', CAST(N'2015-11-14 14:32:40.210' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (9, N'Tome', CAST(N'2015-11-14 14:32:40.330' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (10, N'Janry', CAST(N'2015-11-14 14:32:40.333' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (11, N'Franquin', CAST(N'2015-11-14 14:32:40.390' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (12, N'Roba', CAST(N'2015-11-14 14:32:40.433' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (13, N'Fournier', CAST(N'2015-11-14 14:32:40.490' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (14, N'Nic', CAST(N'2015-11-14 14:32:40.507' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (15, N'Cauvin', CAST(N'2015-11-14 14:32:40.513' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (16, N'Jidéhem', CAST(N'2015-11-14 14:32:40.533' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (17, N'Stephen King', CAST(N'2015-11-14 14:32:40.827' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (18, N'Richard Bachman', CAST(N'2015-11-14 14:32:40.993' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (19, N'Peter Straub', CAST(N'2015-11-14 14:32:41.293' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (20, N'Guy Gavriel Kay', CAST(N'2015-11-14 14:32:41.463' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (21, N'R.A. Salvatore', CAST(N'2015-11-14 14:32:41.730' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (22, N'Fred Saberhagen', CAST(N'2015-11-14 14:32:41.997' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (23, N'J.R.R. Tolkien', CAST(N'2015-11-14 14:32:42.033' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (24, N'Walt Disney company', CAST(N'2015-11-14 14:32:42.097' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (25, N'Juliet Clutton-Brock', CAST(N'2015-11-14 14:32:42.403' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (26, N'Margaret Weis', CAST(N'2015-11-14 14:32:42.433' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (27, N'Tracy Hickman', CAST(N'2015-11-14 14:32:42.447' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (28, N'Philippe Riboty', CAST(N'2015-11-14 14:32:42.517' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (29, N'Anne Rice', CAST(N'2015-11-14 14:32:42.560' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (30, N'Albine Novarino', CAST(N'2015-11-14 14:32:42.773' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (31, N'Michel Maïofiss', CAST(N'2015-11-14 14:32:42.787' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (32, N'Richard Bach', CAST(N'2015-11-14 14:32:42.830' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (33, N'Paul Auster', CAST(N'2015-11-14 14:32:42.870' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (34, N'Aude', CAST(N'2015-11-14 14:32:42.933' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (35, N'Michel Magnien', CAST(N'2015-11-14 14:32:43.033' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (36, N'Guillaume Apollinaire', CAST(N'2015-11-14 14:32:43.080' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (37, N'René LaFleur', CAST(N'2015-11-14 14:32:43.097' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (38, N'Honoré de Balzac', CAST(N'2015-11-14 14:32:43.127' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (39, N'Alessandro Baricco', CAST(N'2015-11-14 14:32:43.220' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (40, N'Baudelaire', CAST(N'2015-11-14 14:32:43.283' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (41, N'Alain Beaulieu', CAST(N'2015-11-14 14:32:43.327' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (42, N'Samuel Beckett', CAST(N'2015-11-14 14:32:43.373' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (43, N'Gérard Bessette', CAST(N'2015-11-14 14:32:43.417' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (44, N'Marie-Claire Blais', CAST(N'2015-11-14 14:32:43.463' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (45, N'Neil Bissondath', CAST(N'2015-11-14 14:32:43.497' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (46, N'Jorge Luis Borges', CAST(N'2015-11-14 14:32:43.567' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (47, N'Hervé Bouchard', CAST(N'2015-11-14 14:32:43.613' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (48, N'Denise Boucher', CAST(N'2015-11-14 14:32:43.703' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (49, N'Stéphane Bourgignon', CAST(N'2015-11-14 14:32:43.740' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (50, N'Emmanuel Bove', CAST(N'2015-11-14 14:32:43.810' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (51, N'André Breton', CAST(N'2015-11-14 14:32:43.887' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (52, N'Jacques Poulin', CAST(N'2015-11-14 14:32:43.937' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (53, N'Molière', CAST(N'2015-11-14 14:32:44.017' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (54, N'Alphonse Daudet', CAST(N'2015-11-14 14:32:44.057' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (55, N'Alexandre Dumas', CAST(N'2015-11-14 14:32:44.100' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (56, N'Eric-Emmanuel Schmitt', CAST(N'2015-11-14 14:32:44.140' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (57, N'George Orwell', CAST(N'2015-11-14 14:32:44.220' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (58, N'Gabrielle Roy', CAST(N'2015-11-14 14:32:44.273' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (59, N'Yves Beauchemin', CAST(N'2015-11-14 14:32:44.313' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (60, N'Jules Verne', CAST(N'2015-11-14 14:32:44.363' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (61, N'André-Philippe Côté', CAST(N'2015-11-14 14:32:44.493' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (62, N'Istin', CAST(N'2015-11-14 14:32:44.547' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (63, N'Jigourel', CAST(N'2015-11-14 14:32:44.567' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (64, N'Lamontagne', CAST(N'2015-11-14 14:32:44.583' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (65, N'Régine Desforges', CAST(N'2015-11-14 14:32:44.623' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (66, N'Choderlos de Laclos', CAST(N'2015-11-14 14:32:44.790' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (67, N'Joël Champetier', CAST(N'2015-11-14 14:32:44.830' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (68, N'Miguel de Cervantès', CAST(N'2015-11-14 14:32:44.953' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (69, N'Louis-Ferdinand Céline', CAST(N'2015-11-14 14:32:45.037' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (70, N'Lewis Carroll', CAST(N'2015-11-14 14:32:45.130' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (71, N'Albert Camus', CAST(N'2015-11-14 14:32:45.173' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (72, N'Crébillon', CAST(N'2015-11-14 14:32:45.217' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (73, N'Julio Cortàzar', CAST(N'2015-11-14 14:32:45.260' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (74, N'Hugues Corriveau', CAST(N'2015-11-14 14:32:45.317' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (75, N'Conrad', CAST(N'2015-11-14 14:32:45.373' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (76, N'Paul Claudel', CAST(N'2015-11-14 14:32:45.467' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (77, N'Chrétien de Troyes', CAST(N'2015-11-14 14:32:45.513' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (78, N'Fédor Dostoïevski', CAST(N'2015-11-14 14:32:45.560' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (79, N'Marcel Dubé', CAST(N'2015-11-14 14:32:45.693' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (80, N'Marguerite Duras', CAST(N'2015-11-14 14:32:45.840' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (81, N'Dante', CAST(N'2015-11-14 14:32:45.923' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (82, N'Vivant Denon', CAST(N'2015-11-14 14:32:45.973' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (83, N'Charles Dickens', CAST(N'2015-11-14 14:32:46.020' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (84, N'Diderot', CAST(N'2015-11-14 14:32:46.107' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (85, N'Robert Dôle', CAST(N'2015-11-14 14:32:46.203' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (86, N'Frédéric Beigbeder', CAST(N'2015-11-14 14:32:46.263' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (87, N'Vickie Gendreau', CAST(N'2015-11-14 14:32:46.357' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (88, N'Timothy Garrand', CAST(N'2015-11-14 14:32:46.430' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (89, N'Travis Castillo', CAST(N'2015-11-14 14:32:46.557' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (90, N'Jeannie Novak', CAST(N'2015-11-14 14:32:46.577' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (91, N'Jean Giono', CAST(N'2015-11-14 14:32:46.630' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (92, N'André Gide', CAST(N'2015-11-14 14:32:46.727' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (93, N'John Grisham', CAST(N'2015-11-14 14:32:46.783' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (94, N'Eugène Fromentin', CAST(N'2015-11-14 14:32:46.850' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (95, N'Jean de La Fontaine', CAST(N'2015-11-14 14:32:46.907' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (96, N'Gustave Flaubert', CAST(N'2015-11-14 14:32:46.957' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (97, N'Jacques Ferron', CAST(N'2015-11-14 14:32:47.163' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (98, N'Dany Laferrière', CAST(N'2015-11-14 14:32:47.213' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (99, N'Euripide', CAST(N'2015-11-14 14:32:47.280' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (100, N'Sénèque', CAST(N'2015-11-14 14:32:47.303' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (101, N'Eschyle', CAST(N'2015-11-14 14:32:47.353' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (102, N'David Eddings', CAST(N'2015-11-14 14:32:47.407' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (103, N'Umberto Eco', CAST(N'2015-11-14 14:32:47.460' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (104, N'Jim Davis', CAST(N'2015-11-14 14:32:47.513' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (105, N'Kundera', CAST(N'2015-11-14 14:32:48.587' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (106, N'Agota Kristof', CAST(N'2015-11-14 14:32:48.647' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (107, N'Gil Courtemanche', CAST(N'2015-11-14 14:32:48.703' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (108, N'Ernest Hemingway', CAST(N'2015-11-14 14:32:48.810' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (109, N'Sergio Kokis', CAST(N'2015-11-14 14:32:48.963' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (110, N'Anne Hébert', CAST(N'2015-11-14 14:32:49.307' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (111, N'Louis Hamelin', CAST(N'2015-11-14 14:32:49.413' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (112, N'Jack Kerouac', CAST(N'2015-11-14 14:32:49.517' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (113, N'Kyoichi Katayama', CAST(N'2015-11-14 14:32:49.577' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (114, N'Kafka', CAST(N'2015-11-14 14:32:49.640' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (115, N'Eugène Ionesco', CAST(N'2015-11-14 14:32:49.703' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (116, N'Nancy Huston', CAST(N'2015-11-14 14:32:49.830' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (117, N'Victor Hugo', CAST(N'2015-11-14 14:32:49.910' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (118, N'Bohumil Hrabal', CAST(N'2015-11-14 14:32:50.023' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (119, N'Alexandre Jardin', CAST(N'2015-11-14 14:32:50.137' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (120, N'Sébastien Japrisot', CAST(N'2015-11-14 14:32:50.247' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (121, N'Suzanne Jacob', CAST(N'2015-11-14 14:32:50.310' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (122, N'John Irving', CAST(N'2015-11-14 14:32:50.373' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (123, N'Khaled Hosseini', CAST(N'2015-11-14 14:32:50.453' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (124, N'Homère', CAST(N'2015-11-14 14:32:50.517' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (125, N'David Homel', CAST(N'2015-11-14 14:32:50.577' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (126, N'Stuart Kaminsky', CAST(N'2015-11-14 14:32:50.707' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (127, N'Isidore Ducasse', CAST(N'2015-11-14 14:32:51.087' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (128, N'comte de Lautréamont', CAST(N'2015-11-14 14:32:51.113' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (129, N'Hugh Laurie', CAST(N'2015-11-14 14:32:51.203' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (130, N'Robert Lalonde', CAST(N'2015-11-14 14:32:51.267' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (131, N'H.P. Lovecraft', CAST(N'2015-11-14 14:32:51.993' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (132, N'Jack London', CAST(N'2015-11-14 14:32:52.063' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (133, N'Jonathan Littell', CAST(N'2015-11-14 14:32:52.193' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (134, N'Roy Lewis', CAST(N'2015-11-14 14:32:52.260' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (135, N'Torgny Lindgren', CAST(N'2015-11-14 14:32:52.333' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (136, N'Deitel et Deitel', CAST(N'2015-11-14 14:32:52.427' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (137, N'Cormac McCarthy', CAST(N'2015-11-14 14:32:52.523' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (138, N'Guy de Maupassant', CAST(N'2015-11-14 14:32:52.610' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (139, N'Marivaux', CAST(N'2015-11-14 14:32:52.873' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (140, N'Josélito Michaud', CAST(N'2015-11-14 14:32:52.973' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (141, N'Dave Mustaine', CAST(N'2015-11-14 14:32:53.083' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (142, N'Jamel Eddine Bencheikh', CAST(N'2015-11-14 14:32:53.210' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (143, N'Gaston Miron', CAST(N'2015-11-14 14:32:53.343' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (144, N'Robert Merle', CAST(N'2015-11-14 14:32:53.413' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (145, N'Yukio Mishima', CAST(N'2015-11-14 14:32:53.483' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (146, N'Robert Malacci', CAST(N'2015-11-14 14:32:53.577' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (147, N'Pidansat de Mairobert', CAST(N'2015-11-14 14:32:53.767' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (148, N'Maurice Maeterlinck', CAST(N'2015-11-14 14:32:53.860' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (149, N'Amélie Nothomb', CAST(N'2015-11-14 14:32:53.937' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (150, N'Katherine Neville', CAST(N'2015-11-14 14:32:54.613' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (151, N'Marguerite de Navarre', CAST(N'2015-11-14 14:32:54.690' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (152, N'Vladimir Nabokov', CAST(N'2015-11-14 14:32:54.767' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (153, N'Alfred de Musset', CAST(N'2015-11-14 14:32:54.843' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (154, N'Haruki Murakami', CAST(N'2015-11-14 14:32:54.977' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (155, N'Patrick O''Brian', CAST(N'2015-11-14 14:32:55.057' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (156, N'Collectif', CAST(N'2015-11-14 14:32:55.153' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (157, N'Daniel Pennac', CAST(N'2015-11-14 14:32:55.233' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (158, N'Louise Penny', CAST(N'2015-11-14 14:32:55.553' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (159, N'Pétrone', CAST(N'2015-11-14 14:32:55.650' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (160, N'Anne Peyrouse', CAST(N'2015-11-14 14:32:55.750' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (161, N'Steven Pressfield', CAST(N'2015-11-14 14:32:55.853' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (162, N'Edgar Allan Poe', CAST(N'2015-11-14 14:32:55.953' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (163, N'Manon Lescault', CAST(N'2015-11-14 14:32:56.323' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (164, N'Monique Proulx', CAST(N'2015-11-14 14:32:56.407' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (165, N'Marcel Proust', CAST(N'2015-11-14 14:32:56.487' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (166, N'Jean Racine', CAST(N'2015-11-14 14:32:56.567' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (167, N'Jean Ray', CAST(N'2015-11-14 14:32:56.747' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (168, N'Esther Rochon', CAST(N'2015-11-14 14:32:56.830' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (169, N'Jean-Jacques Rousseau', CAST(N'2015-11-14 14:32:57.187' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (170, N'Jean-Christophe Ruffin', CAST(N'2015-11-14 14:32:57.347' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (171, N'Richard Williams', CAST(N'2015-11-14 14:32:57.457' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (172, N'Scott Rogers', CAST(N'2015-11-14 14:32:57.567' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (173, N'John H. Holland', CAST(N'2015-11-14 14:32:57.677' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (174, N'Phil Co', CAST(N'2015-11-14 14:32:57.797' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (175, N'Robert McKee', CAST(N'2015-11-14 14:32:57.907' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (176, N'Raph Koster', CAST(N'2015-11-14 14:32:58.020' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (177, N'Jesse Schell', CAST(N'2015-11-14 14:32:58.133' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (178, N'Patrick Sénécal', CAST(N'2015-11-14 14:32:58.217' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (179, N'Daniel Sernine', CAST(N'2015-11-14 14:32:58.303' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (180, N'Nicola Sirkis', CAST(N'2015-11-14 14:32:58.413' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (181, N'Sophocle', CAST(N'2015-11-14 14:32:58.497' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (182, N'Gaétan Soucy', CAST(N'2015-11-14 14:32:58.583' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (183, N'John Steinbeck', CAST(N'2015-11-14 14:32:58.667' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (184, N'Stendhal', CAST(N'2015-11-14 14:32:58.753' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (185, N'Robert Louis Stevenson', CAST(N'2015-11-14 14:32:58.843' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (186, N'Antoine de Saint-Exupéry', CAST(N'2015-11-14 14:32:58.927' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (187, N'Patrick Süskind', CAST(N'2015-11-14 14:32:59.017' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (188, N'Mary W. Shelley', CAST(N'2015-11-14 14:32:59.100' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (189, N'Bernhard Schlink', CAST(N'2015-11-14 14:32:59.190' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (190, N'Ernesto Sabato', CAST(N'2015-11-14 14:32:59.583' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (191, N'Michel Samson', CAST(N'2015-11-14 14:32:59.697' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (192, N'Jean-Paul Sartre', CAST(N'2015-11-14 14:32:59.783' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (193, N'Shakespeare', CAST(N'2015-11-14 14:32:59.943' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (194, N'Lionel Shriver', CAST(N'2015-11-14 14:33:00.033' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (195, N'Hergé', CAST(N'2015-11-14 14:33:00.160' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (196, N'Raoul Cauvin', CAST(N'2015-11-14 14:33:00.610' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (197, N'Willy Lambil', CAST(N'2015-11-14 14:33:00.653' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (198, N'Louis Salvérius', CAST(N'2015-11-14 14:33:01.153' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (199, N'Stefan Sweig', CAST(N'2015-11-14 14:33:02.790' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (200, N'Bernard Werber', CAST(N'2015-11-14 14:33:02.883' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (201, N'H. G. Wells', CAST(N'2015-11-14 14:33:03.060' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (202, N'Élisabeth Vonarburg', CAST(N'2015-11-14 14:33:03.157' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (203, N'Virginia Woolf', CAST(N'2015-11-14 14:33:03.333' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (204, N'Oscar Wilde', CAST(N'2015-11-14 14:33:03.430' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (205, N'Émile Zola', CAST(N'2015-11-14 14:33:03.603' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (206, N'Andrzej Zaniewski', CAST(N'2015-11-14 14:33:03.857' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (207, N'Carlos Ruiz Zafòn', CAST(N'2015-11-14 14:33:03.953' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (208, N'Inoue Yasushi', CAST(N'2015-11-14 14:33:04.083' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (209, N'Kim Thùy', CAST(N'2015-11-14 14:33:04.177' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (210, N'Voltaire', CAST(N'2015-11-14 14:33:04.277' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (211, N'Vigny', CAST(N'2015-11-14 14:33:04.483' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (212, N'Boris Vian', CAST(N'2015-11-14 14:33:04.580' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (213, N'Jean-Pierre Vernant', CAST(N'2015-11-14 14:33:04.753' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (214, N'Fred Uhlman', CAST(N'2015-11-14 14:33:04.853' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (215, N'Michel Tremblay', CAST(N'2015-11-14 14:33:04.987' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (216, N'Dany Tremblay', CAST(N'2015-11-14 14:33:05.090' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (217, N'Sylvain Trudel', CAST(N'2015-11-14 14:33:05.220' AS DateTime), 0, 0, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [Name], [DateAdded], [Score], [TimesConsulted], [LastTimeChecked]) VALUES (218, N'Christian Tétreault', CAST(N'2015-11-14 14:33:05.463' AS DateTime), 0, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[AuthorByBook] ON 

GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (1, 4, 1)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (2, 5, 2)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (3, 6, 2)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (4, 7, 2)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (5, 8, 2)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (6, 9, 2)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (7, 10, 2)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (8, 11, 2)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (9, 12, 2)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (10, 13, 2)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (11, 14, 2)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (12, 15, 2)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (13, 16, 2)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (14, 17, 2)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (15, 18, 2)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (16, 19, 2)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (17, 20, 2)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (18, 21, 2)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (19, 22, 2)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (20, 23, 3)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (21, 24, 4)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (22, 25, 4)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (23, 26, 5)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (24, 27, 6)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (25, 27, 7)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (26, 27, 8)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (27, 28, 7)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (28, 28, 8)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (29, 29, 6)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (30, 29, 7)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (31, 29, 8)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (32, 30, 6)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (33, 30, 7)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (34, 30, 8)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (35, 31, 7)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (36, 31, 8)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (37, 32, 6)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (38, 32, 7)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (39, 32, 8)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (40, 33, 6)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (41, 33, 7)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (42, 33, 8)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (43, 34, 9)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (44, 34, 10)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (45, 35, 9)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (46, 35, 10)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (47, 36, 9)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (48, 36, 10)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (49, 37, 9)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (50, 37, 10)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (51, 38, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (52, 39, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (53, 40, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (54, 41, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (55, 41, 12)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (56, 41, 5)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (57, 42, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (58, 42, 5)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (59, 43, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (60, 43, 12)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (61, 44, 13)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (62, 45, 14)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (63, 45, 15)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (64, 46, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (65, 46, 16)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (66, 46, 5)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (67, 47, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (68, 48, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (69, 49, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (70, 50, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (71, 51, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (72, 52, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (73, 53, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (74, 54, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (75, 55, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (76, 55, 16)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (77, 56, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (78, 57, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (79, 58, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (80, 59, 11)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (81, 60, 12)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (82, 61, 12)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (83, 62, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (84, 63, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (85, 64, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (86, 65, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (87, 66, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (88, 67, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (89, 68, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (90, 69, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (91, 70, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (92, 70, 18)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (93, 71, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (94, 72, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (95, 73, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (96, 74, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (97, 75, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (98, 76, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (99, 77, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (100, 78, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (101, 79, 18)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (102, 79, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (103, 80, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (104, 81, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (105, 82, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (106, 83, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (107, 84, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (108, 84, 19)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (109, 85, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (110, 85, 19)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (111, 86, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (112, 87, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (113, 88, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (114, 89, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (115, 90, 20)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (116, 91, 20)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (117, 92, 20)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (118, 93, 20)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (119, 94, 20)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (120, 95, 20)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (121, 96, 20)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (122, 97, 20)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (123, 98, 20)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (124, 99, 20)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (125, 100, 20)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (126, 101, 21)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (127, 102, 21)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (128, 103, 21)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (129, 104, 21)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (130, 105, 21)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (131, 106, 21)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (132, 107, 21)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (133, 108, 21)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (134, 109, 21)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (135, 110, 21)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (136, 111, 21)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (137, 112, 22)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (138, 113, 23)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (139, 114, 23)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (140, 115, 24)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (141, 116, 24)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (142, 117, 24)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (143, 118, 24)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (144, 119, 24)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (145, 120, 24)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (146, 121, 24)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (147, 122, 24)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (148, 123, 24)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (149, 124, 24)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (150, 125, 25)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (151, 126, 26)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (152, 126, 27)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (153, 127, 26)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (154, 127, 27)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (155, 128, 28)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (156, 129, 29)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (157, 130, 29)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (158, 131, 29)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (159, 132, 29)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (160, 133, 29)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (161, 134, 29)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (162, 135, 29)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (163, 136, 30)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (164, 136, 31)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (165, 137, 32)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (166, 138, 33)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (167, 139, 33)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (168, 140, 34)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (169, 141, 34)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (170, 142, 34)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (171, 143, 35)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (172, 144, 36)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (173, 144, 37)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (174, 145, 38)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (175, 146, 38)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (176, 147, 38)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (177, 148, 39)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (178, 149, 39)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (179, 150, 40)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (180, 151, 41)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (181, 152, 42)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (182, 153, 43)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (183, 154, 44)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (184, 155, 45)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (185, 156, 45)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (186, 157, 46)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (187, 158, 47)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (188, 159, 47)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (189, 160, 48)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (190, 161, 49)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (191, 162, 49)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (192, 163, 50)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (193, 164, 50)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (194, 165, 51)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (195, 166, 52)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (196, 167, 43)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (197, 168, 53)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (198, 169, 54)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (199, 170, 55)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (200, 171, 56)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (201, 172, 49)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (202, 173, 57)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (203, 174, 58)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (204, 175, 59)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (205, 176, 60)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (206, 177, 59)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (207, 178, 19)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (208, 179, 61)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (209, 180, 62)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (210, 180, 63)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (211, 180, 64)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (212, 181, 65)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (213, 182, 65)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (214, 183, 65)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (215, 184, 65)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (216, 185, 66)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (217, 186, 67)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (218, 187, 67)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (219, 188, 67)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (220, 189, 68)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (221, 190, 68)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (222, 191, 69)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (223, 192, 69)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (224, 193, 70)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (225, 194, 71)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (226, 195, 72)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (227, 196, 73)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (228, 197, 74)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (229, 198, 75)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (230, 199, 1)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (231, 200, 76)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (232, 201, 77)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (233, 202, 78)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (234, 203, 78)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (235, 204, 78)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (236, 205, 79)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (237, 206, 55)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (238, 207, 55)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (239, 208, 80)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (240, 209, 80)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (241, 210, 81)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (242, 211, 82)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (243, 212, 83)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (244, 213, 83)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (245, 214, 84)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (246, 215, 84)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (247, 216, 85)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (248, 217, 86)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (249, 218, 33)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (250, 219, 87)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (251, 220, 88)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (252, 221, 47)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (253, 222, 89)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (254, 222, 90)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (255, 223, 91)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (256, 224, 91)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (257, 225, 92)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (258, 226, 93)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (259, 227, 94)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (260, 228, 95)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (261, 229, 96)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (262, 230, 96)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (263, 231, 96)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (264, 232, 96)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (265, 233, 97)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (266, 234, 98)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (267, 235, 99)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (268, 235, 100)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (269, 236, 101)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (270, 237, 102)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (271, 238, 103)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (272, 239, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (273, 240, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (274, 241, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (275, 242, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (276, 243, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (277, 244, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (278, 245, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (279, 246, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (280, 247, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (281, 248, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (282, 249, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (283, 250, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (284, 251, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (285, 252, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (286, 253, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (287, 254, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (288, 255, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (289, 256, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (290, 257, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (291, 258, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (292, 259, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (293, 260, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (294, 261, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (295, 262, 105)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (296, 263, 106)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (297, 264, 107)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (298, 265, 104)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (299, 266, 108)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (300, 267, 108)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (301, 268, 106)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (302, 269, 109)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (303, 270, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (304, 271, 108)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (305, 272, 108)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (306, 273, 108)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (307, 274, 108)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (308, 275, 110)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (309, 276, 110)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (310, 277, 111)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (311, 278, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (312, 279, 112)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (313, 280, 113)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (314, 281, 114)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (315, 282, 115)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (316, 283, 115)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (317, 284, 116)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (318, 285, 117)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (319, 286, 117)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (320, 287, 118)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (321, 288, 114)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (322, 289, 119)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (323, 290, 119)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (324, 291, 120)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (325, 292, 121)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (326, 293, 122)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (327, 294, 123)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (328, 295, 124)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (329, 296, 125)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (330, 297, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (331, 298, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (332, 298, 126)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (333, 299, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (334, 300, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (335, 301, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (336, 302, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (337, 303, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (338, 304, 17)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (339, 305, 127)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (340, 305, 128)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (341, 306, 129)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (342, 307, 130)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (343, 308, 98)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (344, 309, 98)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (345, 310, 98)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (346, 311, 98)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (347, 312, 98)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (348, 313, 98)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (349, 314, 98)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (350, 315, 98)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (351, 316, 98)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (352, 317, 98)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (353, 318, 98)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (354, 319, 131)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (355, 320, 132)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (356, 321, 132)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (357, 322, 133)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (358, 323, 134)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (359, 324, 135)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (360, 325, 136)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (361, 326, 137)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (362, 327, 138)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (363, 328, 138)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (364, 329, 138)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (365, 330, 138)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (366, 331, 139)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (367, 332, 140)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (368, 333, 141)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (369, 334, 53)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (370, 335, 142)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (371, 336, 53)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (372, 337, 143)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (373, 338, 144)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (374, 339, 145)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (375, 340, 146)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (376, 341, 145)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (377, 342, 145)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (378, 343, 147)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (379, 344, 148)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (380, 345, 149)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (381, 346, 149)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (382, 347, 149)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (383, 348, 149)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (384, 349, 149)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (385, 350, 149)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (386, 351, 149)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (387, 352, 149)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (388, 353, 149)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (389, 354, 149)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (390, 355, 149)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (391, 356, 150)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (392, 357, 151)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (393, 358, 152)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (394, 359, 153)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (395, 360, 57)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (396, 361, 154)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (397, 362, 155)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (398, 363, 156)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (399, 364, 157)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (400, 365, 157)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (401, 366, 157)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (402, 367, 157)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (403, 368, 157)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (404, 369, 158)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (405, 370, 159)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (406, 371, 160)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (407, 372, 161)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (408, 373, 162)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (409, 374, 52)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (410, 375, 52)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (411, 376, 52)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (412, 377, 52)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (413, 378, 163)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (414, 379, 164)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (415, 380, 165)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (416, 381, 166)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (417, 382, 166)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (418, 383, 167)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (419, 384, 168)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (420, 385, 168)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (421, 386, 168)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (422, 387, 168)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (423, 388, 168)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (424, 389, 169)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (425, 390, 58)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (426, 391, 170)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (427, 392, 171)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (428, 393, 172)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (429, 394, 173)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (430, 395, 174)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (431, 396, 175)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (432, 397, 176)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (433, 398, 177)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (434, 399, 178)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (435, 400, 179)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (436, 401, 180)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (437, 402, 181)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (438, 403, 182)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (439, 404, 183)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (440, 405, 184)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (441, 406, 185)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (442, 407, 186)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (443, 408, 187)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (444, 409, 188)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (445, 410, 189)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (446, 411, 56)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (447, 412, 56)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (448, 413, 56)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (449, 414, 56)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (450, 415, 190)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (451, 416, 191)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (452, 417, 192)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (453, 418, 192)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (454, 419, 193)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (455, 420, 194)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (456, 421, 195)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (457, 422, 195)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (458, 423, 195)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (459, 424, 195)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (460, 425, 195)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (461, 426, 195)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (462, 427, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (463, 427, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (464, 428, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (465, 428, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (466, 429, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (467, 429, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (468, 430, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (469, 430, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (470, 431, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (471, 431, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (472, 432, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (473, 432, 198)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (474, 433, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (475, 433, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (476, 434, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (477, 434, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (478, 435, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (479, 435, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (480, 436, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (481, 436, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (482, 437, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (483, 437, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (484, 438, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (485, 438, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (486, 439, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (487, 439, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (488, 440, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (489, 440, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (490, 441, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (491, 441, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (492, 442, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (493, 442, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (494, 443, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (495, 443, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (496, 444, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (497, 444, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (498, 445, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (499, 445, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (500, 446, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (501, 446, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (502, 447, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (503, 447, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (504, 448, 196)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (505, 448, 197)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (506, 449, 199)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (507, 450, 200)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (508, 451, 200)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (509, 452, 201)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (510, 453, 202)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (511, 454, 202)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (512, 455, 203)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (513, 456, 204)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (514, 457, 200)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (515, 458, 205)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (516, 459, 205)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (517, 460, 205)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (518, 461, 206)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (519, 462, 207)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (520, 463, 208)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (521, 464, 209)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (522, 465, 210)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (523, 466, 210)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (524, 467, 211)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (525, 468, 212)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (526, 469, 60)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (527, 470, 213)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (528, 471, 214)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (529, 472, 215)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (530, 473, 216)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (531, 474, 217)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (532, 475, 217)
GO
INSERT [dbo].[AuthorByBook] ([AuthorByBookID], [BookID], [AuthorID]) VALUES (533, 476, 218)
GO
SET IDENTITY_INSERT [dbo].[AuthorByBook] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (4, N'Véronika décide de mourir', NULL, NULL, NULL, 1, 288, 2000, CAST(N'2015-11-14' AS Date), 0, 10, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (5, N'Complètement surbookés!', 15, NULL, NULL, 1, 64, 2012, CAST(N'2015-11-14' AS Date), 0, 1, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (6, N'Va jouer dans le mixer!', 14, NULL, NULL, 1, 63, 2012, CAST(N'2015-11-14' AS Date), 0, 1, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (7, N'Enfin seuls!', 13, NULL, NULL, 1, 64, 2011, CAST(N'2015-11-14' AS Date), 0, 1, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (8, N'Quelque chose bave sous le lit!', 12, NULL, NULL, 1, 64, 2011, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (9, N'Chou bi dou wouah!', 11, NULL, NULL, 1, 64, 2011, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (10, N'Tous aux abris!', 10, NULL, NULL, 1, 63, 2011, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (11, N'On n''arrête pas le progrès!', 9, NULL, NULL, 1, 64, 2011, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (12, N'Elle est pas belle, la vie?', 8, NULL, NULL, 1, 63, 2011, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (13, N'Que fait la police?', 7, NULL, NULL, 1, 63, 2011, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (14, N'Allez, on se tire!', 6, NULL, NULL, 1, 64, 2010, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (15, N'Fini de rire!', 5, NULL, NULL, 1, 63, 2010, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (16, N'Debout, tas de nouilles!', 4, NULL, NULL, 1, 63, 2010, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (17, N'On est faits comme des rats!', 3, NULL, NULL, 1, 64, 2010, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (18, N'En avant, tête de thon!', 2, NULL, NULL, 1, 64, 2010, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (19, N'Adieu, monde cruel!', 1, NULL, NULL, 1, 63, 2010, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (20, N'Gare au psychopathe à rayures!', 18, NULL, NULL, 1, 64, 1989, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (21, N'Que de misère humaine', 19, NULL, NULL, 1, 64, 1989, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (22, N'Y a des jours comme ça!', 23, NULL, NULL, 1, 62, 1996, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (23, N'Canyon Apache', 6, NULL, NULL, 1, 46, 1972, CAST(N'2015-11-14' AS Date), 0, 1, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (24, N'Une ombre est passée', 7, NULL, NULL, 1, 48, 1982, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (25, N'Mille ans pour une agonie', 1, NULL, NULL, 1, 48, 1978, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (26, N'Le summum', NULL, NULL, NULL, 1, 63, 2003, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (27, N'Les seigneurs de l''enfer', 7, NULL, NULL, 1, 48, 1992, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (28, N'L''arcantane noire', 9, NULL, NULL, 1, 48, 1996, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (29, N'La table d''émeraude', 8, NULL, NULL, 1, 48, 1995, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (30, N'Les clefs de feu', 6, NULL, NULL, 1, 48, 1988, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (31, N'Les sceaux de l''Apocalypse', 11, NULL, NULL, 1, 48, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (32, N'Le sablier d''El Jerada', 5, NULL, NULL, 1, 48, 1986, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (33, N'Le pays d''Aslor', 4, NULL, NULL, 1, 48, 1985, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (34, N'Le réveil du Z', 37, NULL, NULL, 1, 46, 1986, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (35, N'Aventure en Australie', 34, NULL, NULL, 1, 46, 1985, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (36, N'Virus', 33, NULL, NULL, 1, 46, 1984, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (37, N'Spirou et Fantasio à New York', 39, NULL, NULL, 1, 46, 1992, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (38, N'Le dictateur et le champignon', 7, NULL, NULL, 1, 62, 1956, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (39, N'Les chapeaux noirs et trois autres aventures', 3, NULL, NULL, 1, 61, 1952, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (40, N'4 aventures de Spirou …et Fantasio', 1, NULL, NULL, 1, 69, 1950, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (41, N'Tembo Tabou', 24, NULL, NULL, 1, 46, 1974, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (42, N'QRM sur Bretzelburg', 18, NULL, NULL, 1, 63, 1966, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (43, N'Spirou et les hommes-bulles', 17, NULL, NULL, 1, 63, 1964, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (44, N'Le Gri-Gri du Niokolo-Koba', 25, NULL, NULL, 1, 46, 1974, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (45, N'La boîte noire', 31, NULL, NULL, 1, 46, 1983, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (46, N'L''ombre du Z', 16, NULL, NULL, 1, 63, 1962, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (47, N'Spirou et les héritiers', 4, NULL, NULL, 1, 61, 1952, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (48, N'Le repaire de la murène', 9, NULL, NULL, 1, 63, 1957, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (49, N'La corne de rhinoceros', 6, NULL, NULL, 1, 62, 1955, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (50, N'Les pirates du silence', 10, NULL, NULL, 1, 62, 1976, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (51, N'Radar le robot (Hors série 2)', NULL, NULL, NULL, 1, 46, 1976, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (52, N'Panade à Champignac', 19, NULL, NULL, 1, 62, 1976, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (53, N'Les voleurs du Marsupilami', 5, NULL, NULL, 1, 60, 1954, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (54, N'Il y a un sorcier à Champignac', 2, NULL, NULL, 1, 61, 1948, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (55, N'Lagaffe fait des dégâts', 9, NULL, NULL, 1, 122, 1991, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (56, N'Gaston', 10, NULL, NULL, 1, 47, 1997, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (57, N'Gaffes et gadgets', 0, NULL, NULL, 1, 48, 1985, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (58, N'Le géant de la gaffe', 10, NULL, NULL, 1, 54, 1972, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (59, N'Gaston et le Marsupilami', NULL, NULL, NULL, 1, 32, 1978, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (60, N'60 gags de Boule et Bill', 5, NULL, NULL, 1, 62, 1969, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (61, N'Attention chien marrant!', 10, NULL, NULL, 1, 46, 1976, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (62, N'Le Pistolero', 1, NULL, NULL, 1, 255, 2003, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (63, N'Les trois cartes', 2, NULL, NULL, 1, 397, 2004, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (64, N'Terres perdues', 3, NULL, NULL, 1, 522, 2004, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (65, N'Magie et cristal', 4, NULL, NULL, 1, 863, 2004, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (66, N'Les loups de la Callah', 5, NULL, NULL, 1, 668, 2004, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (67, N'Le chant de Susannah', 6, NULL, NULL, 1, 525, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (68, N'La Tour sombre', 7, NULL, NULL, 1, 953, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (69, N'Bazaar', NULL, NULL, NULL, 1, 678, 1991, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 3, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (70, N'Blaze', NULL, NULL, NULL, 1, 328, 2008, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (71, N'Cœurs perdus en Atlantide', NULL, NULL, NULL, 1, 553, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (72, N'Dreamcatcher', NULL, NULL, NULL, 1, 684, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (73, N'Écriture', NULL, NULL, NULL, 1, 378, 2000, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 4, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (74, N'Insomnie', NULL, NULL, NULL, 1, 717, 1994, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (75, N'Juste avant le crépuscule', NULL, NULL, NULL, 1, 412, 2008, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 3, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (76, N'Misery', NULL, NULL, NULL, 1, 391, 1989, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (77, N'La part des ténèbres', NULL, NULL, NULL, 1, 461, 1989, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (78, N'La petite fille qui aimait Tom Gordon', NULL, NULL, NULL, 1, 332, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (79, N'Les régulateurs', NULL, NULL, NULL, 1, 388, 1996, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (80, N'Roadmaster', NULL, NULL, NULL, 1, 444, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (81, N'Journal intime de Ellen Rimbauer / Ma vie à Rose Red', NULL, NULL, NULL, 1, 277, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (82, N'Shining / Salem / Danse macabre', NULL, NULL, NULL, 1, 1182, 1977, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 5, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (83, N'Simetierre', NULL, NULL, NULL, 1, 476, 1983, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (84, N'Le Talisman des territoires 1', NULL, NULL, NULL, 1, 646, 1984, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (85, N'Le Talisman des territoires 2', NULL, NULL, NULL, 1, 551, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (86, N'Tout est fatal', NULL, NULL, NULL, 1, 524, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (87, N'Nuit noire, étoiles mortes', NULL, NULL, NULL, 1, 483, 2010, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (88, N'Dôme 1', NULL, NULL, NULL, 1, 630, 2009, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (89, N'Dôme 2', NULL, NULL, NULL, 1, 566, 2009, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (90, N'Under heaven', NULL, NULL, NULL, 2, 573, 2010, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (91, N'La chanson d''Arbonne', NULL, NULL, NULL, 1, 562, 1992, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (92, N'L''arbre de l''été', NULL, NULL, NULL, 1, 422, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (93, N'Le feu vagabond', NULL, NULL, NULL, 1, 356, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (94, N'La route obscure', NULL, NULL, NULL, 1, 508, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (95, N'Les lions d''Al-Rassan', NULL, NULL, NULL, 1, 653, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (96, N'Tigane - Édition intégrale', NULL, N'Fantasy', NULL, 1, 830, 2006, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (97, N'Ysabel', NULL, NULL, NULL, 1, 462, 2007, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (98, N'Voile vers Sarance', NULL, NULL, NULL, 1, 553, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (99, N'Seigneur des Empereurs', NULL, NULL, NULL, 1, 620, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (100, N'Le dernier rayon du soleil', NULL, NULL, NULL, 1, 559, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (101, N'Terre natale', 4, N'Les royaumes oubliés', NULL, 1, 248, 1990, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (102, N'Terre d''exil', 5, N'Les royaumes oubliés', NULL, 1, 247, 1990, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (103, N'Terre promise', 6, N'Les royaumes oubliés', NULL, 1, 244, 1991, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (104, N'Vers la lumière', 37, N'Les royaumes oubliés', NULL, 1, 248, 1995, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (105, N'Retour à la clarté', 43, N'Les royaumes oubliés', NULL, 1, 253, 1998, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (106, N'Sea of swords', NULL, N'Forgotten realms', NULL, 2, 410, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (107, N'The Orc King', 1, N'Forgotten realms', NULL, 2, 398, 2008, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (108, N'The Thousand Orcs', 1, N'Forgotten realms', NULL, 2, 367, 2003, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (109, N'The Lone Drow', 2, N'Forgotten realms', NULL, 2, 370, 2004, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (110, N'The Two Swords', 3, N'Forgotten realms', NULL, 2, 376, 2004, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (111, N'L''épine dorsale du monde', 44, N'Les royaumes oubliés', NULL, 1, 299, 2000, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (112, N'The complete book of swords', NULL, NULL, NULL, 2, 626, 1984, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (113, N'The Hobbit or There and Back Again', NULL, NULL, NULL, 2, 317, 1966, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (114, N'Le Seigneur des Anneaux - Édition intégrale', NULL, NULL, NULL, 1, 1278, 1992, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (115, N'Aladdin', NULL, N'Walt Disney', NULL, 1, 96, 1993, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 6, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (116, N'Le monstres de la forêt', NULL, N'Walt Disney', NULL, 1, 10, 1994, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 6, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (117, N'La revanche de Petit Gouru', NULL, N'Walt Disney', NULL, 1, 10, 1994, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 6, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (118, N'Une histoire de pêche', NULL, N'Walt Disney', NULL, 1, 10, 1994, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 6, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (119, N'La surprise aux mûres', NULL, N'Walt Disney', NULL, 1, 10, 1994, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 6, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (120, N'Hiawatha, le petit indien', NULL, N'Walt Disney', NULL, 1, 41, 1982, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 6, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (121, N'Pinocchio et son aventure au théâtre de marionnettes', NULL, N'Walt Disney', NULL, 1, 40, 1993, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 6, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (122, N'Monstres inc.', NULL, N'Walt Disney', NULL, 1, 40, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 6, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (123, N'La souris des ville et la souris des champs', NULL, N'Walt Disney', NULL, 1, 40, 1978, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 6, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (124, N'Les contes du marchand de sable', NULL, NULL, NULL, 1, 189, 1987, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 6, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (125, N'Petits et grands félins', NULL, N'Les yeux de la découverte', NULL, 1, 64, 1991, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 7, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (126, N'DragonLance Chronicles', NULL, N'DragonLance', NULL, 2, 1032, 1988, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (127, N'DragonLance Legends', NULL, N'DragonLance', NULL, 2, 904, 1988, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (128, N'Le tueur de la 495', 1, NULL, NULL, 1, 350, 2011, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (129, N'Armand le vampire', NULL, NULL, NULL, 1, 398, 1998, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (130, N'Le domaine Blackwood', NULL, NULL, NULL, 1, 583, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (131, N'Le sang et l''or ou L''histoire de Marius', NULL, NULL, NULL, 1, 488, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (132, N'Pandora', NULL, NULL, NULL, 1, 333, 1998, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (133, N'Le lien maléfique', NULL, N'Pocket', NULL, 1, 763, 1990, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (134, N'Memnoch le démon', NULL, N'Pocket', NULL, 1, 450, 1995, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (135, N'Merrick', NULL, NULL, NULL, 2, 370, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (136, N'Les plus beaux contes d''Andersen', NULL, NULL, NULL, 1, 213, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 8, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (137, N'Jonathan Livingstone le goéland', NULL, NULL, NULL, 1, 94, 1970, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (138, N'Le voyage d''Anna Blume', NULL, NULL, NULL, 1, 267, 1987, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (139, N'L''invention de la solitude', NULL, NULL, NULL, 1, 296, 1982, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (140, N'L''enfant migrateur', NULL, NULL, NULL, 1, 125, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (141, N'Chrysalide', NULL, NULL, NULL, 1, 152, 2006, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (142, N'Cet imperceptible mouvement', NULL, NULL, NULL, 1, 117, 1997, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (143, N'Poétique - Aristote', NULL, NULL, NULL, 1, 213, 1998, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 4, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (144, N'Alcools', NULL, NULL, NULL, 1, 255, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 9, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (145, N'Le père Goriot', NULL, N'La bibliothèque', NULL, 1, 471, 1971, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (146, N'La peau de chagrin', NULL, N'Folio classique', NULL, 1, 433, 1974, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (147, N'Le colonel Chabert', NULL, NULL, NULL, 1, 96, 1997, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (148, N'Soie', NULL, N'Folio', NULL, 1, 142, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (149, N'Châteaux de la colère', NULL, N'Folio', NULL, 1, 337, 1991, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (150, N'Les Fleurs du Mal', NULL, NULL, NULL, 1, 158, 1998, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 9, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (151, N'Le Joueur de quilles', NULL, NULL, NULL, 1, 258, 2004, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (152, N'En attendant Godot', NULL, NULL, NULL, 1, 124, 1952, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 10, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (153, N'Le libraire', NULL, NULL, NULL, 1, 143, 1993, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (154, N'Une saison dans la vie d''Emmanuel', NULL, N'Boréal Compact', NULL, 1, 165, 1991, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (155, N'Tous ces mondes en elle', NULL, NULL, NULL, 1, 386, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (156, N'La clameur des ténèbres', NULL, NULL, NULL, 1, 474, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (157, N'Le livre de sable', NULL, NULL, NULL, 1, 147, 2006, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (158, N'Parents et amis sont invités à y assister', NULL, NULL, NULL, 1, 237, 2006, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (159, N'Mailloux - histoires de novembre et de juin', NULL, NULL, NULL, 1, 190, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (160, N'Au beau milieu, la fin', NULL, NULL, NULL, 1, 156, 2011, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (161, N'Le principe du geyser', NULL, NULL, NULL, 1, 208, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (162, N'L''avaleur de sable', NULL, NULL, NULL, 1, 240, 1996, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (163, N'Le piège', NULL, N'L''imaginaire', NULL, 1, 218, 1986, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (164, N'Mes amis', NULL, NULL, NULL, 1, 174, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (165, N'Nadja', NULL, N'folio plus', NULL, 1, 215, 1998, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (166, N'L''anglais n''est pas une langue magique', NULL, NULL, NULL, 1, 156, 2009, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (167, N'La bagarre', NULL, NULL, NULL, 1, 327, 1993, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (168, N'Le médecin malgré lui', NULL, N'Petits classiques', NULL, 1, 160, 1998, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 10, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (169, N'Le petit chose', 979, N'Folio', NULL, 1, 443, 1977, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (170, N'La femme au collier de velours', NULL, NULL, NULL, 1, 159, 1995, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (171, N'Le sumo qui ne pouvait pas grossir', NULL, NULL, NULL, 1, 102, 2009, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (172, N'Sonde ton cœur, Laurie Rivers', NULL, NULL, NULL, 1, 179, 2006, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (173, N'Nineteen eighty-four', NULL, NULL, NULL, 2, 326, 1990, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (174, N'La rivière sans repros', NULL, NULL, NULL, 1, 331, 1979, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (175, N'Le Matou', NULL, NULL, NULL, 1, 583, 1981, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (176, N'Paris au XXe siècle', NULL, NULL, NULL, 1, 216, 1994, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (177, N'Les émois d''un marchand de café', NULL, NULL, NULL, 1, 495, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (178, N'Sans portes ni fenêtres', NULL, NULL, NULL, 1, 382, 1992, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (179, N'Tous fous - Le docteur Smog craque!', NULL, NULL, NULL, 1, 48, 2006, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (180, N'Is la blanche', 2, NULL, NULL, 1, 48, 2006, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (181, N'La bicyclette bleue', 1, NULL, NULL, 1, 476, 1981, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (182, N'101, avenue Henri-Martin', 2, NULL, NULL, 1, 380, 1983, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (183, N'Le diable en rit encore', 3, NULL, NULL, 1, 302, 1986, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (184, N'Noir Tango', 4, NULL, NULL, 1, 318, 1991, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (185, N'Les liaisons dangereuses', NULL, NULL, NULL, 1, 487, 1998, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (186, N'Le Voleur des steppes', NULL, N'Fantasy', NULL, 1, 623, 2007, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (187, N'Les Sources de la magie', NULL, N'Fantasy', NULL, 1, 436, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (188, N'La mémoire du lac', NULL, N'Fantastique', NULL, 1, 274, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (189, N'L''ingénieux Hidalgo - Don Quichotte de la manche 1', NULL, NULL, NULL, 1, 578, 1997, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (190, N'L''ingénieux Hidalgo - Don Quichotte de la manche 2', NULL, NULL, NULL, 1, 589, 1997, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (191, N'Voyage au bout de la nuit', NULL, N'Folio', NULL, 1, 505, 2000, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (192, N'Féérie pour une autre fois', NULL, N'Folio', NULL, 1, 633, 1995, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (193, N'Tout Alice', NULL, NULL, NULL, 1, 442, 1979, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (194, N'L''étranger', NULL, N'Folio', NULL, 1, 186, 2000, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (195, N'Les égarements du cœur et de l''esprit', NULL, NULL, NULL, 1, 295, 1985, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (196, N'Les armes secrètes', NULL, N'Folio', NULL, 1, 313, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (197, N'Autour des gares', NULL, NULL, NULL, 1, 224, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 3, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (198, N'Au cœur des ténèbres', NULL, NULL, NULL, 1, 175, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (199, N'L''Alchimiste', NULL, NULL, NULL, 1, 253, 1994, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (200, N'L''annonce fait à Marie', NULL, N'Folio', NULL, 1, 218, 1998, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 10, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (201, N'Le chevalier de la charrette', NULL, N'Classiques', NULL, 1, 254, 1996, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (202, N'La femme d''un autre et le mari sous le lit', NULL, N'Folio', NULL, 1, 96, 2010, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (203, N'Crime et Châtiment', NULL, NULL, NULL, 1, 625, 1972, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (204, N'Le joueur', NULL, N'Folio classique', NULL, 1, 222, 2007, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (205, N'Un simple soldat', NULL, NULL, NULL, 1, 158, 1993, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 10, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (206, N'La Reine Margot', NULL, N'Classiques français', NULL, 1, 635, 1993, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (207, N'Les cenci', NULL, N'Grands Caractères', NULL, 1, 146, 1986, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (208, N'Les petits chevaux de Tarquinia', NULL, N'Folio', NULL, 1, 221, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (209, N'Moderato Cantabile', NULL, NULL, NULL, 1, 165, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (210, N'La Divine Comédie - L''Enfer', NULL, N'Bilingue', NULL, 1, 376, 1992, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 9, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (211, N'Point de Lendemain', NULL, N'Folio classique', NULL, 1, 217, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (212, N'David Copperfield', 1, NULL, NULL, 1, 509, 2006, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (213, N'David Copperfield', 2, NULL, NULL, 1, 440, 2006, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (214, N'Paradoxe sur le comédien', NULL, NULL, NULL, 1, 108, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 4, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (215, N'Entretien entre d''Alembert et Diderot - Le rêve de d''Alembert', NULL, NULL, NULL, 1, 48, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 4, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (216, N'Comment réussir sa schizophrénie', NULL, NULL, NULL, 1, 126, 2000, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (217, N'L''amour dure trois ans', NULL, N'Le Livre de poche', NULL, 1, 346, 2012, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (218, N'In the country of last things', NULL, NULL, NULL, 2, 188, 2004, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (219, N'Testament', NULL, NULL, NULL, 1, 157, 2012, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (220, N'Writing for Multimedia and the Web', NULL, NULL, NULL, 2, 341, 1997, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 11, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (221, N'Harvey', NULL, NULL, NULL, 2, 168, 2010, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (222, N'Game Level Design', NULL, N'Game Development Essentials', NULL, 2, 307, 2008, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 11, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (223, N'Un roi sans divertissement', NULL, N'Folio', NULL, 1, 244, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (224, N'Le chant du monde', NULL, N'Folio', NULL, 1, 282, 1991, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (225, N'Les faux-monnayeurs', NULL, N'Folio', NULL, 1, 377, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (226, N'Chroniques de Ford County', NULL, N'Best Sellers', NULL, 1, 294, 2010, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 3, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (227, N'Dominique', NULL, N'Classiques français', NULL, 1, 254, 1994, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (228, N'Fables', NULL, N'Classiques de poche', NULL, 1, 544, 1996, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 12, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (229, N'Salammbô', NULL, N'Classiques français', NULL, 1, 348, 1993, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (230, N'Trois Contes', NULL, N'Parcours d''une œuvre', NULL, 1, 237, 2000, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 8, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (231, N'Madame Bovary', NULL, N'Classiques français', NULL, 1, 352, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (232, N'Trois Contes', NULL, NULL, NULL, 1, 188, 1986, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 8, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (233, N'L''amélanchier', NULL, NULL, NULL, 1, 207, 1992, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (234, N'Chronique de la dérive douce', NULL, NULL, NULL, 1, 209, 2012, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (235, N'Médée', NULL, NULL, NULL, 1, 262, 1997, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 10, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (236, N'L''Orestie', NULL, NULL, NULL, 1, 409, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 10, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (237, N'Le pion blanc des présages', NULL, NULL, NULL, 1, 444, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (238, N'Le nom de la rose', NULL, NULL, NULL, 1, 505, 1998, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (239, N'Garfield - Ma soupière bien-aimée', NULL, N'Garfield', NULL, 1, 47, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (240, N'Garfield - Va au panier', NULL, N'Garfield', NULL, 1, 47, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (241, N'Garfield - Moi, gourmand?', NULL, N'Garfield', NULL, 1, 48, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (242, N'Garfield - Dur de la feuille', NULL, N'Garfield', NULL, 1, 48, 2004, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (243, N'Garfield - Lave plus blanc', NULL, N'Garfield', NULL, 1, 48, 2004, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (244, N'Garfield - Devine qui vient dîner ce soir?', NULL, N'Garfield', NULL, 1, 48, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (245, N'Garfield - C''est la fête!', NULL, N'Garfield', NULL, 1, 48, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (246, N'Garfield - La diète, jamais!', NULL, N'Garfield', NULL, 1, 47, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (247, N'Garfield - Je suis beau', NULL, N'Garfield', NULL, 1, 48, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (248, N'Garfield - Fait des vagues', NULL, N'Garfield', NULL, 1, 48, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (249, N'Garfield - Tout Schuss', NULL, N'Garfield', NULL, 1, 48, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (250, N'Garfield - Mange plus vite que son ombre', NULL, N'Garfield', NULL, 1, 47, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (251, N'Garfield - Chat académie', NULL, N'Garfield', NULL, 1, 48, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (252, N'Garfield - Tiens bon la rampe!', NULL, N'Garfield', NULL, 1, 48, 1995, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (253, N'Garfield - Fait le maximum', NULL, N'Garfield', NULL, 1, 94, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (254, N'Garfield - Album Garfield', 40, N'Garfield', NULL, 1, 94, 2008, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (255, N'Garfield - Album Garfield', 31, N'Garfield', NULL, 1, 94, 2008, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (256, N'The tenth Garfield - fat cat 3-pack', NULL, N'Garfield', NULL, 1, 349, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (257, N'Garfield - Poids lourd', 6, N'Garfield', NULL, 1, 349, 2003, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (258, N'Garfield - Poids lourd', 8, N'Garfield', NULL, 1, 349, 2003, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (259, N'Garfield - fait le plein', NULL, N'Garfield', NULL, 1, 94, 1996, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (260, N'Garfield - Poids lourd', NULL, N'Garfield', NULL, 1, 349, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (261, N'Garfield - En chute libre', NULL, N'Garfield', NULL, 1, 94, 1997, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (262, N'La plaisanterie', NULL, N'Folio', NULL, 1, 485, 2007, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (263, N'Le troisième mensonge', NULL, NULL, NULL, 1, 163, 1991, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (264, N'Je ne veux pas mourir seul', NULL, NULL, NULL, 1, 155, 2011, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (265, N'Garfield - Album Garfield', 10, N'Garfield', NULL, 1, 94, 2006, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (266, N'Pour qui sonne le glas', NULL, N'Folio', NULL, 1, 500, 2006, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (267, N'Les neiges du Kilimanjaro', NULL, N'Folio', NULL, 1, 188, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (268, N'Le grand cahier', NULL, NULL, NULL, 1, 168, 1986, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (269, N'Le pavillon des miroirs', NULL, N'Romanichel poche', NULL, 1, 371, 1995, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (270, N'The dark half', NULL, NULL, NULL, 2, 467, 1989, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (271, N'Le vieil homme et la mer', NULL, N'Folio', NULL, 1, 155, 2011, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (272, N'Paris est une fête', NULL, N'Folio', NULL, 1, 241, 2006, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (273, N'L''adieu aux armes', NULL, N'Folio', NULL, 1, 316, 2006, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (274, N'Le jardin d''Éden', NULL, N'Folio', NULL, 1, 326, 2004, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (275, N'L''enfant chargé de songes', NULL, NULL, NULL, 1, 159, 1992, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (276, N'Kamouraska', NULL, NULL, NULL, 1, 250, 1970, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (277, N'Betsi Larousse ou l''ineffable eccéité de la loutre', NULL, NULL, NULL, 1, 271, 1994, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (278, N'Un tour sur le bolid''', NULL, N'Le Livre de poche', NULL, 1, 95, 2000, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (279, N'Le vagabond solitaire', NULL, N'Folio', NULL, 1, 277, 2007, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (280, N'Un cri d''amour au centre du monde', NULL, N'Le Livre de poche', NULL, 1, 216, 2008, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (281, N'La métamorphose - suivi de "Dans la colonie pénitentiaire"', NULL, NULL, NULL, 1, 96, 1998, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (282, N'Le Roi de meurt', NULL, N'Folio', NULL, 1, 137, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (283, N'La Cantatrice chauve', NULL, N'Folio', NULL, 1, 152, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 10, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (284, N'Les variations Goldberg', NULL, N'Babel', NULL, 1, 250, 1994, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (285, N'Notre Dame de Paris', NULL, NULL, NULL, 1, 552, 1963, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (286, N'Le dernier jour d''un condamné', NULL, NULL, NULL, 1, 97, 1997, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (287, N'Une trop bruyante solitude', NULL, NULL, NULL, 1, 126, 1997, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (288, N'Lettre au père', NULL, N'Folio', NULL, 1, 99, 2007, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (289, N'Le zèbre', NULL, N'Folio', NULL, 1, 221, 1990, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (290, N'Autobiographie d''un amour', NULL, N'Folio', NULL, 1, 253, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (291, N'Adieu l''ami', NULL, N'Folio', NULL, 1, 154, 2000, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (292, N'La Bulle d''encre', NULL, N'Compact', NULL, 1, 145, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 4, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (293, N'Une veuve de papier', NULL, NULL, NULL, 1, 650, 2000, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (294, N'Les cerfs-volants de Kaboul', 3939, NULL, NULL, 1, 406, 2008, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (295, N'L''Odyssée', NULL, N'Folio', NULL, 1, 512, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (296, N'Il pleut des rats', NULL, N'Babel', NULL, 1, 399, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (297, N'Charlie', NULL, NULL, NULL, 1, 466, 1986, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (298, N'Noir comme l''amour', NULL, N'Le Livre de poche', NULL, 1, 505, 1995, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 3, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (299, N'Colorado Kid', NULL, NULL, NULL, 1, 158, 2006, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (300, N'Misery', NULL, N'Le Livre de poche', NULL, 1, 391, 1989, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (301, N'Simetierre', NULL, N'Épouvante', NULL, 1, 570, 1992, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (302, N'Danse macabre', NULL, NULL, NULL, 1, 411, 1994, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (303, N'Différentes saisons', NULL, NULL, NULL, 1, 635, 1994, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 3, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (304, N'La ligne verte', NULL, NULL, NULL, 1, 509, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (305, N'Les Chants de Maldoror', NULL, N'Le Livre de poche', NULL, 1, 432, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 3, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (306, N'Tout est sous contrôle', NULL, NULL, NULL, 1, 382, 2009, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (307, N'L''ogre de grand remous', NULL, NULL, NULL, 1, 189, 1991, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (308, N'Les années 80 dans ma vieille Ford', NULL, NULL, NULL, 1, 192, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (309, N'Tout bouge autour de moi', NULL, NULL, NULL, 1, 159, 2010, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (310, N'Je suis un écrivain japonais', NULL, NULL, NULL, 1, 264, 2008, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (311, N'Comment faire l''amour avec un nègre sans se fatiguer', NULL, NULL, NULL, 1, 176, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (312, N'Pays sans chapeau', NULL, N'Compact', NULL, 1, 276, 2007, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (313, N'Le charme des après-midi sans fin', NULL, NULL, NULL, 1, 217, 1997, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (314, N'Je suis fatigué', NULL, NULL, NULL, 1, 142, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (315, N'J''écris comme je vis', NULL, N'Compact', NULL, 1, 258, 2010, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 13, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (316, N'L''art presque perdu de ne rien faire', NULL, NULL, NULL, 1, 390, 2012, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (317, N'Cette grenade dans la main du jeune Nègre est-elle une arme ou un fruit?', NULL, NULL, NULL, 1, 354, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (318, N'L''énigme du retour', NULL, NULL, NULL, 1, 287, 2009, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (319, N'Celui qui chuchotait dans les ténèbres', NULL, N'Folio', NULL, 1, 122, 2008, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 3, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (320, N'Croc-Blanc', NULL, N'Le Livre de poche', NULL, 1, 285, 2008, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (321, N'L''Appel de la forêt', NULL, N'Le Livre de poche', NULL, 1, 158, 2000, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (322, N'Les Bienveillantes', NULL, N'Folio', NULL, 1, 1401, 2008, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (323, N'Pourquoi j''ai mangé mon père', NULL, NULL, NULL, 1, 183, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (324, N'Bethsabée', NULL, N'Babel', NULL, 1, 279, 1989, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (325, N'Comment programmer en C++', NULL, NULL, NULL, 1, 1176, 2000, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 11, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (326, N'La route', NULL, NULL, NULL, 1, 245, 2008, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (327, N'Le Horla', NULL, NULL, NULL, 1, 96, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 3, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (328, N'Pierre et Jean', NULL, N'Folio', NULL, 1, 282, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (329, N'La Maison Tellier et autres contes', NULL, N'Parcours d''une œuvre', NULL, 1, 255, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 3, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (330, N'Pierre et Jean', NULL, N'Parcours d''une œuvre', NULL, 1, 271, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (331, N'Le jeu de l''amour et du hasard', NULL, N'Édition avec dossier', NULL, 1, 160, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 10, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (332, N'Passages obligés', NULL, NULL, NULL, 1, 269, 2006, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 13, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (333, N'A heavy metal memoir', NULL, NULL, NULL, 2, 346, 2010, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 14, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (334, N'Les femmes savantes', NULL, N'Le Livre de poche', NULL, 1, 186, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 10, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (335, N'Les milles et une nuit', NULL, N'Folio', NULL, 1, 662, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 8, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (336, N'Le malade imaginaire', NULL, N'Classiques', NULL, 1, 191, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 10, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (337, N'L''homme rapaillé', NULL, N'Poésie', NULL, 1, 252, 1996, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 9, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (338, N'Fortune de France', NULL, N'Le Livre de poche', NULL, 1, 430, 1992, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (339, N'La musique', NULL, N'Folio', NULL, 1, 315, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (340, N'Les filles du juge', NULL, N'Polar', NULL, 1, 211, 1995, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (341, N'Dojoji et autres nouvelles', NULL, N'Folio', NULL, 1, 127, 2010, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 3, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (342, N'Papillon', NULL, N'Folio', NULL, 1, 117, 2008, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (343, N'Confession d''une jeune fille', NULL, N'Folio', NULL, 1, 132, 2007, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (344, N'Pelléas et Mélisandre', NULL, NULL, NULL, 1, 106, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (345, N'Mercure', NULL, N'Le Livre de poche', NULL, 1, 189, 1998, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (346, N'Cosmétique de l''ennemi', NULL, N'Le Livre de poche', NULL, 1, 123, 2008, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (347, N'Péplum', NULL, N'Le Livre de poche', NULL, 1, 154, 2006, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (348, N'Métaphysique des tubes', NULL, N'Le Livre de poche', NULL, 1, 157, 2000, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (349, N'Hygiène de l''assassin', NULL, N'Le Livre de poche', NULL, 1, 181, 2000, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (350, N'Journal d''Hirondelle', NULL, NULL, NULL, 1, 139, 2007, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (351, N'Ni d''Ève ni d''Adam', NULL, NULL, NULL, 1, 245, 2007, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (352, N'Les combustiles', NULL, N'Le Livre de poche', NULL, 1, 89, 1994, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 10, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (353, N'Acide sulfurique', NULL, N'Le Livre de poche', NULL, 1, 213, 2007, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 12, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (354, N'Le Sabotage amoureux', NULL, N'Le Livre de poche', NULL, 1, 124, 1993, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (355, N'Robert des noms propres', NULL, NULL, NULL, 1, 171, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (356, N'Le huit', NULL, NULL, NULL, 1, 865, 1998, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (357, N'L''Heptaméron', NULL, N'Folio', NULL, 1, 753, 2004, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (358, N'La vénitienne', NULL, N'Folio', NULL, 1, 250, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (359, N'On ne badine pas avec l''amour', NULL, N'Le Livre de poche', NULL, 1, 185, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (360, N'1984', NULL, N'Folio', NULL, 1, 439, 1977, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (361, N'La ballade de l''impossible', NULL, NULL, NULL, 1, 446, 2009, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (362, N'De l''autre côté du monde', NULL, NULL, NULL, 1, 345, 2003, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (363, N'1001 trucs autour de la maison', NULL, NULL, NULL, 1, 351, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 11, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (364, N'La fée Carabine', NULL, N'Folio', NULL, 1, 310, 1987, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (365, N'Comme un roman', NULL, N'Folio', NULL, 1, 198, 2009, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (366, N'Monsieur Malaussène', NULL, N'Folio', NULL, 1, 645, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (367, N'La petite marchande de prose', NULL, N'Folio', NULL, 1, 403, 2000, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (368, N'Merci - Mes italiennes', NULL, N'Folio', NULL, 1, 284, 2006, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (369, N'Le mois le plus cruel', NULL, N'Québec', NULL, 1, 431, 2011, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (370, N'Le Satiricon', NULL, N'Folio', NULL, 1, 249, 2003, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (371, N'Humour et poésie - 30 poètes québécois', NULL, NULL, NULL, 1, 165, 2004, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 9, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (372, N'Les murailles de feu', NULL, NULL, NULL, 1, 429, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (373, N'Aventures d''Arthur Gordon Pym', NULL, NULL, NULL, 1, 247, 1975, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (374, N'Le cœur de la baleine bleue', NULL, NULL, NULL, 1, 201, 1970, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (375, N'Les grandes marées', NULL, NULL, NULL, 1, 209, 1995, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (376, N'La tournée d''automne', NULL, NULL, NULL, 1, 191, 1996, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (377, N'Le vieux chagrin', NULL, NULL, NULL, 1, 189, 1995, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (378, N'Prévost', NULL, NULL, NULL, 1, 273, 1995, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (379, N'Les Aurores montréales', NULL, N'Compact', NULL, 1, 239, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 3, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (380, N'Du côté de chez Swann', NULL, N'Folio', NULL, 1, 527, 2003, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (381, N'Phèdre', NULL, NULL, NULL, 1, 215, 2000, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 10, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (382, N'Iphigénie', NULL, NULL, NULL, 1, 221, 1998, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 10, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (383, N'Malpertuis', NULL, NULL, NULL, 1, 266, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (384, N'Or', NULL, N'Fantasy', NULL, 1, 263, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (385, N'Lame', NULL, N'Fantasy', NULL, 1, 243, 2008, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (386, N'L''Aigle des profondeurs', NULL, N'Fantasy', NULL, 1, 307, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (387, N'Le Rêveur dans la citadelle', NULL, N'Fantasy', NULL, 1, 176, 1998, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (388, N'L''Archipel Noir', NULL, N'Fantasy', NULL, 1, 179, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (389, N'Du contrat social', NULL, NULL, NULL, 1, 256, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 4, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (390, N'Ces enfants de ma vie', NULL, N'Compact', NULL, 1, 185, 1993, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (391, N'Globalia', NULL, N'Folio', NULL, 1, 494, 2004, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (392, N'The animator''s survival kit', NULL, NULL, NULL, 2, 342, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 11, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (393, N'Level Up - The guide to great video game design', NULL, NULL, NULL, 2, 492, 2010, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 11, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (394, N'Emergence - From Chaos to Order', NULL, NULL, NULL, 2, 258, 1998, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 11, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (395, N'Level design for games - Creating compelling game experiences', NULL, NULL, NULL, 2, 339, 2006, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 11, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (396, N'Story', NULL, NULL, NULL, 2, 466, 1998, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 11, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (397, N'A theory of fun for game design', NULL, NULL, NULL, 2, 244, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 11, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (398, N'The art of Game Design', NULL, NULL, NULL, 2, 489, 2008, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 11, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (399, N'Le vide', NULL, NULL, NULL, 1, 642, 2007, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (400, N'Chronoreg', NULL, NULL, NULL, 1, 468, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (401, N'Les mauvaises nouvelles', NULL, NULL, NULL, 1, 174, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 3, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (402, N'Théâtre complet', NULL, NULL, NULL, 1, 371, 1964, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 10, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (403, N'L''Immaculée Conception', NULL, N'Compact', NULL, 1, 342, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (404, N'Des souris et des hommes', NULL, N'Folio', NULL, 1, 175, 2000, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (405, N'Le Rouge et le Noir', NULL, NULL, NULL, 1, 573, 1964, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (406, N'Le Cas étrange du Dr Jekyll et de M. Hyde', NULL, NULL, NULL, 1, 152, 1994, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (407, N'Le Petit Prince', NULL, N'Folio', NULL, 1, 119, 2007, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (408, N'Le Parfum', NULL, NULL, NULL, 1, 280, 1986, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (409, N'Frankenstein', NULL, NULL, NULL, 1, 273, 1994, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (410, N'Le liseur', NULL, N'Folio', NULL, 1, 243, 1996, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (411, N'L''évangile selon pilate', NULL, NULL, NULL, 1, 284, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (412, N'La secte des égoïstes', NULL, NULL, NULL, 1, 125, 1994, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (413, N'Monsieur Ibrahim et les Fleurs du Coran', NULL, NULL, NULL, 1, 109, 2004, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (414, N'Hôtel des deux mondes', NULL, NULL, NULL, 1, 186, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 10, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (415, N'Le tunnel', NULL, NULL, NULL, 1, 140, 1995, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (416, N'Ombres sereines', NULL, NULL, NULL, 1, 110, 2009, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 3, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (417, N'Les mains sales', NULL, N'Folio', NULL, 1, 247, 1998, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 10, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (418, N'La nausée', NULL, N'Folio', NULL, 1, 250, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (419, N'Roméo et Juliette', NULL, NULL, NULL, 1, 96, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 10, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (420, N'Il faut qu''on parle de Kevin', NULL, NULL, NULL, 1, 607, 2003, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (421, N'Le trésor de Rachkam le Rouge', NULL, NULL, NULL, 1, 62, 1973, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (422, N'Le secret de la Licorne', NULL, NULL, NULL, 1, 62, 1974, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (423, N'Les bijoux de la Castafiore', NULL, NULL, NULL, 1, 62, 1963, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (424, N'Les 7 boules de cristal', NULL, NULL, NULL, 1, 62, 1975, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (425, N'Le temple du soleil', NULL, NULL, NULL, 1, 62, 1977, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (426, N'L''île noire', NULL, NULL, NULL, 1, 62, 1984, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (427, N'Quantrill', 36, NULL, NULL, 1, 46, 1994, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (428, N'Les cinq salopards', 21, NULL, NULL, 1, 46, 1984, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (429, N'Mariage à Fort Bow', 49, NULL, NULL, 1, 46, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (430, N'La Rose de Bantry', 30, NULL, NULL, 1, 46, 1989, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (431, N'Vertes années', 34, NULL, NULL, 1, 46, 1992, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (432, N'Du nord au sud', 2, NULL, NULL, 1, 46, 1990, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (433, N'La prison de Robertsonville', 6, NULL, NULL, 1, 46, 1984, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (434, N'Les hommes de pailles', 40, NULL, NULL, 1, 46, 1998, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (435, N'El padre', 17, NULL, NULL, 1, 46, 1991, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (436, N'Des bleus et du blues', 43, NULL, NULL, 1, 46, 2000, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (437, N'Les planqués', 38, NULL, NULL, 1, 46, 1996, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (438, N'Rumberley', 15, NULL, NULL, 1, 46, 1984, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (439, N'L''or du Québec', 26, NULL, NULL, 1, 46, 1993, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (440, N'Grumbler et fils', 33, NULL, NULL, 1, 46, 1992, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (441, N'Bull Run', 27, NULL, NULL, 1, 46, 1987, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (442, N'Des bleus en noir et blanc', 11, NULL, NULL, 1, 46, 1984, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (443, N'Captain Nepel', 35, NULL, NULL, 1, 46, 1993, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (444, N'L''oreille de Lincoln', 44, NULL, NULL, 1, 46, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (445, N'Le David', 19, NULL, NULL, 1, 46, 1991, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (446, N'Les Nancy Hart', 47, NULL, NULL, 1, 46, 2004, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (447, N'Duel dans la Manche', 37, N'Pirate', NULL, 1, 46, 2003, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (448, N'Puppet Blues', 39, N'Pirate', NULL, 1, 46, 2004, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 2, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (449, N'Le joueur d''échecs', 7309, NULL, NULL, 1, 95, 1991, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (450, N'La révolution des fourmis', 14445, NULL, NULL, 1, 670, 1996, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (451, N'Les fourmis', 9615, NULL, NULL, 1, 312, 1991, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (452, N'L''île du Docteur Moreau', 557, N'Folio', NULL, 1, 191, 2000, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (453, N'Les voyageurs malgré eux', NULL, N'Science-Fiction', NULL, 1, 560, 2009, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (454, N'Le silence de la cité', NULL, N'Science-Fiction', NULL, 1, 334, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (455, N'Journal d''un écrivain', 3225, NULL, NULL, 1, 573, 2003, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (456, N'Le portrait de Dorian Gray', 2360, N'Folio classique', NULL, 1, 408, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (457, N'Le jour des fourmis', 13724, NULL, NULL, 1, 499, 2004, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (458, N'Thérèse Raquin', 229, NULL, NULL, 1, 253, 2005, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (459, N'La mort d''Olivier Bécaille', 42, N'Texte intégral', NULL, 1, 128, 2000, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (460, N'Thérèse Raquin', 3517, N'Folio classique', NULL, 1, 344, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (461, N'Mémoires d''un rat', NULL, NULL, NULL, 1, 223, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (462, N'L''ombre du vent', NULL, NULL, NULL, 1, 636, 2004, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (463, N'Le loup bleu', NULL, NULL, NULL, 1, 305, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (464, N'À toi', NULL, NULL, NULL, 1, 167, 2011, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (465, N'L''Ingénu', 180, N'Texte intégral', NULL, 1, 154, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (466, N'Candide', 31, N'Texte intégral', NULL, 1, 95, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (467, N'Chatterton', NULL, N'Texte intégral', NULL, 1, 127, 1993, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 10, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (468, N'L''écume des jours', 14087, NULL, NULL, 1, 316, 2007, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (469, N'Le tour du monde en quatre-vingts jours', 521, N'Folio Junior', NULL, 1, 333, 1994, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (470, N'L''univers, les dieux, les hommes', 977, NULL, NULL, 1, 247, 1999, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 4, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (471, N'L''ami retrouvé', 1463, N'Folio', NULL, 1, 122, 2006, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (472, N'À toi, pour toujours, ta Marie-Lou', NULL, NULL, NULL, 1, 94, 2002, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 10, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (473, N'Tous les chemins mènent à l''ombre', NULL, NULL, NULL, 1, 136, 2009, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 3, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (474, N'Du mercure sous la langue', NULL, NULL, NULL, 1, 130, 2001, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (475, N'Le souffle de l''harmattan', NULL, NULL, NULL, 1, 240, 2007, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookNumber], [BookCollection], [BookSerie], [BookLanguage], [PageNumber], [PublishedYear], [DateAdded], [Score], [TimesConsulted], [IsTranslated], [BookStatus], [CategoryID], [UserID]) VALUES (476, N'Trois fils et un ange', NULL, NULL, NULL, 1, 312, 2009, CAST(N'2015-11-14' AS Date), 0, 0, NULL, 0, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[BookByEditor] ON 

GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (1, 4, 1)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (2, 5, 2)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (3, 6, 2)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (4, 7, 2)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (5, 8, 2)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (6, 9, 2)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (7, 10, 2)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (8, 11, 2)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (9, 12, 2)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (10, 13, 2)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (11, 14, 2)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (12, 15, 2)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (13, 16, 2)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (14, 17, 2)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (15, 18, 2)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (16, 19, 2)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (17, 20, 2)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (18, 21, 2)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (19, 22, 2)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (20, 23, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (21, 24, 4)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (22, 25, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (23, 26, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (24, 27, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (25, 28, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (26, 29, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (27, 30, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (28, 31, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (29, 32, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (30, 33, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (31, 34, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (32, 35, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (33, 36, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (34, 37, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (35, 38, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (36, 39, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (37, 40, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (38, 41, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (39, 42, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (40, 43, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (41, 44, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (42, 45, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (43, 46, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (44, 47, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (45, 48, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (46, 49, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (47, 50, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (48, 51, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (49, 52, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (50, 53, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (51, 54, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (52, 55, 6)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (53, 56, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (54, 57, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (55, 58, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (56, 59, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (57, 60, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (58, 61, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (59, 62, 6)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (60, 63, 6)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (61, 64, 6)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (62, 65, 6)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (63, 66, 6)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (64, 67, 6)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (65, 68, 6)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (66, 69, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (67, 70, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (68, 71, 8)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (69, 72, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (70, 73, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (71, 74, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (72, 75, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (73, 76, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (74, 77, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (75, 78, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (76, 79, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (77, 80, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (78, 81, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (79, 82, 9)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (80, 83, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (81, 84, 10)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (82, 85, 8)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (83, 86, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (84, 87, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (85, 88, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (86, 89, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (87, 90, 11)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (88, 91, 12)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (89, 92, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (90, 93, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (91, 94, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (92, 95, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (93, 96, 14)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (94, 97, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (95, 98, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (96, 99, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (97, 100, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (98, 101, 15)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (99, 102, 15)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (100, 103, 15)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (101, 104, 15)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (102, 105, 15)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (103, 106, 16)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (104, 107, 16)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (105, 108, 16)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (106, 109, 16)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (107, 110, 16)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (108, 111, 15)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (109, 112, 17)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (110, 113, 18)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (111, 114, 8)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (112, 115, 19)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (113, 116, 20)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (114, 117, 20)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (115, 118, 20)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (116, 119, 20)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (117, 120, 21)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (118, 121, 21)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (119, 122, 21)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (120, 123, 22)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (121, 124, 23)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (122, 125, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (123, 126, 16)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (124, 127, 16)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (125, 128, 25)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (126, 129, 26)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (127, 130, 26)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (128, 131, 8)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (129, 132, 26)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (130, 133, 10)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (131, 134, 10)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (132, 135, 27)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (133, 136, 28)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (134, 137, 29)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (135, 138, 30)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (136, 139, 30)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (137, 140, 12)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (138, 141, 12)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (139, 142, 12)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (140, 143, 31)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (141, 144, 32)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (142, 145, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (143, 146, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (144, 147, 29)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (145, 148, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (146, 149, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (147, 150, 29)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (148, 151, 33)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (149, 152, 34)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (150, 153, 35)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (151, 154, 36)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (152, 155, 36)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (153, 156, 36)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (154, 157, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (155, 158, 37)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (156, 159, 38)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (157, 160, 39)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (158, 161, 33)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (159, 162, 33)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (160, 163, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (161, 164, 40)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (162, 165, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (163, 166, 41)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (164, 167, 35)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (165, 168, 42)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (166, 169, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (167, 170, 29)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (168, 171, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (169, 172, 33)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (170, 173, 43)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (171, 174, 44)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (172, 175, 33)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (173, 176, 45)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (174, 177, 33)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (175, 178, 46)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (176, 179, 47)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (177, 180, 48)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (178, 181, 31)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (179, 182, 31)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (180, 183, 49)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (181, 184, 31)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (182, 185, 50)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (183, 186, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (184, 187, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (185, 188, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (186, 189, 51)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (187, 190, 51)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (188, 191, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (189, 192, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (190, 193, 52)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (191, 194, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (192, 195, 52)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (193, 196, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (194, 197, 53)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (195, 198, 54)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (196, 199, 55)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (197, 200, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (198, 201, 45)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (199, 202, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (200, 203, 31)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (201, 204, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (202, 205, 56)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (203, 206, 57)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (204, 207, 58)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (205, 208, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (206, 209, 34)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (207, 210, 52)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (208, 211, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (209, 212, 52)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (210, 213, 52)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (211, 214, 54)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (212, 215, 52)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (213, 216, 59)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (214, 217, 60)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (215, 218, 43)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (216, 219, 37)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (217, 220, 61)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (218, 221, 62)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (219, 222, 63)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (220, 223, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (221, 224, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (222, 225, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (223, 226, 10)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (224, 227, 64)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (225, 228, 31)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (226, 229, 64)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (227, 230, 65)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (228, 231, 64)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (229, 232, 52)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (230, 233, 56)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (231, 234, 36)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (232, 235, 66)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (233, 236, 52)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (234, 237, 19)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (235, 238, 19)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (236, 239, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (237, 240, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (238, 241, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (239, 242, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (240, 243, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (241, 244, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (242, 245, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (243, 246, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (244, 247, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (245, 248, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (246, 249, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (247, 250, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (248, 251, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (249, 252, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (250, 253, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (251, 254, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (252, 255, 3)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (253, 256, 27)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (254, 257, 67)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (255, 258, 67)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (256, 259, 67)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (257, 260, 67)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (258, 261, 67)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (259, 262, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (260, 263, 51)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (261, 264, 36)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (262, 265, 67)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (263, 266, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (264, 267, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (265, 268, 51)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (266, 269, 12)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (267, 270, 68)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (268, 271, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (269, 272, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (270, 273, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (271, 274, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (272, 275, 69)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (273, 276, 69)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (274, 277, 12)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (275, 278, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (276, 279, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (277, 280, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (278, 281, 29)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (279, 282, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (280, 283, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (281, 284, 70)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (282, 285, 71)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (283, 286, 29)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (284, 287, 51)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (285, 288, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (286, 289, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (287, 290, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (288, 291, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (289, 292, 36)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (290, 293, 51)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (291, 294, 72)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (292, 295, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (293, 296, 70)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (294, 297, 6)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (295, 298, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (296, 299, 6)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (297, 300, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (298, 301, 6)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (299, 302, 6)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (300, 303, 6)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (301, 304, 6)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (302, 305, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (303, 306, 73)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (304, 307, 69)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (305, 308, 74)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (306, 309, 74)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (307, 310, 36)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (308, 311, 56)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (309, 312, 36)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (310, 313, 75)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (311, 314, 75)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (312, 315, 36)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (313, 316, 36)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (314, 317, 59)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (315, 318, 36)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (316, 319, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (317, 320, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (318, 321, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (319, 322, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (320, 323, 50)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (321, 324, 70)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (322, 325, 76)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (323, 326, 77)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (324, 327, 29)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (325, 328, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (326, 329, 32)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (327, 330, 32)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (328, 331, 52)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (329, 332, 78)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (330, 333, 79)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (331, 334, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (332, 335, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (333, 336, 45)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (334, 337, 56)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (335, 338, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (336, 339, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (337, 340, 80)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (338, 341, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (339, 342, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (340, 343, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (341, 344, 81)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (342, 345, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (343, 346, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (344, 347, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (345, 348, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (346, 349, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (347, 350, 19)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (348, 351, 19)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (349, 352, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (350, 353, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (351, 354, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (352, 355, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (353, 356, 19)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (354, 357, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (355, 358, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (356, 359, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (357, 360, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (358, 361, 72)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (359, 362, 78)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (360, 363, 82)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (361, 364, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (362, 365, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (363, 366, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (364, 367, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (365, 368, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (366, 369, 52)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (367, 370, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (368, 371, 83)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (369, 372, 84)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (370, 373, 85)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (371, 374, 86)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (372, 375, 30)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (373, 376, 30)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (374, 377, 30)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (375, 378, 52)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (376, 379, 36)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (377, 380, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (378, 381, 32)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (379, 382, 52)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (380, 383, 87)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (381, 384, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (382, 385, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (383, 386, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (384, 387, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (385, 388, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (386, 389, 52)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (387, 390, 36)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (388, 391, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (389, 392, 88)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (390, 393, 89)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (391, 394, 90)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (392, 395, 91)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (393, 396, 92)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (394, 397, 93)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (395, 398, 94)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (396, 399, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (397, 400, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (398, 401, 95)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (399, 402, 52)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (400, 403, 36)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (401, 404, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (402, 405, 52)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (403, 406, 52)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (404, 407, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (405, 408, 31)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (406, 409, 6)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (407, 410, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (408, 411, 31)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (409, 412, 31)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (410, 413, 96)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (411, 414, 7)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (412, 415, 51)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (413, 416, 97)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (414, 417, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (415, 418, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (416, 419, 29)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (417, 420, 6)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (418, 421, 98)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (419, 422, 98)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (420, 423, 98)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (421, 424, 98)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (422, 425, 98)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (423, 426, 98)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (424, 427, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (425, 428, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (426, 429, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (427, 430, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (428, 431, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (429, 432, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (430, 433, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (431, 434, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (432, 435, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (433, 436, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (434, 437, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (435, 438, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (436, 439, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (437, 440, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (438, 441, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (439, 442, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (440, 443, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (441, 444, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (442, 445, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (443, 446, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (444, 447, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (445, 448, 5)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (446, 449, 31)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (447, 450, 31)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (448, 451, 31)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (449, 452, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (450, 453, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (451, 454, 13)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (452, 455, 72)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (453, 456, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (454, 457, 31)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (455, 458, 52)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (456, 459, 29)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (457, 460, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (458, 461, 31)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (459, 462, 31)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (460, 463, 99)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (461, 464, 78)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (462, 465, 29)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (463, 466, 29)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (464, 467, 100)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (465, 468, 31)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (466, 469, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (467, 470, 51)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (468, 471, 24)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (469, 472, 101)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (470, 473, 97)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (471, 474, 102)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (472, 475, 103)
GO
INSERT [dbo].[BookByEditor] ([BookByEditorId], [BookID], [EditorID]) VALUES (473, 476, 104)
GO
SET IDENTITY_INSERT [dbo].[BookByEditor] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [TimesCategoryConsulted], [DateAdded]) VALUES (1, N'Roman', 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [TimesCategoryConsulted], [DateAdded]) VALUES (2, N'Bandes dessinées', 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [TimesCategoryConsulted], [DateAdded]) VALUES (3, N'Nouvelles', 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [TimesCategoryConsulted], [DateAdded]) VALUES (4, N'Essai', 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [TimesCategoryConsulted], [DateAdded]) VALUES (5, N'Compilation', 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [TimesCategoryConsulted], [DateAdded]) VALUES (6, N'Enfants', 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [TimesCategoryConsulted], [DateAdded]) VALUES (7, N'Documentaire', 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [TimesCategoryConsulted], [DateAdded]) VALUES (8, N'Contes', 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [TimesCategoryConsulted], [DateAdded]) VALUES (9, N'Poésie', 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [TimesCategoryConsulted], [DateAdded]) VALUES (10, N'Théâtre', 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [TimesCategoryConsulted], [DateAdded]) VALUES (11, N'Référence', 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [TimesCategoryConsulted], [DateAdded]) VALUES (12, N'Fables', 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [TimesCategoryConsulted], [DateAdded]) VALUES (13, N'Entretien', 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [TimesCategoryConsulted], [DateAdded]) VALUES (14, N'Biographie', 0, CAST(N'2015-11-14' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Editor] ON 

GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (1, N'Editions Anne Carrière', CAST(N'2015-11-14 14:32:06.303' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (2, N'Hors Collection', CAST(N'2015-11-14 14:32:31.980' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (3, N'Dargaud', CAST(N'2015-11-14 14:32:40.157' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (4, N'Lombard', CAST(N'2015-11-14 14:32:40.170' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (5, N'Dupuis', CAST(N'2015-11-14 14:32:40.323' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (6, N'J''ai lu', CAST(N'2015-11-14 14:32:40.710' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (7, N'Albin Michel', CAST(N'2015-11-14 14:32:40.950' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (8, N'Club France Loisirs', CAST(N'2015-11-14 14:32:41.013' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (9, N'JCLattès', CAST(N'2015-11-14 14:32:41.233' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (10, N'Robert Laffont', CAST(N'2015-11-14 14:32:41.277' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (11, N'RoC', CAST(N'2015-11-14 14:32:41.453' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (12, N'XYZ Éditeur', CAST(N'2015-11-14 14:32:41.483' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (13, N'Alire', CAST(N'2015-11-14 14:32:41.510' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (14, N'Club Québec Loisirs', CAST(N'2015-11-14 14:32:41.603' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (15, N'Fleuve noir', CAST(N'2015-11-14 14:32:41.720' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (16, N'Wizards of the coast', CAST(N'2015-11-14 14:32:41.840' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (17, N'Nelson Doubleday', CAST(N'2015-11-14 14:32:41.987' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (18, N'Houghton Mifflin Company Boston', CAST(N'2015-11-14 14:32:42.020' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (19, N'France Loisirs', CAST(N'2015-11-14 14:32:42.087' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (20, N'Brimar', CAST(N'2015-11-14 14:32:42.120' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (21, N'Grolier ltée', CAST(N'2015-11-14 14:32:42.240' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (22, N'Livres-Loisirs ltée', CAST(N'2015-11-14 14:32:42.320' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (23, N'Lito', CAST(N'2015-11-14 14:32:42.353' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (24, N'Gallimard', CAST(N'2015-11-14 14:32:42.390' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (25, N'Barels', CAST(N'2015-11-14 14:32:42.507' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (26, N'Plon', CAST(N'2015-11-14 14:32:42.547' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (27, N'Ballantine books', CAST(N'2015-11-14 14:32:42.717' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (28, N'omnibus', CAST(N'2015-11-14 14:32:42.760' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (29, N'Librio', CAST(N'2015-11-14 14:32:42.817' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (30, N'Babel', CAST(N'2015-11-14 14:32:42.857' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (31, N'Le livre de poche', CAST(N'2015-11-14 14:32:43.017' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (32, N'Beauchemin', CAST(N'2015-11-14 14:32:43.067' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (33, N'Québec Amérique', CAST(N'2015-11-14 14:32:43.310' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (34, N'Les éditions de minuit', CAST(N'2015-11-14 14:32:43.357' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (35, N'Pierre Tisseyre', CAST(N'2015-11-14 14:32:43.403' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (36, N'Boréal', CAST(N'2015-11-14 14:32:43.447' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (37, N'Le Quartanier', CAST(N'2015-11-14 14:32:43.597' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (38, N'L''effet pourpre', CAST(N'2015-11-14 14:32:43.647' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (39, N'Leméac', CAST(N'2015-11-14 14:32:43.687' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (40, N'Éditions Nota Bene', CAST(N'2015-11-14 14:32:43.840' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (41, N'Leméac / Actes sud', CAST(N'2015-11-14 14:32:43.920' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (42, N'Larousse', CAST(N'2015-11-14 14:32:44.000' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (43, N'Penguin Books', CAST(N'2015-11-14 14:32:44.203' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (44, N'Stanké', CAST(N'2015-11-14 14:32:44.257' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (45, N'Hachette', CAST(N'2015-11-14 14:32:44.347' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (46, N'Laurédit inc.', CAST(N'2015-11-14 14:32:44.433' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (47, N'Jungle', CAST(N'2015-11-14 14:32:44.477' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (48, N'Soleil Celtique', CAST(N'2015-11-14 14:32:44.530' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (49, N'Éditions V.D.B.', CAST(N'2015-11-14 14:32:44.693' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (50, N'Pocket', CAST(N'2015-11-14 14:32:44.773' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (51, N'Points', CAST(N'2015-11-14 14:32:44.937' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (52, N'GF Flammarion', CAST(N'2015-11-14 14:32:45.113' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (53, N'L''instant même', CAST(N'2015-11-14 14:32:45.300' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (54, N'Mille et une nuits', CAST(N'2015-11-14 14:32:45.357' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (55, N'Anne carrière', CAST(N'2015-11-14 14:32:45.413' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (56, N'Typo', CAST(N'2015-11-14 14:32:45.673' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (57, N'Bookking International', CAST(N'2015-11-14 14:32:45.730' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (58, N'Les éditions Large Vision de l''Outaouais', CAST(N'2015-11-14 14:32:45.783' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (59, N'VLB éditeur', CAST(N'2015-11-14 14:32:46.183' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (60, N'Grasset et Fasquelle', CAST(N'2015-11-14 14:32:46.243' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (61, N'Focal Press', CAST(N'2015-11-14 14:32:46.410' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (62, N'Groundwood', CAST(N'2015-11-14 14:32:46.477' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (63, N'Delmar Cengage Learning', CAST(N'2015-11-14 14:32:46.533' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (64, N'Bokking International', CAST(N'2015-11-14 14:32:46.827' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (65, N'Groupe Beauchemin', CAST(N'2015-11-14 14:32:47.003' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (66, N'Payot et Rivages', CAST(N'2015-11-14 14:32:47.257' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (67, N'Presses Aventures', CAST(N'2015-11-14 14:32:48.327' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (68, N'Signet international edition', CAST(N'2015-11-14 14:32:49.017' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (69, N'Éditions du seuil', CAST(N'2015-11-14 14:32:49.280' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (70, N'Léméac/Actes Sud', CAST(N'2015-11-14 14:32:49.807' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (71, N'Le cercle des bibliophiles', CAST(N'2015-11-14 14:32:49.883' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (72, N'10/18', CAST(N'2015-11-14 14:32:50.427' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (73, N'Éditions Sonatine', CAST(N'2015-11-14 14:32:51.173' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (74, N'Mémoire d''encrier', CAST(N'2015-11-14 14:32:51.323' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (75, N'PCL / petite collection lanctôt', CAST(N'2015-11-14 14:32:51.610' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (76, N'Éditions Raynald Goulet', CAST(N'2015-11-14 14:32:52.397' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (77, N'Éditions de l''Olivier', CAST(N'2015-11-14 14:32:52.493' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (78, N'Libre Expression', CAST(N'2015-11-14 14:32:52.943' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (79, N'HarperCollins', CAST(N'2015-11-14 14:32:53.053' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (80, N'Sextant', CAST(N'2015-11-14 14:32:53.547' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (81, N'Éditions Labor', CAST(N'2015-11-14 14:32:53.830' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (82, N'Sélection du Reader''s Digest', CAST(N'2015-11-14 14:32:55.123' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (83, N'Écrits des forges', CAST(N'2015-11-14 14:32:55.720' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (84, N'L''Archipel', CAST(N'2015-11-14 14:32:55.817' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (85, N'Bibliothèque Marabout', CAST(N'2015-11-14 14:32:55.920' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (86, N'Éditions du jour', CAST(N'2015-11-14 14:32:56.023' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (87, N'Espace Nordique', CAST(N'2015-11-14 14:32:56.710' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (88, N'Faber and Faber', CAST(N'2015-11-14 14:32:57.420' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (89, N'Wiley', CAST(N'2015-11-14 14:32:57.533' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (90, N'Addison Wesley', CAST(N'2015-11-14 14:32:57.643' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (91, N'New Riders', CAST(N'2015-11-14 14:32:57.760' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (92, N'Methuen', CAST(N'2015-11-14 14:32:57.870' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (93, N'Paraglyph Press', CAST(N'2015-11-14 14:32:57.980' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (94, N'Morgan Kaufmann Publishers', CAST(N'2015-11-14 14:32:58.097' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (95, N'JC Lattès', CAST(N'2015-11-14 14:32:58.377' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (96, N'Magnard', CAST(N'2015-11-14 14:32:59.403' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (97, N'Grenouille bleue', CAST(N'2015-11-14 14:32:59.657' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (98, N'Casterman', CAST(N'2015-11-14 14:33:00.120' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (99, N'Picquier Poche', CAST(N'2015-11-14 14:33:04.040' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (100, N'Univers des lettres Bordas', CAST(N'2015-11-14 14:33:04.440' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (101, N'Léméac', CAST(N'2015-11-14 14:33:04.943' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (102, N'Les allusifs', CAST(N'2015-11-14 14:33:05.177' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (103, N'Archambault', CAST(N'2015-11-14 14:33:05.310' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
INSERT [dbo].[Editor] ([EditorID], [EditorName], [DateCreated], [EditorScore], [DateAdded], [TimeEditorConsulted]) VALUES (104, N'Les éditions de l''homme', CAST(N'2015-11-14 14:33:05.420' AS DateTime), 0, CAST(N'2015-11-14' AS Date), 0)
GO
SET IDENTITY_INSERT [dbo].[Editor] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategory] ON 

GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [TimesSubCatConsulted], [DateAdded]) VALUES (1, NULL, 1, 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [TimesSubCatConsulted], [DateAdded]) VALUES (2, N'Petit format', 2, 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [TimesSubCatConsulted], [DateAdded]) VALUES (3, NULL, 3, 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [TimesSubCatConsulted], [DateAdded]) VALUES (4, NULL, 4, 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [TimesSubCatConsulted], [DateAdded]) VALUES (5, NULL, 5, 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [TimesSubCatConsulted], [DateAdded]) VALUES (6, NULL, 6, 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [TimesSubCatConsulted], [DateAdded]) VALUES (7, NULL, 7, 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [TimesSubCatConsulted], [DateAdded]) VALUES (8, N'Poche', 8, 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [TimesSubCatConsulted], [DateAdded]) VALUES (9, NULL, 11, 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [TimesSubCatConsulted], [DateAdded]) VALUES (10, N'Dédicacé', 13, 0, CAST(N'2015-11-14' AS Date))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [TimesSubCatConsulted], [DateAdded]) VALUES (11, NULL, 14, 0, CAST(N'2015-11-14' AS Date))
GO
SET IDENTITY_INSERT [dbo].[SubCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAccount] ON 

GO
INSERT [dbo].[UserAccount] ([AccountID], [DateCreated], [DateLastLog], [UserAccountName], [AccountScore], [Reputation], [UserID], [UserFavoritesID]) VALUES (1, CAST(N'2015-11-14 14:37:45.187' AS DateTime), CAST(N'2015-11-14 14:37:45.187' AS DateTime), N'Herve', 0, N'Neutral', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
GO
SET IDENTITY_INSERT [dbo].[UserProfile] ON 

GO
INSERT [dbo].[UserProfile] ([UserId], [UserName]) VALUES (3, N'Herve')
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName]) VALUES (2, N'Hervé')
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName]) VALUES (1, N'Owner')
GO
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1, CAST(N'2015-03-15 18:13:15.740' AS DateTime), NULL, 1, NULL, 0, N'ABfK0l7+ZBnpT66tbpfkjgNGphlh2gBH7m2zeqt0iwnvsHX9ycLILZfaDYQvqb2+zQ==', CAST(N'2015-03-15 18:13:15.740' AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (2, CAST(N'2015-04-05 23:39:29.843' AS DateTime), NULL, 1, NULL, 0, N'ANutP6dssdmI287+rMBuZS4LTW0ucFctI9weiGj+JkNjhd/nVagtx+6d9/Vicx0tEQ==', CAST(N'2015-04-05 23:39:29.843' AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (3, CAST(N'2015-08-31 23:54:56.410' AS DateTime), NULL, 1, NULL, 0, N'AM5paHMkNIWNYRCBOWtBUolpiNk/hF3qbtBC+fK+cbT8HycrK6EkjI+GvpBHbtWyNA==', CAST(N'2015-08-31 23:54:56.410' AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_OAuthMembership] ([Provider], [ProviderUserId], [UserId]) VALUES (N'AsTuLu', N'AsTuLu', 3)
GO
SET IDENTITY_INSERT [dbo].[webpages_Roles] ON 

GO
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (1, N'Admin')
GO
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (3, N'Administrator')
GO
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (2, N'User')
GO
SET IDENTITY_INSERT [dbo].[webpages_Roles] OFF
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (1, 1)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (2, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (3, 3)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__UserProf__C9F2845663FEBD90]    Script Date: 5/16/2016 9:01:17 PM ******/
ALTER TABLE [dbo].[UserProfile] ADD  CONSTRAINT [UQ__UserProf__C9F2845663FEBD90] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__webpages__8A2B61607D8F38B2]    Script Date: 5/16/2016 9:01:17 PM ******/
ALTER TABLE [dbo].[webpages_Roles] ADD  CONSTRAINT [UQ__webpages__8A2B61607D8F38B2] UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BookByUser] ADD  CONSTRAINT [DF__BookByUse__DateC__20988F49]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Comment] ADD  CONSTRAINT [DF__Comment__DateAdd__32B73F84]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[Review] ADD  CONSTRAINT [DF__Review__ReviewSc__2CFE662E]  DEFAULT ((0)) FOR [ReviewScore]
GO
ALTER TABLE [dbo].[Review] ADD  CONSTRAINT [DF__Review__DateAdde__2DF28A67]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[UserFavorites] ADD  CONSTRAINT [DF__UserFavor__DateA__349F87F6]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[AuthorByBook]  WITH CHECK ADD  CONSTRAINT [FKAuthorBook] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Author] ([AuthorID])
GO
ALTER TABLE [dbo].[AuthorByBook] CHECK CONSTRAINT [FKAuthorBook]
GO
ALTER TABLE [dbo].[AuthorByBook]  WITH CHECK ADD  CONSTRAINT [FKBookAuthor] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[AuthorByBook] CHECK CONSTRAINT [FKBookAuthor]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FKCategoryBook] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FKCategoryBook]
GO
ALTER TABLE [dbo].[BookByEditor]  WITH CHECK ADD  CONSTRAINT [FKBookToEditor] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[BookByEditor] CHECK CONSTRAINT [FKBookToEditor]
GO
ALTER TABLE [dbo].[BookByEditor]  WITH CHECK ADD  CONSTRAINT [FKEditorToBook] FOREIGN KEY([EditorID])
REFERENCES [dbo].[Editor] ([EditorID])
GO
ALTER TABLE [dbo].[BookByEditor] CHECK CONSTRAINT [FKEditorToBook]
GO
ALTER TABLE [dbo].[BookByUser]  WITH CHECK ADD  CONSTRAINT [FKBookToUser] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[BookByUser] CHECK CONSTRAINT [FKBookToUser]
GO
ALTER TABLE [dbo].[BookByUser]  WITH CHECK ADD  CONSTRAINT [FKUserToBook] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserAccount] ([AccountID])
GO
ALTER TABLE [dbo].[BookByUser] CHECK CONSTRAINT [FKUserToBook]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FKCommentReview] FOREIGN KEY([ReviewID])
REFERENCES [dbo].[Review] ([ReviewID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FKCommentReview]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FKCommentUser] FOREIGN KEY([AccountID])
REFERENCES [dbo].[UserAccount] ([AccountID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FKCommentUser]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FKReviewBook] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FKReviewBook]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FKReviewUser] FOREIGN KEY([AccountID])
REFERENCES [dbo].[UserAccount] ([AccountID])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FKReviewUser]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FKSubCategoryCategory] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FKSubCategoryCategory]
GO
ALTER TABLE [dbo].[UserFavorites]  WITH CHECK ADD  CONSTRAINT [FKFavUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserAccount] ([AccountID])
GO
ALTER TABLE [dbo].[UserFavorites] CHECK CONSTRAINT [FKFavUser]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
USE [master]
GO
ALTER DATABASE [AsTuLus] SET  READ_WRITE 
GO

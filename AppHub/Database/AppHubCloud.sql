USE [master]
GO
/****** Object:  Database [AppHubCloud]    Script Date: 5/18/2017 7:58:07 AM ******/
CREATE DATABASE [AppHubCloud]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AppHubCloud', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\AppHubCloud.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AppHubCloud_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\AppHubCloud_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AppHubCloud] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AppHubCloud].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AppHubCloud] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AppHubCloud] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AppHubCloud] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AppHubCloud] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AppHubCloud] SET ARITHABORT OFF 
GO
ALTER DATABASE [AppHubCloud] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AppHubCloud] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [AppHubCloud] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AppHubCloud] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AppHubCloud] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AppHubCloud] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AppHubCloud] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AppHubCloud] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AppHubCloud] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AppHubCloud] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AppHubCloud] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AppHubCloud] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AppHubCloud] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AppHubCloud] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AppHubCloud] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AppHubCloud] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AppHubCloud] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AppHubCloud] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AppHubCloud] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AppHubCloud] SET  MULTI_USER 
GO
ALTER DATABASE [AppHubCloud] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AppHubCloud] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AppHubCloud] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AppHubCloud] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [AppHubCloud]
GO
/****** Object:  Table [dbo].[apphub_Client]    Script Date: 5/18/2017 7:58:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[apphub_Client](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Salutation] [varchar](10) NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Gender] [varchar](6) NULL,
	[Birthdate] [date] NULL,
	[Email] [varchar](50) NOT NULL,
	[Mobile] [varchar](15) NULL,
	[Phone] [varchar](15) NULL,
	[Photo] [image] NULL,
	[Password] [varchar](50) NULL,
	[EmailVerified] [bit] NULL,
	[MobileVerified] [bit] NULL,
	[CreatedById] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedById] [int] NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_apphub_Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[apphub_DataTypes]    Script Date: 5/18/2017 7:58:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[apphub_DataTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[CreatedById] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedById] [int] NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_apphub_DataTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[apphub_Fields]    Script Date: 5/18/2017 7:58:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[apphub_Fields](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Label] [varchar](50) NOT NULL,
	[Type] [int] NOT NULL,
	[PicklistValues] [text] NULL,
	[ReferenceTo] [int] NULL,
	[Formula] [text] NULL,
	[Length] [int] NULL,
	[Required] [bit] NOT NULL,
	[CascadeDelete] [bit] NULL,
	[CreatedById] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedById] [int] NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_apphub_Fields] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[apphub_Objects]    Script Date: 5/18/2017 7:58:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[apphub_Objects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Label] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[CreatedById] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedById] [int] NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_apphub_Objects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [AppHubCloud] SET  READ_WRITE 
GO

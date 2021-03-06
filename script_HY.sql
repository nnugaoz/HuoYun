USE [master]
GO
/****** Object:  Database [HuoYun]    Script Date: 2018/7/26  17:49:12 ******/
CREATE DATABASE [HuoYun]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HuoYun', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\HuoYun.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HuoYun_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\HuoYun_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HuoYun] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HuoYun].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HuoYun] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HuoYun] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HuoYun] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HuoYun] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HuoYun] SET ARITHABORT OFF 
GO
ALTER DATABASE [HuoYun] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HuoYun] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [HuoYun] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HuoYun] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HuoYun] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HuoYun] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HuoYun] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HuoYun] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HuoYun] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HuoYun] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HuoYun] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HuoYun] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HuoYun] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HuoYun] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HuoYun] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HuoYun] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HuoYun] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HuoYun] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HuoYun] SET RECOVERY FULL 
GO
ALTER DATABASE [HuoYun] SET  MULTI_USER 
GO
ALTER DATABASE [HuoYun] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HuoYun] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HuoYun] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HuoYun] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HuoYun', N'ON'
GO
USE [HuoYun]
GO
/****** Object:  Table [dbo].[T_CarFactory]    Script Date: 2018/7/26  17:49:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_CarFactory](
	[ID] [varchar](50) NOT NULL,
	[ContactMan] [varchar](50) NULL,
	[ContactPhone] [varchar](50) NULL,
	[AreaID] [varchar](50) NULL,
	[Sort] [int] NULL,
	[Img1] [varbinary](max) NULL,
	[Img2] [varbinary](max) NULL,
	[Img3] [varbinary](max) NULL,
	[Img4] [varbinary](max) NULL,
	[Img5] [varbinary](max) NULL,
	[Img6] [varbinary](max) NULL,
	[Img7] [varbinary](max) NULL,
	[Img8] [varbinary](max) NULL,
	[Img9] [varbinary](max) NULL,
	[Del] [bit] NULL,
	[EditDate] [datetime] NULL,
	[EditMan] [varchar](50) NULL,
 CONSTRAINT [PK_T_CarFactory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_CargoOwner]    Script Date: 2018/7/26  17:49:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_CargoOwner](
	[ID] [varchar](50) NOT NULL,
	[UID] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Wx] [varchar](50) NULL,
	[IDCardNo] [varchar](50) NULL,
	[HeadImg] [varbinary](max) NULL,
	[IDCardImg] [varbinary](max) NULL,
	[ComName] [varchar](200) NULL,
	[ComAreaID] [varchar](50) NULL,
	[ComAddr] [varchar](200) NULL,
	[BLImg] [varbinary](max) NULL,
	[Authenticated] [int] NULL,
	[Deposit] [decimal](18, 2) NULL,
	[Del] [bit] NULL,
	[EditDate] [datetime] NULL,
	[EditMan] [varchar](50) NULL,
 CONSTRAINT [PK_T_UserCargoOwnerInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_CarResources]    Script Date: 2018/7/26  17:49:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_CarResources](
	[ID] [varchar](50) NOT NULL,
	[UID] [varchar](50) NULL,
	[PDATE] [datetime] NULL,
	[StartAreaID] [varchar](50) NULL,
	[EndAreaID1] [varchar](50) NULL,
	[EndAreaID2] [varchar](50) NULL,
	[EndAreaID3] [varchar](50) NULL,
	[EndAreaID4] [varchar](50) NULL,
	[EndAreaID5] [varchar](50) NULL,
	[FreeDate] [datetime] NULL,
	[Del] [bit] NULL,
	[EditDate] [datetime] NULL,
	[EditMan] [varchar](50) NULL,
 CONSTRAINT [PK_T_CarResources] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Dictionary]    Script Date: 2018/7/26  17:49:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Dictionary](
	[ID] [varchar](50) NOT NULL,
	[TCode] [varchar](50) NULL,
	[Name] [varchar](200) NULL,
	[Spare1] [varchar](50) NULL,
	[Spare2] [varchar](50) NULL,
	[Spare3] [varchar](50) NULL,
	[Spare4] [varchar](50) NULL,
	[Spare5] [varchar](50) NULL,
	[Del] [bit] NULL,
	[EditDate] [datetime] NULL,
	[EditMan] [varchar](50) NULL,
 CONSTRAINT [PK_T_Dictionary] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Driver]    Script Date: 2018/7/26  17:49:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Driver](
	[ID] [varchar](50) NOT NULL,
	[UID] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Wx] [varchar](50) NULL,
	[IDCardNo] [varchar](50) NULL,
	[HeadImgPath] [varchar](200) NULL,
	[IDCardImgPath] [varchar](200) NULL,
	[DRImgPath] [varchar](200) NULL,
	[CarBrandID] [varchar](50) NULL,
	[CarTypeID] [varchar](50) NULL,
	[MYear] [datetime] NULL,
	[CarNo] [varchar](50) NULL,
	[CarLen] [decimal](18, 2) NULL,
	[CarLoad] [decimal](18, 2) NULL,
	[CarImgPath] [varchar](200) NULL,
	[DLImgPath] [varchar](200) NULL,
	[Authenticated] [int] NULL,
	[Deposit] [decimal](18, 2) NULL,
	[Del] [bit] NOT NULL,
	[EditDate] [datetime] NULL,
	[EditMan] [varchar](50) NULL,
 CONSTRAINT [PK_T_Driver] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_GoodsResources]    Script Date: 2018/7/26  17:49:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_GoodsResources](
	[ID] [varchar](50) NOT NULL,
	[UID] [varchar](50) NULL,
	[PDATE] [datetime] NULL,
	[Name] [varchar](50) NULL,
	[Len] [decimal](18, 2) NULL,
	[Width] [decimal](18, 2) NULL,
	[Height] [decimal](18, 2) NULL,
	[Diameter] [decimal](18, 2) NULL,
	[Weight] [decimal](18, 2) NULL,
	[Occupied] [decimal](18, 2) NULL,
	[GoodsTypeID] [varchar](50) NULL,
	[Img1] [varbinary](max) NULL,
	[Img2] [varbinary](max) NULL,
	[Img3] [varbinary](max) NULL,
	[Img4] [varbinary](max) NULL,
	[Img5] [varbinary](max) NULL,
	[Img6] [varbinary](max) NULL,
	[Img7] [varbinary](max) NULL,
	[Img8] [varbinary](max) NULL,
	[Img9] [varbinary](max) NULL,
	[StartAreaID] [varchar](50) NULL,
	[StartAddr] [varchar](200) NULL,
	[EndAreaID] [varchar](50) NULL,
	[EndAddr] [varchar](200) NULL,
	[CarLenReq] [decimal](18, 2) NULL,
	[LoadDate] [datetime] NULL,
	[Memo] [varchar](200) NULL,
	[Del] [bit] NULL,
	[EditDate] [datetime] NULL,
	[EditMan] [varchar](50) NULL,
 CONSTRAINT [PK_T_GoodsResources] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_LeadTheWay]    Script Date: 2018/7/26  17:49:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_LeadTheWay](
	[ID] [varchar](50) NOT NULL,
	[ContactMan] [varchar](50) NULL,
	[ContactPhone] [varchar](50) NULL,
	[AreaID] [varchar](50) NULL,
	[Sort] [int] NULL,
	[Del] [bit] NULL,
	[EditDate] [datetime] NULL,
	[EditMan] [varchar](50) NULL,
 CONSTRAINT [PK_T_LeadTheWay] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_User]    Script Date: 2018/7/26  17:49:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_User](
	[ID] [varchar](50) NOT NULL,
	[CellPhone] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Type] [int] NOT NULL,
	[Del] [bit] NOT NULL,
	[EditDate] [datetime] NOT NULL,
	[EditMan] [varchar](50) NOT NULL,
 CONSTRAINT [PK_T_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[T_Driver] ([ID], [UID], [Name], [Wx], [IDCardNo], [HeadImgPath], [IDCardImgPath], [DRImgPath], [CarBrandID], [CarTypeID], [MYear], [CarNo], [CarLen], [CarLoad], [CarImgPath], [DLImgPath], [Authenticated], [Deposit], [Del], [EditDate], [EditMan]) VALUES (N'4470470a-8a0e-478f-b951-bb78cae20795', N'e775248a-52a7-4753-8517-7368aef6409b', N'高志', N'Wx', N'2013', NULL, NULL, NULL, N'东风', N'半挂', NULL, NULL, CAST(20.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), NULL, NULL, 1, NULL, 0, NULL, NULL)
INSERT [dbo].[T_User] ([ID], [CellPhone], [Password], [Type], [Del], [EditDate], [EditMan]) VALUES (N'e671890a-f242-4d3f-a815-bc9df2102dae', N'12345678913', N'123456', 3, 0, CAST(0x0000A928010D497B AS DateTime), N'Admin')
INSERT [dbo].[T_User] ([ID], [CellPhone], [Password], [Type], [Del], [EditDate], [EditMan]) VALUES (N'e775248a-52a7-4753-8517-7368aef6409b', N'12345678912', N'1', 2, 0, CAST(0x0000A92800A35E0E AS DateTime), N'Admin')
ALTER TABLE [dbo].[T_Driver]  WITH CHECK ADD  CONSTRAINT [FK_T_Driver_T_User] FOREIGN KEY([UID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[T_Driver] CHECK CONSTRAINT [FK_T_Driver_T_User]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarFactory', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarFactory', @level2type=N'COLUMN',@level2name=N'ContactMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarFactory', @level2type=N'COLUMN',@level2name=N'ContactPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车厂区域ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarFactory', @level2type=N'COLUMN',@level2name=N'AreaID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarFactory', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车厂照片1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarFactory', @level2type=N'COLUMN',@level2name=N'Img1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车厂照片2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarFactory', @level2type=N'COLUMN',@level2name=N'Img2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车厂照片3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarFactory', @level2type=N'COLUMN',@level2name=N'Img3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车厂照片4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarFactory', @level2type=N'COLUMN',@level2name=N'Img4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车厂照片5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarFactory', @level2type=N'COLUMN',@level2name=N'Img5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车厂照片6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarFactory', @level2type=N'COLUMN',@level2name=N'Img6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车厂照片7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarFactory', @level2type=N'COLUMN',@level2name=N'Img7'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车厂照片8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarFactory', @level2type=N'COLUMN',@level2name=N'Img8'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车厂照片9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarFactory', @level2type=N'COLUMN',@level2name=N'Img9'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarFactory', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarFactory', @level2type=N'COLUMN',@level2name=N'EditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarFactory', @level2type=N'COLUMN',@level2name=N'EditMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CargoOwner', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统用户表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CargoOwner', @level2type=N'COLUMN',@level2name=N'UID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CargoOwner', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CargoOwner', @level2type=N'COLUMN',@level2name=N'Wx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CargoOwner', @level2type=N'COLUMN',@level2name=N'IDCardNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CargoOwner', @level2type=N'COLUMN',@level2name=N'HeadImg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证照片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CargoOwner', @level2type=N'COLUMN',@level2name=N'IDCardImg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CargoOwner', @level2type=N'COLUMN',@level2name=N'ComName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司所属区域ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CargoOwner', @level2type=N'COLUMN',@level2name=N'ComAreaID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司详细地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CargoOwner', @level2type=N'COLUMN',@level2name=N'ComAddr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'营业执照照片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CargoOwner', @level2type=N'COLUMN',@level2name=N'BLImg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'认证状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CargoOwner', @level2type=N'COLUMN',@level2name=N'Authenticated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'押金金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CargoOwner', @level2type=N'COLUMN',@level2name=N'Deposit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CargoOwner', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CargoOwner', @level2type=N'COLUMN',@level2name=N'EditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CargoOwner', @level2type=N'COLUMN',@level2name=N'EditMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarResources', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息发布用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarResources', @level2type=N'COLUMN',@level2name=N'UID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarResources', @level2type=N'COLUMN',@level2name=N'PDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出发地ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarResources', @level2type=N'COLUMN',@level2name=N'StartAreaID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'到达地ID1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarResources', @level2type=N'COLUMN',@level2name=N'EndAreaID1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'到达地ID2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarResources', @level2type=N'COLUMN',@level2name=N'EndAreaID2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'到达地ID3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarResources', @level2type=N'COLUMN',@level2name=N'EndAreaID3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'到达地ID4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarResources', @level2type=N'COLUMN',@level2name=N'EndAreaID4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'到达地ID5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarResources', @level2type=N'COLUMN',@level2name=N'EndAreaID5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'空车日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarResources', @level2type=N'COLUMN',@level2name=N'FreeDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarResources', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarResources', @level2type=N'COLUMN',@level2name=N'EditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_CarResources', @level2type=N'COLUMN',@level2name=N'EditMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Dictionary', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型编码1：地区信息
2：车辆品牌
3：车型
4：货物类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Dictionary', @level2type=N'COLUMN',@level2name=N'TCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Dictionary', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Dictionary', @level2type=N'COLUMN',@level2name=N'Spare1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Dictionary', @level2type=N'COLUMN',@level2name=N'Spare2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Dictionary', @level2type=N'COLUMN',@level2name=N'Spare3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Dictionary', @level2type=N'COLUMN',@level2name=N'Spare4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Dictionary', @level2type=N'COLUMN',@level2name=N'Spare5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Dictionary', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Dictionary', @level2type=N'COLUMN',@level2name=N'EditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Dictionary', @level2type=N'COLUMN',@level2name=N'EditMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统用户表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'UID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'Wx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'IDCardNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头像照片路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'HeadImgPath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证照片路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'IDCardImgPath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'驾驶证照片路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'DRImgPath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆品牌ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'CarBrandID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'CarTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出厂年份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'MYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车牌号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'CarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'CarLen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'载重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'CarLoad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆照片路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'CarImgPath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆行驶证照片路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'DLImgPath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'认证状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'Authenticated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'押金金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'Deposit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'EditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Driver', @level2type=N'COLUMN',@level2name=N'EditMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息发布用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'UID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'PDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货物名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'Len'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宽度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'Width'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'Height'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'直径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'Diameter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'重量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'Weight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'占方' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'Occupied'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货物类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'GoodsTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货物图片1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'Img1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货物图片2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'Img2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货物图片3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'Img3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货物图片4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'Img4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货物图片5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'Img5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货物图片6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'Img6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货物图片7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'Img7'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货物图片8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'Img8'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货物图片9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'Img9'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出发地ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'StartAreaID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出发地详细地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'StartAddr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'到达地ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'EndAreaID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'到达地详细地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'EndAddr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'要求车辆长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'CarLenReq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'要求装载日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'LoadDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'Memo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'EditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GoodsResources', @level2type=N'COLUMN',@level2name=N'EditMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_LeadTheWay', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_LeadTheWay', @level2type=N'COLUMN',@level2name=N'ContactMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_LeadTheWay', @level2type=N'COLUMN',@level2name=N'ContactPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'带路区域ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_LeadTheWay', @level2type=N'COLUMN',@level2name=N'AreaID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_LeadTheWay', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_LeadTheWay', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_LeadTheWay', @level2type=N'COLUMN',@level2name=N'EditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_LeadTheWay', @level2type=N'COLUMN',@level2name=N'EditMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'CellPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户类型1:管理员、2:车主、3:货主、4:信息发布、5:财务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'EditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'EditMan'
GO
USE [master]
GO
ALTER DATABASE [HuoYun] SET  READ_WRITE 
GO

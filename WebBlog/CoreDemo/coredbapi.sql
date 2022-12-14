USE [CoreBlogApiDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 29.08.2022 14:32:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 29.08.2022 14:32:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220811122924_mig_apiadd', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220811134148_mig_apiadd2', N'5.0.17')
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [Name]) VALUES (1, N'Onur Şen')
INSERT [dbo].[Employees] ([Id], [Name]) VALUES (2, N'Hatice Başkonuş')
INSERT [dbo].[Employees] ([Id], [Name]) VALUES (3, N'Ömür Şen')
INSERT [dbo].[Employees] ([Id], [Name]) VALUES (4, N'Mehmet Şen')
INSERT [dbo].[Employees] ([Id], [Name]) VALUES (5, N'Şükrü Görkem Çil')
INSERT [dbo].[Employees] ([Id], [Name]) VALUES (8, N'Oğuzhan Derici')
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO

USE [CoreBlogDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 29.08.2022 14:37:56 ******/
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
/****** Object:  Table [dbo].[Abouts]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[AboutId] [int] IDENTITY(1,1) NOT NULL,
	[AboutDetails1] [nvarchar](max) NULL,
	[AboutDetails2] [nvarchar](max) NULL,
	[AboutImage1] [nvarchar](max) NULL,
	[AboutImage2] [nvarchar](max) NULL,
	[AboutMapLocation] [nvarchar](max) NULL,
	[AboutStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[AboutId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Role] [nvarchar](max) NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameSurname] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogRatings]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogRatings](
	[BlogRatingId] [int] IDENTITY(1,1) NOT NULL,
	[BlogId] [int] NOT NULL,
	[BlogTotalScore] [int] NOT NULL,
	[BlogRatingCount] [int] NOT NULL,
 CONSTRAINT [PK_BlogRatings] PRIMARY KEY CLUSTERED 
(
	[BlogRatingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[BlogId] [int] IDENTITY(1,1) NOT NULL,
	[BlogTitle] [nvarchar](max) NULL,
	[BlogContent] [nvarchar](max) NULL,
	[BlogThumbnailImage] [nvarchar](max) NULL,
	[BlogImage] [nvarchar](max) NULL,
	[BlogCreateDate] [datetime2](7) NOT NULL,
	[BlogStatus] [bit] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[WriterId] [int] NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NULL,
	[CategoryDescription] [nvarchar](max) NULL,
	[CategoryStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[CommentUserName] [nvarchar](max) NULL,
	[CommentTitle] [nvarchar](max) NULL,
	[CommentContent] [nvarchar](max) NULL,
	[CommentDate] [datetime2](7) NOT NULL,
	[CommentStatus] [bit] NOT NULL,
	[BlogId] [int] NOT NULL,
	[BlogScore] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[ContactUserName] [nvarchar](max) NULL,
	[ContactMail] [nvarchar](max) NULL,
	[ContactSubject] [nvarchar](max) NULL,
	[ContactMessage] [nvarchar](max) NULL,
	[ContactDate] [datetime2](7) NOT NULL,
	[ContactStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matches]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matches](
	[MatchId] [int] IDENTITY(1,1) NOT NULL,
	[HomeTeamId] [int] NULL,
	[GuestTeamId] [int] NULL,
	[MatchDate] [nvarchar](max) NULL,
	[Stadium] [nvarchar](max) NULL,
 CONSTRAINT [PK_Matches] PRIMARY KEY CLUSTERED 
(
	[MatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message2s]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message2s](
	[MessageId] [int] IDENTITY(1,1) NOT NULL,
	[SenderId] [int] NULL,
	[ReceiverId] [int] NULL,
	[Subject] [nvarchar](max) NULL,
	[MessageDetails] [nvarchar](max) NULL,
	[MessageDate] [datetime2](7) NOT NULL,
	[MessageStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Message2s] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MessageId] [int] IDENTITY(1,1) NOT NULL,
	[Sender] [nvarchar](max) NULL,
	[Receiver] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[MessageDetails] [nvarchar](max) NULL,
	[MessageDate] [datetime2](7) NOT NULL,
	[MessageStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsLetters]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsLetters](
	[MailId] [int] IDENTITY(1,1) NOT NULL,
	[Mail] [nvarchar](max) NULL,
	[MailStatus] [bit] NOT NULL,
 CONSTRAINT [PK_NewsLetters] PRIMARY KEY CLUSTERED 
(
	[MailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[NotificationId] [int] IDENTITY(1,1) NOT NULL,
	[NotificationType] [nvarchar](max) NULL,
	[NotificationTypeSymbol] [nvarchar](max) NULL,
	[NotificationDetails] [nvarchar](max) NULL,
	[NotificationDate] [datetime2](7) NOT NULL,
	[NotificationStatus] [bit] NOT NULL,
	[NotificationColor] [nvarchar](max) NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[TeamId] [int] IDENTITY(1,1) NOT NULL,
	[TeamName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Writers]    Script Date: 29.08.2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Writers](
	[WriterId] [int] IDENTITY(1,1) NOT NULL,
	[WriterName] [nvarchar](max) NULL,
	[WriterAbout] [nvarchar](max) NULL,
	[WriterImage] [nvarchar](max) NULL,
	[WriterMail] [nvarchar](max) NULL,
	[WriterPassword] [nvarchar](max) NULL,
	[WriterStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Writers] PRIMARY KEY CLUSTERED 
(
	[WriterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220614200406_onur', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220614200453_onur1', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220614201334_onur2', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220614201617_onur3', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622073905_mig_writer_blog_relation', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622114516_mig_add_newsletter_table', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220727162539_mig_add_score_column', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220727163223_mig_blograting_table', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220727200544_mig_notification_add_table', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220727204650_mig_noti_color_add', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220728093904_mig_add_message_table', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220728125628_mig_teamtable', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220728130639_mig_add_messagetable_relation', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220730102151_mig_add_admintable', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220811151111_mig_identity_add', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220811152523_mig_identity_add_userapp', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220811154536_mig_remove_identity', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220811155345_mig_add_newidentity', N'5.0.17')
GO
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([AboutId], [AboutDetails1], [AboutDetails2], [AboutImage1], [AboutImage2], [AboutMapLocation], [AboutStatus]) VALUES (1, N'Blog (Türkçe: ağ günlüğü, günce) veya Weblog (Türkçe: Ağ kütüğü) teknik bilgi gerektirmeden, kendi istedikleri şeyleri, kendi istedikleri şekilde yazan insanların oluşturabildikleri, günlüğe benzeyen web siteleridir. Genellikle güncelden eskiye doğru sıralanmış yazı ve yorumların yayınlandığı, web tabanlı bir yayını belirtir. Çoğunlukla her gönderinin sonunda yazarın adı ve gönderi zamanı belirtilir. Yayıncının seçimine göre okuyucular yazılara yorum yapılabilir. Yorumlar, blog kültürünün çok önemli bir dinamiğidir; bu sayede yazar ve okuyucular arasında iletişim sağlanır. Bunun dışında, geri izleme (trackback) mekanizmasıyla, belirli bir yazı hakkında yazılan diğer yazıların belirlenebilmesi de mümkündür. Blogların içeriği geleneksel internet içeriğinden farklılık gösterdiği için sadece bloglar için kurulmuş özel indeksleme mekanizmaları ve arama motorları bulunmaktadır. Technorati en başarılı blog teknolojilerinden biridir. Ayrıca Google Blog Search adında bir blog arama motoru işletmektedir. 2005 yılında Verisign tarafından satın alınan Weblogs.com, dünyanın en büyük blog ping servisi olarak tüm internet indeksleme mekanizmalarına veri sağlamaktadır.

İnternet ile ilgili ciddi bir araştırma kurumu olan Jupiter Research''ün 2005 yılında yaptığı bir araştırmasına göre, blog sitesi sahiplerinin yarısının yıllık geliri 60.000 doların üstünde; blog okuyanların %60''ı erkek ve blog okuma alışkanlığı olanların %73''ü 5 yıldan uzun süredir internet bağlantısına sahip. Blog okuyanların %28''i blog okumak için RSS kullanıyor. 2005 sonunda yapılan başka bir araştırmaya göre de internet kullanıcılarının %38''i blog kelimesinin anlamını bildiklerini, %27''si ise blog okuduklarını belirtmiştir. Blogosferin nabzını tutma misyonundaki Technorati''nin istatistiklerine göre, günde 50.000''den fazla yeni blog sitesi yaratılıyor.

Blogların kullanımı 1999 yılında Blogger''ın bu hizmeti vermeye başlaması ve kısa süre sonra bunu ücretsiz hale getirmesi ile yaygınlaşmıştır. 2003 yılı Şubat ayında Google, Blogger''ı satın aldı ve Google araç çubuğuna, ziyaret edilen sayfanın adresini doğrudan bloğa girmeyi sağlayan ''Blog This!'' tuşu yerleştirdi. İngilizce bilen çoğu kişi ilk defa bu düğme sayesinde bloglar ile tanışmıştır.', NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Abouts] OFF
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([AdminId], [Username], [Password], [Name], [ShortDescription], [ImageUrl], [Role]) VALUES (1, N'AdminCore1', N'123', N'Onur Sen', N'Endüstri Mühendisi', N'/inspinia-gh-pages/img/a4.jpg', N'A')
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[AspNetRoles] ON 

INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (1, N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (2, N'Writer', N'WRITER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (3, N'Member', N'MEMBER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (4, N'Moderator', N'MODERATOR', NULL)
SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (1, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (2, 2)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (2, 3)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (2, 4)
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [NameSurname], [ImageUrl], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (1, N'Onur Şen', NULL, N'onur', N'ONUR', N'deneme@gmail.com', N'DENEME@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOGsetG88tZF13n5eOEyjn3ZMwNCjNnhkhf1mCN7ztG7bG6TN2F9BV49+NUiLRHmrQ==', N'DOUVUGOKCVAW3N745HQK43EQU2VF4F6Q', N'bdc81bd4-6e97-4d50-86c4-ccff506f1863', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [NameSurname], [ImageUrl], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (2, N'Hatice Başkonuş', NULL, N'hatice', N'HATICE', N'hatice@gmail.com', N'HATICE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPcQHpyIxznQUBkfIKahoExivLKyqZpLn4DkxgQhdOHhnkR5DISCI/Ii6RPpNxm/7A==', N'Y2ZFNIC66XWZM2DNDCO62CVI37NR7GHL', N'bf20ded2-e371-40cb-a18f-bfaf2ec0b7df', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[BlogRatings] ON 

INSERT [dbo].[BlogRatings] ([BlogRatingId], [BlogId], [BlogTotalScore], [BlogRatingCount]) VALUES (1, 13, 0, 0)
INSERT [dbo].[BlogRatings] ([BlogRatingId], [BlogId], [BlogTotalScore], [BlogRatingCount]) VALUES (3, 1, 0, 0)
INSERT [dbo].[BlogRatings] ([BlogRatingId], [BlogId], [BlogTotalScore], [BlogRatingCount]) VALUES (4, 7, 13, 2)
INSERT [dbo].[BlogRatings] ([BlogRatingId], [BlogId], [BlogTotalScore], [BlogRatingCount]) VALUES (5, 8, 10, 1)
INSERT [dbo].[BlogRatings] ([BlogRatingId], [BlogId], [BlogTotalScore], [BlogRatingCount]) VALUES (6, 9, 0, 0)
INSERT [dbo].[BlogRatings] ([BlogRatingId], [BlogId], [BlogTotalScore], [BlogRatingCount]) VALUES (7, 14, 0, 0)
SET IDENTITY_INSERT [dbo].[BlogRatings] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([BlogId], [BlogTitle], [BlogContent], [BlogThumbnailImage], [BlogImage], [BlogCreateDate], [BlogStatus], [CategoryId], [WriterId]) VALUES (1, N'C# ile metodlar', N'Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..', NULL, N'/CoreBlogTema/images/3.jpg', CAST(N'2021-09-21T00:00:00.0000000' AS DateTime2), 1, 4, 1)
INSERT [dbo].[Blogs] ([BlogId], [BlogTitle], [BlogContent], [BlogThumbnailImage], [BlogImage], [BlogCreateDate], [BlogStatus], [CategoryId], [WriterId]) VALUES (7, N'Pyhton İle Veri Analizi', N'Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..', NULL, N'/CoreBlogTema/images/4.jpg', CAST(N'2020-10-14T00:00:00.0000000' AS DateTime2), 1, 5, 1)
INSERT [dbo].[Blogs] ([BlogId], [BlogTitle], [BlogContent], [BlogThumbnailImage], [BlogImage], [BlogCreateDate], [BlogStatus], [CategoryId], [WriterId]) VALUES (8, N'Fifa 22 Çıkıyor', N'Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..', NULL, N'/CoreBlogTema/images/5.jpg', CAST(N'2022-06-18T00:00:00.0000000' AS DateTime2), 1, 15, 6)
INSERT [dbo].[Blogs] ([BlogId], [BlogTitle], [BlogContent], [BlogThumbnailImage], [BlogImage], [BlogCreateDate], [BlogStatus], [CategoryId], [WriterId]) VALUES (9, N'Cs go 2022', N'Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..', NULL, N'/CoreBlogTema/images/5.jpg', CAST(N'2022-07-25T00:00:00.0000000' AS DateTime2), 1, 9, 1)
INSERT [dbo].[Blogs] ([BlogId], [BlogTitle], [BlogContent], [BlogThumbnailImage], [BlogImage], [BlogCreateDate], [BlogStatus], [CategoryId], [WriterId]) VALUES (13, N'Deneme', N'Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt..', NULL, N'/CoreBlogTema/images/5.jpg', CAST(N'2022-07-27T00:00:00.0000000' AS DateTime2), 1, 9, 1)
INSERT [dbo].[Blogs] ([BlogId], [BlogTitle], [BlogContent], [BlogThumbnailImage], [BlogImage], [BlogCreateDate], [BlogStatus], [CategoryId], [WriterId]) VALUES (14, N'Onur Tatil', N'Onur tatil düşüncesi Onur tatil düşüncesi Onur tatil düşüncesi Onur tatil düşüncesi Onur tatil düşüncesi Onur tatil düşüncesi Onur tatil düşüncesi Onur tatil düşüncesi Onur tatil düşüncesi Onur tatil düşüncesi ', N'deneme', N'test', CAST(N'2022-08-16T00:00:00.0000000' AS DateTime2), 1, 19, 1)
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (4, N'Yazılım', N'Açıklama Alanıdır', 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (5, N'Teknoloji', N'Açıklama Alanıdır', 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (6, N'Tiyatro', N'Açıklama Alanıdır', 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (9, N'Film & Dizi', N'Açıklama Alanıdır', 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (15, N'Oyun', N'Açıklama Alanıdır ', 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (17, N'Kitap', N'Açıklama Alanıdır ', 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (19, N'Gezi', N'Açıklama Alanıdır ', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([CommentId], [CommentUserName], [CommentTitle], [CommentContent], [CommentDate], [CommentStatus], [BlogId], [BlogScore]) VALUES (1, N'Onur Şen', N'Teşekkürler', N'Emeğinize sağlık', CAST(N'2022-06-19T00:00:00.0000000' AS DateTime2), 1, 1, 7)
INSERT [dbo].[Comments] ([CommentId], [CommentUserName], [CommentTitle], [CommentContent], [CommentDate], [CommentStatus], [BlogId], [BlogScore]) VALUES (3, N'Ömür Şen', N'Harika', N'ne kadar kötü birşey almışım', CAST(N'2022-06-19T00:00:00.0000000' AS DateTime2), 1, 7, 8)
INSERT [dbo].[Comments] ([CommentId], [CommentUserName], [CommentTitle], [CommentContent], [CommentDate], [CommentStatus], [BlogId], [BlogScore]) VALUES (4, N'Mehmet Şen', N'Muhteşem', N'Araba ne kadar güzel kullanılmış', CAST(N'2022-06-19T00:00:00.0000000' AS DateTime2), 1, 8, 6)
INSERT [dbo].[Comments] ([CommentId], [CommentUserName], [CommentTitle], [CommentContent], [CommentDate], [CommentStatus], [BlogId], [BlogScore]) VALUES (7, N'Oğuzhan Derici', N'Çok Kötü', N'Emeğinize sağlık', CAST(N'2022-07-02T00:00:00.0000000' AS DateTime2), 1, 1, 10)
INSERT [dbo].[Comments] ([CommentId], [CommentUserName], [CommentTitle], [CommentContent], [CommentDate], [CommentStatus], [BlogId], [BlogScore]) VALUES (9, N'Hatice Başkonuş', N'Harika', N'Emeğinize sağlık', CAST(N'2022-01-19T00:00:00.0000000' AS DateTime2), 1, 7, 10)
INSERT [dbo].[Comments] ([CommentId], [CommentUserName], [CommentTitle], [CommentContent], [CommentDate], [CommentStatus], [BlogId], [BlogScore]) VALUES (12, N'Görkem Çil', N'Yakın Arkadaş', N'Sakarya', CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 1, 7, 10)
INSERT [dbo].[Comments] ([CommentId], [CommentUserName], [CommentTitle], [CommentContent], [CommentDate], [CommentStatus], [BlogId], [BlogScore]) VALUES (15, N'Samek Kalkavan', N'Yakın Arkadş', N'Rize', CAST(N'0202-01-02T00:00:00.0000000' AS DateTime2), 1, 8, 10)
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactId], [ContactUserName], [ContactMail], [ContactSubject], [ContactMessage], [ContactDate], [ContactStatus]) VALUES (1, N'onur şen', N'deneme@gmail.com', N'deneme', N'test', CAST(N'2022-07-20T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Contacts] ([ContactId], [ContactUserName], [ContactMail], [ContactSubject], [ContactMessage], [ContactDate], [ContactStatus]) VALUES (2, N'Ömür Şen', N'omur@gmail.com', N'samsun hakkında', N'ağustos ayı içinde samsuna gideceğim', CAST(N'2022-08-16T00:00:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Message2s] ON 

INSERT [dbo].[Message2s] ([MessageId], [SenderId], [ReceiverId], [Subject], [MessageDetails], [MessageDate], [MessageStatus]) VALUES (1, 1, 1, N'deneme', N'test', CAST(N'2022-07-28T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Message2s] ([MessageId], [SenderId], [ReceiverId], [Subject], [MessageDetails], [MessageDate], [MessageStatus]) VALUES (12, 2, 3, N'merhaba', N'test', CAST(N'2022-07-28T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Message2s] ([MessageId], [SenderId], [ReceiverId], [Subject], [MessageDetails], [MessageDate], [MessageStatus]) VALUES (13, 1, 6, N'naber', N'test', CAST(N'2022-07-28T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Message2s] ([MessageId], [SenderId], [ReceiverId], [Subject], [MessageDetails], [MessageDate], [MessageStatus]) VALUES (15, 6, 1, N'selam', N'test', CAST(N'2022-07-28T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Message2s] ([MessageId], [SenderId], [ReceiverId], [Subject], [MessageDetails], [MessageDate], [MessageStatus]) VALUES (16, 1, 1, N'test123456', N'deneme deneme12 ', CAST(N'2022-08-17T00:00:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Message2s] OFF
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([MessageId], [Sender], [Receiver], [Subject], [MessageDetails], [MessageDate], [MessageStatus]) VALUES (1, N'Onur', N'deneme@gmail.com', N'Saol', N'deneme testi', CAST(N'2022-07-28T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Messages] ([MessageId], [Sender], [Receiver], [Subject], [MessageDetails], [MessageDate], [MessageStatus]) VALUES (3, N'Ömür', N'deneme@gmail.com', N'Deneme', N'merhaba', CAST(N'2022-07-28T00:00:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Messages] OFF
GO
SET IDENTITY_INSERT [dbo].[NewsLetters] ON 

INSERT [dbo].[NewsLetters] ([MailId], [Mail], [MailStatus]) VALUES (1, N'deneme@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([MailId], [Mail], [MailStatus]) VALUES (2, N'haticebaskonus1@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[NewsLetters] OFF
GO
SET IDENTITY_INSERT [dbo].[Notifications] ON 

INSERT [dbo].[Notifications] ([NotificationId], [NotificationType], [NotificationTypeSymbol], [NotificationDetails], [NotificationDate], [NotificationStatus], [NotificationColor]) VALUES (2, N'Günlük Toplantı', N'mdi mdi-calendar', N'merhaba toplantı 15:00''da yapılacaktır', CAST(N'2022-07-27T00:00:00.0000000' AS DateTime2), 1, N'preview-icon bg-success')
INSERT [dbo].[Notifications] ([NotificationId], [NotificationType], [NotificationTypeSymbol], [NotificationDetails], [NotificationDate], [NotificationStatus], [NotificationColor]) VALUES (3, N'Doğum Günü', N'mdi mdi-settings', N'merhaba doğum günü', CAST(N'2022-07-19T00:00:00.0000000' AS DateTime2), 1, N'preview-icon bg-warning')
INSERT [dbo].[Notifications] ([NotificationId], [NotificationType], [NotificationTypeSymbol], [NotificationDetails], [NotificationDate], [NotificationStatus], [NotificationColor]) VALUES (8, N'Sitem bakımı', N'mdi mdi-link-variant', N'onur sistem bakımı yapılacak', CAST(N'2022-10-14T00:00:00.0000000' AS DateTime2), 1, N'preview-icon bg-info')
SET IDENTITY_INSERT [dbo].[Notifications] OFF
GO
SET IDENTITY_INSERT [dbo].[Writers] ON 

INSERT [dbo].[Writers] ([WriterId], [WriterName], [WriterAbout], [WriterImage], [WriterMail], [WriterPassword], [WriterStatus]) VALUES (1, N'Onur Şen', N'Deneme Test', N'https://www.resimupload.org/images/2022/07/27/onur.md.png', N'deneme@gmail.com', N'123', 1)
INSERT [dbo].[Writers] ([WriterId], [WriterName], [WriterAbout], [WriterImage], [WriterMail], [WriterPassword], [WriterStatus]) VALUES (2, N'Ömür Şen', N'Test', N'denemt', N'omur@gmail.com', N'123', 1)
INSERT [dbo].[Writers] ([WriterId], [WriterName], [WriterAbout], [WriterImage], [WriterMail], [WriterPassword], [WriterStatus]) VALUES (3, N'Cem Kaya', N'Deneme', N'test', N'cem@gmail.com', N'123', 1)
INSERT [dbo].[Writers] ([WriterId], [WriterName], [WriterAbout], [WriterImage], [WriterMail], [WriterPassword], [WriterStatus]) VALUES (6, N'Hatice Başkonuş', N'Deneme', N'test', N'hatice@gmail.com', N'123', 1)
SET IDENTITY_INSERT [dbo].[Writers] OFF
GO
ALTER TABLE [dbo].[Blogs] ADD  DEFAULT ((0)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Blogs] ADD  DEFAULT ((0)) FOR [WriterId]
GO
ALTER TABLE [dbo].[Comments] ADD  DEFAULT ((0)) FOR [BlogId]
GO
ALTER TABLE [dbo].[Comments] ADD  DEFAULT ((0)) FOR [BlogScore]
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
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Writers_WriterId] FOREIGN KEY([WriterId])
REFERENCES [dbo].[Writers] ([WriterId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_Writers_WriterId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Blogs_BlogId] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blogs] ([BlogId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Blogs_BlogId]
GO
ALTER TABLE [dbo].[Matches]  WITH CHECK ADD  CONSTRAINT [FK_Matches_Teams_GuestTeamId] FOREIGN KEY([GuestTeamId])
REFERENCES [dbo].[Teams] ([TeamId])
GO
ALTER TABLE [dbo].[Matches] CHECK CONSTRAINT [FK_Matches_Teams_GuestTeamId]
GO
ALTER TABLE [dbo].[Matches]  WITH CHECK ADD  CONSTRAINT [FK_Matches_Teams_HomeTeamId] FOREIGN KEY([HomeTeamId])
REFERENCES [dbo].[Teams] ([TeamId])
GO
ALTER TABLE [dbo].[Matches] CHECK CONSTRAINT [FK_Matches_Teams_HomeTeamId]
GO
ALTER TABLE [dbo].[Message2s]  WITH CHECK ADD  CONSTRAINT [FK_Message2s_Writers_ReceiverId] FOREIGN KEY([ReceiverId])
REFERENCES [dbo].[Writers] ([WriterId])
GO
ALTER TABLE [dbo].[Message2s] CHECK CONSTRAINT [FK_Message2s_Writers_ReceiverId]
GO
ALTER TABLE [dbo].[Message2s]  WITH CHECK ADD  CONSTRAINT [FK_Message2s_Writers_SenderId] FOREIGN KEY([SenderId])
REFERENCES [dbo].[Writers] ([WriterId])
GO
ALTER TABLE [dbo].[Message2s] CHECK CONSTRAINT [FK_Message2s_Writers_SenderId]
GO

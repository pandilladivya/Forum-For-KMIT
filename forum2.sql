USE [master]
GO
/****** Object:  Database [FORUM1]    Script Date: 06-07-2015 10:54:05 ******/
CREATE DATABASE [FORUM1] ON  PRIMARY 
( NAME = N'FORUM1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\FORUM1.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FORUM1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\FORUM1_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FORUM1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FORUM1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FORUM1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FORUM1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FORUM1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FORUM1] SET ARITHABORT OFF 
GO
ALTER DATABASE [FORUM1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FORUM1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FORUM1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FORUM1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FORUM1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FORUM1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FORUM1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FORUM1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FORUM1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FORUM1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FORUM1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FORUM1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FORUM1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FORUM1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FORUM1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FORUM1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FORUM1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FORUM1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FORUM1] SET  MULTI_USER 
GO
ALTER DATABASE [FORUM1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FORUM1] SET DB_CHAINING OFF 
GO
USE [FORUM1]
GO
/****** Object:  Table [dbo].[AForum]    Script Date: 06-07-2015 10:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AForum](
	[ForumID] [int] IDENTITY(1,1) NOT NULL,
	[titleID] [int] NULL,
	[question] [varchar](500) NULL,
	[postername] [varchar](50) NULL,
	[dati] [datetime] NULL,
	[valid] [bit] NULL,
	[faculty] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ForumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AThread]    Script Date: 06-07-2015 10:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AThread](
	[ThreadID] [int] IDENTITY(1,1) NOT NULL,
	[ForumID] [int] NULL,
	[answer] [varchar](500) NULL,
	[postername] [varchar](50) NULL,
	[dati] [datetime] NULL,
	[valid] [bit] NULL,
	[faculty] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ThreadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ATitle]    Script Date: 06-07-2015 10:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ATitle](
	[titleID] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NULL,
	[valid] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[titleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BForum]    Script Date: 06-07-2015 10:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BForum](
	[ForumID] [int] IDENTITY(1,1) NOT NULL,
	[titleID] [int] NULL,
	[question] [varchar](500) NULL,
	[postername] [varchar](50) NULL,
	[dati] [datetime] NULL,
	[valid] [bit] NULL,
	[faculty] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ForumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BThread]    Script Date: 06-07-2015 10:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BThread](
	[ThreadID] [int] IDENTITY(1,1) NOT NULL,
	[ForumID] [int] NULL,
	[answer] [varchar](500) NULL,
	[postername] [varchar](50) NULL,
	[dati] [datetime] NULL,
	[valid] [bit] NULL,
	[faculty] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ThreadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BTitle]    Script Date: 06-07-2015 10:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BTitle](
	[titleID] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NULL,
	[valid] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[titleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CForum]    Script Date: 06-07-2015 10:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CForum](
	[ForumID] [int] IDENTITY(1,1) NOT NULL,
	[titleID] [int] NULL,
	[question] [varchar](500) NULL,
	[postername] [varchar](50) NULL,
	[dati] [datetime] NULL,
	[valid] [bit] NULL,
	[faculty] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ForumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CThread]    Script Date: 06-07-2015 10:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CThread](
	[ThreadID] [int] IDENTITY(1,1) NOT NULL,
	[ForumID] [int] NULL,
	[answer] [varchar](500) NULL,
	[postername] [varchar](50) NULL,
	[dati] [datetime] NULL,
	[valid] [bit] NULL,
	[faculty] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ThreadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTitle]    Script Date: 06-07-2015 10:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTitle](
	[titleID] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NULL,
	[valid] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[titleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DForum]    Script Date: 06-07-2015 10:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DForum](
	[ForumID] [int] IDENTITY(1,1) NOT NULL,
	[titleID] [int] NULL,
	[question] [varchar](500) NULL,
	[postername] [varchar](50) NULL,
	[dati] [datetime] NULL,
	[valid] [bit] NULL,
	[faculty] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ForumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DThread]    Script Date: 06-07-2015 10:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DThread](
	[ThreadID] [int] IDENTITY(1,1) NOT NULL,
	[ForumID] [int] NULL,
	[answer] [varchar](500) NULL,
	[postername] [varchar](50) NULL,
	[dati] [datetime] NULL,
	[valid] [bit] NULL,
	[faculty] [bit] NULL,
 CONSTRAINT [PK_DThread] PRIMARY KEY CLUSTERED 
(
	[ThreadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DTitle]    Script Date: 06-07-2015 10:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DTitle](
	[titleID] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NULL,
	[valid] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[titleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EForum]    Script Date: 06-07-2015 10:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EForum](
	[ForumID] [int] IDENTITY(1,1) NOT NULL,
	[titleID] [int] NULL,
	[question] [varchar](500) NULL,
	[postername] [varchar](50) NULL,
	[dati] [datetime] NULL,
	[valid] [bit] NULL,
	[faculty] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ForumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EThread]    Script Date: 06-07-2015 10:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EThread](
	[ThreadID] [int] IDENTITY(1,1) NOT NULL,
	[ForumID] [int] NULL,
	[answer] [varchar](500) NULL,
	[postername] [varchar](50) NULL,
	[dati] [datetime] NULL,
	[valid] [bit] NULL,
	[faculty] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ThreadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ETitle]    Script Date: 06-07-2015 10:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ETitle](
	[titleID] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NULL,
	[valid] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[titleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AForum] ON 

INSERT [dbo].[AForum] ([ForumID], [titleID], [question], [postername], [dati], [valid], [faculty]) VALUES (1, 2, N'hello', N'12BD1A05I1', CAST(N'2015-06-19 16:06:25.000' AS DateTime), 1, NULL)
SET IDENTITY_INSERT [dbo].[AForum] OFF
SET IDENTITY_INSERT [dbo].[ATitle] ON 

INSERT [dbo].[ATitle] ([titleID], [title], [valid]) VALUES (2, N'First Years', NULL)
INSERT [dbo].[ATitle] ([titleID], [title], [valid]) VALUES (3, N'Second Years', NULL)
INSERT [dbo].[ATitle] ([titleID], [title], [valid]) VALUES (4, N'Third Years', NULL)
INSERT [dbo].[ATitle] ([titleID], [title], [valid]) VALUES (5, N'Fourth Years', NULL)
INSERT [dbo].[ATitle] ([titleID], [title], [valid]) VALUES (6, N'Internships', NULL)
INSERT [dbo].[ATitle] ([titleID], [title], [valid]) VALUES (7, N'Placements', NULL)
SET IDENTITY_INSERT [dbo].[ATitle] OFF
SET IDENTITY_INSERT [dbo].[BForum] ON 

INSERT [dbo].[BForum] ([ForumID], [titleID], [question], [postername], [dati], [valid], [faculty]) VALUES (1, 1, N'hello', N'12BD1A05I1', CAST(N'2015-06-19 16:06:39.000' AS DateTime), 1, NULL)
SET IDENTITY_INSERT [dbo].[BForum] OFF
SET IDENTITY_INSERT [dbo].[BTitle] ON 

INSERT [dbo].[BTitle] ([titleID], [title], [valid]) VALUES (1, N'JAVA', NULL)
INSERT [dbo].[BTitle] ([titleID], [title], [valid]) VALUES (2, N'PHP', NULL)
INSERT [dbo].[BTitle] ([titleID], [title], [valid]) VALUES (3, N'DATA MINING', NULL)
INSERT [dbo].[BTitle] ([titleID], [title], [valid]) VALUES (4, N'HADOOP', NULL)
INSERT [dbo].[BTitle] ([titleID], [title], [valid]) VALUES (5, N'C ', NULL)
INSERT [dbo].[BTitle] ([titleID], [title], [valid]) VALUES (6, N'C ++', NULL)
INSERT [dbo].[BTitle] ([titleID], [title], [valid]) VALUES (7, N'ASP.NET', NULL)
INSERT [dbo].[BTitle] ([titleID], [title], [valid]) VALUES (8, N'SQL', NULL)
INSERT [dbo].[BTitle] ([titleID], [title], [valid]) VALUES (9, N'MySQL', NULL)
INSERT [dbo].[BTitle] ([titleID], [title], [valid]) VALUES (10, N'APP builders', NULL)
INSERT [dbo].[BTitle] ([titleID], [title], [valid]) VALUES (11, N'WEB builders', NULL)
SET IDENTITY_INSERT [dbo].[BTitle] OFF
SET IDENTITY_INSERT [dbo].[CForum] ON 

INSERT [dbo].[CForum] ([ForumID], [titleID], [question], [postername], [dati], [valid], [faculty]) VALUES (2, 1, N'hello', N'12BD1A05I1', CAST(N'2015-06-19 16:06:48.000' AS DateTime), 1, NULL)
SET IDENTITY_INSERT [dbo].[CForum] OFF
SET IDENTITY_INSERT [dbo].[CTitle] ON 

INSERT [dbo].[CTitle] ([titleID], [title], [valid]) VALUES (1, N'DIY MINI-PROJECTS', NULL)
INSERT [dbo].[CTitle] ([titleID], [title], [valid]) VALUES (2, N'ROBOTICS', NULL)
INSERT [dbo].[CTitle] ([titleID], [title], [valid]) VALUES (3, N'QUAD-COPTER', NULL)
SET IDENTITY_INSERT [dbo].[CTitle] OFF
SET IDENTITY_INSERT [dbo].[DForum] ON 

INSERT [dbo].[DForum] ([ForumID], [titleID], [question], [postername], [dati], [valid], [faculty]) VALUES (3, 2, N'question1', N'12BD1A05I1', CAST(N'2015-06-18 16:06:33.000' AS DateTime), 1, NULL)
SET IDENTITY_INSERT [dbo].[DForum] OFF
SET IDENTITY_INSERT [dbo].[DThread] ON 

INSERT [dbo].[DThread] ([ThreadID], [ForumID], [answer], [postername], [dati], [valid], [faculty]) VALUES (4, 3, N'hello', N'12BD1A05I1', CAST(N'2015-06-19 16:06:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[DThread] ([ThreadID], [ForumID], [answer], [postername], [dati], [valid], [faculty]) VALUES (5, 3, N'hello', N'12BD1A05I1', CAST(N'2015-06-19 16:06:01.000' AS DateTime), 1, NULL)
INSERT [dbo].[DThread] ([ThreadID], [ForumID], [answer], [postername], [dati], [valid], [faculty]) VALUES (6, 3, N'hello', N'12BD1A05I1', CAST(N'2015-06-19 16:06:01.000' AS DateTime), 1, NULL)
INSERT [dbo].[DThread] ([ThreadID], [ForumID], [answer], [postername], [dati], [valid], [faculty]) VALUES (10, 3, N'hello', N'12BD1A05I1', CAST(N'2015-06-19 16:06:12.000' AS DateTime), 1, NULL)
INSERT [dbo].[DThread] ([ThreadID], [ForumID], [answer], [postername], [dati], [valid], [faculty]) VALUES (11, 3, N'hello', N'12BD1A05I1', CAST(N'2015-06-19 16:06:15.000' AS DateTime), 1, NULL)
SET IDENTITY_INSERT [dbo].[DThread] OFF
SET IDENTITY_INSERT [dbo].[DTitle] ON 

INSERT [dbo].[DTitle] ([titleID], [title], [valid]) VALUES (2, N'BOOK CLUB', NULL)
INSERT [dbo].[DTitle] ([titleID], [title], [valid]) VALUES (3, N'CRICKET CLUB', NULL)
INSERT [dbo].[DTitle] ([titleID], [title], [valid]) VALUES (4, N'GREEN KMIT', NULL)
INSERT [dbo].[DTitle] ([titleID], [title], [valid]) VALUES (5, N'FOOTBALL CLUB ', NULL)
INSERT [dbo].[DTitle] ([titleID], [title], [valid]) VALUES (6, N'DRAMA CLUB ', NULL)
INSERT [dbo].[DTitle] ([titleID], [title], [valid]) VALUES (7, N'PHOTOGRAPHY CLUB', NULL)
SET IDENTITY_INSERT [dbo].[DTitle] OFF
SET IDENTITY_INSERT [dbo].[EForum] ON 

INSERT [dbo].[EForum] ([ForumID], [titleID], [question], [postername], [dati], [valid], [faculty]) VALUES (1, 5, N'hello', N'12BD1A05I1', CAST(N'2015-06-19 16:06:57.000' AS DateTime), 1, NULL)
SET IDENTITY_INSERT [dbo].[EForum] OFF
SET IDENTITY_INSERT [dbo].[ETitle] ON 

INSERT [dbo].[ETitle] ([titleID], [title], [valid]) VALUES (5, N'GATE PREP', NULL)
INSERT [dbo].[ETitle] ([titleID], [title], [valid]) VALUES (6, N'CAT PREP', NULL)
INSERT [dbo].[ETitle] ([titleID], [title], [valid]) VALUES (7, N'PLACEMENTS', NULL)
INSERT [dbo].[ETitle] ([titleID], [title], [valid]) VALUES (8, N'GRE PREP', NULL)
INSERT [dbo].[ETitle] ([titleID], [title], [valid]) VALUES (9, N'GMAT PREP', NULL)
INSERT [dbo].[ETitle] ([titleID], [title], [valid]) VALUES (10, N'TOEFL PREP', NULL)
SET IDENTITY_INSERT [dbo].[ETitle] OFF
USE [master]
GO
ALTER DATABASE [FORUM1] SET  READ_WRITE 
GO

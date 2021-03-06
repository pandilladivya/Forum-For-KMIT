USE [master]
GO
/****** Object:  Database [forum]    Script Date: 06-07-2015 10:52:43 ******/
CREATE DATABASE [forum] ON  PRIMARY 
( NAME = N'KMITFORUM1_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\KMITFORUM1_Data.mdf' , SIZE = 8320KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'KMITFORUM1_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\KMITFORUM1_Log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 1024KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [forum].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [forum] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [forum] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [forum] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [forum] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [forum] SET ARITHABORT OFF 
GO
ALTER DATABASE [forum] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [forum] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [forum] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [forum] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [forum] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [forum] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [forum] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [forum] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [forum] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [forum] SET  ENABLE_BROKER 
GO
ALTER DATABASE [forum] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [forum] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [forum] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [forum] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [forum] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [forum] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [forum] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [forum] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [forum] SET  MULTI_USER 
GO
ALTER DATABASE [forum] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [forum] SET DB_CHAINING OFF 
GO
USE [forum]
GO
/****** Object:  Table [dbo].[adminlogin]    Script Date: 06-07-2015 10:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adminlogin](
	[username] [nchar](10) NOT NULL,
	[password] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[bull]    Script Date: 06-07-2015 10:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bull](
	[bid] [int] IDENTITY(1,1) NOT NULL,
	[header] [nchar](100) NOT NULL,
	[description] [nchar](100) NULL,
	[date] [datetime] NULL,
	[valid] [bit] NOT NULL CONSTRAINT [DF_bull_valid]  DEFAULT ((1)),
 CONSTRAINT [PK_bull] PRIMARY KEY CLUSTERED 
(
	[bid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chalacc]    Script Date: 06-07-2015 10:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chalacc](
	[caid] [int] IDENTITY(1,1) NOT NULL,
	[cid] [nchar](10) NOT NULL,
	[uname] [nchar](10) NOT NULL,
 CONSTRAINT [PK_chalacc] PRIMARY KEY CLUSTERED 
(
	[caid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chalcom]    Script Date: 06-07-2015 10:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chalcom](
	[ccid] [int] NOT NULL,
	[cid] [int] NOT NULL,
	[uname] [nchar](10) NOT NULL,
	[link] [nchar](100) NULL,
	[filepath] [nchar](3000) NULL,
 CONSTRAINT [PK_chalcom] PRIMARY KEY CLUSTERED 
(
	[ccid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[codit]    Script Date: 06-07-2015 10:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[codit](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nchar](100) NOT NULL,
	[deadline] [date] NOT NULL,
	[difficulty] [nchar](100) NOT NULL,
	[techreqd] [nchar](1000) NOT NULL,
	[setby] [nchar](100) NULL,
	[description] [nchar](1000) NULL,
 CONSTRAINT [PK_codit] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[events]    Script Date: 06-07-2015 10:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[events](
	[eid] [int] IDENTITY(1,1) NOT NULL,
	[ename] [nchar](30) NOT NULL,
	[regstart] [date] NULL,
	[regend] [date] NULL,
	[estart] [date] NULL,
	[eend] [date] NULL,
	[efrom] [nchar](10) NULL,
	[eto] [nchar](10) NULL,
	[venue] [nchar](100) NULL,
	[eligibility] [nchar](100) NULL,
	[description] [nchar](1000) NULL,
 CONSTRAINT [PK_events] PRIMARY KEY CLUSTERED 
(
	[eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[faculty]    Script Date: 06-07-2015 10:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[faculty](
	[uname] [nchar](10) NULL,
	[password] [nchar](10) NULL,
	[domain] [nchar](10) NULL,
	[subjects] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[general]    Script Date: 06-07-2015 10:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[general](
	[GeneralId] [int] NOT NULL,
	[General] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[imageinfo]    Script Date: 06-07-2015 10:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[imageinfo](
	[rollno] [nchar](20) NULL,
	[pic_det] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[reg]    Script Date: 06-07-2015 10:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reg](
	[en] [nchar](10) NULL,
	[name] [nchar](50) NULL,
	[hno] [nchar](10) NULL,
	[course] [nchar](50) NULL,
	[email] [nchar](50) NULL,
	[phno] [nchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[setting]    Script Date: 06-07-2015 10:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[setting](
	[rno] [nchar](10) NULL,
	[uname] [nchar](50) NULL,
	[password] [nchar](10) NULL,
	[email] [nchar](1000) NULL,
	[abt] [nchar](1000) NULL,
	[interest] [nchar](1000) NULL,
	[contact] [nchar](100) NULL,
	[imagepath] [nvarchar](max) NULL,
	[mob_no] [nchar](10) NULL,
	[course] [nchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[teamevents]    Script Date: 06-07-2015 10:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teamevents](
	[eid] [int] IDENTITY(1,1) NOT NULL,
	[ename] [nchar](100) NULL,
	[regstart] [date] NULL,
	[regend] [date] NULL,
	[estart] [date] NULL,
	[eend] [date] NULL,
	[efrom] [nchar](10) NULL,
	[eto] [nchar](100) NULL,
	[venue] [nchar](100) NULL,
	[eligibility] [nchar](100) NULL,
	[description] [nchar](1000) NULL,
	[tmno] [int] NULL,
 CONSTRAINT [PK_teamevents] PRIMARY KEY CLUSTERED 
(
	[eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[teamreg]    Script Date: 06-07-2015 10:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teamreg](
	[en] [nchar](100) NOT NULL,
	[tname] [nchar](100) NULL,
	[stu_name] [nchar](100) NULL,
	[uname] [nchar](100) NULL,
	[mob_no] [nchar](10) NULL,
	[course] [nchar](10) NULL,
	[email_id] [nchar](100) NULL
) ON [PRIMARY]

GO
INSERT [dbo].[adminlogin] ([username], [password]) VALUES (N'harsha    ', N'31051995  ')
SET IDENTITY_INSERT [dbo].[bull] ON 

INSERT [dbo].[bull] ([bid], [header], [description], [date], [valid]) VALUES (5, N'Regular classes for the new semester are starting from 22nd June,2015.                              ', N'                                                                                                    ', CAST(N'2015-06-17 12:06:08.000' AS DateTime), 1)
INSERT [dbo].[bull] ([bid], [header], [description], [date], [valid]) VALUES (6, N'Students are required to pay their fees for this academic year 2015-16 immediately.                 ', N'                                                                                                    ', CAST(N'2015-06-17 12:06:55.000' AS DateTime), 0)
INSERT [dbo].[bull] ([bid], [header], [description], [date], [valid]) VALUES (9, N'Bulletin1                                                                                           ', N'                                                                                                    ', CAST(N'2015-06-18 16:06:11.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[bull] OFF
SET IDENTITY_INSERT [dbo].[chalacc] ON 

INSERT [dbo].[chalacc] ([caid], [cid], [uname]) VALUES (1, N'3         ', N'12BD1A05I1')
INSERT [dbo].[chalacc] ([caid], [cid], [uname]) VALUES (2, N'2         ', N'12BD1A05I1')
SET IDENTITY_INSERT [dbo].[chalacc] OFF
SET IDENTITY_INSERT [dbo].[codit] ON 

INSERT [dbo].[codit] ([cid], [cname], [deadline], [difficulty], [techreqd], [setby], [description]) VALUES (2, N'Website                                                                                             ', CAST(N'2015-07-29' AS Date), N'intermediate                                                                                        ', N'ASP.NET,C#                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', N'f1                                                                                                  ', NULL)
INSERT [dbo].[codit] ([cid], [cname], [deadline], [difficulty], [techreqd], [setby], [description]) VALUES (3, N'Challenge1                                                                                          ', CAST(N'2015-06-25' AS Date), N'Intermediate                                                                                        ', N'SKILL1,SKILL2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', N'f1                                                                                                  ', NULL)
INSERT [dbo].[codit] ([cid], [cname], [deadline], [difficulty], [techreqd], [setby], [description]) VALUES (4, N'challenge 2                                                                                         ', CAST(N'2015-07-03' AS Date), N'Intermediate                                                                                        ', N'Java,Mysql                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', N'f2                                                                                                  ', N'Description1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ')
INSERT [dbo].[codit] ([cid], [cname], [deadline], [difficulty], [techreqd], [setby], [description]) VALUES (5, N'challenge3                                                                                          ', CAST(N'2015-09-30' AS Date), N'Advanced                                                                                            ', N'MATLAB,Machine Learning                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ', N'f2                                                                                                  ', N'Description 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ')
SET IDENTITY_INSERT [dbo].[codit] OFF
SET IDENTITY_INSERT [dbo].[events] ON 

INSERT [dbo].[events] ([eid], [ename], [regstart], [regend], [estart], [eend], [efrom], [eto], [venue], [eligibility], [description]) VALUES (3, N'Debate                        ', CAST(N'2015-06-23' AS Date), CAST(N'2015-06-26' AS Date), CAST(N'2015-06-23' AS Date), CAST(N'2015-07-01' AS Date), N'2:00      ', N'3:00      ', N'FS1                                                                                                 ', N'all                                                                                                 ', N'jytfd ydsg egf rueyjy uyrferewr                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ')
INSERT [dbo].[events] ([eid], [ename], [regstart], [regend], [estart], [eend], [efrom], [eto], [venue], [eligibility], [description]) VALUES (5, N'Tech-Quiz                     ', CAST(N'2015-06-22' AS Date), CAST(N'2015-06-23' AS Date), CAST(N'2015-06-20' AS Date), CAST(N'2015-06-25' AS Date), N'2:00      ', N'3:00      ', N'Auditorium                                                                                          ', N'all                                                                                                 ', N'ht twrw  ydg jwetf,ekufm                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ')
INSERT [dbo].[events] ([eid], [ename], [regstart], [regend], [estart], [eend], [efrom], [eto], [venue], [eligibility], [description]) VALUES (7, N'Hackathon                     ', CAST(N'2015-06-14' AS Date), CAST(N'2015-06-25' AS Date), CAST(N'2015-06-18' AS Date), CAST(N'2015-06-27' AS Date), N'5         ', N'6         ', N'a                                                                                                   ', N'a                                                                                                   ', N'a                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ')
INSERT [dbo].[events] ([eid], [ename], [regstart], [regend], [estart], [eend], [efrom], [eto], [venue], [eligibility], [description]) VALUES (11, N'event                         ', CAST(N'2015-06-02' AS Date), CAST(N'2015-06-25' AS Date), CAST(N'2015-07-06' AS Date), CAST(N'2015-07-07' AS Date), N'5:00      ', N'6:00      ', N'KMIT                                                                                                ', N'ALL                                                                                                 ', N'desc                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ')
SET IDENTITY_INSERT [dbo].[events] OFF
INSERT [dbo].[faculty] ([uname], [password], [domain], [subjects]) VALUES (N'f1        ', N'1234      ', NULL, NULL)
INSERT [dbo].[faculty] ([uname], [password], [domain], [subjects]) VALUES (N'f2        ', N'1234      ', NULL, NULL)
INSERT [dbo].[faculty] ([uname], [password], [domain], [subjects]) VALUES (N'f3        ', N'1234      ', NULL, NULL)
INSERT [dbo].[imageinfo] ([rollno], [pic_det]) VALUES (NULL, 0x372E6A7067)
INSERT [dbo].[imageinfo] ([rollno], [pic_det]) VALUES (NULL, 0x322E6A7067)
INSERT [dbo].[imageinfo] ([rollno], [pic_det]) VALUES (NULL, 0x332E6A7067)
INSERT [dbo].[imageinfo] ([rollno], [pic_det]) VALUES (NULL, 0x332E6A7067)
INSERT [dbo].[imageinfo] ([rollno], [pic_det]) VALUES (NULL, 0x312E6A7067)
INSERT [dbo].[imageinfo] ([rollno], [pic_det]) VALUES (NULL, 0x6861727368612E6A7067)
INSERT [dbo].[imageinfo] ([rollno], [pic_det]) VALUES (N'12BD1A05I3          ', 0x6861727368322E6A7067)
INSERT [dbo].[imageinfo] ([rollno], [pic_det]) VALUES (N'12BD1A05I3          ', 0x6861727368322E6A7067)
INSERT [dbo].[imageinfo] ([rollno], [pic_det]) VALUES (NULL, 0x6861727368612E6A7067)
INSERT [dbo].[reg] ([en], [name], [hno], [course], [email], [phno]) VALUES (N'Debate    ', N'Varsha                                            ', N'12BD1A05I1', N'it                                                ', N'Varsh@yahoo.com                                   ', N'123456789                                         ')
INSERT [dbo].[reg] ([en], [name], [hno], [course], [email], [phno]) VALUES (N'Debate    ', N'                                                  ', N'          ', N'                                                  ', N'                                                  ', N'                                                  ')
INSERT [dbo].[reg] ([en], [name], [hno], [course], [email], [phno]) VALUES (N'Debate    ', N'Esha                                              ', N'13BD1A0522', N'CSE-A                                             ', N'esha@gmail.com                                    ', N'9999999999                                        ')
INSERT [dbo].[reg] ([en], [name], [hno], [course], [email], [phno]) VALUES (N'Tech-Quiz ', N'Varsha                                            ', N'12BD1A05I1', N'it                                                ', N'Varsh@yahoo.com                                   ', N'123456789                                         ')
INSERT [dbo].[setting] ([rno], [uname], [password], [email], [abt], [interest], [contact], [imagepath], [mob_no], [course]) VALUES (N'12BD1A05I1', N'Varsha                                            ', N'31051995  ', N'Varsh@yahoo.com                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', N'hi                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', N'hi                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', N'hi                                                                                                  ', NULL, N'123456789 ', N'it        ')
INSERT [dbo].[setting] ([rno], [uname], [password], [email], [abt], [interest], [contact], [imagepath], [mob_no], [course]) VALUES (N'12BD1A05I8', N'Harsha                                            ', N'31051995  ', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[setting] ([rno], [uname], [password], [email], [abt], [interest], [contact], [imagepath], [mob_no], [course]) VALUES (N'13BD1A0522', N'Esha                                              ', N'pingu     ', N'esha@gmail.com                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', N'Hey there!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', N'Space,Anything Tech,Music                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', N'Origami,Sketching                                                                                   ', NULL, N'9999999999', N'CSE-A     ')
INSERT [dbo].[setting] ([rno], [uname], [password], [email], [abt], [interest], [contact], [imagepath], [mob_no], [course]) VALUES (N'13BD1A0525', N'Sahithya                                          ', N'sonu      ', N'sahi@hotmail.com                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', NULL, N'Arts,Music                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', N'                                       Gardening                                                    ', NULL, N'7896541230', N'CSE-A     ')
INSERT [dbo].[setting] ([rno], [uname], [password], [email], [abt], [interest], [contact], [imagepath], [mob_no], [course]) VALUES (N'13BD1A0514', N'Sanjana                                           ', N'sanju     ', N'sanju@yahoo.com                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', NULL, NULL, NULL, NULL, N'9632587410', N'CSE-A     ')
INSERT [dbo].[setting] ([rno], [uname], [password], [email], [abt], [interest], [contact], [imagepath], [mob_no], [course]) VALUES (N'12BD1A0545', N'hi                                                ', N'31051995  ', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[setting] ([rno], [uname], [password], [email], [abt], [interest], [contact], [imagepath], [mob_no], [course]) VALUES (N'12BD1A0527', N'hello                                             ', N'31051995  ', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[setting] ([rno], [uname], [password], [email], [abt], [interest], [contact], [imagepath], [mob_no], [course]) VALUES (N'12BD1A0529', N'hello                                             ', N'31051995  ', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[setting] ([rno], [uname], [password], [email], [abt], [interest], [contact], [imagepath], [mob_no], [course]) VALUES (N'12BD1A0559', N'hi4                                               ', N'          ', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[setting] ([rno], [uname], [password], [email], [abt], [interest], [contact], [imagepath], [mob_no], [course]) VALUES (N'12BD1A0560', N'hello                                             ', N'3105      ', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[setting] ([rno], [uname], [password], [email], [abt], [interest], [contact], [imagepath], [mob_no], [course]) VALUES (N'12BD1A0547', N'harsha                                            ', N'3105      ', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[setting] ([rno], [uname], [password], [email], [abt], [interest], [contact], [imagepath], [mob_no], [course]) VALUES (N'12BD1A0530', N'Harsha                                            ', N'3105      ', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[teamevents] ON 

INSERT [dbo].[teamevents] ([eid], [ename], [regstart], [regend], [estart], [eend], [efrom], [eto], [venue], [eligibility], [description], [tmno]) VALUES (2, N'Quiz                                                                                                ', CAST(N'2015-06-23' AS Date), CAST(N'2015-06-25' AS Date), CAST(N'2015-06-26' AS Date), CAST(N'2015-06-27' AS Date), N'3:30      ', N'4:30                                                                                                ', N'FS1                                                                                                 ', N'all                                                                                                 ', N'u y gke ygerkuy fgrwkiu hliufg mfhdmhjvef ,fj                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 2)
INSERT [dbo].[teamevents] ([eid], [ename], [regstart], [regend], [estart], [eend], [efrom], [eto], [venue], [eligibility], [description], [tmno]) VALUES (8, N'Foot-Ball Match                                                                                     ', CAST(N'2015-06-26' AS Date), CAST(N'2015-07-15' AS Date), CAST(N'2015-06-19' AS Date), CAST(N'2015-06-26' AS Date), N'5         ', N'6                                                                                                   ', N'Hyderabad                                                                                           ', N'all                                                                                                 ', N'desc1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ', 2)
INSERT [dbo].[teamevents] ([eid], [ename], [regstart], [regend], [estart], [eend], [efrom], [eto], [venue], [eligibility], [description], [tmno]) VALUES (9, N'.NET Presentation                                                                                   ', CAST(N'2015-06-16' AS Date), CAST(N'2015-06-17' AS Date), CAST(N'2015-06-18' AS Date), CAST(N'2015-06-19' AS Date), N'5:00      ', N'6:00                                                                                                ', N'KMIT                                                                                                ', N'Trishul Class of 2014                                                                               ', N'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', 3)
SET IDENTITY_INSERT [dbo].[teamevents] OFF
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'Quiz                                                                                                ', N'quizzically                                                                                         ', N'Esha                                                                                                ', N'13BD1A0522                                                                                          ', N'9999999999', N'CSE-A     ', N'esha@gmail.com                                                                                      ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'Quiz                                                                                                ', N'q1                                                                                                  ', N's1                                                                                                  ', N'a                                                                                                   ', N's         ', N'd         ', N'f                                                                                                   ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'Quiz                                                                                                ', N'q1                                                                                                  ', N's1                                                                                                  ', N'a                                                                                                   ', N's         ', N'd         ', N'f                                                                                                   ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'.NET Presentation                                                                                   ', N'Team FORUM                                                                                          ', N'Esha                                                                                                ', N'13BD1A0538                                                                                          ', N'123456725 ', N'CSE       ', N'esha@gmail.com                                                                                      ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'Quiz                                                                                                ', N't1                                                                                                  ', N'1                                                                                                   ', N'2                                                                                                   ', N'3         ', N'4         ', N'5                                                                                                   ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'Quiz                                                                                                ', N't1                                                                                                  ', N'1                                                                                                   ', N'2                                                                                                   ', N'3         ', N'4         ', N'5                                                                                                   ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'.NET Presentation                                                                                   ', N'Team FORUM                                                                                          ', N'Praharshita                                                                                         ', N'13BD1A0522                                                                                          ', N'123456789 ', N'it        ', N'kp@gmail.com                                                                                        ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'.NET Presentation                                                                                   ', N'Geeks                                                                                               ', N'Esha                                                                                                ', N'13BD1A0522                                                                                          ', N'9999999999', N'CSE-A     ', N'esha@gmail.com                                                                                      ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'.NET Presentation                                                                                   ', N'Geeks                                                                                               ', N'Sanjana                                                                                             ', N'13BD1A0514                                                                                          ', N'9632587410', N'CSE-A     ', N'sanju@yahoo.com                                                                                     ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'Quiz                                                                                                ', N'q1                                                                                                  ', N's1                                                                                                  ', N'a                                                                                                   ', N's         ', N'd         ', N'f                                                                                                   ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'Quiz                                                                                                ', N'quizzers                                                                                            ', N'Esha                                                                                                ', N'13BD1A0522                                                                                          ', N'9999999999', N'CSE-A     ', N'esha@gmail.com                                                                                      ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'Quiz                                                                                                ', N'quizzers                                                                                            ', N'Sahithya                                                                                            ', N'13BD1A0525                                                                                          ', N'7896541230', N'CSE-A     ', N'sahi@hotmail.com                                                                                    ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'Foot-Ball Match                                                                                     ', N'kix                                                                                                 ', N'Esha                                                                                                ', N'13BD1A0522                                                                                          ', N'9999999999', N'CSE-A     ', N'esha@gmail.com                                                                                      ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'Quiz                                                                                                ', N'q1                                                                                                  ', N'Esha                                                                                                ', N'13BD1A0522                                                                                          ', N'9999999999', N'CSE-A     ', N'esha@gmail.com                                                                                      ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'Quiz                                                                                                ', N'tn                                                                                                  ', N'Esha                                                                                                ', N'13BD1A0522                                                                                          ', N'9999999999', N'CSE-A     ', N'esha@gmail.com                                                                                      ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'Quiz                                                                                                ', N'tn                                                                                                  ', N'Esha                                                                                                ', N'13BD1A0522                                                                                          ', N'9999999999', N'CSE-A     ', N'esha@gmail.com                                                                                      ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'Quiz                                                                                                ', N'q1                                                                                                  ', N's1                                                                                                  ', N'a                                                                                                   ', N's         ', N'd         ', N'f                                                                                                   ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'Quiz                                                                                                ', N'q1                                                                                                  ', N'Esha                                                                                                ', N'13BD1A0522                                                                                          ', N'9999999999', N'CSE-A     ', N'esha@gmail.com                                                                                      ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'.NET Presentation                                                                                   ', N'Team FORUM                                                                                          ', N'asdf                                                                                                ', N'                                                                                                    ', N'123456725 ', N'          ', N'esha@gmail.com                                                                                      ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'.NET Presentation                                                                                   ', N'Geeks                                                                                               ', N'Sahithya                                                                                            ', N'13BD1A0525                                                                                          ', N'7896541230', N'CSE-A     ', N'sahi@hotmail.com                                                                                    ')
INSERT [dbo].[teamreg] ([en], [tname], [stu_name], [uname], [mob_no], [course], [email_id]) VALUES (N'Quiz                                                                                                ', N'quizzically                                                                                         ', N'Sanjana                                                                                             ', N'13BD1A0514                                                                                          ', N'9632587410', N'CSE-A     ', N'sanju@yahoo.com                                                                                     ')
USE [master]
GO
ALTER DATABASE [forum] SET  READ_WRITE 
GO

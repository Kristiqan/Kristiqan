USE [master]
GO
/****** Object:  Database [Football Championship]    Script Date: 9/27/2021 9:26:51 PM ******/
CREATE DATABASE [Football Championship]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Football Championship', FILENAME = N'D:\Programs\Ligit Programs\Programs\SQL Server 2019\MSSQL15.MSSQLSERVER\MSSQL\DATA\Football Championship.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Football Championship_log', FILENAME = N'D:\Programs\Ligit Programs\Programs\SQL Server 2019\MSSQL15.MSSQLSERVER\MSSQL\DATA\Football Championship_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Football Championship] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Football Championship].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Football Championship] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Football Championship] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Football Championship] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Football Championship] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Football Championship] SET ARITHABORT OFF 
GO
ALTER DATABASE [Football Championship] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Football Championship] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Football Championship] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Football Championship] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Football Championship] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Football Championship] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Football Championship] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Football Championship] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Football Championship] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Football Championship] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Football Championship] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Football Championship] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Football Championship] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Football Championship] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Football Championship] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Football Championship] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Football Championship] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Football Championship] SET RECOVERY FULL 
GO
ALTER DATABASE [Football Championship] SET  MULTI_USER 
GO
ALTER DATABASE [Football Championship] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Football Championship] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Football Championship] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Football Championship] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Football Championship] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Football Championship] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Football Championship', N'ON'
GO
ALTER DATABASE [Football Championship] SET QUERY_STORE = OFF
GO
USE [Football Championship]
GO
/****** Object:  Table [dbo].[Footballers]    Script Date: 9/27/2021 9:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footballers](
	[FP_ID] [int] IDENTITY(1,1) NOT NULL,
	[FP_FirstName] [nvarchar](50) NULL,
	[FP_LastName] [nvarchar](50) NULL,
	[Team_ID] [int] NULL,
 CONSTRAINT [PK_Footballers_1] PRIMARY KEY CLUSTERED 
(
	[FP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 9/27/2021 9:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Group_ID] [int] IDENTITY(1,1) NOT NULL,
	[Group_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[Group_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Managers]    Script Date: 9/27/2021 9:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Managers](
	[M_ID] [int] IDENTITY(1,1) NOT NULL,
	[M_FirstName] [nvarchar](50) NULL,
	[M_LastName] [nvarchar](50) NULL,
	[Team_ID] [int] NULL,
 CONSTRAINT [PK_Managers] PRIMARY KEY CLUSTERED 
(
	[M_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meetings Between Teams]    Script Date: 9/27/2021 9:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meetings Between Teams](
	[MBT_ID] [int] IDENTITY(1,1) NOT NULL,
	[Winner] [int] NULL,
	[Loser] [int] NULL,
	[R_ID] [int] NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[L_Points] [int] NULL,
	[W_Points] [int] NULL,
 CONSTRAINT [PK_Meetings Between Teams] PRIMARY KEY CLUSTERED 
(
	[MBT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Referees]    Script Date: 9/27/2021 9:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Referees](
	[R_ID] [int] IDENTITY(1,1) NOT NULL,
	[R_FirstName] [nvarchar](50) NULL,
	[R_LastName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Referees] PRIMARY KEY CLUSTERED 
(
	[R_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 9/27/2021 9:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[Team_ID] [int] IDENTITY(1,1) NOT NULL,
	[Team_Name] [nvarchar](50) NULL,
	[Group_ID] [int] NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[Team_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Footballers] ON 

INSERT [dbo].[Footballers] ([FP_ID], [FP_FirstName], [FP_LastName], [Team_ID]) VALUES (1, N'Norman', N'Conquest', 1)
INSERT [dbo].[Footballers] ([FP_ID], [FP_FirstName], [FP_LastName], [Team_ID]) VALUES (2, N'Mark ', N'de Man', 1)
INSERT [dbo].[Footballers] ([FP_ID], [FP_FirstName], [FP_LastName], [Team_ID]) VALUES (3, N'Peter', N'Pander', 2)
INSERT [dbo].[Footballers] ([FP_ID], [FP_FirstName], [FP_LastName], [Team_ID]) VALUES (4, N' David ', N'Goodwillie', 2)
INSERT [dbo].[Footballers] ([FP_ID], [FP_FirstName], [FP_LastName], [Team_ID]) VALUES (5, N'Danger', N'Fourpence', 2)
INSERT [dbo].[Footballers] ([FP_ID], [FP_FirstName], [FP_LastName], [Team_ID]) VALUES (6, N'Michael', N'Gash', 5)
INSERT [dbo].[Footballers] ([FP_ID], [FP_FirstName], [FP_LastName], [Team_ID]) VALUES (7, N'Fabian', N'Assman', 5)
INSERT [dbo].[Footballers] ([FP_ID], [FP_FirstName], [FP_LastName], [Team_ID]) VALUES (8, N'Bernt', N'Haas', 4)
INSERT [dbo].[Footballers] ([FP_ID], [FP_FirstName], [FP_LastName], [Team_ID]) VALUES (9, N'Chiqui', N'Arce', 4)
INSERT [dbo].[Footballers] ([FP_ID], [FP_FirstName], [FP_LastName], [Team_ID]) VALUES (10, N'Nortei ', N'Nortey', 4)
INSERT [dbo].[Footballers] ([FP_ID], [FP_FirstName], [FP_LastName], [Team_ID]) VALUES (11, N'Danny', N'Invincible', 2)
INSERT [dbo].[Footballers] ([FP_ID], [FP_FirstName], [FP_LastName], [Team_ID]) VALUES (12, N' Andre ', N' Muff', 1)
INSERT [dbo].[Footballers] ([FP_ID], [FP_FirstName], [FP_LastName], [Team_ID]) VALUES (13, N'David', N' Seaman
', 1)
INSERT [dbo].[Footballers] ([FP_ID], [FP_FirstName], [FP_LastName], [Team_ID]) VALUES (14, N'Ralf', N'Minge', 1)
INSERT [dbo].[Footballers] ([FP_ID], [FP_FirstName], [FP_LastName], [Team_ID]) VALUES (15, N'Danny', N'Shittu', NULL)
SET IDENTITY_INSERT [dbo].[Footballers] OFF
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([Group_ID], [Group_Name]) VALUES (1, N'Efbet League')
INSERT [dbo].[Groups] ([Group_ID], [Group_Name]) VALUES (2, N'Isthmian League')
INSERT [dbo].[Groups] ([Group_ID], [Group_Name]) VALUES (3, N'Second Professional League')
INSERT [dbo].[Groups] ([Group_ID], [Group_Name]) VALUES (4, N'Third Amateur League')
INSERT [dbo].[Groups] ([Group_ID], [Group_Name]) VALUES (5, N'Premier League')
INSERT [dbo].[Groups] ([Group_ID], [Group_Name]) VALUES (6, N'National League North')
INSERT [dbo].[Groups] ([Group_ID], [Group_Name]) VALUES (7, N'Sky Bet Championship')
INSERT [dbo].[Groups] ([Group_ID], [Group_Name]) VALUES (8, N'Vanarama National League')
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
SET IDENTITY_INSERT [dbo].[Managers] ON 

INSERT [dbo].[Managers] ([M_ID], [M_FirstName], [M_LastName], [Team_ID]) VALUES (1, N'Mircea', N'Lucescu', 3)
INSERT [dbo].[Managers] ([M_ID], [M_FirstName], [M_LastName], [Team_ID]) VALUES (2, N'Arsene', N'Wenger', 5)
INSERT [dbo].[Managers] ([M_ID], [M_FirstName], [M_LastName], [Team_ID]) VALUES (3, N'Pep', N'Guardiola', 2)
INSERT [dbo].[Managers] ([M_ID], [M_FirstName], [M_LastName], [Team_ID]) VALUES (4, N' Marcello', N'Lippi', NULL)
INSERT [dbo].[Managers] ([M_ID], [M_FirstName], [M_LastName], [Team_ID]) VALUES (5, N'Antonio', N'Conte', NULL)
INSERT [dbo].[Managers] ([M_ID], [M_FirstName], [M_LastName], [Team_ID]) VALUES (10, N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Managers] OFF
GO
SET IDENTITY_INSERT [dbo].[Meetings Between Teams] ON 

INSERT [dbo].[Meetings Between Teams] ([MBT_ID], [Winner], [Loser], [R_ID], [Date], [Time], [L_Points], [W_Points]) VALUES (1, 1, 3, 1, CAST(N'1997-05-10' AS Date), CAST(N'10:00:00' AS Time), 4, 8)
INSERT [dbo].[Meetings Between Teams] ([MBT_ID], [Winner], [Loser], [R_ID], [Date], [Time], [L_Points], [W_Points]) VALUES (2, 3, 2, 3, CAST(N'1998-06-20' AS Date), CAST(N'12:24:00' AS Time), 2, 4)
INSERT [dbo].[Meetings Between Teams] ([MBT_ID], [Winner], [Loser], [R_ID], [Date], [Time], [L_Points], [W_Points]) VALUES (3, 5, 1, 7, CAST(N'1999-10-10' AS Date), CAST(N'15:17:00' AS Time), 3, 5)
INSERT [dbo].[Meetings Between Teams] ([MBT_ID], [Winner], [Loser], [R_ID], [Date], [Time], [L_Points], [W_Points]) VALUES (4, 1, 5, 6, CAST(N'2000-09-05' AS Date), CAST(N'18:20:00' AS Time), 4, 7)
INSERT [dbo].[Meetings Between Teams] ([MBT_ID], [Winner], [Loser], [R_ID], [Date], [Time], [L_Points], [W_Points]) VALUES (5, 3, 1, 2, CAST(N'2005-08-06' AS Date), CAST(N'16:10:00' AS Time), 2, 5)
INSERT [dbo].[Meetings Between Teams] ([MBT_ID], [Winner], [Loser], [R_ID], [Date], [Time], [L_Points], [W_Points]) VALUES (6, 1, 5, 5, CAST(N'2007-10-09' AS Date), CAST(N'01:00:00' AS Time), 6, 8)
INSERT [dbo].[Meetings Between Teams] ([MBT_ID], [Winner], [Loser], [R_ID], [Date], [Time], [L_Points], [W_Points]) VALUES (7, 2, 4, 3, CAST(N'2006-02-10' AS Date), CAST(N'03:00:00' AS Time), 10, 12)
INSERT [dbo].[Meetings Between Teams] ([MBT_ID], [Winner], [Loser], [R_ID], [Date], [Time], [L_Points], [W_Points]) VALUES (8, 1, 2, 6, CAST(N'2009-06-30' AS Date), CAST(N'05:00:00' AS Time), 9, 10)
INSERT [dbo].[Meetings Between Teams] ([MBT_ID], [Winner], [Loser], [R_ID], [Date], [Time], [L_Points], [W_Points]) VALUES (9, 2, 1, 2, CAST(N'2013-04-21' AS Date), CAST(N'18:00:00' AS Time), 0, 3)
INSERT [dbo].[Meetings Between Teams] ([MBT_ID], [Winner], [Loser], [R_ID], [Date], [Time], [L_Points], [W_Points]) VALUES (10, 4, 5, 7, CAST(N'2014-12-24' AS Date), CAST(N'19:00:00' AS Time), 0, 5)
INSERT [dbo].[Meetings Between Teams] ([MBT_ID], [Winner], [Loser], [R_ID], [Date], [Time], [L_Points], [W_Points]) VALUES (11, 5, 4, 2, CAST(N'2016-05-10' AS Date), CAST(N'07:00:00' AS Time), 7, 9)
INSERT [dbo].[Meetings Between Teams] ([MBT_ID], [Winner], [Loser], [R_ID], [Date], [Time], [L_Points], [W_Points]) VALUES (12, 4, 2, 4, CAST(N'2018-09-07' AS Date), CAST(N'05:00:00' AS Time), 6, 8)
INSERT [dbo].[Meetings Between Teams] ([MBT_ID], [Winner], [Loser], [R_ID], [Date], [Time], [L_Points], [W_Points]) VALUES (13, 2, 3, 2, CAST(N'2019-03-01' AS Date), CAST(N'13:00:00' AS Time), 1, 2)
INSERT [dbo].[Meetings Between Teams] ([MBT_ID], [Winner], [Loser], [R_ID], [Date], [Time], [L_Points], [W_Points]) VALUES (14, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meetings Between Teams] ([MBT_ID], [Winner], [Loser], [R_ID], [Date], [Time], [L_Points], [W_Points]) VALUES (15, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Meetings Between Teams] OFF
GO
SET IDENTITY_INSERT [dbo].[Referees] ON 

INSERT [dbo].[Referees] ([R_ID], [R_FirstName], [R_LastName]) VALUES (1, N'Einar', N'Aas')
INSERT [dbo].[Referees] ([R_ID], [R_FirstName], [R_LastName]) VALUES (2, N'Robin', N'Friday')
INSERT [dbo].[Referees] ([R_ID], [R_FirstName], [R_LastName]) VALUES (3, N' Donald', N'Stanley')
INSERT [dbo].[Referees] ([R_ID], [R_FirstName], [R_LastName]) VALUES (4, N'Gordon', N'Stephen')
INSERT [dbo].[Referees] ([R_ID], [R_FirstName], [R_LastName]) VALUES (5, N'James', N'Oatway')
INSERT [dbo].[Referees] ([R_ID], [R_FirstName], [R_LastName]) VALUES (6, N'Kevin ', N' Prince')
INSERT [dbo].[Referees] ([R_ID], [R_FirstName], [R_LastName]) VALUES (7, N'Farishta', N'Shaikmiri')
SET IDENTITY_INSERT [dbo].[Referees] OFF
GO
SET IDENTITY_INSERT [dbo].[Teams] ON 

INSERT [dbo].[Teams] ([Team_ID], [Team_Name], [Group_ID]) VALUES (1, N'CSKA', 1)
INSERT [dbo].[Teams] ([Team_ID], [Team_Name], [Group_ID]) VALUES (2, N'Heybridge Swifts F.C.', 2)
INSERT [dbo].[Teams] ([Team_ID], [Team_Name], [Group_ID]) VALUES (3, N'PFC Litex Lovech', 3)
INSERT [dbo].[Teams] ([Team_ID], [Team_Name], [Group_ID]) VALUES (4, N'FC Yantra Gabrovo', 4)
INSERT [dbo].[Teams] ([Team_ID], [Team_Name], [Group_ID]) VALUES (5, N'Manchester United F.C.', 5)
INSERT [dbo].[Teams] ([Team_ID], [Team_Name], [Group_ID]) VALUES (6, N'Chester F.C.', NULL)
INSERT [dbo].[Teams] ([Team_ID], [Team_Name], [Group_ID]) VALUES (7, N'Queens Park Rangers F.C.', NULL)
SET IDENTITY_INSERT [dbo].[Teams] OFF
GO
ALTER TABLE [dbo].[Footballers]  WITH CHECK ADD  CONSTRAINT [FK_Footballers_Teams1] FOREIGN KEY([Team_ID])
REFERENCES [dbo].[Teams] ([Team_ID])
GO
ALTER TABLE [dbo].[Footballers] CHECK CONSTRAINT [FK_Footballers_Teams1]
GO
ALTER TABLE [dbo].[Managers]  WITH CHECK ADD  CONSTRAINT [FK_Managers_Teams] FOREIGN KEY([Team_ID])
REFERENCES [dbo].[Teams] ([Team_ID])
GO
ALTER TABLE [dbo].[Managers] CHECK CONSTRAINT [FK_Managers_Teams]
GO
ALTER TABLE [dbo].[Meetings Between Teams]  WITH CHECK ADD  CONSTRAINT [FK_Meetings Between Teams_Referees] FOREIGN KEY([R_ID])
REFERENCES [dbo].[Referees] ([R_ID])
GO
ALTER TABLE [dbo].[Meetings Between Teams] CHECK CONSTRAINT [FK_Meetings Between Teams_Referees]
GO
ALTER TABLE [dbo].[Meetings Between Teams]  WITH CHECK ADD  CONSTRAINT [FK_Meetings Between Teams_Teams2] FOREIGN KEY([Loser])
REFERENCES [dbo].[Teams] ([Team_ID])
GO
ALTER TABLE [dbo].[Meetings Between Teams] CHECK CONSTRAINT [FK_Meetings Between Teams_Teams2]
GO
ALTER TABLE [dbo].[Meetings Between Teams]  WITH CHECK ADD  CONSTRAINT [FK_Meetings Between Teams_Teams3] FOREIGN KEY([Winner])
REFERENCES [dbo].[Teams] ([Team_ID])
GO
ALTER TABLE [dbo].[Meetings Between Teams] CHECK CONSTRAINT [FK_Meetings Between Teams_Teams3]
GO
ALTER TABLE [dbo].[Teams]  WITH CHECK ADD  CONSTRAINT [FK_Teams_Groups1] FOREIGN KEY([Group_ID])
REFERENCES [dbo].[Groups] ([Group_ID])
GO
ALTER TABLE [dbo].[Teams] CHECK CONSTRAINT [FK_Teams_Groups1]
GO
/****** Object:  StoredProcedure [dbo].[Points]    Script Date: 9/27/2021 9:26:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Points]
AS 
SELECT COUNT(Winner)*3 FROM [Meetings Between Teams]
WHERE Winner=1 AND Date > '2007-10-09'
GO
USE [master]
GO
ALTER DATABASE [Football Championship] SET  READ_WRITE 
GO

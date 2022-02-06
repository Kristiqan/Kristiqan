USE [master]
GO

CREATE DATABASE [Futbolno_Parvenstvo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Futbolno_Parvenstvo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Futbolno_Parvenstvo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Futbolno_Parvenstvo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Futbolno_Parvenstvo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Futbolno_Parvenstvo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET RECOVERY FULL 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET  MULTI_USER 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Futbolno_Parvenstvo', N'ON'
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET QUERY_STORE = OFF
GO
USE [Futbolno_Parvenstvo]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Group_ID] [int] IDENTITY(1,1) NOT NULL,
	[Group_Name] [varchar](50) NULL,
 CONSTRAINT [PK__Groups__319812692BB5BA22] PRIMARY KEY CLUSTERED 
(
	[Group_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[Manager_ID] [int] IDENTITY(1,1) NOT NULL,
	[Manager_Name] [varchar](50) NULL,
	[Manager_Team_ID] [int] NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matches](
	[Match_ID] [int] IDENTITY(1,1) NOT NULL,
	[Team_ID_1] [int] NULL,
	[Team_ID_2] [int] NULL,
	[Referee_ID] [int] NULL,
	[Match_Date] [date] NULL,
	[Team_1_Goals] [int] NULL,
	[Team_2_Goals] [int] NULL,
	[Winner] [int] NULL,
	[Loser] [int] NULL,
	[draw] [int] NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players](
	[Player_ID] [int] IDENTITY(1,1) NOT NULL,
	[Player_Name] [varchar](50) NULL,
	[Player_Team_ID] [int] NULL,
	[Player_Position] [varchar](50) NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Referee](
	[Referee_ID] [int] IDENTITY(1,1) NOT NULL,
	[Referee_Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Referee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[Team_ID] [int] IDENTITY(1,1) NOT NULL,
	[Team_Name] [varchar](50) NULL,
	[Group_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Team_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([Group_ID], [Group_Name]) VALUES (1, N'Efbet_League')
INSERT [dbo].[Groups] ([Group_ID], [Group_Name]) VALUES (2, N'Isthmian_League')
INSERT [dbo].[Groups] ([Group_ID], [Group_Name]) VALUES (3, N'Second_Professional_League')
INSERT [dbo].[Groups] ([Group_ID], [Group_Name]) VALUES (4, N'Third_Amateur_League')
INSERT [dbo].[Groups] ([Group_ID], [Group_Name]) VALUES (5, N'Premier_League')
INSERT [dbo].[Groups] ([Group_ID], [Group_Name]) VALUES (6, N'National_League_North')
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
SET IDENTITY_INSERT [dbo].[Manager] ON 

INSERT [dbo].[Manager] ([Manager_ID], [Manager_Name], [Manager_Team_ID]) VALUES (1, N'Mircea Lucescu', 1)
INSERT [dbo].[Manager] ([Manager_ID], [Manager_Name], [Manager_Team_ID]) VALUES (2, N'Arsene Wenger', 2)
INSERT [dbo].[Manager] ([Manager_ID], [Manager_Name], [Manager_Team_ID]) VALUES (3, N'Pep Guardiola', 3)
INSERT [dbo].[Manager] ([Manager_ID], [Manager_Name], [Manager_Team_ID]) VALUES (4, N' Marcello Lippi', 4)
INSERT [dbo].[Manager] ([Manager_ID], [Manager_Name], [Manager_Team_ID]) VALUES (5, N'Antonio Conte', 5)
INSERT [dbo].[Manager] ([Manager_ID], [Manager_Name], [Manager_Team_ID]) VALUES (6, N'Lucien Favre', 6)
INSERT [dbo].[Manager] ([Manager_ID], [Manager_Name], [Manager_Team_ID]) VALUES (7, N'Jürgen Klopp', 7)
INSERT [dbo].[Manager] ([Manager_ID], [Manager_Name], [Manager_Team_ID]) VALUES (8, N'Ole Gunnar Solskjær', 8)
INSERT [dbo].[Manager] ([Manager_ID], [Manager_Name], [Manager_Team_ID]) VALUES (9, N'Stefano Pioli', 9)
INSERT [dbo].[Manager] ([Manager_ID], [Manager_Name], [Manager_Team_ID]) VALUES (10, N'Andrea Pirlo', 10)
INSERT [dbo].[Manager] ([Manager_ID], [Manager_Name], [Manager_Team_ID]) VALUES (11, N'Thomas Tuchel', 11)
INSERT [dbo].[Manager] ([Manager_ID], [Manager_Name], [Manager_Team_ID]) VALUES (12, N'Patrick Vieira', 12)
SET IDENTITY_INSERT [dbo].[Manager] OFF
GO
SET IDENTITY_INSERT [dbo].[Matches] ON 

INSERT [dbo].[Matches] ([Match_ID], [Team_ID_1], [Team_ID_2], [Referee_ID], [Match_Date], [Team_1_Goals], [Team_2_Goals], [Winner], [Loser], [draw]) VALUES (1, 1, 2, 1, CAST(N'2022-10-23' AS Date), 3, 5, 2, 1, NULL)
INSERT [dbo].[Matches] ([Match_ID], [Team_ID_1], [Team_ID_2], [Referee_ID], [Match_Date], [Team_1_Goals], [Team_2_Goals], [Winner], [Loser], [draw]) VALUES (2, 2, 3, 4, CAST(N'2022-10-23' AS Date), 1, 2, 3, 2, NULL)
INSERT [dbo].[Matches] ([Match_ID], [Team_ID_1], [Team_ID_2], [Referee_ID], [Match_Date], [Team_1_Goals], [Team_2_Goals], [Winner], [Loser], [draw]) VALUES (3, 3, 4, 3, CAST(N'2022-10-23' AS Date), 4, 2, 3, 4, NULL)
INSERT [dbo].[Matches] ([Match_ID], [Team_ID_1], [Team_ID_2], [Referee_ID], [Match_Date], [Team_1_Goals], [Team_2_Goals], [Winner], [Loser], [draw]) VALUES (4, 4, 5, 7, CAST(N'2022-10-23' AS Date), 4, 2, 4, 5, NULL)
INSERT [dbo].[Matches] ([Match_ID], [Team_ID_1], [Team_ID_2], [Referee_ID], [Match_Date], [Team_1_Goals], [Team_2_Goals], [Winner], [Loser], [draw]) VALUES (5, 5, 6, 7, CAST(N'2022-10-23' AS Date), 2, 1, 5, 4, NULL)
INSERT [dbo].[Matches] ([Match_ID], [Team_ID_1], [Team_ID_2], [Referee_ID], [Match_Date], [Team_1_Goals], [Team_2_Goals], [Winner], [Loser], [draw]) VALUES (6, 6, 7, 2, CAST(N'2022-10-23' AS Date), 3, 1, 6, 7, NULL)
INSERT [dbo].[Matches] ([Match_ID], [Team_ID_1], [Team_ID_2], [Referee_ID], [Match_Date], [Team_1_Goals], [Team_2_Goals], [Winner], [Loser], [draw]) VALUES (7, 7, 8, 2, CAST(N'2022-10-23' AS Date), 6, 1, 7, 8, NULL)
INSERT [dbo].[Matches] ([Match_ID], [Team_ID_1], [Team_ID_2], [Referee_ID], [Match_Date], [Team_1_Goals], [Team_2_Goals], [Winner], [Loser], [draw]) VALUES (8, 8, 9, 5, CAST(N'2022-10-23' AS Date), 4, 3, 8, 9, NULL)
INSERT [dbo].[Matches] ([Match_ID], [Team_ID_1], [Team_ID_2], [Referee_ID], [Match_Date], [Team_1_Goals], [Team_2_Goals], [Winner], [Loser], [draw]) VALUES (9, 9, 10, 1, CAST(N'2022-10-23' AS Date), 7, 3, 9, 10, NULL)
INSERT [dbo].[Matches] ([Match_ID], [Team_ID_1], [Team_ID_2], [Referee_ID], [Match_Date], [Team_1_Goals], [Team_2_Goals], [Winner], [Loser], [draw]) VALUES (10, 10, 11, 9, CAST(N'2022-10-23' AS Date), 4, 2, 10, 11, NULL)
INSERT [dbo].[Matches] ([Match_ID], [Team_ID_1], [Team_ID_2], [Referee_ID], [Match_Date], [Team_1_Goals], [Team_2_Goals], [Winner], [Loser], [draw]) VALUES (11, 11, 12, 3, CAST(N'2022-10-23' AS Date), 6, 2, 11, 12, NULL)
INSERT [dbo].[Matches] ([Match_ID], [Team_ID_1], [Team_ID_2], [Referee_ID], [Match_Date], [Team_1_Goals], [Team_2_Goals], [Winner], [Loser], [draw]) VALUES (12, 1, 12, 3, CAST(N'2022-10-23' AS Date), 3, 2, 1, 12, NULL)
INSERT [dbo].[Matches] ([Match_ID], [Team_ID_1], [Team_ID_2], [Referee_ID], [Match_Date], [Team_1_Goals], [Team_2_Goals], [Winner], [Loser], [draw]) VALUES (13, 2, 11, 3, CAST(N'2022-10-23' AS Date), 5, 3, 2, 11, NULL)
INSERT [dbo].[Matches] ([Match_ID], [Team_ID_1], [Team_ID_2], [Referee_ID], [Match_Date], [Team_1_Goals], [Team_2_Goals], [Winner], [Loser], [draw]) VALUES (14, 5, 11, 3, CAST(N'2022-10-23' AS Date), 5, 3, 5, 11, NULL)
INSERT [dbo].[Matches] ([Match_ID], [Team_ID_1], [Team_ID_2], [Referee_ID], [Match_Date], [Team_1_Goals], [Team_2_Goals], [Winner], [Loser], [draw]) VALUES (15, 5, 9, 3, CAST(N'2022-10-23' AS Date), 5, 4, 5, 9, NULL)
INSERT [dbo].[Matches] ([Match_ID], [Team_ID_1], [Team_ID_2], [Referee_ID], [Match_Date], [Team_1_Goals], [Team_2_Goals], [Winner], [Loser], [draw]) VALUES (16, 5, 9, 3, CAST(N'2022-10-24' AS Date), 5, 4, 5, 9, NULL)
INSERT [dbo].[Matches] ([Match_ID], [Team_ID_1], [Team_ID_2], [Referee_ID], [Match_Date], [Team_1_Goals], [Team_2_Goals], [Winner], [Loser], [draw]) VALUES (17, 5, 9, 3, CAST(N'2022-10-24' AS Date), 5, 4, 5, 9, NULL)
INSERT [dbo].[Matches] ([Match_ID], [Team_ID_1], [Team_ID_2], [Referee_ID], [Match_Date], [Team_1_Goals], [Team_2_Goals], [Winner], [Loser], [draw]) VALUES (18, 5, 9, 3, CAST(N'2022-10-24' AS Date), 5, 4, 5, 9, NULL)
SET IDENTITY_INSERT [dbo].[Matches] OFF
GO
SET IDENTITY_INSERT [dbo].[Players] ON 

INSERT [dbo].[Players] ([Player_ID], [Player_Name], [Player_Team_ID], [Player_Position]) VALUES (1, N'Norman Conquest', 1, N'Midfielder')
INSERT [dbo].[Players] ([Player_ID], [Player_Name], [Player_Team_ID], [Player_Position]) VALUES (2, N'Mark  de Man', 2, N'Right back')
INSERT [dbo].[Players] ([Player_ID], [Player_Name], [Player_Team_ID], [Player_Position]) VALUES (3, N'Peter Pander', 3, N'Midfielder')
INSERT [dbo].[Players] ([Player_ID], [Player_Name], [Player_Team_ID], [Player_Position]) VALUES (4, N' David  Goodwillie', 3, N'Defender')
INSERT [dbo].[Players] ([Player_ID], [Player_Name], [Player_Team_ID], [Player_Position]) VALUES (5, N'Danger Fourpence', 4, N'Defender')
INSERT [dbo].[Players] ([Player_ID], [Player_Name], [Player_Team_ID], [Player_Position]) VALUES (6, N'Michael Gash', 4, N'Midfielder')
INSERT [dbo].[Players] ([Player_ID], [Player_Name], [Player_Team_ID], [Player_Position]) VALUES (7, N'Fabian Assman', 5, N'GoalKeeper')
INSERT [dbo].[Players] ([Player_ID], [Player_Name], [Player_Team_ID], [Player_Position]) VALUES (8, N'Bernt Haas', 6, N'Midfielder')
INSERT [dbo].[Players] ([Player_ID], [Player_Name], [Player_Team_ID], [Player_Position]) VALUES (9, N'Chiqui Arce', 7, N'Midfielder')
INSERT [dbo].[Players] ([Player_ID], [Player_Name], [Player_Team_ID], [Player_Position]) VALUES (10, N'Nortei  Nortey', 8, N'Defender')
INSERT [dbo].[Players] ([Player_ID], [Player_Name], [Player_Team_ID], [Player_Position]) VALUES (11, N'Danny Invincible', 9, N'Goalkeeper')
INSERT [dbo].[Players] ([Player_ID], [Player_Name], [Player_Team_ID], [Player_Position]) VALUES (12, N' Andre Muff', 10, N'Defender')
INSERT [dbo].[Players] ([Player_ID], [Player_Name], [Player_Team_ID], [Player_Position]) VALUES (13, N'Ralf', 11, N'Defender')
INSERT [dbo].[Players] ([Player_ID], [Player_Name], [Player_Team_ID], [Player_Position]) VALUES (14, N'Danny', 12, N'Defender')
SET IDENTITY_INSERT [dbo].[Players] OFF
GO
SET IDENTITY_INSERT [dbo].[Referee] ON 

INSERT [dbo].[Referee] ([Referee_ID], [Referee_Name]) VALUES (1, N'Einar Aas')
INSERT [dbo].[Referee] ([Referee_ID], [Referee_Name]) VALUES (2, N'Robin Friday')
INSERT [dbo].[Referee] ([Referee_ID], [Referee_Name]) VALUES (3, N'Donald Stanley')
INSERT [dbo].[Referee] ([Referee_ID], [Referee_Name]) VALUES (4, N'Gordon Stephen')
INSERT [dbo].[Referee] ([Referee_ID], [Referee_Name]) VALUES (5, N'James Oatway')
INSERT [dbo].[Referee] ([Referee_ID], [Referee_Name]) VALUES (6, N'Kevin  Prince')
INSERT [dbo].[Referee] ([Referee_ID], [Referee_Name]) VALUES (7, N'Farishta Shaikmiri Mateu Lahoz')
INSERT [dbo].[Referee] ([Referee_ID], [Referee_Name]) VALUES (8, N'Mark Geiger')
INSERT [dbo].[Referee] ([Referee_ID], [Referee_Name]) VALUES (9, N'Felix Brych')
SET IDENTITY_INSERT [dbo].[Referee] OFF
GO
SET IDENTITY_INSERT [dbo].[Teams] ON 

INSERT [dbo].[Teams] ([Team_ID], [Team_Name], [Group_ID]) VALUES (1, N'CSKA', 1)
INSERT [dbo].[Teams] ([Team_ID], [Team_Name], [Group_ID]) VALUES (2, N'Heybridge Swifts F.C.', 1)
INSERT [dbo].[Teams] ([Team_ID], [Team_Name], [Group_ID]) VALUES (3, N'PFC Litex Lovech', 2)
INSERT [dbo].[Teams] ([Team_ID], [Team_Name], [Group_ID]) VALUES (4, N'FC Yantra Gabrovo', 2)
INSERT [dbo].[Teams] ([Team_ID], [Team_Name], [Group_ID]) VALUES (5, N'Manchester United F.C.', 3)
INSERT [dbo].[Teams] ([Team_ID], [Team_Name], [Group_ID]) VALUES (6, N'Chester F.C.', 3)
INSERT [dbo].[Teams] ([Team_ID], [Team_Name], [Group_ID]) VALUES (7, N'Queens Park Rangers F.C.', 4)
INSERT [dbo].[Teams] ([Team_ID], [Team_Name], [Group_ID]) VALUES (8, N'Manchester_United', 4)
INSERT [dbo].[Teams] ([Team_ID], [Team_Name], [Group_ID]) VALUES (9, N'Milan', 5)
INSERT [dbo].[Teams] ([Team_ID], [Team_Name], [Group_ID]) VALUES (10, N'Juventus', 5)
INSERT [dbo].[Teams] ([Team_ID], [Team_Name], [Group_ID]) VALUES (11, N'Paris Saint-Germain', 6)
INSERT [dbo].[Teams] ([Team_ID], [Team_Name], [Group_ID]) VALUES (12, N'Nice', 6)
SET IDENTITY_INSERT [dbo].[Teams] OFF
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [FK__Manager__Manager__4222D4EF] FOREIGN KEY([Manager_Team_ID])
REFERENCES [dbo].[Teams] ([Team_ID])
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [FK__Manager__Manager__4222D4EF]
GO
ALTER TABLE [dbo].[Matches]  WITH CHECK ADD FOREIGN KEY([Referee_ID])
REFERENCES [dbo].[Referee] ([Referee_ID])
GO
ALTER TABLE [dbo].[Matches]  WITH CHECK ADD FOREIGN KEY([Team_ID_1])
REFERENCES [dbo].[Teams] ([Team_ID])
GO
ALTER TABLE [dbo].[Matches]  WITH CHECK ADD FOREIGN KEY([Team_ID_2])
REFERENCES [dbo].[Teams] ([Team_ID])
GO
ALTER TABLE [dbo].[Players]  WITH CHECK ADD FOREIGN KEY([Player_Team_ID])
REFERENCES [dbo].[Teams] ([Team_ID])
GO
ALTER TABLE [dbo].[Teams]  WITH CHECK ADD  CONSTRAINT [FK__Teams__Group_ID__45F365D3] FOREIGN KEY([Group_ID])
REFERENCES [dbo].[Groups] ([Group_ID])
GO
ALTER TABLE [dbo].[Teams] CHECK CONSTRAINT [FK__Teams__Group_ID__45F365D3]
GO
USE [master]
GO
ALTER DATABASE [Futbolno_Parvenstvo] SET  READ_WRITE 
GO

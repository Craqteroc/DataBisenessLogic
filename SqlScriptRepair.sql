USE [master]
GO
/****** Object:  Database [ServiceRepairOfHousehold]    Script Date: 07.12.2024 12:59:25 ******/
CREATE DATABASE [ServiceRepairOfHousehold]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ServiceRepairOfHousehold', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER1\MSSQL\DATA\ServiceRepairOfHousehold.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ServiceRepairOfHousehold_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER1\MSSQL\DATA\ServiceRepairOfHousehold_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ServiceRepairOfHousehold].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET ARITHABORT OFF 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET RECOVERY FULL 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET  MULTI_USER 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ServiceRepairOfHousehold', N'ON'
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET QUERY_STORE = ON
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ServiceRepairOfHousehold]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 07.12.2024 12:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[client_id] [int] IDENTITY(1,1) NOT NULL,
	[client_name] [nvarchar](20) NULL,
	[phone] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 07.12.2024 12:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[comment_id] [int] IDENTITY(1,1) NOT NULL,
	[message] [text] NULL,
	[user_id] [int] NULL,
	[request_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 07.12.2024 12:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[request_id] [int] IDENTITY(1,1) NOT NULL,
	[startDate] [date] NULL,
	[homeTechType] [nvarchar](30) NULL,
	[homeTechModel] [nvarchar](40) NULL,
	[problemDescryption] [nvarchar](50) NULL,
	[requestStatus] [nvarchar](25) NULL,
	[comletionDate] [date] NULL,
	[repairParts] [nvarchar](30) NULL,
	[user_id] [int] NULL,
	[client_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 07.12.2024 12:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_type] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 07.12.2024 12:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password_hash] [varchar](255) NULL,
	[role_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([client_id], [client_name], [phone]) VALUES (1, N'Эмилия Эмиливна', N'89994563841')
INSERT [dbo].[Client] ([client_id], [client_name], [phone]) VALUES (2, N'Егорова Егоров', N'89994563842')
INSERT [dbo].[Client] ([client_id], [client_name], [phone]) VALUES (3, N'Планктон Планктонов', N'89994563843')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([comment_id], [message], [user_id], [request_id]) VALUES (1, N'Интересная поломка', 2, 8)
INSERT [dbo].[Comment] ([comment_id], [message], [user_id], [request_id]) VALUES (2, N'Очень странно, будем разбираться!', 3, 9)
INSERT [dbo].[Comment] ([comment_id], [message], [user_id], [request_id]) VALUES (3, N'Скорее всего потребуется мотор обдува!', 8, 10)
INSERT [dbo].[Comment] ([comment_id], [message], [user_id], [request_id]) VALUES (4, N'Интересная проблема', 9, 11)
INSERT [dbo].[Comment] ([comment_id], [message], [user_id], [request_id]) VALUES (5, N'Очень странно, будем разбираться!', 2, 12)
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([request_id], [startDate], [homeTechType], [homeTechModel], [problemDescryption], [requestStatus], [comletionDate], [repairParts], [user_id], [client_id]) VALUES (8, CAST(N'2023-06-06' AS Date), N'Фен', N'Ладомир ТА112 белый', N'Перестал работать', N'В процессе ремонта', NULL, NULL, 2, 1)
INSERT [dbo].[Request] ([request_id], [startDate], [homeTechType], [homeTechModel], [problemDescryption], [requestStatus], [comletionDate], [repairParts], [user_id], [client_id]) VALUES (9, CAST(N'2023-05-05' AS Date), N'Тостер', N'Redmond RT-437 черный', N'Перестал работать', N'В процессе ремонта', NULL, NULL, 3, 2)
INSERT [dbo].[Request] ([request_id], [startDate], [homeTechType], [homeTechModel], [problemDescryption], [requestStatus], [comletionDate], [repairParts], [user_id], [client_id]) VALUES (10, CAST(N'2022-07-07' AS Date), N'Холодильник', N'Indesit DS 316 W белый', N'Не морозит одна из камер холодильника', N'Готова к выдаче', CAST(N'2023-01-01' AS Date), NULL, 8, 3)
INSERT [dbo].[Request] ([request_id], [startDate], [homeTechType], [homeTechModel], [problemDescryption], [requestStatus], [comletionDate], [repairParts], [user_id], [client_id]) VALUES (11, CAST(N'2023-08-02' AS Date), N'Стиральная машина', N'DEXP WM-F610NTMA/WW белый', N'Перестали работать многие режимы стирки', N'Новая заявка', NULL, NULL, 9, 1)
INSERT [dbo].[Request] ([request_id], [startDate], [homeTechType], [homeTechModel], [problemDescryption], [requestStatus], [comletionDate], [repairParts], [user_id], [client_id]) VALUES (12, CAST(N'2023-08-02' AS Date), N'Мультиварка', N'Redmond RMC-M95 черный', N'Перестала включаться', N'Новая заявка', NULL, NULL, 2, 2)
INSERT [dbo].[Request] ([request_id], [startDate], [homeTechType], [homeTechModel], [problemDescryption], [requestStatus], [comletionDate], [repairParts], [user_id], [client_id]) VALUES (13, CAST(N'2023-08-02' AS Date), N'Фен', N'Ладомир ТА113 чёрный', N'Перестал работать', N'Готова к выдаче', CAST(N'2023-08-03' AS Date), NULL, 3, 3)
INSERT [dbo].[Request] ([request_id], [startDate], [homeTechType], [homeTechModel], [problemDescryption], [requestStatus], [comletionDate], [repairParts], [user_id], [client_id]) VALUES (14, CAST(N'2023-07-09' AS Date), N'Холодильник', N'Indesit DS 314 W серый', N'Гудит, но не замораживает', N'Готова к выдаче', CAST(N'2023-08-03' AS Date), N'Мотор обдува', 8, 1)
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([role_id], [role_type]) VALUES (1, N'Менеджер')
INSERT [dbo].[Role] ([role_id], [role_type]) VALUES (2, N'Мастер')
INSERT [dbo].[Role] ([role_id], [role_type]) VALUES (3, N'Оператор')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([user_id], [username], [password_hash], [role_id]) VALUES (1, N'Никитин', N'root', 1)
INSERT [dbo].[Users] ([user_id], [username], [password_hash], [role_id]) VALUES (2, N'Мурашов', N'qwerty', 2)
INSERT [dbo].[Users] ([user_id], [username], [password_hash], [role_id]) VALUES (3, N'Степанов', N'test1', 2)
INSERT [dbo].[Users] ([user_id], [username], [password_hash], [role_id]) VALUES (4, N'Перина', N'250519', 1)
INSERT [dbo].[Users] ([user_id], [username], [password_hash], [role_id]) VALUES (5, N'Мажитова', N'13590', 3)
INSERT [dbo].[Users] ([user_id], [username], [password_hash], [role_id]) VALUES (6, N'Семенова', N'pass1', 3)
INSERT [dbo].[Users] ([user_id], [username], [password_hash], [role_id]) VALUES (7, N'Баранова', N'pass2', 1)
INSERT [dbo].[Users] ([user_id], [username], [password_hash], [role_id]) VALUES (8, N'Егорова', N'pass3', 2)
INSERT [dbo].[Users] ([user_id], [username], [password_hash], [role_id]) VALUES (9, N'Титов', N'pass4', 2)
INSERT [dbo].[Users] ([user_id], [username], [password_hash], [role_id]) VALUES (10, N'Иванов', N'pass5', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([request_id])
REFERENCES [dbo].[Request] ([request_id])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD FOREIGN KEY([client_id])
REFERENCES [dbo].[Client] ([client_id])
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
USE [master]
GO
ALTER DATABASE [ServiceRepairOfHousehold] SET  READ_WRITE 
GO

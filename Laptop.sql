USE [master]
GO
/****** Object:  Database [Laptop]    Script Date: 11/6/2023 1:32:08 PM ******/
CREATE DATABASE [Laptop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Laptop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER02\MSSQL\DATA\Laptop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Laptop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER02\MSSQL\DATA\Laptop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Laptop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Laptop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Laptop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Laptop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Laptop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Laptop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Laptop] SET ARITHABORT OFF 
GO
ALTER DATABASE [Laptop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Laptop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Laptop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Laptop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Laptop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Laptop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Laptop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Laptop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Laptop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Laptop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Laptop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Laptop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Laptop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Laptop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Laptop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Laptop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Laptop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Laptop] SET RECOVERY FULL 
GO
ALTER DATABASE [Laptop] SET  MULTI_USER 
GO
ALTER DATABASE [Laptop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Laptop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Laptop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Laptop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Laptop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Laptop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Laptop', N'ON'
GO
ALTER DATABASE [Laptop] SET QUERY_STORE = OFF
GO
USE [Laptop]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/6/2023 1:32:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[accountID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](20) NULL,
	[pass] [nvarchar](20) NULL,
	[fName] [nvarchar](200) NULL,
	[dob] [date] NULL,
	[phone] [varchar](10) NULL,
	[role] [int] NULL,
	[address] [text] NULL,
	[email] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[accountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 11/6/2023 1:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[bID] [int] IDENTITY(1,1) NOT NULL,
	[bName] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 11/6/2023 1:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[cID] [int] IDENTITY(1,1) NOT NULL,
	[pID] [int] NULL,
	[accountID] [int] NOT NULL,
	[quality] [int] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductLaptop]    Script Date: 11/6/2023 1:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductLaptop](
	[pID] [int] IDENTITY(1,1) NOT NULL,
	[pName] [nvarchar](100) NOT NULL,
	[imge] [nvarchar](50) NOT NULL,
	[price] [float] NULL,
	[bID] [int] NOT NULL,
	[quality] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[pID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([accountID], [username], [pass], [fName], [dob], [phone], [role], [address], [email]) VALUES (1, N'admin', N'123', N'LE BA HAI HA', CAST(N'2003-10-04' AS Date), N'0352565658', 0, N'123', NULL)
INSERT [dbo].[Account] ([accountID], [username], [pass], [fName], [dob], [phone], [role], [address], [email]) VALUES (2, N'user', N'1111', N'le ba hai ha', CAST(N'2003-10-04' AS Date), N'0352565658', 1, N'HN', NULL)
INSERT [dbo].[Account] ([accountID], [username], [pass], [fName], [dob], [phone], [role], [address], [email]) VALUES (3, N'user1', N'1', N'1', CAST(N'2003-10-04' AS Date), N'0352565658', 1, N'THACH THAT', N'halbhhe176636@fpt.edu.vn')
INSERT [dbo].[Account] ([accountID], [username], [pass], [fName], [dob], [phone], [role], [address], [email]) VALUES (4, N'prohhx123@gmail.com', N'123', N'Le Ba Hai Hai', CAST(N'2040-10-01' AS Date), N'123123123', 1, N'HN', N'prohhx123@gmail.com')
INSERT [dbo].[Account] ([accountID], [username], [pass], [fName], [dob], [phone], [role], [address], [email]) VALUES (5, N'', N'', N'', CAST(N'1900-01-01' AS Date), N'', 1, N'', NULL)
INSERT [dbo].[Account] ([accountID], [username], [pass], [fName], [dob], [phone], [role], [address], [email]) VALUES (6, N'1', N'123', N'asdas', CAST(N'2312-12-31' AS Date), N'123123', 1, N'344', NULL)
INSERT [dbo].[Account] ([accountID], [username], [pass], [fName], [dob], [phone], [role], [address], [email]) VALUES (7, N'test', N'123', N'e', CAST(N'2023-07-07' AS Date), N'0352565658', 1, N'THACH THAT', N'test@gmail.com')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([bID], [bName]) VALUES (1, N'MSI')
INSERT [dbo].[Brand] ([bID], [bName]) VALUES (2, N'ASUS')
INSERT [dbo].[Brand] ([bID], [bName]) VALUES (3, N'DELL')
INSERT [dbo].[Brand] ([bID], [bName]) VALUES (4, N'MAC')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (5, 13, 2, 17, 4)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (6, 12, 2, 1, 4)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (7, 23, 2, 1, 4)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (8, 21, 2, 5, 4)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (9, 18, 2, 6, 4)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (10, 14, 2, 12, 4)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (11, 22, 3, 1, 2)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (12, 23, 2, 3, 4)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (13, 13, 2, 10, 4)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (14, 9, 7, 10, 4)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (15, 10, 7, 10, 4)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (16, 10, 2, 2, 2)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (17, 12, 2, 1, 4)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (18, 24, 2, 1, 2)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (19, 22, 2, 3, 2)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (20, 9, 2, 5, 4)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (21, 10, 2, 10, 4)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (22, 23, 3, 1, 3)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (23, 22, 3, 1, 1)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (24, 23, 3, 2, 1)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (25, 10, 3, 1, 1)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (26, 23, 3, 1, 1)
INSERT [dbo].[Carts] ([cID], [pID], [accountID], [quality], [status]) VALUES (27, 10, 7, 2, 1)
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductLaptop] ON 

INSERT [dbo].[ProductLaptop] ([pID], [pName], [imge], [price], [bID], [quality]) VALUES (9, N'Laptop ASUS Gaming ROG ', N'MSILAPTOP.png', 1200, 2, 10)
INSERT [dbo].[ProductLaptop] ([pID], [pName], [imge], [price], [bID], [quality]) VALUES (10, N'Laptop Dell', N'Laptop Dell.jpg', 1000, 3, 99)
INSERT [dbo].[ProductLaptop] ([pID], [pName], [imge], [price], [bID], [quality]) VALUES (11, N'Laptop ASUS ROG', N'_0001_asus-rog-strix-g15-g513rm-hq055w_2_.jpg', 2000, 2, 99)
INSERT [dbo].[ProductLaptop] ([pID], [pName], [imge], [price], [bID], [quality]) VALUES (12, N'Laptop ASUS
', N'2.5_1.png', 1000, 2, 30)
INSERT [dbo].[ProductLaptop] ([pID], [pName], [imge], [price], [bID], [quality]) VALUES (13, N'MacBook Pro 14', N'MacBook Air 14.jpg', 3000, 4, 12)
INSERT [dbo].[ProductLaptop] ([pID], [pName], [imge], [price], [bID], [quality]) VALUES (14, N'MacBook Pro 13', N'MacBook Pro 13.jpg', 1999, 4, 30)
INSERT [dbo].[ProductLaptop] ([pID], [pName], [imge], [price], [bID], [quality]) VALUES (15, N'Laptop MSI', N'msi-gf63-thin-10sc-804vn-1_3.jpg', 999, 1, 100)
INSERT [dbo].[ProductLaptop] ([pID], [pName], [imge], [price], [bID], [quality]) VALUES (16, N'Laptop ASUSX5', N'AsusX5.jpg', 1999, 2, 99)
INSERT [dbo].[ProductLaptop] ([pID], [pName], [imge], [price], [bID], [quality]) VALUES (17, N'Laptop TUF', N'10h45_2.png', 2499, 2, 123)
INSERT [dbo].[ProductLaptop] ([pID], [pName], [imge], [price], [bID], [quality]) VALUES (18, N'MAC Mini', N'mac_mini_m2_1.png', 899, 4, 33)
INSERT [dbo].[ProductLaptop] ([pID], [pName], [imge], [price], [bID], [quality]) VALUES (19, N'Laptop Lenovo 5', N'text_ng_n_7.png', 1899, 2, 44)
INSERT [dbo].[ProductLaptop] ([pID], [pName], [imge], [price], [bID], [quality]) VALUES (20, N'Laptop Dell Gaming', N'1h47.png', 1499, 3, 13)
INSERT [dbo].[ProductLaptop] ([pID], [pName], [imge], [price], [bID], [quality]) VALUES (21, N'Laptop Air M2', N'air_m2_16gb.png', 1599, 4, 44)
INSERT [dbo].[ProductLaptop] ([pID], [pName], [imge], [price], [bID], [quality]) VALUES (22, N'Laptop IdeaPad Gaming', N'3_174.png', 1111, 1, 23)
INSERT [dbo].[ProductLaptop] ([pID], [pName], [imge], [price], [bID], [quality]) VALUES (23, N'Laptop MSI Gaming', N'text_ng_n_4__2_4.png', 1299, 2, 24)
INSERT [dbo].[ProductLaptop] ([pID], [pName], [imge], [price], [bID], [quality]) VALUES (24, N'Laptop Dell Inspiron', N'86.webp', 2999, 3, 99)
SET IDENTITY_INSERT [dbo].[ProductLaptop] OFF
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD FOREIGN KEY([pID])
REFERENCES [dbo].[ProductLaptop] ([pID])
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD FOREIGN KEY([pID])
REFERENCES [dbo].[ProductLaptop] ([pID])
GO
ALTER TABLE [dbo].[ProductLaptop]  WITH CHECK ADD FOREIGN KEY([bID])
REFERENCES [dbo].[Brand] ([bID])
GO
ALTER TABLE [dbo].[ProductLaptop]  WITH CHECK ADD FOREIGN KEY([bID])
REFERENCES [dbo].[Brand] ([bID])
GO
USE [master]
GO
ALTER DATABASE [Laptop] SET  READ_WRITE 
GO

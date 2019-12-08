USE [master]
GO
/****** Object:  Database [AssignmentDB]    Script Date: 05-Nov-19 3:02:44 PM ******/
CREATE DATABASE [AssignmentDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AssignmentDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\AssignmentDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AssignmentDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\AssignmentDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AssignmentDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AssignmentDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AssignmentDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AssignmentDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AssignmentDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AssignmentDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AssignmentDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [AssignmentDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AssignmentDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AssignmentDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AssignmentDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AssignmentDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AssignmentDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AssignmentDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AssignmentDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AssignmentDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AssignmentDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AssignmentDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AssignmentDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AssignmentDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AssignmentDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AssignmentDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AssignmentDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AssignmentDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AssignmentDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AssignmentDB] SET  MULTI_USER 
GO
ALTER DATABASE [AssignmentDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AssignmentDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AssignmentDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AssignmentDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [AssignmentDB]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 05-Nov-19 3:02:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmpID] [int] IDENTITY(1,1) NOT NULL,
	[EmpName] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmpID], [EmpName], [Email], [Address], [Phone]) VALUES (92, N'K. M. Shakib Ullah', N'shakib@gmail.com', N'Mirpur-10, Dhaka-1216', N'+8801840028377')
INSERT [dbo].[Employees] ([EmpID], [EmpName], [Email], [Address], [Phone]) VALUES (93, N'Towhidul Islam', N'towhid@gmail.com', N'Muhammadpur,Dhaka-1216', N'+8801818181139')
INSERT [dbo].[Employees] ([EmpID], [EmpName], [Email], [Address], [Phone]) VALUES (94, N'Hasibul Hasan', N'hasan@gmail.com', N'Shewarapara,Mirpur, Dhaka-1216', N'01753719719')
INSERT [dbo].[Employees] ([EmpID], [EmpName], [Email], [Address], [Phone]) VALUES (95, N'Ramzan Roni', N'ramjan@gmail.com', N'Firmgate, Dhaka', N'01773388363')
INSERT [dbo].[Employees] ([EmpID], [EmpName], [Email], [Address], [Phone]) VALUES (96, N'Farhad Abideen', N'farhad@gmail.com', N'Mirpur, Dhaka-1216', N'01739671786')
INSERT [dbo].[Employees] ([EmpID], [EmpName], [Email], [Address], [Phone]) VALUES (97, N'Nahid Hasan', N'nahid@gmail.com', N'Gazipur, Dhaka', N'01840028377')
INSERT [dbo].[Employees] ([EmpID], [EmpName], [Email], [Address], [Phone]) VALUES (98, N'Nasir Uddin', N'nasir@gmail.com', N'satkania, Chittagong', N'01830433443')
INSERT [dbo].[Employees] ([EmpID], [EmpName], [Email], [Address], [Phone]) VALUES (99, N'Farhad Abideen', N'farhad@gmail.com', N'Muhammadpur,Dhaka-1216', N'01840028377')
INSERT [dbo].[Employees] ([EmpID], [EmpName], [Email], [Address], [Phone]) VALUES (100, N'Imran Nazir', N'imran@gmail.com', N'Muhammadpur,Dhaka-1216', N'01840028377')
INSERT [dbo].[Employees] ([EmpID], [EmpName], [Email], [Address], [Phone]) VALUES (101, N'Limon Ahmed', N'limon@gmail.com', N'Firmgate, Dhaka', N'+8801840028377')
INSERT [dbo].[Employees] ([EmpID], [EmpName], [Email], [Address], [Phone]) VALUES (102, N'Nazrul Islam', N'nazrul@gail.com', N'Muhammadpur,Dhaka-1216', N'+8801840028377')
INSERT [dbo].[Employees] ([EmpID], [EmpName], [Email], [Address], [Phone]) VALUES (103, N'Towhidul Islam', N'towhid@gmail.com', N'Muhammadpur,Dhaka-1216', N'+8801886383337')
SET IDENTITY_INSERT [dbo].[Employees] OFF
USE [master]
GO
ALTER DATABASE [AssignmentDB] SET  READ_WRITE 
GO

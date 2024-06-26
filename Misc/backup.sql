USE [master]
GO
/****** Object:  Database [Vacations_PauloMelo]    Script Date: 4/13/2024 10:47:16 PM ******/
CREATE DATABASE [Vacations_PauloMelo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Vacations_PauloMelo', FILENAME = N'C:\Restart11\Data\Vacations_PauloMelo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Vacations_PauloMelo_log', FILENAME = N'C:\Restart11\Data\Vacations_PauloMelo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Vacations_PauloMelo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Vacations_PauloMelo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Vacations_PauloMelo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Vacations_PauloMelo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Vacations_PauloMelo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Vacations_PauloMelo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Vacations_PauloMelo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Vacations_PauloMelo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Vacations_PauloMelo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Vacations_PauloMelo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Vacations_PauloMelo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Vacations_PauloMelo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Vacations_PauloMelo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Vacations_PauloMelo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Vacations_PauloMelo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Vacations_PauloMelo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Vacations_PauloMelo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Vacations_PauloMelo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Vacations_PauloMelo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Vacations_PauloMelo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Vacations_PauloMelo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Vacations_PauloMelo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Vacations_PauloMelo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Vacations_PauloMelo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Vacations_PauloMelo] SET RECOVERY FULL 
GO
ALTER DATABASE [Vacations_PauloMelo] SET  MULTI_USER 
GO
ALTER DATABASE [Vacations_PauloMelo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Vacations_PauloMelo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Vacations_PauloMelo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Vacations_PauloMelo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Vacations_PauloMelo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Vacations_PauloMelo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Vacations_PauloMelo', N'ON'
GO
ALTER DATABASE [Vacations_PauloMelo] SET QUERY_STORE = OFF
GO
USE [Vacations_PauloMelo]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 4/13/2024 10:47:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[Department] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 4/13/2024 10:47:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[RequestId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[EmployeeCode] [nchar](16) NOT NULL,
	[EmployeeFirstName] [nvarchar](15) NOT NULL,
	[EmployeeMiddleName] [nvarchar](40) NOT NULL,
	[EmployeeSurname] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 4/13/2024 10:47:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[ManagerId] [int] IDENTITY(1,1) NOT NULL,
	[RequestId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[ManagerCode] [nchar](16) NOT NULL,
	[ManagerFirstName] [nvarchar](15) NOT NULL,
	[ManagerMiddleName] [nvarchar](40) NOT NULL,
	[ManagerSurname] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[ManagerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportingStructure]    Script Date: 4/13/2024 10:47:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportingStructure](
	[EmployeeId] [int] NOT NULL,
	[ManagerId] [int] NOT NULL,
 CONSTRAINT [PK_ReportingStructure] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC,
	[ManagerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VacationPeriod]    Script Date: 4/13/2024 10:47:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VacationPeriod](
	[PeriodId] [int] IDENTITY(1,1) NOT NULL,
	[RequestId] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[TotalDays] [int] NOT NULL,
	[Approval] [bit] NOT NULL,
 CONSTRAINT [PK_VacationPeriod] PRIMARY KEY CLUSTERED 
(
	[PeriodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VacationRequest]    Script Date: 4/13/2024 10:47:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VacationRequest](
	[RequestId] [int] IDENTITY(1,1) NOT NULL,
	[RequestDate] [date] NOT NULL,
	[ApprovalDate] [date] NOT NULL,
	[ManagerCode] [nchar](16) NOT NULL,
	[EmployeeCode] [nchar](16) NOT NULL,
 CONSTRAINT [PK_VacationRequest] PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([DepartmentId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_VacationRequest] FOREIGN KEY([RequestId])
REFERENCES [dbo].[VacationRequest] ([RequestId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_VacationRequest]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [FK_Manager_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([DepartmentId])
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [FK_Manager_Department]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [FK_Manager_VacationRequest] FOREIGN KEY([RequestId])
REFERENCES [dbo].[VacationRequest] ([RequestId])
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [FK_Manager_VacationRequest]
GO
ALTER TABLE [dbo].[ReportingStructure]  WITH CHECK ADD  CONSTRAINT [FK_ReportingStructure_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([EmployeeId])
GO
ALTER TABLE [dbo].[ReportingStructure] CHECK CONSTRAINT [FK_ReportingStructure_Employee]
GO
ALTER TABLE [dbo].[ReportingStructure]  WITH CHECK ADD  CONSTRAINT [FK_ReportingStructure_Manager] FOREIGN KEY([ManagerId])
REFERENCES [dbo].[Manager] ([ManagerId])
GO
ALTER TABLE [dbo].[ReportingStructure] CHECK CONSTRAINT [FK_ReportingStructure_Manager]
GO
ALTER TABLE [dbo].[VacationPeriod]  WITH CHECK ADD  CONSTRAINT [FK_VacationPeriod_VacationRequest] FOREIGN KEY([RequestId])
REFERENCES [dbo].[VacationRequest] ([RequestId])
GO
ALTER TABLE [dbo].[VacationPeriod] CHECK CONSTRAINT [FK_VacationPeriod_VacationRequest]
GO
USE [master]
GO
ALTER DATABASE [Vacations_PauloMelo] SET  READ_WRITE 
GO

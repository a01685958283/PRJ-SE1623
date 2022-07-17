USE [master]
GO
/****** Object:  Database [PRJ-ASM]    Script Date: 7/17/2022 2:34:34 PM ******/
CREATE DATABASE [PRJ-ASM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ-ASM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ-ASM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ-ASM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ-ASM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ-ASM] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ-ASM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ-ASM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ-ASM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ-ASM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ-ASM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ-ASM] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ-ASM] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PRJ-ASM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ-ASM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ-ASM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ-ASM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ-ASM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ-ASM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ-ASM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ-ASM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ-ASM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRJ-ASM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ-ASM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ-ASM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ-ASM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ-ASM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ-ASM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ-ASM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ-ASM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ-ASM] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ-ASM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ-ASM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ-ASM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ-ASM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ-ASM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ-ASM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJ-ASM] SET QUERY_STORE = OFF
GO
USE [PRJ-ASM]
GO
/****** Object:  Table [dbo].[Attendence]    Script Date: 7/17/2022 2:34:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendence](
	[StudentID] [nvarchar](100) NOT NULL,
	[SessionID] [int] NOT NULL,
	[Status] [nvarchar](150) NULL,
	[Comment] [nvarchar](150) NULL,
	[RecordTime] [time](7) NOT NULL,
 CONSTRAINT [PK_Attendence] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 7/17/2022 2:34:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [nvarchar](100) NOT NULL,
	[CourseName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 7/17/2022 2:34:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](100) NOT NULL,
	[LecturesID] [nvarchar](100) NOT NULL,
	[CourseID] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lectures]    Script Date: 7/17/2022 2:34:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lectures](
	[LecturesID] [nvarchar](100) NOT NULL,
	[LecturesName] [nvarchar](100) NOT NULL,
	[LecturesEmail] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Lectures] PRIMARY KEY CLUSTERED 
(
	[LecturesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 7/17/2022 2:34:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomID] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 7/17/2022 2:34:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[SessionID] [int] IDENTITY(1,1) NOT NULL,
	[SessionDate] [date] NOT NULL,
	[RoomID] [nvarchar](100) NOT NULL,
	[GroupID] [int] NOT NULL,
	[TimeSlotID] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Session1] PRIMARY KEY CLUSTERED 
(
	[SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/17/2022 2:34:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [nvarchar](100) NOT NULL,
	[StudentName] [nvarchar](100) NOT NULL,
	[StudentEmail] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentGroup]    Script Date: 7/17/2022 2:34:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentGroup](
	[StudentID] [nvarchar](100) NOT NULL,
	[GroupID] [int] NOT NULL,
 CONSTRAINT [PK_StudentGroup] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 7/17/2022 2:34:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[TimeSlotID] [nvarchar](100) NOT NULL,
	[TimeSlotBegin] [time](7) NOT NULL,
	[TimeSlotEnd] [time](7) NOT NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[TimeSlotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE141083', 1, N'present', N'WeeD', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE150167', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE150798', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE150819', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE150915', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE151210', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE151282', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE151356', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE151431', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE153012', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE153276', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE153603', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE153622', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE153773', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE160328', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE161149', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE161499', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE161574', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE161701', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE161702', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE161703', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE161704', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE161705', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE161888', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE161928', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE163366', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE163585', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE163884', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE163937', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
INSERT [dbo].[Attendence] ([StudentID], [SessionID], [Status], [Comment], [RecordTime]) VALUES (N'HE164001', 1, N'absent', N'', CAST(N'14:24:23' AS Time))
GO
INSERT [dbo].[Course] ([CourseID], [CourseName]) VALUES (N'CSD201', N'Data Structures and Algorithms')
INSERT [dbo].[Course] ([CourseID], [CourseName]) VALUES (N'DBI202', N'Introduction to Databases')
INSERT [dbo].[Course] ([CourseID], [CourseName]) VALUES (N'IOT102', N'Internet of Things')
INSERT [dbo].[Course] ([CourseID], [CourseName]) VALUES (N'JPD113', N'Elementary Japanese 1-A1.1')
INSERT [dbo].[Course] ([CourseID], [CourseName]) VALUES (N'JPD123', N'Elementary Japanese 1-A1.2')
INSERT [dbo].[Course] ([CourseID], [CourseName]) VALUES (N'LAB211', N'OOP with Java Lab')
INSERT [dbo].[Course] ([CourseID], [CourseName]) VALUES (N'MAS291', N'Statistics and Probability')
INSERT [dbo].[Course] ([CourseID], [CourseName]) VALUES (N'PRJ301', N'Java Web Application Development')
INSERT [dbo].[Course] ([CourseID], [CourseName]) VALUES (N'PRO192', N'Object-Oriented Programming')
INSERT [dbo].[Course] ([CourseID], [CourseName]) VALUES (N'SWE201c', N'Introduction to Software Engineering')
INSERT [dbo].[Course] ([CourseID], [CourseName]) VALUES (N'WED201c', N'Web Design')
GO
SET IDENTITY_INSERT [dbo].[Group] ON 

INSERT [dbo].[Group] ([GroupID], [GroupName], [LecturesID], [CourseID]) VALUES (1, N'SE1630', N'hongdt30', N'MAS291')
INSERT [dbo].[Group] ([GroupID], [GroupName], [LecturesID], [CourseID]) VALUES (2, N'SE1623', N'sonhx', N'IOT102')
INSERT [dbo].[Group] ([GroupID], [GroupName], [LecturesID], [CourseID]) VALUES (3, N'SE1623', N'sonnt5', N'PRJ301')
INSERT [dbo].[Group] ([GroupID], [GroupName], [LecturesID], [CourseID]) VALUES (4, N'GD1611', N'thulx', N'JPD123')
INSERT [dbo].[Group] ([GroupID], [GroupName], [LecturesID], [CourseID]) VALUES (5, N'SE1624', N'trungnt', N'SWE201c')
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
INSERT [dbo].[Lectures] ([LecturesID], [LecturesName], [LecturesEmail]) VALUES (N'hongdt30', N'Dương Thị Hồng', N'hongdt30@fpt.edu.vn')
INSERT [dbo].[Lectures] ([LecturesID], [LecturesName], [LecturesEmail]) VALUES (N'Keiichiro', N'Someya Keiichiro', N'Keiichiro@fe.edu.vn')
INSERT [dbo].[Lectures] ([LecturesID], [LecturesName], [LecturesEmail]) VALUES (N'sonhx', N'Hoàng Xuân Sơn', N'SonHX@fe.edu.vn')
INSERT [dbo].[Lectures] ([LecturesID], [LecturesName], [LecturesEmail]) VALUES (N'sonnt5', N'Ngô Tùng Sơn', N'sonnt69@fe.edu.vn')
INSERT [dbo].[Lectures] ([LecturesID], [LecturesName], [LecturesEmail]) VALUES (N'thulx', N'Lại Xuân Thu', N'ThuLX@fe.edu.vn')
INSERT [dbo].[Lectures] ([LecturesID], [LecturesName], [LecturesEmail]) VALUES (N'trungnt', N'Nguyễn Tất Trung', N'TrungNT77@fe.edu.vn')
GO
INSERT [dbo].[Room] ([RoomID]) VALUES (N'AL-R202')
INSERT [dbo].[Room] ([RoomID]) VALUES (N'BE-219')
INSERT [dbo].[Room] ([RoomID]) VALUES (N'BE-305')
INSERT [dbo].[Room] ([RoomID]) VALUES (N'BE-315')
INSERT [dbo].[Room] ([RoomID]) VALUES (N'CI-420')
INSERT [dbo].[Room] ([RoomID]) VALUES (N'DE-225')
INSERT [dbo].[Room] ([RoomID]) VALUES (N'DE-C202')
INSERT [dbo].[Room] ([RoomID]) VALUES (N'DE-C203')
INSERT [dbo].[Room] ([RoomID]) VALUES (N'DE-C206')
GO
SET IDENTITY_INSERT [dbo].[Session] ON 

INSERT [dbo].[Session] ([SessionID], [SessionDate], [RoomID], [GroupID], [TimeSlotID]) VALUES (1, CAST(N'2022-05-09' AS Date), N'DE-C202 ', 3, N'Slot 1')
SET IDENTITY_INSERT [dbo].[Session] OFF
GO
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'12312321', N'hELLO', N'tEST')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE141083', N'Đinh Văn Đông', N'DongDVHE141083@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE150167', N'Nguyễn Hữu Quyết', N'QuyetNHHE150167@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE150798', N'Chu Quang Vũ', N'VuCQHE150798@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE150819', N'Nguyễn Văn Tuyên', N'TuyenNVHE150819@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE150915', N'Nguyễn Tuấn Dũng', N'DungNTHE150915@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE151210', N'Vũ Đức Kiên', N'KienVDHE151210@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE151282', N'Lê Nguyễn Minh Quân', N'QuanLNMHE151282@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE151356', N'Nguyễn Huy Tùng', N'TungNHHE151356@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE151431', N'Đặng Ánh Tuyết', N'TuyetDAHE151431@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE153012', N'Phan Nguyễn Đăng Huy', N'HuyPNDHE153012@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE153276', N'Phạm Quang Anh', N'AnhPQHE153276@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE153603', N'Bùi Thị Xuân Thu', N'ThuBTXHE153603@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE153622', N'Nguyễn Duy Hưng', N'HungNDHE153622@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE153773', N'Nguyễn Văn Quyết', N'QuyetNVHE153773@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE160328', N'Lê Hải Hà', N'HaLHHE160328@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE161149', N'Phan Kim Long', N'LongPKHE161149@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE161499', N'Lê Quang Huy', N'HuyLQHE161499@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE161574', N'Phạm Huy Hoàng', N'HoangPHHE161574@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE161701', N'Đoàn Tiến Đạt', N'DatDTHE161701@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE161702', N'Đoàn Bảo Đức', N'DucDBHE161702@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE161703', N'Vũ Viết Hoàng', N'HoangVTHE161703@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE161704', N'Phạm Danh Trung Nguyên', N'NguyenPDTHE161704@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE161705', N'Trần Quốc Hưng', N'HungTQHE161705@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE161888', N'Kiều Anh Sơn', N'SonKAHE161888@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE161928', N'Nguyễn Ngọc Bảo', N'BaoNNHE161928@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE163366', N'Nguyễn Thế Vinh', N'VinhNTHE163366@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE163585', N'Nguyễn Trung Vũ', N'VuNTHE163585@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE163884', N'Nguyễn Minh Hoàng', N'HoangNMHE163884@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE163937', N'Nguyễn Hoàng Minh', N'MinhNHHE163937@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE164001', N'Nguyễn Thế Duy', N'DuyNTHE164001@fpt.edu.vn')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail]) VALUES (N'HE17777', N'Dpan banf Dar', N'DatDBHE17777')
GO
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE141083', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE150167', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE150798', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE150819', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE150915', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE151210', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE151282', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE151356', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE151431', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE153012', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE153276', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE153603', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE153622', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE153773', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE160328', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE161149', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE161499', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE161574', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE161701', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE161702', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE161703', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE161704', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE161705', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE161888', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE161928', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE163366', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE163585', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE163884', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE163937', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE164001', 3)
GO
INSERT [dbo].[TimeSlot] ([TimeSlotID], [TimeSlotBegin], [TimeSlotEnd]) VALUES (N'Slot 1', CAST(N'07:30:00' AS Time), CAST(N'09:00:00' AS Time))
INSERT [dbo].[TimeSlot] ([TimeSlotID], [TimeSlotBegin], [TimeSlotEnd]) VALUES (N'Slot 2', CAST(N'09:10:00' AS Time), CAST(N'10:40:00' AS Time))
INSERT [dbo].[TimeSlot] ([TimeSlotID], [TimeSlotBegin], [TimeSlotEnd]) VALUES (N'Slot 3', CAST(N'10:50:00' AS Time), CAST(N'12:20:00' AS Time))
INSERT [dbo].[TimeSlot] ([TimeSlotID], [TimeSlotBegin], [TimeSlotEnd]) VALUES (N'Slot 4', CAST(N'12:50:00' AS Time), CAST(N'14:20:00' AS Time))
INSERT [dbo].[TimeSlot] ([TimeSlotID], [TimeSlotBegin], [TimeSlotEnd]) VALUES (N'Slot 5', CAST(N'14:30:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[TimeSlot] ([TimeSlotID], [TimeSlotBegin], [TimeSlotEnd]) VALUES (N'Slot 6', CAST(N'16:10:00' AS Time), CAST(N'17:40:00' AS Time))
GO
ALTER TABLE [dbo].[Attendence]  WITH CHECK ADD  CONSTRAINT [FK_Attendence_Session] FOREIGN KEY([SessionID])
REFERENCES [dbo].[Session] ([SessionID])
GO
ALTER TABLE [dbo].[Attendence] CHECK CONSTRAINT [FK_Attendence_Session]
GO
ALTER TABLE [dbo].[Attendence]  WITH CHECK ADD  CONSTRAINT [FK_Attendence_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Attendence] CHECK CONSTRAINT [FK_Attendence_Student]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Course]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Lectures] FOREIGN KEY([LecturesID])
REFERENCES [dbo].[Lectures] ([LecturesID])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Lectures]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Group]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Room] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([RoomID])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Room]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_TimeSlot] FOREIGN KEY([TimeSlotID])
REFERENCES [dbo].[TimeSlot] ([TimeSlotID])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_TimeSlot]
GO
ALTER TABLE [dbo].[StudentGroup]  WITH CHECK ADD  CONSTRAINT [FK_StudentGroup_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
GO
ALTER TABLE [dbo].[StudentGroup] CHECK CONSTRAINT [FK_StudentGroup_Group]
GO
ALTER TABLE [dbo].[StudentGroup]  WITH CHECK ADD  CONSTRAINT [FK_StudentGroup_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[StudentGroup] CHECK CONSTRAINT [FK_StudentGroup_Student]
GO
USE [master]
GO
ALTER DATABASE [PRJ-ASM] SET  READ_WRITE 
GO

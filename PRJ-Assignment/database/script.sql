USE [master]
GO
/****** Object:  Database [PRJ-Assignment]    Script Date: 17/07/2022 11:10:12 ******/
CREATE DATABASE [PRJ-Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ-Assignment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ-Assignment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ-Assignment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ-Assignment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ-Assignment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ-Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ-Assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ-Assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ-Assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ-Assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ-Assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ-Assignment] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PRJ-Assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ-Assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ-Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ-Assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ-Assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ-Assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ-Assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ-Assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ-Assignment] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRJ-Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ-Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ-Assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ-Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ-Assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ-Assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ-Assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ-Assignment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ-Assignment] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ-Assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ-Assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ-Assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ-Assignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ-Assignment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ-Assignment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJ-Assignment] SET QUERY_STORE = OFF
GO
USE [PRJ-Assignment]
GO
/****** Object:  Table [dbo].[Attendence]    Script Date: 17/07/2022 11:10:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendence](
	[StudentID] [nvarchar](100) NOT NULL,
	[SessionID] [int] NOT NULL,
	[Status] [nvarchar](150) NULL,
	[Comment] [nvarchar](150) NULL,
	[RecordTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Attendence] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 17/07/2022 11:10:12 ******/
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
/****** Object:  Table [dbo].[Group]    Script Date: 17/07/2022 11:10:12 ******/
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
/****** Object:  Table [dbo].[Instructor]    Script Date: 17/07/2022 11:10:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[InstructorID] [varchar](30) NOT NULL,
	[InstructorName] [nvarchar](50) NOT NULL,
	[InstructorEmail] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InstructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lectures]    Script Date: 17/07/2022 11:10:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lectures](
	[LecturesID] [nvarchar](100) NOT NULL,
	[LecturesName] [nvarchar](100) NOT NULL,
	[LecturesEmail] [nvarchar](100) NOT NULL,
	[LecturesPhoneNumber] [int] NOT NULL,
 CONSTRAINT [PK_Lectures] PRIMARY KEY CLUSTERED 
(
	[LecturesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 17/07/2022 11:10:12 ******/
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
/****** Object:  Table [dbo].[Session]    Script Date: 17/07/2022 11:10:12 ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 17/07/2022 11:10:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [nvarchar](100) NOT NULL,
	[StudentName] [nvarchar](100) NOT NULL,
	[StudentEmail] [nvarchar](100) NOT NULL,
	[StudentPhoneNumber] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentGroup]    Script Date: 17/07/2022 11:10:12 ******/
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
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 17/07/2022 11:10:12 ******/
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
INSERT [dbo].[Instructor] ([InstructorID], [InstructorName], [InstructorEmail]) VALUES (N'hongdt30', N'Dương Thị Hồng', N'hongdt30@fpt.edu.vn')
INSERT [dbo].[Instructor] ([InstructorID], [InstructorName], [InstructorEmail]) VALUES (N'Keiichiro', N'Someya Keiichiro', N'Keiichiro@fe.edu.vn')
INSERT [dbo].[Instructor] ([InstructorID], [InstructorName], [InstructorEmail]) VALUES (N'sonhx', N'Hoàng Xuân Sơn', N'SonHX@fe.edu.vn')
INSERT [dbo].[Instructor] ([InstructorID], [InstructorName], [InstructorEmail]) VALUES (N'sonnt5', N'Ngô Tùng Sơn', N'sonnt69@fe.edu.vn')
INSERT [dbo].[Instructor] ([InstructorID], [InstructorName], [InstructorEmail]) VALUES (N'thulx', N'Lại Xuân Thu', N'ThuLX@fe.edu.vn')
INSERT [dbo].[Instructor] ([InstructorID], [InstructorName], [InstructorEmail]) VALUES (N'trungnt', N'Nguyễn Tất Trung', N'TrungNT77@fe.edu.vn')
GO
INSERT [dbo].[Lectures] ([LecturesID], [LecturesName], [LecturesEmail], [LecturesPhoneNumber]) VALUES (N'hongdt30', N'Dương Thị Hồng', N'hongdt30@fpt.edu.vn', 376992643)
INSERT [dbo].[Lectures] ([LecturesID], [LecturesName], [LecturesEmail], [LecturesPhoneNumber]) VALUES (N'Keiichiro', N'Someya Keiichiro', N'Keiichiro@fe.edu.vn', 376992642)
INSERT [dbo].[Lectures] ([LecturesID], [LecturesName], [LecturesEmail], [LecturesPhoneNumber]) VALUES (N'sonhx', N'Hoàng Xuân Sơn', N'SonHX@fe.edu.vn', 376992644)
INSERT [dbo].[Lectures] ([LecturesID], [LecturesName], [LecturesEmail], [LecturesPhoneNumber]) VALUES (N'sonnt5', N'Ngô Tùng Sơn', N'sonnt69@fe.edu.vn', 376992646)
INSERT [dbo].[Lectures] ([LecturesID], [LecturesName], [LecturesEmail], [LecturesPhoneNumber]) VALUES (N'thulx', N'Lại Xuân Thu', N'ThuLX@fe.edu.vn', 376992647)
INSERT [dbo].[Lectures] ([LecturesID], [LecturesName], [LecturesEmail], [LecturesPhoneNumber]) VALUES (N'trungnt', N'Nguyễn Tất Trung', N'TrungNT77@fe.edu.vn', 376992648)
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
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail], [StudentPhoneNumber]) VALUES (N'HE161701', N'Đoàn Tiến Đạt', N'datdthe161701@fpt.edu.vn', 796492444)
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail], [StudentPhoneNumber]) VALUES (N'HE161702', N'Đoàn Bảo Đức', N'ducdbhe161702@fpt.edu.vn', 796492555)
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail], [StudentPhoneNumber]) VALUES (N'HE161703', N'Vũ Viết Hoàng', N'hoangvthe161703@fpt.edu.vn', 796492666)
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail], [StudentPhoneNumber]) VALUES (N'HE161704', N'Phạm Danh Trung Nguyên', N'nguyenpdthe161704@fpt.edu.vn', 796492777)
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentEmail], [StudentPhoneNumber]) VALUES (N'HE161705', N'Trần Quốc Hưng', N'hungtqhe161705@fpt.edu.vn', 796492888)
GO
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE161701', 2)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE161701', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE161702', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE161703', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE161704', 3)
INSERT [dbo].[StudentGroup] ([StudentID], [GroupID]) VALUES (N'HE161705', 3)
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
ALTER DATABASE [PRJ-Assignment] SET  READ_WRITE 
GO

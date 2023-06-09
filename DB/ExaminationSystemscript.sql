USE [ExaminationSystem]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 24/03/2023 02:42:04 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[crs_id] [int] NOT NULL,
	[crs_name] [nvarchar](50) NULL,
	[crs_description] [nvarchar](100) NULL,
	[crs_duration] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[crs_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 24/03/2023 02:42:04 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[dept_id] [int] NOT NULL,
	[dept_name] [nvarchar](50) NULL,
	[dept_loc] [nvarchar](100) NULL,
	[instid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[dept_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 24/03/2023 02:42:04 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[ex_id] [int] NOT NULL,
	[ex_type] [nvarchar](max) NULL,
	[no_mcq] [int] NULL,
	[no_tf] [int] NULL,
	[total_score]  AS ([no_mcq]*(2)+[no_tf]),
 CONSTRAINT [PK__Exam__F6D3E489689564CB] PRIMARY KEY CLUSTERED 
(
	[ex_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inst_Course]    Script Date: 24/03/2023 02:42:04 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inst_Course](
	[ins_id] [int] NOT NULL,
	[crs_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ins_id] ASC,
	[crs_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 24/03/2023 02:42:04 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[ins_id] [int] NOT NULL,
	[ins_name] [nvarchar](50) NULL,
	[ins_salary] [money] NULL,
	[ins_phone] [nvarchar](50) NULL,
	[deptid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ins_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 24/03/2023 02:42:04 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[q_id] [int] NOT NULL,
	[question] [nvarchar](max) NULL,
	[choice_1] [nvarchar](max) NULL,
	[choice_2] [nvarchar](max) NULL,
	[choice_3] [nvarchar](max) NULL,
	[choice_4] [nvarchar](max) NULL,
	[q_ans] [nvarchar](max) NULL,
	[q_score] [float] NULL,
	[crs_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[q_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Std_Course]    Script Date: 24/03/2023 02:42:04 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Std_Course](
	[std_id] [int] NOT NULL,
	[crs_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[std_id] ASC,
	[crs_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 24/03/2023 02:42:04 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Std_id] [int] NOT NULL,
	[Std_Fname] [nvarchar](50) NULL,
	[Std_Lname] [nvarchar](50) NULL,
	[Std_Address] [nvarchar](50) NULL,
	[Std_Phone] [nvarchar](11) NULL,
	[age] [int] NULL,
	[isActive] [bit] NULL,
	[deptid] [int] NULL,
	[email] [nvarchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[Std_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Exam_Course]    Script Date: 24/03/2023 02:42:04 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Exam_Course](
	[Std_id] [int] NOT NULL,
	[crs_id] [int] NOT NULL,
	[ex_id] [int] NOT NULL,
	[Grade] [int] NULL,
	[Date]  AS (getdate()),
 CONSTRAINT [PK__Student___38166E254D7178B5] PRIMARY KEY CLUSTERED 
(
	[Std_id] ASC,
	[crs_id] ASC,
	[ex_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Exam_Question]    Script Date: 24/03/2023 02:42:04 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Exam_Question](
	[Std_id] [int] NOT NULL,
	[ex_id] [int] NOT NULL,
	[q_id] [int] NOT NULL,
	[Answer] [nvarchar](max) NULL,
 CONSTRAINT [PK_Student_Exam_Question] PRIMARY KEY CLUSTERED 
(
	[Std_id] ASC,
	[ex_id] ASC,
	[q_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 24/03/2023 02:42:04 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[topic_id] [int] NOT NULL,
	[topic_name] [nvarchar](50) NULL,
	[crs_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[topic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Course] ([crs_id], [crs_name], [crs_description], [crs_duration]) VALUES (1, N'C#', N'PD', 50)
INSERT [dbo].[Course] ([crs_id], [crs_name], [crs_description], [crs_duration]) VALUES (2, N'HTML', N'PD', 40)
INSERT [dbo].[Course] ([crs_id], [crs_name], [crs_description], [crs_duration]) VALUES (3, N'C', N'PD', 30)
INSERT [dbo].[Course] ([crs_id], [crs_name], [crs_description], [crs_duration]) VALUES (100, N'ASP.Net Core MVC', N'Full Stack .net', 30)
INSERT [dbo].[Course] ([crs_id], [crs_name], [crs_description], [crs_duration]) VALUES (101, N'Angular', N'Front End', 20)
GO
INSERT [dbo].[Department] ([dept_id], [dept_name], [dept_loc], [instid]) VALUES (1, N'PD', N'Alexandria', 1)
INSERT [dbo].[Department] ([dept_id], [dept_name], [dept_loc], [instid]) VALUES (2, N'SA', N'Alexandria', 2)
INSERT [dbo].[Department] ([dept_id], [dept_name], [dept_loc], [instid]) VALUES (3, N'Department2', N'Alex', 2)
INSERT [dbo].[Department] ([dept_id], [dept_name], [dept_loc], [instid]) VALUES (5, N'DepartmentHH', N'Alex', 3)
INSERT [dbo].[Department] ([dept_id], [dept_name], [dept_loc], [instid]) VALUES (10, N'new department', N'alex', 1)
INSERT [dbo].[Department] ([dept_id], [dept_name], [dept_loc], [instid]) VALUES (11, N'dept11', N'alex', 4)
INSERT [dbo].[Department] ([dept_id], [dept_name], [dept_loc], [instid]) VALUES (12, N'dep12', N'alex', 4)
GO
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (1, N'qqq', 2, 1)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (2, N'qqq', 8, 2)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (3, N'www', 4, 5)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (4, N'Practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (5, N'Practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (6, N'Practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (7, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (8, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (9, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (10, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (11, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (12, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (13, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (14, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (15, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (16, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (17, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (18, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (19, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (20, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (21, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (22, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (23, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (24, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (25, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (26, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (27, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (28, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (29, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (30, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (31, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (32, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (33, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (34, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (35, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (36, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (37, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (38, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (39, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (40, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (41, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (42, N'practical', 7, 3)
INSERT [dbo].[Exam] ([ex_id], [ex_type], [no_mcq], [no_tf]) VALUES (43, N'practical', 7, 3)
GO
INSERT [dbo].[Inst_Course] ([ins_id], [crs_id]) VALUES (1, 3)
INSERT [dbo].[Inst_Course] ([ins_id], [crs_id]) VALUES (2, 3)
INSERT [dbo].[Inst_Course] ([ins_id], [crs_id]) VALUES (3, 2)
INSERT [dbo].[Inst_Course] ([ins_id], [crs_id]) VALUES (4, 3)
INSERT [dbo].[Inst_Course] ([ins_id], [crs_id]) VALUES (5, 3)
INSERT [dbo].[Inst_Course] ([ins_id], [crs_id]) VALUES (6, 3)
GO
INSERT [dbo].[Instructor] ([ins_id], [ins_name], [ins_salary], [ins_phone], [deptid]) VALUES (1, N'Instructor1', 2000.0000, N'0120521', NULL)
INSERT [dbo].[Instructor] ([ins_id], [ins_name], [ins_salary], [ins_phone], [deptid]) VALUES (2, N'Instructor2', 4000.0000, N'0120522', NULL)
INSERT [dbo].[Instructor] ([ins_id], [ins_name], [ins_salary], [ins_phone], [deptid]) VALUES (3, N'Hassanien', 55000.0000, N'0120523', NULL)
INSERT [dbo].[Instructor] ([ins_id], [ins_name], [ins_salary], [ins_phone], [deptid]) VALUES (4, N'Instructor4', 8000.0000, N'0120524', NULL)
INSERT [dbo].[Instructor] ([ins_id], [ins_name], [ins_salary], [ins_phone], [deptid]) VALUES (5, N'Instructor5', 10000.0000, N'0120525', NULL)
INSERT [dbo].[Instructor] ([ins_id], [ins_name], [ins_salary], [ins_phone], [deptid]) VALUES (6, N'Instructor6', 12000.0000, N'0120526', NULL)
INSERT [dbo].[Instructor] ([ins_id], [ins_name], [ins_salary], [ins_phone], [deptid]) VALUES (7, N'Instructor7', 14000.0000, N'0120527', NULL)
INSERT [dbo].[Instructor] ([ins_id], [ins_name], [ins_salary], [ins_phone], [deptid]) VALUES (8, N'Instructor8', 16000.0000, N'0120528', NULL)
INSERT [dbo].[Instructor] ([ins_id], [ins_name], [ins_salary], [ins_phone], [deptid]) VALUES (9, N'Karim', 6700.0000, N'01222868979', NULL)
INSERT [dbo].[Instructor] ([ins_id], [ins_name], [ins_salary], [ins_phone], [deptid]) VALUES (15, N'Suliman', 9000.0000, N'0114218965', NULL)
INSERT [dbo].[Instructor] ([ins_id], [ins_name], [ins_salary], [ins_phone], [deptid]) VALUES (100, N'Mohamed Moustafa', 12000.0000, N'01279115899', NULL)
GO
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (1, N'How many Bytes are stored by ‘Long’ Data type in C# .net?', N'8', N'4', N'2', N'1', N'1', 2, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (2, N'Choose “.NET class” name from which data type “UInt” is derived?', N'System.Int16', N'System.UInt32', N'System.UInt64', N'System.UInt16', N'2', 2, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (3, N'Correct Declaration of Values to variables ‘a’ and ‘b’?', N'int a = 32, b = 40.6;', N'int a = 42; b = 40;', N'int a = 32; int b = 40;', N' int a = b = 42;', N'3', 2, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (4, N'Arrange the following data type in order of increasing magnitude sbyte, short, long, int.', N'long < short < int < sbyte', N'sbyte < short < int < long', N'short < sbyte < int < long', N'short < int < sbyte < long', N'2', 2, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (5, N'Which data type should be more preferred for storing a simple number like 35 to improve execution speed of a program?', N'sbyte', N'short', N'int', N'long', N'1', 2, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (6, N'Correct way to assign values to variable ‘c’ when int a=12, float b=3.5, int c;', N'c = a + b;', N'c = a + int(float(b));', N'c = a + convert.ToInt32(b);', N'c = int(a + b);', N'3', 2, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (7, N'Default Type of number without decimal is?', N'Long int', N' Unsigned Long', N'Int', N'Unsigned Int', N'3', 2, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (8, N'Select a convenient declaration and initialization of a floating point number:', N'float somevariable = 12.502D', N'float somevariable = (Double) 12.502D', N'float somevariable = (float) 12.502D', N'float somevariable = (Decimal)12.502D', N'3', 2, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (9, N'Number of digits upto which precision value of float data type is valid?', N'Upto 6 digit', N'Upto 8 digit', N'Upto 9 digit', N'Upto 7 digit', N'4', 2, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (10, N'Valid Size of float data type is?', N'10 Bytes', N'6 Bytes', N'4 Bytes', N'8 Bytes', N'3', 2, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (11, N'The Default value of Boolean Data Type is?', N'0', N'true', N'false', N'1', N'3', 2, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (12, N'Storage location used by computer memory to store data for usage by an application is?', N'Pointers', N'Constants', N'Variable', N'None of the mentioned', N'3', 2, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (13, N' What will be the output of the following C# code?

  int a,b;
  a = (b = 10) + 5;', N'b = 10, a = 5', N'b = 15, a = 5', N'a = 15, b = 10', N'a = 10, b = 10', N'3', 2, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (14, N'What will be the output of the following C# code?
static void Main(string[] args)
 {
     int a = 5;
     int b = 10;
     int c;
     Console.WriteLine(c = a-- - ++b);
     Console.WriteLine(b);
     Console.ReadLine();
 }', N'-7, 10', N'-5, 11', N'-6, 11', N'15, 11', N'3', 2, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (15, N'What will be the output of the following C# code?

 static void Main(string[] args)
 {
     string Name = "He is playing in a ground.";
     char[] characters = Name.ToCharArray();
     StringBuilder sb = new StringBuilder();
     for (int i = Name.Length - 1; i >= 0; --i)
     {
         sb.Append(characters[i]);
     }
     Console.Write(sb.ToString());
     Console.ReadLine(); 
 }', N'He is playing in a grou', N'.ground a in playing is He', N'.dnuorg a ni gniyalp si eH', N'He playing a', N'3', 2, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (16, N'is C# an object-oriented programming language?', N'yes', N'no', NULL, NULL, N'2', 1, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (17, N'Is C++ an alias of C#?', N'yes', N'no', NULL, NULL, N'2', 1, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (18, N'Is C# a type safe programming language?', N'yes', N'no', NULL, NULL, N'1', 1, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (19, N'Is C# a structured programming language?', N'yes', N'no', NULL, NULL, N'1', 1, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (20, N'"Garbage collection automatically reclaims memory occupied by unreachable unused objects." – This statement is true or false in C#?', N'true', N'false', NULL, NULL, N'1', 1, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (21, N'Is C# programming language a case-sensitive?', N'yes', N'no', NULL, NULL, N'1', 1, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (22, N'What will be the output of the following C# code?

using System;

class Program {
  static void Main(string[] args) {
    Console.WriteLine(true ^ true);
  }
}', N'true', N'false', NULL, NULL, N'2', 1, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (23, N'What is HTML?', N'HTML describes the structure of a webpage', N'HTML is the standard markup language mainly used to create web pages', N'HTML consists of a set of elements that helps the browser how to view the content', N'All of the mentioned', N'4', 2, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (24, N'Who is the father of HTML?', N'Rasmus Lerdorf', N'Tim Berners-Lee', N'Brendan Eich', N'Sergey Brin', N'2', 2, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (25, N'HTML stands for', N'HyperText Markup Language', N'HyperText Machine Language', N'HyperText Marking Language', N'HighText Marking Language', N'1', 2, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (26, N'What is the correct syntax of doctype in HTML5?', N'</doctype html>', N'<doctype html>', N'<doctype html!>', N'<!doctype html>', N'4', 2, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (27, N'Which of the following is used to read an HTML page and render it?
', N'Web server', N'Web network', N'Web browser', N'Web matrix', N'3', 2, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (28, N'Which of the following is not a difference between HTML and XHTML?
', N' Charset in both html and xhtml is “text/html”
', N'Tags and attributes are case-insensitive in HTML but not in XHTML', N'Special characters must be escaped using character entities in XHTML unlike HTML
', N'Charset in html is “text/html” where as in xhtml it is “application/xml+xhtml”
', N'1', 2, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (29, N'Which of the following tag is used for inserting the largest heading in HTML?
', N'head', N'<h1>', N'<h6>', N'heading', N'2', 2, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (30, N'What is DOM in HTML?
', N'Language dependent application programming
', N'Hierarchy of objects in ASP.NET
', N'Application programming interface
', N'Convention for representing and interacting with objects in html documents
', N'4', 2, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (31, N'In which part of the HTML metadata is contained?', N'head tag', N'title tag', N'html tag', N'body tag', N'1', 2, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (32, N'Which element is used to get highlighted text in HTML5?', N'<u>', N'<mark>', N'<highlight>', N'<b>', N'2', 2, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (33, N'Which of the following is not a HTML5 tag?', N'<track>', N'<video>', N'<slider>', N'<source>', N'3', 2, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (34, N'How do we write comments in HTML?', N'</…….>', N'<!……>', N'</……/>', N'<…….!>', N'2', 2, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (35, N'Which of the following elements in HTML5 defines video or movie content?', N'<video>', N'<movie>', N'<audio>', N'<media>', N'1', 2, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (36, N'Which of the following is not the element associated with the HTML table layout?
', N'alignment', N'color', N'size', N'spanning', N'2', 2, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (37, N'Which element is used for or styling HTML5 layout?
', N'CSS', N'jquery', N'javascript', N'php', N'1', 2, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (38, N'Which HTML tag is used for making character appearance bold?', N'<u>content</u>', N'<b>content</b>', N'<br>content</br>', N'<i>content</i>', N'2', 2, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (39, N'Which HTML tag is used to insert an image?', N'<img url=”htmllogo.jpg” />', N'<img alt=”htmllogo.jpg” />', N'<img src=”htmllogo.jpg” />', N'<img link=”htmllogo.jpg” />', N'3', 2, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (40, N'HTML is a subset of 
', N'SGMT', N'SGML', N'SGME', N'XHTML', N'2', 2, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (41, N'Which character is used to represent when a tag is closed in HTML?', N'#', N'!', N'/', N'\', N'3', 2, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (42, N'Comments are visible on the browsers window.
', N'true', N'false', NULL, NULL, N'2', 1, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (43, N'<u> tag is used to mark the text italics.
', N'true', N'false', NULL, NULL, N'2', 1, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (44, N'<font> is has values from 1 to 10', N'true', N'false', NULL, NULL, N'2', 1, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (45, N'<p> tag is used to give headings in the web page
', N'true', N'false', NULL, NULL, N'2', 1, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (46, N'<h6> is the highest level heading tag.', N'true', N'false', NULL, NULL, N'2', 1, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (47, N'Link attribute is used to change the color of hyperlinks in a web page.
', N'true', N'false', NULL, NULL, N'1', 1, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (48, N'Web Browser is used to browse web pages.
', N'true', N'false', NULL, NULL, N'1', 1, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (49, N'<h1> tag is used to specify heading in a document.
', N'true', N'false', NULL, NULL, N'1', 1, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (50, N'Size attribute in <font> is has values from 1 to 10.
', N'true', N'false', NULL, NULL, N'2', 1, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (51, N'<p> tag is used to give headings in the web page.
', N'true', N'false', NULL, NULL, N'2', 1, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (100, N'question from windows form', N'a', N'b', N'c', N'd', N'1', 2, 1)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (101, N'question101 from windows form ', N'a', N'b', NULL, NULL, N'2', 1, 2)
INSERT [dbo].[Question] ([q_id], [question], [choice_1], [choice_2], [choice_3], [choice_4], [q_ans], [q_score], [crs_id]) VALUES (102, N'qqq', N'q', N'w', N'e', N'r', N'2', 2, 3)
GO
INSERT [dbo].[Student] ([Std_id], [Std_Fname], [Std_Lname], [Std_Address], [Std_Phone], [age], [isActive], [deptid], [email]) VALUES (1, N'Mohamed', N'Moustafa', N'Elawamy st-Agamy-Alexandria', N'01279115899', 24, NULL, 2, N'dev.mohamed.abdultwab@gmail.com')
INSERT [dbo].[Student] ([Std_id], [Std_Fname], [Std_Lname], [Std_Address], [Std_Phone], [age], [isActive], [deptid], [email]) VALUES (2, N'Ahmed', N'Hassanine', N'Elmandra Alex', N'01201670643', 23, NULL, 1, N'Ahmedhasanien1999@gmail.com')
INSERT [dbo].[Student] ([Std_id], [Std_Fname], [Std_Lname], [Std_Address], [Std_Phone], [age], [isActive], [deptid], [email]) VALUES (3, N'Karim', N'Ali', N'20 Obour City', N'01222868979', 26, NULL, 2, N'k@gmail.com')
INSERT [dbo].[Student] ([Std_id], [Std_Fname], [Std_Lname], [Std_Address], [Std_Phone], [age], [isActive], [deptid], [email]) VALUES (4, N'Marawan', N'Aref', N'28 Cairo St', N'01222545678', 24, NULL, 1, N'mo@gmail.com')
INSERT [dbo].[Student] ([Std_id], [Std_Fname], [Std_Lname], [Std_Address], [Std_Phone], [age], [isActive], [deptid], [email]) VALUES (7, N'Ahmed', N'Ayman', N'23Cairo', N'01062065789', 25, NULL, 3, N'k@i.com')
INSERT [dbo].[Student] ([Std_id], [Std_Fname], [Std_Lname], [Std_Address], [Std_Phone], [age], [isActive], [deptid], [email]) VALUES (8, N'mohamed', N'hawky', N'24st', N'01045065888', 44, NULL, 2, N'k@io')
INSERT [dbo].[Student] ([Std_id], [Std_Fname], [Std_Lname], [Std_Address], [Std_Phone], [age], [isActive], [deptid], [email]) VALUES (100, N'Mohamed', N'Moustafa', N'Alexandria', N'01279115899', 24, NULL, 1, N'dev.mohamed.mabdultwab@gmail.com')
GO
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (1, 1, 13, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (1, 1, 14, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (1, 1, 15, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (1, 1, 16, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (1, 1, 17, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (1, 1, 31, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (1, 1, 34, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (1, 1, 35, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (1, 1, 36, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (1, 1, 37, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (1, 1, 38, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (1, 1, 40, 0)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (1, 1, 41, 0)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (1, 1, 42, 4)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (1, 1, 43, 0)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (1, 2, 32, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (1, 2, 33, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (2, 1, 6, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (2, 1, 7, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (2, 1, 18, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (2, 1, 20, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (2, 1, 21, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (2, 1, 29, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (2, 2, 8, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (2, 2, 19, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (2, 2, 22, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (2, 2, 39, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (3, 1, 9, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (3, 1, 28, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (3, 2, 23, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (4, 1, 10, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (4, 1, 24, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (4, 1, 26, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (4, 1, 27, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (4, 2, 11, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (4, 2, 12, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (4, 2, 25, NULL)
INSERT [dbo].[Student_Exam_Course] ([Std_id], [crs_id], [ex_id], [Grade]) VALUES (4, 2, 30, NULL)
GO
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 1, 1, N'1                                                 ')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 1, 2, N'2                                                 ')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 1, 3, N'1                                                 ')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 13, 2, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 13, 4, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 13, 6, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 13, 10, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 13, 11, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 13, 12, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 13, 19, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 13, 20, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 13, 22, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 13, 100, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 14, 5, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 14, 6, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 14, 7, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 14, 10, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 14, 12, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 14, 13, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 14, 15, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 14, 19, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 14, 20, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 14, 22, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 15, 1, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 15, 4, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 15, 8, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 15, 9, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 15, 11, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 15, 15, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 15, 16, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 15, 17, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 15, 19, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 15, 100, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 16, 4, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 16, 5, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 16, 7, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 16, 9, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 16, 11, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 16, 13, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 16, 14, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 16, 16, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 16, 19, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 16, 21, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 17, 2, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 17, 6, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 17, 7, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 17, 8, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 17, 9, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 17, 10, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 17, 14, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 17, 16, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 17, 18, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 17, 21, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 31, 4, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 31, 5, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 31, 7, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 31, 9, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 31, 10, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 31, 13, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 31, 18, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 31, 21, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 31, 22, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 31, 100, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 32, 4, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 32, 5, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 32, 8, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 32, 9, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 32, 10, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 32, 11, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 32, 12, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 32, 19, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 32, 20, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 32, 22, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 33, 4, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 33, 7, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 33, 11, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 33, 13, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 33, 14, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 33, 15, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 33, 19, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 33, 20, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 33, 21, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 33, 100, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 34, 1, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 34, 2, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 34, 4, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 34, 6, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 34, 9, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 34, 11, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 34, 14, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 34, 18, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 34, 19, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 34, 21, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 35, 2, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 35, 4, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 35, 5, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 35, 11, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 35, 14, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 35, 15, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 35, 17, NULL)
GO
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 35, 19, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 35, 21, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 35, 100, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 36, 5, N'1')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 36, 7, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 36, 9, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 36, 10, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 36, 12, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 36, 13, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 36, 16, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 36, 17, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 36, 19, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 36, 100, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 37, 4, N'1')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 37, 5, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 37, 7, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 37, 10, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 37, 13, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 37, 14, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 37, 15, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 37, 16, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 37, 19, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 37, 20, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 38, 1, N'1')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 38, 5, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 38, 6, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 38, 7, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 38, 9, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 38, 10, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 38, 14, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 38, 18, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 38, 21, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 38, 22, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 40, 1, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 40, 4, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 40, 7, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 40, 11, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 40, 13, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 40, 14, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 40, 18, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 40, 20, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 40, 21, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 40, 100, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 41, 1, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 41, 2, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 41, 5, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 41, 6, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 41, 9, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 41, 12, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 41, 14, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 41, 17, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 41, 18, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 41, 21, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 42, 2, N'1')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 42, 3, N'2')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 42, 7, N'1')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 42, 8, N'3')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 42, 9, N'1')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 42, 11, N'2')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 42, 12, N'2')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 42, 16, N'2')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 42, 20, N'1')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 42, 22, N'1')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 43, 5, N'0')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 43, 6, N'0')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 43, 7, N'0')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 43, 10, N'0')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 43, 12, N'0')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 43, 13, N'0')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 43, 18, N'0')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 43, 19, N'0')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 43, 21, N'0')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (1, 43, 100, N'0')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 21, 1, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 21, 4, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 21, 5, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 21, 6, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 21, 8, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 21, 9, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 21, 12, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 21, 19, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 21, 20, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 21, 22, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 22, 3, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 22, 4, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 22, 7, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 22, 9, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 22, 10, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 22, 11, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 22, 13, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 22, 16, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 22, 18, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 22, 20, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 29, 3, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 29, 5, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 29, 7, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 29, 10, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 29, 11, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 29, 14, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 29, 17, NULL)
GO
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 29, 21, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 29, 22, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 29, 100, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 39, 3, N'1')
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 39, 5, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 39, 7, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 39, 10, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 39, 13, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 39, 14, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 39, 16, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 39, 19, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 39, 20, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (2, 39, 100, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 23, 2, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 23, 4, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 23, 7, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 23, 8, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 23, 13, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 23, 14, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 23, 19, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 23, 20, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 23, 22, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 23, 100, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 28, 2, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 28, 5, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 28, 9, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 28, 11, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 28, 13, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 28, 14, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 28, 16, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 28, 17, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 28, 19, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (3, 28, 100, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 24, 1, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 24, 2, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 24, 3, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 24, 5, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 24, 6, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 24, 14, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 24, 17, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 24, 21, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 24, 22, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 24, 100, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 25, 1, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 25, 3, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 25, 9, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 25, 11, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 25, 12, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 25, 13, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 25, 14, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 25, 17, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 25, 18, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 25, 22, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 26, 2, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 26, 3, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 26, 6, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 26, 10, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 26, 12, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 26, 15, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 26, 18, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 26, 21, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 26, 22, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 26, 100, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 27, 1, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 27, 4, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 27, 5, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 27, 7, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 27, 8, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 27, 13, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 27, 15, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 27, 18, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 27, 21, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 27, 22, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 30, 1, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 30, 2, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 30, 8, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 30, 11, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 30, 13, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 30, 14, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 30, 16, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 30, 18, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 30, 19, NULL)
INSERT [dbo].[Student_Exam_Question] ([Std_id], [ex_id], [q_id], [Answer]) VALUES (4, 30, 100, NULL)
GO
INSERT [dbo].[Topic] ([topic_id], [topic_name], [crs_id]) VALUES (1, N'Delegates', 1)
INSERT [dbo].[Topic] ([topic_id], [topic_name], [crs_id]) VALUES (2, N'Pointers', 3)
INSERT [dbo].[Topic] ([topic_id], [topic_name], [crs_id]) VALUES (3, N'Http Request', 2)
INSERT [dbo].[Topic] ([topic_id], [topic_name], [crs_id]) VALUES (4, N'Loops', 3)
INSERT [dbo].[Topic] ([topic_id], [topic_name], [crs_id]) VALUES (5, N'Events', 1)
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [c1] FOREIGN KEY([instid])
REFERENCES [dbo].[Instructor] ([ins_id])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [c1]
GO
ALTER TABLE [dbo].[Inst_Course]  WITH CHECK ADD FOREIGN KEY([crs_id])
REFERENCES [dbo].[Course] ([crs_id])
GO
ALTER TABLE [dbo].[Inst_Course]  WITH CHECK ADD FOREIGN KEY([ins_id])
REFERENCES [dbo].[Instructor] ([ins_id])
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD FOREIGN KEY([deptid])
REFERENCES [dbo].[Department] ([dept_id])
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Course] FOREIGN KEY([crs_id])
REFERENCES [dbo].[Course] ([crs_id])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Course]
GO
ALTER TABLE [dbo].[Std_Course]  WITH CHECK ADD FOREIGN KEY([crs_id])
REFERENCES [dbo].[Course] ([crs_id])
GO
ALTER TABLE [dbo].[Std_Course]  WITH CHECK ADD FOREIGN KEY([std_id])
REFERENCES [dbo].[Student] ([Std_id])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([deptid])
REFERENCES [dbo].[Department] ([dept_id])
GO
ALTER TABLE [dbo].[Student_Exam_Course]  WITH CHECK ADD  CONSTRAINT [FK__Student_E__crs_i__4F7CD00D] FOREIGN KEY([crs_id])
REFERENCES [dbo].[Course] ([crs_id])
GO
ALTER TABLE [dbo].[Student_Exam_Course] CHECK CONSTRAINT [FK__Student_E__crs_i__4F7CD00D]
GO
ALTER TABLE [dbo].[Student_Exam_Course]  WITH CHECK ADD  CONSTRAINT [FK__Student_E__ex_id__5070F446] FOREIGN KEY([ex_id])
REFERENCES [dbo].[Exam] ([ex_id])
GO
ALTER TABLE [dbo].[Student_Exam_Course] CHECK CONSTRAINT [FK__Student_E__ex_id__5070F446]
GO
ALTER TABLE [dbo].[Student_Exam_Course]  WITH CHECK ADD  CONSTRAINT [FK__Student_E__Std_i__4E88ABD4] FOREIGN KEY([Std_id])
REFERENCES [dbo].[Student] ([Std_id])
GO
ALTER TABLE [dbo].[Student_Exam_Course] CHECK CONSTRAINT [FK__Student_E__Std_i__4E88ABD4]
GO
ALTER TABLE [dbo].[Student_Exam_Question]  WITH CHECK ADD  CONSTRAINT [FK_Student_Exam_Question_Exam] FOREIGN KEY([ex_id])
REFERENCES [dbo].[Exam] ([ex_id])
GO
ALTER TABLE [dbo].[Student_Exam_Question] CHECK CONSTRAINT [FK_Student_Exam_Question_Exam]
GO
ALTER TABLE [dbo].[Student_Exam_Question]  WITH CHECK ADD  CONSTRAINT [FK_Student_Exam_Question_Question] FOREIGN KEY([q_id])
REFERENCES [dbo].[Question] ([q_id])
GO
ALTER TABLE [dbo].[Student_Exam_Question] CHECK CONSTRAINT [FK_Student_Exam_Question_Question]
GO
ALTER TABLE [dbo].[Student_Exam_Question]  WITH CHECK ADD  CONSTRAINT [FK_Student_Exam_Question_Student] FOREIGN KEY([Std_id])
REFERENCES [dbo].[Student] ([Std_id])
GO
ALTER TABLE [dbo].[Student_Exam_Question] CHECK CONSTRAINT [FK_Student_Exam_Question_Student]
GO
ALTER TABLE [dbo].[Topic]  WITH CHECK ADD FOREIGN KEY([crs_id])
REFERENCES [dbo].[Course] ([crs_id])
GO
/****** Object:  StoredProcedure [dbo].[CalcResult]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CalcResult] ( @Std_id int , @ex_id int )
as
	declare @m table ( Answer nvarchar(max),stdAnswer nvarchar(max),q_score int)
		insert into @m
		exec GetAnswers @Std_id,@ex_id
	declare @x int
		select @x = sum(q_score)
					from @m
					where Answer=stdAnswer
	return @x
GO
/****** Object:  StoredProcedure [dbo].[Delete_Department]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Delete_Department] @dept_id int
as
begin
	if not exists (select deptid from Student where deptid = @dept_id)
		begin
			if not exists (select deptid from Instructor where deptid = @dept_id)
				delete from Department where dept_id = @dept_id;
			else
				update Instructor set deptid = null where deptid = @dept_id;
				exec Delete_Department @dept_id
		end
	else
		update Student set deptid = null where deptid = @dept_id;
		exec Delete_Department @dept_id
end
GO
/****** Object:  StoredProcedure [dbo].[Delete_Student]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Delete_Student] @std_id int
as
begin
	if exists (select Std_id from Student where Std_id = @std_id)
		delete from Student where Std_id = @std_id
	else
		select 'There is no student with id = ' + cast(@std_id as varchar(10)) + ' to delete!';
end
GO
/****** Object:  StoredProcedure [dbo].[Delete_Student_Exam_Course]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Delete_Student_Exam_Course] @std_id int, @crs_id int, @ex_id int
as
begin
	if exists(select Std_id, crs_id, ex_id from Student_Exam_Course where Std_id = @std_id and crs_id = @crs_id and ex_id = @ex_id)
		delete from Student_Exam_Course where Std_id = @std_id and crs_id = @crs_id and ex_id = @ex_id;
	else
		select 'Invalid Data!';
end
GO
/****** Object:  StoredProcedure [dbo].[GetAnswers]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetAnswers]( @Std_id int , @ex_id int)
as
begin
select Q.q_ans,S.Answer,Q.q_score
from Student_Exam_Question S,Question Q
where Std_id= @Std_id and ex_id=@ex_id and S.q_id=Q.q_id
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_Department]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Insert_Department] @dept_id int, @dept_name varchar(50), @dept_loc varchar(50), @supervisor_id int
as
begin
	if not exists(select dept_id from Department where dept_id = @dept_id)
		begin
			if exists (select ins_id from Instructor where ins_id = @supervisor_id)
				insert into Department values (@dept_id, @dept_name, @dept_loc, @supervisor_id);
			else
				select 'There is no instructor with id = ' + cast(@supervisor_id as varchar(10)) + ' to be supervisor!'; 
		end
	else
		select 'Department with id = ' + cast(@dept_id as varchar(10)) + ' already exist!';
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_Student]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Insert_Student] @std_id int, @std_Fname varchar(50), @std_Lname varchar(50), @std_address varchar(50), @std_phone varchar(11), @std_age int, @std_dpt int, @std_email varchar(50)
as
begin
	if not exists (select Std_id from Student where Std_id = @std_id)
		insert into Student(Std_id, Std_Fname, Std_Lname, Std_Address, Std_Phone, age, deptid, email)
		values(@std_id, @std_Fname, @std_Lname, @std_address, @std_phone, @std_age, @std_dpt, @std_email)
	else
		select 'Student with id = ' + cast(@std_id as varchar(10)) +' already esists!';
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_Student_Exam_Course]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Insert_Student_Exam_Course] @std_id int, @crs_id int, @ex_id int, @grade int
as
begin
	if not exists (select Std_id, crs_id, ex_id from Student_Exam_Course where Std_id = @std_id and crs_id = @crs_id and ex_id = @ex_id)
		begin
			if exists (select Std_id from Student where Std_id = @std_id)
			begin
				if exists (select crs_id from Course where crs_id = @crs_id)
					begin
						if exists (select ex_id from Exam where ex_id = @ex_id)
							insert into Student_Exam_Course(Std_id, crs_id, ex_id, grade) values(@std_id, @crs_id, @ex_id, @grade)
						else
							select 'There is no exam with id = ' + CAST(@ex_id as varchar(10));
					end
				else
					select 'There is no course with id = ' + CAST(@crs_id as varchar(10));
			end
		else
			select 'There is no student with id = ' + CAST(@std_id as varchar(10));
		end
	else
		select 'Invalid Data!'
end
GO
/****** Object:  StoredProcedure [dbo].[Making_Exam]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Making_Exam] @std_id int, @course_id int, @no_mcq int, @no_tf int, @exam_type varchar(max)
as
	begin
		if exists(select Std_id from Student where Std_id = @std_id)
			begin
				if exists(select crs_id from Course where crs_id = @course_id)
					begin
					-- step 1  [Table Exam]
						declare @exam_id  int ;
						select @exam_id = (select max(ex_id) from Exam) + 1;
						exec SP_Insert_Exam @exam_id,@exam_type, @no_mcq, @no_tf;
					-- step 2  [Table Student_Exam_Question]
						declare @quest_id  int;
						declare @i int = 0;
						while @i < @no_mcq
							BEGIN				
								select @quest_id = (select top 1 q_id from Question where q_score = 2 and crs_id = @course_id ORDER BY NEWID())
								IF NOT EXISTS (SELECT Std_id, ex_id, q_id FROM Student_Exam_Question WHERE Std_id = @std_id AND ex_id = @exam_id AND q_id = @quest_id)
									BEGIN
										exec SP_Insert_StdQuesAnswer @std_id, @exam_id, @quest_id, null;
										set @i = @i + 1;
									END
							END

						set @i = 0;
						while @i < @no_tf
							BEGIN
								select @quest_id = (select top 1 q_id from Question where q_score = 1 and crs_id = @course_id ORDER BY NEWID())
								IF NOT EXISTS (SELECT Std_id, ex_id, q_id FROM Student_Exam_Question WHERE Std_id = @std_id AND ex_id = @exam_id AND q_id = @quest_id)
									BEGIN
										exec SP_Insert_StdQuesAnswer @std_id, @exam_id, @quest_id, null;
										set @i = @i + 1;
									END
							END
						-- step 3
						exec Insert_Student_Exam_Course @std_id, @course_id, @exam_id, null
					end
				else
					select 'There is no course with id = ' + CAST(@course_id as varchar(10));
			end
		else
			select 'There is no student with id = ' + CAST(@std_id as varchar(10));
	end
GO
/****** Object:  StoredProcedure [dbo].[Show_All_Departments]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Show_All_Departments]
as
begin
	select * from Department;
end
GO
/****** Object:  StoredProcedure [dbo].[Show_All_Student_Exam_Course]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Show_All_Student_Exam_Course]
as
begin
	select * from Student_Exam_Course;
end
GO
/****** Object:  StoredProcedure [dbo].[Show_All_Student_Exam_Course_By_Course]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Show_All_Student_Exam_Course_By_Course] @crs_id int
as
begin
	select * from Student_Exam_Course where crs_id = @crs_id;
end
GO
/****** Object:  StoredProcedure [dbo].[Show_All_Student_Exam_Course_By_Exam]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Show_All_Student_Exam_Course_By_Exam] @ex_id int
as
begin
	select * from Student_Exam_Course where ex_id = @ex_id;
end
GO
/****** Object:  StoredProcedure [dbo].[Show_All_Student_Exam_Course_By_Student]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Show_All_Student_Exam_Course_By_Student] @std_id int
as
begin
	select * from Student_Exam_Course where Std_id = @std_id;
end
GO
/****** Object:  StoredProcedure [dbo].[Show_All_Students]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Show_All_Students]
as
begin
	select * from Student
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Add_Ins_Crs]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	  create Proc [dbo].[SP_Add_Ins_Crs] @ins_id int , @crs_id int
		  as 
		   insert into Inst_Course values
		   (@ins_id , @crs_id)
GO
/****** Object:  StoredProcedure [dbo].[SP_AddInstructor]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

		  create Proc [dbo].[SP_AddInstructor] @insid int , @instname nvarchar(50) , @inssal money , @insphone nvarchar(11)
		  as 
		   insert into Instructor (ins_id , ins_name ,ins_salary , ins_phone ) values
		   (@insid ,@instname , @inssal , @insphone)
		    
GO
/****** Object:  StoredProcedure [dbo].[SP_AddInstructors]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

		  create Proc [dbo].[SP_AddInstructors] @insid int , @instname nvarchar(50) , @inssal money , @insphone nvarchar(11)
		  as 
		    while(@insid<10)
			begin
		   insert into Instructor (ins_id , ins_name ,ins_salary , ins_phone ) values
		   (@insid ,concat(@instname,@insid) , @inssal*@insid , concat(@insphone,@insid))
			set @insid= @insid+1
			end
GO
/****** Object:  StoredProcedure [dbo].[SP_Delete_Course]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Delete_Course] (@crs_id int)
as 
if not exists (select crs_id from Course where crs_id=@crs_id)
select 'ID is not found'
else 
begin 
delete from Course
where crs_id=@crs_id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Delete_Exam]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Delete_Exam] (@examId int)
as
	if EXISTS (SELECT ex_id FROM Exam WHERE ex_id = @examId)
	   AND NOT EXISTS (SELECT ex_id FROM Student_Exam_Course WHERE ex_id = @examId)
	   AND NOT EXISTS (SELECT ex_id FROM Student_Exam_Question WHERE ex_id = @examId)
		DELETE FROM Exam WHERE ex_id = @examId
	else 
		SELECT 'Exam has relations';
GO
/****** Object:  StoredProcedure [dbo].[SP_Delete_Ins_Crs]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create Proc [dbo].[SP_Delete_Ins_Crs] @ins_id int , @crs_id int 
		  as 
		    delete Inst_Course
			where ins_id =@ins_id and crs_id=@crs_id
GO
/****** Object:  StoredProcedure [dbo].[SP_Delete_Question]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Delete_Question] (@q_id int)
as 
if not exists (select q_id from Question where q_id=@q_id)
select 'ID is not found'
else 
begin 
delete from Question
where q_id=@q_id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Delete_StdQuesAnswer]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Delete_StdQuesAnswer] (@studId int , @examId int , @quesId int)
as
	if EXISTS (SELECT Answer FROM Student_Exam_Question WHERE Std_id = @studId AND   ex_id = @examId AND   q_id = @quesId)
		DELETE FROM Student_Exam_Question WHERE Std_id = @studId
	else 
		SELECT 'Answer to this Question doesnot exist';
GO
/****** Object:  StoredProcedure [dbo].[SP_Delete_Topic]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Delete_Topic] (@topicId int , @topicName nvarchar(50))
as
	if EXISTS (SELECT topic_id FROM Topic WHERE topic_id = @topicId)
		UPDATE TOPIC SET topic_name = @topicName WHERE topic_id = @topicId
	else 
		SELECT 'Topic doesnot exist';
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteInstructor]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	  create Proc [dbo].[SP_DeleteInstructor] @insid int 
	  as
	  delete Instructor 
	  where ins_id =@insid
GO
/****** Object:  StoredProcedure [dbo].[SP_GET_Answeres_Of_Student_In_Exam]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	create proc [dbo].[SP_GET_Answeres_Of_Student_In_Exam] @exid int , @stdid int
	  as
	  select q.question ,  seq.Answer
		from Exam e join Student_Exam_Question seq
		on  e.ex_id=seq.ex_id join Question Q 
		ON Q.q_id =seq.q_id JOIN  Student s
		 on seq.Std_id =s.Std_id 
		 where e.ex_id=@exid and s.Std_id = @stdid
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Course_And_Student_By_Instructor_ID]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	  
	CREATE proc [dbo].[SP_Get_Course_And_Student_By_Instructor_ID] @insid int
	as
	   select c.crs_name , count(s.Std_id) [Number of Students]
	   from Instructor i join Inst_Course ic 
	   on i.ins_id =ic.ins_id join Course c
	   on c.crs_id = ic.crs_id join Std_Course sc
	   on c.crs_id=sc.crs_id join Student s
	   on s.Std_id=sc.std_id
	   where i.ins_id = @insid
	   group by c.crs_name
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Grade_Of_Student_By_ID]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	create proc [dbo].[SP_Get_Grade_Of_Student_By_ID] @stdid int 
	as
	  select sec.Grade
	  from Student_Exam_Course sec join Course c 
	  on c.crs_id = sec.crs_id 
	  where sec.Std_id = @stdid 
	  
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Questtions_And_Choices_Of_Exam]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[SP_Get_Questtions_And_Choices_Of_Exam] @exid int
   as
   
	    select q.question , q.choice_1 , q.choice_2 , q.choice_3 , q.choice_4
		from Exam e join Student_Exam_Question seq
		on  e.ex_id=seq.ex_id join Question q
		on q.q_id = seq.q_id
		where e.ex_id = @exid 
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Students_From_Department]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

     create proc [dbo].[SP_Get_Students_From_Department] @depno int
	 as 
	  select * from Student 
	  where deptid= @depno
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Topics_OF_Course]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	   create proc [dbo].[SP_Get_Topics_OF_Course] @crsid int
	   as
	   select t.topic_id , t.topic_name
		from Topic t join Course c 
		on c.crs_id = t.crs_id
		where c.crs_id=@crsid
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllInstructors]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	       create Proc [dbo].[SP_GetAllInstructors]
		   as
			 select * from Instructor
GO
/****** Object:  StoredProcedure [dbo].[SP_Insert_Course]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Insert_Course] (@crs_id int , @crs_name nvarchar(50), @crs_description nvarchar(100),@crs_duration int)
as 
if exists (select crs_id from Course where crs_id=@crs_id)
select 'Duplicated ID'
else
insert into Course values (@crs_id,@crs_name,@crs_description,@crs_duration)
GO
/****** Object:  StoredProcedure [dbo].[SP_Insert_Exam]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Insert_Exam] (@examId int , @examType nvarchar(MAX),@nMCQ int,@nTF int)
as
	INSERT INTO Exam (ex_id , ex_type , no_mcq , no_tf) VALUES (@examId , @examType , @nMCQ , @nTF);
GO
/****** Object:  StoredProcedure [dbo].[SP_Insert_Question]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Insert_Question]
(@q_id int , 
@question nvarchar(max),
@choice_1 nvarchar(max),
@choice_2 nvarchar(max),
@choice_3 nvarchar(max),
@choice_4 nvarchar(max),
@q_ans    nvarchar(max),
@q_score  float,
@crs_id int)
as 
if exists (select q_id from Question where q_id=@q_id)
select 'Duplicated ID'
else if not exists(select crs_id from Course where crs_id=@crs_id)
select 'course not found'
else
insert into Question values 
(@q_id, 
@question ,
@choice_1 ,
@choice_2 ,
@choice_3 ,
@choice_4 ,
@q_ans    ,
@q_score ,
@crs_id)
GO
/****** Object:  StoredProcedure [dbo].[SP_Insert_StdQuesAnswer]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Insert_StdQuesAnswer] (@studId int , @examId int , @quesId int, @Answer nvarchar(50))
as
	if EXISTS (SELECT Std_id, ex_id, q_id FROM Student_Exam_Question WHERE Std_id = @studId AND ex_id = @examId AND q_id = @quesId)
		SELECT 'invalid data'
	else
		INSERT INTO Student_Exam_Question VALUES (@studId , @examId , @quesId , @Answer);
GO
/****** Object:  StoredProcedure [dbo].[SP_Insert_Topic]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Insert_Topic] (@topicId int , @topicName nvarchar(50) , @courseId int)
as
	if EXISTS (SELECT topic_id FROM Topic WHERE topic_id = @topicId)
		SELECT 'Topic Already Exists'
	else if NOT EXISTS (SELECT crs_id FROM Course WHERE crs_id = @courseId)
		SELECT 'Course doesnot exist'
	else
		INSERT INTO Topic VALUES (@topicId , @topicName , @courseId);
GO
/****** Object:  StoredProcedure [dbo].[SP_Select_Course]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Select_Course]
as 
select * from Course
GO
/****** Object:  StoredProcedure [dbo].[SP_Select_Exam]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Select_Exam] (@examId int)
as
		if EXISTS (SELECT ex_id FROM Exam WHERE ex_id = @examId)
			SELECT ex_id as [Exam ID] , ex_type as [Exam Type]
			FROM Exam
			WHERE ex_id = @examId
	else 
		SELECT 'Exam doesnot exist';
GO
/****** Object:  StoredProcedure [dbo].[SP_Select_Question]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Select_Question]
as 
select * from Question
GO
/****** Object:  StoredProcedure [dbo].[SP_Select_StdQuesAnswer]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Select_StdQuesAnswer] (@studId int , @examId int , @quesId int)
as
	if EXISTS (SELECT Answer FROM Student_Exam_Question WHERE Std_id = @studId AND   ex_id = @examId AND   q_id = @quesId)
			SELECT Answer FROM Student_Exam_Question WHERE Std_id = @studId AND   ex_id = @examId AND   q_id = @quesId
	else 
			SELECT 'Answer doesnot exist';
GO
/****** Object:  StoredProcedure [dbo].[SP_Select_Topic]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Select_Topic] (@topicId int)
as
	if EXISTS (SELECT topic_id FROM Topic WHERE topic_id = @topicId)
		SELECT topic_name
		FROM Topic
		WHERE @topicId = topic_id
	else 
		SELECT 'Topic doesnot exist';
GO
/****** Object:  StoredProcedure [dbo].[SP_Show_Ins_Crs]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
				 
		  create Proc [dbo].[SP_Show_Ins_Crs] 
		  as 
		   select i.ins_name , c.crs_name
		   from Instructor i join Inst_Course ic
		   on i.ins_id =ic.ins_id join Course c
		   on c.crs_id = ic.crs_id
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_Course]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Update_Course](@crs_id int , @crs_name nvarchar(50), @crs_description nvarchar(100),@crs_duration int)
as
if not exists (select crs_id from Course where crs_id=@crs_id)
select 'ID is not found'
else
Begin
update Course 
set 
crs_id=@crs_id,
crs_name=@crs_name,
crs_description=@crs_description,
crs_duration=@crs_duration
where crs_id=@crs_id
End
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_Exam]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Update_Exam] (@examId int , @examType nvarchar(MAX), @nMCQ int, @nTF int)
as
	if EXISTS (SELECT ex_id FROM Exam WHERE ex_id = @examId)
		UPDATE Exam 
		SET ex_type = @examType ,
			no_mcq = @nMCQ ,
			no_tf  = @nTF
		WHERE ex_id = @examId
	else 
		SELECT 'Exam doesnot exist';
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_Ins_Crs]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE Proc [dbo].[SP_Update_Ins_Crs] @ins_id int , @crs_id int 
		  as 
		    update Inst_Course 
			set crs_id = @crs_id 
			where ins_id =@ins_id
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_Question]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Update_Question]
(@q_id int , 
@question nvarchar(max),
@choice_1 nvarchar(max),
@choice_2 nvarchar(max),
@choice_3 nvarchar(max),
@choice_4 nvarchar(max),
@q_ans    nvarchar(max),
@q_score  float,
@crs_id int)
as 
if not exists (select q_id from Question where q_id=@q_id)
select 'Question not found'
else if not exists(select crs_id from Course where crs_id=@crs_id)
select 'course not found'
else
begin
Update Question
set 
q_id=@q_id,
question= @question ,
choice_1= @choice_1 ,
choice_2= @choice_2 ,
choice_3= @choice_3 ,
choice_4= @choice_4 ,
q_ans= @q_ans    ,
q_score= @q_score ,
crs_id= @crs_id
where q_id=@q_id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_StdQuesAnswer]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Update_StdQuesAnswer] (@studId int , @examId int , @quesId int, @Answer nvarchar(50))
as
	if EXISTS (SELECT Std_id,ex_id,q_id FROM Student_Exam_Question WHERE Std_id = @studId AND   ex_id = @examId AND   q_id = @quesId)
		UPDATE Student_Exam_Question 
		SET Answer = @Answer
		WHERE Std_id = @studId AND   ex_id = @examId AND   q_id = @quesId
	else 
		SELECT 'Invalid data';
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_Topic]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Update_Topic] (@topicId int , @topicName nvarchar(50))
as
	if EXISTS (SELECT topic_id FROM Topic WHERE topic_id = @topicId)
		UPDATE TOPIC SET topic_name = @topicName WHERE topic_id = @topicId
	else 
		SELECT 'Topic doesnot exist';
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateInstructorData]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

    create Proc [dbo].[SP_UpdateInstructorData] @insid int , @instname nvarchar(50) , @inssal money , @insphone nvarchar(11)
	  as
	  update Instructor 
	  set ins_name=@instname , ins_salary=@inssal , @insphone=@insphone
	  where ins_id =@insid
GO
/****** Object:  StoredProcedure [dbo].[SubmitGrade]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SubmitGrade] ( @Std_id int , @ex_id int , @course_id int )
as
	DECLARE @grade int
	EXEC	@grade = CalcResult @Std_id , @ex_id
	EXEC    Update_Student_Exam_Course @Std_id, @course_id, @ex_id, @grade
GO
/****** Object:  StoredProcedure [dbo].[Update_Department]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Update_Department] @dept_id int, @dept_name varchar(50), @dept_loc varchar(50), @supervisor_id int
as
begin
	if exists(select dept_id from Department where dept_id = @dept_id)
		begin
			if exists (select ins_id from Instructor where ins_id = @supervisor_id)
				update Department set dept_id = @dept_id, dept_name = @dept_name, dept_loc = @dept_loc, instid = @supervisor_id;
			else
				select 'There is no instructor with id = ' + cast(@supervisor_id as varchar(10)) + ' to be supervisor!'; 
		end
	else
		select 'There is no department with id = ' + cast(@dept_id as varchar(10)) + ' to be updated!' ;
end
GO
/****** Object:  StoredProcedure [dbo].[Update_Student]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Update_Student] @std_id int, @std_Fname varchar(50), @std_Lname varchar(50), @std_address varchar(50), @std_phone varchar(11), @std_age int, @std_dpt int, @std_email varchar(50)
as
begin
	if exists (select Std_id from Student where Std_id = @std_id)
		update Student set Std_Fname = @std_Fname, Std_Lname = @std_Lname, Std_Address = @std_address, Std_Phone = @std_phone, age = @std_age, deptid = @std_dpt, email = @std_email
	else
		select 'There is no student with id = ' + cast(@std_id as varchar(10));
end
GO
/****** Object:  StoredProcedure [dbo].[Update_Student_Exam_Course]    Script Date: 24/03/2023 02:42:18 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Update_Student_Exam_Course] @std_id int, @crs_id int, @ex_id int, @grade int
as
begin
	if exists(select Std_id, crs_id, ex_id from Student_Exam_Course where Std_id = @std_id and crs_id = @crs_id and ex_id = @ex_id)
		update Student_Exam_Course set grade = @grade where Std_id = @std_id and crs_id = @crs_id and ex_id = @ex_id
	else
		select 'Invalid Data!';
end
GO

USE [Sample]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 9/15/2021 12:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 9/15/2021 12:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](500) NULL,
	[Department] [nvarchar](500) NULL,
	[DateOfJoining] [datetime] NULL,
	[PhotoFileName] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DepartmentId], [DepartmentName]) VALUES (1, N'IT')
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName]) VALUES (2, N'Support')
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName]) VALUES (3, N'HR')
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName]) VALUES (4, N'Finance')
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName]) VALUES (5, N'Security')
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName]) VALUES (6, N'Medical')
SET IDENTITY_INSERT [dbo].[Department] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [Department], [DateOfJoining], [PhotoFileName]) VALUES (1, N'Manoj kumar', N'Support', CAST(N'2021-09-11T00:00:00.000' AS DateTime), N'ali.jpg')
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [Department], [DateOfJoining], [PhotoFileName]) VALUES (2, N'Vineet', N'IT', CAST(N'2021-09-11T00:00:00.000' AS DateTime), N'ram.jpg')
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [Department], [DateOfJoining], [PhotoFileName]) VALUES (3, N'Mohit', N'HR', CAST(N'2021-09-11T00:00:00.000' AS DateTime), N'ali.jpg')
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [Department], [DateOfJoining], [PhotoFileName]) VALUES (4, N'Ram', N'Finance', CAST(N'2021-09-11T00:00:00.000' AS DateTime), N'ram.jpg')
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [Department], [DateOfJoining], [PhotoFileName]) VALUES (5, N'Ali Bhai', N'IT', CAST(N'2021-09-12T00:00:00.000' AS DateTime), N'ali.jpg')
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [Department], [DateOfJoining], [PhotoFileName]) VALUES (6, N'Divya', N'HR', CAST(N'2021-09-13T00:00:00.000' AS DateTime), N'anonymous.png')
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [Department], [DateOfJoining], [PhotoFileName]) VALUES (7, N'Narendra', N'Medical', CAST(N'2021-09-13T00:00:00.000' AS DateTime), N'ali.jpg')
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [Department], [DateOfJoining], [PhotoFileName]) VALUES (8, N'Amit', N'Finance', CAST(N'2021-09-13T00:00:00.000' AS DateTime), N'ali.jpg')
SET IDENTITY_INSERT [dbo].[Employee] OFF

USE [LearnDb]
GO
/****** Object:  Table [dbo].[tbl_Customer]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Customer](
	[Code] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[PhoneNo] [nvarchar](50) NULL,
	[CreditLimit] [int] IDENTITY(1,1) NOT NULL,
	[IsActive] [bit] NULL,
	[Statusname] [nvarchar](50) NULL,

 CONSTRAINT [PK_tbl_Customer] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 


/****** Object: Table [dbo].[tbl_Refreshtoken] ******/
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Refreshtoken](
[Userid] [nvarchar](50) NOT NULL,
[Tokenid] [nvarchar](50) NULL,
[Refreshtoken] [nvarchar](max) NULL,
CONSTRAINT [PK_tbl_Refreshtoken] PRIMARY KEY CLUSTERED 
(
[Userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_user]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_user](
	[Code] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,	
	[IsActive] [bit] NULL,
	[Role] [varchar](50) NULL,

 CONSTRAINT [PK_tbl_user] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
GO
SET IDENTITY_INSERT [dbo].[tbl_Customer] ON
GO

INSERT [dbo].[tbl_Customer] ([Code], [Name], [Email], [PhoneNo],  [CreditLimit], [IsActive], [Statusname]) VALUES (N'202201', N'Chris Mathew', N'chris@in.com', N'87789000', 3, 1, N'adminuser')
GO
INSERT [dbo].[tbl_Customer] ([Code], [Name], [Email], [PhoneNo],  [CreditLimit], [IsActive], [Statusname]) VALUES (N'202202', N'Ramesh Kumar',  NULL, 24, 1, NULL, NULL)
GO
INSERT [dbo].[tbl_refreshtoken] ([UserId], [TokenId], [RefreshToken]) VALUES (N'adminuser', N'643240810', N'jgZnSz6MUkzaLZSuMdADJdDMlLbnuwAQFQYLQLku4/A=')
GO
INSERT [dbo].[tbl_refreshtoken] ([UserId], [TokenId], [RefreshToken]) VALUES (N'demouser', N'525301419', N'dYojoMv8k0iZQg1vXglVyo69BnH+/v0GcHoUhzbw104=')
GO

INSERT [dbo].[tbl_User] ([Code], [UserName], [Email], [Phone],[Password],[IsActive],[Role]) VALUES (N'NIV2026', N'Admin',N'admin@gmail.com', N'09032455463', N'Admin2023',  1, N'admin')









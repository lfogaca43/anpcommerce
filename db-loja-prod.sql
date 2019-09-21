USE [db-loja-prod]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 9/21/2019 12:12:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](255) NOT NULL,
	[Description] [text] NOT NULL,
	[Picture] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[Product]    Script Date: 9/21/2019 12:12:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Category] [varchar](255) NOT NULL,
	[Description] [text] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NULL,
	[Picture] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 
GO
INSERT [dbo].[Banner] ([Id], [Title], [Description], [Picture]) VALUES (2, N'Sapatênis Mood Classic Masculino', N'Ideal para combinações formais e clássico, esse sapatênis masculino da Mood é feito em couro sintético para maior elegância e mais ilhós para melhor ajuste aos pés no seu dia a dia.

', N'banner-1.png')
GO
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([Id], [Name], [Category], [Description], [Price], [Discount], [Picture]) VALUES (1, N'Faded SkyBlu Denim Jeans
', N'Household', N'Beryl Cook is one of Britain’s most talented and amusing artists .Beryl’s pictures feature women of all shapes and sizes enjoying themselves .Born between the two world wars, Beryl Cook eventually left Kendrick School in Reading at the age of 15, where she went to secretarial school and then into an insurance office. After moving to London and then Hampton, she eventually married her next door neighbour from Reading, John Cook. He was an officer in the Merchant Navy and after he left the sea in 1956, they bought a pub for a year before John took a job in Southern Rhodesia with a motor company. Beryl bought their young son a box of watercolours, and when showing him how to use it, she decided that she herself quite enjoyed painting. John subsequently bought her a child’s painting set for her birthday and it was with this that she produced her first significant work, a half-length portrait of a dark-skinned lady with a vacant expression and large drooping breasts. It was aptly named ‘Hangover’ by Beryl’s husband and

It is often frustrating to attempt to plan meals that are designed for one. Despite this fact, we are seeing more and more recipe books and Internet websites that are dedicated to the act of cooking for one. Divorce and the death of spouses or grown children leaving for college are all reasons that someone accustomed to cooking for more than one would suddenly need to learn how to adjust all the cooking practices utilized before into a streamlined plan of cooking that is more efficient for one person creating less', CAST(149.99 AS Decimal(18, 2)), NULL, N's-p1.jpg')
GO
INSERT [dbo].[Product] ([Id], [Name], [Category], [Description], [Price], [Discount], [Picture]) VALUES (4, N'ADDIDAS NEW HAMMER SOLE FOR SPORTS PERSON', N'Tenis', N'', CAST(100.00 AS Decimal(18, 2)), NULL, N'p1.jpg')
GO
INSERT [dbo].[Product] ([Id], [Name], [Category], [Description], [Price], [Discount], [Picture]) VALUES (5, N'ADDIDAS NEW HAMMER SOLE FOR SPORTS PERSON', N'Tenis', N'', CAST(100.00 AS Decimal(18, 2)), NULL, N'p1.jpg')
GO
INSERT [dbo].[Product] ([Id], [Name], [Category], [Description], [Price], [Discount], [Picture]) VALUES (6, N'ADDIDAS NEW HAMMER SOLE FOR SPORTS PERSON', N'Tenis', N'', CAST(100.00 AS Decimal(18, 2)), NULL, N'p2.jpg')
GO
INSERT [dbo].[Product] ([Id], [Name], [Category], [Description], [Price], [Discount], [Picture]) VALUES (7, N'ADDIDAS NEW HAMMER SOLE FOR SPORTS PERSON', N'Tenis', N'', CAST(100.00 AS Decimal(18, 2)), NULL, N'p3.jpg')
GO
INSERT [dbo].[Product] ([Id], [Name], [Category], [Description], [Price], [Discount], [Picture]) VALUES (8, N'ADDIDAS NEW HAMMER SOLE FOR SPORTS PERSON', N'Tenis', N'', CAST(100.00 AS Decimal(18, 2)), NULL, N'p4.jpg')
GO
INSERT [dbo].[Product] ([Id], [Name], [Category], [Description], [Price], [Discount], [Picture]) VALUES (9, N'ADDIDAS NEW HAMMER SOLE FOR SPORTS PERSON', N'Tenis', N'', CAST(100.00 AS Decimal(18, 2)), NULL, N'p5.jpg')
GO
INSERT [dbo].[Product] ([Id], [Name], [Category], [Description], [Price], [Discount], [Picture]) VALUES (10, N'ADDIDAS NEW HAMMER SOLE FOR SPORTS PERSON', N'Tenis', N'', CAST(100.00 AS Decimal(18, 2)), NULL, N'p6.jpg')
GO
INSERT [dbo].[Product] ([Id], [Name], [Category], [Description], [Price], [Discount], [Picture]) VALUES (11, N'ADDIDAS NEW HAMMER SOLE FOR SPORTS PERSON', N'Tenis', N'', CAST(100.00 AS Decimal(18, 2)), NULL, N'p7.jpg')
GO
INSERT [dbo].[Product] ([Id], [Name], [Category], [Description], [Price], [Discount], [Picture]) VALUES (12, N'ADDIDAS NEW HAMMER SOLE FOR SPORTS PERSON', N'Tenis', N'', CAST(100.00 AS Decimal(18, 2)), NULL, N'p8.jpg')
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO

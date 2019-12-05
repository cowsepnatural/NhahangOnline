CREATE DATABASE NhahangOnline
GO
USE [NhahangOnline]
GO
/****** Object:  Table [dbo].[Danhmuc]    Script Date: 14/11/2019 8:46:34 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Danhmuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[img] [nvarchar](250) NULL,
	[meta] [nvarchar](max) NULL,
	[hide] [bit] NULL,
	[tieude] [nvarchar](150) NULL,
	[name] [nvarchar](250) NULL,
 CONSTRAINT [PK_Danhmuc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Monan]    Script Date: 14/11/2019 8:46:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Monan](
	[mamonan] [int] IDENTITY(1,1) NOT NULL,
	[ID] [int] NULL,
	[order] [int] NULL,
	[tieude] [nvarchar](250) NULL,
	[meta] [nvarchar](max) NULL,
	[img] [nvarchar](150) NULL,
 CONSTRAINT [PK_Monan] PRIMARY KEY CLUSTERED 
(
	[mamonan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhanvien]    Script Date: 14/11/2019 8:46:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhanvien](
	[manhanvien] [varchar](50) NOT NULL,
	[maquanly] [varchar](50) NULL,
	[ten] [nvarchar](150) NULL,
	[chucvu] [nvarchar](250) NULL,
 CONSTRAINT [PK_Nhanvien] PRIMARY KEY CLUSTERED 
(
	[manhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quanly]    Script Date: 14/11/2019 8:46:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quanly](
	[maquanly] [varchar](50) NOT NULL,
	[ten] [nvarchar](150) NULL,
	[khuquanly] [nvarchar](250) NULL,
 CONSTRAINT [PK_Quanly] PRIMARY KEY CLUSTERED 
(
	[maquanly] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thucuong]    Script Date: 14/11/2019 8:46:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thucuong](
	[madouong] [int] IDENTITY(1,1) NOT NULL,
	[meta] [nvarchar](max) NULL,
	[img] [nvarchar](150) NULL,
	[price] [float] NULL,
	[tieude] [nvarchar](150) NULL,
	[order] [int] NULL,
	[ID] [int] NULL,
 CONSTRAINT [PK_Thucuong] PRIMARY KEY CLUSTERED 
(
	[madouong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Danhmuc] ON 

INSERT [dbo].[Danhmuc] ([ID], [img], [meta], [hide], [tieude], [name]) VALUES (1, N'bg_1.jpg', NULL, 1, N'Trái Cây Tươi Ngon', NULL)
INSERT [dbo].[Danhmuc] ([ID], [img], [meta], [hide], [tieude], [name]) VALUES (2, N'bg_2.jpg', NULL, 1, N'100% Thực Phẩm Hữu Cơ', NULL)
SET IDENTITY_INSERT [dbo].[Danhmuc] OFF
SET IDENTITY_INSERT [dbo].[Monan] ON 

INSERT [dbo].[Monan] ([mamonan], [ID], [order], [tieude], [meta], [img]) VALUES (1, 1, NULL, N'Cơm Tấm Sườn', NULL, N'1.jpg')
INSERT [dbo].[Monan] ([mamonan], [ID], [order], [tieude], [meta], [img]) VALUES (2, 1, NULL, N'Sườn Non Ram', NULL, N'2.jpg')
INSERT [dbo].[Monan] ([mamonan], [ID], [order], [tieude], [meta], [img]) VALUES (3, 2, NULL, N'Bún Bò Huế', NULL, N'3.jpg')
INSERT [dbo].[Monan] ([mamonan], [ID], [order], [tieude], [meta], [img]) VALUES (4, 2, NULL, N'Tôm Xào Hoàng Kim', NULL, N'4.jpg')
SET IDENTITY_INSERT [dbo].[Monan] OFF
SET IDENTITY_INSERT [dbo].[Thucuong] ON 

INSERT [dbo].[Thucuong] ([madouong], [meta], [img], [price], [tieude], [order], [ID]) VALUES (1, NULL, N'1.jpg', NULL, N'Soda Táo ', NULL, 1)
INSERT [dbo].[Thucuong] ([madouong], [meta], [img], [price], [tieude], [order], [ID]) VALUES (2, NULL, N'2.jpg', NULL, N'Sinh Tố Trái cây', NULL, NULL)
INSERT [dbo].[Thucuong] ([madouong], [meta], [img], [price], [tieude], [order], [ID]) VALUES (3, NULL, N'3.jpg', NULL, N'Kem 6 Tầng', NULL, NULL)
INSERT [dbo].[Thucuong] ([madouong], [meta], [img], [price], [tieude], [order], [ID]) VALUES (4, NULL, N'4.jpg', NULL, N'Sinh Tố Dâu', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Thucuong] OFF
ALTER TABLE [dbo].[Monan]  WITH CHECK ADD  CONSTRAINT [FK_Monan_Danhmuc] FOREIGN KEY([ID])
REFERENCES [dbo].[Danhmuc] ([ID])
GO
ALTER TABLE [dbo].[Monan] CHECK CONSTRAINT [FK_Monan_Danhmuc]
GO
ALTER TABLE [dbo].[Nhanvien]  WITH CHECK ADD  CONSTRAINT [FK_Nhanvien_Quanly] FOREIGN KEY([maquanly])
REFERENCES [dbo].[Quanly] ([maquanly])
GO
ALTER TABLE [dbo].[Nhanvien] CHECK CONSTRAINT [FK_Nhanvien_Quanly]
GO
ALTER TABLE [dbo].[Thucuong]  WITH CHECK ADD  CONSTRAINT [FK_Thucuong_Danhmuc] FOREIGN KEY([ID])
REFERENCES [dbo].[Danhmuc] ([ID])
GO
ALTER TABLE [dbo].[Thucuong] CHECK CONSTRAINT [FK_Thucuong_Danhmuc]
GO

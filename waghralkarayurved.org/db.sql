
CREATE TABLE [dbo].[Photogallary](
	[PhotoId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](300) NOT NULL,
	[Photo1] [nvarchar](50) NOT NULL,
	[Photo2] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Photogallary] PRIMARY KEY CLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mytable]    Script Date: 12/13/2016 02:37:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mytable](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Email] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Mobile] [nvarchar](25) NULL,
	[Date] [nvarchar](20) NULL,
	[Gender] [nvarchar](10) NULL,
	[Message] [nvarchar](500) NULL,
 CONSTRAINT [PK__mytable__A245A83007F6335A] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 12/13/2016 02:37:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[ActivityId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](300) NOT NULL,
	[Details] [nvarchar](max) NOT NULL,
	[Image1] [nvarchar](50) NOT NULL,
	[Image2] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Date] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Award]    Script Date: 12/13/2016 02:37:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Award](
	[ActivityId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](300) NOT NULL,
	[Details] [nvarchar](max) NOT NULL,
	[Image1] [nvarchar](50) NOT NULL,
	[Image2] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Date] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Award] PRIMARY KEY CLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 12/13/2016 02:37:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[ActivityId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](300) NOT NULL,
	[Details] [nvarchar](max) NOT NULL,
	[Image1] [nvarchar](50) NOT NULL,
	[Image2] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Date] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Videogallery]    Script Date: 12/13/2016 02:37:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videogallery](
	[VideoId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](300) NOT NULL,
	[UTubeurl] [nvarchar](500) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Videogallery] PRIMARY KEY CLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SPVideogallery]    Script Date: 12/13/2016 02:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPVideogallery](@Title nvarchar(300),@UTubeurl nvarchar(50), @Type nvarchar (50),@Count int output)
AS
select @Count=Count(*)from Videogallery
where Title=@Title
if @Count=1
BEGIN
set @Count=-1
RETURN	
END
insert into Videogallery(Title,UTubeurl,Type)
values (@Title,@UTubeurl,@Type)
set @Count=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[SPPhotogallary]    Script Date: 12/13/2016 02:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPPhotogallary](@Title nvarchar(300),@Photo1 nvarchar(50),@Photo2 nvarchar (50), @Type nvarchar (50),@Count int output)
AS
select @Count=Count(*)from Photogallary
where Title=@Title
if @Count=1
BEGIN
set @Count =-1
RETURN	
END
insert into Photogallary(Title,Photo1,Photo2,Type)
values(@Title,@Photo1,@Photo2,@Type)
set @Count=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[SPBlog]    Script Date: 12/13/2016 02:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPBlog](@Title nvarchar(300),@Details nvarchar(max),@Image1 nvarchar(50),@Image2 nvarchar(50), @Type nvarchar(50),@Date nvarchar(50), @Count int output)
AS
select @Count=Count(*)from Activity
where Title=@Title
if @Count=1
BEGIN
set @Count=1
RETURN
END
insert into Activity(Title,Details,Image1,Image2, Type,Date)
values (@Title,@Details,@Image1,@Image2, @Type,@Date)
set @Count=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[SPAward]    Script Date: 12/13/2016 02:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPAward](@Title nvarchar(300),@Details nvarchar(max),@Image1 nvarchar(50),@Image2 nvarchar(50), @Type nvarchar(50),@Date nvarchar(50), @Count int output)
AS
select @Count=Count(*)from Activity
where Title=@Title
if @Count=1
BEGIN
set @Count=1
RETURN
END
insert into Activity(Title,Details,Image1,Image2, Type,Date)
values (@Title,@Details,@Image1,@Image2, @Type,@Date)
set @Count=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[SPAppointment]    Script Date: 12/13/2016 02:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPAppointment](@Id int,@Name nvarchar(200),@Email nvarchar(50),@Date nvarchar(50),@Mobile nvarchar(12),@City nvarchar(50),@Gender nvarchar(8),@Message nvarchar(500),@Count int output)
AS
Select @Count=Count(*) From mytable Where Mobile=@Mobile 
if @Count=1
BEGIN
Set @Count=-1
RETURN
	
END
insert into mytable(Id,Name,Email,Date,Mobile,City,Gender,Message)
Values(@Id,@Name,@Email,@Date,@Mobile,@City,@Gender,@Message)
Set @Count=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[SPActivity]    Script Date: 12/13/2016 02:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPActivity](@Title nvarchar(300),@Details nvarchar(max),@Image1 nvarchar(50),@Image2 nvarchar(50), @Type nvarchar(50),@Date nvarchar(50), @Count int output)
AS
select @Count=Count(*)from Activity
where Title=@Title
if @Count=1
BEGIN
set @Count=1
RETURN
END
insert into Activity(Title,Details,Image1,Image2, Type,Date)
values (@Title,@Details,@Image1,@Image2, @Type,@Date)
set @Count=@@IDENTITY
GO


insert into mytable values(111,'Sachin Mahore','sachinmahore@gmail.com','10/10/2016','8600873002','amravati','Male','I want panchkarma full day treatment');
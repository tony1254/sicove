USE [master]
GO
/****** Object:  Database [sicove]    Script Date: 21/11/2014 08:02:11 a.m. ******/
CREATE DATABASE [sicove]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sicove', FILENAME = N'E:\Archivos de Programas\x64\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\sicove.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'sicove_log', FILENAME = N'E:\Archivos de Programas\x64\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\sicove_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [sicove] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sicove].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sicove] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sicove] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sicove] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sicove] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sicove] SET ARITHABORT OFF 
GO
ALTER DATABASE [sicove] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sicove] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [sicove] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sicove] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sicove] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sicove] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sicove] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sicove] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sicove] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sicove] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sicove] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sicove] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sicove] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sicove] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sicove] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sicove] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sicove] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sicove] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sicove] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [sicove] SET  MULTI_USER 
GO
ALTER DATABASE [sicove] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sicove] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sicove] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sicove] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [sicove]
GO
/****** Object:  StoredProcedure [dbo].[login]    Script Date: 21/11/2014 08:02:11 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[login]
	-- Add the parameters for the stored procedure here
	@user nvarchar(50), 
	@pass nvarchar(50), 
	@id_usuario bigint out,
	@nombre nvarchar(50) out,
	@rol nvarchar(50) out,
	@salida nvarchar(50) out
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @contraerror bigint

	select @salida = 'ok'
	-- revisa si esta el usuario y lo guarda en la variable
	select @id_usuario= [Id_usuario] from [dbo].[usuario]
	where @user=[unombre] 

	-- revisa si esta el usuario y contraseña lo guarda en la variable
	select @contraerror= [Id_usuario], @rol=[rol] from [dbo].[usuario]
	where @user=[unombre] and @pass=[contraseña]

	--revisa el nombre y de allarlo lo ingresa en la varialbe nombre
	select @nombre=[nombre]from [dbo].[direccionNegocio]
	where @id_usuario=[Id_usuario]

	if (@id_usuario is NULL)
	begin
	-- declare @salida nvarchar(50)
	select @salida = 'error1'
	end
	if (@contraerror is NULL)
	begin
	-- declare @salida nvarchar(50)
	select @salida = 'erro2'
	select @id_usuario = ''
	select @nombre = ''
	end
		if (@nombre is NULL)
	begin
	select @nombre = 'vacio'
	end

END


GO
/****** Object:  StoredProcedure [dbo].[mostarusuario]    Script Date: 21/11/2014 08:02:11 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[mostarusuario]
	-- Add the parameters for the stored procedure here
	@user nvarchar(50),  
		@salida nvarchar(50) out
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [Id_usuario]
      ,[unombre]
      ,[contraseña]
  FROM [dbo].[usuario]

END

GO
/****** Object:  StoredProcedure [dbo].[nuevodatref]    Script Date: 21/11/2014 08:02:11 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[nuevodatref]
	-- Add the parameters for the stored procedure here
	@idusuario bigint,  
	@dpi nvarchar(50),  
	@profecion nvarchar(50),  
	@domicilio nvarchar(50),  
	@telefono nvarchar(50),  
	@celular nvarchar(50),  
	@numerocontrato nvarchar(50),  
	@sueldo nvarchar(50),  
		@salida nvarchar(50) out
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
declare @pasa int
	SET NOCOUNT ON;
	
	select @pasa=[Id_usuario] from [dbo].[usuario]
	where @idusuario=[Id_usuario]
	if not(@pasa is null) 
	begin
    -- Insert statements for procedure here

INSERT INTO [dbo].[datoReferencia]
           ([Id_usuario]
           ,[dpi]
           ,[profesion]
           ,[domicilio]
           ,[telefono]
           ,[celular]
           ,[numeroContrato]
           ,[sueldo])
     VALUES
           (
		   @pasa
           ,@dpi
           ,@profecion
           ,@domicilio
           ,@telefono
           ,@celular
           ,@numerocontrato
           ,@sueldo
		   )
		end
	else 
		begin
		 select @salida = 'malo'
		end
		
END




GO
/****** Object:  StoredProcedure [dbo].[nuevodirneg]    Script Date: 21/11/2014 08:02:11 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 
CREATE PROCEDURE [dbo].[nuevodirneg]
	-- Add the parameters for the stored procedure here
	@idusuario bigint,  
	@nit nvarchar(50),  
	@nombre nvarchar(50),  
	@direccion nvarchar(50),  
		@salida nvarchar(50) out
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
declare @pasa int
select @salida = @idusuario

	SET NOCOUNT ON;
	
	select @pasa=[Id_usuario] from [dbo].[usuario]
	where @idusuario=[Id_usuario]
	if not(@pasa is null) 
	begin
    -- Insert statements for procedure here

INSERT INTO [dbo].[direccionNegocio]
           ([Id_usuario]
           ,[nit]
           ,[nombre]
           ,[direccion])
     VALUES
           (@pasa
           ,@nit
           ,@nombre
           ,@direccion
		   )
		end
	else 
		begin
		 select @salida = 'malo'
		end
		
END




GO
/****** Object:  StoredProcedure [dbo].[nuevousuario]    Script Date: 21/11/2014 08:02:11 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[nuevousuario]
	-- Add the parameters for the stored procedure here
	@user nvarchar(50),  
		@pass nvarchar(50),  
			@rol int,  
		@salida nvarchar(50) out
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
		 
declare @pasa int
	SET NOCOUNT ON;
	
	select @pasa=[Id_usuario] from [dbo].[usuario]
	where @user=[unombre]
	if (@pasa is null) 
	begin
    -- Insert statements for procedure here
INSERT INTO [dbo].[usuario]
           ([unombre]
           ,[contraseña]
           ,[rol])
     VALUES
         (
		  @user,
          @pass,
          @rol
		 )

		 select @salida = Max([Id_usuario]) from usuario
		 where @user=[unombre]

		end
	else 
		begin
		 select @salida = 'malo'
		end
		
END



GO
/****** Object:  Table [dbo].[datoReferencia]    Script Date: 21/11/2014 08:02:11 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datoReferencia](
	[Id_datRef] [bigint] IDENTITY(1,1) NOT NULL,
	[Id_usuario] [bigint] NULL,
	[dpi] [nvarchar](50) NULL,
	[profesion] [nvarchar](50) NULL,
	[domicilio] [nvarchar](50) NULL,
	[telefono] [nvarchar](50) NULL,
	[celular] [nvarchar](50) NULL,
	[numeroContrato] [nvarchar](50) NULL,
	[sueldo] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_datRef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[direccionNegocio]    Script Date: 21/11/2014 08:02:11 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direccionNegocio](
	[Id_dirNeg] [bigint] IDENTITY(1,1) NOT NULL,
	[Id_usuario] [bigint] NULL,
	[nit] [nvarchar](50) NULL,
	[nombre] [nvarchar](50) NULL,
	[direccion] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_dirNeg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[usuario]    Script Date: 21/11/2014 08:02:11 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[Id_usuario] [bigint] IDENTITY(1,1) NOT NULL,
	[unombre] [nvarchar](50) NOT NULL,
	[contraseña] [nvarchar](255) NOT NULL,
	[rol] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [sicove] SET  READ_WRITE 
GO

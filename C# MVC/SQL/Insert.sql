--CONSULTA DE REGISTROS
SELECT [Matricula]
      ,[Nombre]
      ,[Direccion]
      ,[Telefono]
  FROM [dbo].[Alumno]
GO


--CREACION DE REGISTROS
INSERT INTO [dbo].[Alumno]
           ([Nombre]
           ,[Direccion]
           ,[Telefono])
     VALUES
           ('Karla Gonzalez'
           ,'Fime virtual 2021'
           ,'81161585')
GO

CREATE PROCEDURE Alumno_Inserta(
@nombre varchar(50),
@direccion varchar(20), 
@telefono varchar(20)
AS
BEGIN 
	INSERT INTO [dbo].[Alumno]
           ([Nombre]
           ,[Direccion]
           ,[Telefono])
     VALUES
			(@nombre
			,@direccion
			,@telefono)
END


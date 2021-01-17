CREATE PROCEDURE Alumno_Inserta
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
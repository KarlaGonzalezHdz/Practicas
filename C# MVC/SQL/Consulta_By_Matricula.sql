CREATE PROCEDURE Consulta_By_Matricula
@Matricula int
AS
BEGIN
SELECT [Matricula]
      ,[Nombre]
      ,[Direccion]
      ,[Telefono]
      
  FROM [dbo].[Alumno]
  WHERE [Matricula] = @Matricula
END


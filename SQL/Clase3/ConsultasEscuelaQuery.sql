--TablaAlumno
select * from Alumno where Nombre Like '%O'

select *from Alumno
SELECT Ciudad + ' ' + GeneroId FROM Alumno
WHERE Ciudad = 'Nuevo Leon';

--Tabla Genero
select * from Genero
select * from Genero where Estatus LIKE '%0%';
select * from Genero where Genero Like '%o';

--Tabla Grupo
select * from Grupo
select * from Grupo where ClaveProfesor Like '[2001]%'

SELECT ClaveGrupo
FROM Grupo
WHERE GrupoId not BETWEEN '11' AND '25';

--Tabla Listas
select * from Listas
select * from Listas where Matricula Like '%34%'
select * from Listas where Matricula Like '1%'

--Tabla Materia
select * from Materia
select * from Materia where Descripcion Like '[Funciones]%'

SELECT Descripcion
FROM Materia
WHERE Descripcion not BETWEEN '11' AND '25';

--Tabla Profesor
select * from Profesor
select * from Profesor  where Nombre not LIKE 'F%'
select * from Profesor where ClaveProfesor LIKE '%0%'

--Tabla Salon
select * from Salon
select * from Salon where Descripcion LIKE '%o'
select * from Salon where ClaveSalon LIKE '[D]%'
-- Consultas de la base de datos Biblioteca

-- TABLA AUTOR
select * from Autor where Nombre IN ('John Green');
select * from Autor where Nacionalidad not IN ('Gran Bretaña');
select * from Autor;

-- TABLA ESTUDIANTE
select * from Estudiante where Direccion like '%a%';
select * from Estudiante where Nombre like '[M]%';
select * from Estudiante


--Tabla LibAut
select * from LibAut where IdLibro LIKE '%1%'
select * from LibAut where IdAutor NOT LIKE '%3%'
select * from LibAut


--Tabla Libro
select Titulo from Libro where Titulo like 'O_%'
select Editorial from Libro where Editorial not Like '%T%'
select * from Libro

--Tabla Prestamo
select * from Prestamo where IdLector LIKE '%2';
select * from Prestamo where IdLector NOT LIKE '%1%';
select * from Prestamo





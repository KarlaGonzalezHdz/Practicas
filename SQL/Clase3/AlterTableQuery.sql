Use Escuela

-- Agregar un campo a una tabla
ALTER TABLE Lista ADD horario datetime;

select * from lista

ALTER TABLE Alumno ADD Apellido_Paterno varchar (15), Apellido_Materno varchar (15);

select * from Alumno;


-- Modificar el tipo de dato de un campo
ALTER TABLE Lista ALTER COLUMN horario date;
ALTER TABLE Alumno ALTER COLUMN nombre varchar (25);


--Cambiar nombre de la columna o campo
sp_rename 'lista.horario', 'fecha', 'COLUMN';
select fecha from lista

--Cambiar nombre de la tabla
sp_rename 'Lista' , 'listas';

select * from listas;

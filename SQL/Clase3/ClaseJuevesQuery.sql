CREATE DATABASE clase_jueves;

use clase_jueves

create table libros(
	codigo int identity,
	titulo varchar(40),
	autor varchar(30) default 'Desconocido',
	codigoeditorial tinyint not null, 
	precio decimal (5,2))

create table editoriales(
	codigo tinyint identity,
	nombre varchar (20),
	primary key (codigo))

truncate table Editoriales
truncate table libros
SELECT * FROM Editoriales

insert into editoriales values ('Planeta');
insert into editoriales values ('Emece');
insert into editoriales values ('Siglos XXI');


insert into libros values('El aleph' , 'Borges' , 1, 20);
insert into libros values ('Martin Fierro', 'Jose Hernandez', 1,30);
insert into libros values ('Aprenda PHP', 'Mario Molina', 2, 50);
insert into libros values ('Java en 10 minutos', default , 4,45);

select * from editoriales;
select * from libros;

--Ejemplo 1
select titulo, nombre, autor
from editoriales as e 
full  join libros as l 
on codigoeditorial = e.codigo

--Ejemplo2

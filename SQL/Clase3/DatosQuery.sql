Insert into Genero (GeneroId, Genero, Estatus)
values (1, 'Masculino', 0)

select * from Genero

Insert into Salon
values('D200', 'Grupo 2 Vespertino',0),
	  ('D201', 'Grupo 2 Vespertino', 0)

select * from Salon

Insert into profesor
values('2001', 'Juan Perez', '1812181', 1, 'ddfs@gmail.com', 0);

select * from Profesor;

Insert into Materia
values('Mate2', 'Funciones y Fun' , 1);
select * from Materia

Insert into Alumno
values(1, 123467, 'Mario' , 'Almazon #345','San Bernabe', 'San Nicolas', 'Nuevo Leon', 'Mexico', 01, '22152151', 'alex@gmail.com', 'Tamaulipas', '1981-08-20', 1, 'Rocha' , 'Moreno');

select * from Alumno

Insert into Grupo
values(1, 201, 'D200', '2001', 'Mate2', 'Ene-Jun' , '2020-01-20', 1 )

select * from Grupo

Insert into listas (ListaId, ClaveGrupo, Matricula, Estatus)
values (1, 201, 123467, 1)

select * from Listas
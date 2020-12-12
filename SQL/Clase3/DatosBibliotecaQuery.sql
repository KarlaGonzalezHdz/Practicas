INSERT INTO autor
values(1,'Jane Austen', 'Gran Bretaña')
INSERT INTO autor
values(2,'John Green', 'Estadounidense')
INSERT INTO autor
values(3,'Nicholas Sparks', 'Estadounidense')
select * from autor

INSERT INTO Estudiante
values(1, 50 , 'Alex Perez', 'Tamarindo #230 Apodaca, NL', 'ITS', 22),
	  (2, 60, 'Maria Rosales', ' Girasoles #420 Escobedo NL' , 'IAS', 21),
	  (3, 80, 'Marisol Gonzalez', 'Portugal #290 Apodaca NL', 'IAS', 23);
select * from estudiante

INSERT INTO Libro
values(1, 'Orgullo Prejuicio', 'Thomas Egerton', 'Romance'),
	  (2, 'Bajo la misma estrella', 'Nube de tinta', 'Romance'),
	  (3, 'Un camino para recordar', 'Roca Bolsillo', 'Romance')

select * from Libro

INSERT INTO LibAut
values(1,1),
	  (2,2),
	  (3,3)
select * from LibAut

INSERT INTO Prestamo
values(3,1, '2020-08-20', '2020-09-20',1,1),
	  (2,2, '2020-08-21' , '2020-10-21' ,1,1),
	  (1,3, '2020-08-22' , '2020-11-21',1,1)
select * from Prestamo


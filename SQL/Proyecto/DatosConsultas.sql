-- INFORMACIÓN: 

-- PROYECTO FINAL - MÓDULO 5 - SQL 
-- 8076168 KARLA JOSEFINA GONZÁLEZ HERNÁNDEZ 
-- BASE DE DATOS CINE - REGISTROS / CONSULTAS.

----------------------------------------------------------------------------------------------------------

USE Cine;
-----------------------------------------------------------------------------------------------------------------

-- 1. INSERTAR DATOS EN LA TABLA EMPLEADOS.
INSERT INTO Empleado VALUES ('Juan' , 'Perez' , 'juanp@gmail.com', 'Taquilla' , '2018-05-25', 25);
INSERT INTO Empleado VALUES ('Alejandra' , 'Lozano' , 'alel@gmail.com', 'Cafeteria' , '2018-06-28', 21);
INSERT INTO Empleado VALUES ('Manuel' , 'Gonzalez' , 'manuelgzz@gmail.com', 'Limpieza' , '2017-04-24', 22);
INSERT INTO Empleado VALUES ('Perla' , 'Gomez' , 'perlagomez@gmail.com', 'Taquilla' , '2016-02-22', 23);
INSERT INTO Empleado VALUES ('Patricio' , 'Razo' , 'patorazo@gmail.com', 'Snack' , '2017-03-23', 25);
INSERT INTO Empleado VALUES ('Oziel' , 'Hernandez' , 'ozielhdz@gmail.com', 'Salas' , '2019-06-20', 18);
INSERT INTO Empleado VALUES ('Ernesto' , 'Cazares' , 'netocs@gmail.com', 'Taquilla' , '2019-07-29', 27);
INSERT INTO Empleado VALUES ('Andres' , 'Bustamante' , 'andresb@gmail.com', 'Snack' , '2018-10-25', 19);
INSERT INTO Empleado VALUES ('Karla' , 'Gonzalez' , 'karlagh@gmail.com', 'Cafeteria' , '2019-03-15', 18);
INSERT INTO Empleado VALUES ('Arleth' , 'Florencia' , 'arlethflo@gmail.com', 'Snack' , '2019-04-02', 19);

SELECT * FROM Empleado;

--2. INSERTAR DATOS EN LA TABLA CLIENTE
INSERT INTO Cliente VALUES ('Pedro' , 'Hernandez' , 0);
INSERT INTO Cliente VALUES ('Tania' , 'Fuentes' , 1);
INSERT INTO Cliente VALUES ('Lizeth' , 'Gonzalez' , 1);
INSERT INTO Cliente VALUES ('Margarita' ,'Velazquez' , 1);
INSERT INTO Cliente VALUES ('Martha' , 'Gomez' , 1);
INSERT INTO Cliente VALUES ('Oziel' , 'Pedroza' , 0);
INSERT INTO Cliente VALUES ('Karla' , 'Gonzalez' , 1);
INSERT INTO Cliente VALUES ('Pablo' , 'Garza' , 1);
INSERT INTO Cliente VALUES ('Juan Pablo' , 'Villanueva' , 0);

SELECT * FROM Cliente;

-- 3. INSERTAR DATOS EN LA TABLA DISPONIBILIDAD

--PELICULAS
INSERT INTO Disponibilidad VALUES ('Activo');
INSERT INTO Disponibilidad VALUES ('Inactivo');
INSERT INTO Disponibilidad VALUES ('Reprogramada');
--ASIENTOS
INSERT INTO Disponibilidad VALUES ('Ocupado');
INSERT INTO Disponibilidad VALUES ('Libre');
--TAQUILLA
INSERT INTO Disponibilidad VALUES ('Realizado');
INSERT INTO Disponibilidad VALUES ('Cancelada');
--SALAS
INSERT INTO Disponibilidad VALUES ('LLeno');
INSERT INTO Disponibilidad VALUES ('Vacio');
INSERT INTO Disponibilidad VALUES ('Rentada');

SELECT * FROM Disponibilidad;

-- 4. INSERTAR DATOS EN LA TABLA PELICULA
INSERT INTO Pelicula VALUES (1 , 'El origen', '02:30:00',  'Ciencia ficcion' , 'B15' , 'Christopher Nolan', 'Dom Cobb es un experto en el arte de  los secretos');
INSERT INTO Pelicula VALUES (2 , 'Avatar', '02:30:00',  'Ciencia ficcion' , 'B15' , 'James Cameron', 'ex-marine condenado a vivir en una silla de ruedas');
INSERT INTO Pelicula VALUES (3 , 'Guason', '02:30:00',  'Drama' , 'C' , 'Todd Phillips', 'Actúa de payaso en trabajos ,tiene problemas');
INSERT INTO Pelicula VALUES (3 , 'Batman', '02:30:00',  'Thriller' , 'A' , 'Christopher Nolan', 'Regresa para continuar su guerra contra el crimen');
INSERT INTO Pelicula VALUES (2 , 'Bastardos som gloria', '02:30:00',  'Comedia' , 'B' , 'Quentin Tarantino', 'Segunda Guerra Mundial');
INSERT INTO Pelicula VALUES (1 , 'Up , una aventura de altura', '02:30:00',  'Aventura' , 'A' , 'Pete Docter', 'es un viudo vendedor de globos de 78 años');
INSERT INTO Pelicula VALUES (3 , 'Avengers: Infinity war', '02:30:00',  'Accion' , 'A' , 'Anthony Russo', 'Thanos  la promesa de arrasar con todo');
INSERT INTO Pelicula VALUES (2 , 'Ratatouille', '02:30:00',  'Animacion' , 'A' , 'Brad Bird', 'Remy una  rata que sueña con convertirse en chef');
INSERT INTO Pelicula VALUES (1 , 'Solo un sueño', '02:30:00',  'Romance' , 'B' , 'Sam Mendes', 'se conocen en una fiesta y se enamoran');
INSERT INTO Pelicula VALUES (1 , 'WALL-E', '02:30:00',  'Aventura' , 'A ' , 'Andrew Stanton', ' el pequeño robot WALL•E ');

SELECT * FROM PELICULA

--5. INSERTAR DATOS  EN LA TABLA BOLETOS
INSERT INTO Boleto VALUES ('Infantil' , 40 , 'Boleto para menores de edad');
INSERT INTO Boleto VALUES ('Adulto' , 80 , 'Boleto para adulto');
INSERT INTO Boleto VALUES ('TerceraEdad' , 60 , 'Boleto para tercera edad');
INSERT INTO Boleto VALUES ('Estudiante' , 45 , 'Boleto para estudiantes');
INSERT INTO Boleto VALUES ('Trabajadores', 0, 'Boleto exclusivo trabajadores');

SELECT * FROM Boleto;



--6. INSERTAR DATOS EN LA TABLA MEMBRESIA
INSERT INTO Membresia VALUES (2, 'Standard Sencilla');
INSERT INTO Membresia VALUES (3, 'Standard Doble');
INSERT INTO Membresia VALUES (2, 'Premium Sencilla');
INSERT INTO Membresia VALUES (7, 'Premium Doble');
INSERT INTO Membresia VALUES (5, 'VIP Sencilla');
INSERT INTO Membresia VALUES (4, 'VIP Doble');

SELECT * FROM Membresia;

--7. INSERTAR DATOS EN LA TABLA 
INSERT INTO Sala VALUES (8, 'A1', 50);
INSERT INTO Sala VALUES (9, 'A2', 60);
INSERT INTO Sala VALUES (10, 'A3', 40);
INSERT INTO Sala VALUES (8, 'B1', 30);
INSERT INTO Sala VALUES (9, 'B2', 50);
INSERT INTO Sala VALUES (9, 'B3', 60);
INSERT INTO Sala VALUES (10, 'C1', 40);
INSERT INTO Sala VALUES (10, 'C2', 20);
INSERT INTO Sala VALUES (8, 'C3', 30);
INSERT INTO Sala VALUES (8, 'C4', 50);

SELECT * FROM Sala;

--8. INSERTAT DATOS EN LA TABLA ASIENTOS
INSERT INTO Asientos VALUES (4, 1, 'A1');
INSERT INTO Asientos VALUES (5, 4, 'A2');
INSERT INTO Asientos VALUES (5, 6, 'A3');
INSERT INTO Asientos VALUES (4, 5, 'A4');
INSERT INTO Asientos VALUES (5, 1, 'A5');
INSERT INTO Asientos VALUES (5, 4, 'A9');
INSERT INTO Asientos VALUES (5, 5, 'A8');
INSERT INTO Asientos VALUES (4, 6, 'B5');
INSERT INTO Asientos VALUES (4, 1, 'B1');
INSERT INTO Asientos VALUES (5, 5, 'B2');
SELECT * FROM Asientos;

--9. INSERTAR DATOS EN LA TABLA CARTELERA
INSERT INTO Cartelera VALUES(11, 3, 1, '08:30:00', '10:30:00');
INSERT INTO Cartelera VALUES(1, 2, 2, '02:30:00', '04:30:00');
INSERT INTO Cartelera VALUES(12, 1, 2, '12:30:00', '02:30:00');
INSERT INTO Cartelera VALUES(2, 4, 1, '06:30:00', '08:30:00');
INSERT INTO Cartelera VALUES(8, 5, 1, '08:30:00', '10:30:00');
INSERT INTO Cartelera VALUES(3, 6, 1, '02:30:00', '04:30:00');
INSERT INTO Cartelera VALUES(13, 9, 1, '12:30:00', '02:30:00');
INSERT INTO Cartelera VALUES(4, 8, 1, '08:30:00', '10:30:00');
INSERT INTO Cartelera VALUES(6, 10, 2, '12:30:00', '02:30:00');
INSERT INTO Cartelera VALUES(5, 7, 1, '08:30:00', '10:30:00');



SELECT * FROM Boleto;
--10. INSERTAR DATOS EN LA TABLA TAQUILLA
INSERT INTO Taquilla VALUES (1, 2,1, 4 , '2019-05-20', 3, 0, 0,0,3, 135 );
INSERT INTO Taquilla VALUES (2, 4,4, 1 , '2019-05-20', 0, 5, 1,0,0, 280 );
INSERT INTO Taquilla VALUES (4,5,7, 2 , '2019-05-20', 0, 0, 1,0,0, 80 );
INSERT INTO Taquilla VALUES (3, 6,4, 3 , '2019-05-20', 0, 0, 0,3,3, 180 );
INSERT INTO Taquilla VALUES (9, 8,7, 4 , '2019-05-20', 3, 0, 0,0,3, 135 );
INSERT INTO Taquilla VALUES (5, 8,1, 2 , '2019-05-20', 0, 5, 2,0,7, 360 );
INSERT INTO Taquilla VALUES (9, 9,4, 1 , '2019-05-20', 0, 2, 1,0,3, 160 );
INSERT INTO Taquilla VALUES (7, 10,7, 3 , '2019-05-20', 0, 0, 0,3,3, 180 );
INSERT INTO Taquilla VALUES (6, 12,1, 1 , '2019-05-20', 0, 2, 0,0,2, 80 );
SELECT * FROM Taquilla;

------------------------------------------------------------------------------------------

--CONSULTAS BASICAS 

SELECT IdEmpleado, Nombre , Apellido from Empleado where IdEmpleado BETWEEN '2' AND '7';

SELECT * From Empleado where Apellido IN ('Gonzalez');

SELECT * FROM Empleado where Email LIKE '[m]%';

SELECT IdCliente, Nombre , Apellido from Cliente where membresia IN ('1');

SELECT * FROM Pelicula where IdPelicula BETWEEN '4' AND '9';


-- CONSULTAS DOBLES

SELECT  Taquilla.* ,Empleado.IdEmpleado, Empleado.Nombre
from Taquilla
inner join Empleado on Taquilla.IdEmpleado = Empleado.IdEmpleado


SELECT Membresia.* , Cliente.Nombre, Cliente.Apellido
From Membresia
left join Cliente on Membresia.IdCliente = Cliente.IdCliente


SELECT   Pelicula.*,Cartelera.HoraFin, Cartelera.HoraFin
FROM Cartelera
right join Pelicula on Cartelera.IdPelicula = Pelicula.IdPelicula



CREATE FUNCTION f_fechaCadena
 (@fecha varchar(25))
  returns varchar(25)
  as
  begin
    declare @nombre varchar(25)
    set @nombre='Fecha inválida'   
    if (isdate(@fecha)=1)
    begin
      set @fecha=cast(@fecha as datetime)
      set @nombre=
      case datename(month,@fecha)
       when 'January' then 'Enero'
       when 'February' then 'Febrero'
       when 'March' then 'Marzo'
       when 'April' then 'Abril'
       when 'May' then 'Mayo'
       when 'June' then 'Junio'
       when 'July' then 'Julio'
       when 'August' then 'Agosto'
       when 'September' then 'Setiembre'
       when 'October' then 'Octubre'
       when 'November' then 'Noviembre'
       when 'December' then 'Diciembre'
      end--case
      set @nombre=rtrim(cast(datepart(day,@fecha) as char(2)))+' de '+@nombre
      set @nombre=@nombre+' de '+ rtrim(cast(datepart(year,@fecha)as char(4)))
    end--si es una fecha válida
    return @nombre
 end;

SELECT Nombre, Apellido, dbo.f_fechaCadena(FechaIngreso) as [Dia de ingreso] from Empleado;

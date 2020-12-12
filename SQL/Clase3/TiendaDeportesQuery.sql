-- CREACION BASE DE DATOS.
CREATE DATABASE TiendaDeportes;

use TiendaDeportes;

-- CREACION DE TABLAS

Create Table Marca(
IdMarca varchar (1) UNIQUE NOT NULL,
Marca varchar (20) NOT NULL,
ClaveMarca varchar (10) NOT NULL, 
CONSTRAINT IdMarca Primary Key Clustered
(IdMarca ASC) ON [PRIMARY])

Create Table Area(
IdArea varchar (1) UNIQUE NOT NULL,
NombreArea varchar (20) NOT NULL,
EmpleadoEncargado varchar(30) NOT NULL,
Lugar varchar (20) NOT NULL,
CONSTRAINT IdArea Primary Key Clustered
(IdArea ASC) ON [PRIMARY])

Create Table Cantidad(
IdCantidad varchar (1) UNIQUE NOT NULL,
CantidadArticulo int NOT NULL,
Disponible bit, 
CONSTRAINT IdCantidad Primary Key Clustered
(IdCantidad ASC) ON [PRIMARY])

Create Table Articulo(
IdArticulo varchar (1) UNIQUE NOT NULL,
IdMarca varchar (1) UNIQUE NOT NULL,
IdArea varchar (1) UNIQUE NOT NULL,
IdCantidad varchar (1) UNIQUE NOT NULL,
Nombre varchar (20) NOT NULL,
Precio int NOT NULL,
CONSTRAINT IdArticulo Primary Key Clustered
(IdArticulo ASC) ON [PRIMARY],
FOREIGN KEY (IdMarca) REFERENCES Marca(IdMarca),
FOREIGN KEY (IdArea) REFERENCES Area(IdArea),
FOREIGN KEY (IdCantidad) REFERENCES Cantidad(IdCantidad))


-- LLENADO DE DATOS
INSERT INTO MARCA
VALUES (1, 'Levis' , 'ABCD'),
       (2, 'Boot' ,  'EFGH'),
	   (3, 'Nike' ,  'IJKL'),
       (4, 'Plus' ,  'MNÑOP'),
	   (5, 'Clic' ,  'QRTSUV');
select * from Marca

INSERT INTO Area
VALUES (1, 'Area1', 'Jorge Perez', 'Seccion B'),
	   (2, 'Area2', 'Pedro Gonzalez', 'Seccion c'),
	   (3, 'Area3', 'Juan Lozano', 'Seccion D'),
	   (4, 'Area4', 'Paco Torres', 'Seccion E'),
	   (5, 'Area5', 'Pedro Velazquez', 'Seccion F');
select * From Area 
    

INSERT INTO Cantidad 
VALUES (1, 50 , 1),
	   (2, 520 , 0),
	   (3, 150 , 0),
	   (4, 520 , 1),
	   (5, 150 , 1);
select * from Cantidad

INSERT INTO Articulo
VALUES(1, 2, 3, 4, 'Tenis', 250.00),
	  (2, 1, 5, 1, 'Camisa', 250.00),
	  (3, 3, 4, 5, 'Short', 250.00),
	  (4, 5, 1, 2, 'Tachones', 250.00),
	  (5, 4, 2, 3, 'Tenis', 250.00);
select * from Articulo


--CONSULTAS DE TABLAS
select * from Articulo  WHERE Nombre not  BETWEEN '3' AND '5';
select * from Articulo where NOMBRE LIKE '%T%';
select * from Cantidad where Disponible NOT LIKE '%1%';
select * from Marca where Marca like '[BN]%';
select * from Area where EmpleadoEncargado IN ('Jorge Perez' , 'Juan Lozano');


CREATE DATABASE Empresa;

USE Empresa;

if (object_id('ciudades')) is not null
drop table ciudades
if (object_id('clientes')) is not null
drop table clientes

CREATE TABLE Ciudades(
	IdCiudad int IDENTITY (1,1) NOT NULL,
	Ciudad varchar(20) NOT NULL,
	Pais varchar(20) NOT NULL,
	CONSTRAINT pk_IdCiudad PRIMARY KEY (IdCiudad)
)

CREATE TABLE Clientes(
	IdCliente int IDENTITY (1,1) NOT NULL,
	IdCiudad int,
	Nombre varchar(20) NOT NULL,
	Apellido varchar(20) NOT NULL,
	CalleDomicilio varchar(20) NOT NULL,
	NumeroDomicilio int NOT NULL,
	ColoniaDomicilio varchar(20) NOT NULL,
	CONSTRAINT pk_IdCliente PRIMARY KEY (IdCliente),
	CONSTRAINT fk_IdCiudad FOREIGN KEY (IdCiudad) REFERENCES Ciudades(IdCiudad)
)


INSERT INTO Ciudades VALUES ('Mexicali' , 'México');
INSERT INTO Ciudades VALUES ('Saltillo' , 'México');
INSERT INTO Ciudades VALUES ('Torreón' , 'México');
INSERT INTO Ciudades VALUES ('Leon' , 'México');

SELECT * FROM Ciudades;

INSERT INTO Clientes VALUES (1, 'Juan', 'Perez', 'San Cristobal', 450 , 'Amaneceres');
INSERT INTO Clientes VALUES (4, 'Paola', 'Gonzalez', 'San Miguel', 425 , 'Pinos');
INSERT INTO Clientes VALUES (2, 'Pedro', 'Peralta', 'San Pedro', 320 , 'Fresnos');
INSERT INTO Clientes VALUES (3, 'Martin', 'Perez', 'San Miguel', 220 , 'Ebanos');
INSERT INTO Clientes VALUES (4, 'Margarita', 'Hernandez', 'San Jose', 150 , 'Pinos');

SELECT * FROM Clientes;


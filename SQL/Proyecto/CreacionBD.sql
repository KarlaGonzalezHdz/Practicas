-- INFORMACIÓN: 

-- PROYECTO FINAL - MÓDULO 5 - SQL 
-- 8076168 KARLA JOSEFINA GONZÁLEZ HERNÁNDEZ 
-- BASE DE DATOS CINE

-------------------------------------------------------------------

-- 1 Creación de base de datos.
CREATE DATABASE Cine;

USE Cine;

-------------------------------------------------------------------

-- 2 Creación de tablas.
CREATE TABLE Empleado(
	IdEmpleado INT IDENTITY (1,1) NOT NULL,
	Nombre VARCHAR (20) NOT NULL,
	Apellido VARCHAR(20) NOT NULL,
	Email VARCHAR(20) NOT NULL,
	Area VARCHAR(30) NOT NULL,
	FechaIngreso DATE NOT NULL,
	Edad INT NOT NULL,
	CONSTRAINT pk_IdEmpleado PRIMARY KEY (IdEmpleado)
)

CREATE TABLE Cliente(
	IdCliente INT IDENTITY (1,1) NOT NULL,
	Nombre VARCHAR (20) NOT NULL,
	Apellido VARCHAR(20) NOT NULL,
	membresia BIT NOT NULL, 
	CONSTRAINT pk_IdCliente PRIMARY KEY (IdCliente)
)

CREATE TABLE Disponibilidad(
	IdDisponibilidad INT IDENTITY (1,1) NOT NULL,
	Disponibilidad VARCHAR (20) NOT NULL,
	CONSTRAINT pk_IdDisponibilidad PRIMARY KEY (IdDisponibilidad)
)

CREATE TABLE Pelicula(
	IdPelicula INT IDENTITY (1,1) NOT NULL,
	IdDisponibilidad INT,
	Nombre VARCHAR (50) NOT NULL,
	Duracion TIME NOT NULL,
	Genero VARCHAR(30) NOT NULL,
	Clasificacion VARCHAR(30) NOT NULL,
	Autor VARCHAR(50) NOT NULL,
	Descripcion VARCHAR(50) NOT NULL,
	CONSTRAINT pk_IdPelicula PRIMARY KEY (IdPelicula),
	CONSTRAINT fk_IdDisponibilidad FOREIGN KEY (IdDisponibilidad) REFERENCES Disponibilidad(IdDisponibilidad)	
)

CREATE TABLE Boleto(
	IdBoleto INT IDENTITY (1,1) NOT NULL,
	TipoBoleto VARCHAR (20) NOT NULL,
	Precio INT NOT NULL,
	Descripcion VARCHAR (30) NOT NULL,
	CONSTRAINT pk_IdBoleto PRIMARY KEY (IdBoleto)
)

CREATE TABLE Membresia(
	IdMembresia INT IDENTITY (1,1) NOT NULL,
	IdCliente INT,
	TipoMembresia VARCHAR (50) NOT NULL,
	CONSTRAINT pk_IdMembresia PRIMARY KEY (IdMembresia),
	CONSTRAINT fk_IdCliente FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente)
)

CREATE TABLE Sala(
	IdSala INT IDENTITY (1,1) NOT NULL,
	IdDisponibilidad INT,
	NombreSala VARCHAR(10) NOT NULL,
	CantidadAsientos INT NOT NULL,
	CONSTRAINT pk_IdSala PRIMARY KEY (IdSala),
	CONSTRAINT fk_IdDisponibilidadS FOREIGN KEY (IdDisponibilidad) REFERENCES Disponibilidad(IdDisponibilidad)
)

CREATE TABLE Asientos(
	IdAsientos INT IDENTITY (1,1) NOT NULL,
	IdDisponibilidad INT, 
	IdSala INT,
	ClaveAsientos varchar(10) NOT NULL,
	CONSTRAINT pk_IdAsientos PRIMARY KEY (IdAsientos),
	CONSTRAINT fk_IdDisponibilidadA FOREIGN KEY (IdDisponibilidad) REFERENCES Disponibilidad(IdDisponibilidad),
	CONSTRAINT fk_IdSala FOREIGN KEY (IdSala) REFERENCES Sala(IdSala)
)

CREATE TABLE Cartelera(
	IdCartelera INT IDENTITY (1,1) NOT NULL,
	IdPelicula INT,
	IdSala INT,
	IdDisponibilidad INT,
	HoraInicio time NOT NULL,
	HoraFin time NOT NULL,
	CONSTRAINT pk_IdCartelera PRIMARY KEY (IdCartelera),
	CONSTRAINT fk_IdPelicula FOREIGN KEY (IdPelicula) REFERENCES Pelicula(IdPelicula),
	CONSTRAINT fk_IdSalaC FOREIGN KEY (IdSala) REFERENCES Sala(IdSala),
	CONSTRAINT fk_IdDisponibilidadC FOREIGN KEY (IdDisponibilidad) REFERENCES Disponibilidad(IdDisponibilidad)
)

CREATE TABLE Taquilla(
	IdTaquilla INT IDENTITY (1,1) NOT NULL,
	IdCliente INT,
	IdCartelera INT,
	IdEmpleado INT,
	IdBoleto INT,
	Fecha datetime NOT NULL,
	BoletoEstudiante INT NOT NULL,
	BoletoInfantil INT NOT NULL,
	BoletoAdulto INT NOT NULL,
	BoletoTerceraEdad INT NOT NULL,
	CantidadBoletos INT NOT NULL,
	Total INT NOT NULL,
	CONSTRAINT pk_IdTaquilla PRIMARY KEY (IdTaquilla),
	CONSTRAINT fk_IdClienteT FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente),
	CONSTRAINT fk_IdCarteleraT FOREIGN KEY (IdCartelera) REFERENCES Cartelera(IdCartelera),
	CONSTRAINT fk_IdEmpleado FOREIGN KEY (IdEmpleado) REFERENCES Empleado(IdEmpleado),
	CONSTRAINT fk_IdBoleto FOREIGN KEY (IdBoleto) REFERENCES Boleto(IdBoleto)
)

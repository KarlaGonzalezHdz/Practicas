CREATE DATABASE clase2

USE clase2

CREATE TABLE Alumno(
AlumnoId int,
Matricula int,
Nombre varchar(50),
Telefono varchar(20),
Estatus bit NULL)


-- Restricción Null

CREATE TABLE Alumno1(
	AlumnoId int NOT NULL,
	Matricula int NOT NULL,
	Nombre varchar (50) NOT NULL,
	Telefono varchar (20) NULL)

-- Restricción Unique

CREATE TABLE Alumno2(
	AlumnoId int UNIQUE NOT NULL,
	Matricula int UNIQUE NOT NULL,
	Nombre varchar (50) NOT NULL)


-- Restricción Check

CREATE TABLE Alumno3(
	AlumnoId int UNIQUE NOT NULL,
	Matricula int UNIQUE NOT NULL CHECK (Matricula > 10000),
	Nombre varchar (50) NOT NULL)

--	Restriccion Primary key
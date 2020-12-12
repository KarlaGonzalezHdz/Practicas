CREATE DATABASE Modulo5

use Modulo5

CREATE TABLE Alumnos(
	AlumnoId int NOT NULL Identity,
	Matricula int NOT NULL Primary key CHECK (Matricula > 10000),
	Nombre varchar (50) NOT NULL)

CREATE TABLE Lista(
	ListaId int	NOT NULL Primary Key,
	Matricula int UNIQUE NOT NULL CHECK (Matricula > 10000),
	FOREIGN KEY (Matricula) REFERENCES Alumnos(Matricula))
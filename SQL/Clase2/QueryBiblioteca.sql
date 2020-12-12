CREATE DATABASE Biblioteca 

Use Biblioteca 

CREATE TABLE Libro ( 
IdLibro Varchar (1) UNIQUE NOT NULL ,
Titulo Varchar (50) NOT NULL ,
Editorial Varchar (50) NOT NULL ,
Area Varchar (20) NOT NULL ,
CONSTRAINT PK_IdLibro Primary key clustered 
(IdLibro ASC) ON [PRIMARY]) 

CREATE TABLE Autor (
IdAutor Varchar (1) UNIQUE NOT NULL ,
Nombre Varchar (50) NOT NULL ,
Nacionalidad Varchar (50) NOT NULL ,
CONSTRAINT PK_IdAutor Primary Key Clustered 
(IdAutor ASC) ON [PRIMARY]) 

CREATE TABLE Estudiante (
IdLector Varchar (1) UNIQUE NOT NULL ,
CI int NOT NULL ,
Nombre Varchar (50) NOT NULL ,
Direccion Varchar (50) NOT NULL ,
Carrera Varchar (20) NOT NULL ,
Edad int NOT NULL , 
CONSTRAINT PK_IdLector Primary Key Clustered 
(IdLector ASC) ON [PRIMARY]) 

CREATE TABLE LibAut (
IdAutor Varchar (1) UNIQUE NOT NULL ,
IdLibro Varchar (1) UNIQUE NOT NULL ,
FOREIGN KEY (IdLibro) References Libro(IdLibro) ,
FOREIGN KEY (IdAutor) References Autor(IdAutor)) 

CREATE TABLE Prestamo (
IdLector Varchar (1) UNIQUE NOT NULL ,
IdLibro Varchar (1) UNIQUE NOT NULL ,
FechaPrestamo Date NOT NULL ,
FechaDevolucion Date NOT NULL ,
Devuelto Varchar (1) NOT NULL , 
Estatus bit , 
CONSTRAINT PK_FechaPrestamo Primary key clustered 
(FechaPrestamo ASC) ON [PRIMARY] , 
FOREIGN KEY (IdLibro) References Libro(IdLibro) ,
FOREIGN KEY (IdLector) REFERENCES Estudiante(IdLector)) 


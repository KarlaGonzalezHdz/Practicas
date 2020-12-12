CREATE DATABASE Escuela

use Escuela

CREATE TABLE Genero (
GeneroId Varchar(1) UNIQUE NOT NULL,
Genero Varchar (50) NOT NULL,
Estatus bit,
CONSTRAINT PK_GeneroId PRIMARY KEY CLUSTERED
(Generoid ASC) ON [PRIMARY])

CREATE TABLE Salon (
SalonId Int IDENTITY (1,1) NOT NULL,
ClaveSalon Varchar(20) NOT NULL,
Descripcion Varchar(50) NULL,
Estatus bit,
CONSTRAINT PK_ClaveSalon PRIMARY KEY CLUSTERED
(ClaveSalon ASC) ON [PRIMARY])

CREATE TABLE Profesor (
ProfesorId Int IDENTITY (1,1) NOT NULL,
ClaveProfesor Varchar(20) NOT NULL,
Nombre Varchar(50) NOT NULL,
Telefono Varchar(20) NULL,
GeneroId Varchar(1),
CorreoElectronico Varchar (50) NULL,
Estatus bit,
CONSTRAINT PK_ClaveProfesor PRIMARY KEY CLUSTERED
(ClaveProfesor ASC) ON [PRIMARY],
FOREIGN KEY (GeneroId) REFERENCES Genero(GeneroId))

CREATE TABLE Materia (
MateriaId Int IDENTITY (1,1) NOT NULL,
ClaveMateria Varchar(20) NOT NULL,
Descripcion Varchar(20) NULL,
Estatus bit,
CONSTRAINT PK_ClaveMateria PRIMARY KEY CLUSTERED
(ClaveMateria ASC) ON [PRIMARY])

CREATE TABLE Alumno (
AlumnoId Int UNIQUE NOT NULL,
Matricula int UNIQUE NOT NULL CHECK (Matricula >10000),
Nombre Varchar(50) NOT NULL,
CalleYNumero varchar(50) NOT NULL,
Colonia Varchar(50) NOT NULL,
Ciudad Varchar(50) NOT NULL,
Estado Varchar(50) NOT NULL,
Pais Varchar(50) NOT NULL,
GeneroId Varchar(1) NOT NULL,
Telefono Varchar(20) NULL,
CorreoElectronico Varchar (50) NULL,
LugarNacimento Varchar (50) NULL,
FechaNacimento DATE NULL,
Estatus bit,
CONSTRAINT PK_Matricula PRIMARY KEY CLUSTERED
(Matricula ASC) ON [PRIMARY],
FOREIGN KEY (GeneroId) REFERENCES Genero(GeneroId))

CREATE TABLE Grupo(
GrupoId Int UNIQUE NOT NULL, 
ClaveGrupo Varchar(20) UNIQUE NOT NULL,
ClaveSalon Varchar(20) NOT NULL,
ClaveProfesor Varchar(20) NOT NULL,
ClaveMateria Varchar(20) NOT NULL,
Periodo Varchar(20) NOT NULL,
FechaInicio DateTime,
Estatus bit,
CONSTRAINT PK_Grupo PRIMARY KEY CLUSTERED 
(ClaveSalon ASC, ClaveProfesor ASC, ClaveMateria ASC, Periodo ASC) ON [PRIMARY],
FOREIGN KEY (ClaveSalon) REFERENCES Salon (ClaveSalon),
FOREIGN KEY (ClaveProfesor) REFERENCES Profesor (ClaveProfesor),
FOREIGN KEY (ClaveMateria) REFERENCES Materia (ClaveMateria))


CREATE TABLE Lista(
ListaId Int UNIQUE NOT NULL, 
ClaveGrupo Varchar(20) NOT NULL,
Matricula Int UNIQUE NOT NULL CHECK (Matricula > 10000),
Estatus bit,
CONSTRAINT PK_Lista PRIMARY KEY CLUSTERED 
(ClaveGrupo ASC, Matricula ASC) ON [PRIMARY],
FOREIGN KEY (ClaveGrupo) REFERENCES Grupo (ClaveGrupo),
FOREIGN KEY (Matricula) REFERENCES Alumno (Matricula))

CREATE DATABASE Tecnica

USE Tecnica

CREATE TABLE profesores(
	id_profesor INT identity (1,1),
	nombre varchar (50) NOT NULL,
	direccion varchar (100),
	telefono varchar (20),
	CONSTRAINT pk_profesor PRIMARY KEY (id_profesor))

CREATE TABLE modulos(
	codigo int identity (1,1),
	nombre varchar (50) NOT NULL,
	id_profesor int,
	CONSTRAINT pk_modulo PRIMARY KEY (codigo),
	CONSTRAINT fk_profesor FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor))

CREATE TABLE alumnos(
	matricula int identity (1,1),
	nombre varchar (50) NOT NULL,
	apellidos varchar (50) NOT NULL,
	fecha_nacimiento DATE,
	numero_delegado int,
	fecha_alta date,
	codigo int,
	CONSTRAINT pk_alumnos PRIMARY KEY (matricula),
	CONSTRAINT fk_delegado FOREIGN KEY (codigo) REFERENCES modulos(codigo))

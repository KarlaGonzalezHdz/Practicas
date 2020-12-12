CREATE DATABASE ClaseSQL
 ON PRIMARY
( NAME = 'ClaseSQL', FILENAME = 'C:\BDATOS_SQL\ClaseSQL.mdf' ,
 SIZE = 5120KB ,
 MAXSIZE = UNLIMITED,
 FILEGROWTH = 1024KB )
 LOG ON
( NAME = 'ClaseSQL_log', FILENAME = 'C:\BDATOS_SQL\ClaseSQL.ldf',
SIZE = 1024KB ,
 MAXSIZE = 2048GB ,
 FILEGROWTH = 10%)
GO

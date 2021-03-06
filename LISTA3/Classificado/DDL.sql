CREATE DATABASE db_classificado

USE db_classificado

CREATE TABLE Usuarios(
Id INT PRIMARY KEY NOT NULL,
Nome VARCHAR(50) NOT NULL,
Usuario VARCHAR(50) NOT NULL,
Senha VARCHAR(50) NOT NULL,
Contato VARCHAR(50) NOT NULL
)
CREATE TABLE Anuncio(
Id INT PRIMARY KEY NOT NULL,
Titulo VARCHAR(50) NOT NULL,
Descricao VARCHAR(70) NOT NULL,
Contato VARCHAR(50) NOT NULL,
FK_Criador INT NOT NULL,
FOREIGN KEY (FK_Criador) REFERENCES Usuarios (Id)
)
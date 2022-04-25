CREATE DATABASE db_redessociais

USE db_redessociais

CREATE TABLE Usuarios(
Id INT PRIMARY KEY NOT NULL,
Nome VARCHAR(50) NOT NULL,
Usuario VARCHAR(50) NOT NULL,
Senha VARCHAR(50) NOT NULL
)

CREATE TABLE Grupos(
Id INT PRIMARY KEY NOT NULL,
Grupo VARCHAR(50) NOT NULL,
Descricao VARCHAR(250),
FK_Criador INT NOT NULL,
FOREIGN KEY (FK_Criador) REFERENCES Usuarios (Id)
)
CREATE TABLE Postagens(
Id INT PRIMARY KEY NOT NULL,
Titulo VARCHAR(50) NOT NULL,
Descricao VARCHAR(800) NOT NULL,
FK_Criador INT NOT NULL,
FK_Grupo INT NOT NULL,
FOREIGN KEY (FK_Criador) REFERENCES Usuarios (Id),
FOREIGN KEY (FK_Grupo) REFERENCES Grupos (Id)
)
CREATE TABLE Membros(
FK_Criador INT NOT NULL,
FK_Grupo INT NOT NULL,
FOREIGN KEY (FK_Criador) REFERENCES Usuarios (Id),
FOREIGN KEY (FK_Grupo) REFERENCES Grupos (Id)
)

CREATE DATABASE FIND;

USE FIND;

CREATE TABLE Usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Email VARCHAR(150),
    Data_Nasc DATE,
    Telefone CHAR(12),
    FKResponsavel INT,
		CONSTRAINT FKResponsavel FOREIGN KEY (FKResponsavel)
			REFERENCES Usuario(idUsuario)
);

CREATE TABLE Aparelho (
	idAparelho INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(80),
    FKProprietario INT,
		CONSTRAINT FKUsuario_Aparelho FOREIGN KEY (FKProprietario)
			REFERENCES Usuario(idUsuario)
);

CREATE TABLE Pesquisa (
	idPesquisa INT AUTO_INCREMENT,
    FKUsuario INT,
    FKAparelho INT,
    Localização VARCHAR(300),
    Hora_Atual TIME,
		CONSTRAINT FKUsuario_Pesquisa FOREIGN KEY (FKUsuario)
			REFERENCES Usuario(idUsuario),
		CONSTRAINT FKAparelho_Pesquisa FOREIGN KEY (FKAparelho)
			REFERENCES Aparelho(idAparelho),
		CONSTRAINT PKComposta_Usuario_Aparelho_Pesquisa PRIMARY KEY (idPesquisa,FKUsuario,FKAparelho)
);


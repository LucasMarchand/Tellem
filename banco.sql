CREATE TABLE Usuario (
	idUsuario SERIAL NOT NULL,
    idPerfil INT,
    Nome VARCHAR(100),
    Email VARCHAR(100) NOT NULL,
    Senha VARCHAR(20) NOT NULL,
	Data_cadastro DATE,
    Sexo CHAR(1),
    PRIMARY KEY (idUsuario),
    FOREIGN KEY (idPerfil) REFERENCES Perfil
);

CREATE TABLE Perfil (
	idPerfil SERIAL NOT NULL,
    Codigo INT,
    PRIMARY KEY (idPerfil)
);

CREATE TABLE Perfil_Funcao (
	idPerfil_Funcao SERIAL NOT NULL,
    idPerfil INT,
    idFuncao INT,
    PRIMARY KEY (Perfil_Funcao),
    FOREIGN KEY (idPerfil) REFERENCES Perfil,
    FOREIGN KEY (idFuncao) REFERENCES Funcao
);

CREATE TABLE Funcao (
	idFuncao SERIAL NOT NULL,
    Codigo INT,
    Descricao VARCHAR(20),
    PRIMARY KEY (idFuncao)
);


CREATE TABLE Postagem (
	idPostagem SERIAL NOT NULL,
    idUsuario INT,
    idGrupo INT,
    Mensagem TEXT,
    Data_publicacao DATE,
    PRIMARY KEY (idPostagem),
    FOREIGN KEY (idUsuario) REFERENCES Usuario,
    FOREIGN KEY (idGrupo) REFERENCES Grupo
);

CREATE TABLE Grupo (
	idGrupo SERIAL NOT NULL,
    Nome VARCHAR(100),
    Descricao VARCHAR(150),
    Data_criacao DATE,
    PRIMARY KEY (idGrupo)
);

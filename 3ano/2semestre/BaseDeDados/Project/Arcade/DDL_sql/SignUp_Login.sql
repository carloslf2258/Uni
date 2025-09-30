-- SIGN UP / LOGIN
use ArcadeDB;
go

CREATE TABLE arcade.Utilizador (
    ID_utilizador INT PRIMARY KEY IDENTITY(1,1),
    Email VARCHAR(100) UNIQUE NOT NULL,
    PalavraPasseHash VARBINARY(MAX) NOT NULL,
    TipoUtilizador VARCHAR(20) CHECK (TipoUtilizador IN ('Jogador', 'Funcionario', 'Gerente')) NOT NULL
);

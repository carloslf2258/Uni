create database RENTACAR
go
use RENTACAR
go
create schema RENTACAR
GO


-- Tabela Cliente
CREATE TABLE rentacar.cliente (
    NIF INT NOT NULL,
    nome VARCHAR(100),
    endereco VARCHAR(255),
    num_carta VARCHAR(20),
	primary key (NIF)
);

-- Tabela Balcao
CREATE TABLE rentacar.balcao (
    numero INT NOT NULL,
    nome VARCHAR(100),
    endereco VARCHAR(255),
	 PRIMARY KEY (numero)
);


-- Tabela Aluguer
CREATE TABLE rentacar.aluguer (
    numero INT NOT NULL PRIMARY KEY,
    duracao INT,
    data DATE,
    num_NIF INT NOT NULL,
    num_Balcao INT NOT NULL,
    Num_matricula VARCHAR(20) NOT NULL
);

-- Tabela Veiculo
CREATE TABLE RENTACAR.veiculo (
    matricula VARCHAR(20) NOT NULL PRIMARY KEY,
    marca VARCHAR(50),
    ano INT,
    codigo_veiculo INT NOT NULL
);

-- Tabela Tipo_Veiculo
CREATE TABLE rentacar.tipo_Veiculo (
    codigo INT NOT NULL PRIMARY KEY,
    designacao VARCHAR(100),
    arcondicionado BIT,
    ano INT
);

-- Tabela ligeiro 
CREATE TABLE rentacar.ligeiro (
    codigo_veiculo INT NOT NULL PRIMARY KEY,
    num_lugares INT,
    combustivel VARCHAR(50),
    portas INT NOT NULL CHECK (portas > 0)
);

-- Tabela pesado
CREATE TABLE rentacar.pesado (
    codigo_veiculo INT NOT NULL PRIMARY KEY,
    peso INT NOT NULL CHECK (peso > 0),
    passageiros INT NOT NULL CHECK (passageiros > 0)
);

-- Tabela similaridade 
CREATE TABLE rentacar.similaridade (
    codigo1 INT NOT NULL,
    codigo2 INT NOT NULL,
    PRIMARY KEY (codigo1, codigo2)
);



-- Adicionar Foreign Keys
ALTER TABLE rentacar.aluguer ADD CONSTRAINT FK_Aluguer_Cliente
FOREIGN KEY (num_NIF) REFERENCES rentacar.cliente(NIF);

ALTER TABLE rentacar.aluguer ADD CONSTRAINT FK_Aluguer_Balcao
FOREIGN KEY (num_Balcao) REFERENCES rentacar.balcao(numero);

ALTER TABLE rentacar.aluguer ADD CONSTRAINT FK_Aluguer_Veiculo
FOREIGN KEY (Num_matricula) REFERENCES rentacar.veiculo(matricula);

ALTER TABLE rentacar.veiculo ADD CONSTRAINT FK_Veiculo_Tipo_Veiculo
FOREIGN KEY (codigo_veiculo) REFERENCES rentacar.tipo_Veiculo(codigo);

ALTER TABLE rentacar.ligeiro ADD CONSTRAINT FK_Ligeiro_Tipo_Veiculo
FOREIGN KEY (codigo_veiculo) REFERENCES rentacar.tipo_Veiculo(codigo);

ALTER TABLE rentacar.pesado ADD CONSTRAINT FK_pesado_Tipo_Veiculo
FOREIGN KEY (codigo_veiculo) REFERENCES rentacar.tipo_Veiculo(codigo);

ALTER TABLE rentacar.similaridade ADD CONSTRAINT FK_similaridade_Tipo_Veiculo1
FOREIGN KEY (codigo1) REFERENCES rentacar.tipo_Veiculo(codigo);

ALTER TABLE rentacar.similaridade ADD CONSTRAINT FK_similaridade_Tipo_Veiculo2
FOREIGN KEY (codigo2) REFERENCES rentacar.tipo_Veiculo(codigo);



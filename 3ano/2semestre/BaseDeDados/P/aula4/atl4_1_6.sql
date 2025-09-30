--create database atl
go

use atl
go



CREATE TABLE Pessoa (
    CC VARCHAR(20),
    nome VARCHAR(100),
    dataNasc DATE,
    morada VARCHAR(255),
    lista_auth VARCHAR(20),
    PRIMARY KEY (CC,lista_auth)
);

CREATE TABLE lista_de_pessoas (
    autorizacao VARCHAR (20),
    PRIMARY KEY (autorizacao)
);

CREATE TABLE Encarregado_Educacao (
    Pessoa_CC VARCHAR(20),
    email VARCHAR(100),
    contacto_telefonico int,
    PRIMARY KEY (Pessoa_CC,email)
);


CREATE TABLE professor (
    Pessoa_CC VARCHAR(20),
    email VARCHAR(100),
    contacto_telefonico int,
    n_funcionario int,
    PRIMARY KEY (Pessoa_CC,email)
);

CREATE TABLE Atividade (
    identificador int,
    designacao VARCHAR(100),
    custo int,
    PRIMARY KEY (identificador)
);

CREATE TABLE Turma (
    identificador int,
    professor VARCHAR(100),
    ano_letivo VARCHAR(10),
    designacao VARCHAR(100),
    n_max_alunos INT,
    prof_email VARCHAR(100),
    PRIMARY KEY (identificador,prof_email)
);

CREATE TABLE faz (
    turma_id int,
    atividade_id int,
    PRIMARY KEY (turma_id, atividade_id)
);

CREATE TABLE frequenta (
    Pessoa_CC VARCHAR (20),
    atividade_id int,
    PRIMARY KEY (Pessoa_CC, atividade_id)
);

CREATE TABLE aluno (
    Pessoa_CC VARCHAR(20),
    lista_auth VARCHAR(20),
    EncDeEduc_email VARCHAR (100),
    turma_id int,
    PRIMARY KEY(Pessoa_CC,lista_auth,EncDeEduc_email,turma_id)
);


-- Adicionando Foreign Keys (Cada ALTER TABLE com apenas uma FK para evitar erro no SQL Server)
ALTER TABLE Pessoa ADD CONSTRAINT fk_pessoa_lista_auth 
FOREIGN KEY (lista_auth) REFERENCES lista_de_pessoas(autorizacao);

ALTER TABLE Pessoa ADD CONSTRAINT uq_pessoa_cc UNIQUE (CC);

ALTER TABLE aluno ADD CONSTRAINT fk_aluno_Pessoa
FOREIGN KEY (Pessoa_CC) REFERENCES Pessoa(CC);

ALTER TABLE aluno add constraint fk_aluno_lista_de_pessoas
FOREIGN KEY (lista_auth) REFERENCES lista_de_pessoas(autorizacao);	

ALTER TABLE Encarregado_Educacao ADD CONSTRAINT uq_EncDeEduc_email UNIQUE (email);

ALTER TABLE aluno ADD CONSTRAINT fk_aluno_EncDeEd
FOREIGN KEY (EncDeEduc_email) REFERENCES Encarregado_Educacao(email);

ALTER TABLE turma ADD CONSTRAINT uq_identificador UNIQUE (identificador);

ALTER TABLE aluno ADD CONSTRAINT fk_aluno_turma
FOREIGN KEY (turma_id) REFERENCES turma(identificador);

ALTER TABLE professor ADD CONSTRAINT fk_professor_pessoa 
FOREIGN KEY (Pessoa_CC) REFERENCES Pessoa(CC);

ALTER TABLE Encarregado_Educacao ADD CONSTRAINT fk_Encarregado_Educacao_Pessoa
FOREIGN KEY (Pessoa_CC) REFERENCES Pessoa(CC);


ALTER TABLE professor ADD CONSTRAINT uq_email UNIQUE (email);

ALTER TABLE turma ADD CONSTRAINT fk_turma_professor
FOREIGN KEY (prof_email) REFERENCES professor(email);


ALTER TABLE faz ADD CONSTRAINT fk_faz_turma
FOREIGN KEY (turma_id) REFERENCES turma(identificador);


ALTER TABLE faz ADD CONSTRAINT fk_faz_atividade
FOREIGN KEY (atividade_id) REFERENCES atividade(identificador);


ALTER TABLE aluno ADD CONSTRAINT uq_aluno_Pessoa_CC UNIQUE (Pessoa_CC);

ALTER TABLE frequenta ADD CONSTRAINT fk_frequenta_aluno
FOREIGN KEY (Pessoa_CC) REFERENCES aluno(Pessoa_CC);


ALTER TABLE frequenta ADD CONSTRAINT fk_frequenta_atividade
FOREIGN KEY (atividade_id) REFERENCES atividade(identificador);


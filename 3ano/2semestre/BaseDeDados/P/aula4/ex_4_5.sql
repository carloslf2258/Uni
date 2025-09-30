--create database conferencias;
use conferencias;

--go

--create schema conf;
--go

--Criar tabela Artigo
CREATE TABLE conf.Artigo (
	nRegisto	INT NOT NULL,
	titulo		VARCHAR(100),

	PRIMARY KEY (nRegisto)
);


--Criar tabela tem
CREATE TABLE conf.Tem(
	Artigo_nRegisto	INT	NOT NULL,
	Autor_email		VARCHAR(255) NOT NULL,

	PRIMARY KEY (Artigo_nRegisto, Autor_email)
);




--Criar tabela Autor
CREATE TABLE conf.Autor(
	email			VARCHAR(255) NOT NULL,
	nome			VARCHAR(255) NOT NULL,
	instituicao		VARCHAR(255) NOT NULL,
	inst_address	VARCHAR(255) NOT NULL,

	PRIMARY KEY (email)
);



--Criar tabela Participante
CREATE TABLE conf.Participante(
	email			VARCHAR(255) NOT NULL,
	dataInscricao	date NOT NULL,
	nome			VARCHAR(255) NOT NULL,
	address			VARCHAR(255) NOT NULL,
	instituicao		VARCHAR(255) NOT NULL,
	inst_address	VARCHAR(255) NOT NULL,

	PRIMARY KEY (email)
);


--Criar tabela Estudante
CREATE TABLE conf.Estudante(
	Participante_email		VARCHAR(255) NOT NULL,
	comprovativo			VARCHAR(255) NOT NULL,
	localizacao				VARCHAR(255) NOT NULL,
	address					VARCHAR(255) NOT NULL,

	PRIMARY KEY (Participante_email)
);



--Criar tabela NaoEstudante
CREATE TABLE conf.NaoEstudante(
	Participante_email		VARCHAR(255) NOT NULL,
	address					VARCHAR(255) NOT NULL,
	ref_Transacao_bancaria  INT NOT NULL,

	PRIMARY KEY (Participante_email)
);


--Criar tabela Instituicao
CREATE TABLE conf.Instituicao(
	nome			VARCHAR(255) NOT NULL,
	address			VARCHAR(255) NOT NULL,

	PRIMARY KEY (nome)
);



--ALTERs
ALTER TABLE conf.Tem ADD CONSTRAINT FK_Tem_Artigo
FOREIGN KEY (Artigo_nRegisto) REFERENCES conf.Artigo(nRegisto);

ALTER TABLE conf.Tem ADD CONSTRAINT FK_Tem_Autor
FOREIGN KEY (Autor_email) REFERENCES conf.Autor(email);


--isto é xaxa
--alter table conf.Tem
--alter column Autor_email VARCHAR(255) NOT NULL;

--alter table conf.Autor
--alter column email VARCHAR(255) NOT NULL;

--alter table conf.Tem
--drop constraint FK_Tem_Artigo;

ALTER TABLE conf.Autor ADD CONSTRAINT FK_Autor_Instituicao
FOREIGN KEY(inst_address) REFERENCES conf.Instituicao(nome);


ALTER TABLE conf.participante ADD CONSTRAINT FK_Participante_Instituicao
FOREIGN KEY(inst_address) REFERENCES conf.Instituicao(nome);


ALTER TABLE conf.Estudante ADD CONSTRAINT FK_Estudante_Participante
FOREIGN KEY(Participante_email) REFERENCES conf.Participante(email);

ALTER TABLE conf.NaoEstudante ADD CONSTRAINT FK_NaoEstudante_Participante
FOREIGN KEY(Participante_email) REFERENCES conf.Participante(email);
--done




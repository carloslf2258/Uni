--create database ArcadeDB;
go
use ArcadeDB;
go
--CREATE SCHEMA arcade;
go

--Order Tables
-- 1. Maquina
-- 2. Jogador
-- 3. Gerente
-- 4. Card_fichas
-- 5. Sessao_jogo
-- 6. Manutencao
-- 7. Evento
-- 8. Usufrui_promocao
-- 9. G_Tem_F
-- 10. Programa_fidelidade
-- 11. Promocao
-- 12. Carregamento
-- 13. Funcionario



-- 1. Maquina
CREATE TABLE arcade.Maquina (
    ID_maquina INT NOT NULL,
    Tipo VARCHAR(50),
    Modelo VARCHAR(100),
    Fabricante VARCHAR(100),
    Status VARCHAR(50),
    Data_instalacao DATE,

	PRIMARY KEY (ID_maquina)
);


-- 2. Jogador
CREATE TABLE arcade.Jogador (
    ID_jogador INT NOT NULL,
    Nome VARCHAR(100),
    Email VARCHAR(100) NULL,
    Telefone VARCHAR(20) NULL,
    Pontuacao_total INT DEFAULT 0,
    ID_programa_fidelidade INT NOT NULL DEFAULT 2001, --FK

	PRIMARY KEY (ID_jogador)
);


-- 3. Gerente
CREATE TABLE arcade.Gerente (
    ID_gerente INT NOT NULL,
    Data_inicio DATE,
    Data_fim DATE,
	Responsabilidade VARCHAR(255),
    ID_evento INT NOT NULL, --FK

	PRIMARY KEY (ID_gerente)
);

-- 4. Card_fichas
CREATE TABLE arcade.Card_fichas (
    ID_card_fichas INT NOT NULL,
    Custo DECIMAL(6,2),
    Fichas_atuais INT,
    Fichas_usadas INT,
    Data_ultimo_carregamento DATE,
    ID_jogador INT NOT NULL, --FK
	ID_funcionario INT NOT NULL, --FK

	PRIMARY KEY (ID_card_fichas)
);

-- 5. Sessao_jogo
CREATE TABLE arcade.Sessao_jogo (
    ID_sessao INT NOT NULL,
    Tempo_jogado TIME,
    Pontuacao_final INT,
    Status_sessao VARCHAR(50),
    Fichas INT,
	ID_maquina INT NOT NULL, --FK
    ID_jogador INT NOT NULL, --FK

	PRIMARY KEY (ID_sessao)
);

-- 6. Manutencao
CREATE TABLE arcade.Manutencao (
    ID_manutencao INT NOT NULL,
    Tipo VARCHAR(50),
    Data_inicio DATE,
    Data_fim DATE,
    Descricao TEXT,
    Status VARCHAR(50),
    ID_maquina INT NOT NULL, --FK
    ID_funcionario INT NOT NULL, --FK

	PRIMARY KEY (ID_manutencao)
);

-- 7. Evento
CREATE TABLE arcade.Evento (
    ID_evento INT NOT NULL,
    Nome VARCHAR(100),
    Data_inicio DATE,
    Data_fim DATE,
    Capacidade INT,
	Status VARCHAR(50),
    ID_funcionario INT NOT NULL, --FK

	PRIMARY KEY (ID_evento)
);

-- 8. Usufrui_promocao
CREATE TABLE arcade.Usufrui_promocao (
    ID_jogador INT NOT NULL, --FK
    ID_promocao INT NOT NULL, --FK

	PRIMARY KEY (ID_jogador, ID_promocao)
);
-- 9. G_Tem_F
CREATE TABLE arcade.G_Tem_F (
    ID_gerente INT NOT NULL, --FK
    ID_funcionario INT NOT NULL, --FK 

	PRIMARY KEY (ID_gerente, ID_funcionario)
);
-- 10. Programa_fidelidade
CREATE TABLE arcade.Programa_fidelidade (
    ID_programa_fidelidade INT NOT NULL,
    Nome VARCHAR(100),
    Descricao TEXT,
    Tipo VARCHAR(50),
    Requisitos TEXT,
    Data_inicio DATE,
    Data_fim DATE,

	PRIMARY KEY (ID_programa_fidelidade)
);

-- 11. Promocao
CREATE TABLE arcade.Promocao (
    ID_promocao INT NOT NULL,
    Nome VARCHAR(100),
    Tipo VARCHAR(50),
    Data_inicio DATE,
    Data_fim DATE,
    ID_evento INT NOT NULL, --FK

	PRIMARY KEY (ID_promocao)
);

-- 12. Carregamento
CREATE TABLE arcade.Carregamento (
    Valor DECIMAL(6,2),
    Creditos INT,
    ID_card_fichas INT NOT NULL, --FK
    ID_funcionario INT NOT NULL, --FK
);

-- 13. Funcionario
CREATE TABLE arcade.Funcionario (
    ID_funcionario INT NOT NULL,
    Nome VARCHAR(100),
    Cargo VARCHAR(50),
    Turno VARCHAR(20),
    Salario INT,
    Contacto VARCHAR(100), --See
    ID_manutencao INT NULL, --FK (nullable)

	PRIMARY KEY (ID_funcionario)
);


go

-- FOREIGN KEYS
-- Jogador
alter table arcade.Jogador add constraint FK_J_PF
foreign key (ID_programa_fidelidade) references arcade.Programa_fidelidade(ID_programa_fidelidade);

-- Gerente
alter table arcade.Gerente add constraint FK_G_E
foreign key (ID_evento) references arcade.Evento(ID_evento);


-- Card_fichas
ALTER TABLE arcade.Card_fichas ADD CONSTRAINT FK_CF_J
FOREIGN KEY (ID_jogador) REFERENCES arcade.Jogador(ID_jogador);

ALTER TABLE arcade.Card_fichas ADD CONSTRAINT FK_CF_F
FOREIGN KEY (ID_funcionario) REFERENCES arcade.Funcionario(ID_funcionario);

-- Sessao_jogo
ALTER TABLE arcade.Sessao_jogo ADD CONSTRAINT FK_SJ_M
FOREIGN KEY (ID_maquina) REFERENCES arcade.Maquina(ID_maquina);

ALTER TABLE arcade.Sessao_jogo ADD CONSTRAINT FK_SJ_J
FOREIGN KEY (ID_jogador) REFERENCES arcade.Jogador(ID_jogador);

-- Manutencao
ALTER TABLE arcade.Manutencao ADD CONSTRAINT FK_Man_M
FOREIGN KEY (ID_maquina) REFERENCES arcade.Maquina(ID_maquina);

ALTER TABLE arcade.Manutencao ADD CONSTRAINT FK_Man_F
FOREIGN KEY (ID_funcionario) REFERENCES arcade.Funcionario(ID_funcionario);

-- Evento
ALTER TABLE arcade.Evento ADD CONSTRAINT FK_E_F
FOREIGN KEY (ID_funcionario) REFERENCES arcade.Funcionario(ID_funcionario);

-- Usufrui_promocao
ALTER TABLE arcade.Usufrui_promocao ADD CONSTRAINT FK_UP_J
FOREIGN KEY (ID_jogador) REFERENCES arcade.Jogador(ID_jogador);

ALTER TABLE arcade.Usufrui_promocao ADD CONSTRAINT FK_UP_P
FOREIGN KEY (ID_promocao) REFERENCES arcade.Promocao(ID_promocao);

-- G_Tem_F
ALTER TABLE arcade.G_Tem_F ADD CONSTRAINT FK_GTemF_G
FOREIGN KEY (ID_gerente) REFERENCES arcade.Gerente(ID_gerente);

ALTER TABLE arcade.G_Tem_F ADD CONSTRAINT FK_GTemF_F
FOREIGN KEY (ID_funcionario) REFERENCES arcade.funcionario(ID_funcionario);

-- Promocao
ALTER TABLE arcade.Promocao ADD CONSTRAINT FK_P_E
FOREIGN KEY (ID_evento) REFERENCES arcade.Evento(ID_evento);

-- Carregamento
ALTER TABLE arcade.Carregamento ADD CONSTRAINT FK_C_CF
FOREIGN KEY (ID_card_fichas) REFERENCES arcade.Card_fichas(ID_card_fichas);

ALTER TABLE arcade.Carregamento ADD CONSTRAINT FK_C_F
FOREIGN KEY (ID_funcionario) REFERENCES arcade.Funcionario(ID_funcionario);

-- Funcionario
ALTER TABLE arcade.Funcionario ADD CONSTRAINT FK_F_Man
FOREIGN KEY (ID_manutencao) REFERENCES arcade.Manutencao(ID_manutencao);




-- done


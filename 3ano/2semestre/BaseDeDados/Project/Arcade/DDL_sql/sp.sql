use ArcadeDB;
go

-- Stored Procedures
-- NOTE: os IDs têm de ser controlados manualmente (sem geração de IDs)

-- To add Jogadores
GO
CREATE PROC arcade.sp_add_jogador
    @ID_jogador INT,
    @Nome VARCHAR(100),
    @Email VARCHAR(100),
    @Telefone VARCHAR(20),
    @Pontuacao_total INT,
    @ID_programa_fidelidade INT
AS
BEGIN
    -- Inserir o jogador na tabela Jogador
    INSERT INTO arcade.Jogador (
        ID_jogador, Nome, Email, Telefone, Pontuacao_total, ID_programa_fidelidade
    )
    VALUES (
        @ID_jogador, @Nome, @Email, @Telefone, @Pontuacao_total, @ID_programa_fidelidade
    );
END
GO

-- to add Maquina
GO
CREATE PROC arcade.sp_add_maquina
    @ID_maquina INT,
    @Tipo VARCHAR(50),
    @Modelo VARCHAR(100),
    @Fabricante VARCHAR(100),
    @Status VARCHAR(50),
    @Data_instalacao DATE
AS
BEGIN
    INSERT INTO arcade.Maquina (
        ID_maquina, Tipo, Modelo, Fabricante, Status, Data_instalacao
    )
    VALUES (
        @ID_maquina, @Tipo, @Modelo, @Fabricante, @Status, @Data_instalacao
    );
END
GO

-- to add funcionario
GO
CREATE PROC arcade.sp_add_funcionario
    @ID_funcionario INT,
    @Nome VARCHAR(100),
    @Cargo VARCHAR(50),
    @Turno VARCHAR(20),
    @Salario DECIMAL(10,2),
    @Contacto VARCHAR(100),
    @ID_manutencao INT = NULL  -- Pode ser NULL
AS
BEGIN
    INSERT INTO arcade.Funcionario (
        ID_funcionario, Nome, Cargo, Turno, Salario, Contacto, ID_manutencao
    )
    VALUES (
        @ID_funcionario, @Nome, @Cargo, @Turno, @Salario, @Contacto, @ID_manutencao
    );
END
GO

-- to add gerente
GO
CREATE PROC arcade.sp_add_gerente
    @ID_gerente INT,
    @Data_inicio DATE,
    @Data_fim DATE = NULL,
    @Responsabilidade VARCHAR(255),
    @ID_evento INT
AS
BEGIN
    INSERT INTO arcade.Gerente (
        ID_gerente, Data_inicio, Data_fim, Responsabilidade, ID_evento
    )
    VALUES (
        @ID_gerente, @Data_inicio, @Data_fim, @Responsabilidade, @ID_evento
    );
END
GO

-- to add manutenção
GO
CREATE PROC arcade.sp_add_manutencao
    @ID_manutencao INT,
    @Tipo VARCHAR(50),
    @Data_inicio DATE,
    @Data_fim DATE = NULL,
    @Descricao VARCHAR(255),
    @Status VARCHAR(50),
    @ID_maquina INT,
    @ID_funcionario INT
AS
BEGIN
    INSERT INTO arcade.Manutencao (
        ID_manutencao, Tipo, Data_inicio, Data_fim, Descricao, Status, ID_maquina, ID_funcionario
    )
    VALUES (
        @ID_manutencao, @Tipo, @Data_inicio, @Data_fim, @Descricao, @Status, @ID_maquina, @ID_funcionario
    );
END
GO

/*
-- Exemplo de utilização
EXEC arcade.sp_add_maquina 
    @ID_maquina = 1007, 
    @Tipo = 'Puzzle', 
    @Nome_jogo = 'Tetris', 
    @Fabricante = 'Sega', 
    @Estado = 'Operacional', 
    @Data_aquisicao = '2024-05-20';

EXEC arcade.sp_add_funcionario 
    @ID_funcionario = 4004, 
    @Nome = 'Luis Braga', 
    @Cargo = 'Técnico', 
    @Turno = 'Noite', 
    @Salario = 950.00, 
    @Email = 'luis@arcade.pt';

EXEC arcade.sp_add_gerente
    @ID_gerente = 8003,
    @Data_inicio = '2024-01-01',
    @Responsabilidades = 'Gestão geral',
    @ID_evento = 6002;

EXEC arcade.sp_add_manutencao
    @ID_manutencao = 5004,
    @Tipo = 'Preventiva',
    @Data_inicio = '2025-05-30',
    @Descricao = 'Limpeza e testes',
    @Estado = 'Agendada',
    @ID_maquina = 1001,
    @ID_funcionario = 4004;

*/
use ArcadeDB;
go
/* Como usar:
SELECT * FROM arcade.udf_listar_jogadores();
SELECT * FROM arcade.udf_listar_eventos();
SELECT * FROM arcade.udf_listar_maquinas_em_manutencao();
SELECT * FROM arcade.udf_listar_promocoes_ativas();
*/

-- Listar Jogadores
GO
CREATE FUNCTION arcade.udf_listar_jogadores()
RETURNS TABLE
AS
RETURN
(
    SELECT 
        J.ID_jogador,
        J.Nome,
        J.Email,
        J.Telefone,
        J.Pontuacao_total,
        PF.Nome AS Programa_fidelidade
    FROM arcade.Jogador J
    JOIN arcade.Programa_fidelidade PF ON J.ID_programa_fidelidade = PF.ID_programa_fidelidade
);
GO

-- Listar Eventos
GO
CREATE FUNCTION arcade.udf_listar_eventos()
RETURNS TABLE
AS
RETURN
(
    SELECT 
        E.ID_evento,
        E.Nome,
        E.Data_inicio,
        E.Data_fim,
        E.Capacidade,
        E.Status,
        F.Nome AS Responsavel
    FROM arcade.Evento E
    JOIN arcade.Funcionario F ON E.ID_funcionario = F.ID_funcionario
);
GO

-- Listar Máquinas em Manutenção
GO
CREATE FUNCTION arcade.udf_listar_maquinas_em_manutencao()
RETURNS TABLE
AS
RETURN
(
    SELECT 
        M.ID_maquina,
        MQ.Modelo,
        M.Tipo,
        M.Data_inicio,
        M.Data_fim,
        M.Descricao,
        M.Status
    FROM arcade.Manutencao M
    JOIN arcade.Maquina MQ ON M.ID_maquina = MQ.ID_maquina
    WHERE M.Status IN ('Ativa', 'Em progresso', 'Agendada') OR M.Data_fim IS NULL
);
GO

-- Listar Promocoes ativas
GO
CREATE FUNCTION arcade.udf_listar_promocoes_ativas()
RETURNS TABLE
AS
RETURN
(
    SELECT 
        P.ID_promocao,
        P.Nome,
        P.Tipo,
        P.Data_inicio,
        P.Data_fim,
        E.Nome AS Evento_associado
    FROM arcade.Promocao P
    JOIN arcade.Evento E ON P.ID_evento = E.ID_evento
    WHERE GETDATE() BETWEEN P.Data_inicio AND P.Data_fim
);
GO




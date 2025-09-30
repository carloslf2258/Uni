USE ArcadeDB;
GO
/*
	Run Query -> Delete all tables in DB
*/

/*

-- Drop constraints da tabela Manutencao
ALTER TABLE arcade.Manutencao DROP CONSTRAINT FK_Man_M;
ALTER TABLE arcade.Manutencao DROP CONSTRAINT FK_Man_F;

-- Drop constraint da tabela Funcionario
ALTER TABLE arcade.Funcionario DROP CONSTRAINT FK_F_Man;

-- Agora podemos eliminar tudo, na ordem certa:
DROP TABLE IF EXISTS 
  arcade.Usufrui_promocao,     -- FK: Jogador, Promocao
  arcade.G_Tem_F,              -- FK: Gerente, Funcionario
  arcade.Carregamento,         -- FK: Card_fichas, Funcionario
  arcade.Sessao_jogo,          -- FK: Jogador, Maquina, Card_fichas
  arcade.Manutencao,           -- FK: Maquina, Funcionario
  arcade.Promocao,             -- FK: Evento
  arcade.Card_fichas,          -- FK: Jogador, Evento
  arcade.Gerente,              -- FK: Funcionario
  arcade.Funcionario,          -- FK: Manutencao (já foi desfeita acima)
  arcade.Jogador,              -- FK: Programa_fidelidade
  arcade.Programa_fidelidade,  -- Sem FKs
  arcade.Evento,               -- FK: usado por Promocao e Card_fichas
  arcade.Maquina;              -- FK: Sessao_jogo, Manutencao

  */
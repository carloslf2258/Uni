use ArcadeDB;
go

/*
Triggers
*/

-- Atualizar total de pontos após nova pontuação
CREATE OR REPLACE FUNCTION atualizar_total_pontos()
RETURNS TRIGGER AS $$
BEGIN
  UPDATE Jogador
  SET total_pontos = (
    SELECT COALESCE(SUM(pontos), 0)
    FROM Pontuacao
    WHERE id_jogador = NEW.id_jogador
  )
  WHERE id_jogador = NEW.id_jogador;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_atualiza_total_pontos
AFTER INSERT ON Pontuacao
FOR EACH ROW
EXECUTE FUNCTION atualizar_total_pontos();

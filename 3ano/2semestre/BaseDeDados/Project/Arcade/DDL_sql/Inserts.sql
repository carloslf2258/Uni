use ArcadeDB;
go

/*
Run Query -> Inserts to DB
*/


-- 1. Maquina
INSERT INTO arcade.Maquina VALUES 
(1001, 'Corrida', 'SpeedRacer X', 'Namco', 'Operacional', '2023-06-15'),
(1002, 'Luta', 'Street Fighter V', 'Capcom', 'Manutenção', '2022-11-10'),
(1003, 'Tiro', 'Time Crisis 4', 'Namco', 'Operacional', '2023-01-20'),
(1004, 'Corrida', 'Forza Horizon', 'Nintendo', 'Operacional', '2024-11-10'),
(1005, 'Tiro', 'Pac-man', 'Namco', 'Operacional', '2022-11-10'),
(1006, 'Luta', 'Mario Bros', 'Nintendo', 'Manutenção', '2022-11-09');

-- 2. Programa_fidelidade
INSERT INTO arcade.Programa_fidelidade VALUES 
(2001, 'Bronze', 'Fidelidade básica', 'Pontos', 'Acumular 1000 pontos', '2023-01-01', '2028-12-31'),
(2002, 'Prata', 'Nível médio', 'Pontos', 'Acumular 3000 pontos', '2023-01-01', '2027-12-31'),
(2003, 'Ouro', 'Nível premium', 'Pontos', 'Acumular 5000 pontos', '2023-01-01', '2026-12-31');

-- 3. Jogador
INSERT INTO arcade.Jogador VALUES 
(3001, 'Pedro Silva', 'pedro@gmail.com', '912345678', 1500, 2001),
(3002, 'Rita Lopes', 'rita@gmail.com', '913456789', 3200, 2002),
(3003, 'Carlos Mendes', 'carlosm@gmail.com', '914567890', 5500, 2003),
(3004, 'João Correia', 'jotas@gmail.com', '232456745', 3100, 2002),
(3005, 'Mariana Lopes', 'marianl@gmail.com', '122456787', 200, 2001),
(3006, 'Maria Magdalena', 'estrilnha@gmail.com', '213234232', 4000, 2003);

-- 4. Funcionario (FK Manutenção pode ser NULL)
INSERT INTO arcade.Funcionario VALUES 
(4001, 'João Martins', 'Técnico', 'Noite', 850, 'joao@arcade.pt', NULL),
(4002, 'Ana Costa', 'Atendimento', 'Dia', 750, 'ana@arcade.pt', NULL),
(4003, 'Carlos Verenzuela', 'Atendimento', 'Dia', 1000, 'carloslf2258@gmail.com', NULL),
(4004, 'Pedro Manuel', 'Atendimento', 'Dia', 600, 'pedmanu@arcade.pt', NULL);


-- 5. Manutencao 
--FK (Maq e Fun)
INSERT INTO arcade.Manutencao VALUES 
(5001, 'Preventiva', '2024-03-01', '2024-03-02', 'Verificação geral da máquina 2', 'Concluído', 1002, 4001),
(5002, 'Corretiva', '2024-04-10', '2024-04-11', 'Substituição de cabos da máquina 3', 'Concluído', 1003, 4002),
(5003, 'Corretiva', '2025-03-01', NULL, 'Arranjar botões', 'Ativa', 1006, 4003),
(5004, 'Corretiva', '2024-04-10', NULL, 'Substituição ecrã', 'Agendada', 1005, 4003);


-- 6. Evento
INSERT INTO arcade.Evento VALUES 
(6001, 'Torneio de Street Fighter', '2024-07-01', '2024-07-05', 50, 'Planeado', 4001),
(6002, 'Maratona de Jogos', '2025-06-30', '2025-08-12', 100, 'Confirmado', 4002),
(6003, 'Fight Championship', '2025-04-10', '2026-10-12', 150, 'Ativo', 4003);

-- 7. Promocao
INSERT INTO arcade.Promocao VALUES 
(7001, 'Promo Férias', 'Desconto', '2024-07-01', '2024-07-31', 6001),
(7002, 'Promo Verão', 'Bónus', '2025-06-30', '2025-08-12', 6002),
(7003, 'Promo Teenager', 'Desconto', '2025-04-10', '2026-10-12', 6003);

-- 8. Gerente
INSERT INTO arcade.Gerente VALUES 
(8001, '2023-01-01', NULL, 'Organização de eventos e supervisão geral', 6001),
(8002, '2023-03-01', NULL, 'Gestão de pessoal e manutenção', 6002);


-- 9. Card_fichas
--FK(jogador,funcionario)
INSERT INTO arcade.Card_fichas VALUES 
(9001, 10.00, 30, 120, '2025-04-20', 3001, 4002),
(9002, 20.00, 50, 250, '2025-04-25', 3002, 4001),
(9003, 15.00, 40, 200, '2025-05-01', 3003, 4001),
(9004, 120.00, 140, 200, '2025-05-02', 3004, 4003),
(9005, 110.00, 110, 100, '2025-04-02', 3005, 4004),
(9006, 20.00, 50, 200, '2025-05-15', 3006, 4002);

-- 10. Carregamento
--FK (card_fichas, funcionario)
INSERT INTO arcade.Carregamento VALUES 
(10.00, 30, 9001, 4002),
(20.00, 50, 9002, 4001),
(15.00, 40, 9003, 4001),
(25.00, 70, 9004, 4003),
(5.00, 15, 9005, 4004),
(12.00, 35, 9006, 4002),
(30.00, 90, 9001, 4001),
(18.00, 50, 9002, 4002),
(22.00, 60, 9003, 4003),
(7.00, 20, 9004, 4004),
(50.00, 150, 9005, 4001),
(11.00, 30, 9006, 4002),
(40.00, 120, 9001, 4003),
(9.00, 25, 9002, 4004),
(16.00, 45, 9003, 4002),
(28.00, 80, 9004, 4001),
(8.00, 20, 9005, 4003),
(35.00, 100, 9006, 4004),
(13.00, 38, 9001, 4002),
(19.00, 55, 9002, 4001),
(21.00, 60, 9003, 4003),
(6.00, 18, 9004, 4004),
(45.00, 135, 9005, 4001),
(14.00, 36, 9006, 4002),
(17.00, 48, 9001, 4003),
(9.00, 25, 9002, 4004),
(20.00, 60, 9003, 4001),
(23.00, 65, 9004, 4002),
(31.00, 95, 9005, 4003),
(27.00, 85, 9006, 4004);


-- 11. Sessao_jogo
--FK (maquina, jogador)
INSERT INTO arcade.Sessao_jogo VALUES 
(11001, '00:30:00', 500, 'Finalizada', 3, 1001, 3001),
(11002, '00:45:00', 800, 'Finalizada', 4, 1002, 3002),
(11003, '00:20:00', 300, 'Interrompida', 2, 1003, 3003),
(11004, '00:25:00', 1000, 'Ativa', 2, 1004, 3004),
(11005, '00:35:00', 1200, 'Ativa', 6, 1005, 3005),
(11006, '00:50:00', 700, 'Finalizada', 5, 1006, 3006),
(11007, '00:40:00', 1500, 'Finalizada', 4, 1001, 3002),
(11008, '00:15:00', 250, 'Finalizada', 2, 1002, 3001),
(11009, '00:55:00', 1800, 'Finalizada', 6, 1003, 3004),
(11010, '00:20:00', 600, 'Finalizada', 3, 1004, 3005),
(11011, '00:33:00', 900, 'Finalizada', 3, 1005, 3003),
(11012, '00:48:00', 1300, 'Finalizada', 4, 1006, 3002),
(11013, '00:28:00', 400, 'Finalizada', 2, 1001, 3003),
(11014, '00:35:00', 1100, 'Finalizada', 5, 1002, 3004),
(11015, '00:45:00', 950, 'Finalizada', 3, 1003, 3005),
(11016, '00:22:00', 720, 'Finalizada', 2, 1004, 3001),
(11017, '00:37:00', 1600, 'Finalizada', 6, 1005, 3002),
(11018, '00:30:00', 840, 'Interrompida', 4, 1006, 3003),
(11019, '00:18:00', 320, 'Finalizada', 1, 1001, 3004),
(11020, '00:55:00', 1700, 'Finalizada', 5, 1002, 3005),
(11021, '00:26:00', 680, 'Finalizada', 3, 1003, 3006),
(11022, '00:42:00', 1340, 'Finalizada', 4, 1004, 3005),
(11023, '00:30:00', 540, 'Interrompida', 2, 1005, 3001),
(11024, '00:31:00', 890, 'Finalizada', 4, 1006, 3002),
(11025, '00:36:00', 1130, 'Finalizada', 5, 1001, 3005),
(11026, '00:27:00', 730, 'Finalizada', 3, 1002, 3001),
(11027, '00:50:00', 1450, 'Interrompida', 6, 1003, 3002),
(11028, '00:23:00', 610, 'Finalizada', 2, 1004, 3003),
(11029, '00:19:00', 490, 'Ativa', 1, 1005, 3004),
(11030, '00:34:00', 990, 'Finalizada', 4, 1006, 3005);


-- 12. Usufrui_promocao
--(jogador, promoção)
INSERT INTO arcade.Usufrui_promocao VALUES 
(3001, 7001),
(3002, 7002),
(3003, 7002);

-- 13. G_Tem_F
--(gerente,funcionario)
INSERT INTO arcade.G_Tem_F VALUES 
(8001, 4001),
(8001, 4002),
(8002, 4002);

--done

--Associar IDs de manutenção aos Funcionários
UPDATE arcade.Funcionario
SET ID_manutencao = 5001
WHERE ID_funcionario = 4001;

UPDATE arcade.Funcionario
SET ID_manutencao = 5002
WHERE ID_funcionario = 4002;

UPDATE arcade.Funcionario
SET ID_manutencao = 5003
WHERE ID_funcionario = 4003;

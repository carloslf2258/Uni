%% Ex1 - Markov

%     1    4    5     2   3
T = [ 0    0    1/3   0   0    % 1 
      0    0    1/3   1   0    % 2 
      0   1/2   1/3   0   1    % 3 
      1    0     0    0   0    % 4 
      0   1/2    0    0   0 ]; % 5 

% Verificação se a matriz está bem
sum(T)
T>=0 & T<=1;

%% B)
%iterações
n = 15;

Tn = T^n;

% Diagonal principal (probabilidades de retorno)
diagonal = diag(Tn);

% Determinar o estado mais provável de retorno
[prob, estado] = max(diagonal);

%% C) 

% Matriz Q
Q = T(1:3,1:3);

% Matriz fundamental F = inv(I - Q)
F = inv(eye(length(Q)) - Q);


% Tempo esperado para absorção
t_absor = sum(F, 2);

% Identificar o estado com maior tempo esperado
[iter, first_state] = max(t_absor);

iter
first_state

%% D)

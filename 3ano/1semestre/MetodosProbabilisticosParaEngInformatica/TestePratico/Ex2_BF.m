%% Ex2 - Bloom Filter
% a)
tamanho = 900;     % tamanho
k = 4;      % n funções de hash

% key é um vetor de caracteres

%out = kHashValues(key, k);

BF = inicializarBF(tamanho);

U1 = conjunto1;
U2 = conjunto2;

% Ocorrencia de aeronave em conjunto1
cont0 = 0;
for i = 1:length(U1)
    if U1{i} == "aeronave"
        cont0 = cont0 + 1;
    end
end
cont0


% Adicionar palavras de U1 ao Bloom Filter
for i = 1:length(U1)
    BF = adicionarElemento(U1{i}, BF, k);
end

% Verificar a pertença de aeronave em BF
cont = 0;
for i = 1:length(U1)
    pertence = verificarPertenca('aeronave', BF, k);
    if pertence
        cont = cont + 1;
    end
end
cont


%% b) Verificar falsos positivo em conjunto 2
fps = 0;
for i = 1:length(U2)
    pertence = verificarPertenca(U2{i}, BF, k);
    if pertence
        fps = fps + 1;
    end
end

% Falsos positivos
percent_fps = (fps / length(U2)) * 100;
fps
percent_fps
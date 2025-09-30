function BF = adicionarElemento(elemento, BF, k)
    % Adiciona um elemento ao Bloom Filter
    % elemento: O elemento a ser inserido
    % BF: O vetor Bloom Filter (array uint8)
    % k: Número de funções de dispersão utilizadas
    
    n = length(BF); % Número de posições do Bloom Filter
    
    chave = elemento; % inicializa chave

    for i = 1:k
        % Gerar índice usando a função hash
        indice = string2hash(chave);
        %fprintf(1, "Chave(%d) = %s\n", i, chave);

        chave = [chave num2str(i)]; % aumentando a chave

        indice = mod(indice, n) + 1;
        
        % Marcar o índice no Bloom Filter
        BF(indice) = 1; % Atualiza o bit correspondente
    end
end

%NÃO É USADA, é só um exemplo
% Função auxiliar para fazer o Hash
%function idx = gerarIndiceHash(elemento, i, n)
%    hash = sum(double(elemento)) + i^2;
    
    % Garantir que o índice esteja no intervalo [1, n]
%    idx = mod(hash, n) + 1;
%end

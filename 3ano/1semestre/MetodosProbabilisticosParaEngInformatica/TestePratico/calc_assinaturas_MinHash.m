function signatures = calc_assinaturas_MinHash(Set, k, R, p)
    % Entrada:
    %   Set - Células contendo os conjuntos de filmes para cada utilizador
    %   k - Número de funções de dispersão (hash)
    % Saída:
    %   J - Matriz aproximada de distâncias de Jaccard usando MinHash
    
    Nu = length(Set); % Número de utilizadores
    J = zeros(Nu, Nu); % Inicializa a matriz de distâncias
    
    % Inicializa a matriz de assinaturas
    signatures = inf(k, Nu); % k linhas (hashcodes), Nu colunas (utilizadores)
    
    % Para cada função de hash
    for fh = 1:k
        % Gerar um valor aleatório para hf (pode ser um valor fixo ou aleatório
        
        % Para cada utilizador
        for c = 1:Nu
            conjunto = Set{c}; % Conjunto de filmes do utilizador
            hash_codes = zeros(length(conjunto), 1); % Array para armazenar os hashcodes
            
            % Para cada filme do conjunto, aplica a função de hash
            for e = 1:length(conjunto)
                elemento = conjunto(e); %conjunto de chars, ie, shingles

                hc = hash_function_shingle(elemento, fh, R, p); % Calcula o hash para o filme
                
                hash_codes(e) = hc;
            end
            
            % Armazena o valor mínimo do hashcode (MinHash)
            signatures(fh, c) = min(hash_codes);
        end
    end
    
    % Calcula a matriz aproximada de distâncias de Jaccard
    for n1 = 1:Nu
        for n2 = n1+1:Nu
            % Comparar as assinaturas para os utilizadores n1 e n2
            assinatura1 = signatures(:, n1);
            assinatura2 = signatures(:, n2);
            
            % Calcula a similaridade baseada no número de hashcodes iguais
            matches = sum(assinatura1 == assinatura2);
            simil = matches / k; % Similaridade Jaccard aproximada
            J(n1, n2) = 1 - simil; % Distância de Jaccard é 1 - Similaridade
            J(n2, n1) = J(n1, n2); % Simetria
        end
    end
end

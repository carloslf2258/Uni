function pertenca = verificarPertenca(elemento, BF, k)
    %Verifica se um elemento pertence ao Bloom Filter
    
    chave = elemento;
    for i = 1:k
        % aplicar funçao de hash ao elemento a obter indice para o array
        indice = string2hash(chave);

        %fprintf(1, "chave(%d) = %s\n", i, chave);
        chave = [chave num2str(i)];

        indice = mod(indice, length(BF)) + 1;

        if indice == 0
            indice = length(BF); % ajuste para que o índice seja no intervalo [1, n]
        end

        bits(i) = BF(indice);
    end

    pertenca = all(bits == 1);
end
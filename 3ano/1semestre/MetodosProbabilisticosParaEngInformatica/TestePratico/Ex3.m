%% Ex3
clear all
tabela = readcell("interesses.xls", "NumHeaderLines", 1);

Nfrases = 4;
k = 3;

MinHash = zeros(Nfrases, k);

for FraseN=1:Nfrases
    Frase = fraseCell{1,FraseN};
    for hashFuncN=1:k
        hashArr=zeros(1,strlength(Frase)-shinglesize+1);
        for ShingleN=1:strlength(Frase)-shinglesize+1
            key = char(Frase(ShingleN:(ShingleN+shinglesize-1)));
            hashArr(ShingleN) = hf1(key,hashFuncN)+1;
        end
        MinHash(FraseN,hashFuncN) = min(hashArr);
    end
end

Distance = zeros(4,4);

for n1=1:length(MinHash)
    for n2=n1:length(MinHash)
        isMatch = MinHash(n1,:)==MinHash(n2,:);
        Distance(n1,n2) = 1-sum(isMatch)/length(isMatch);
    end
end
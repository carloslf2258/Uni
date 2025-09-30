package aula12.Ex1;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

public class FileWordsCounter {

    public static void main(String[] args) {
        // caminho do ficheiro
        String nomeArquivo = "src\\aula12\\A_cidade_e_as_serras.txt";
        
        try {
            int totalPalavras = 0;
            Set<String> palavrasDiferentes = new HashSet<>();

            BufferedReader reader = new BufferedReader(new FileReader(nomeArquivo));
            String linha = reader.readLine();

            while (linha != null) {
                // Dividir por espaços
                String[] palavras = linha.split("\\s+");
                
                for (String palavra : palavras) {
                    if (!palavra.isEmpty()) {
                        totalPalavras++;
                        palavrasDiferentes.add(palavra);
                    }
                }
            }

            reader.close();

            System.out.println("Número Total de Palavras: " + totalPalavras);
            System.out.println("Número de Diferentes Palavras: " + palavrasDiferentes.size());

        } catch (IOException e) {
            System.err.println("Erro ao ler o arquivo: " + e.getMessage());
        }
    }
}

package aula12.Ex2;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import java.util.TreeMap;

public class FileWordsCounter_abc {
    public static void main(String[] args) {
        // caminho do ficheiro
        String nomeArquivo = "src\\aula12\\A_cidade_e_as_serras.txt";
        
        // TRY PARA LER O FICHEIRO E ORGANIZAR DATA
        try {
            Map<Character, TreeMap<String, Integer>> wordGroups = new TreeMap<>();


            BufferedReader reader = new BufferedReader(new FileReader(nomeArquivo));
            String linha = reader.readLine();

            while (linha != null) {
                // Dividir por espaços
                String[] palavras = linha.split("[\\s.,:';?!\\-*{}=+&/()\\[\\]”“\"]+");
                
                for (String palavra : palavras) {
                    if (!palavra.isEmpty() &&  palavra.length() >= 3) {
                        String palavraLowerCase = palavra.toLowerCase();
                        char initial = palavraLowerCase.charAt(0);
                        
                   //     System.out.println("Here1");

                        if (!wordGroups.containsKey(initial)) {
                            wordGroups.put(initial, new TreeMap<>());
                    //        System.out.println("Here2");
                        }
                    //    System.out.println("Here3");
                        TreeMap<String, Integer> wordCount = wordGroups.get(initial);
                        wordCount.put(palavraLowerCase, wordCount.getOrDefault(palavraLowerCase, 0) + 1);
                    }
                }
                linha = reader.readLine();
            }
            reader.close();

            // Caminho do arquivo de saída
            String nomeArquivoSaida = "src\\aula12\\output.txt";

            //TRY PARA DAR OUTPUT NUM NOVO FICHEIRO
            try (PrintWriter writer = new PrintWriter(new FileWriter(nomeArquivoSaida))) {
                for (char initial : wordGroups.keySet()) {
                    //Verificar se initial é uma letra ou um simbolo (como #_)
                    if (Character.isLetter(initial)) { // Verificar si el carácter es una letra
                        writer.write(initial + ": ");
                        TreeMap<String, Integer> wordCount = wordGroups.get(initial);
            
                        for (Map.Entry<String, Integer> entry : wordCount.entrySet()) {
                            String palavra = entry.getKey();
                            int ocorrencias = entry.getValue();
                            writer.write(palavra + ", " + ocorrencias + "; ");
                        }
                        writer.println();
                    }
                }
            
                System.out.println("Estrutura de palavras gravada no arquivo: " + nomeArquivoSaida);
                writer.close();
            

            } catch (IOException e) {
                System.err.println("Erro ao gravar o ficheiro novo: " + e.getMessage());
            }
        
        } catch (IOException e) {
            System.err.println("Erro ao ler o arquivo: " + e.getMessage());
        }
    }
}

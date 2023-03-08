package aula03;

import java.util.Scanner;


public class Ex4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double notaP, notaT;

        //pergunta nº de alunos da turma
        System.out.print("Quantos alunos na turma? ");
        int numAlunos = sc.nextInt();

        //tabela de notas
        double[][] notas = new double[numAlunos][2];

        for(int i = 0; i < numAlunos; i++) {
    //        System.out.printf("Entre com as notas do aluno (NotaT NotaP): ", i+1);
            
            
            //leitura das notas (validadas) para a tabela
            do {
                System.out.printf("Insira a componente teórica do aluno " + i + ": ");
                notas[i][0] = sc.nextDouble();
                notaT = notas[i][0];
            } while (notaT < 0 || notaT > 20);
            
            do {
                System.out.print("Insira a componente prática: ");
                notas[i][1] = sc.nextDouble();
                notaP = notas[i][1];
            } while (notaP < 0 || notaP > 20); 
        }

        //Print da tabela
        System.out.println("NotaT NotaP Pauta");
        for (int i = 0; i < numAlunos; i++) {
            notaT = notas[i][0];
            notaP = notas[i][1];

            int notaFinal = UserInput.media_notasPeT(notaT, notaP);
            System.out.printf("%4.1f %5.1f %3d \n", notaT, notaP, notaFinal);
        }

        

        
    
        





    sc.close();
    }
}

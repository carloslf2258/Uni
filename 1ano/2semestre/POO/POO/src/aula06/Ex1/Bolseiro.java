package aula06.Ex1;

import aula05.DateYMD;

public class Bolseiro extends Aluno{

    //ProfO == Prof. Orientador
    private Professor ProfO;
    private int bolsa;
    //Construtor de Bolseiro
    public Bolseiro(String n, int cc, DateYMD DataNasc, DateYMD DataInsc, Professor ProfO, int bolsa){
        super(n, cc, DataNasc, DataInsc);
        this.ProfO = ProfO;
        this.bolsa = bolsa;
    }

    public Bolseiro(String n, int cc, DateYMD DataNasc, Professor ProfO, int bolsa) {
        this(n, cc, DataNasc, null, ProfO, bolsa);
    }

    //Métodos gets
    public Professor getOrientador() {
        return ProfO;
    }
    
    public int getBolsa() {
        return bolsa;
    }
    //Método set para mudar Bolsa
    public void setBolsa(int novaBolsa) {
        this.bolsa = novaBolsa;
    }
    public String toString(){
        return String.format("Prof.Orientador: %s, Bolsa: %d", getOrientador(), getBolsa());
    }
}
    /*EXEMPLO
    Bolseiro b = new Bolseiro("João", 123456, new DateYMD(2000, 1, 1), "Maria", 500.0);
    b.setBolsa(600.0);
    System.out.println("O novo valor da bolsa do bolseiro é: " + b.getBolsa()); */
    


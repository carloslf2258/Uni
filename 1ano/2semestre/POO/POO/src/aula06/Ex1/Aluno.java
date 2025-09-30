package aula06.Ex1;

import aula05.DateYMD;


public class Aluno extends Pessoa {

    //Valores para contrutor
    
    private int nMec;
    private DateYMD iDataInsc;
    protected static int next_Nmec = 100;

    //Contrutor Aluno
    public Aluno(String n, int cc, DateYMD iDataNasc, DateYMD iDataInsc){
        super(n, cc, iDataNasc);
        if (valid_Aluno(n, cc, iDataNasc, iDataInsc)) {
            nMec = next_Nmec;
            this.iDataInsc = new DateYMD();
            next_Nmec++;
        } else {
            throw new IllegalArgumentException("Dados de aluno inválidos");
        }
    }

    public Aluno(String n, int cc, DateYMD iDataNasc) {
        this(n, cc, iDataNasc, null);
    }

    //Numero Mecanográfico
    public int getNMec() {return nMec; } // retorna o número mecanográfico

    //Data Inscrição
    public DateYMD getiDataInsc() {return iDataInsc; }


    //Validar
    public boolean valid_Aluno(String n, int cc, DateYMD iDataNasc, DateYMD iDataInsc){
        return ((n != "" && !n.isEmpty()) && (cc > 0 && cc < 1e9));
    }


    //Print
    @Override
    public String toString(){
        return super.toString() + "; nº Mecanografico: " + getNMec() + "; Data de Inscrição: " +getiDataInsc();
    }
  /* TESTE   
  public static void main(String[] args) {
        Aluno al = new Aluno ("Andreia Melo", 9855678,
        new DateYMD(18, 7, 1990), new DateYMD(1, 9, 2018));
        System.out.println(al.toString());
    }*/
}

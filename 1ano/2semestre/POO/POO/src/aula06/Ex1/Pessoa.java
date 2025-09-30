package aula06.Ex1;

import aula05.DateYMD;

public class Pessoa {

    private String nome;
    private int cc;
    private DateYMD dataNasc;
    
    // CONSTRUTOR DE PESSOA
    public Pessoa(String nome, int cc, DateYMD dataNasc){
        if (!valid_Pessoa(nome, cc, dataNasc)){
            System.out.println("Dados de pessoa inválidos");
        } else{
            this.nome = nome;
            this.cc = cc;
            this.dataNasc = dataNasc;
        }
    }
    //Métodos get de Pessoa
    public String getName() {return nome; }
    public int getCC() {return cc; }
    public DateYMD getDataNasc() {return dataNasc;}
    
    //Validar Pessoa
    public boolean valid_Pessoa(String nome, int cc, DateYMD dataNasc){
        return ((!nome.matches("[0-9]+") && nome != null && !nome.isEmpty()) && ((cc > 0 && cc < 1e9 ) && String.valueOf(cc).matches("[0-9]+")) && dataNasc != null);
    }

    //SETTERS (3)
    //Mudar data de nascimento
    public void setBirthDate(DateYMD dataNasc) {
        if (dataNasc == null)
            throw new IllegalArgumentException("Data inválida");
        this.dataNasc = dataNasc;
    }
    //Mudar CC
    public void setCC(int cc) {
        if (String.valueOf(cc).length() != 8)
            throw new IllegalArgumentException("CC tem de ter 8 digitos");
        this.cc = cc;
    }
    //Mudar nome
    public void setName(String nome) {
        if (nome == null || nome.isEmpty())
            throw new IllegalArgumentException("Nome inválido");
        this.nome = nome;
    }

    @Override
    public String toString(){
        return String.format("%s ; CC: %d; Data de Nascimento: %s", this.getName(),this.getCC(), this.getDataNasc());
    }

}




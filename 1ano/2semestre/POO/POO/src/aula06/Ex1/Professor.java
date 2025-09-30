package aula06.Ex1;

import aula05.DateYMD;

public class Professor extends Pessoa {
    private String category;
    private String dep;
    public Professor(String n, int cc, DateYMD DataNasc, String category, String dep){
        super(n, cc, DataNasc);
        if (valid_Professor(cc, category, dep)){
            this.category = category;
            this.dep = dep;
        } else {
            throw new IllegalArgumentException("Dados de professor inválidos");
        }
        
    }

    //Métodos gets
    public String getCategory(){
        return category;
    }
    public String getDep(){
        return dep;
    }

    //Devolve false se a categoria for diferente das 3 palavras ou departamento seja negativo, de resto devolve true
    //Também verifica o CC
    public boolean valid_Professor(int cc, String category, String dep){
        //Categoria deve ser igual e dep não pode estar vazio
        return (category == "Auxiliar" || category == "Associado" || category == "Catedrádico") && dep != "" && cc > 0;
    }


    @Override
    public String toString(){
        return (super.toString() + " Categoria: " + getCategory() + " Departamento: " + getDep());
    }
}

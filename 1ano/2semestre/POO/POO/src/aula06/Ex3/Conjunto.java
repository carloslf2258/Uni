package aula06.Ex3;

public class Conjunto {
    private int[] vector;

    // Constructores
    
    public Conjunto() { //Conjunto vazio
        this.vector = new int[0];
    }
    public Conjunto(int size) { //Conjunto de tamanho size
        this.vector = new int[size];
    }
    public Conjunto(int[] vector) { //Conjunto a partir de um array (vector) de números int
        this.vector = vector;
    }
    

    // Getter
    public int[] getConjunto() {
        return vector;
    }
    //Tamanho do vector
    public int size() {
        return this.vector.length;
    }

    //Ver se um conjunto contém um valor específico
    public boolean contains(int value) {
        for (int n : this.vector)
            if (n == value)
                return true;
        return false;
    }
    //Contar nº de vezes que um valor está presente num conjunto
    public int count(int value) {
        int count = 0;
        for (int n : this.vector)
            if (n == value)
                count++;
        return count;
    }
    //Inserir um valor no vector
    public void insert(int value) {
        if (this.contains(value)) return;
        int[] aux = new int[this.size()+1];
        System.arraycopy(this.vector, 0, aux, 0, this.size());
        aux[this.size()] = value;
        this.vector = aux;
    }
    //Retirar um valor no vector
    public void remove(int value) {
        int[] aux = new int[this.size()-this.count(value)];
        int i = 0;
        for (int n : this.vector) {
            if (n == value) continue; //Omite a atribuição quando aparece o valor no vector
            aux[i] = n;
            i++;
        }
        this.vector = aux;
    }

    public void empty() {
        this.vector = new int[0];
    }

    // União de vetores
    public Conjunto add(Conjunto secondVector) {
        Conjunto result = new Conjunto();
        for (int n : this.vector)
            if (!result.contains(n))
                result.insert(n);
        for (int n : secondVector.vector)
            if (!result.contains(n))
                result.insert(n);
        return result;
    }
    //Subtração de vetores
    public Conjunto subtract(Conjunto secondVector) {
        Conjunto result = new Conjunto();
        for (int n : this.vector)
            if (!result.contains(n) && !secondVector.contains(n))
                result.insert(n);
        return result;
    }
    //Interseção/valores comuns entre vetores
    public Conjunto intersect(Conjunto secondVector) {
        Conjunto result = new Conjunto();
        for (int n : this.vector)
            if (!result.contains(n) && secondVector.contains(n))
                result.insert(n);
        return result;
    }

    @Override
    public String toString() {
        StringBuilder result = new StringBuilder();
        for (int n : this.vector)
            result.append(String.format("%d ", n));
        return this.size() > 0 ? result.substring(0, result.length()-1) : result.toString();
    }


}

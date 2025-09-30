package aula08.Ex3.Interfaces;

public interface IProduto {
    String getNome();
    void setPreco(double preco);
    double getPreco();
    int stock();
    void adicionarStock(int amount);
    void removerStock(int amount);
}
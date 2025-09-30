package aula08.Ex3;

import aula08.Ex3.Interfaces.IProduto;

public class Produto implements IProduto {
    private final String nome;
    private double preco;
    private int stock = 0;

    public Produto(String nome, double preco, int stock) {
        this.nome = nome;
        this.setPreco(preco);
        this.adicionarStock(stock);
    }

    @Override
    public String getNome() {
        return this.nome;
    }

    @Override
    public double getPreco() {
        return this.preco;
    }

    @Override
    public void setPreco(double preco) {
        if (preco <= 0)
            throw new IllegalArgumentException("Price must be positive.");
        this.preco = preco;
    }

    @Override
    public int stock() {
        return this.stock;
    }

    @Override
    public void adicionarStock(int quantidade) {
        this.stock += quantidade;
    }

    @Override
    public void removerStock(int quantidade) {
        this.stock -= quantidade;
    }

    @Override
    public String toString() {
        return String.format("Product: %s\n\tStock: %d\n\tPrice: %.2f\n", this.getNome(), this.stock(), this.getPreco());
    }
}
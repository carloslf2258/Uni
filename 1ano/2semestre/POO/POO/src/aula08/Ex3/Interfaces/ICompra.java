package aula08.Ex3.Interfaces;

import aula08.Ex3.Produto;

public interface ICompra {
    void adicionarProduto(Produto produto, int quantidade);
    void listarProdutos();
    double calcularTotal();
}
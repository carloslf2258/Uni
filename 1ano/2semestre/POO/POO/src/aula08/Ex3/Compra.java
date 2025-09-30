package aula08.Ex3;

import aula08.Ex3.Interfaces.ICompra;
import java.util.LinkedHashMap;

public class Compra implements ICompra {
    private final LinkedHashMap<Produto, Integer> produtos = new LinkedHashMap<>();

    @Override
    public void adicionarProduto(Produto produto, int quantidade) {
        if (produto.stock() < quantidade)
        quantidade = produto.stock();
        produto.removerStock(quantidade);
        if (produtos.containsKey(produto)) {
            int currentAmount = produtos.get(produto);
            produtos.replace(produto, currentAmount+quantidade);
        } else
            produtos.put(produto, quantidade);
    }

    @Override
    public void listarProdutos() {
        for (Produto produto : produtos.keySet()) {
            int produtoAmount = produtos.get(produto);
            System.out.printf("produto: %s\n\tAmount: %d\n\tPrice: %.2f\n", produto.getNome(), produtoAmount, produtoAmount * produto.getPreco());
        }
    }

    @Override
    public double calcularTotal() {
        double total = 0;
        for (Produto produto : produtos.keySet())
            total += produto.getPreco() * produtos.get(produto);
        return total;
    }
}
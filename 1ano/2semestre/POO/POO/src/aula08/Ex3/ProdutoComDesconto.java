package aula08.Ex3;

public class ProdutoComDesconto extends Produto {
    private double descontoPercentagem;

    public ProdutoComDesconto(String nome, double preco, int stock, double descontoPercentagem) {
        super(nome, preco, stock);
        this.descontoPercentagem = descontoPercentagem;
    }

    public double getDescontoPercentagem() {
        return this.descontoPercentagem;
    }

    public void setDescontoPercentagem(double descontoPercentagem) {
        this.descontoPercentagem = descontoPercentagem;
    }

    @Override
    public double getPreco() {
        return super.getPreco() * (1 - descontoPercentagem / 100);
    }
}

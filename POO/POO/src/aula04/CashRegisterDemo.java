package aula04;

class Product {
    private String name;
    private double price;
    private int quantity;

    public Product(String name, double price, int quantity) {
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    public double getTotalValue() {
        return price * quantity;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public int  getQuantity() {
        return quantity;
    }
}


class CashRegister {
    
    private Product[] products;
    private int count;

    public CashRegister(){
        //Vetor com 10 espaços porque não são muitos produtos mas fica espaço
        this.products = new Product[10];
        this.count = 0;
    }

    public void addProduct(Product product) {
        //Adiciona product na posição do vetor count
        this.products[count] = product;
        //Cada vez que é chamada esta função count aumenta 1, a partir de 0
        this.count++;
    }

    public double getTotalValue() {
        double total = 0;
        for (int i = 0; i < count; i++) {
        //É chamada a função getTotalValue da classe Product (acima) para completar esta função
            total += products[i].getTotalValue();
        }
        return total;
    }
    
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format("%15s %10s %10s %8s\n", "Product", "Price", "Quantity", "Total"));
        for (int i = 0; i < count; i++) {
            sb.append(String.format("%15s %10.2f %10d %8.2f\n", products[i].getName(), 
                products[i].getPrice(), products[i].getQuantity(), products[i].getTotalValue()));
        }
        sb.append(String.format("\nTotal value: %.2f", getTotalValue()));
        return sb.toString();
    }

}

public class CashRegisterDemo {

    public static void main(String[] args) {

        // Cria e adiciona 5 produtos
        CashRegister cr = new CashRegister();
        cr.addProduct(new Product("Book", 9.99, 3));
        cr.addProduct(new Product("Pen", 1.99, 10));
        cr.addProduct(new Product("Headphones", 29.99, 2));
        cr.addProduct(new Product("Notebook", 19.99, 5));
        cr.addProduct(new Product("Phone case", 5.99, 1));
        
        // Lista do conteúdo e valor total
        System.out.println(cr);

    }
}
package mini_avaliação2;

public class StandardOrderCostCalculator implements OrderCostCalculator {

    @Override
    public double calculateOrderCost(Order order) {
        double orderTotal = calculateOrderTotal(order);
        
        if (order.getExpress()) {
        // 30% de acréscimo para pedidos express
            return orderTotal + (orderTotal * 0.3);
        } else {
            return orderTotal;
        }
    }
    
    private double calculateOrderTotal(Order order) {
        Item item = order.getItems();
        return item.getCost();
    }
}


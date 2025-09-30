package mini_avaliação2;

import java.util.Iterator;
import java.util.LinkedList;

public class OrderManager {
        private final LinkedList<Order> orders = new LinkedList<>();
    
        public void addOrder(Order order) {
            orders.add(order);
        }
    
        public void removeOrder(int id) {
            for (Iterator<Order> iterator = orders.iterator(); iterator.hasNext();) {
                Order order = iterator.next();
                if (order.getId() == id) {
                    iterator.remove();
                }
            }
            
        }
    
        public Order searchOrder(int id) {
            for (Iterator<Order> iterator = orders.iterator(); iterator.hasNext();) {
                Order order = iterator.next();
                if (order.getId() == id) {
                    return order;
                }
            }
            return null;
        }
    
        public double calculateOrderCost(int id) {
            Order order = searchOrder(id);
            StandardOrderCostCalculator standCalc = new StandardOrderCostCalculator();
            if (order != null) {
                return standCalc.calculateOrderCost(order);
            }
            throw new IllegalArgumentException("Order not found by ID: " + id);
        }
        
        public void printAllOrders() {
            for (Order order : orders) {
                System.out.println(order);
            }
        }
    
}

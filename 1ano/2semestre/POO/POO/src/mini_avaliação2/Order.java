package mini_avaliação2;

import java.time.LocalDate;

public class Order {
    private int id;
    private Item[] items;
    private String shop;
    private String client;
    private LocalDate date;
    private Boolean express;

    //CONSTRUTOR
    public Order(int id, Item[] items, String shop, String client, LocalDate date, Boolean express) {
        this.id = id;
        this.items = items;
        this.shop = shop;
        this.client = client;
        this.date = date;
        this.express = express;
    }

    //GETTERS AND SETTERS
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public Item[] getItems() {
        return items;
    }
    public void setItems(Item[] items) {
        this.items = items;
    }
    public String getShop() {
        return shop;
    }
    public void setShop(String shop) {
        this.shop = shop;
    }
    public String getClient() {
        return client;
    }
    public void setClient(String client) {
        this.client = client;
    }
    public Boolean getExpress() {
        return express;
    }
    public void setExpress(Boolean express) {
        this.express = express;
    }


    @Override
    public String toString() {
        return "Order [id=" + id + ", items=" + items + ", shop=" + shop + ", client=" + client
                + ", date=" + date + ", express=" + express + "]";
    }







}

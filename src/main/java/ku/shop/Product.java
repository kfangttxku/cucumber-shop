package ku.shop;

public class Product {
    private String name;
    private double price;
    private int quantity;

    public Product(String name, double price, int quantity) {
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    public String getName() {
        return name;
    }
    public double getPrice() {
        return price;
    }
    public int getQuantity() {
        return quantity;
    }

    public void setName(String name) {
        this.name = name;
    }
    public void setPrice(double price) {
        if (price <= 0)
            throw new IllegalArgumentException("Price must be positive");
        this.price = price;
    }
    public void setQuantity(int quantity) {
        if (quantity < 0)
            throw new IllegalArgumentException("Quantity must be positive");
        this.quantity = quantity;
    }
}

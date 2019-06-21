package products;

import java.util.ArrayList;

public class ProductDB {
    ArrayList<Product> products=new ArrayList<>();

    public ProductDB() {
    }

    public ProductDB(ArrayList<Product> products) {
        this.products = products;
    }

    public ArrayList<Product> getProducts() {
        return products;
    }

    public void setProducts(ArrayList<Product> products) {
        this.products = products;
    }

    public void addProduct(Product product){
        products.add(product);
    }

    public Double calculateTotalPrice(){
        double totalPrice=0;
        for(Product p:products)
            totalPrice+=p.calculateTotalPrice();
        return totalPrice;
    }
}

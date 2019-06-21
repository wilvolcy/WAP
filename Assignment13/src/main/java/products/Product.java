package products;

import java.util.Objects;

public class Product {
    //private String productId;
    private String productName;
    private Double productPrice;
    private Integer productQuantity;
    //private String imageLocation;

    public Product() {
    }

    public Product(String productName, String productPrice, String productQuantity) {
        //this.productId = Integer.toString((int)Math.random()*100); //generated
        this.productQuantity = Integer.parseInt(productQuantity);
        this.productName = productName;
        this.productPrice = Double.parseDouble(productPrice);
    }

//    public String getProductId() {
//        return productId;
//    }
//
//    public void setProductId(String productId) {
//        this.productId = productId;
//    }

    public Integer getProductQuantity() {
        return productQuantity;
    }

    public void setProductQuantity(Integer productQuantity) {
        this.productQuantity = productQuantity;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

//    public String getImageLocation() {
//        return imageLocation;
//    }
//
//    public void setImageLocation(String imageLocation) {
//        this.imageLocation = imageLocation;
//    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return productName.equals(product.productName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(productName);
    }

    public double calculateTotalPrice(){
        return this.productPrice* this.productQuantity;
    }

    @Override
    public String toString(){
        return "<hr width='25%'/>Product Name: "+this.productName+"<br/>Product Quantity: "+this.productQuantity+
                "<br/>Product Price: "+this.productPrice+"<br/>Total Price: "+calculateTotalPrice();
    }
}

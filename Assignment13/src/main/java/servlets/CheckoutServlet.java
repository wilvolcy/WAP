package servlets;

import products.Product;
import products.ProductDB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        ProductDB productDb=new ProductDB();

        String chocoCheck=req.getParameter("addChocolate");
        String flowerCheck=req.getParameter("addFlower");
        String shoeCheck=req.getParameter("addShoe");

        if(chocoCheck!=null && chocoCheck.equals("on")){
            productDb.addProduct(new Product(req.getParameter("chocolate"),req.getParameter("chocolatePrice"),req.getParameter("chocolateQuantity")));
        }
        if(flowerCheck!=null && flowerCheck.equals("on")){
            productDb.addProduct(new Product(req.getParameter("flower"),req.getParameter("flowerPrice"),req.getParameter("flowerQuantity")));
        }
        if(shoeCheck!=null && shoeCheck.equals("on")){
            productDb.addProduct(new Product(req.getParameter("shoe"),req.getParameter("shoePrice"),req.getParameter("shoeQuantity")));
        }

        StringBuilder checkoutProducts=new StringBuilder();
        for(Product p:productDb.getProducts())
            checkoutProducts.append(p.toString());
        session.setAttribute("checkoutProducts",checkoutProducts);
        session.setAttribute("totalPrice",productDb.calculateTotalPrice());

        resp.sendRedirect("/checkout.jsp");
    }
}

<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 6/11/2019
  Time: 9:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Home</title>
    <link href="css/items.css" rel="stylesheet" type="text/css">
    <script src="js/items.js"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>
  </head>
  <body>
    <div class="main-container">

        <form method="get" action="/login">
          <div class="nav">
            <span>Welcome <% String userName=(String)session.getAttribute("userName");%><%=userName==null?"":userName%></span>
            <button id="logout" type="submit" name="logout">Logout</button>
          </div>
        </form>

        <form method="post" action="/checkout">
        <div class="items">
          <div class="item">
            <label for="shoe">Name: <input id="shoe" name="shoe" value="GoldStart Shoes" readonly></label>
            <label for="shoePrice">Price: $<input id="shoePrice" name="shoePrice" type="number" value="99.00" readonly></label>
            <label for="shoeQuantity">Quantity: <input id="shoeQuantity" name="shoeQuantity" type="number" min="1" step="1" max="10" value="1"></label>
            <label><input type="checkbox" name="addShoe"> Add to Cart</label>
            <img src="images/18913.jfif" alt="shoes">
          </div>
          <div class="item">
            <label for="flower">Name: <input id="flower" name="flower" value="Red Rose Bouquet" readonly></label>
            <label for="flowerPrice">Price: $<input id="flowerPrice" name="flowerPrice" type="number" value="9.00" readonly></label>
            <label for="flowerQuantity">Quantity: <input id="flowerQuantity" name="flowerQuantity" type="number" min="1" step="1" max="10" value="1"></label>
            <label><input type="checkbox" name="addFlower"> Add to Cart</label>
            <img src="images/4592.jfif" alt="shoes">
          </div>
          <div class="item">
            <label for="chocolate">Name: <input id="chocolate" name="chocolate" value="Cadbury BournVille" readonly></label>
            <label for="chocolatePrice">Price: $<input id="chocolatePrice" name="chocolatePrice" type="number" value="2.00" readonly></label>
            <label for="chocolateQuantity">Quantity: <input id="chocolateQuantity" name="chocolateQuantity" type="number" min="1" step="1" max="10" value="1"></label>
            <label><input type="checkbox" name="addChocolate"> Add to Cart</label>
            <img src="images/778.jfif" alt="shoes">
          </div>
          <div><button type="submit" name="Checkout">Checkout</button></div>
        </div>

      </form>
    </div>
  </body>
</html>

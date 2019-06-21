<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 6/13/2019
  Time: 5:24 PM
  To change this template use File | Settings | File Templates.
--%>
  <%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <!DOCTYPE html>
  <html lang="en">
  <head>
      <title>Checkout</title>
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

    <div>
        <span>Checkout Summary:</span>
        <% String checkoutProducts=session.getAttribute("checkoutProducts")==null?"":session.getAttribute("checkoutProducts").toString();%>
        <%=checkoutProducts%>
    </div>
<hr/>
    <div>
        <span>Total Price</span>
        <% String totalPrice=session.getAttribute("totalPrice")==null?"":session.getAttribute("totalPrice").toString();%>
        <%=totalPrice%>
    </div>
  </div>
  </body>
  </html>




  </body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 6/11/2019
  Time: 9:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link href="style/bootstrap.css" type="text/css" rel="stylesheet">

    <title>Login</title>
  </head>
  <body>
    <div>
      <form method="post" action="/login">
        <p>
            <label class="form-control">UserName:</label><input class="form-control"  type="text" autofocus name="userName" value="${cookie['userName'].getValue()}"/>
        </p>
        <p>
            <label class="form-control">Password:</label><input class="form-control"  type="password" name="password"/>
        </p>
        <p class="message">
          <% String errorMessage=session.getAttribute("login-message")==null?"":session.getAttribute("login-message").toString();%>
          <%=errorMessage%>
        </p>
        <label class="form-control">Remember Me <input type="checkbox" name="remember"></label>
        <button type="submit" value="login" class="btn">Login</button>
      </form>
      user: admin,
      pass : 123
      <br>
      user : test,
      pass :123
    </div>
  </body>
</html>

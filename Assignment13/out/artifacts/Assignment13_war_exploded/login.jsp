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
<%--    <link href="login.css" type="text/css" rel="stylesheet"/>--%>
  <style type="text/css">
    .message{
      color:red;
      font-size: 10px;
    }
    div{

      text-align: center;

      margin: auto;
      width:200px;
      height: 200px;
      border:2px solid grey;
      border-radius: 25% 0 25% 0;
      padding: 5px;
      line-height: 1.2;
      background-color: aquamarine;

    }

  </style>
    <title>Login</title>
  </head>
  <body>
    <div>
      <form method="post" action="/login">
        <p>
            <label>UserName:</label><input type="text" autofocus name="userName" value="${cookie['userName'].getValue()}"/>
        </p>
        <p>
            <label>Password:</label><input type="password" name="password"/>
        </p>
        <p class="message">
          <% String errorMessage=session.getAttribute("login-message")==null?"":session.getAttribute("login-message").toString();%>
          <%=errorMessage%>
        </p>
        <label>Remember Me <input type="checkbox" name="remember"></label>
        <button type="submit" value="login">Login</button>
      </form>
    </div>
  </body>
</html>

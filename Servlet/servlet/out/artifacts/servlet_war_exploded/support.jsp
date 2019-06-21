<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 6/11/2019
  Time: 2:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Support</title>
  </head>
  <body>
  <% String name=(String)request.getAttribute("userName");%>
  <% String email=(String)request.getAttribute("email");%>
  <% String supportEmail=(String)request.getAttribute("supportEmail");%>
  <% String ticketId=(String)request.getAttribute("ticketId");%>
    <span>
      Thank you! <strong><%=name%></strong> for contacting us.<br/>
      You should receive reply from us with in 24 hrs in your email address <strong><%=email%></strong>.<br/>
      Let us know in our support email <strong><%=supportEmail%></strong> if you don’t receive reply within 24 hrs.<br/>
      Please be sure to attach your reference <strong><%=ticketId%></strong> in your email.
    </span>
  </body>
</html>

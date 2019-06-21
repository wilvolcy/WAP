<%--
  Created by IntelliJ IDEA.
  User: Volcy Jean Wilbert
  Date: 6/21/2019
  Time: 9:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>Support</title>
</head>
<body>
<form method="post" action="/support">
  <div><label>a. Name</label><input type="text" name="name"/></div>
  <div><label>b. Email Address</label><input type="email" name="email"/></div>
  <div><label>c. Problem</label><input type="text" name="problem"/></div>
  <div><label>d. Problem Description</label>
    <textarea cols="100" rows="5" name="description"></textarea></div>
  <div><button type="submit" value="Help">Help</button></div>
</form>
</body>
</html>

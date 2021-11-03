<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 11/3/2021
  Time: 10:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Discount</title>
  </head>
  <body>
  <h1>Product Discount Calculator</h1>
  <form action="/discount" method="post">
    <div>
      <h3>Product Description</h3>
      <input type="text" name="description">
    </div>
    <div>
      <h3>List Price</h3>
      <input type="text" name="price">
    </div>
    <div>
      <h3>Discount Percent</h3>
      <input type="text" name="percent">
    </div>
    <div>
      <br>
      <input type="submit" value="Cal">
    </div>
  </form>
  </body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 11/3/2021
  Time: 8:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Currency Converter</title>
<%--    <link rel="stylesheet" href="/">--%>
  </head>
  <body>
  <h2>Currency Converter</h2>
  <form action="/convert" method="post">
    <label>Rate: </label> <br>
    <input type="text" name="rate" placeholder="RATE"><br>
    <label>USD: </label><br>
    <input type="text" name="usd" placeholder="USD"><br>
    <input type="submit" id="submit" value="Converter">
  </form>
  </body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 11/4/2021
  Time: 5:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Convert</title>
</head>
<body>
<%
    float rate = Float.parseFloat(request.getParameter("rate"));
    float usd = Float.parseFloat(request.getParameter("usd"));

    float vnd = rate * usd;
%>
<h1>Rate: <%=rate%>
</h1>
<h1>USD: <%=usd%>
</h1>
<h1>VND: <%=vnd%>
</h1>
</body>
</html>

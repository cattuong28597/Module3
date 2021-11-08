<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Calculator</title>
  </head>
  <body>
  <h1>Sipmle Calculator</h1>
  <form action="/CalculatorServlet" method="post">
      <fieldset>
        <legend>Calculator</legend>
        <table>
          <tr>
            <td>First operand:</td>
            <td><input type="text" name="FO"></td>
          </tr>
          <tr>
            <td>Operator:</td>
            <td>
              <select name="operator" id="">
                <option value="+">Addition</option>
                <option value="-">Subtraction</option>
                <option value="*">Multiplication</option>
                <option value="/">Division</option>
              </select>
            </td>
          </tr>
          <tr>
            <td>Second operand:</td>
            <td><input type="text" name="SO"></td>
          </tr>
          <tr>
            <td></td>
            <td><input type="submit" value="Calculate"></td>
          </tr>
        </table>
      </fieldset>
  </form>
  </body>
</html>

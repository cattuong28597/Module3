<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 11/2/2021
  Time: 5:21 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE HTML>
<html>
<style type="text/css">
  .login {
    height:200px; width:230px;
    margin:0;
    padding:10px;
    border:1px #CCC solid;
  }
  .login input {
    padding:5px; margin:5px
  }
</style>
<body>
<form method="post" action="/demo">
  <div class="login">
    <h2>Login</h2>
    <input type="text" name="username" size="30"  placeholder="username" />
    <input type="password" name="password" size="30" placeholder="password" />
    <input type="submit" value="Sign in"/>
  </div>
</form>
</body>
</html>
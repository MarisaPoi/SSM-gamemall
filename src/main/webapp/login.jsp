<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024/5/30
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<form action="/user/login" method="get">
    <tr>
        <td>用户名:<input type="text" name="name"></td>
    </tr>
    <tr>
        <td>密码:<input type="text" name="password"></td>
    </tr>
    <tr>
        <td><input type="submit" value="登录"></td>
    </tr>
</form>
</body>
</html>

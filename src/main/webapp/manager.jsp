<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024/5/30
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>manager</title>
</head>
<body>
<h1>manager</h1>
<table>
    <tr>
        <td>uid</td>
        <td>account</td>
        <td>name</td>
        <td>password</td>
        <td>phone</td>
        <td>role</td>
        <td>修改</td>
        <td>删除</td>
    </tr>
    <tr>
        <c:forEach items="${userlist}" var="user">
    <tr>
        <td>${user.uid} </td>
        <td>${user.account} </td>
        <td>${user.name}</td>
        <td>${user.password}</td>
        <td>${user.phone}</td>
        <td>${user.role}</td>
        <td><button onclick="update.bind(this, '${user.uid}', '${user.account}', '${user.name}', '${user.password}', '${user.phone}', '${user.role}')()">修改</button></td>
        <td><button onclick="del()">删除</button></td>
    </tr>
    </c:forEach>
    </tr>
</table>
</body>
<script  type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.7.1.js"></script>
<script>
    function update(uid, account, name, password, phone, role) {
        $.ajax({
            url: "/user/login",
            type: "get",
            data: {
                name: name,
                password: password
            },
            success: function (data) {
                console.log(data)
            }
        })
    }
    function del() {
        console.log("111111111111111")
    }
</script>
</html>

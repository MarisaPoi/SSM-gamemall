<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${userlist}" var="user">
    ${user.uid}-${user.name}-${user.password}-${user.phone}<br/>
</c:forEach>
</body>
</html>

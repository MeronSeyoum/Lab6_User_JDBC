<%-- 
    Document   : users
    Created on : 8-Mar-2022, 6:28:08 PM
    Author     : Meron Seyoum
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Users</title>
    </head>
    <body>
        ${message}
        <c:forEach items="${users}" var="user">
               ${user.first_name}<br>
            </c:forEach>
    </body>
</html>

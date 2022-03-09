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
         <link rel="stylesheet"   type="text/css" href="Style/User.css">
        <title>Manage Users</title>
    </head>
    <body>
       ${message} 
   <div  class="main">  
       <div class="inner">
        <h1>Manage Users</h1>
        <table>
        <thead>
            <tr>
                <th>Email</th>
                <th>First Name</th>
                 <th>Last Name</th>
                <th>active</th>
                <th>Role</th>
                <th colspan=2>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td><c:out value="${user.email}" /></td>
                    <td><c:out value="${user.first_name}" /></td>
                    <td><c:out value="${user.last_name}" /></td>
                    <td><c:out value="${user.active = true ? 'Y' : 'N'}" /></td>
                    <td>${user.getRole().getRole_name()}</td>
                    <td><a href="UserServlet?action=update&email=<c:out value="${user.email}"/>">Update</a></td>
                    <td><a href="UserServlet?action=delete&email=<c:out value="${user.email}"/>">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
       </div>
   </div>
    </body>
</html>

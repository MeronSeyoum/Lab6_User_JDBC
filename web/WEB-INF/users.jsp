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
        <script>
            function unhideAddUser()
            {
                document.getElementById('add').style = "display: block;";
            }

        </script>
    </head>
    <body>
        <%-- display all user in a table--%>
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
                                <td><c:out value="${user.getRole().getRole_name()}" /></td>
                                <td><a href="UserServlet?action=update&email=<c:out value="${user.email}"/>">Update</a></td>
                                <td><a href="UserServlet?action=delete&email=<c:out value="${user.email}"/>">Delete</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <%-- form to add new users--%>
                <div class="msg" > ${message}  </div>
                <button type="submit" onClick='unhideAddUser()'>Create A New User</button>
                <div style='display: none;' id="add" class="add">
                    <h2>Add New User</h2>
                    <form action="User" method="post">
                        <label for="email"> Email</label> 
                        <input type="text" name="email" value=""><br>
                        <label for="First_name"> First Name</label> 
                        <input type="text" name="first_name" value=""><br>
                        <label for="last_name"> Last Name</label> 
                        <input type="text" name="last_name" value=""><br>
                        <label for="password"> password</label> 
                        <input type="text" name="password" value=""><br>
                        <label for="active"> Active</label>
                        <input type="checkbox" name="active" value="1" checked>
                        <br><br>
                        <label for="email"> role</label> 
                        <Select id="role" name="role">
                            <option value="1">System Admin</option>
                            <option value="2">Regular User</option>
                            <option value="3">Company Admin</option>
                        </Select><br>
                        <input type="hidden" name="action" value="add">
                        <button type="submit"> Add User</button>
                    </form>
                </div>

            </div>
        </div>
    </body>
</html>

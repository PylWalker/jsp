<%-- 
    Document   : index
    Created on : Mar 4, 2019, 4:32:53 PM
    Author     : Pyl Walker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        <h2>Login Successful</h2>
        <%
            String userName = session.getAttribute("userName").toString();
            out.println("Welcome " + userName);
        %>
        <a href="LogOut.jsp">LogOut</a>
    </body>
</html>

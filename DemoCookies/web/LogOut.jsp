<%-- 
    Document   : LogOut
    Created on : Mar 4, 2019, 5:09:39 PM
    Author     : Pyl Walker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogOut</title>
    </head>
    <body>
        <h2>Hello World!</h2>
        <%
            session.removeAttribute("userName");
            response.sendRedirect("Login.jsp");
        %>
    </body>
</html>

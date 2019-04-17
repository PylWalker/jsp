<%-- 
    Document   : loginController
    Created on : Apr 10, 2019, 4:55:29 PM
    Author     : Pyl Walker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LoginController</title>
    </head>
    <body>
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if(username.equals("")){
                out.println("<p style='color: red; position: relative; left: 780px; top: -90px;'>Username can not null</p>");
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.include(request, response);
            } else if(!password.equals("admin")){
            } else{
                out.println("Logged in");
            }
        %>
    </body>
</html>

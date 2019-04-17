<%-- 
    Document   : login
    Created on : Apr 8, 2019, 4:26:20 PM
    Author     : Pyl Walker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <%
        request.setAttribute("usernameError", "");
        request.setAttribute("passwordError", "");
    %>
    <body>
        <h3 align="center">Login</h3>
        <table border="0" align="center">
            <form method="get" action="loginController.jsp">
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username"></td>
                    <%
                        if(request.getAttribute("usernameError").equals("error")){
                    %>
                            <p style="color: red">Username can not null</p>
                    <%
                        }
                    %>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password"></td>
                </tr>
                <tr align="center">
                    <td colspan="2"><input type="submit" name="login" value="Login">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="cancel" value="Cancel"></td>
                </tr>
            </form>
        </table>
    </body>
</html>

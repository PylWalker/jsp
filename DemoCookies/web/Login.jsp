<%-- 
    Document   : Login
    Created on : Mar 4, 2019, 4:42:54 PM
    Author     : Pyl Walker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <form action="processLogin" method="post">
            <table>
                <tr>
                    <td>Login</td>
                </tr>
                <tr>
                    <td>User name</td>
                    <td><input type="text" name="txtUserName">
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" name="txtPassword">
                </tr>
                <tr>
                    <td><input type="submit" name="Submit" value="Submit"></td>
                    <td><input type="button" name="Reset" value="Reset"></td>
                </tr>
            </table>
        </form>
    </body>
</html>

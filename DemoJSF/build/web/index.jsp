<%-- 
    Document   : index
    Created on : Feb 27, 2019, 5:10:11 PM
    Author     : Pyl Walker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form name="frmHello" action="processHello" method="get">
            Input your name: <input type="text" name="txtName" value=""/>
            <br>
            <input type="submit" value="Send"/>
        </form>
    </body>
</html>

<%-- 
    Document   : DeleteProduct
    Created on : Mar 14, 2019, 10:13:56 PM
    Author     : Pyl Walker
--%>

<%@page import="ConnectDB.ConnectDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
    </head>
    <body>
        <%
            String productID_1 = request.getParameter("productID");
            int productID = Integer.parseInt(productID_1);
            ConnectDB con = new ConnectDB();
            con.deleteProduct(productID);
            response.sendRedirect("ProductList.jsp");
        %>
    </body>
</html>

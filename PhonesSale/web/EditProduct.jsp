<%-- 
    Document   : EditProduct.jsp
    Created on : Mar 14, 2019, 5:35:17 PM
    Author     : Pyl Walker
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="ConnectDB.ConnectDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit</title>
    </head>
    <%
        ConnectDB con = new ConnectDB();
        String tmp = request.getParameter("productID");
        int productID = Integer.parseInt(tmp);
        ResultSet rs = con.getProductByID(productID);
        rs.next();
    %>
    <body>
        <h2>Edit Product</h2>
        <table border="0" width="500">
            <form name="formAddSubject" action="processEditProduct">
                <tbody>
                    <tr>
                        <td>Product ID:</td>
                        <td><input style="background-color: gray" type="text" name="txtProductID" value="<% out.print(rs.getInt("productID")); %>" readonly></td>
                    </tr>
                    <tr>
                        <td>Product Name:</td>
                        <td><input type="text" name="txtProductName" value="<% out.print(rs.getString("productName")); %>"></td>
                    </tr>
                    <tr>
                        <td>Price:</td>
                        <td><input type="text" name="txtPrice" value="<% out.print(rs.getInt("price")); %>"></td>
                    </tr>
                    <tr>
                        <td>Quantity:</td>
                        <td><input type="text" name="txtQuantity" value="<% out.print(rs.getInt("quantity")); %>"></td>
                    </tr>
                    <tr>
                        <td>Year:</td>
                        <td><input type="text" name="txtYear" value="<% out.print(rs.getInt("year")); %>"></td>
                    </tr>
                    <tr>
                        <td>Manufacturer:</td>
                        <td><input type="text" name="txtManufacturer" value="<% out.print(rs.getString("manufacturer")); %>"></td>
                    </tr>
                    <tr>
                        <td>Desciption:</td>
                        <td><input type="text" name="txtDescription" value="<% out.print(rs.getString("description")); %>"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <input type="submit" name="btnSubmit" value="Submit">
                            <input type="reset" name="btnReset" value="Reset">
                        </td>
                    </tr>
                </tbody>
            </form>
        </table>
    </body>
</html>

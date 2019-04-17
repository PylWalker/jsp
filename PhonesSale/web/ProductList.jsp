<%-- 
    Document   : ProductList
    Created on : Mar 14, 2019, 5:22:34 PM
    Author     : Pyl Walker
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ConnectDB.ConnectDB"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product List</title>
    </head>
    <%
        ConnectDB con = new ConnectDB();
        ResultSet rs = con.getProductList();
    %>
    <body>
        <h2 align="center">Product List</h2>
        <table align="center" border="0" width="800">
            <form method="get" action="searchProduct">
                <tr>
                    <td>Name:  <input type="text" name="keyProductName" placeholder="Enter Name Of Product To Search" size="110"><input type="submit" name="submitSearch" value="Search">
                </tr>
            </form>
        </table>
        <table align="center" border="1" width="800">
            <thead>
                <tr>
                    <th>Product ID</th>
                    <th>Product Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Year</th>
                    <th>Manufacturer</th>
                    <th>Description</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <% while(rs.next()){ %>
                <tr>
                    <td><% out.println(rs.getInt("productID")); %></td>
                    <td><% out.println(rs.getString("productName")); %></td>
                    <td><% out.println(rs.getInt("price")); %></td>
                    <td><% out.println(rs.getInt("quantity")); %></td>
                    <td><% out.println(rs.getInt("year")); %></td>
                    <td><% out.println(rs.getString("manufacturer")); %></td>
                    <td><% out.println(rs.getString("description")); %></td>
                    <td>
                        &nbsp;
                        <a href="EditProduct.jsp?productID=<% out.print(rs.getInt("productID")); %>">Edit</a>
                    </td>
                    <td>
                        &nbsp;
                        <a href="DeleteProduct.jsp?productID=<% out.print(rs.getInt("productID")); %>">Delete</a>
                    </td>
                </tr>
                <% } %>
                <tr>
                    <td colspan="9" align="center">
                        &nbsp;
                        <a href="AddProduct.jsp">Add Product</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>

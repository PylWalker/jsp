<%-- 
    Document   : AddSubject
    Created on : Mar 14, 2019, 5:36:58 PM
    Author     : Pyl Walker
--%>

<%@page import="ConnectDB.ConnectDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add</title>
    </head>
    <body>
        <h2>Add Product</h2>
        <table border="0" width="500">
            <form name="formAddSubject" action="processAddProduct">
                <tbody>
                    <tr>
                        <td>Product Name:</td>
                        <td><input type="text" name="txtProductName" placeholder="Enter Product Name"></td>
                    </tr>
                    <tr>
                        <td>Price:</td>
                        <td><input type="text" name="txtPrice" placeholder="Enter Price"></td>
                    </tr>
                    <tr>
                        <td>Quantity:</td>
                        <td><input type="text" name="txtQuantity" placeholder="Enter Quantity"></td>
                    </tr>
                    <tr>
                        <td>Year:</td>
                        <td><input type="text" name="txtYear" placeholder="Enter Year"></td>
                    </tr>
                    <tr>
                        <td>Manufacturer:</td>
                        <td><input type="text" name="txtManufacturer" placeholder="Enter Manufacturer"></td>
                    </tr>
                    <tr>
                        <td>Desciption:</td>
                        <td><input type="text" name="txtDescription" placeholder="Optional"></td>
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

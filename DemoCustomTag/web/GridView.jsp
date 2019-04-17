<%-- 
    Document   : GridView
    Created on : Mar 27, 2019, 5:02:00 PM
    Author     : Pyl Walker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="/WEB-INF/tlds/GridView.tld" prefix="mytag" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Demo Grid View</title>
    </head>
    <body>
        <h3>Demo Grid View</h3>
        <mytag:GridView driver="com.mysql.cj.jdbc.Driver"
                        url="jdbc:mysql://127.0.0.1:3306/demogridview"
                        sql="select * from demogridview" />
    </body>
</html>
<%-- 
    Document   : formsuatintuc
    Created on : Oct 24, 2018, 7:58:03 PM
    Author     : CongBV
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Ketnoitintuc.ketnoitintuc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form sửa tin tức</title>
    </head>
    <body>
        <%
        String mtt = request.getParameter("matintuc");
        int mtt2 = Integer.parseInt(mtt);
        ketnoitintuc kntt = new ketnoitintuc();
        ResultSet rs = (ResultSet) kntt.gettintucbyid(mtt2);
    %>
    </body>
</html>

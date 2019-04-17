<%-- 
    Document   : xoasinhvien
    Created on : Apr 9, 2019, 10:33:44 PM
    Author     : Pyl Walker
--%>

<%@page import="ConnectDB.ConnectDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ConnectDB conn = new ConnectDB();
            String MaSV_1 = request.getParameter("MaSV");
            int MaSV = Integer.parseInt(MaSV_1);
            int tmp = conn.deleteSinhVien(MaSV);
            if(tmp == 1){
                response.sendRedirect("sinhvien.jsp");
            } else {
                out.println("Failed");
            }
        %>
    </body>
</html>

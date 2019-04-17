<%-- 
    Document   : xoanhanvien
    Created on : Apr 3, 2019, 12:24:01 PM
    Author     : Pyl Walker
--%>

<%@page import="ConnectDB.ConnectDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Xóa Nhân Viên</title>
    </head>
    <body>
        <%
            ConnectDB conn = new ConnectDB();
            String MaNV_1 = request.getParameter("MaNV");
            int MaNV = Integer.parseInt(MaNV_1);
            int tmp = conn.deleteNhanVien(MaNV);
            if(tmp == 1){
                response.sendRedirect("danhsachnhanvien.jsp");
            } else {
                out.println("Failed");
            }
        %>
    </body>
</html>

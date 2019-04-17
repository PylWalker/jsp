<%-- 
    Document   : sinhvien.jsp
    Created on : Apr 8, 2019, 5:13:42 PM
    Author     : Pyl Walker
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="ConnectDB.ConnectDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sinh viên</title>
        <style>
            td{
                text-align: center;
                border: solid black 1;
            }
        </style>
    </head>
    <%
        ConnectDB conn = new ConnectDB();
        ResultSet rs = conn.getSinhVien();
        String text = String.valueOf(session.getAttribute("TenTK"));
        out.println("Welcome " + text + "<br>");
        out.println("Session ID: " + session.getId());
    %>
    <body>
        <h3 align="center">Sinh Viên</h3>
        <table align="center"
            <tr>
                <td width="50">Mã SV</td>
                <td width="150">Họ tên</td>
                <td>Giới tính</td>
                <td width="100">Điện thoại</td>
                <td width="100">Địa chỉ</td>
                <td colspan="2" width="100">Thao tác</td>
            </tr>
            <% while(rs.next()){ %>
            <tr>
                <td><% out.println(rs.getInt("MaSV")); %></td>
                <td><% out.println(rs.getString("HoTen")); %></td>
                <td><% if(rs.getBoolean("GioiTinh")) out.println("Nam"); else out.println("Nữ"); %></td>
                <td><% out.println(rs.getString("SoDienThoai")); %></td>
                <td><% out.println(rs.getString("DiaChi")); %></td>
                <td><a href="suasinhvien.jsp?MaSV=<%= rs.getInt("MaSV") %>">Sửa</a></td>
                <td><a href="xoasinhvien.jsp?MaSV=<%= rs.getInt("MaSV") %>" onclick="return confirm('Bạn có chắc chắn muốn xóa?')">Xóa</a></td>
            </tr>
            <% } %>
        </table>
    </body>
</html>

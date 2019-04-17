<%-- 
    Document   : danhsachnhanvien
    Created on : Apr 1, 2019, 4:43:05 PM
    Author     : Pyl Walker
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="ConnectDB.ConnectDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh Sách Nhân Viên</title>
    </head>
    <%
        ConnectDB conn = new ConnectDB();
        ResultSet rs = conn.getNhanVien();
    %>
    <body>
        <h3 align="center">Danh Sách Nhân Viên</h3>
        <table align="center" border="1">
            <tr>
                <a href="themnhanvien.jsp">Thêm Nhân Viên</a>
            </tr>
            <tr>
                <td>Mã nhân viên</td>
                <td>Họ tên</td>
                <td>Ngày sinh</td>
                <td>Địa chỉ</td>
                <td>Giới tính</td>
                <td>Phòng ban</td>
                <td>Chức vụ</td>
                <td colspan="2">Quản lý</td>
            </tr>
            <% while(rs.next()){ %>
            <tr>
                <td><% out.println(rs.getInt("MaNV")); %></td>
                <td><% out.println(rs.getString("HoTen")); %></td>
                <td><% out.println(rs.getString("NgaySinh")); %></td>
                <td><% out.println(rs.getString("DiaChi")); %></td>
                <td><% out.println(rs.getString("GioiTinh")); %></td>
                <td><% out.println(rs.getString("PhongBan")); %></td>
                <td><% out.println(rs.getString("ChucVu")); %></td>
                <td><a href="suanhanvien.jsp?MaNV=<%= rs.getInt("MaNV") %>">Sửa</a></td>
                <td><a href="xoanhanvien.jsp?MaNV=<%= rs.getInt("MaNV") %>" onclick="return confirm('Bạn có chắc chắn muốn xóa?')">Xóa</a></td>
            </tr>
            <% } %>
        </table>
    </body>
</html>

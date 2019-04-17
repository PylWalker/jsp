<%-- 
    Document   : suasinhvien
    Created on : Apr 8, 2019, 5:40:38 PM
    Author     : Pyl Walker
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="ConnectDB.ConnectDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sửa sinh viên</title>
    </head>
        <%
        ConnectDB conn = new ConnectDB();
        String MaSV_1 = request.getParameter("MaSV");
        int MaSV = Integer.parseInt(MaSV_1);
        ResultSet rs = conn.getSinhVienByMaSV(MaSV);
        rs.next();
    %>
    <body>
        <h3 align="center">Sửa sinh viên</h3>
        <table align="center" border="0">
            <form action="processSuaNhanVien">
                <tr>
                    <td style="width:150px">Mã sinh viên</td>
                    <td><input type="text" name="MaSV" style="color: white; background-color: gray" size="100" value="<% out.println(rs.getString("MaSV")); %>" readonly></td>
                </tr>
                <tr>
                    <td>Họ tên</td>
                    <td><input type="text" name="HoTen" size="100" value="<% out.println(rs.getString("HoTen")); %>"></td>
                </tr>
                <tr>
                    <td>Giới tính</td>
                    <td>
                        <input type="radio" name="GioiTinh" value="Nam" <% if(rs.getBoolean("GioiTinh")) out.print("checked"); %> >Nam
                        <input type="radio" name="GioiTinh" value="Nu" <% if(!rs.getBoolean("GioiTinh")) out.print("checked"); %> >Nữ
                </tr>
                <tr>
                    <td>Điện thoại</td>
                    <td><input type="text" name="SoDienThoai" size="100"  value="<% out.println(rs.getString("SoDienThoai")); %>"></td>
                </tr>
                <tr>
                    <td>Địa chỉ</td>
                    <td><input type="text" name="DiaChi" size="100" value="<% out.println(rs.getString("DiaChi")); %>"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="Sua" value="Sửa">
                        <input type="reset" name="Reset" value="Reset">
                    </td>
                </tr>
            </form>
        </table>
    </body>
</html>

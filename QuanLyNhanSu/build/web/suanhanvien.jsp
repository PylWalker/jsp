<%-- 
    Document   : suanhanvien
    Created on : Apr 3, 2019, 11:03:24 AM
    Author     : Pyl Walker
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="ConnectDB.ConnectDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sửa Nhân Viên</title>
    </head>
    <%
        ConnectDB conn = new ConnectDB();
        String MaNV_1 = request.getParameter("MaNV");
        int MaNV = Integer.parseInt(MaNV_1);
        ResultSet rs = conn.getNhanVienByMaNV(MaNV);
        rs.next();
    %>
    <body>
        <h3 align="center">Sửa thông tin nhân viên</h3>
        <table align="center" border="0">
            <form action="processSuaNhanVien">
                <tr>
                    <td style="width:150px">Mã nhân viên</td>
                    <td><input type="text" name="MaNV" size="100" value="<% out.println(rs.getString("MaNV")); %>" readonly></td>
                </tr>
                <tr>
                    <td>Họ tên</td>
                    <td><input type="text" name="HoTen" size="100" value="<% out.println(rs.getString("HoTen")); %>"></td>
                </tr>
                <tr>
                    <td>Ngày sinh</td>
                    <td><input type="text" name="NgaySinh" size="100" placeholder="YYYY/MM/DD" value="<% out.println(rs.getString("NgaySinh")); %>"></td>
                </tr>
                <tr>
                    <td>Địa chỉ</td>
                    <td><input type="text" name="DiaChi" size="100" value="<% out.println(rs.getString("DiaChi")); %>"></td>
                </tr>
                <tr>
                    <td>Giới tính</td>
                    <td>
                        <input type="radio" name="GioiTinh" value="Nam" <% if(rs.getString("GioiTinh").equals("Nam")) out.print("checked"); %> >Nam
                        <input type="radio" name="GioiTinh" value="Nu" <% if(rs.getString("GioiTinh").equals("Nu")) out.print("checked"); %> >Nữ
                </tr>
                <tr>
                    <td>Phòng ban</td>
                    <td><input type="text" name="PhongBan" size="100"  value="<% out.println(rs.getString("PhongBan")); %>"></td>
                </tr>
                <tr>
                    <td>Chức vụ</td>
                    <td>
                        <select name="ChucVu">
                            <option value="GD" <% if(rs.getString("ChucVu").equals("GĐ")) out.print("selected"); %> >Giám đốc</option>
                            <option value="TP" <% if(rs.getString("ChucVu").equals("TP")) out.print("selected"); %> >Trưởng phòng</option>
                            <option value="NV" <% if(rs.getString("ChucVu").equals("NV")) out.print("selected"); %> >Nhân Viên</option>
                        </select>
                    </td>
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

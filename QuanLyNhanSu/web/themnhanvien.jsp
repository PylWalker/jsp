<%-- 
    Document   : themnhanvien
    Created on : Apr 1, 2019, 5:01:48 PM
    Author     : Pyl Walker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm Nhân Viên</title>
    </head>
    <body>
        <h3 align="center">Thêm mới nhân viên</h3>
        <table align="center" border="0">
            <form action="processThemNhanVien">
                <tr>
                    <td style="width:150px">Mã nhân viên</td>
                    <td><input type="text" name="MaNV" size="100"></td>
                </tr>
                <tr>
                    <td>Họ tên</td>
                    <td><input type="text" name="HoTen" size="100"></td>
                </tr>
                <tr>
                    <td>Ngày sinh</td>
                    <td><input type="text" name="NgaySinh" size="100" placeholder="YYYY/MM/DD"></td>
                </tr>
                <tr>
                    <td>Địa chỉ</td>
                    <td><input type="text" name="DiaChi" size="100"></td>
                </tr>
                <tr>
                    <td>Giới tính</td>
                    <td>
                        <input type="radio" name="GioiTinh" value="Nam" checked="true">Nam
                        <input type="radio" name="GioiTinh" value="Nu">Nữ
                </tr>
                <tr>
                    <td>Phòng ban</td>
                    <td><input type="text" name="PhongBan" size="100"></td>
                </tr>
                <tr>
                    <td>Chức vụ</td>
                    <td>
                        <select name="ChucVu">
                            <option value="GD" selected="true">Giám đốc</option>
                            <option value="TP">Trưởng phòng</option>
                            <option value="NV">Nhân Viên</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="Them" value="Thêm">
                        <input type="reset" name="Reset" value="Reset">
                    </td>
                </tr>
            </form>
        </table>
    </body>
</html>

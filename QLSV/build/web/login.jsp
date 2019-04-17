<%-- 
    Document   : login
    Created on : Apr 8, 2019, 4:26:20 PM
    Author     : Pyl Walker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h3 align="center">Login</h3>
        <table border="0" align="center">
            <form method="get" action="processLogin">
                <tr>
                    <td>Tài khoản</td>
                    <td><input type="text" name="TenTK"></td>
                </tr>
                <tr>
                    <td>Mật khẩu</td>
                    <td><input type="password" name="MatKhau"></td>
                </tr>
                <tr align="center">
                    <td colspan="2"><input type="submit" name="DangNhap" value="Đăng nhập">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="BoQua" value="Bỏ qua"></td>
                </tr>
            </form>
        </table>
    </body>
</html>

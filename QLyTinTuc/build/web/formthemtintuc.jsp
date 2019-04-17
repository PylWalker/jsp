<%-- 
    Document   : formthemtintuc
    Created on : Oct 24, 2018, 7:58:57 PM
    Author     : CongBV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form thêm tin tức</title>
    </head>
    <body>
        <form action="xulythemtintuc.jsp" method="post">
            <table border="0" align="center">
                <tr>
                    <th colspan="2"><h2>Thêm Tin Tức</h2></th>
                </tr>
                <tr>
                    <td>Mã tin tức: </td>
                    <td><input type="text" name="mtt" size="40"></td>
                </tr>
                <tr>
                    <td>Tiêu đề: </td>
                    <td><input type="text" name="td" size="40"></td>
                </tr>
                <tr>
                    <td>Tóm tắt</td>
                    <td><input type="text" name="tt" size="40"></td>
                </tr>
                <tr>
                    <td>Nội dung: </td>
                    <td><input type="text" name="nd" size="40"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Thêm">
                        <input type="reset" value="Bỏ qua"></td>               
                </tr>
            </table>
        </form>
    </body>
</html>

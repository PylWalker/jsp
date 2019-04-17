<%-- 
    Document   : danhsachtintuc
    Created on : Oct 24, 2018, 7:46:22 PM
    Author     : CongBV
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Ketnoitintuc.ketnoitintuc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh sách tin tức</title>
    </head>
    <%
        ketnoitintuc kntt = new ketnoitintuc();
        ResultSet rs = (ResultSet) kntt.gettintuc();
     
    %>
    <body>
        <table style="border: 1px solid black;" align="center">
            <tr style="padding: 10px 10px 10px 10px;">
                <th colspan="6"><h2>Danh sách tin tức</h2></th>
            </tr>
            <tr style="padding: 10px 10px 10px 10px;">
                <th>Mã tin tức</th>
                <th>Tiêu đề</th>
                <th>Tóm tắt</th>
                <th>Nội dung</th>
                <th>Thao tác</th>
                <th>Xem</th>
            </tr>
            <% while(rs.next()) { %>
            <tr style="padding: 10px 10px 10px 10px;">
                <td style="padding: 10px 10px 10px 10px; border: 1px black;" align="center"><% out.println(rs.getInt("matintuc")); %></td>
                <td style="padding: 10px 10px 10px 10px; border: 1px black;" align="center"><% out.println(rs.getString("tieude")); %></td>
                <td style="padding: 10px 10px 10px 10px; border: 1px black;" align="center"><% out.println(rs.getString("tomtat")); %></td>
                <td style="padding: 10px 10px 10px 10px; border: 1px black;" align="center"><% out.println(rs.getString("noidung")); %></td>
                <td style="padding: 10px 10px 10px 10px; border: 1px black;">
                    <a href="formsuatintuc.jsp?matintuc=<%= rs.getInt("matintuc") %>">Sửa</a> / 
                    <a href="xoatintuc.jsp?matintuc=<%= rs.getInt("matintuc") %>" onclick="return confirm('Bạn có chắc muốn xóa ?')">Xóa</a>
                </td>
                <td style="padding: 10px 10px 10px 10px; border: 1px black;"><a href="chitiettintuc.jsp?matintuc=<%= rs.getInt("matintuc") %>">Xem chi tiết</a></td>
            </tr>
            <% } %>
            <tr style="padding: 10px 10px 10px 10px;">
                <td colspan="6" style="padding: 10px 10px 10px 10px; border: 1px black"><a href="formthemtintuc.jsp">Thêm tin tức</a></td>
            </tr>
        </table>
    </body>
</html>

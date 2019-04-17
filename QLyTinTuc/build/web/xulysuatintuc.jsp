<%-- 
    Document   : xulysuatintuc
    Created on : Oct 24, 2018, 7:56:52 PM
    Author     : CongBV
--%>
<%@page import="Ketnoitintuc.ketnoitintuc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang sửa tin tức</title>
    </head>
    <body>
        <%
            String mtt = request.getParameter("mtt");
            int mtt2 = Integer.parseInt(mtt);
            String td = request.getParameter("td");
            String tt = request.getParameter("tt");
            String nd = request.getParameter("nd");
            ketnoitintuc kntt = new ketnoitintuc();
            kntt.updatetintuc(mtt2, td, tt, nd);
            response.sendRedirect("danhsachtintuc.jsp");
        %>
    </body>
</html>

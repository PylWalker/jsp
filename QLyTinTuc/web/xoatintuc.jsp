<%-- 
    Document   : xoatintuc
    Created on : Oct 24, 2018, 7:59:39 PM
    Author     : CongBV
--%>
<%@page import="Ketnoitintuc.ketnoitintuc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String mtt = request.getParameter("matintuc");
            int mtt2 = Integer.parseInt(mtt);
            ketnoitintuc kntt = new ketnoitintuc();
            kntt.deletetintuc(mtt2);
            response.sendRedirect("danhsachtintuc.jsp");
        %>
    </body>
</html>

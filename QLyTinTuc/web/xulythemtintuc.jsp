<%-- 
    Document   : xulythemtintuc
    Created on : Oct 24, 2018, 8:00:37 PM
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
            String mtt = request.getParameter("mtt");
            int mtt2 = Integer.parseInt(mtt);
            String td = request.getParameter("td");
            String tt = request.getParameter("tt");
            String nd = request.getParameter("nd");
            ketnoitintuc kntt = new ketnoitintuc();
            kntt.inserttintuc(mtt2, td, tt, nd);
            response.sendRedirect("danhsachtintuc.jsp");
        %>
    </body>
</html>

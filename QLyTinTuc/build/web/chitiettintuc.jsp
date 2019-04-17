<%-- 
    Document   : chitiettintuc
    Created on : Oct 24, 2018, 7:55:37 PM
    Author     : CongBV
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="Ketnoitintuc.ketnoitintuc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết tin tức</title>
    </head>
    <%
        String mtt = request.getParameter("matintuc");
        int mtt2 = Integer.parseInt(mtt);
        ketnoitintuc kntt = new ketnoitintuc();
        ResultSet rs = (ResultSet) kntt.gettintucbyid(mtt2);
    %>
    <body>
        <table border="0" align="center">
            <% while(rs.next()) { %>
            <tr>
                <th colspan="2" style="background-color: yellow;"><h2><% out.println(rs.getString("tieude")); %></h2></th>
            </tr>
            <tr>
                <th>Tóm tắt: </th>
                <td><% out.println(rs.getString("tomtat")); %></td>
            </tr>
            <tr>
                <th>Nội dung: </th>
                <td><% out.println(rs.getString("noidung")); %></td>
            </tr>
            <% } %>
            
            
            <%

                int i=0;

                int x[]=new int[5];

                for(i=0;i<5;i++)

                {

                    x[i]=i;

                    out.print(i*x[i]);

                }

            %>
        </table>
    </body>
</html>

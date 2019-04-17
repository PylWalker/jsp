<%-- 
    Document   : DeleteSubject
    Created on : Mar 13, 2019, 9:53:49 PM
    Author     : Dung Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.SubjectModel"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String subjectID = request.getParameter("subjectID");
            int subjectID2 = Integer.parseInt(subjectID);
            SubjectModel model = new SubjectModel();
            model.deleteSubject(subjectID2);
            response.sendRedirect("SubjectList.jsp");
        %>
    </body>
</html>

<%-- 
    Document   : AddSubject
    Created on : Mar 13, 2019, 9:30:58 PM
    Author     : Dung Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Add Subject</h2>
        <table border="1" width="500">
            <form name="formAddSubject" action="processAddSubject.jsp">
                <tbody>
                    <tr>
                        <td>Subject Name:</td>
                        <td><input type="text" name="txtSubjectName"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <input type="submit" name="btnSubmit" value="Submit">
                            <input type="reset" name="btnReset" value="Reset">
                        </td>
                    </tr>
                </tbody>
            </form>
        </table>
    </body>
</html>

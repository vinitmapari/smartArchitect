<%-- 
    Document   : AddLatestNews
    Created on : 7 Jan, 2016, 11:26:34 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <jsp:include page="headerAdmin.jsp"></jsp:include>
    <body>
        <form action="LatestNewsAction.jsp">
     <table border="0">
            <tr>
                <td>
                    LatestNews
                </td>
                
                <td>
                    <textarea name="txtLatestNews" rows="20" cols="100"></textarea>
                </td>
            </tr>
            <tr>
                <td>
                    Date
                </td>
                <td>
                    <input type="date" name="txtDate">
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                <br>   <input type="submit" value="submit">
                </td>
            </tr>
        </table>
        </form>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>

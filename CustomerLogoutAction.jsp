<%-- 
    Document   : CustomerLogoutAction
    Created on : 13 Feb, 2016, 9:04:08 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
        request.getSession().invalidate();
        response.sendRedirect("CustomerLoginForm.jsp");
        %>
    </body>
</html>

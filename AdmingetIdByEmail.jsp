<%-- 
    Document   : AdmingetIdByEmail
    Created on : 18 Mar, 2016, 7:32:40 PM
    Author     : Admin
--%>

<%@page import="myproject.AdminWorker"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String Email=(String)session.getAttribute("Email");
        int id =AdminWorker.getIdByEmail(Email);
        System.out.println(id);
         session.setAttribute("AdminId",id);
        
        response.sendRedirect("UploadAdminRegistrationFiles.jsp");
        %>
    </body>
</html>

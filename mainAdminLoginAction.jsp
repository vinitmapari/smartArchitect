<%-- 
    Document   : mainAdminLoginAction
    Created on : 18 Mar, 2016, 10:01:38 PM
    Author     : Admin
--%>

<%-- 
    Document   : AdminLoginProcess
    Created on : 19 Jan, 2016, 8:46:22 AM
    Author     : Admin
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
       <%@page import="myproject.*"%>  

<%
String EmailId=request.getParameter("EmailId");
System.out.println(EmailId);
String Pwd=request.getParameter("Pwd");
System.out.println(Pwd);

  if (EmailId.equals("nihar")&&Pwd.equals("nihar123"))
        {
         
    response.sendRedirect("mainAdminProfile.jsp");
      
       } 
else {
        out.println("Invalid password <a href='mainAdminLoginForm.jsp'>try again</a>");
    }
%>

    </body>
</html>


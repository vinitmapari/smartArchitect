<%-- 
    Document   : authenticate
    Created on : 16 Mar, 2016, 7:24:16 PM
    Author     : Admin
--%>

<%@page import="java.sql.*"%>
<%@page import="myproject.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String key=request.getParameter("key");
        String Email=request.getParameter("email");
             Statement st=DatabaseConnector.getStatement(); 
     ResultSet rs=st.executeQuery("select CodeKey from adminregistration where Email='"+Email+"';");
     if(rs.next())
         {
         String keyAdmin=rs.getString(1);
         System.out.println(keyAdmin);
         if(key.equals(keyAdmin))
             {
             response.sendRedirect("AdminLoginForm.jsp");
         }
         else
             {
              out.println("Invalid password <a href='authenticate.jsp'>try again</a>");
             }
         }
         else{
         out.println("connection error");
         }
        %>
    </body>
</html>

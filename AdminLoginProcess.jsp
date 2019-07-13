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

  Statement stmt = DatabaseConnector.getStatement();  
  ResultSet rs=stmt.executeQuery("select * from adminregistration where Email='" + EmailId + "' and Password='" + Pwd + "';"); 
 System.out.print(rs);
  if (rs.next())
        {
         int id=AdminWorker.getIdByEmail(EmailId);
         System.out.println(id);
           session.setAttribute("AdminId",id);
           session.setAttribute("AdminEmail",EmailId);
        Admin ad=AdminWorker.getAdminById(id);
         //session is created and pssed to rest of the forms >>imp
    session.setAttribute("Admin",ad);
    response.sendRedirect("AdminProfile.jsp");
      
       } 
else {
        out.println("Invalid password <a href='AdminLoginForm.jsp'>try again</a>");
    }
%>

    </body>
</html>

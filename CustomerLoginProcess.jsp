<%-- 
    Document   : LoginProcess
    Created on : 30 Dec, 2015, 10:18:53 PM
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
String Pwd=request.getParameter("Pwd");

  Statement stmt = DatabaseConnector.getStatement();  
  ResultSet rs=stmt.executeQuery("select * from customerregistration where Email='" + EmailId + "' and Password='" + Pwd + "';"); 
  if (rs.next())
        {
         int id=CustomerWorker.getIdByEmail(EmailId);
         session.setAttribute("Custid",id);
        Customer c=CustomerWorker.getCustomerById(id);
        
         //session is created and pssed to rest of the forms >>imp
    session.setAttribute("customer",c);
    response.sendRedirect("CustomerProfile.jsp");
      
       } 
else {
        out.println("Invalid password <a href='CustomerLoginForm.jsp'>try again</a>");
    }
%>

    </body>
</html>

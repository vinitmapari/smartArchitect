<%-- 
    Document   : ChangePasswordAction
    Created on : 27 Feb, 2016, 10:47:29 PM
    Author     : Admin
--%>

<%@page import="myproject.CustomerWorker"%>
<%@page import="myproject.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       String Email=(String)session.getAttribute("CustomerEmailId");
       System.out.println(Email);
       String Password = request.getParameter("Password");
       System.out.println(Password);
       
       Customer c=new Customer();
       c.setEmail(Email);
       c.setPassword(Password);
       String result=CustomerWorker.updateCustomerPassword(c);
    
    if(result.equals("Success"))
               {
        response.sendRedirect("CustomerLoginForm.jsp");
    }
   else
             {
       response.sendRedirect("changepassword.jsp");
   }
        %>
    </body>
</html>

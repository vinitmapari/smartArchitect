<%-- 
    Document   : AddFeedback
    Created on : 25 Jan, 2016, 1:01:21 PM
    Author     : Admin
--%>


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
        String Name=request.getParameter("txtName");
        String Email=request.getParameter("txtEmail");
        String Feedback=request.getParameter("txtFeedback");

        Information Inf=new Information();
        Inf.setName(Name);
        Inf.setEmail(Email);
        Inf.setFeedback(Feedback);
        
        String result=InformationWorker.addFeedback(Inf);
    
    if(result.equals("Success"))
               {
        response.sendRedirect("Feedback.jsp");
    }
   else
             {
       response.sendRedirect("Feedback.jsp");
   }
        %>
    </body>
</html>

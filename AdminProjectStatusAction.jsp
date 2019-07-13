<%-- 
    Document   : AdminProjectStatusAction
    Created on : 13 Feb, 2016, 10:14:46 PM
    Author     : Admin
--%>

<%@page import="myproject.ProjectWorker"%>
<%@page import="myproject.Project"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
    String ProjectName = request.getParameter("txtProjectName");   
    String ProjectStatus = request.getParameter("ProjectStatus");
    String PaymentStatus=request.getParameter("PaymentStatus");
   
    
    Project p=new Project();
    p.setPaymentStatus(PaymentStatus);
    p.setProjectStatus(ProjectStatus);
    p.setProjectName(ProjectName);
    String result=ProjectWorker.UpdateProjectStatus(p);
    
      if(result.equals("Success"))
               {
          out.println("<html><body><p>Status added successfully</p</body></html>");
        response.sendRedirect("AdminProjectStatus.jsp");
    }
   else
             {
       response.sendRedirect("gmail.com");
   }
        %>
    </body>
</html>

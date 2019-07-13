<%-- 
    Document   : AddAdminKeyAction
    Created on : 16 Mar, 2016, 8:22:58 PM
    Author     : Admin
--%>

<%@page import="myproject.AdminWorker"%>
<%@page import="myproject.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String Email=request.getParameter("AdminEmail");
        String Codekey=request.getParameter("key");
        
        Admin ad=new Admin();
      ad.setEmail(Email);
      ad.setKey(Codekey);
     String result=AdminWorker.updateAdminkey(ad);
     
    if(result.equals("Success"))
               {
        response.sendRedirect("AddAdminKey.jsp");
    }
   else
             {
       out.println("Invalid password <a href='AddAdminKey.jsp'>try again</a>");
   }
        %>
    </body>
</html>

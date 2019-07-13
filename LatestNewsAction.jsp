<%-- 
    Document   : LatestNewsAction
    Created on : 14 Feb, 2016, 10:53:19 AM
    Author     : Admin
--%>

<%@page import="myproject.InformationWorker"%>
<%@page import="myproject.Information"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String LatestNews=request.getParameter("txtLatestNews");
        String Date=request.getParameter("txtDate");
        
        Information inf=new Information();
        inf.setLatestNews(LatestNews);
        inf.setDate(Date);
        String result=InformationWorker.addLatestNews(inf);
         if(result.equals("Success"))
               {
         
        out.println("LatestNews Successfully Added <a href='AddLatestNews.jsp'>go to add LatestNews</a>");
    }
   else
             {
       response.sendRedirect("gmail.com");
   }
        %>
        
    </body>
</html>

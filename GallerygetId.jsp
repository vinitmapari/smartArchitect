<%-- 
    Document   : GallerygetId
    Created on : 11 Feb, 2016, 8:58:16 PM
    Author     : Admin
--%>

<%@page import="myproject.MultipleImage"%>
<%@page import="myproject.MultipleImageWorker"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String ProjectName=(String)session.getAttribute("ProjectName");
        int id =MultipleImageWorker.getIdByProjectName(ProjectName);
        System.out.println(id);
         session.setAttribute("ProjectId",id);
        MultipleImage img= MultipleImageWorker.getMultipleImgById(id);
         session.setAttribute("Projectimg",img);
        
        response.sendRedirect("UploadGallery.jsp");
      %>
    </body>
</html>

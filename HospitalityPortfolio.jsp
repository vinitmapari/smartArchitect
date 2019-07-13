<%-- 
    Document   : ResidentalPortfolio
    Created on : 13 Feb, 2016, 12:32:19 PM
    Author     : Admin
--%>

<%-- 
    Document   : ResidentPortfolio
    Created on : 13 Feb, 2016, 11:58:22 AM
    Author     : Admin
--%>

<%@page import="myproject.*"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
Template Name: Academic Education V2
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<html>
<head>
<title>Academic Education V2 | Pages | Gallery</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<jsp:include page="header.jsp"></jsp:include>
<body id="top">
  
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <!-- ################################################################################################ -->
      <div id="gallery">
        <figure>
            <%
            int from = Integer.parseInt(request.getParameter("from"));
            int to = Integer.parseInt(request.getParameter("to"));
            ArrayList<MultipleImage> list=MultipleImageWorker.getAllHospitalityImages();
            %>
          <header class="heading">Latest Images</header>
          <ul class="nospace clear">
              <%
              int size = list.size();
              int i;
              for(i = from; i <= to; i++) {
                  
                  MultipleImage img = list.get(i);
               %>
              <!--                -->
             
            <li class="one_quarter first"><a class="nlb" data-lightbox-gallery="gallery1" href="Example/image-folder/<%= img.getImg1()%>" title="Display Text 1"><font color="black">Project Name:</font><%=img.getProjectName()%><br><font color="black">Location:</font><%=img.getLocation()%><br><font color="black">Category:</font><%=img.getProjectCategory()%><br><font color="black">Description:</font><%=img.getDescription()%></a></li>  
            <li class="one_quarter first"><a class="nlb" data-lightbox-gallery="gallery1" href="Example/image-folder/<%= img.getImg1()%>" title="Display Text 1"><img class="borderedbox" src="Example/image-folder/<%= img.getImg1()%>" alt=""></a></li>
            <li class="one_quarter"><a class="nlb" data-lightbox-gallery="gallery1" href="Example/image-folder/<%= img.getImg2()%>" title="Display Text 2"><img class="borderedbox" src="Example/image-folder/<%= img.getImg2()%>" alt=""></a></li>
            <li class="one_quarter"><a class="nlb" data-lightbox-gallery="gallery1" href="Example/image-folder/<%= img.getImg3()%>" title="Display Text 3"><img class="borderedbox" src="Example/image-folder/<%= img.getImg3()%>" alt=""></a></li>
             <li class="one_quarter"><a class="nlb" data-lightbox-gallery="gallery1" href="Example/image-folder/<%= img.getImg4()%>" title="Display Text 3"><img class="borderedbox" src="Example/image-folder/<%= img.getImg4()%>" alt=""></a></li>
           <%
              }
              int newfrom = i;
              int newto = i + 3;
              while(newto>=size)
              {
                  
                  newto=newto-1;
                 System.out.println(newto);             
                  
              }
              
              if(from > 1 && (to-from)==3) 
              {
                  %>
             <a href="gallery1.jsp?from=<%= from-3 %>&to=<%= to-4%>">< previous</a>
             <a href="gallery1.jsp?from=<%= newfrom %>&to=<%= newto%>">next ></a>
             <%
              } 
               else if(from > 1 && (to-from)==2)
              {
                  %>
               <a href="gallery1.jsp?from=<%= from-4 %>&to=<%= to-3%>">< previous</a>
             <a href="gallery1.jsp?from=<%= newfrom %>&to=<%= newto%>">next ></a>   
                  <%
              }
              else if(from>1 && (to-from)==1)
                         {
                               %>
             <a href="gallery1.jsp?from=<%= from-4 %>&to=<%= to-2%>">< previous</a>
             <a href="gallery1.jsp?from=<%= newfrom %>&to=<%= newto%>">next ></a>   
                               <%
                           }
              else {
              %>
             <a href="gallery1.jsp?from=<%= newfrom %>&to=<%= newto%>">next ></a>
             <% 
             }
              %> 
          </ul>
                  
        
        </figure>
      </div>
      
      <div class="clear"></div>
    </main>
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->

<!-- JAVASCRIPTS --> 
<script src="layout/scripts/jquery.min.js"></script> 
<script src="layout/scripts/jquery.fitvids.min.js"></script> 
<script src="layout/scripts/jquery.mobilemenu.js"></script> 
<script src="layout/scripts/nivo-lightbox/nivo-lightbox.min.js"></script>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
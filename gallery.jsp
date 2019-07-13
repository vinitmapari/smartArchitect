<%-- 
    Document   : gallery
    Created on : 9 Feb, 2016, 9:23:19 AM
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
            ArrayList<MultipleImage> list=MultipleImageWorker.getAllImages();
            %>
          <header class="heading">Latest Images</header>
          <ul class="nospace clear">
              <%
              for(MultipleImage img:list)
                  
                     {
                  list.get(3);
                  %>
            <li class="one_quarter first"><a class="nlb" data-lightbox-gallery="gallery1" href="Example/image-folder/<%= img.getImg1()%>" title="Display Text 1"><font color="black">Project Name:</font><%=img.getProjectName()%><br><font color="black">Location:</font><%=img.getLocation()%><br><font color="black">Category:</font><%=img.getProjectCategory()%><br><font color="black">Description:</font><%=img.getDescription()%></a></li>  
            <li class="one_quarter first"><a class="nlb" data-lightbox-gallery="gallery1" href="Example/image-folder/<%= img.getImg1()%>" title="Display Text 1"><img class="borderedbox" src="Example/image-folder/<%= img.getImg1()%>" alt=""></a></li>
            <li class="one_quarter"><a class="nlb" data-lightbox-gallery="gallery1" href="Example/image-folder/<%= img.getImg2()%>" title="Display Text 2"><img class="borderedbox" src="Example/image-folder/<%= img.getImg2()%>" alt=""></a></li>
            <li class="one_quarter"><a class="nlb" data-lightbox-gallery="gallery1" href="Example/image-folder/<%= img.getImg3()%>" title="Display Text 3"><img class="borderedbox" src="Example/image-folder/<%= img.getImg3()%>" alt=""></a></li>
             <li class="one_quarter"><a class="nlb" data-lightbox-gallery="gallery1" href="Example/image-folder/<%= img.getImg4()%>" title="Display Text 3"><img class="borderedbox" src="Example/image-folder/<%= img.getImg4()%>" alt=""></a></li>
          <%
                   }
              %>
          </ul>
                  
          <figcaption>Gallery Description Goes Here</figcaption>
        </figure>
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <nav class="pagination">
        <ul>
          <li><a href="#">&laquo; Previous</a></li>
          <li class="current"><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><strong>&hellip;</strong></li>
          <li><a href="#">6</a></li>
          <li ><strong>7</strong></li>
          <li><a href="#">8</a></li>
          <li><a href="#">9</a></li>
          <li><strong>&hellip;</strong></li>
          <li><a href="#">14</a></li>
          <li><a href="#">15</a></li>
          <li><a href="#">Next &raquo;</a></li>
        </ul>
      </nav>
      <!-- ################################################################################################ --> 
      <!-- / main body -->
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
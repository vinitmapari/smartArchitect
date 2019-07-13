<%-- 
    Document   : GardenPortfolio
    Created on : 13 Feb, 2016, 1:22:46 PM
    Author     : Admin
--%>

<%-- 
    Document   : InteriorPortfolio
    Created on : 13 Feb, 2016, 1:20:25 PM
    Author     : Admin
--%>

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

<%@page import="java.util.ArrayList"%>
<%@page import="myproject.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    Document   : BunglowPortfolio
    Created on : 13 Feb, 2016, 11:34:59 AM
    Author     : Admin
--%>


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
<title>Academic Education V2 | Pages | Portfolio</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<jsp:include page="header.jsp"></jsp:include>
<body id="top">

<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <%
            ArrayList<MultipleImage> list=MultipleImageWorker.getAllGardenImages();
       %>
      <div id="portfolio">
        <ul class="nospace clear">
            <%
              for(MultipleImage img:list)
                  
                     {
                  %>
          <li class="one_half first">
            <article><img class="borderedbox" src="Example/image-folder/<%=img.getImg1()%>" alt="">
              <h2>Project Name:<%=img.getProjectName()%></h2>
              <p>Location:<%=img.getLocation()%><br>
              Description:<%=img.getDescription()%></p>
              <p class="right"><a href="#">Read More Here &raquo;</a></p>
            </article>
          </li>
          <li class="one_half">
            <article><img class="borderedbox" src="Example/image-folder/<%=img.getImg1()%>" alt="">
              <h2>Project Name:<%=img.getProjectName()%> </h2>
              <p>Location:<%=img.getLocation()%><br>
              Description:<%=img.getDescription()%></p>
              <p class="right"><a href="#">Read More Here &raquo;</a></p>
            </article>
          </li>
         
          <%
                   }
              %>
        </ul>
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <nav class="pagination">
        <ul>
          <li><a href="#">&laquo; Previous</a></li>
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><strong>&hellip;</strong></li>
          <li><a href="#">6</a></li>
          <li class="current"><strong>7</strong></li>
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


<!-- JAVASCRIPTS --> 
<script src="../layout/scripts/jquery.min.js"></script> 
<script src="../layout/scripts/jquery.fitvids.min.js"></script> 
<script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>

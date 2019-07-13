<%-- 
    Document   : header
    Created on : 11 Dec, 2015, 9:34:01 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script
src="http://maps.googleapis.com/maps/api/js">
</script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(16.0560968,73.474859),
    zoom:25,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"), mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>
    <script type="text/javascript">
var slideimages=new Array()
function slideshowimages()
{
for (i=0;i<slideshowimages.arguments.length;i++)
{
slideimages[i]=new Image()
slideimages[i].src=slideshowimages.arguments[i]
}
}
</script>
<title>Design Smart Architect</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">

</head>
<body id="top" background="images/DSAProject/bgwhite.jpg">
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="clear"> 
    <!-- ################################################################################################ -->
    <nav>
      <ul>
        <li><a href="HomeForm.jsp">Home</a></li>
        <li><a href="ContactUs.jsp">Contact Us</a></li>
        <li><a href="mainAdminLoginForm.jsp">main Admin Login</a></li>
        <li><a href="authenticateform.jsp">Admin Login</a></li>
        <li><a href="CustomerLoginForm.jsp">Customer Login</a></li>
      </ul>
    </nav>
    <!-- ################################################################################################ --> 
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="clear"> 
    <!-- ################################################################################################ -->
    <img src="logo.jpg" align="left" ><br><br>
    <div id="logo" class="fl_left">
        <h1><a href="Home.jsp">&nbsp;Design Smart Architect</a></h1>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ENVISIONING ARCHITECTURE</p>
    </div>
    <div class="fl_right">
      <form class="clear" method="post" action="customerprojectsearch.jsp">
        <fieldset>
          <legend>Search:</legend>
         <input type="text" value="" placeholder="Search by project name" name="projectname">
          <button class="fa fa-search" type="submit" title="Search"><em>Search</em></button>
        </fieldset>
      </form>
    </div>
    <!-- ################################################################################################ --> 
  </header>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row2">
  <div class="rounded">
    <nav id="mainav" class="clear"> 
      <!-- ################################################################################################ -->
      <ul class="clear">
        <li class="active"><a href="HomeForm.jsp">Home</a></li>
        <li><a class="drop" href="#">Projects</a>
          <ul>
            <li><a href="BunglowPortfolio.jsp?from=1&to=3">Bungalow</a></li>
            <li><a href="HospitalityPortfolio.jsp?from=1&to=3">Hospitality</a></li>
            <li><a href="LandscapePortfolio.jsp?from=1&to=3">Landscape</a></li>
            <li><a href="InteriorPortfolio.jsp?from=1&to=3">Interior</a></li>
            <li><a href="TemplePortfolio.jsp?from=1&to=3">Temple</a></li>
            <li><a href="HousePortfolio.jsp?from=1&to=3">House</a></li>
            <li><a href="ResidentalPortfolio.jsp?from=1&to=3">Resident</a></li>
            <li><a href="GardenPortfolio.jsp?from=1&to=3">Garden</a></li>
            <li><a href="IndustryPortfolio.jsp?from=1&to=3">Industry</a></li>
            <li><a href="FinancialCompanyPortfolio.jsp?from=1&to=3">Financial Company</a></li>
            <li><a href="ITCompanyPortfolio.jsp?from=1&to=3">IT Company</a></li>
            
          </ul>
        </li>
        <li><a href="gallery1.jsp?from=1&to=3">Gallery</a>
          
        </li>
        <li><a href="OurBusiness.jsp">our business</a></li>
        <li><a href="OurGroup.jsp">our group</a></li>
        <li><a href="Services.jsp">services</a></li>
        <li><a href="AboutUs.jsp">AboutUs</a></li>
         <li><a href="Feedback.jsp">Feedback</a></li>
         
      </ul>
      <!-- ################################################################################################ --> 
    </nav>
  </div>
</div>

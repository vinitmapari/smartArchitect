<%-- 
    Document   : headerCustomer
    Created on : 13 Feb, 2016, 8:59:56 PM
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
        <li><a href="AboutUs.jsp">About us</a></li>
        <li><a href="CustomerLoginForm.jsp">Customer Login</a></li>
         <li><a href="CustomerLogoutAction.jsp"><font size="5">Logout</font></a></li>
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
      <form class="clear" method="post" action="#">
        <fieldset>
          <legend>Search:</legend>
          <input type="text" value="" placeholder="Search Here">
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
            <li><a href="BunglowPortfolio.jsp">Bungalow</a></li>
            <li><a href="HospitalityPortfolio.jsp">Hospitality</a></li>
            <li><a href="LandscapePortfolio.jsp">Landscape</a></li>
            <li><a href="InteriorPortfolio.jsp">Interior</a></li>
            <li><a href="TemplePortfolio.jsp">Temple</a></li>
            <li><a href="HousePortfolio.jsp">House</a></li>
            <li><a href="ResidentalPortfolio.jsp">Resident</a></li>
            <li><a href="GardenPortfolio.jsp">Garden</a></li>
            <li><a href="IndustryPortfolio.jsp">Industry</a></li>
            <li><a href="FinancialCompanyPortfolio.jsp">Financial Company</a></li>
            <li><a href="ITCompanyPortfolio.jsp">IT Company</a></li>
            
          </ul>
        </li>
        <li><a class="drop" href="#">Gallery</a>
          <ul>
            <li><a href="RealImages.jsp">Real Images</a></li>
            <li><a href="Videos.jsp">Videos</a></li>
            <li><a href="gallery1.jsp?from=1&to=3">Images</a>
              
            </li>
          </ul>
        </li>
        <li><a href="CustomerProjectRegistration.jsp">Project Registration</a></li>
        <li><a href="CustomerUpdate.jsp">Update Customer Profile</a></li>
        <li><a href="CustomerProjectAdminList.jsp">Project List</a></li>
         
         
      </ul>
      <!-- ################################################################################################ --> 
    </nav>
  </div>
</div>

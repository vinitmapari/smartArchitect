<%-- 
    Document   : headerAdmin
    Created on : 13 Feb, 2016, 2:12:46 PM
    Author     : Admin
--%>

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

<title>Design Smart Architect</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top" background="images/DSAProject/bgwhite.jpg">

<div class="wrapper row0">
  <div id="topbar" class="clear">
   
    <nav>
      <ul>
        <li><a href="HomeForm.jsp">Home</a></li>
       <li><a href="AdminLoginForm.jsp">Admin Login</a></li>
       <li><a href="AdminLogoutAction.jsp"><font size="5">Logout</font></a></li>
      </ul>
    </nav>
 
  </div>
</div>

<div class="wrapper row1">
  <header id="header" class="clear"> 
   
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
        <li><a href="AdminUpdate.jsp">Update</a></li>
        <li><a href="AdminProjectCustomerList.jsp">Project List</a></li>
        <li><a href="UploadDescriptionGallery.jsp">Add Gallery</a></li>
        <li><a href="AdminProjectStatus.jsp">Add Project Status</a></li>
        <li><a href="AddLatestNews.jsp">Add Latest News</a></li>
        <li><a href="AddOurBusiness.jsp">Add Our Business</a></li>
        
         
      </ul>
      <!-- ################################################################################################ --> 
    </nav>
  </div>
</div>

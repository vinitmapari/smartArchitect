<%-- 
    Document   : authenticateform
    Created on : 16 Mar, 2016, 7:44:13 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel=STYLESHEET href="login.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <jsp:include page="header.jsp"></jsp:include>
    <body>
        <form action="authenticateAdmin.jsp" align="center">
  <br>Please enter Email Id&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="email">
<br><br>
Please enter Key&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="key">
<br><br>
<input type="submit" value="submit">
               
       </form>
        <br><br>
    <center>      <a href="AdminRegistration.jsp"><font size="blue" size="10">New User</a></center>
    <br><br>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>

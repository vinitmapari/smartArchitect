<%-- 
    Document   : ForgotPassword
    Created on : 15 Feb, 2016, 7:49:12 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <jsp:include page="header.jsp"></jsp:include>
    <body>
     <center>   <form method="Post" action="ForgotPasswordSender.jsp">
        Please enter ur email :<input type="text" name="email" size="70">
        <br>
        <input type="submit" value="Change Password">
        </form>
     </center>
    </body>
    <br><br>
    <jsp:include page="footer.jsp"></jsp:include>
</html>

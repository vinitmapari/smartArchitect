<%-- 
    Document   : Aboutus
    Created on : 7 Jan, 2016, 11:28:27 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <table border="0" align="center">
            <tr>
                <th><font size="10" color="RED"><u>About us</u></th> 
                
            </tr>
            <tr>
                <td>Description</td>
            </tr>
            <tr>
                
                <td><center><font color="black"><textarea name="txtNews" rows="20" cols="40"></textarea></center></td>
            </tr>
             <tr>
            <td> <center><input type="submit" value="Add"></center></td>
             </tr>
</table>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

<%-- 
    Document   : Feedback
    Created on : 25 Jan, 2016, 12:30:51 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="Feedback.css" />
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <jsp:include page="header.jsp"></jsp:include>
    <body>
        <form action="AddFeedback.jsp">
            <h1><center><font size="15" color="Black">Feedback</font></center></h1>
            <div id="ronaldo">
        <table align="center">
            
            
            <tr>
            <td><font color="black">Name</td>
            <td><font color="black"><input type="text" name="txtName"></td>
            </tr>
            
            <tr>
                <td><font color="black">Email</td>
                <td><font color="black"><input type="Email" name="txtEmail">
            </tr>
            <tr>
                <td><font color="black">feedback</td>
                <td><font color="black"><textarea name="txtFeedback" rows="10" cols="30"></textarea></td>    
             </tr>
             <tr>
                 <td colspan="2"><input type="submit" value="submit"></td>   
             </tr>
            
    </table>
            </div>
            </form>
         <jsp:include page="FeedbackShow.jsp"></jsp:include>
        </body>
        <br>
        <jsp:include page="footer.jsp"></jsp:include>
</html>

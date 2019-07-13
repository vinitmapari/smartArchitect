<%-- 
    Document   : LatestNews
    Created on : 7 Jan, 2016, 12:51:01 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <table border="0">
            <tr>
                <th colspan="3"><font size="10" color="RED"><u>News</u></th> 
                
            </tr>
            <tr>
                <td width="40%"><center><font color="black"><textarea name="txtNews" rows="20" cols="40"></textarea></center><td>
                <td></td>
                <td></td>
                
             </tr>
             <tr>
                 <td><center><input type="submit" value="Add"></center></td>
                 <td width="35%">  <input type="button" value="List"></td>
                <td width="50%"> <input type="button" value="Update"></td>
             </tr>
        </table>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

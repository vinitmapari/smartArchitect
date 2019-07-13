<%-- 
    Document   : OurBussiness
    Created on : 14 Feb, 2016, 11:15:30 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <jsp:include page="headerAdmin.jsp"></jsp:include>
    <body>
         <form action="OurBusinessAction.jsp">
        <table border="0" align="center">
            <tr>
                <td>
                    <h1> OurBussiness</h1>
                </td>
            </tr>
            <tr>
                <td>
                    <textarea name="txtOurBussiness" rows="20" cols="150"></textarea>
                </td>
            </tr>
            
            <tr>
                <td>
                    <input type="submit" value="submit">
                </td>
            </tr>
        </table>
        </form>
    </body>
   <jsp:include page="footer.jsp"></jsp:include>
</html>

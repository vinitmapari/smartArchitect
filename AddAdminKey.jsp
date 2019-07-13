<%-- 
    Document   : AddAdminKey
    Created on : 16 Mar, 2016, 8:02:13 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <jsp:include page="headermainAdmin.jsp"></jsp:include>
    <body>
        <form action="AddAdminKeyAction.jsp">
            
            <table>
                <tr>
                    <td>Please enter Email Id</td>
                    <td><input type="text" name="AdminEmail"></td>
                </tr>
                <tr>
                    <td>Enter key</td>
                    <td><input type="text" name="key"></td>
                </tr>
                <tr>
                <td colspan="2"><input type="submit" name="submit"></td>
                </tr>
            </table>
           
        </form>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>

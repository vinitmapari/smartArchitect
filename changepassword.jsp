<%-- 
    Document   : changepassword
    Created on : 15 Feb, 2016, 7:53:00 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function myFunction() {
        var pass1 = document.getElementById("pass1").value;
        var pass2 = document.getElementById("pass2").value;
        if (pass1 != pass2) {
            //alert("Passwords Do not match");
            document.getElementById("pass1").style.borderColor = "#E34234";
            document.getElementById("pass2").style.borderColor = "#E34234";
        }
        else {
            alert("Passwords Match!!!");
        }
    }				
        </script>
    </head>
    <body>
        <form action="ChangePasswordAction.jsp">
        <h1>Change Password Here from the forms:<%= request.getParameter("axyxz")%></h1>
        <%
        String EmailId=request.getParameter("axyxz");
        System.out.println(EmailId);
        session.setAttribute("CustomerEmailId",EmailId);
        %>
         your email id is <%= request.getParameter("axyxz")%><br>
            enter password<input type="Password" id="pass1" name="Password"><br>
            retype password<input type="password" id="pass2" name="RetypePassword" onblur="myFunction()">
            <input type="submit" value="submit">
        </form>
    </body>
</html>

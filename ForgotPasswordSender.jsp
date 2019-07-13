<%-- 
    Document   : ForgotPasswordSender
    Created on : 15 Feb, 2016, 7:51:05 PM
    Author     : Admin
--%>

<%-- 
    Document   : FOrgotPasswordSender
    Created on : 16-Jan-2016, 13:51:26
    Author     : aditi bobhate
--%>

<%@page import="myproject.MailWorker"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            ArrayList<String> emailList=new ArrayList<String>();
            emailList.add("vinitmapari@gmail.com");
            emailList.add("maparivinit@gmail.com");
            
            String email=request.getParameter("email");
            if(emailList.contains(email))
            {
                String body="<a href=http://localhost:8084/DemoProject/changepassword.jsp?abc=1002020209202020202020202020&xyz=83838383838383838383838383838&mno=oidShjbasjfvdjlkfbajgfvafkjbafjgajhjbfrjhbdcjkbfkjcNBDvdagdkjs&axyxz="+email+"&loop=India&village=8766827t63786278>Click Here to CHange the Password</a>";
                MailWorker ml=new MailWorker();
                ml.sendHTMLMail(email, body,"Change Password Request");
                response.sendRedirect("message.jsp");
            }
            else
            {
                out.println("User doesnt exist");
            }
                    %>
    </body>
</html>

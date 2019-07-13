<%-- 
    Document   : AdminRegistrationMailSender
    Created on : 16 Mar, 2016, 9:37:06 PM
    Author     : Admin
--%>

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
            
            String email="vinitmapari@gmail.com";
            String FirstName=(String)session.getAttribute("FirstName");
            String LastName=(String)session.getAttribute("LastName");
            String Email=(String)session.getAttribute("Email");
            String Mobile1=(String)session.getAttribute("Mobile1");
            String Mobile2=(String)session.getAttribute("Mobile2");
            if(emailList.contains(email))
            {
                String body="<p>Hi this is'"+FirstName+"' '"+LastName+"'<br>Email Id is'"+Email+"'<br>Mobile no '"+Mobile1+"'   '"+Mobile2+"'</p><a href=http://localhost:8084/DemoProject/AddAdminKey.jsp?abc=1002020209202020202020202020&xyz=83838383838383838383838383838&mno=oidShjbasjfvdjlkfbajgfvafkjbafjgajhjbfrjhbdcjkbfkjcNBDvdagdkjs&axyxz="+email+"&loop=India&village=8766827t63786278>Click Here to CHange the Password</a>";
                MailWorker ml=new MailWorker();
                ml.sendHTMLMail(email, body,"New Admin");
                response.sendRedirect("messageAdmin.jsp");
            }
            else
            {
                out.println("User doesnt exist");
            }
                    %>
    </body>
</html>

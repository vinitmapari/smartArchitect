<%-- 
    Document   : AdminProjectCustomerList
    Created on : 31 Jan, 2016, 8:44:10 AM
    Author     : Admin
--%>

<%@page import="myproject.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="myproject.Project"%>
<%@page import="myproject.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" type="text/css" href="AdminProjectCustomerList.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <jsp:include page="headerAdmin.jsp"></jsp:include>
    <body>
         <%
         Admin ad=(Admin)session.getAttribute("Admin");
         String email=(String)session.getAttribute("AdminEmail");
        ArrayList<Project> list=ProjectWorker.getAllProjectByAdminEmailId(email);
            
        %>
        <h1 align="center"><%= ad.getFirstName()%>&nbsp;<%= ad.getLastName()%></h1>
 <div id="adminprojectcustomerlist">      
<table align="center" border="1">

	<tr>
		
		<th><font color="black">Project Name</th>
		<th><font color="black">Customer Name</th>
		<th><font color="black">Email Id</th>
		<th><font color="black">Contact no</th>
		<th><font color="black">Project Status</th>
		<th><font color="black">Payment Status</th>
	</tr>
        <%
        
        for(Project admin:list)
                     {
            System.out.println("email");
            
            System.out.println(ProjectWorker.getIdByAdminEmail(email));
           Customer a1=CustomerWorker.getCustomerById(ProjectWorker.getIdByAdminEmail(email));
           if(a1==null)
                         {
               System.out.println("I m null");
           }
                     else{
        
        %>
		

	<tr>
		
		<td><%= admin.getProjectName()%> </td>
		<td><%= a1.getFirstName()%><%= a1.getLastName()%> </td>
		<td><%= a1.getEmail()%> </td>
		<td>Phone no  <br>
		Mob no  
		</td>
		<td><%= admin.getProjectStatus()%> </td>
		<td><%= admin.getPaymentStatus()%> </td>
	</tr>
        <%
               } }
             
        %>
</table>
 </div>
    </body>
     <jsp:include page="footer.jsp"></jsp:include>
</html>

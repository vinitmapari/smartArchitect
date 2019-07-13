<%-- 
    Document   : mainAdminProfile
    Created on : 18 Mar, 2016, 10:07:46 PM
    Author     : Admin
--%>

<%-- 
    Document   : AdminProfile
    Created on : 7 Jan, 2016, 11:24:01 AM
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
        
         
          <%@page import="myproject.*"%>
        <form action="AdminUpdate.jsp" method="post" >
            <center><h1> <font size="25" color="RED"><u>Admin Profile</u><br><br></font></h1></center>
	<table border="0" width="100%" cellpadding="5" >
           

	<tr>
		<td width="30%" colspan="2"><font size="5"></font></td>
                <td><img src="nihar.jpg" height="100" width="100"><br><br></td>
	</tr>
        
	<tr>
		<td>1</td>
		<td>Name </td>
		<td><label for="First"> Nihar Sail </label></td>
	</tr>


	
	<tr>
		<td>2</td>
		<td> Gender </td>
		<td><label for="Gender">Male </label></td>
	</tr>


	<tr>
		<td>3</td>
		<td>Education Qualification</td>
		<td><label for="EducationQualification"> Architect </label>
		</td>
	</tr>
	
        <tr>
		<td>4</td>
		<td> Email</td>
		<td><label for="Email">nihar@gmail.com</label></td>
	</tr>

 
</table>	
</form>

    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>

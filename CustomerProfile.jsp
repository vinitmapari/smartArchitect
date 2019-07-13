<%-- 
    Document   : CustomerProfile
    Created on : 7 Jan, 2016, 11:24:22 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" type="text/css" href="CustomerProfile.css" />

<script language="JAVAsCRIPT">
</script>
</head>
<jsp:include page="headerCustomer.jsp"></jsp:include>
<body> 
    <%@page import="myproject.*"%>
    <form action="CustomerUpdate.jsp"> 
        <u><center><font size="20" color="black" >profile</font></center></u><br>
<table border="1" width="100%" cellpadding="5" cellspacing="3">
    <%
 Customer c=(Customer)session.getAttribute("customer");
   %>

	
		
        <tr>
        <td></td>
        <td width="100%" colspan="2"><img src="<%= c.getImage()%>"><%= c.getFirstName()%><%= c.getLastName()%><font color="black" size="20"></td>
        </tr>
        

	<tr>
		<td><font color="black">1</td>
		<td><font color="black"> First Name </td> 
                <td><font color="black"><%= c.getFirstName()%></td>
	</tr>

         <tr>
		<td><font color="black">2</td>
		<td><font color="black">Last Name </td>
                <td><font color="black"><%= c.getLastName()%></td>
	</tr>

	<tr>
		<td><font color="black">3</td>
		<td><font color="black">Address1</td>
                <td><font color="black"><%= c.getAddress1() %></td>
	</tr>
        <tr>
		<td><font color="black">4</td>
		<td><font color="black"> Pin code1 </td>
		<td><font color="black"><%= c.getPinCode() %></td>
	</tr>
	<tr>
		<td><font color="black">5</td>
		<td><font color="black"> Address2</td>
		<td><font color="black"><%= c.getAddress2() %></td>
	</tr>
        <tr>
		<td><font color="black">6</td>
		<td><font color="black"> Pin code2 </td>
		<td><font color="black"><%= c.getPinCode2() %></td>
	</tr>
	<tr>
		<td><font color="black">7</td>
		<td><font color="black"> Age </td>
		<td><font color="black"><%= c.getAge() %></td>
	</tr>
	<tr>
		<td><font color="black">8</td>
		<td><font color="black"> Gender </td>
		<td><font color="black"><%= c.getGender() %></td>
	</tr>
	<tr>
		<td><font color="black">9</td>
		<td><font color="black"> Customer Category  </td>
		<td><font color="black"><%= c.getCustomerCategory() %></td>
	</tr>


	<tr>
		<td><font color="black">10</td>
		<td><font color="black"> Country </td>
		<td><font color="black"><%= c.getCountry() %></td>
	</tr>
	<tr>
		<td><font color="black">11</td>
		<td><font color="black"> State</td>
		<td><font color="black"><%= c.getState() %></td>
	</tr>
	
	<tr>
		<td><font color="black">12</td>
		<td><font color="black"> City </td>
		<td><font color="black"><%= c.getCity() %></td>
	</tr>

         <tr>
		<td><font color="black">13</td>
		<td><font color="black">Mobile No1</td>
		<td><font color="black"><%= c.getMobileNo1()%></td>
	</tr>
          <tr>
		<td><font color="black">14</td>
		<td><font color="black">Mobile No2 </td>
		<td><font color="black"><%= c.getMobileNo2()%></td>
	</tr>
        
          <tr>
		<td><font color="black">15</td>
		<td><font color="black">Phone No1 </td>
		<td><font color="black"><%= c.getPhoneNo1()%></td>
	</tr>
        
          <tr>
		<td><font color="black">16</td>
		<td><font color="black">Phone No2 </td>
		<td><font color="black"><%= c.getPhoneNo2()%></td>
	</tr>
        
	<tr>
		<td><font color="black">17</td>
		<td><font color="black"> Email</td>
		<td><font color="black"><%= c.getEmail() %></td>
	</tr>
 
	<tr>
		<td><font color="black">18</td>
		<td><font color="black"> Password </td>
		<td><font color="black"><%= c.getPassword() %></td>
	</tr>

	</table>

    </form>

 </body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
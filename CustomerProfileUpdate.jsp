<%-- 
    Document   : CustomerProfileUpdate
    Created on : 30 Jan, 2016, 6:53:50 PM
    Author     : Admin
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" type="text/css" href="CustomerProfile.css" />

<script language="JAVAsCRIPT">
</script>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body> 
    <%@page import="myproject.*"%>
    <form action="CustomerUpdate.jsp"> 
        <u><center><font size="20" color="black" >profile</font></center></u>
<table border="1" width="100%" cellpadding="5" cellspacing="3">
    <%
  int id=(Integer)session.getAttribute("Custid");
  System.out.println(id);
  String query="Select * from customerregistration where id="+id+";";
   ResultSet rs=DatabaseConnector.getResultSet(query);
   if(rs.next())
             {
   %>

	<tr>
	<th colspan="3"></th>
	</tr>
		
        <tr>
        <td></td>
        <td width="100%" colspan="2"><img src="<%= rs.getString(2)%>"><font color="black" size="20"></td>
        </tr>
        

	<tr>
		<td><font color="black">1</td>
		<td><font color="black"> First Name </td> 
                <td><font color="black"><%= rs.getString(3)%></td>
	</tr>

         <tr>
		<td><font color="black">2</td>
		<td><font color="black">Last Name </td>
                <td><font color="black"><%= rs.getString(4) %></td>
	</tr>

	<tr>
		<td><font color="black">3</td>
		<td><font color="black">Address1</td>
                <td><font color="black"><%= rs.getString(5) %></td>
	</tr>
        <tr>
		<td><font color="black">4</td>
		<td><font color="black"> Pin code1 </td>
		<td><font color="black"><%= rs.getString(6) %></td>
	</tr>
	<tr>
		<td><font color="black">5</td>
		<td><font color="black"> Address2</td>
		<td><font color="black"><%= rs.getString(7) %></td>
	</tr>
        <tr>
		<td><font color="black">6</td>
		<td><font color="black"> Pin code2 </td>
		<td><font color="black"><%= rs.getString(8) %></td>
	</tr>
	<tr>
		<td><font color="black">7</td>
		<td><font color="black"> Age </td>
		<td><font color="black"><%= rs.getString(9) %></td>
	</tr>
	<tr>
		<td><font color="black">8</td>
		<td><font color="black"> Gender </td>
		<td><font color="black"><%= rs.getString(10) %></td>
	</tr>
	<tr>
		<td><font color="black">9</td>
		<td><font color="black"> Customer Category  </td>
		<td><font color="black"><%= rs.getString(11) %></td>
	</tr>


	<tr>
		<td><font color="black">10</td>
		<td><font color="black"> Country </td>
		<td><font color="black"><%= rs.getString(12) %></td>
	</tr>
	<tr>
		<td><font color="black">11</td>
		<td><font color="black"> State</td>
		<td><font color="black"><%= rs.getString(13) %></td>
	</tr>
	
	<tr>
		<td><font color="black">12</td>
		<td><font color="black"> City </td>
		<td><font color="black"><%= rs.getString(14) %></td>
	</tr>
        
        <tr>
		<td><font color="black">13</td>
		<td><font color="black">Mobile No1</td>
		<td><font color="black"><%= rs.getString(17)%></td>
	</tr>
          <tr>
		<td><font color="black">14</td>
		<td><font color="black">Mobile No2 </td>
		<td><font color="black"><%= rs.getString(18)%></td>
	</tr>
        
          <tr>
		<td><font color="black">15</td>
		<td><font color="black">Phone No1 </td>
		<td><font color="black"><%= rs.getString(19)%></td>
	</tr>
        
          <tr>
		<td><font color="black">16</td>
		<td><font color="black">Phone No2 </td>
		<td><font color="black"><%= rs.getString(20)%></td>
	</tr>
	
	<tr>
		<td><font color="black">17</td>
		<td><font color="black"> Email</td>
		<td><font color="black"><%= rs.getString(15) %></td>
	</tr>
 
	<tr>
		<td><font color="black">18</td>
		<td><font color="black"> Password </td>
		<td><font color="black"><%= rs.getString(16) %></td>
	</tr>
        <%
               }
        %>
        <tr>
		<td colspan="3" align="center"><br><br>
                    <input type="submit" value="Update" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="CustomerProjectRegistration.jsp"><input type="button" value="Project"></a>
		</td>
	</tr>
	</table>

    </form>

 </body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
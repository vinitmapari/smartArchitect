<%-- 
    Document   : AdminProfileUpdate
    Created on : 1 Feb, 2016, 12:15:44 PM
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
    <jsp:include page="headerAdmin.jsp"></jsp:include>
    <body>
        
         <%@ page import="java.sql.*"%>
          <%@page import="myproject.*"%>
        <form action="AdminUpdate.jsp" method="post" >
            <center>     <h1><font size="25" color="RED"><u>Admin Profile</u><br><br></font></h1></center>
	<table border="0" width="100%" cellpadding="5" >
           <%
  int id=(Integer)session.getAttribute("AdminId");
  String query="Select * from adminregistration where id="+id+";";
   ResultSet rs=DatabaseConnector.getResultSet(query);
   if(rs.next())
             {
   %>

            
            
            
	
	<tr>
		<td width="30%" colspan="2"><font size="5"></font></td>
                <td><img src="Example/AdminImage/<%= rs.getString(2)%>" height="120" width="145"><br><br></td>
	</tr>
        
	<tr>
		<td>1</td>
		<td> First Name </td>
		<td> <%= rs.getString(3)%></td>
	</tr>

         <tr>
		<td>2</td>
		<td>Last  Name </td>
		<td><label for="Last"> <%= rs.getString(4)%> </label></td>
	</tr>

	<tr>
		<td><font color="black">3</td>
		<td><font color="black"> Address1</td>
		<td><font color="black"><%= rs.getString(5)%></td>
	</tr>
	<tr>
		<td><font color="black">4</td>
		<td><font color="black"> Pin code1 </td>
		<td><font color="black"><%= rs.getString(6)%></td>
	</tr>
        <tr>
		<td><font color="black">5</td>
		<td><font color="black"> Address2</td>
		<td><font color="black"><%= rs.getString(7)%></td>
	</tr>
        <tr>
		<td><font color="black">6</td>
		<td><font color="black"> Pin code2</td>
		<td><font color="black"><%= rs.getString(8)%></td>
	</tr>

        <tr>
		<td>7</td>
		<td> Age </td>
		<td><label for="Age"> <%= rs.getString(9)%> </label></td>
	</tr>

	<tr>
		<td>8</td>
		<td> Gender </td>
		<td><%= rs.getString(10)%></td>
	</tr>


	<tr>
		<td>9</td>
		<td>Education Qualification</td>
		<td><label for="EducationQualification"><%= rs.getString(11)%> </label>
		</td>
	</tr>

	<tr>
		<td>10</td>
		<td>Specialization</td>
		<td><label for="Specialization"> <%= rs.getString(12)%> </label>
		</td>
	</tr>
	
	<tr>
		<td>11</td>
		<td> Strong part</td>
		<td><label for="StrongPart"> <%= rs.getString(13)%> </label></td>
	</tr>
	<tr>
		<td>12</td>
		<td> Work experience</td>
		<td><label for="WorkExp"><%= rs.getString(14)%></label></td>
	</tr>
	
	<tr>
		<td>13</td>
		<td> Work experience years</td>
		<td><label for="WorkExpyr"><%= rs.getString(15)%></label></td>
	</tr>
	

	


	<tr>
		<td>15</td>
		<td> Country</td>
		<td><label for="Country"><%= rs.getString(17)%></label>
		</td>
	</tr>
	<tr>
		<td>16</td>
		<td> State</td>
		<td><label for="State"><%= rs.getString(18)%></label></td>
	</tr>

	<tr>
		<td>17</td>
		<td> City</td>
		<td><label for="City"><%= rs.getString(19)%></label></td>
	</tr>

	
	
	
	<tr>
		<td>20</td>
		<td> Phone no1</td>
		<td><label for="Address1"><%= rs.getString(21)%> </label></td>
	</tr>
	
	<tr>
		<td>21</td>
		<td> Phone no2</td>
		<td><label for="Address1"><%= rs.getString(22)%> </label></td>
	</tr>
	
	<tr>
		<td>22</td>
		<td> Mobile no1</td>
		<td><label for="Address1"><%= rs.getString(23)%></label></td>
	</tr>
	<tr>
		<td>23</td>
		<td> Mobile no2</td>
		<td><label for="Address1"><%= rs.getString(24)%></label></td>
	</tr>
	
        <tr>
		<td>24</td>
		<td> Email</td>
		<td><label for="Email"><%= rs.getString(25)%></label></td>
	</tr>
        <%
               }
        %>
        <tr>
		<td colspan="3" align="center"><br><br>
  <input type="submit" value="Update" onClick="return ProcessForm()">
		</td>
	</tr>
</table>	
</form>

    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>

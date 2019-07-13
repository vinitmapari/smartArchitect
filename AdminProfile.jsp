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
            <center><h1> <font size="25" color="RED"><u>Admin Profile</u><br><br></font></h1></center>
	<table border="0" width="100%" cellpadding="5" >
            <%
            Admin ad=(Admin)session.getAttribute("Admin");
            %>

	<tr>
		<td width="30%" colspan="2"><font size="5"></font></td>
                <td><img src="Example/AdminImage/<%= ad.getImage()%>" height="120" width="145"><br><br></td>
	</tr>
        
	<tr>
		<td>1</td>
		<td> First Name </td>
		<td><label for="First"> <%= ad.getFirstName()%> </label></td>
	</tr>

         <tr>
		<td>2</td>
		<td>Last  Name </td>
		<td><label for="Last"> <%= ad.getLastName()%> </label></td>
	</tr>

	<tr>
		<td><font color="black">3</td>
		<td><font color="black"> Address1</td>
		<td><font color="black"><%= ad.getAddress1()%></td>
	</tr>
	<tr>
		<td><font color="black">4</td>
		<td><font color="black"> Pin code1 </td>
		<td><font color="black"><%= ad.getPinCode()%></td>
	</tr>
        <tr>
		<td><font color="black">5</td>
		<td><font color="black"> Address2</td>
		<td><font color="black"><%= ad.getAddress2()%></td>
	</tr>
        <tr>
		<td><font color="black">6</td>
		<td><font color="black"> Pin code2</td>
		<td><font color="black"><%= ad.getPincode2()%></td>
	</tr>

        <tr>
		<td>7</td>
		<td> Age </td>
		<td><label for="Age"> <%= ad.getAge()%> </label></td>
	</tr>

	<tr>
		<td>8</td>
		<td> Gender </td>
		<td><label for="Gender"> <%= ad.getGender()%> </label></td>
	</tr>


	<tr>
		<td>9</td>
		<td>Education Qualification</td>
		<td><label for="EducationQualification"> <%= ad.getEducation_Qualification()%> </label>
		</td>
	</tr>

	<tr>
		<td>10</td>
		<td>Specialization</td>
		<td><label for="Specialization"> <%= ad.getSpecialization()%> </label>
		</td>
	</tr>
	
	<tr>
		<td>11</td>
		<td> Strong part</td>
		<td><label for="StrongPart"> <%= ad.getStrong_part()%> </label></td>
	</tr>
	<tr>
		<td>12</td>
		<td> Work experience</td>
		<td><label for="WorkExp"> <%= ad.getWork_experience()%> </label></td>
	</tr>
	
	<tr>
		<td>13</td>
		<td> Work experience years</td>
		<td><label for="WorkExpyr"> <%= ad.getWork_experoence_years()%> </label></td>
	</tr>
	

	


	<tr>
		<td>15</td>
		<td> Country</td>
		<td><label for="Country"> <%= ad.getCountry()%> </label>
		</td>
	</tr>
	<tr>
		<td>16</td>
		<td> State</td>
		<td><label for="State"> <%= ad.getState()%> </label></td>
	</tr>

	<tr>
		<td>17</td>
		<td> City</td>
		<td><label for="City"> <%= ad.getCity()%> </label></td>
	</tr>

	<tr>
		<td>18</td>
		<td> Pin code </td>
		<td><label for="PinCode"> <%= ad.getPinCode()%> </label></td>
	</tr>
	
	</tr>
	
	<tr>
		<td>20</td>
		<td> Phone no1</td>
		<td><label for="Address1"> <%= ad.getPhone_no1()%> </label></td>
	</tr>
	
	<tr>
		<td>21</td>
		<td> Phone no2</td>
		<td><label for="Address1"> <%= ad.getPhone_no2()%> </label></td>
	</tr>
	
	<tr>
		<td>22</td>
		<td> Mobile no1</td>
		<td><label for="Address1"> <%= ad.getMobile_no1()%> </label></td>
	</tr>
	<tr>
		<td>23</td>
		<td> Mobile no2</td>
		<td><label for="Address1"> <%= ad.getMobile_no2()%> </label></td>
	</tr>
	
        <tr>
		<td>24</td>
		<td> Email</td>
		<td><label for="Email"> <%= ad.getEmail()%> </label></td>
	</tr>

        <tr>
		<td colspan="3" align="center"><br><br>
  <input type="submit" value="Update" onClick="return ProcessForm()"> <a href="AdminProjectCustomerList.jsp"><input type="button" value="ProjectList"></a>
		</td>
	</tr>
</table>	
</form>

    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>

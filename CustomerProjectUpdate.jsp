<%-- 
    Document   : CustomerProjectUpdate
    Created on : 23 Jan, 2016, 2:47:51 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

  <head>
	<link rel="stylesheet" type="text/css" href="CustomerProjectRegister.css" />

		<script language="JAVAsCRIPT">

function isString(s)
{
		var len;
		len=s.length;
	for(i=0;i<len;i++)
	{
       		if(s.charAt(i)>='0' && s.charAt(i)<='9')
		{
		return false;
		}	
	}
    return true;
}

function ValidateName()
{
	var str=document.frmRegistration.txtFirstName.value;
	var str=document.frmRegistration.txtLastName.value;
	if(isString(str)==false)
	{
			alert("Plz Enter only Alphabets!");
			document.frmRegistration.txtName.value="";
			return false;
	}
	    return true;
}

function ValidatePassword()
{
     var str=document.frmRegistration.txtPwd.value;
     var len=str.length;
     if(len<8)
     {
	alert("Plz Enter atleast 8 Characters!");
	document.frmRegistration.txtPwd.value="";
	return false;
      }

    return true;
}


function ValidateEmail()
{
var str=document.frmRegistration.txtEmail.value;
		
		var lenstr=str.length;
        var at="@";
		var dot=".";
		
	if(str.indexOf(at)==-1)
	{
		alert("@ should be present");
		document.frmRegistration.txtEmail.value="";
		return false;	
	}
	
	
	if(str.indexOf(dot)==-1)
	{
		alert(". should be present");
		document.frmRegistration.txtEmail.value="";
		return false;	
        }



	
	return true;	
	}


	
function ProcessForm()
	{
		if(document.frmRegistration.txtFirstName.value=="")
		{
		alert("Please Enter first Name");
		document.frmRegistration.txtFirstName.focus();
		return false;
		}
		if(document.frmRegistration.txtPwd.value=="")
		{
		alert("Please Enter Password");
		document.frmRegistration.txtPwd.focus();
		return false;
		}
		if(document.frmRegistration.txtEmail.value=="")
		{
		alert("Please Enter EmailId");
		document.frmRegistration.txtEmail.focus();
		return false;
		}

	return true;
	}
			
</script>

</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
     <%@page import="myproject.*"%>
          <%@ page import="java.sql.*"%>
   <form action="CustomerProjectUpdateAction.jsp" method="post" >
       <u><center><font size="20" color="RED" >CustomerProjectUpdate</font></center></u>
	<table border="0" width="100%" cellpadding="5" >
            <% Project p=(Project)session.getAttribute("Project"); %>
            
            
	<tr>
	<th colspan="3"></th>
	</tr>
		
		<tr>
		<td width="30%" colspan="2"><font size="5" color="black">please fill the following</font></td>
		<td><img src="Customer-Icon.png" height="120" width="145"></td>
	</tr>
        
        
	<tr>
		<td><font color="black">1</td>
	        <td><font color="black">Project Name</td>
                <td><font color="black"><input type="text" name="txtProjectName" onblur="return ValidateName()" value="<%= p.getProjectName()%>"></td>
	</tr>

         
	<tr>
		<td><font color="black">2</td>
		<td><font color="black"> Address1</td>
		<td><font color="black"><textarea name="txtAddress" rows="3" cols="16" onblur="return ValidateName()"><%= p.getAddress()%></textarea></td>
	</tr>

	<tr>
		<td><font color="black">3</td>
		<td><font color="black"> Begin date </td>
                <td><font color="black"><input type="date" name="txtBeginDate" value="<%= p.getBeginDate()%>"></td>
	</tr>

	<tr>
		<td><font color="black">4</td>
		<td><font color="black">Target End date </td>
                <td><font color="black"><input type="date" name="txtTargetDate" value="<%= p.getTargetEndDate()%>"></td>
	</tr>

	<tr>
		<td><font color="black">5</td>
		<td><font color="black"> Final End date </td>
		<td><font color="black"><input type="date" name="txtFinalDate" value="<%= p.getFinalEndDate()%>"></td>
	</tr>


	<tr>
		<td><font color="black">6</td>
		<td><font color="black"> lumpsum construction cost 
		with respect to other ongoing construction 
		in that area 
		</td>
		<td><font color="black"><input type="text" name="txtLumpsumCost" value="<%= p.getLumpsum_construction_cost()%>"></td>
	</tr>

	<tr>
		<td><font color="black">7</td>
		<td><font color="black"> Website </td>
		<td><font color="black"><input type="url" name="txtWebsite" value="<%= p.getWebsite()%>"></td>
	</tr>


	<tr>
		<td><font color="black">9</td>
		<td><font color="black"> Client Requirements </td>
		<td><font color="black"><input type="text" name="txtClientRequirements" value="<%= p.getClientRequirements()%>"></td>
	</tr>

	<tr>
		<td><font color="black">10</td>
		<td><font color="black"> Fesiability as per municipal laws  </td>
		<td><font color="black"><textarea name="txtFesiability" rows="3" cols="16" onblur="return ValidateName()"><%= p.getFesiability()%></textarea></td>
	</tr>

        
	<tr>
		<td><font color="black">12</td>
		<td><font color="black"> FSI </td>
		<td><font color="black"><textarea id="FSI" name="txtFSI" rows="3" cols="16" onblur="return ValidateName()"><%= p.getFSI()%></textarea></td>
	</tr>
        
        
	<tr>
		<td><font color="black">14</td>
		<td><font color="black"> Project Category  </td>
		<td><font color="black"><select name="1stProjectCategory">
			<option value="<%= p.getProjectCategory()%>"> Financial Company</option>
			<option value="<%= p.getProjectCategory()%>"> resident </option>
			<option value="<%= p.getProjectCategory()%>"> Industry </option>
			<option value="<%= p.getProjectCategory()%>"> House </option>
			<option value="<%= p.getProjectCategory()%>"> temple </option>
			<option value="<%= p.getProjectCategory()%>"> Bunglow </option>
			<option value="<%= p.getProjectCategory()%>"> Garden </option>
			<option value="<%= p.getProjectCategory()%>"> Interior </option>
			<option value="<%= p.getProjectCategory()%>"> Hospitality </option>
			<option value="<%= p.getProjectCategory()%>"> IT company </option>
			<option value="<%= p.getProjectCategory()%>"> other </option>
		    </select>
		</td>
	</tr>


	<tr>
		<td><font color="black">15</td>
		<td><font color="black"> Country </td>
		<td><font color="black"><input type="text" name="txtCountry" onblur="return ValidateName()" value="<%= p.getCountry()%>"></td>
	</tr>
	<tr>
		<td><font color="black">16</td>
		<td><font color="black"> State</td>
		<td><font color="black"><input type="text" name="txtState" onblur="return ValidateName()" value="<%= p.getState()%>"></td>
	</tr>
	
	<tr>
		<td><font color="black">17</td>
		<td><font color="black"> City </td>
		<td><font color="black"><input type="text" name="txtCity" onblur="return ValidateName()" value="<%= p.getCity()%>"></td>
	</tr>

	<tr>
		<td><font color="black">18</td>
		<td><font color="black"> Pin code </td>
		<td><font color="black"><input type="text" name="txtPinCode" value="<%= p.getPinCode()%>"></td>
	</tr>
	<tr>
		<td><font color="black">19</td>
		<td><font color="black"> Email_Id of Project</td>
		<td><font color="black"><input type="text" name="txtEmail" size="50" onblur="return ValidateEmail()" value="<%= p.getEmail_Id_Project()%>"></td>
	</tr>
        <tr>
		<td><font color="black">21</td>
		<td><font color="black">Select Archietect</td>
                
		<td><font color="black"><select name="ProjectArchietect">
                         <%
        String query="Select * from adminregistration";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
        %>
                        <option value="<%= rs.getString(25)%>"><%= rs.getString(3) %></option>
                     <%
                               }
                %>  
		    </select>
		</td>
                
	</tr>
        <tr>
		<td colspan="3" align="center"><br><br>
		<font color="black"><input type="submit" value="PlaceOrder" onClick="return ProcessForm()">
		</td>
	</tr>
	</table>

    </form>

</body>
</html>


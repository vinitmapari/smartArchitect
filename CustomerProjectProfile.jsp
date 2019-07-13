<%-- 
    Document   : CustomerProjectUpdate
    Created on : 20 Jan, 2016, 4:48:15 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    Document   : CustomerProjectRegistration
    Created on : 19 Jan, 2016, 11:57:22 AM
    Author     : Admin
--%>

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
<jsp:include page="headerCustomer.jsp"></jsp:include>
 <%@page import="myproject.*"%>
          <%@ page import="java.sql.*"%>
<body>
    <% 
    String EmailId=(String)session.getAttribute("ProjectEmail");
     int id=ProjectWorker.getIdByEmail(EmailId);
         session.setAttribute("CustomerProjectid",id);
        Project p=ProjectWorker.getProjectById(id);
        session.setAttribute("Project",p);
    %>
   <form action="CustomerProjectUpdate.jsp" method="post" >
       <u><center><font size="20" color="RED" >CustomerProjectProfile</font></center></u>
	<table border="0" width="100%" cellpadding="5" >



	<tr>
	<th colspan="3"></th>
	</tr>
		
		<tr>
		<td width="30%" colspan="2"><font size="5" color="black">please fill the following</font></td>
		<td><img src="<%= p.getImage()%>" height="120" width="145"><br><br></td>
	</tr>
        
        
	<tr>
		<td><font color="black">1</td>
	        <td><font color="black">Project Name</td>
		<td><font color="black"><%= p.getProjectName()%></td>
	</tr>

         
	<tr>
		<td><font color="black">2</td>
		<td><font color="black"> Address</td>
		<td><font color="black"><%= p.getAddress()%></textarea></td>
	</tr>

	<tr>
		<td><font color="black">3</td>
		<td><font color="black"> Begin date </td>
		<td><font color="black"><%= p.getBeginDate()%></td>
	</tr>

	<tr>
		<td><font color="black">4</td>
		<td><font color="black">Target End date </td>
		<td><font color="black"><%= p.getTargetEndDate()%></td>
	</tr>

	<tr>
		<td><font color="black">5</td>
		<td><font color="black"> Final End date </td>
		<td><font color="black"><%= p.getFinalEndDate()%></td>
	</tr>


	<tr>
		<td><font color="black">6</td>
		<td><font color="black"> lumpsum construction cost 
		with respect to other ongoing construction 
		in that area 
		</td>
		<td><font color="black"><%= p.getLumpsum_construction_cost()%></td>
	</tr>

	<tr>
		<td><font color="black">7</td>
		<td><font color="black"> Website </td>
		<td><font color="black"><%= p.getWebsite()%></td>
	</tr>


	<tr>
		<td><font color="black">9</td>
		<td><font color="black"> Client Requirements </td>
		<td><font color="black"><%= p.getClientRequirements()%></td>
	</tr>

	<tr>
		<td><font color="black">10</td>
		<td><font color="black"> Fesiability as per municipal laws  </td>
		<td><font color="black"><%= p.getFesiability()%></td>
	</tr>

        
        
        
	<tr>
		<td><font color="black">11</td>
		<td><font color="black"> FSI </td>
		<td><font color="black"><%= p.getFSI()%></td>
	</tr>
        
        
        
	<tr>
		<td><font color="black">12</td>
		<td><font color="black"> Project Category  </td>
		<td><font color="black"><%= p.getProjectCategory()%></td>
	</tr>


	<tr>
		<td><font color="black">13</td>
		<td><font color="black"> Country </td>
		<td><font color="black"><%= p.getCountry()%></td>
	</tr>
	<tr>
		<td><font color="black">14</td>
		<td><font color="black"> State</td>
		<td><font color="black"><%= p.getState()%></td>
	</tr>
	
	<tr>
		<td><font color="black">15</td>
		<td><font color="black"> City </td>
		<td><font color="black"><%= p.getCity()%></td>
	</tr>

	<tr>
		<td><font color="black">16</td>
		<td><font color="black"> Pin code </td>
		<td><font color="black"><%= p.getPinCode()%></td>
	</tr>
	<tr>
		<td><font color="black">17</td>
		<td><font color="black"> Email_Id of Project</td>
		<td><font color="black"><%= p.getEmail_Id_Project()%></td>
	</tr>

        <tr>
		<td colspan="3" align="center"><br><br>
		<font color="black"><input type="submit" value="Update Project" onClick="return ProcessForm()">
		</td>
	</tr>
	</table>

    </form>

</body>
</html>



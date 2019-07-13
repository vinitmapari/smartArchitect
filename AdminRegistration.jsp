<%-- 
    Document   : AdminRegistration
    Created on : 7 Jan, 2016, 11:23:03 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   
        <link rel="stylesheet" type="text/css" href="AdminRegistration.css" />

		<script language="JAVASCRIPT">

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
        <form action="AdminAddAction.jsp" method="post" >
            <u><center><font size="20" color="RED" >AdminRegistration</font></center></u>
	<table border="0" width="100%" cellpadding="5" >

	
        
	<tr>
		<td><font color="black">1</td>
		<td><font color="black"> First Name </td>
		<td><font color="black"><input type="text" name="txtFirstName" onblur="return ValidateName()"></td>
	</tr>

         <tr>
		<td><font color="black">2</td>
		<td><font color="black">Last  Name </td>
		<td><font color="black"><input type="text" name="txtLastName" onblur="return ValidateName()"></td>
	</tr>

	<tr>
		<td><font color="black">3</td>
		<td><font color="black"> Address1</td>
		<td><font color="black"><textarea name="Address1" rows="3" cols="16" onblur="return ValidateName()"></textarea></td>
	</tr>
	<tr>
		<td><font color="black">15</td>
		<td><font color="black"> Pin code1 </td>
		<td><font color="black"><input type="text" name="txtPinCode1"></td>
	</tr>
        <tr>
		<td><font color="black">3</td>
		<td><font color="black"> Address2</td>
		<td><font color="black"><textarea name="Address2" rows="3" cols="16" onblur="return ValidateName()"></textarea></td>
	</tr>
        <tr>
		<td><font color="black">15</td>
		<td><font color="black"> Pin code2</td>
		<td><font color="black"><input type="text" name="txtPinCode2"></td>
	</tr>


	<tr>
		<td><font color="black">4</td>
		<td><font color="black"> Age </td>
		<td><font color="black"><input type="text" name="txtAge" onblur="return ValidateName()"></td>
	</tr>

	<tr>
		<td><font color="black">5</td>
		<td><font color="black"> Gender </td>
		<td><font color="black"><input type="radio" name="Gender" value="Male">&nbsp;&nbsp; Male
		    <input type="radio" name="Gender" value="Female">&nbsp;&nbsp; Female</td>
	</tr>


	<tr>
		<td><font color="black">6</td>
		<td><font color="black">Education Qualification</td>
		<td><font color="black"><select name="lstQual">
                         
			<option value="bsc"> bsc</option>
			<option value="msc"> msc</option>
			<option value="mca"> mca</option>
		    </select>
		</td>
	</tr>

	<tr>
		<td><font color="black">7</td>
		<td><font color="black">Specialization</td>
		<td><font color="black"><select name="lstSpecial">
			<option value="bsc">bsc</option>
			<option value="msc">msc</option>
			<option value="mca">mca</option>
		    </select>
		</td>
	</tr>
	
	<tr>
		<td><font color="black">8</td>
		<td><font color="black"> Strong part</td>
		<td><font color="black"><input type="text" name="txtStrong" onblur="return ValidateName()"></td>
	</tr>
	<tr>
		<td><font color="black">9</td>
		<td><font color="black"> Work experience</td>
		<td><font color="black"><input type="text" name="txtExp" onblur="return ValidateName()"></td>
	</tr>
	
	<tr>
		<td><font color="black">10</td>
		<td><font color="black"> Work experience years</td>
		<td><font color="black"><input type="text" name="txtExpYr" onblur="return ValidateName()"></td>
	</tr>
	

	
	
        <tr>
		<td><font color="black">12</td>
		<td><font color="black"> Country</td>
		<td><font color="black"><select name="Country">
			<option value="India"> India </option>
			<option value="USA"> USA </option>
			<option value="UK"> UK </option>
		    </select>
		</td>
	</tr>
	<tr>
		<td><font color="black">13</td>
		<td><font color="black"> State</td>
		<td><font color="black"><input type="text" name="txtState" onblur="return ValidateName()"></td>
	</tr>

	<tr>
		<td><font color="black">14</td>
		<td><font color="black"> City</td>
		<td><font color="black"><input type="text" name="txtCity" onblur="return ValidateName()"></td>
	</tr>

	
	
	<tr>
		<td><font color="black">17</td>
		<td><font color="black"> Phone no1</td>
		<td><font color="black"><input type="text" name="txtPhone1" onblur="return ValidateName()"></td>
	</tr>
	
	<tr>
		<td><font color="black">18</td>
		<td><font color="black"> Phone no2</td>
		<td><font color="black"><input type="text" name="txtPhone2" onblur="return ValidateName()"></td>
	</tr>
	
	<tr>
		<td><font color="black">19</td>
		<td> <font color="black">Mobile no1</td>
		<td><font color="black"><input type="text" name="txtMobile1" onblur="return ValidateName()"></td>
	</tr>
	<tr>
		<td><font color="black">20</td>
		<td><font color="black"> Mobile no2</td>
		<td><font color="black"><input type="text" name="txtMobile2" onblur="return ValidateName()"></td>
	</tr>
	
        <tr>
		<td><font color="black">24</td>
		<td><font color="black"> Email</td>
		<td><font color="black"><input type="text" name="txtEmail" size="50" onblur="return ValidateEmail()"></td>
	</tr>
	

	<tr>
		<td><font color="black">22</td>
		<td><font color="black"> Password </td>
		<td><font color="black"><input type="password" name="txtPassword" maxlength="8" onblur="return ValidatePassword()"></td>
	</tr>

	<tr>
		<td><font color="black">23</td>
		<td><font color="black"> Confirm Password </td>
		<td><font color="black"><input type="password" name="txtConfirmPassword" maxlength="8" onblur="return ValidatePassword()"></td>
	</tr>

         <tr>
		<td><font color="black">15</td>
		<td><font color="black"> date </td>
		<td><font color="black"><input type="date" name="txtDate" ></td>
	</tr>
        

	<tr>
		<td colspan="3" align="center"><br><br>
		<font color="black"><input type="submit" value="Submit" onClick="return ProcessForm()">
		</td>
	</tr>
	</table>

    </form>

    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>


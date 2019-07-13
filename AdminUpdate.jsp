<%-- 
    Document   : AdminUpdate
    Created on : 15 Jan, 2016, 5:36:31 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="CustomerUpdate.css"/> 
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
    
     if(str<8)
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
	function myFunction() {
        var pass1 = document.getElementById("pass1").value;
        var pass2 = document.getElementById("pass2").value;
        if (pass1 != pass2) {
            //alert("Passwords Do not match");
            document.getElementById("pass1").style.borderColor = "#E34234";
            document.getElementById("pass2").style.borderColor = "#E34234";
        }
        else {
            alert("Passwords Match!!!");
        }
    }				
</script>
    </head>
    <jsp:include page="header.jsp"></jsp:include>
    <body>
         <%@ page import="java.sql.*"%>
          <%@page import="myproject.*"%>
          
          <% 
          Admin ad=(Admin)session.getAttribute("Admin");
            %>
          
        <form action="AdminUpdateAction.jsp" method="post">
            <u><center><font size="20" color="RED" >AdminUpdate</font></center></u>
	<table border="0" width="100%" cellpadding="5">

	
	<tr>
		<td width="30%" colspan="2"><font size="5">please fill the following</font></td>
                <td><img src="Example/AdminImage/<%= ad.getImage()%>" height="120" width="145"></td>
	</tr>
        
	<tr>
		<td>1</td>
		<td> First Name </td>
		<td><input type="text" name="txtFirstName" onblur="return ValidateName()" value="<%= ad.getFirstName()%>"></td>
	</tr>

         <tr>
		<td>2</td>
		<td>Last  Name </td>
		<td><input type="text" name="txtLastName" value="<%= ad.getLastName()%>" onblur="return ValidateName()"></td>
	</tr>

	<tr>
		<td><font color="black">3</td>
		<td><font color="black"> Address1</td>
		<td><font color="black"><textarea name="Address1" rows="3" cols="16" onblur="return ValidateName()"><%= ad.getAddress1()%></textarea></td>
	</tr>
	<tr>
		<td><font color="black">4</td>
		<td><font color="black"> Pin code1 </td>
		<td><font color="black"><input type="text" name="txtPinCode1" value="<%= ad.getPinCode()%>"></td>
	</tr>
        <tr>
		<td><font color="black">5</td>
		<td><font color="black"> Address2</td>
		<td><font color="black"><textarea name="Address2" rows="3" cols="16" onblur="return ValidateName()"><%= ad.getAddress2()%></textarea></td>
	</tr>
        <tr>
		<td><font color="black">6</td>
		<td><font color="black"> Pin code2</td>
		<td><font color="black"><input type="text" name="txtPinCode2" value="<%= ad.getPincode2()%>"></td>
	</tr>

        <tr>
		<td>7</td>
		<td> Age </td>
		<td><input type="text" name="txtAge" value="<%= ad.getAge()%>" onblur="return ValidateName()"></td>
	</tr>

	<tr>
            <td><font color="black">8</td>
		<td><font color="black"> Gender </td>
                <td><font color="black">
        <%
        String gender1=ad.getGender();
                                                System.out.println(gender1);
                                                if(gender1.equals("Male"))
                                                {
                                                    
                                                    System.out.println("i m in IFlock");
                                                    
        %>
         <input type="radio" value="Male" name="gender" checked="true">Male &nbsp <br><input type="radio" value="Female" name="gender">Female
	 <%
                                                }
                                                else
                                                {
                                                    System.out.println("i m in else block");
                                                    %>
                                                    <input type="radio" value=Male name="gender">Male &nbsp <br><input type="radio" value="Female" name="gender" checked="true">Female
                                                <%
                                                 }
                                                %>
		
	</td>	
        </tr>
	


	<tr>
		<td><font color="black">9</td>
		<td><font color="black">Education Qualification</td>
		<td><font color="black"><select name="lstQual">
                         <option value="<%= ad.getEducation_Qualification()%>"><%= ad.getEducation_Qualification()%></option>
			<option value="bsc"> bsc</option>
			<option value="msc"> msc</option>
			<option value="mca"> mca</option>
		    </select>
		</td>
	</tr>

	<tr>
		<td><font color="black">10</td>
		<td><font color="black">Specialization</td>
		<td><font color="black"><select name="lstSpecial">
                        <option value="<%= ad.getSpecialization()%>"><%= ad.getSpecialization()%></option>
			<option value="bsc">bsc</option>
			<option value="msc">msc</option>
			<option value="mca">mca</option>
		    </select>
		</td>
	</tr>
	
	<tr>
		<td>11</td>
		<td> Strong part</td>
		<td><input type="text" name="txtStrong" onblur="return ValidateName()" value="<%= ad.getStrong_part()%>"></td>
	</tr>
	<tr>
		<td>12</td>
		<td> Work experience</td>
                <td><input type="text" name="txtExp" onblur="return ValidateName()" value="<%= ad.getWork_experience()%>"></td>
	</tr>
	
	<tr>
		<td>13</td>
		<td> Work experience years</td>
		<td><input type="text" name="txtExpYr" onblur="return ValidateName()" value="<%= ad.getWork_experoence_years()%>"></td>
	</tr>



	<tr>
		<td><font color="black">15</td>
		<td><font color="black"> Country</td>
		<td><font color="black"><select name="Country">
                        <option value="<%= ad.getCountry()%>"><%= ad.getCountry()%></option>
			<option value="India"> India </option>
			<option value="USA"> USA </option>
			<option value="UK"> UK </option>
		    </select>
		</td>
	</tr>
	<tr>
		<td>16</td>
		<td> State</td>
		<td><input type="text" name="txtState" value="<%= ad.getState()%>" onblur="return ValidateName()"></td>
	</tr>

	<tr>
		<td>17</td>
		<td> City</td>
		<td><input type="text" name="txtCity" onblur="return ValidateName()" value="<%= ad.getCity()%>"></td>
	</tr>
	
	<tr>
		<td>20</td>
		<td> Phone no1</td>
		<td><input type="text" name="txtPhone1" value="<%= ad.getPhone_no1()%>" onblur="return ValidateName()"></td>
	</tr>
	
	<tr>
		<td>21</td>
		<td> Phone no2</td>
		<td><input type="text" name="txtPhone2" value="<%= ad.getPhone_no2()%>"onblur="return ValidateName()"></td>
	</tr>
	
	<tr>
		<td>22</td>
		<td> Mobile no1</td>
		<td><input type="text" name="txtMobile1" value="<%= ad.getMobile_no1()%>" onblur="return ValidateName()"></td>
	</tr>
	<tr>
		<td>23</td>
		<td> Mobile no2</td>
		<td><input type="text" name="txtMobile2" value="<%= ad.getMobile_no2()%>" onblur="return ValidateName()"></td>
	</tr>
	
        <tr>
		<td>24</td>
		<td> Email</td>
		<td><input type="text" name="txtEmail" size="50" value="<%= ad.getEmail()%>" onblur="return ValidateEmail()"></td>
	</tr>
	

	<tr>
		<td>25</td>
		<td> Password </td>
		<td><input type="password" id="pass1" name="txtPassword" maxlength="4" value="<%= ad.getPassword()%>" onblur="return ValidatePassword()"></td>
	</tr>

	<tr>
		<td>26</td>
		<td> Confirm Password </td>
		<td><input type="password" id="pass2" name="txtConfirmPassword"  onblur="myFunction()"></td>
	</tr>
          <tr>
		<td><font color="black">27</td>
		<td><font color="black"> date </td>
		<td><font color="black"><input type="date" name="txtDate" value="<%= ad.getDate()%>"></td>
	</tr>

	<tr>
		<td colspan="3" align="center"><br><br>
		  <input type="submit" value="Update" onClick="return ProcessForm()"></td>
	</tr>
	</table>

    </form>

    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>

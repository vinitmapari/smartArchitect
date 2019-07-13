<%-- 
    Document   : CustomerUpdate
    Created on : 13 Jan, 2016, 11:23:07 PM
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
    <jsp:include page="headerCustomer.jsp"></jsp:include>
    <body>
          <%@page import="myproject.*"%>
          <%
          Customer c=(Customer)session.getAttribute("customer");
        
         %>

<form action="CustomerUpdateAction.jsp" method="post">
    <u><center><font size="20" color="black">Customer Update</font></center></u><br>
	<table border="0" width="100%" cellpadding="5">
       
		
	<tr>
            <td width="30%" colspan="2"><font size="5" color="black">Please fill the following</font></td>
		<td><img src="<%= c.getImage()%>" height="120" width="145"><br><br></td>
	</tr>
        
	<tr>
		<td><font color="black">1</td>
	        <td><font color="black">First Name</td>
                <td><font color="black"><input type="text" name="txtFirstName" onblur="return ValidateName()" value="<%= c.getFirstName()%>"></td>
	</tr>

         <tr>
		<td><font color="black">2</td>
		<td><font color="black">Last  Name </td>
                <td><font color="black"><input type="text" name="txtLastName"  value="<%= c.getLastName()%>"onblur="return ValidateName()" required="required"></td>
	</tr>

	<tr>
		<td><font color="black">3</td>
		<td><font color="black"> Address1</td>
                <td><font color="black"><textarea name="Address1" rows="3" cols="16" onblur="return ValidateName()" required="required"><%= c.getAddress1()%></textarea></td>
	</tr>
        <tr>
		<td><font color="black">4</td>
		<td><font color="black"> Pin code1 </td>
                <td><font color="black"><input type="number" name="txtPinCode" value="<%= c.getPinCode()%>" required="required"></td>
	</tr>
        
	<tr>
		<td><font color="black">5</td>
		<td><font color="black"> Address2</td>
		<td><font color="black"><textarea name="txtAddress2" rows="3" cols="16" onblur="return ValidateName()" required="required"><%= c.getAddress2()%></textarea></td>
	</tr>
        <tr>
		<td><font color="black">6</td>
		<td><font color="black"> Pin code2 </td>
                <td><font color="black"><input type="number" name="txtPinCode2" value="<%= c.getPinCode2()%>" required="required"></td>
	</tr>
	<tr>
		<td><font color="black">7</td>
		<td><font color="black"> Age </td>
                <td><font color="black"><input type="number" name="txtAge" value="<%= c.getAge()%>" required="required"></td>
	</tr>
        <tr>
            <td><font color="black">8</td>
		<td><font color="black"> Gender </td>
                <td><font color="black">
        <%
        String gender1=c.getGender();
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
		<td><font color="black"> Customer Category  </td>
                <td><font color="black"><select name="CustomerCategory" required="required">
		
                        <option value="<%= c.getCustomerCategory()%>"><%= c.getCustomerCategory()%></option>
                        <option value="Company"> Company </option>
			<option value="owner"> owner </option>
			<option value="other"> other </option>
		    </select>
		</td>
	</tr>


	<tr>
                <td><font color="black">10</td>
		<td><font color="black"> Country </td>
		<td><font color="black"><input type="text" name="txtCountry"  value="<%= c.getCountry()%>" onblur="return ValidateName()" required="required"></td>
	</tr>
	<tr>
		<td><font color="black">11</td>
		<td><font color="black"> State</td>
		<td><font color="black"><input type="text" name="txtState" value="<%= c.getState()%>" onblur="return ValidateName()" required="required"></td>
	</tr>
	
	<tr>
		<td><font color="black">12</td>
		<td><font color="black"> City </td>
		<td><font color="black"><input type="text" name="txtCity" value="<%= c.getCity()%>" onblur="return ValidateName()" required="required"></td>
	</tr>

	<tr>
		<td><font color="black">13</td>
		<td><font color="black"> Email</td>
		<td><font color="black"><input type="email" name="txtEmail" size="50" value="<%= c.getEmail()%>" onblur="return ValidateEmail()" required="required"></td>
	</tr>
        
         <tr>
		<td><font color="black">14</td>
		<td><font color="black">Mobile No1</td>
		<td><font color="black"><input type="text" name="txtMobileNo1" value="<%= c.getMobileNo1()%>" required="required"></td>
	</tr>
          <tr>
		<td><font color="black">15</td>
		<td><font color="black">Mobile No2 </td>
		<td><font color="black"><input type="text" name="txtMobileNo2" value="<%= c.getMobileNo2()%>" required="required"></td>
	</tr>
        
          <tr>
		<td><font color="black">16</td>
		<td><font color="black">Phone No1 </td>
		<td><font color="black"><input type="text" name="txtPhoneNo1" value="<%= c.getPhoneNo1()%>" required="required"></td>
	</tr>
        
          <tr>
		<td><font color="black">17</td>
		<td><font color="black">Phone No2 </td>
		<td><font color="black"><input type="text" name="txtPhoneNo2" value="<%= c.getPhoneNo2()%>" required="required"></td>
	</tr>
        
	<tr>
		<td><font color="black">18</td>
		<td><font color="black"> Password </td>
		<td><font color="black"><input type="password" id="pass1" name="txtPassword" maxlength="8" value="<%= c.getPassword()%>" onblur="return ValidatePassword()" required="required"></td>
	</tr>

	<tr>
		<td><font color="black">19</td>
		<td><font color="black"> Confirm Password </td>
		<td><font color="black"><input type="password" id="pass2" name="txtConfirmPassword" onblur="myFunction()" required="required"></td>
	</tr>

        <tr>
		<td><font color="black">20</td>
		<td><font color="black"> date </td>
                <td><font color="black"><input type="date" name="txtDate" value="<%= c.getDate()%>" required="required"></td>
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

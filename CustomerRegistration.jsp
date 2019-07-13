<%-- 
    Document   : CustomerRegistration
    Created on : 7 Jan, 2016, 11:23:37 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>

  <head>
	<link rel="stylesheet" type="text/css" href="CustomerRegister.css" />

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

<form action="CustomerAddAction.jsp" method="post" >
    <u><center><font size="20" color="RED" >CustomerRegistration</font></center></u>
	<table border="0" width="100%" cellpadding="5" >
        
        <tr>
	<th colspan="3"></th>
	</tr>
		
	<tr>
		<td width="30%" colspan="2"><font size="5" color="black">please fill the following</font></td>
		<td><img id="blah1" src="#" alt="your image" /><br><br>&nbsp;&nbsp;&nbsp;&nbsp<input type="hidden" name="MAX_FILE_SIZE" value="4194304" /><font color="black">
                    <input type="file" name="txtFile" onchange="readURL1(this);"/>
                    
                
                </td>
	</tr>
        
	<tr>
		<td><font color="black">1</td>
	        <td><font color="black">First Name</td>
                <td><font color="black"><input type="text" name="txtFirstName" onblur="return ValidateName()"></td>
	</tr>

         <tr>
		<td><font color="black">2</td>
		<td><font color="black">Last  Name </td>
		<td><font color="black"><input type="text" name="txtLastName"  onblur="return ValidateName()" required="required"></td>
	</tr>

	<tr>
		<td><font color="black">3</td>
		<td><font color="black"> Address1</td>
		<td><font color="black"><textarea name="Address1" rows="3" cols="16"  onblur="return ValidateName()" required="required"></textarea></td>
	</tr>
        <tr>
		<td><font color="black">4</td>
		<td><font color="black"> Pin code1 </td>
		<td><font color="black"><input type="number" name="txtPinCode" required="required"></td>
	</tr>
        
	<tr>
		<td><font color="black">5</td>
		<td><font color="black"> Address2</td>
		<td><font color="black"><textarea name="txtAddress2" rows="3" cols="16"  onblur="return ValidateName()" required="required"></textarea></td>
	</tr>
        <tr>
		<td><font color="black">6</td>
		<td><font color="black"> Pin code2 </td>
		<td><font color="black"><input type="number" name="txtPinCode2" required="required"></td>
	</tr>
	<tr>
		<td><font color="black">7</td>
		<td><font color="black"> Age </td>
                <td><font color="black"><input type="number" name="txtAge" size="3" required="required"></td>
	</tr>
	<tr>
		<td><font color="black">8</td>
		<td><font color="black"> Gender </td>
		<td><font color="black"><input type="radio" name="gender" value="Male"> Male<input type="radio" name="gender" value="Female"> Female</td>
	</tr>
	<tr>
		<td><font color="black">9</td>
		<td><font color="black"> Customer Category  </td>
                <td><font color="black"><select name="CustomerCategory" required="required">
			<option value="Company"> Company </option>
			<option value="owner"> owner </option>
			<option value="other"> other </option>
		    </select>
		</td>
	</tr>


	<tr>
                <td><font color="black">10</td>
		<td><font color="black"> Country </td>
		<td><font color="black"><input type="text" name="txtCountry"  onblur="return ValidateName()" required="required"></td>
	</tr>
	<tr>
		<td><font color="black">11</td>
		<td><font color="black"> State</td>
		<td><font color="black"><input type="text" name="txtState"  onblur="return ValidateName()" required="required"></td>
	</tr>
	
	<tr>
		<td><font color="black">12</td>
		<td><font color="black"> City </td>
		<td><font color="black"><input type="text" name="txtCity"  onblur="return ValidateName()" required="required"></td>
	</tr>

	<tr>
		<td><font color="black">13</td>
		<td><font color="black"> Email</td>
		<td><font color="black"><input type="email" name="txtEmail" size="50" onblur="return ValidateEmail()" required="required"></td>
	</tr>

          <tr>
		<td><font color="black">14</td>
		<td><font color="black">Mobile No1</td>
                <td><font color="black"><input type="number" name="txtMobileNo1" size="10" required="required"></td>
	</tr>
          <tr>
		<td><font color="black">15</td>
		<td><font color="black">Mobile No2 </td>
		<td><font color="black"><input type="text" name="txtMobileNo2" size="10" required="required"></td>
	</tr>
        
          <tr>
		<td><font color="black">16</td>
		<td><font color="black">Phone No1 </td>
		<td><font color="black"><input type="text" name="txtPhoneNo1" size="10" required="required"></td>
	</tr>
        
          <tr>
		<td><font color="black">17</td>
		<td><font color="black">Phone No2 </td>
		<td><font color="black"><input type="text" name="txtPhoneNo2" size="10" required="required"></td>
	</tr>
        
        <tr>
		<td><font color="black">18</td>
		<td><font color="black"> Password </td>
		<td><font color="black"><input type="password" id="pass1" name="txtPassword" size="8" onblur="return ValidatePassword()"></td>
	</tr>

	<tr>
		<td><font color="black">19</td>
		<td><font color="black"> Confirm Password </td>
		<td><font color="black"><input type="password" id="pass2" name="txtConfirmPassword" onblur="myFunction()"></td>
	</tr>

        <tr>
		<td><font color="black">20</td>
		<td><font color="black"> date of registration </td>
		<td><font color="black"><input type="date" name="txtDate" required="required"></td>
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
<script>
function readURL1(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah1')
                    .attr('src', e.target.result)
                    .width(250)
                    .height(250);
					
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
        </script>



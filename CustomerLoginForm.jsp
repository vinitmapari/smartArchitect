<%-- 
    Document   : LoginForm
    Created on : 11 Dec, 2015, 9:52:42 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
    
    <link rel=STYLESHEET href="login.css" />
    <Script Language=JavaScript>

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

function ValidateEmail()
{
var str=document.frmRegistration.txtEmail.value;
		
		var lenstr=str.length;
        var at="@";
		var dot=".";
		
	if(str.indexOf(at)==-1)
	{
                document.getElementById("txtHintUser").innerHTML="@ should be present";
                document.frmRegistration.txtEmail.value="";
		return false;	
	}
	
	
	if(str.indexOf(dot)==-1)
	{
                document.getElementById("txtHintUser").innerHTML=". should be present";
		document.frmRegistration.txtEmail.value="";
		return false;	
        }

function ValidatePassword()
{
     var str=document.frmRegistration.txtPwd.value;
     var len=str.length;
     if(len<8)
     {
	document.getElementById("txtHintPasswd").innerHTML="Plz Enter atleast 8 Characters!";
	document.frmRegistration.txtPwd.value="";
	return false;
      }

    return true;
}


function ProcessForm()
     {
	if(document.frmRegistration.txtName.value=="")
	{
		document.getElementById("txtHintUser").innerHTML="Please Enter Name";
		document.frmRegistration.txtName.focus();
		return false;
	}
	if(document.frmRegistration.txtPwd.value=="")
	{
		document.getElementById("txtHintPasswd").innerHTML="Please Enter Password";
		document.frmRegistration.txtPwd.focus();
		return false;
	}
	
      

   return true;
}
	</Script>
  </head>
<jsp:include page="header.jsp"></jsp:include>
<body >     
<form name=frmRegistration action="CustomerLoginProcess.jsp" method=POST align="center">
    <br>
    Email Id&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="EmailId" size="50" onblur="return ValidateEmail()" required="required"><span id="txtHintUser" style="color:red"></span><br><br>
    Password:&nbsp;&nbsp;&nbsp;&nbsp;<input name="Pwd" type="password" maxlength="8" size="50" onblur="return ValidatePassword()" required="required"><br><br>

<br>
<input type=submit value=Login onClick="return ProcessForm()">&nbsp;&nbsp;&nbsp;&nbsp;<input type=reset value=Reset>


    <br><br>

    <a href="CustomerRegistration.jsp"><font size="blue" size="10">New User</a><br>
    <a href="ForgotPassword.jsp"><font size="blue" size="10">Forgot password</a>
    <br><br>
    <a href="HelpLoginCustomer.jsp"><font size="blue" size="10">Help</a>
  

</Form>
	
	</body>
      <jsp:include page="footer.jsp"></jsp:include>  
</html>
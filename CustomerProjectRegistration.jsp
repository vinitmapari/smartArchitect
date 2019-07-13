<%-- 
    Document   : CustomerProjectRegistration
    Created on : 19 Jan, 2016, 11:57:22 AM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="myproject.DatabaseConnector"%>
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
<%
int id=(Integer)session.getAttribute("Custid");
%>
<body>
   <form action="CustomerProjectAddAction.jsp" method="post" >
       <u><center><font size="20" color="RED" >CustomerProjectRegistration</font></center></u>
	<table border="0" width="100%" cellpadding="5" >



	<tr>
	<th colspan="3"></th>
	</tr>
		
		<tr>
		<td width="30%" colspan="2"><font size="5" color="black">please fill the following</font></td>
		<td><img id="blah1" src="#" alt="your image" /><br><br>&nbsp;&nbsp;&nbsp;&nbsp<input type="hidden" name="MAX_FILE_SIZE" value="4194304" />
                    <input type="file" name="txtProject" onchange="readURL1(this);"/>
                </td>
	</tr>
        
        <tr>
		<td><font color="black">1</td>
	        <td><font color="black">Customer no</td>
                <td><font color="black"><input type="text" name="txtCustomerno" onblur="return ValidateName()" value="<%=id%>" ></td>
	</tr>

        
	<tr>
		<td><font color="black">2</td>
	        <td><font color="black">Project Name</td>
		<td><font color="black"><input type="text" name="txtProjectName" onblur="return ValidateName()"></td>
	</tr>

         
	<tr>
		<td><font color="black">3</td>
		<td><font color="black"> Address</td>
		<td><font color="black"><textarea name="txtAddress" rows="3" cols="16" onblur="return ValidateName()"></textarea></td>
	</tr>
        
        <tr>
		<td><font color="black">4</td>
		<td><font color="black"> Pin code </td>
		<td><font color="black"><input type="text" name="txtPinCode"></td>
	</tr>
        
	<tr>
		<td><font color="black">5</td>
		<td><font color="black"> Begin date </td>
		<td><font color="black"><input type="date" name="txtBeginDate" ></td>
	</tr>

	<tr>
		<td><font color="black">6</td>
		<td><font color="black">Target End date </td>
		<td><font color="black"><input type="date" name="txtTargetDate" ></td>
	</tr>

	<tr>
		<td><font color="black">7</td>
		<td><font color="black"> Final End date </td>
		<td><font color="black"><input type="date" name="txtFinalDate" ></td>
	</tr>


	<tr>
		<td><font color="black">8</td>
		<td><font color="black"> lumpsum construction cost 
		with respect to other ongoing construction 
		in that area 
		</td>
		<td><font color="black"><input type="text" name="txtLumpsumCost"></td>
	</tr>

	<tr>
		<td><font color="black">9</td>
		<td><font color="black"> Website </td>
		<td><font color="black"><input type="url" name="txtWebsite"></td>
	</tr>

	<tr>
		<td><font color="black">10</td>
		<td><font color="black">Land Details<br></td>
		<td></td>
	</tr>
	
	<tr>
		<td><font color="black">10.1</td>
		<td><font color="black"> Survey Plan(Latest)</td>
		<td><font color="black"><input type="file" name="txtSurveyPlan"/></td>
	</tr>
        
        <tr>
		<td><font color="black">10.2</td>
		<td><font color="black"> 7/12 Plan(Latest)</td>
		<td><font color="black"><input type="file" name="txt7_12_Plan"/></td>
	</tr>

	<tr>
		<td><font color="black">11</td>
		<td><font color="black"> Client Requirements </td>
		<td><font color="black"><input type="text" name="txtClientRequirements"></td>
	</tr>

	<tr>
		<td><font color="black">12</td>
		<td><font color="black"> Fesiability as per municipal laws  </td>
		<td><font color="black"><textarea name="txtFesiability" rows="3" cols="16" onblur="return ValidateName()"></textarea></td>
	</tr>

        <tr>
            <td><font color="black">13</td>
            <td><font color="black">Fesiability as per municipal laws File</td>
            <td><font color="black"><input type="file" name="txtFeasiabilityFile" /></td>
        </tr>
        
        
	<tr>
		<td><font color="black">14</td>
		<td><font color="black"> FSI </td>
		<td><font color="black"><textarea name="txtFSI" rows="3" cols="16" onblur="return ValidateName()"></textarea></td>
	</tr>
        
        <tr>
            <td><font color="black">15</td>
            <td><font color="black">FSI File</td>
            <td><font color="black"><input type="file" name="txtFSIFile" /></td>
        </tr>
        
        
	<tr>
		<td><font color="black">16</td>
		<td><font color="black">Project Category</td>
		<td><font color="black"><select name="ProjectCategory">
                        <option value="Financial Company">Financial Company</option>
                        <option value="resident">resident</option>
                        <option value="Industry">Industry</option>
			<option value="House">House</option>
                        <option value="temple">temple</option>
			<option value="Bunglow">Bunglow</option>
			<option vallue="Garden">Garden</option>
			<option value="Interior">Interior</option>
			<option value="Hospitality">Hospitality</option>
			<option value="IT_company">IT company</option>
                        <option value="other">other</option>
		    </select>
		</td>
	</tr>


	<tr>
		<td><font color="black">17</td>
		<td><font color="black"> Country </td>
		<td><font color="black"><input type="text" name="txtCountry" onblur="return ValidateName()"></td>
	</tr>
	<tr>
		<td><font color="black">18</td>
		<td><font color="black"> State</td>
		<td><font color="black"><input type="text" name="txtState" onblur="return ValidateName()"></td>
	</tr>
	
	<tr>
		<td><font color="black">19</td>
		<td><font color="black"> City </td>
		<td><font color="black"><input type="text" name="txtCity" onblur="return ValidateName()"></td>
	</tr>

	
	<tr>
		<td><font color="black">20</td>
		<td><font color="black"> Email_Id of Project</td>
		<td><font color="black"><input type="text" name="txtEmail" size="50" onblur="return ValidateEmail()"></td>
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
		<font color="black"><input type="submit" value="Place Order" onClick="return ProcessForm()">
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


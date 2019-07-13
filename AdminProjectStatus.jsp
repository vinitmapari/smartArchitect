<%-- 
    Document   : AdminProjectStatus
    Created on : 23 Jan, 2016, 1:56:14 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <jsp:include page="headerAdmin.jsp"></jsp:include>
<body>
   <form action="AdminProjectStatusAction.jsp" method="post" >
     
	<table border="0" width="100%" cellpadding="5" >
		
    
	<tr>
		
	        <td><font color="black">Project Name</td>
		<td><font color="black"><input type="text" name="txtProjectName" onblur="return ValidateName()"></td>
	</tr>
       
  <tr>
    <td>
        Project Status
    </td>
   <td>
       <select name="ProjectStatus">
                        <option value="Completed">Completed</option>
                        <option value="Pending">Pending</option>
                        
       </select>
    </td>
</tr>
      <td>
        Payment Status
    </td>
   <td>
       <select name="PaymentStatus">
                        <option value="Completed">Completed</option>
                        <option value="Pending">Pending</option>
                        
       </select>
    </td>
</tr>

<tr>
 <td align="left" colspan="2">  
    <input type="submit"  value="Submit">  
 </td>
 </tr>
            </table>
        </form>
    </body>
</html>

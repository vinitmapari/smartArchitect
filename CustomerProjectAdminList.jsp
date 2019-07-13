<%-- 
    Document   : CustomerProjectAdminList
    Created on : 31 Jan, 2016, 10:06:47 PM
    Author     : Admin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="myproject.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
    </head>
   <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light/all.min.css" />
<script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
<script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/jszip.min.js"></script> 
    
<style>
    #exportButton {
        border-radius: 0;
    }
</style>
<jsp:include page="headerCustomer.jsp"></jsp:include>
    <body>
         <%
 Customer c=(Customer)session.getAttribute("customer");
   int id=(Integer)session.getAttribute("Custid");
   
   ArrayList<Project> list=ProjectWorker.getAllProjectByCustomer(id);
            
           
     %>
    
       <h1 align="center"><%= c.getFirstName()%> <%= c.getLastName()%></h1>
<table align="center" border="1" id="exportTable">

	<tr>
		
		<th><font color="black">ProjectName</th>
		<th><font color="black">ProjectStatus</th>
                <th><font color="black">Admin</th>
		<th><font color="black">AdminEmailId</th>
		<th><font color="black">AdminContactno</th>
		<th><font color="black">PaymentStatus</th>
	</tr>
       <%
       for(Project p2:list)
                     {
           Admin a1=AdminWorker.getAdminById(AdminWorker.getIdByEmail(p2.getAdminEmail()));
       
       %>
        <tr>
		
		<td><%= p2.getProjectName()%> </td>
		<td><%= p2.getProjectStatus()%> </td>
		<td><%= a1.getFirstName()%> </td>
		<td><%= a1.getEmail()%> </td>
		<td>Phone no <%= a1.getPhone_no1()%> <br>
                      Mob no <%= a1.getMobile_no1()%>
                </td>
		<td><%= p2.getPaymentStatus()%> </td>
                
	</tr>
        <%
               }
             
        %>
</table>
<script type="text/javascript">
    jQuery(function($) {
        $("#exportButton").click(function() {
            // parse the HTML table element having an id=exportTable
            var dataSource = shield.DataSource.create({
                data: "#exportTable",
                schema: {
                    type: "table",
                    fields: {
                        ProjectName: { type: String },
                        ProjectStatus: { type: String },
                        Admin:{ type: String },
                        AdminEmailId: { type: String },
                        AdminContactno: { type: Number},
                        PaymentStatus: { type: String }
                    }
                }
            });

            // when parsing is done, export the data to Excel
            dataSource.read().then(function (data) {
                new shield.exp.OOXMLWorkbook({
                    author: "PrepBootstrap",
                    worksheets: [
                        {
                            name: "PrepBootstrap Table",
                            rows: [
                                {
                                    cells: [
                                        {
                                            style: {
                                                bold: true
                                            },
                                            type: String,
                                            value: "ProjectName"
                                        },
                                        {
                                            style: {
                                                bold: true
                                            },
                                            type: String,
                                            value: "ProjectStatus"
                                        },
                                        {
                                            style: {
                                                bold: true
                                            },
                                            type: String,
                                            value: "Admin"
                                        },
                                         {
                                            style: {
                                                bold: true
                                            },
                                            type: String,
                                            value: "AdminEmailId"
                                        },
                                         {
                                            style: {
                                                bold: true
                                            },
                                            type: Number,
                                            value: "AdminContactno"
                                        },
                                        {
                                            style: {
                                                bold: true
                                            },
                                            type: String,
                                            value: "PaymentStatus"
                                        }
                                    ]
                                }
                            ].concat($.map(data, function(item) {
                                return {
                                    cells: [
                                        { type: String, value: item.ProjectName },
                                        { type: String, value: item.ProjectStatus },
                                        { type: String, value: item.Admin},
                                        { type: String, value: item.AdminEmailId },
                                        { type: Number, value: item.AdminContactno },
                                        { type: String, value: item.PaymentStatus }
                                    ]
                                };
                            }))
                        }
                    ]
                }).saveAs({
                    fileName: "AdminExcel"
                });
            });
        });
    });
</script>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>

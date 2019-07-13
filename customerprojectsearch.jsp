<%-- 
    Document   : customerprojectsearch
    Created on : 18 Mar, 2016, 12:18:36 AM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="myproject.DatabaseConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <jsp:include page="header.jsp"></jsp:include>
    <body>
        <%
        String projectname=request.getParameter("projectname");
         String query="Select * from galleryimages where ProjectName='"+projectname+"';";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
        %>
        <div id="gallery">
        <figure>
           
          <ul class="nospace clear">
             
              <!--                -->
             
            
            <li class="one_quarter first"><a class="nlb" data-lightbox-gallery="gallery1" href="Example/image-folder/<%=rs.getString(2)%>" title="Display Text 1"><img class="borderedbox" src="Example/image-folder/<%=rs.getString(2)%>" alt=""></a></li>
            <li class="one_quarter"><a class="nlb" data-lightbox-gallery="gallery1" href="Example/image-folder/<%=rs.getString(3)%>" title="Display Text 2"><img class="borderedbox" src="Example/image-folder/<%=rs.getString(3)%>" alt=""></a></li>
            <li class="one_quarter"><a class="nlb" data-lightbox-gallery="gallery1" href="Example/image-folder/<%=rs.getString(4)%>" title="Display Text 3"><img class="borderedbox" src="Example/image-folder/<%=rs.getString(4)%>" alt=""></a></li>
             <li class="one_quarter"><a class="nlb" data-lightbox-gallery="gallery1" href="Example/image-folder/<%=rs.getString(5)%>" title="Display Text 3"><img class="borderedbox" src="Example/image-folder/<%=rs.getString(5)%>" alt=""></a></li>
          
          </ul>
                  
        
        </figure>
      </div>
        <table>
            <tr>
                <td>Project Name</td>
                <td><%=rs.getString(6)%></td>
            </tr>
            <tr>
                <td>Location</td>
                <td><%=rs.getString(9)%></td>
            </tr>
            <tr>
                <td>Project Category</td>
                <td><%=rs.getString(8)%></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><%=rs.getString(7)%></td>
            </tr>
        </table>
        <%
               }
        %>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>

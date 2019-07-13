<%-- 
    Document   : FeedbackShow
    Created on : 25 Jan, 2016, 1:52:56 PM
    Author     : Admin
--%>

<%@page import="java.sql.*"%>
<%@page import="myproject.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="FeedbackShow.css" />
    <head>
       <script Language=JavaScript>
    var clicks = 0;
    function click() {
        clicks += 1;
        document.getElementById("clicks").innerHTML = clicks;
    };
    </script>
    </head>
    <body>
         
    <center><h1><font color="Red">Comments</h1></center>
    <%
        String query="Select * from Feedback ORDER BY Id DESC LIMIT 4";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
             %>    
    <form action="AddFeedback.jsp">
       
        <div id="ronaldo">
        <table align="center">
            
            <tr>
            <td>
                <article>
                     <header>
         <div align="right">
          <figure class="avatar"><img src="images/demo/avatar.png" alt=""></figure></div>
       
       <address> 
           By <a href="#"><font color="black">by <%= rs.getString(2)%></a>
       </address>
            <p>EmailId:<%= rs.getString(3)%></p> 
            </header><br> 
                  <p>feedback:</p>
                  <p> <%= rs.getString(4)%></p>
             </article>
             <div align="right">
            <input type="button" onClick="return click()" value="like">
            <span id="clicks" style="color:red">0</span></div>
            </td>
            </tr>
            
             <%
                            }
             %>
    </table>
        </div>
     
    
            </form>
    </body>
</html>

<%-- 
    Document   : HomeOption
    Created on : 7 Jan, 2016, 11:26:05 AM
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
        <jsp:include page="header.jsp"></jsp:include>
        <table border="0" width="100%" cellpadding="5" >
        <tr>
            <th colspan="4"><font size="10" color="RED"><u>Home Option</u><br><br></font></th>
	</tr>
        
        <tr>
        <td><a href="LatestNews.jsp"><input type="button" value="Latest News" ></a></td>
         <td><a href="OurBusiness.jsp"><input type="button" value="Our Business" ></a></td>
         <td><a href="OurGroup.jsp"><input type="button" value="Our Group" ></a></td>
         <td><a href="Gallery.jsp"><input type="button" value="Gallery" ></a></td>
        </tr>
        
        <tr>
        <td><a href="ProjectPics.jsp"><input type="button" value="Project Pics" ></a></td>
        <td><a href="PrivacyPolicy.jsp"><input type="button" value="Privacy policy" ></a></td>
        <td><a href="Sitemap.jsp"><input type="button" value="Sitemap" ></a></td>
        <td><a href="Aboutus.jsp"><input type="button" value="About us" ></a></td>
        </td>
        </tr>
        
        </table>
 <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

<%-- 
    Document   : CustomerProjectUpdateAction
    Created on : 19 Jan, 2016, 1:38:22 PM
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
           <%@page import="myproject.*"%>
          <%@ page import="java.sql.*"%>
        <%
       int Projectid=(Integer)session.getAttribute("CustomerProjectid");
     int id=(Integer)session.getAttribute("Custid");      
    
    String ProjectName = request.getParameter("txtProjectName");   
    String Address= request.getParameter("txtAddress");
    String BeginDate = request.getParameter("txtBeginDate");
    String TargetDate = request.getParameter("txtTargetDate");
    String FinalDate = request.getParameter("txtFinalDate");
    String LumpsumConstructionCost = request.getParameter("txtLumpsumCost");
    String Website = request.getParameter("txtWebsite");
   
    String ClientRequirements = request.getParameter("txtClientRequirements");
    String Fesiability = request.getParameter("txtFesiability");
   
    String FSI=request.getParameter("txtFSI");
    
    String ProjectCategory=request.getParameter("1stProjectCategory");
     String Country=request.getParameter("txtCountry");
     String State=request.getParameter("txtState");
     String City=request.getParameter("txtCity");
     String Pincode=request.getParameter("txtPinCode");
     String Email=request.getParameter("txtEmail");
     session.setAttribute("ProjectEmail",Email); 
      String AdminName=request.getParameter("ProjectArchietect");
    
    Project p=new Project();
    
    p.setId(id);
    p.setAdminEmail(AdminName);
    p.setProjectName(ProjectName);
    p.setAddress(Address);
    p.setBeginDate(BeginDate);
    p.setTargetEndDate(TargetDate);
    p.setFinalEndDate(FinalDate);
    p.setLumpsum_construction_cost(LumpsumConstructionCost);
    p.setWebsite(Website);
    p.setCountry(Country);
    p.setState(State);
    p.setCity(City);
    p.setPinCode(Pincode);
    p.setEmail_Id_Project(Email);
    p.setFSI(FSI);
    p.setFesiability(Fesiability);
    p.setClientRequirements(ClientRequirements);
    
    p.setProjectCategory(ProjectCategory);
    
    p.setProjectid(Projectid);
    
   String result=ProjectWorker.updateProject(p);
    
    if(result.equals("Success"))
               {
        response.sendRedirect("CustomerProjectProfile.jsp");
    }
   else
             {
       response.sendRedirect("CustomerProjectUpdate.jsp");
   }
%>

    </body>
</html>

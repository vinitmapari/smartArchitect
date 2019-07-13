<%-- 
    Document   : CustomerProjectAddAction
    Created on : 19 Jan, 2016, 1:37:47 PM
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
        
     int id=(Integer)session.getAttribute("Custid");   
    String Image=request.getParameter("txtProject");
    String ProjectName = request.getParameter("txtProjectName");   
    String Address= request.getParameter("txtAddress");
    String Pincode=request.getParameter("txtPinCode");
    String BeginDate = request.getParameter("txtBeginDate");
    String TargetDate = request.getParameter("txtTargetDate");
    String FinalDate = request.getParameter("txtFinalDate");
    String LumpsumConstructionCost = request.getParameter("txtLumpsumCost");
    String Website = request.getParameter("txtWebsite");
    String SurveyPlan = request.getParameter("txtSurveyPlan");
    String SevenTwelvePlan = request.getParameter("txt7_12_Plan");
    String ClientRequirements = request.getParameter("txtClientRequirements");
    String Fesiability = request.getParameter("txtFesiability");
    String FesiabilityFile = request.getParameter("txtFeasiabilityFile");
    String FSI=request.getParameter("txtFSI");
    String FSIFile=request.getParameter("txtFSIFile");
    String ProjectCategory=request.getParameter("ProjectCategory");
    String Country=request.getParameter("txtCountry");
    String State=request.getParameter("txtState");
    String City=request.getParameter("txtCity");
    String Email=request.getParameter("txtEmail");
   session.setAttribute("ProjectEmail",Email); 
    String AdminName=request.getParameter("ProjectArchietect");
    System.out.println(AdminName);
    
    Project p=new Project();
    p.setImage(Image);
    p.setId(id);
    p.setAdminEmail(AdminName);
    p.setProjectName(ProjectName);
    p.setAddress(Address);
    p.setPinCode(Pincode);
    p.setBeginDate(BeginDate);
    p.setTargetEndDate(TargetDate);
    p.setFinalEndDate(FinalDate);
    p.setLumpsum_construction_cost(LumpsumConstructionCost);
    p.setWebsite(Website);
    p.setLandDetails_SurveyPlan(SurveyPlan);
    p.setLandDetails_7_12Plan(SevenTwelvePlan);
    p.setClientRequirements(ClientRequirements);
    p.setFSI(FSI);
    p.setFSIFile(FSIFile);
    p.setFesiability(Fesiability);
    p.setFesiabilityFile(FesiabilityFile);
    p.setProjectCategory(ProjectCategory);
    p.setCountry(Country);
    p.setState(State);
    p.setCity(City);
    p.setEmail_Id_Project(Email);
    
   String result=ProjectWorker.addProject(p);
    
    if(result.equals("Success"))
               {
        response.sendRedirect("CustomerProjectProfile.jsp");
    }
   else
             {
       response.sendRedirect("CustomerProjectRegistration.jsp");
   }
%>

    </body>
</html>

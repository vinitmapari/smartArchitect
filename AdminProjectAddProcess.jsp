<%-- 
    Document   : AdminProjectAddProcess
    Created on : 21 Jan, 2016, 9:09:13 AM
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
    String Image=request.getParameter("txtProject");
    String ProjectName = request.getParameter("txtProjectName");   
    String Address= request.getParameter("txtAddress");
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
    String ProjectCategory=request.getParameter("1stProjectCategory");
    String Country=request.getParameter("txtCountry");
    String State=request.getParameter("txtState");
    String City=request.getParameter("txtCity");
    String Pincode=request.getParameter("txtPinCode");
    String Email=request.getParameter("txtEmail");
    
    Project p=new Project();
    p.setImage(Image);
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
    p.setLandDetails_SurveyPlan(SurveyPlan);
    p.setLandDetails_7_12Plan(SevenTwelvePlan);
    p.setProjectCategory(ProjectCategory);
    p.setFSIFile(FSIFile);
    p.setFesiabilityFile(FesiabilityFile);
    
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

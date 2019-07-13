<%-- 
    Document   : AdminAddAction
    Created on : 15 Jan, 2016, 5:35:43 PM
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
          <%@ page import="java.sql.*"%>
          <%@page import="myproject.*"%>
<%
    
    String FirstName = request.getParameter("txtFirstName"); 
    session.setAttribute("FirstName",FirstName);
    String LastName = request.getParameter("txtLastName");
    session.setAttribute("LastName",LastName);
    String Address1=request.getParameter("Address1");
    String PinCode1 = request.getParameter("txtPinCode1");
    String Address2 = request.getParameter("Address2");
    String PinCode2 = request.getParameter("txtPinCode2");
    String Age = request.getParameter("txtAge");
    String Gender = request.getParameter("Gender");
    String EducationQualification = request.getParameter("lstQual");
    String Specialization=request.getParameter("lstSpecial");
   String StrongPart =request.getParameter("txtStrong");
    String WorkExp =request.getParameter("txtExp");
    String WorkExpyr=request.getParameter("txtExpYr");
   
    String Country = request.getParameter("Country");
    String State = request.getParameter("txtState");
    String City = request.getParameter("txtCity");
    
    String Phone1 =request.getParameter("txtPhone1");
    String Phone2 = request.getParameter("txtPhone2");
    String Mobile1=request.getParameter("txtMobile1");
    session.setAttribute("Mobile1",Mobile1);
    String Mobile2 =request.getParameter("txtMobile2");
    session.setAttribute("Mobile2",Mobile2);
    String Email = request.getParameter("txtEmail");
    session.setAttribute("Email",Email);
    String Password = request.getParameter("txtPassword");
    String date=request.getParameter("txtDate");
   
    Admin ad=new Admin();
    
    ad.setFirstName(FirstName);
    ad.setLastName(LastName);
    ad.setAddress1(Address1);
    ad.setPinCode(PinCode1);
    ad.setAddress2(Address2);
    ad.setPincode2(PinCode2);
    ad.setAge(Age);
    ad.setGender(Gender);
    ad.setEducation_Qualification(EducationQualification);
    ad.setSpecialization(Specialization);
    ad.setStrong_part(StrongPart);
    ad.setWork_experience(WorkExp);
    ad.setWork_experoence_years(WorkExpyr);
    
    ad.setCountry(Country);
    ad.setState(State);
    ad.setCity(City);
   
    ad.setPhone_no1(Phone1);
    ad.setPhone_no2(Phone2);
    ad.setMobile_no1(Mobile1);
    ad.setMobile_no2(Mobile2);
    ad.setEmail(Email);
    ad.setPassword(Password);
    ad.setDate(date);
    
   String result=AdminWorker.addAdmin(ad);
    
    if(result.equals("success"))
               {
        response.sendRedirect("AdmingetIdByEmail.jsp");
    }
   else
             {
       response.sendRedirect("AdmingetIdByEmail.jsp");
   }
%>

    </body>
</html>

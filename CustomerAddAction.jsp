<%-- 
    Document   : CustomerRegistrationAction
    Created on : 11 Jan, 2016, 9:26:48 PM
    Author     : Admin
--%>

<%@page import="myproject.Customer"%>
<%@page import="myproject.CustomerWorker"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%@ page import="java.sql.*"%>
<%
    String Image=request.getParameter("txtFile");
    String FirstName = request.getParameter("txtFirstName");   
    String LastName = request.getParameter("txtLastName");
    String Address1= request.getParameter("Address1");
    String PinCode = request.getParameter("txtPinCode");
    String Address2 = request.getParameter("txtAddress2");
    String PinCode1 = request.getParameter("txtPinCode2");
    String Age = request.getParameter("txtAge");
    String Gender = request.getParameter("gender");
    String CustomerCategory = request.getParameter("CustomerCategory");
    String Country = request.getParameter("txtCountry");
    String State = request.getParameter("txtState");
    String City = request.getParameter("txtCity");
    String Email = request.getParameter("txtEmail");
    String Password = request.getParameter("txtPassword");
    String date=request.getParameter("txtDate");
    String MobileNo1=request.getParameter("txtMobileNo1");
    String MobileNo2=request.getParameter("txtMobileNo2");
    String PhoneNo1=request.getParameter("txtPhoneNo1");
    String PhoneNo2=request.getParameter("txtPhoneNo2");
    
     session.setAttribute("ProjectEmail",Email);
    
    Customer c=new Customer();
    c.setImage(Image);
    c.setFirstName(FirstName);
    c.setLastName(LastName);
    c.setAddress1(Address1);
    c.setPinCode(PinCode);
    c.setAddress2(Address2);
    c.setPinCode2(PinCode1);
    c.setAge(Age);
    c.setGender(Gender);
    c.setCustomerCategory(CustomerCategory);
    c.setState(State);
    c.setCity(City);
    c.setCountry(Country);
    c.setEmail(Email);
    c.setPassword(Password);
    c.setDate(date);
    c.setMobileNo1(MobileNo1);
    c.setMobileNo2(MobileNo2);
    c.setPhoneNo1(PhoneNo1);
    c.setPhoneNo2(PhoneNo2);
    
    
 String result=CustomerWorker.addCustomer(c);
    
    if(result.equals("Success"))
               {
        response.sendRedirect("CustomerLoginForm.jsp");
    }
   else
             {
       response.sendRedirect("CustomerRegistration.jsp");
   }
%>


    </body>
</html>

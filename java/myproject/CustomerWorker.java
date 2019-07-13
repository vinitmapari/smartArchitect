/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package myproject;

import java.sql.*;
import java.util.*;


public class CustomerWorker {
    public static String addCustomer(Customer c) throws SQLException 
     {
         String result="";
         try
         {
             String query="Insert into customerregistration(Image,FirstName,LastName,Address1,PinCode,Address2,Pincode1,Age,Gender,CustomerCategory,Country,State,City,Email,Password,Date,MobileNo1,MobileNo2,PhoneNo1,PhoneNo2) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
                pstmt.setString(1,c.getImage());
                pstmt.setString(2,c.getFirstName());
                pstmt.setString(3,c.getLastName());
                pstmt.setString(4,c.getAddress1());
                pstmt.setString(5,c.getPinCode());
                pstmt.setString(6,c.getAddress2());
                pstmt.setString(7,c.getPinCode2());
                pstmt.setString(8,c.getAge());
                pstmt.setString(9,c.getGender());
                pstmt.setString(10,c.getCustomerCategory());
                pstmt.setString(11,c.getCountry());
                pstmt.setString(12,c.getState());
                pstmt.setString(13,c.getCity());
                pstmt.setString(14,c.getEmail());
                pstmt.setString(15,c.getPassword());
                pstmt.setString(16,c.getDate());
                pstmt.setString(17,c.getMobileNo1());
                pstmt.setString(18,c.getMobileNo2());
                pstmt.setString(19,c.getPhoneNo1());
                pstmt.setString(20,c.getPhoneNo2());
             int i=pstmt.executeUpdate();
             if(i==1)
             {
                 result=Result.SUCCESS;
                 
             }
             else
             {
                 result=Result.FAILURE;
                 
             }
             DatabaseConnector.close();
            
         }
         catch(Exception ex)
         {
          result=Result.PROBLEM;
          ex.printStackTrace();
         }
         return result;
     }
    
    public static String updateCustomer(Customer c) throws SQLException 
     {
         String result="";
         try
         {
             String query="Update customerregistration set FirstName=?,LastName=?,Address1=?,PinCode=?,Address2=?,PinCode1=?,Age=?,Gender=?,CustomerCategory=?,Country=?,State=?,City=?,Email=?,Password=?,Date=?,MobileNo1=?,MobileNo2=?,PhoneNo1=?,PhoneNo2=? where id=?;";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
             
            
                pstmt.setString(1,c.getFirstName());
                pstmt.setString(2,c.getLastName());
                pstmt.setString(3,c.getAddress1());
                pstmt.setString(4,c.getPinCode());
                pstmt.setString(5,c.getAddress2());
                pstmt.setString(6,c.getPinCode2());
                pstmt.setString(7,c.getAge());
                pstmt.setString(8,c.getGender());
                pstmt.setString(9,c.getCustomerCategory());
                pstmt.setString(10,c.getCountry());
                pstmt.setString(11,c.getState());
                pstmt.setString(12,c.getCity());
                pstmt.setString(13,c.getEmail());
                pstmt.setString(14,c.getPassword());
                pstmt.setString(15,c.getDate());
                pstmt.setString(16,c.getMobileNo1());
                pstmt.setString(17,c.getMobileNo2());
                pstmt.setString(18,c.getPhoneNo1());
                pstmt.setString(19,c.getPhoneNo2());
                 pstmt.setInt(20,c.getId());
 int i=pstmt.executeUpdate();
             if(i==1)
             {
                 result=Result.SUCCESS;
                 
             }
             else
             {
                 result=Result.FAILURE;
                 
             }
             DatabaseConnector.close();
            
         }
         catch(Exception ex)
         {
          result=Result.PROBLEM;
          ex.printStackTrace();
         }
         return result;
     } 
    //update password
    public static String updateCustomerPassword(Customer c) throws SQLException 
     {
         String result="";
         try
         {
             String query="Update customerregistration set Password=? where Email=?;";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
             
            
                
                pstmt.setString(1,c.getPassword());
                pstmt.setString(2,c.getEmail());
                
 int i=pstmt.executeUpdate();
             if(i==1)
             {
                 result=Result.SUCCESS;
                 
             }
             else
             {
                 result=Result.FAILURE;
                 
             }
             DatabaseConnector.close();
            
         }
         catch(Exception ex)
         {
          result=Result.PROBLEM;
          ex.printStackTrace();
         }
         return result;
     } 
    //
    public static String deleteCustomer(int id) throws SQLException 
     {
         String result="";
         try
         {
             String query="Delete from customerregistration where id=?;";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
           
             pstmt.setInt(1,id);
             int i=pstmt.executeUpdate();
             if(i==1)
             {
                 result=Result.SUCCESS;
                 
             }
             else
             {
                 result=Result.FAILURE;
                 
             }
             DatabaseConnector.close();
            
         }
         catch(Exception ex)
         {
          result=Result.PROBLEM;
          ex.printStackTrace();
         }
         return result;
     }  
    
    public static Customer getCustomerById(int id)
     {
        
         Customer c =null;
         try
         {
             String query="Select * from customerregistration where id="+id+";";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             if(rs.next())
             {
                c=new Customer();
                c.setImage(rs.getString(2));
                c.setFirstName(rs.getString(3));
                c.setLastName(rs.getString(4));
                c.setAddress1(rs.getString(5));
                c.setPinCode(rs.getString(6));
                c.setAddress2(rs.getString(7));
                c.setPinCode2(rs.getString(8));
                c.setAge(rs.getString(9));
                c.setGender(rs.getString(10));
                c.setCustomerCategory(rs.getString(11));
                c.setCountry(rs.getString(12));
                c.setState(rs.getString(13));
                c.setCity(rs.getString(14));
                c.setEmail(rs.getString(15));
                c.setPassword(rs.getString(16));
                c.setDate(rs.getString(17));
                c.setMobileNo1(rs.getString(18));
                c.setMobileNo2(rs.getString(19));
                c.setPhoneNo1(rs.getString(20));
                c.setPhoneNo2(rs.getString(21));
             }
          
        }
            catch(Exception ex)
            {
               
          ex.printStackTrace();
            }
        return c;
     }
    
    public static ArrayList<Customer> getAllCustomer()
     {
         
        ArrayList<Customer> list=new  ArrayList<Customer>();
         try
         {
             String query="Select * from customerregistration";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
                Customer c =new Customer();
       
                c.setImage(rs.getString(2));
                c.setFirstName(rs.getString(3));
                c.setLastName(rs.getString(4));
                c.setAddress1(rs.getString(5));
                c.setPinCode(rs.getString(6));
                c.setAddress2(rs.getString(7));
                c.setPinCode2(rs.getString(8));
                c.setAge(rs.getString(9));
                c.setGender(rs.getString(10));
                c.setCustomerCategory(rs.getString(11));
                c.setCountry(rs.getString(12));
                c.setState(rs.getString(13));
                c.setCity(rs.getString(14));
                c.setEmail(rs.getString(15));
                c.setPassword(rs.getString(16));
                c.setDate(rs.getString(17));
                c.setMobileNo1(rs.getString(18));
                c.setMobileNo2(rs.getString(19));
                c.setPhoneNo1(rs.getString(20));
                c.setPhoneNo2(rs.getString(21));
                list.add(c);
               c=null;
             }
              
          
        }
            catch(Exception ex)
            {
                
          ex.printStackTrace();
            }
       
       return list;
        
     } 
     
      public static int getIdByEmail(String email)
     {
        
        int id=0;
         try
         {
             String query="Select id from customerregistration where Email='"+email+"';";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             if(rs.next())
             {
              id=rs.getInt(1);
             }
          
        }
            catch(Exception ex)
            {
               
          ex.printStackTrace();
            }
        return id;
     }
      
    public static Customer getCustomerByCustomerId(int id)
     {
        
         Customer c =null;
         try
         {
             String query="Select * from customerregistration where CustomerId="+id+";";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             if(rs.next())
             {
                c=new Customer();
                c.setImage(rs.getString(2));
                c.setFirstName(rs.getString(3));
                c.setLastName(rs.getString(4));
                c.setAddress1(rs.getString(5));
                c.setPinCode(rs.getString(6));
                c.setAddress2(rs.getString(7));
                c.setPinCode2(rs.getString(8));
                c.setAge(rs.getString(9));
                c.setGender(rs.getString(10));
                c.setCustomerCategory(rs.getString(11));
                c.setCountry(rs.getString(12));
                c.setState(rs.getString(13));
                c.setCity(rs.getString(14));
                c.setEmail(rs.getString(15));
                c.setPassword(rs.getString(16));
                c.setDate(rs.getString(17));
                c.setMobileNo1(rs.getString(18));
                c.setMobileNo2(rs.getString(19));
                c.setPhoneNo1(rs.getString(20));
                c.setPhoneNo2(rs.getString(21));
             }
          
        }
            catch(Exception ex)
            {
               
          ex.printStackTrace();
            }
        return c;
     }
    
}

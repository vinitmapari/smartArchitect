/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package myproject;
import java.sql.*;
import java.util.*;
/**
 *
 * @author Admin
 */
public class AdminWorker 
{
    public static String addAdmin(Admin ad) throws SQLException 
     {
         String result="";
         try
         {
             String query="Insert into adminregistration(FirstName,LastName,Address1,PinCode,Address2,Pincode2,Age,Gender,EducationQualification,Specialization,StrongPart,WorkExp,WorkExpyr,Country,State,City,Phone1,Phone2,Mobile1,Mobile2,Email,Password,date) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
               
               
                pstmt.setString(1,ad.getFirstName());
                pstmt.setString(2,ad.getLastName());
                pstmt.setString(3,ad.getAddress1());
                pstmt.setString(4,ad.getPinCode());
                pstmt.setString(5,ad.getAddress2());
                pstmt.setString(6,ad.getPincode2());
                pstmt.setString(7,ad.getAge());
                pstmt.setString(8,ad.getGender());
                pstmt.setString(9,ad.getEducation_Qualification());
                pstmt.setString(10,ad.getSpecialization());
                pstmt.setString(11,ad.getStrong_part());
                pstmt.setString(12,ad.getWork_experience());
                pstmt.setString(13,ad.getWork_experoence_years());
               
                pstmt.setString(14,ad.getCountry());
                pstmt.setString(15,ad.getState());
                pstmt.setString(16,ad.getCity());
               
                pstmt.setString(17,ad.getPhone_no1());
                pstmt.setString(18,ad.getPhone_no2());
                pstmt.setString(19,ad.getMobile_no1());
                pstmt.setString(20,ad.getMobile_no2());
                pstmt.setString(21,ad.getEmail());
                pstmt.setString(22,ad.getPassword());
                pstmt.setString(23,ad.getDate());
                
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

        public static String addAdminProjectProcess(Admin ad) throws SQLException 
     {
         String result="";
         try
         {
             String query="Insert into adminProject(Image,FirstName,LastName,Address1,Address2,Age,Gender,EducationQualification,Specialization,StrongPart,WorkExp,WorkExpyr,BestWork,Country,State,City,PinCode,AttachCertificate,Phone1,Phone2,Mobile1,Mobile2,Email,Password,ConfirmPassword,date) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
               
                pstmt.setString(1,ad.getImage());
                pstmt.setString(2,ad.getFirstName());
                pstmt.setString(3,ad.getLastName());
                pstmt.setString(4,ad.getAddress1());
                pstmt.setString(5,ad.getAddress2());
                pstmt.setString(6,ad.getAge());
                pstmt.setString(7,ad.getGender());
                pstmt.setString(8,ad.getEducation_Qualification());
                pstmt.setString(9,ad.getSpecialization());
                pstmt.setString(10,ad.getStrong_part());
                pstmt.setString(11,ad.getWork_experience());
                pstmt.setString(12,ad.getWork_experoence_years());
                pstmt.setString(13,ad.getBest_work());
                pstmt.setString(14,ad.getCountry());
                pstmt.setString(15,ad.getState());
                pstmt.setString(16,ad.getCity());
                pstmt.setString(17,ad.getPinCode());
                pstmt.setString(18,ad.getAttach_certificate());
                pstmt.setString(19,ad.getPhone_no1());
                pstmt.setString(20,ad.getPhone_no2());
                pstmt.setString(21,ad.getMobile_no1());
                pstmt.setString(22,ad.getMobile_no2());
                pstmt.setString(23,ad.getEmail());
                pstmt.setString(24,ad.getPassword());
                pstmt.setString(25,ad.getConfirmPassword());
                pstmt.setString(26,ad.getDate());
                
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

    
    public static String updateAdmin(Admin ad) throws SQLException 
     {
         String result="";
         try
         {
             String query="Update adminregistration set FirstName=?,LastName=?,Address1=?,PinCode=?,Address2=?,Pincode2=?,Age=?,Gender=?,EducationQualification=?,Specialization=?,StrongPart=?,WorkExp=?,WorkExpyr=?,Country=?,State=?,City=?,Phone1=?,Phone2=?,Mobile1=?,Mobile2=?,Email=?,Password=?,date=? where id=?;";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
               
                
                pstmt.setString(1,ad.getFirstName());
                pstmt.setString(2,ad.getLastName());
                pstmt.setString(3,ad.getAddress1());
                pstmt.setString(4,ad.getPinCode());
                pstmt.setString(5,ad.getAddress2());
                pstmt.setString(6,ad.getPincode2());
                pstmt.setString(7,ad.getAge());
                pstmt.setString(8,ad.getGender());
                pstmt.setString(9,ad.getEducation_Qualification());
                pstmt.setString(10,ad.getSpecialization());
                pstmt.setString(11,ad.getStrong_part());
                pstmt.setString(12,ad.getWork_experience());
                pstmt.setString(13,ad.getWork_experoence_years());
                
                pstmt.setString(14,ad.getCountry());
                pstmt.setString(15,ad.getState());
                pstmt.setString(16,ad.getCity());
               
                pstmt.setString(17,ad.getPhone_no1());
                pstmt.setString(18,ad.getPhone_no2());
                pstmt.setString(19,ad.getMobile_no1());
                pstmt.setString(20,ad.getMobile_no2());
                pstmt.setString(21,ad.getEmail());
                pstmt.setString(22,ad.getPassword());
                pstmt.setString(23,ad.getDate());
                pstmt.setInt(24,ad.getId());
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
    
    public static String updateAdminFiles(Admin ad) throws SQLException 
     {
         String result="";
         try
         {
             String query="Update adminregistration set Image=?,BestWork=?,AttachCertificate=? where id=?;";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
               
                pstmt.setString(1,ad.getImage());
                
                pstmt.setString(2,ad.getBest_work());
               
                pstmt.setString(3,ad.getAttach_certificate());
               
                pstmt.setInt(4,ad.getId());
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
    
    
    public static String updateAdminkey(Admin ad) throws SQLException 
     {
         String result="";
         try
         {
             String query="Update adminregistration set CodeKey=? where Email=?;";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
               
                pstmt.setString(1,ad.getKey());
                pstmt.setString(2,ad.getEmail());
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
    
    
    public static Admin getAdminById(int id)
     {
        
         Admin ad =null;
         try
         {
             String query="Select * from adminregistration where id="+id+";";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             if(rs.next())
             {
                ad=new Admin();
                
                ad.setImage(rs.getString(2));
                ad.setFirstName(rs.getString(3));
                ad.setLastName(rs.getString(4));
                ad.setAddress1(rs.getString(5));
                ad.setPinCode(rs.getString(6));
                ad.setAddress2(rs.getString(7));
                ad.setPincode2(rs.getString(8));
                ad.setAge(rs.getString(9));
                ad.setGender(rs.getString(10));
                ad.setEducation_Qualification(rs.getString(11));
                ad.setSpecialization(rs.getString(12));
                ad.setStrong_part(rs.getString(13));
                ad.setWork_experience(rs.getString(14));
                ad.setWork_experoence_years(rs.getString(15));
                ad.setBest_work(rs.getString(16));
                ad.setCountry(rs.getString(17));
                ad.setState(rs.getString(18));
                ad.setCity(rs.getString(19));
                ad.setAttach_certificate(rs.getString(20));
                ad.setPhone_no1(rs.getString(21));
                ad.setPhone_no2(rs.getString(22));
                ad.setMobile_no1(rs.getString(23));
                ad.setMobile_no2(rs.getString(24));
                ad.setEmail(rs.getString(25));
                ad.setPassword(rs.getString(26));
                ad.setDate(rs.getString(27));            

             }
          
        }
            catch(Exception ex)
            {
               
          ex.printStackTrace();
            }
        return ad;
     }
    
    public static ArrayList<Customer> getAllCustomer()
     {
         
        ArrayList<Customer> list=new  ArrayList<Customer>();
         try
         {
             String query="Select * from adminregistration";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
                Customer c =new Customer();
                c.setImage(rs.getString(1));
                c.setFirstName(rs.getString(2));
                c.setLastName(rs.getString(3));
                c.setAddress1(rs.getString(4));
                c.setAddress2(rs.getString(5));
                c.setAge(rs.getString(6));
                c.setGender(rs.getString(7));
                c.setCustomerCategory(rs.getString(8));
                c.setCountry(rs.getString(9));
                c.setState(rs.getString(10));
                c.setCity(rs.getString(11));
                c.setPinCode(rs.getString(12));
                c.setEmail(rs.getString(13));
                
                c.setPassword(rs.getString(14));
                c.setConfirmPassword(rs.getString(15));
                c.setDate(rs.getString(16));
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
             String query="Select id from adminregistration where Email='"+email+"';";
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
    
    
}

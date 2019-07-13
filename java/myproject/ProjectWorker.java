/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package myproject;


import java.sql.*;
import java.util.*;
public class ProjectWorker 
{
    public static String addProject(Project p) throws SQLException 
     {
         String result="";
         try
         {
             String query="Insert into customerproject(Image,CustomerId,AdminEmail,ProjectName,Address,PinCode,BeginDate,TargetDate,FinalDate,LumpsumConstructionCost,Website,SurveyPlan,SevenTwelvePlan,ClientRequirements,Fesiability,FesiabilityFile,FSI,FSIFile,ProjectCategory,Country,State,City,Email) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
                pstmt.setString(1,p.getImage());
                pstmt.setInt(2,p.getId());
                pstmt.setString(3,p.getAdminEmail());
                pstmt.setString(4,p.getProjectName());
                pstmt.setString(5,p.getAddress());
                pstmt.setString(6,p.getPinCode());
                pstmt.setString(7,p.getBeginDate());
                pstmt.setString(8,p.getTargetEndDate());
                pstmt.setString(9,p.getFinalEndDate());
                pstmt.setString(10,p.getLumpsum_construction_cost());
                pstmt.setString(11,p.getWebsite());
                pstmt.setString(12,p.getLandDetails_SurveyPlan());
                pstmt.setString(13,p.getLandDetails_7_12Plan());
                pstmt.setString(14,p.getClientRequirements());
                pstmt.setString(15,p.getFesiability());
                pstmt.setString(16,p.getFesiabilityFile());
                pstmt.setString(17,p.getFSI());
                pstmt.setString(18,p.getFSIFile());
                pstmt.setString(19,p.getProjectCategory());
                pstmt.setString(20,p.getCountry());
                pstmt.setString(21,p.getState());
                pstmt.setString(22,p.getCity());
                pstmt.setString(23,p.getEmail_Id_Project());
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
    public static String UpdateProjectStatus(Project p) throws SQLException 
     {
         String result="";
         try
         {
             
            String query="Update customerproject set ProjectStatus=?,PaymentStatus=? where ProjectName=?;";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
                pstmt.setString(1,p.getProjectStatus());
                pstmt.setString(2,p.getPaymentStatus());
                pstmt.setString(3,p.getProjectName());
               
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
    
    public static String updateProject(Project p) throws SQLException 
     {
         String result="";
         try
         {
             String query="Update customerproject set CustomerId=?,AdminEmail=?,ProjectName=?,Address=?,PinCode=?,BeginDate=?,TargetDate=?,FinalDate=?,LumpsumConstructionCost=?,Website=?,ClientRequirements=?,Fesiability=?,FSI=?,ProjectCategory=?,Country=?,State=?,City=?,Email=? where id=?;";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
               
              
                pstmt.setInt(1,p.getId());
                pstmt.setString(2,p.getAdminEmail());
                pstmt.setString(3,p.getProjectName());
                pstmt.setString(4,p.getAddress());
                pstmt.setString(5,p.getPinCode());
                pstmt.setString(6,p.getBeginDate());
                pstmt.setString(7,p.getTargetEndDate());
                pstmt.setString(8,p.getFinalEndDate());
                pstmt.setString(9,p.getLumpsum_construction_cost());
                pstmt.setString(10,p.getWebsite());
                
                pstmt.setString(11,p.getClientRequirements());
                pstmt.setString(12,p.getFesiability());
               
                pstmt.setString(13,p.getFSI());
                
                pstmt.setString(14,p.getProjectCategory());
                pstmt.setString(15,p.getCountry());
                pstmt.setString(16,p.getState());
                pstmt.setString(17,p.getCity());
                pstmt.setString(18,p.getEmail_Id_Project());
                pstmt.setInt(19,p.getProjectid());
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
    
    public static String deleteProject(int id) throws SQLException 
     {
         String result="";
         try
         {
             String query="Delete from customerproject where id=?;";
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
    
    public static Project getProjectById(int id)
     {
        
         Project p =null;
         try
         {
             String query="Select * from customerproject where id="+id+";";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             if(rs.next())
             {
                p=new Project();
              
                p.setImage(rs.getString(2));
                p.setId(rs.getInt(3));
               p.setAdminEmail(rs.getString(4));
                p.setProjectName(rs.getString(5));
                p.setAddress(rs.getString(6));
                p.setPinCode(rs.getString(7));
                p.setBeginDate(rs.getString(8));
                p.setTargetEndDate(rs.getString(9));
                p.setFinalEndDate(rs.getString(10));
                p.setLumpsum_construction_cost(rs.getString(11));
                p.setWebsite(rs.getString(12));
                p.setLandDetails_SurveyPlan(rs.getString(13));
                p.setLandDetails_7_12Plan(rs.getString(14));
                p.setClientRequirements(rs.getString(15));
                p.setFesiability(rs.getString(16));
                p.setFesiabilityFile(rs.getString(17));
                p.setFSI(rs.getString(18));
                p.setFSIFile(rs.getString(19));
                p.setProjectCategory(rs.getString(20));
                p.setCountry(rs.getString(21));
                p.setState(rs.getString(22));
                p.setCity(rs.getString(23));
                p.setEmail_Id_Project(rs.getString(24));
             }
          
        }
            catch(Exception ex)
            {
               
          ex.printStackTrace();
            }
        return p;
     }
    
    public static Project getProjectByCustomerId(int id)
     {
        
         Project p =null;
         try
         {
             String query="Select * from customerproject where CustomerId="+id+";";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             if(rs.next())
             {
                p=new Project();
              
                p.setImage(rs.getString(2));
               
               p.setAdminEmail(rs.getString(4));
                p.setProjectName(rs.getString(5));
                p.setAddress(rs.getString(6));
                p.setPinCode(rs.getString(7));
                p.setBeginDate(rs.getString(8));
                p.setTargetEndDate(rs.getString(9));
                p.setFinalEndDate(rs.getString(10));
                p.setLumpsum_construction_cost(rs.getString(11));
                p.setWebsite(rs.getString(12));
                p.setLandDetails_SurveyPlan(rs.getString(13));
                p.setLandDetails_7_12Plan(rs.getString(14));
                p.setClientRequirements(rs.getString(15));
                p.setFesiability(rs.getString(16));
                p.setFesiabilityFile(rs.getString(17));
                p.setFSI(rs.getString(18));
                p.setFSIFile(rs.getString(19));
                p.setProjectCategory(rs.getString(20));
                p.setCountry(rs.getString(21));
                p.setState(rs.getString(22));
                p.setCity(rs.getString(23));
                p.setEmail_Id_Project(rs.getString(24));
             }
          
        }
            catch(Exception ex)
            {
               
          ex.printStackTrace();
            }
        return p;
     }
    
    
    public static ArrayList<Project> getAllProject()
     {
         
        ArrayList<Project> list=new  ArrayList<Project>();
         try
         {
             String query="Select * from customerregistration";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
                 Project p=new Project();
                 p.setImage(rs.getString(2));
                p.setProjectName(rs.getString(3));
                p.setAddress(rs.getString(4));
                p.setBeginDate(rs.getString(5));
                p.setTargetEndDate(rs.getString(6));
                p.setFinalEndDate(rs.getString(7));
                p.setLumpsum_construction_cost(rs.getString(8));
                p.setWebsite(rs.getString(9));
                p.setLandDetails_SurveyPlan(rs.getString(10));
                p.setLandDetails_7_12Plan(rs.getString(11));
                p.setClientRequirements(rs.getString(12));
                p.setFesiability(rs.getString(13));
                p.setFSI(rs.getString(14));
                p.setCountry(rs.getString(15));
                p.setState(rs.getString(16));
                p.setCity(rs.getString(17));
                p.setEmail_Id_Project(rs.getString(17));
                list.add(p);
               p=null;
             }
         }
            catch(Exception ex)
            {
                
          ex.printStackTrace();
            }
       
       return list;
        
     }    
             
public static ArrayList<Project> getAllProjectByCustomer(int CustId)
     {
         
        ArrayList<Project> list=new  ArrayList<Project>();
         try
         {
             String query="Select * from customerproject where CustomerId="+CustId+";";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
                 Project p=new Project();
                   p.setImage(rs.getString(2));
               
               p.setAdminEmail(rs.getString(4));
                p.setProjectName(rs.getString(5));
                p.setAddress(rs.getString(6));
                p.setPinCode(rs.getString(7));
                p.setBeginDate(rs.getString(8));
                p.setTargetEndDate(rs.getString(9));
                p.setFinalEndDate(rs.getString(10));
                p.setLumpsum_construction_cost(rs.getString(11));
                p.setWebsite(rs.getString(12));
                p.setLandDetails_SurveyPlan(rs.getString(13));
                p.setLandDetails_7_12Plan(rs.getString(14));
                p.setClientRequirements(rs.getString(15));
                p.setFesiability(rs.getString(16));
                p.setFesiabilityFile(rs.getString(17));
                p.setFSI(rs.getString(18));
                p.setFSIFile(rs.getString(19));
                p.setProjectCategory(rs.getString(20));
                p.setCountry(rs.getString(21));
                p.setState(rs.getString(22));
                p.setCity(rs.getString(23));
                p.setEmail_Id_Project(rs.getString(24));
                p.setProjectStatus(rs.getString(25));
                p.setPaymentStatus(rs.getString(26));
                list.add(p);
               p=null;
             }
              
          
        }
            catch(Exception ex)
            {
                
          ex.printStackTrace();
            }
       
       return list;
        
     } 
     
public static ArrayList<Project> getAllProjectByAdminEmailId(String Email)
     {
         
        ArrayList<Project> list=new  ArrayList<Project>();
         try
         {
             String query="Select * from customerproject where AdminEmail='"+Email+"';";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
                 Project p=new Project();
                   p.setImage(rs.getString(2));
              p.setId(rs.getInt(3));
               p.setAdminEmail(rs.getString(4));
                p.setProjectName(rs.getString(5));
                p.setAddress(rs.getString(6));
                p.setPinCode(rs.getString(7));
                p.setBeginDate(rs.getString(8));
                p.setTargetEndDate(rs.getString(9));
                p.setFinalEndDate(rs.getString(10));
                p.setLumpsum_construction_cost(rs.getString(11));
                p.setWebsite(rs.getString(12));
                p.setLandDetails_SurveyPlan(rs.getString(13));
                p.setLandDetails_7_12Plan(rs.getString(14));
                p.setClientRequirements(rs.getString(15));
                p.setFesiability(rs.getString(16));
                p.setFesiabilityFile(rs.getString(17));
                p.setFSI(rs.getString(18));
                p.setFSIFile(rs.getString(19));
                p.setProjectCategory(rs.getString(20));
                p.setCountry(rs.getString(21));
                p.setState(rs.getString(22));
                p.setCity(rs.getString(23));
                p.setEmail_Id_Project(rs.getString(24));
                p.setProjectStatus(rs.getString(25));
                p.setPaymentStatus(rs.getString(26));
                list.add(p);
               p=null;
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
             String query="Select id from customerproject where Email='"+email+"';";
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
    
      public static int getIdByAdminEmail(String email)
     {
        
        int id=0;
         try
         {
             String query="Select CustomerId from customerproject where AdminEmail='"+email+"';";
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

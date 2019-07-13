/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package myproject;

import java.sql.*;

/**
 *
 * @author Admin
 */
public class InformationWorker {
    
    public static String addFeedback(Information Inf) throws SQLException
     {
          String result="";
         try
         {
             String query="Insert into Feedback(Name,Email,Feedback) values(?,?,?);";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
               
                pstmt.setString(1,Inf.getName());
                 pstmt.setString(2,Inf.getEmail());
                  pstmt.setString(3,Inf.getFeedback());
                 
                   
               
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
    public static String addProjectPics(Information Inf) throws SQLException
     {
          String result="";
         try
         {
             String query="Insert into galleryimages(Description,image1,image2,image3,image4,image5) values(?,?,?,?,?,?);";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
               
                pstmt.setString(1,Inf.getDescription());
                pstmt.setString(2,Inf.getImage());
                pstmt.setString(3,Inf.getImage());
                pstmt.setString(4,Inf.getImage());
                pstmt.setString(5,Inf.getImage());
                pstmt.setString(6,Inf.getImage());
                
             
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
  
    public static String addDescription(Information Inf) throws SQLException
     {
          String rs="";
         try
         {
             String query="Insert into gallery (Description) values(?);";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
               
                pstmt.setString(1,Inf.getDescription());
               
             int i=pstmt.executeUpdate();
             if(i==1)
             {
                 rs=Result.SUCCESS;
                 
             }
             else
             {
                 rs=Result.FAILURE;
                 
             }
             DatabaseConnector.close();
            
         }
         catch(Exception ex)
         {
          rs=Result.PROBLEM;
          ex.printStackTrace();
         }
         return rs;
     }
  
    
  public static String addAboutUs(Information Inf) throws SQLException
     {
          String result="";
         try
         {
             String query="Insert into AboutUs (AboutInfo;) values (?);";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
               
                pstmt.setString(1,Inf.getAboutUs());
               
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
    


public static String addLatestNews(Information Inf) throws SQLException
     {
          String result="";
         try
         {
             String query="Insert into latestNews (LatestNews,Date) values (?,?);";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
               
                pstmt.setString(1,Inf.getLatestNews());
               pstmt.setString(2,Inf.getDate());
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
    
 public static String updateAboutUs(Information Inf) throws SQLException 
     {
         String result="";
         try
         {
             String query="Update AboutUs set AboutInfo where id=?;";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
                pstmt.setString(1,Inf.getAboutUs());
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
    public static String updateOurBusiness(Information Inf) throws SQLException 
     {
         String result="";
         try
         {
             String query="Update OurBusiness set OurBusiness=? where Id=1;";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
                pstmt.setString(1,Inf.getOurBusiness());
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
 public static String updateLatestNews(Information Inf) throws SQLException 
     {
         String result="";
         try
         {
             String query="Update LatestNews set LatestInfo where cust_id=?;";
             PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
                pstmt.setString(1,Inf.getLatestNews());
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


}

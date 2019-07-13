/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package myproject;

/**
 *
 * @author Admin
 */
import java.sql.*;
import java.util.*;
public class MultipleImageWorker 
{
    public static String addMultipleImg(MultipleImage b)

	{

	String result="";

	try

	{
                        
	String query="update galleryimages set img1=?,img2=?,img3=?,img4=? where Id=?;";

	PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);

	pstmt.setString(1,b.getImg1());
	pstmt.setString(2,b.getImg2());
	pstmt.setString(3,b.getImg3());
        pstmt.setString(4,b.getImg4());
        pstmt.setInt(5,b.getId());
        
	int i=pstmt.executeUpdate();				
	if(i==1)
	{
	result=Result.SUCCESS;
	}

	else
	{
	   result=Result.FAILURE;
	}

	}

	catch(Exception e)

	{

	result=Result.PROBLEM;

	e.printStackTrace();

	}

	return result;

	}

//----------add Description-------------
    
  public static String addDescriptionImg(MultipleImage b)

	{

	String result="";

	try

	{

	String query="insert into galleryimages(ProjectName,Description,ProjectCategory,Location) values(?,?,?,?);";

	PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);

	
        pstmt.setString(1,b.getProjectName());
        pstmt.setString(2,b.getDescription());
        pstmt.setString(3,b.getProjectCategory());
        pstmt.setString(4,b.getLocation());
        
	int i=pstmt.executeUpdate();				
	if(i==1)
	{
	result=Result.SUCCESS;
	}

	else
	{
	   result=Result.FAILURE;
	}

	}

	catch(Exception e)

	{

	result=Result.PROBLEM;

	e.printStackTrace();

	}

	return result;

	}
 //--------------------------------------
  
  
  
  
//--------------------------UPDATE----------------------

	public static String updateMultipleImg(MultipleImage b)

	{

	String result="";

	try

	{

	String query="update galleryimages set img1=?,img2=?,img3=? where Id=?;";

	PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);

	pstmt.setString(1,b.getImg1());

	pstmt.setString(2,b.getImg2());

	pstmt.setString(3,b.getImg3());

	int i=pstmt.executeUpdate();

	if(i==1)
	{
	result=Result.SUCCESS;
	}

	else
	{
	result=Result.FAILURE;
	}

	}

	catch(Exception e)

	{

	result=Result.PROBLEM;

	e.printStackTrace();

	}

	return result;

	}


//--------------------------DELETE----------------------

	public static String deleteMultipleImg(int id)
	{
	String result="";
	try
	{
	String query="delete from galleryimages where Id=?;";

	PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);

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

	}

	catch(Exception e)

	{

	result=Result.PROBLEM;

	e.printStackTrace();

	}

	return result;

	}
//--------------------------SELECT----------------------

	public static MultipleImage getMultipleImgById(int id)
	{
	MultipleImage b=null;
	try
	{

	String query="select * from galleryimages where Id="+id+";";

	Statement stmt=DatabaseConnector.getStatement();

	ResultSet rs=stmt.executeQuery(query);

	if(rs.next())

	{

	b=new MultipleImage();

	b.setId(rs.getInt(1));
	b.setImg1(rs.getString(2));
	b.setImg2(rs.getString(3));
	b.setImg3(rs.getString(4));
	}

	}

	catch(Exception e)

	{

	e.printStackTrace();

	}

	return b;

	}

        
        public static ArrayList<MultipleImage> getAllImages()
     {
         
        ArrayList<MultipleImage> list=new  ArrayList<MultipleImage>();
         try
         {
             String query="Select * from galleryimages";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
                MultipleImage m =new MultipleImage();
       
                m.setId(rs.getInt(1));
                m.setImg1(rs.getString(2));
                m.setImg2(rs.getString(3));
                m.setImg3(rs.getString(4));
                m.setImg4(rs.getString(5));
                m.setProjectName(rs.getString(6));
                m.setDescription(rs.getString(7));
                m.setProjectCategory(rs.getString(8));
                m.setLocation(rs.getString(9));
                
                list.add(m);
               m=null;
             }
              
          
        }
            catch(Exception ex)
            {
                
          ex.printStackTrace();
            }
       
       return list;
        
     } 
        //get3fromgallery
         
    //get ID by projectname
      
        public static int getIdByProjectName(String ProjectName)
     {
        
        int id=0;
         try
         {
             String query="Select id from galleryimages where ProjectName='"+ProjectName+"';";
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
     
     //Portfolio---------------------------------------------------------------------------------------------------
        //Bunglow
         public static ArrayList<MultipleImage> getAllBunglowImages()
     {
         
        ArrayList<MultipleImage> list=new  ArrayList<MultipleImage>();
         try
         {
             String query="Select * from galleryimages where ProjectCategory='Bunglow';";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
                MultipleImage m =new MultipleImage();
       
                m.setId(rs.getInt(1));
                m.setImg1(rs.getString(2));
                m.setImg2(rs.getString(3));
                m.setImg3(rs.getString(4));
                m.setImg4(rs.getString(5));
                m.setProjectName(rs.getString(6));
                m.setDescription(rs.getString(7));
                m.setProjectCategory(rs.getString(8));
                m.setLocation(rs.getString(9));
                
                list.add(m);
               m=null;
             }
              
          
        }
            catch(Exception ex)
            {
                
          ex.printStackTrace();
            }
       
       return list;
        
     } 
    //Financial Company  
      public static ArrayList<MultipleImage> getAllFinancialCompanyImages()
     {
         
        ArrayList<MultipleImage> list=new  ArrayList<MultipleImage>();
         try
         {
             String query="Select * from galleryimages where ProjectCategory='Financial_Company';";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
                MultipleImage m =new MultipleImage();
       
                m.setId(rs.getInt(1));
                m.setImg1(rs.getString(2));
                m.setImg2(rs.getString(3));
                m.setImg3(rs.getString(4));
                m.setImg4(rs.getString(5));
                m.setProjectName(rs.getString(6));
                m.setDescription(rs.getString(7));
                m.setProjectCategory(rs.getString(8));
                m.setLocation(rs.getString(9));
                
                list.add(m);
               m=null;
             }
              
          
        }
            catch(Exception ex)
            {
                
          ex.printStackTrace();
            }
       
       return list;
        
     }     
//resident
    public static ArrayList<MultipleImage> getAllResidentImages()
     {
         
        ArrayList<MultipleImage> list=new  ArrayList<MultipleImage>();
         try
         {
             String query="Select * from galleryimages where ProjectCategory='resident';";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
                MultipleImage m =new MultipleImage();
       
                m.setId(rs.getInt(1));
                m.setImg1(rs.getString(2));
                m.setImg2(rs.getString(3));
                m.setImg3(rs.getString(4));
                m.setImg4(rs.getString(5));
                m.setProjectName(rs.getString(6));
                m.setDescription(rs.getString(7));
                m.setProjectCategory(rs.getString(8));
                m.setLocation(rs.getString(9));
                
                list.add(m);
               m=null;
             }
              
          
        }
            catch(Exception ex)
            {
                
          ex.printStackTrace();
            }
       
       return list;
        
     }        
//Industry
     public static ArrayList<MultipleImage> getAllIndustryImages()
     {
         
        ArrayList<MultipleImage> list=new  ArrayList<MultipleImage>();
         try
         {
             String query="Select * from galleryimages where ProjectCategory='Industry';";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
                MultipleImage m =new MultipleImage();
       
                m.setId(rs.getInt(1));
                m.setImg1(rs.getString(2));
                m.setImg2(rs.getString(3));
                m.setImg3(rs.getString(4));
                m.setImg4(rs.getString(5));
                m.setProjectName(rs.getString(6));
                m.setDescription(rs.getString(7));
                m.setProjectCategory(rs.getString(8));
                m.setLocation(rs.getString(9));
                
                list.add(m);
               m=null;
             }
              
          
        }
            catch(Exception ex)
            {
                
          ex.printStackTrace();
            }
       
       return list;
        
     }        
     //Temple
     public static ArrayList<MultipleImage> getAlltempleImages()
     {
         
        ArrayList<MultipleImage> list=new  ArrayList<MultipleImage>();
         try
         {
             String query="Select * from galleryimages where ProjectCategory='temple';";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
                MultipleImage m =new MultipleImage();
       
                m.setId(rs.getInt(1));
                m.setImg1(rs.getString(2));
                m.setImg2(rs.getString(3));
                m.setImg3(rs.getString(4));
                m.setImg4(rs.getString(5));
                m.setProjectName(rs.getString(6));
                m.setDescription(rs.getString(7));
                m.setProjectCategory(rs.getString(8));
                m.setLocation(rs.getString(9));
                
                list.add(m);
               m=null;
             }
              
          
        }
            catch(Exception ex)
            {
                
          ex.printStackTrace();
            }
       
       return list;
        
     }        
     //Garden
       public static ArrayList<MultipleImage> getAllGardenImages()
     {
         
        ArrayList<MultipleImage> list=new  ArrayList<MultipleImage>();
         try
         {
             String query="Select * from galleryimages where ProjectCategory='Garden';";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
                MultipleImage m =new MultipleImage();
       
                m.setId(rs.getInt(1));
                m.setImg1(rs.getString(2));
                m.setImg2(rs.getString(3));
                m.setImg3(rs.getString(4));
                m.setImg4(rs.getString(5));
                m.setProjectName(rs.getString(6));
                m.setDescription(rs.getString(7));
                m.setProjectCategory(rs.getString(8));
                m.setLocation(rs.getString(9));
                
                list.add(m);
               m=null;
             }
              
          
        }
            catch(Exception ex)
            {
                
          ex.printStackTrace();
            }
       
       return list;
        
     }        
//interior
       public static ArrayList<MultipleImage> getAllinteriorImages()
     {
         
        ArrayList<MultipleImage> list=new  ArrayList<MultipleImage>();
         try
         {
             String query="Select * from galleryimages where ProjectCategory='Interior';";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
                MultipleImage m =new MultipleImage();
       
                m.setId(rs.getInt(1));
                m.setImg1(rs.getString(2));
                m.setImg2(rs.getString(3));
                m.setImg3(rs.getString(4));
                m.setImg4(rs.getString(5));
                m.setProjectName(rs.getString(6));
                m.setDescription(rs.getString(7));
                m.setProjectCategory(rs.getString(8));
                m.setLocation(rs.getString(9));
                
                list.add(m);
               m=null;
             }
              
          
        }
            catch(Exception ex)
            {
                
          ex.printStackTrace();
            }
       
       return list;
        
     } 
       //Hospitality
public static ArrayList<MultipleImage> getAllHospitalityImages()
     {
         
        ArrayList<MultipleImage> list=new  ArrayList<MultipleImage>();
         try
         {
             String query="Select * from galleryimages where ProjectCategory='Hospitality';";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
                MultipleImage m =new MultipleImage();
       
                m.setId(rs.getInt(1));
                m.setImg1(rs.getString(2));
                m.setImg2(rs.getString(3));
                m.setImg3(rs.getString(4));
                m.setImg4(rs.getString(5));
                m.setProjectName(rs.getString(6));
                m.setDescription(rs.getString(7));
                m.setProjectCategory(rs.getString(8));
                m.setLocation(rs.getString(9));
                
                list.add(m);
               m=null;
             }
              
          
        }
            catch(Exception ex)
            {
                
          ex.printStackTrace();
            }
       
       return list;
        
     } 
//IT company
public static ArrayList<MultipleImage> getITCompanyImages()
     {
         
        ArrayList<MultipleImage> list=new  ArrayList<MultipleImage>();
         try
         {
             String query="Select * from galleryimages where ProjectCategory='IT_company';";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
                MultipleImage m =new MultipleImage();
       
                m.setId(rs.getInt(1));
                m.setImg1(rs.getString(2));
                m.setImg2(rs.getString(3));
                m.setImg3(rs.getString(4));
                m.setImg4(rs.getString(5));
                m.setProjectName(rs.getString(6));
                m.setDescription(rs.getString(7));
                m.setProjectCategory(rs.getString(8));
                m.setLocation(rs.getString(9));
                
                list.add(m);
               m=null;
             }
              
          
        }
            catch(Exception ex)
            {
                
          ex.printStackTrace();
            }
       
       return list;
        
     } 
//House
public static ArrayList<MultipleImage> getAllHouseImages()
     {
         
        ArrayList<MultipleImage> list=new  ArrayList<MultipleImage>();
         try
         {
             String query="Select * from galleryimages where ProjectCategory='House';";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
                MultipleImage m =new MultipleImage();
       
                m.setId(rs.getInt(1));
                m.setImg1(rs.getString(2));
                m.setImg2(rs.getString(3));
                m.setImg3(rs.getString(4));
                m.setImg4(rs.getString(5));
                m.setProjectName(rs.getString(6));
                m.setDescription(rs.getString(7));
                m.setProjectCategory(rs.getString(8));
                m.setLocation(rs.getString(9));
                
                list.add(m);
               m=null;
             }
              
          
        }
            catch(Exception ex)
            {
                
          ex.printStackTrace();
            }
       
       return list;
        
     } 
//Landscape
public static ArrayList<MultipleImage> getAllLandscapeImages()
     {
         
        ArrayList<MultipleImage> list=new  ArrayList<MultipleImage>();
         try
         {
             String query="Select * from galleryimages where ProjectCategory='Landscape';";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
                MultipleImage m =new MultipleImage();
       
                m.setId(rs.getInt(1));
                m.setImg1(rs.getString(2));
                m.setImg2(rs.getString(3));
                m.setImg3(rs.getString(4));
                m.setImg4(rs.getString(5));
                m.setProjectName(rs.getString(6));
                m.setDescription(rs.getString(7));
                m.setProjectCategory(rs.getString(8));
                m.setLocation(rs.getString(9));
                
                list.add(m);
               m=null;
             }
              
          
        }
            catch(Exception ex)
            {
                
          ex.printStackTrace();
            }
       
       return list;
        
     } 

}



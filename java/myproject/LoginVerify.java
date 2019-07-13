/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package myproject;

import java.sql.*;
public class LoginVerify 
{
    
public static boolean validate(LoginMethod bean){  
boolean status=false;  
try{   
   PreparedStatement pstmt = DatabaseConnector.getPreparedStatement("select * from CustomerLogin where username=? and password=?");            

  
pstmt.setString(1,bean.getUsername());  
pstmt.setString(2, bean.getPassword());  
              
ResultSet rs=pstmt.executeQuery();  
status=rs.next();  
              
}catch(Exception e){}   
  
return status;  
  
}   
    
    
    
}

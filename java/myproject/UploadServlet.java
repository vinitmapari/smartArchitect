/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package myproject;

import java.io.File;
import javax.servlet.*;
import javax.servlet.http.*;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.Part;
import com.oreilly.servlet.multipart.FilePart;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UploadServlet extends HttpServlet 
{

    private String fileSavePath;
    private static final String UPLOAD_DIRECTORY = "Upload";

    public void init() 
    {
        fileSavePath = getServletContext().getRealPath("/") + File.separator + UPLOAD_DIRECTORY;/*save uploaded files to a 'Upload' directory in the web app*/
        if (!(new File(fileSavePath)).exists()) {
            (new File(fileSavePath)).mkdir();    // creates the directory if it does not exist        
     }
 }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
        String resp = "";
        int i = 1;
        resp += "<br>Here is information about uploaded files.<br>";
        try {
            MultipartParser parser = new MultipartParser(request, 1024 * 1024 * 1024);  /* file limit size of 1GB*/
            Part _part;
            while ((_part = parser.readNextPart()) != null) 
            {
                if (_part.isFile())
                {
                    FilePart fPart = (FilePart) _part;  // get some info about the file
                    String Images = fPart.getFilePath();
                   String Description=request.getParameter("txtDescription");
                   Information Inf=new Information();
                         Inf.setImage(Images);
                         Inf.setDescription(Description);
                         
                          String result="";
                    try {
                        result = InformationWorker.addProjectPics(Inf);
                    } catch (SQLException ex) {
                        Logger.getLogger(UploadServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                          if(result.equals("Success")&&Images != null)
                        {
                                long fileSize = fPart.writeTo(new File(fileSavePath));
                                resp += i++ + ". " + fPart.getFilePath() + "[" + fileSize / 1024 + " KB]<br>";
                                response.sendRedirect("Gallery.jsp");
                        }
                    else
                        {
                            resp = "<br>The user did not upload a file for this part.";
                            response.sendRedirect("Feedback.jsp");
                        }
                   
                }
            }// end while 
        } 
        catch (java.io.IOException ioe) {
            resp = ioe.getMessage();
        }
        request.setAttribute("message", resp);
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
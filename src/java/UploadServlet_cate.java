/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import java.sql.*;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Dell
 */
public class UploadServlet_cate extends HttpServlet 
{
 private static final long serialVersionUID = 1L;
String fileName=null;
String cat_id=null;
    private static final String DATA_DIRECTORY = "image_cat";
    private static final int MAX_MEMORY_SIZE = 1024 * 1024 * 2;
    private static final int MAX_REQUEST_SIZE = 1024 * 1024;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Check that we have a file upload request
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        PrintWriter out=response.getWriter();
        if (!isMultipart)
        {
            return;
        }

        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // Sets the size threshold beyond which files are written directly to
        // disk.
        factory.setSizeThreshold(MAX_MEMORY_SIZE);

        // Sets the directory used to temporarily store files that are larger
        // than the configured size threshold. We use temporary directory for
        // java
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

        // constructs the folder where uploaded file will be stored
        String uploadFolder = getServletContext().getRealPath("")
                + File.separator + DATA_DIRECTORY;

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        // Set overall request size constraint
        upload.setSizeMax(MAX_REQUEST_SIZE);

        try {
            // Parse the request
            List items = upload.parseRequest(request);
            Iterator iter = items.iterator();
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();

                if (!item.isFormField()) 
                {
                    fileName = new File(item.getName()).getName();
                    String filePath = uploadFolder + File.separator + fileName;
                    File uploadedFile = new File(filePath);
                    out.println(filePath);
                    // saves the file to upload directory
                    item.write(uploadedFile);
                }
            }
              Connection con=null;
              Statement st=null;
              Class.forName("com.mysql.jdbc.Driver");   
              con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
              st=con.createStatement(); 
              HttpSession ses=request.getSession();
             cat_id=ses.getAttribute("ucat_id").toString();
             int i=st.executeUpdate("update category set image_name='"+fileName+"' where cat_id='"+cat_id+"'");
             if(i>0)
             {
                 ses.removeAttribute("ucat_id");
                 response.sendRedirect("admin/category.jsp");
             }
             else
             {
                 response.sendRedirect("Not Upload");
             }
            // code for Update

        } catch (FileUploadException ex) {
            throw new ServletException(ex);
        } catch (Exception ex) {
            throw new ServletException(ex);
        }

    }
    
}

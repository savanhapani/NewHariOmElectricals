<%-- 
    Document   : delete_pro
    Created on : Dec 16, 2017, 5:16:08 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%

        String acid=null;
        acid=request.getParameter("acid");
                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                               
                                
                                try
                                {
                                    Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    int i=st.executeUpdate("delete from add_to_cart where acid='"+acid+"'");
                                    if(i>0)
                                            response.sendRedirect("view_cart.jsp");
                                    else
                                        out.println("Record is not Delete");
                                }
                                catch(Exception e)
                                {
                                    
                                }
                                
        

%>
    </body>
</html>

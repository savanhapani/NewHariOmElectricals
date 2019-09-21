<%-- 
    Document   : setting
    Created on : Dec 7, 2017, 6:08:15 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page autoFlush="true"  buffer="100kb"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <jsp:include page="../admin/include/css_data.jsp"></jsp:include>
        <jsp:include page="../admin/include/header1.jsp"></jsp:include>
        <%--<jsp:include page="include/menu.jsp"></jsp:include>--%>
        <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Change Password....?</h3>  
			<div class="login-body">
                            <form action="setting.jsp" method="post">
					<input type="password" class="user" name="sepassword" placeholder="New password" required="">
					<input type="password" name="senewpassword" class="lock" placeholder="Confirm password" required="">
                                        <input type="submit" value="Update" name="b1">
					
				</form>
       <%
                         String username=null;
                         username=request.getParameter("username");
                          if(username!=null)
                              {
                                session.setAttribute("username",username);
                                 }
        
                 
                                Connection con=null;
                                Statement st=null;
                             
                                String npass=null,cpss=null,action=null;
                              try
                                {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                        npass=request.getParameter("sepassword");
                                        cpss=request.getParameter("senewpassword");
                                        
                                        if(npass.equals(cpss))
                                        {
                                            //out.println("1--->"+npass+"2--->"+cpss);
                                            int i=st.executeUpdate("update admin set password='"+npass+"'");
                                            if(i>0)
                                            {
                                                    session.removeAttribute("username");
                                                    response.sendRedirect("login.jsp"); 
                                                //out.println("Password is Updated");
                                            }
                                            else
                                            {
                                                out.println("Not Updated");
                                            }
                                        }
                                        else
                                        {
                                            out.println("Confirm Password is not Match");
                                        }
                                        
                                        
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is"+e);
                                }
                                  %>
        
		
                        </div>  
                        
			
		</div>
	</div>
        <jsp:include page="../admin/include/js_data.jsp"></jsp:include>
    </body>
</html>


<%-- 
    Document   : setting
    Created on : Dec 7, 2017, 6:06:42 PM
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
         <jsp:include page="../customer/include/css_data.jsp"></jsp:include>
        <jsp:include page="../customer/include/header1.jsp"></jsp:include>
        <%--<jsp:include page="include/menu.jsp"></jsp:include>--%>
        <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Change Password...?</h3>  
			<div class="login-body">
                            <form action="setting.jsp" method="post">
					<input type="password" class="user" name="sepassword" placeholder="new password" required="">
					<input type="password" name="senewpassword" class="lock" placeholder="confirm password" required="">
                                        <input type="submit" value="update" name="b1">
					
				</form>
                            
                             <%
                         String cust_id=null;
                         cust_id=request.getParameter("cust_id");
                          if(cust_id!=null)
                              {
                                session.setAttribute("cust_id",cust_id);
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
                                  
                                            int i=st.executeUpdate("update customer set cust_password='"+npass+"' where cust_id='"+session.getAttribute("cid") +"'");
                                            if(i>0)
                                            {
                                                    session.removeAttribute("cid");
                                                    out.println("<script> alert('Sucessfully Changed Password');</script>");
                                            
                                            }
                                            else
                                            {
                                                out.println("<script> alert('Not Changed Password');</script>");
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
                                  <jsp:include page="../customer/include/footer.jsp"></jsp:include>
        <jsp:include page="../customer/include/js_data.jsp"></jsp:include>
    </body>
</html>

<%-- 
    Document   : product
    Created on : Dec 16, 2017, 3:17:29 PM
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
        <jsp:include page="../employee/include/css_data.jsp"></jsp:include>
        <jsp:include page="../employee/include/header1.jsp"></jsp:include>
           <%
            String sid=null;
            sid=request.getParameter("sid");
            if(sid!=null)
            {
                session.setAttribute("sid",sid);
            }
        %>
         <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Serice Reply</h3>  
			<div class="login-body">
                            <form action="reply.jsp" method="post">
					
					<input type="text" name="reply" class="lock" placeholder="Enter Reply" required="">
                                        
                                        
                                        <input type="submit" value="Submit" name="b1">
					
				</form>
                            <%
                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String reply=null,action=null;
                                
                                try
                                {
                                  Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                        reply=request.getParameter("reply");
                                        
                                        int i=st.executeUpdate("update service_detail set emp_reply='"+reply+"' where sid='"+session.getAttribute("sid") +"'");
                                        if(i>0)
                                            response.sendRedirect("service.jsp");
                                        else
                                            out.println("Reply is not Send");
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is"+e);
                                }
                            %>
			</div>  
                        
                        <br/><br/>
                      
		</div>
	</div>
        <jsp:include page="../admin/include/js_data.jsp"></jsp:include>
    </body>
</html>

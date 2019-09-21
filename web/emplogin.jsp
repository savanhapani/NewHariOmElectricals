<%-- 
    Document   : login
    Created on : Nov 12, 2017, 12:48:41 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page  autoFlush="true" buffer="100kb" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="include/css_data.jsp"></jsp:include>
        <jsp:include page="include/header1.jsp"></jsp:include>
        <jsp:include page="include/menu.jsp"></jsp:include>
        <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Employee Login</h3>  
			<div class="login-body">
                            <form action="emplogin.jsp" method="post">
					<input type="text" class="user" name="uname" placeholder="Enter your email" required="">
					<input type="password" name="pass" class="lock" placeholder="Password" required="">
                                        <input type="submit"  name="b1" value="Login">
					<div class="forgot-grid">
						<div class="clearfix"> </div>
                                                <h6>  <a href="empsignup.jsp">Sign Up Now »</a> </h6> 
					</div>
				</form>
                                <%
                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String uname=null,upass=null,dname=null,dpass=null,action=null,eid=null;
                                int flag=0;
                                
                                try
                                {
                                  Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                       uname=request.getParameter("uname");
                                       upass=request.getParameter("pass");
                                        
                                       rs=st.executeQuery("select *from employee");
                                       while(rs.next())
                                       {
                                           eid=rs.getString(1);
                                           dname=rs.getString(5);
                                           dpass=rs.getString(6);
                                            /*out.println("<br/>uname:- "+uname);
                                           out.println("<br/>upass:- "+upass);
                                           out.println("<br/>dname:- "+dname);
                                           out.println("<br/>dpass:- "+dpass);*/
                                           if((uname.equals(dname)) &&(upass.equals(dpass)))
                                           {
                                               flag=1;
                                               break;
                                           }
                                       }
                                       if(flag==1)
                                       {
                                           session.setAttribute("eid",eid);
                                          out.println("<script language=javascript> alert('Successfully Login');</script>");
                                          response.sendRedirect("employee/profile.jsp");
                                       }
                                       else
                                       {
                                           out.println("<script language=javascript> alert('Invalid User Name And Password');</script>");
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
                            <jsp:include page="include/footer.jsp"></jsp:include>
        <jsp:include page="include/js_data.jsp"></jsp:include>
    </body>
</html>

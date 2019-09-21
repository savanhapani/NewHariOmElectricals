<%-- 
    Document   : login
    Created on : Nov 12, 2017, 12:48:41 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page autoFlush="true"  buffer="10kb"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="../admin/include/css_data.jsp"></jsp:include>
        <%--<jsp:include page="include/header1.jsp"></jsp:include>--%>
        <%--<jsp:include page="include/menu.jsp"></jsp:include>--%>
        <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Admin Login</h3>  
			<div class="login-body">
                            <form action="login.jsp" method="post">
					<input type="text" class="user" name="uname" placeholder="Enter your email" required="">
					<input type="password" name="pass" class="lock" placeholder="Password" required="">
                                        <input type="submit" value="Login" name="b1">
					
				</form>
                              <%
            String username=null;
           username=request.getParameter("username");
            if(username!=null)
            {
                session.setAttribute("username",username);
            }
        %>
                            <%
                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String uname=null,upass=null,dname=null,dpass=null,action=null;
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
                                        
                                       rs=st.executeQuery("select *from admin");
                                       while(rs.next())
                                       {
                                           dname=rs.getString(1);
                                           dpass=rs.getString(2);
                                         /*  out.println("<br/>uname:- "+uname);
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
                                           session.setAttribute("admin", "admin");
                                          out.println("<script> alert('Sucessfully Login'); document.location.href='category.jsp';</script>");
                                       }
                                       else
                                       {
                                          out.println("<script> alert('Invalid User name and Password');</script>");
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

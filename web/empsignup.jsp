<%-- 
    Document   : login
    Created on : Nov 12, 2017, 12:48:41 PM
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
        <jsp:include page="include/css_data.jsp"></jsp:include>
        <jsp:include page="include/header1.jsp"></jsp:include>
        <jsp:include page="include/menu.jsp"></jsp:include>
        <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Create Your Account</h3>  
			<div class="login-body">
                            <form action="empsignup.jsp" method="post">
					<input type="text" class="user" name="cusname" placeholder="Enter Name" >
					<input type="text" name="cusaddress" class="lock" placeholder="Enter address" >
                                        <input type="text" name="cuscontect" class="lock" placeholder="Enter contect">
                                        <input type="text" name="cusemail" class="lock" placeholder="Enter Email">
                                        <input type="password" name="password" class="lock" placeholder="Enter password">
                                        <input type="submit" name="b1" value="Submit">	
				</form>
                               <%
                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String cname=null,caddress=null,cphone=null,cemail=null,cpassword=null,action=null;
                                try
                                {
                                  Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                        cname=request.getParameter("cusname");
                                        caddress=request.getParameter("cusaddress");
                                        cphone=request.getParameter("cuscontect");
                                        cemail=request.getParameter("cusemail");
                                        cpassword=request.getParameter("password");
                                        int i=st.executeUpdate("insert into employee(ename,eaddress,ephone,eemail,epassword)values('"+cname+"','"+caddress+"','"+cphone+"','"+cemail+"','"+cpassword+"')");
                                        
                                        //int i=1;
                                        if(i>0)
                                            out.println("<script> alert('Employee Created'); document.location.href='emplogin.jsp';</script>");
                                        else
                                             out.println("<script> alert('Employee Not Created');</script>");
                                        
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.println("record submited"+e);
                                }
                            %>
			</div>  
			<h6> <a href="signup.jsp">Sign Up Now »</a> </h6> 
			
		</div>
	</div>
    </body>
</html>

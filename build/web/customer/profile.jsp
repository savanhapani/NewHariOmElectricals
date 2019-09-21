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
           <%
        
            if(session.getAttribute("cid")==null)
            {
                out.println("<script> alert('You Must Be Login'); document.location.href='../login.jsp';</script>");
            }
        %>
        <%
            if(session.getAttribute("cid")==null)
            {
                response.sendRedirect("../login.jsp");
            }
            
             Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String cname=null,caddress=null,phone=null,email=null,action=null;
                                
                                try
                                {
                                    Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    rs=st.executeQuery("select *from customer where cust_id='"+session.getAttribute("cid") +"'");
                                    while(rs.next())
                                    {
                                        
                                        cname=rs.getString(2);
                                        caddress=rs.getString(3);
                                        email=rs.getString(5);
                                        phone=rs.getString(4);
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is:"+e);
                                }
        %>
        <jsp:include page="../customer/include/css_data.jsp"></jsp:include>
        <jsp:include page="../customer/include/header1.jsp"></jsp:include>
        <%--<jsp:include page="include/menu.jsp"></jsp:include>--%>
        <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">your profile
                     </h3>  
			<div class="login-body">
                            <form action="profile.jsp" method="post">
					<input value="<%=cname%>" type="text" class="user" name="cusname" placeholder="Enter Name" required="">
                                        <input value="<%= caddress%>" type="text" name="cusaddress"  placeholder="Enter address" required="">
                                        <input value="<%=phone%>"type="text" name="cuscontact"  placeholder="Enter contect" required="">
                                        <input value="<%=email%>" type="text" name="cusemail"  placeholder="Enter Email" required="">
                                        
                                        <input type="submit" name="b1" value="Update">
             <%
                              try
                                {
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                        cname=request.getParameter("cusname");
                                        caddress=request.getParameter("cusaddress");
                                        email=request.getParameter("cusemail");
                                        phone=request.getParameter("cuscontact");
                                        
                                        
                                        int i=st.executeUpdate("update customer set cust_name='"+cname+"',cust_address='"+caddress+"',cust_phone='"+phone+"',cust_email='"+email+"' where cust_id='"+session.getAttribute("cid") +"'");
                                        if(i>0)
                                        {
                                            //session.removeAttribute("cid");
                                           response.sendRedirect("profile.jsp"); 
                                        }
                                        else
                                        {
                                            out.println("Not Updated");
                                        }
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is"+e);
                                }
                                  %>
                                        
                                        
                           
					
				</form>
                                       
			</div>  
                        
			
		</div>
	</div>
        <jsp:include page="../customer/include/footer.jsp"></jsp:include>
        <jsp:include page="../customer/include/js_data.jsp"></jsp:include>
    </body>
</html>

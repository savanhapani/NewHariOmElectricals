<%-- 
    Document   : profile
    Created on : Mar 9, 2018, 4:38:57 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>\
<%@page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
      <body>
          
        <%
          
             Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String ename=null,eaddress=null,phone=null,eemail=null,action=null;
                                
                                try
                                {
                                    Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    rs=st.executeQuery("select *from employee where eid='"+session.getAttribute("eid") +"'");
                                    while(rs.next())
                                    {
                                        
                                        ename=rs.getString(2);
                                       
                                        eaddress=rs.getString(3);
                                        eemail=rs.getString(5);
                                        phone=rs.getString(4);
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is:"+e);
                                }
        %>
        <jsp:include page="../employee/include/css_data.jsp"></jsp:include>
        <jsp:include page="../employee/include/header1.jsp"></jsp:include>
        <%--<jsp:include page="include/menu.jsp"></jsp:include>--%>
        <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">your profile
                     </h3>  
			<div class="login-body">
                            <form action="profile.jsp" method="post">
					<input value="<%=ename%>" type="text" class="user" name="cusname" placeholder="Enter Name" required="">
                                        <input value="<%= eaddress%>" type="text" name="cusaddress" class="lock" placeholder="Enter address" required="">
                                        <input value="<%=phone%> "type="text" name="cuscontact" class="lock" placeholder="Enter contect" required="">
                                        <input value="<%=eemail%> "type="text" name="cusemail" class="lock" placeholder="Enter Email" required="">
                                        
                                        <input type="submit" name="b1" value="Update">
             <%
                              try
                                {
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                        ename=request.getParameter("cusname");
                                        eaddress=request.getParameter("cusaddress");
                                        eemail=request.getParameter("cusemail");
                                        phone=request.getParameter("cuscontact");
                                        
                                        
                                        int i=st.executeUpdate("update employee set cust_name='"+ename+"',cust_address='"+eaddress+"',cust_phone='"+phone+"',cust_email='"+eemail+"' where cust_id='"+session.getAttribute("eid") +"'");
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
                                  <jsp:include page="../employee/include/footer.jsp"></jsp:include>
        <jsp:include page="../employee/include/js_data.jsp"></jsp:include>
    </body>
</html>

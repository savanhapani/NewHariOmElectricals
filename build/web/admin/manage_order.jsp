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
        <jsp:include page="../admin/include/css_data.jsp"></jsp:include>
        <jsp:include page="../admin/include/header1.jsp"></jsp:include>
           <%
            String o_id=null;
            o_id=request.getParameter("o_id");
            if(o_id!=null)
            {
                session.setAttribute("o_id",o_id);
            }
        %>
         <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Order Status</h3>  
			<div class="login-body">
                            <form action="manage_order.jsp" method="post">
					
                                        <select name="st" class="user" style=" padding: 0.9em 1em;
    width: 100%;
    color: #999;
   
    outline: none;
    border: 1px solid #E2DCDC;
    background: #FFFFFF;">
                                            <option value="Pendding">Pendding</option>
                                            <option value="On Process">On Process</option>
                                            <option value="Complete">Complete</option>
                                        </select>
                                <br/>
                                        
                                        <input type="submit" value="Submit" name="b1">
					
				</form>
                            <%
                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String sta=null,action=null;
                                
                                try
                                {
                                  Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                        sta=request.getParameter("st");
                                        int i=st.executeUpdate("update order_detail set status='"+sta+"' where o_id='"+session.getAttribute("o_id") +"'");
                                        if(i>0)
                                            out.println("<script> alert('Status is Updated'); document.location.href='order.jsp';</script>");
                                        else
                                             out.println("<script> alert('Status is Not Updated'); document.location.href='order.jsp';</script>");
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

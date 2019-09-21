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
            String p_id=null;
            p_id=request.getParameter("pid");
            if(p_id!=null)
            {
                session.setAttribute("p_id",p_id);
            }
              Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String pname=null,pdes=null,pprice=null,stock=null,simage=null,bimage=null,action=null;
                                
                                try
                                {
                                    Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    rs=st.executeQuery("select *from product_detail where pro_id='"+session.getAttribute("p_id") +"'");
                                    while(rs.next())
                                                                               {
                                        pname=rs.getString(2);
                                        pdes=rs.getString(3);
                                        pprice=rs.getString(4);
                                        stock=rs.getString(5);
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is:"+e);
                                }
        %>
         <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">product</h3>  
			<div class="login-body">
                            <form action="update_pro.jsp" method="post">
                                <input value="<%= pname%>" type="text" class="user" name="proname" placeholder="Enter product" required="">
					<input value="<%= pdes%>" type="text" name="prodes" class="lock" placeholder="Enter Description" required="">
                                        <input value="<%= pprice%>" type="text" class="user" name="proprice" placeholder="Enter price" required="">
                                        <input value="<%= stock%>" type="text" class="user" name="prostock" placeholder="Enter stock" required="">
                                       
                                        
                                        <input type="submit" value="Update" name="b1">
					
				</form>
                            <%
                                
                                try
                                {
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                        pname=request.getParameter("proname");
                                        pdes=request.getParameter("prodes");
                                        pprice=request.getParameter("proprice");
                                        stock=request.getParameter("prostock");
                                        
                                        
                                        int i=st.executeUpdate("update product_detail set pro_name='"+pname+"',pro_desc='"+pdes+"',pro_price='"+pprice+"',stock='"+stock+"' where pro_id='"+session.getAttribute("p_id") +"'");
                                        if(i>0)
                                        {
                                            session.removeAttribute("p_id");
                                           response.sendRedirect("product.jsp"); 
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
			</div>  
                        
                        <br/><br/>
                        
		</div>
	</div>
        <jsp:include page="../admin/include/js_data.jsp"></jsp:include>
    </body>
</html>

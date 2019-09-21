<%-- 
    Document   : login
    Created on : Nov 12, 2017, 12:48:41 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DateFormat" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>   <%
        
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
                                String cname=null,caddress=null,phone=null,action=null;
                                
                                try
                                {
                                    Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    
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
			<h3 class="w3ls-title w3ls-title1">Order Detail
                     </h3>  
			<div class="login-body">
                            <form action="order.jsp" method="post">
					<input  type="text" class="user" name="cusname" placeholder="Enter Name" required="">
                                        <input  type="text" name="cusaddress" class="lock" placeholder="Enter address" required="">
                                        <input type="text" name="cuscontact" class="lock" placeholder="Enter contect" required="">
                                        
                                        
                                        <input type="submit" name="b1" value="Submit">
             <%
                              try
                                {
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                        cname=request.getParameter("cusname");
                                        caddress=request.getParameter("cusaddress");
                                       
                                        phone=request.getParameter("cuscontact");
                                        String o_date=null;
				DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
				Date dateobj = new Date();
				o_date=df.format(dateobj).toString();

                                        int i=st.executeUpdate("insert into order_detail(name,address,phone,pid,pname,qty,rate,t_amount,o_date,cid)values('"+cname+"','"+caddress+"','"+phone+"','"+session.getAttribute("sbpid") +"','"+session.getAttribute("sbpname") +"','"+session.getAttribute("sbqty") +"','"+session.getAttribute("sbrate") +"','"+session.getAttribute("sbtamount") +"','"+o_date+"','"+session.getAttribute("cid") +"')");
                                        
                                        if(i>0)
                                        {
                                            int j=st.executeUpdate("delete from add_to_cart where cid='"+session.getAttribute("cid") +"'");
                                            out.println("<script> alert('Submit Your Order');</script>");
                                           // response.sendRedirect("profile.jsp"); 
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

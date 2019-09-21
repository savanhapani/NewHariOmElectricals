<%-- 
    Document   : product_detail
    Created on : Dec 29, 2017, 11:10:23 AM
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
            String sub_cat_id=null,sub_name=null;
            sub_cat_id=request.getParameter("subid");
            if(sub_cat_id!=null)
                session.setAttribute("sub_cat_id", sub_cat_id);
                                     Connection con=null;
                                    Statement st=null;
                                    ResultSet rs=null; 
                                        Class.forName("com.mysql.jdbc.Driver");   
                                        con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                        st=con.createStatement();
                                        rs=st.executeQuery("select sub_cat_name from sub_cat where sub_cat_id='"+session.getAttribute("sub_cat_id") +"'");
                                        while(rs.next())
                                         {
                                         sub_name=rs.getString(1);   
                                        }
                                        rs.close();
                                    
        %>
        <jsp:include page="../customer/include/css_data.jsp"></jsp:include>
        <jsp:include page="../customer/include/header1.jsp"></jsp:include>
        <%--<jsp:include page="include/menu.jsp"></jsp:include>--%>
        <div class="products" ">	 
		<div class="container">
			
				<!-- breadcrumbs --> 
				
				<div class="clearfix"> </div>
				<!-- //breadcrumbs -->
				<div class="product-top"  >
					<h4><%= sub_name%></h4>
					
					<div class="clearfix"> </div>
				</div>
				<div class="products-row">
					
                                            
                                            <%
                                     try
                                    {
                                        rs=st.executeQuery("select *from product_detail where sub_cat_id='"+session.getAttribute("sub_cat_id") +"'");
                                        while(rs.next())
                                       {        
                                               String subname=rs.getString(2);
                                            %>
						<div class="agile-products" style="margin: 10px;float: left;height:290px;">
							
							<a href="product_detail.jsp"><img width="150px" height="150px" src="../image_product/<%= rs.getString(6)%>" class="img-responsive" alt="img"></a>
							
                                                        <div class="agile-product-text">              
								<h5><a href="single.html" style="margin-left: 40px; margin-bottom: 300px"><%= subname%></a></h5> 
                                                                <h6 style="color: #F44336;"style="margin-left: 30px;"> Rs.<%= rs.getString(4)%> <a href="single_info.jsp?pid=<%= rs.getString(1)%>" style="color: #464646;">More Info</a></h6>
                                                                <h6 style="margin-left: 35px;"><a href="add_to_cart.jsp?pid=<%= rs.getString(1)%>" style="color: #f15cf1;">Add to Cart</h6>
							</div>
						</div> 
                                            <%
                                                                                       }
                                                                               }
                                            catch(Exception e)
                                            {
                                                
                                            }
                                            %>
					</div>
                                </div>
                        </div>
                </div>
        </div>
                        <jsp:include page="../customer/include/footer.jsp"></jsp:include>
        <jsp:include page="../customer/include/js_data.jsp"></jsp:include>
    </body>
</html>
    
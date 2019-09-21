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
            String pid=null,pname=null,des=null,price=null,image_name=null;
                      pid=request.getParameter("pid");
            //if(sub_cat_id!=null)
              //  session.setAttribute("sub_cat_id", sub_cat_id);
                                     Connection con=null;
                                    Statement st=null;
                                    ResultSet rs=null; 
                                        Class.forName("com.mysql.jdbc.Driver");   
                                        con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                        st=con.createStatement();
                                        rs=st.executeQuery("select *from product_detail where pro_id='"+pid+"'");
                                        while(rs.next())
                                        {
                                         pname=rs.getString(2); 
                                         des=rs.getString(3);
                                         price=rs.getString(4);
                                         image_name=rs.getString(6);
                                        }
                                        rs.close();
                                    
        %>
        <jsp:include page="../customer/include/css_data.jsp"></jsp:include>
        <jsp:include page="../customer/include/header1.jsp"></jsp:include>
        	<div class="products">	 
		<div class="container">  
			<div class="single-page">
				<div class="single-page-row" id="detail-21">
					<div class="col-md-6 single-top-left">	
						<div class="flexslider">
							<ul class="slides">
                                                            
									<div class="thumb-image detail_images"> <img src="../image_product/<%=image_name%>" data-imagezoom="true" class="img-responsive" alt=""> </div>
								</li>
								
								 
							</ul>
						</div>
					</div>
					<div class="col-md-6 single-top-right">
						<h3 class="item_name"><%= pname%></h3>
						<p><%= des%> </p>

						<div class="single-price">
							<ul>
								<li>Rs.<%= price%></li>  
								<li><del>$600</del></li> 
								<li><span class="w3off">10% OFF</span></li> 
								<li>Ends on: June,5th</li>
								<li><a href="add_to_cart.jsp?pid=<%= pid%>">Add to Cart</a></li>
							</ul>	
						</div> 
						<p class="single-price-text"> </p>
							<button class="w3ls-cart w3ls-cart-like"><i class="fa fa-heart-o" aria-hidden="true"></i> Add to Wishlist</button>
					</div>
				   <div class="clearfix"> </div>  
				</div>
				
			</div> 
        <jsp:include page="../customer/include/js_data.jsp"></jsp:include>
    </body>
</html>
    
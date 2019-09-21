<%-- 
    Document   : category
    Created on : Dec 7, 2017, 6:05:10 PM
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
            String cat_id=null,c_name=null;
            cat_id=request.getParameter("cid");
            if(cat_id!=null)
                session.setAttribute("cat_id", cat_id);
                                     Connection con=null;
                                    Statement st=null;
                                    ResultSet rs=null; 
                                        Class.forName("com.mysql.jdbc.Driver");   
                                        con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                        st=con.createStatement();
                                        rs=st.executeQuery("select cat_name from category where cat_id='"+session.getAttribute("cat_id") +"'");
                                        while(rs.next())
                                                                                       {
                                         c_name=rs.getString(1);   
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
					<h4><%= c_name%></h4>
					
					<div class="clearfix"> </div>
				</div>
				<div class="products-row">
					
                                            
                                            <%
                                     try
                                    {
                                        rs=st.executeQuery("select *from sub_cat where cat_id='"+session.getAttribute("cat_id") +"'");
                                        while(rs.next())
                                       {
                                               String cname=rs.getString(2);
                                            %>
						 <div class="agile-products" style="margin: 10px; float: left;height:250px;">
						
                                                        <a href="product_detail.jsp?subid=<%= rs.getString(1)%>"><img width="150px" height="150px" src="../image_subcat/<%= rs.getString(4)%>"  class="img-responsive" alt="img"></a>
							
                                                        <div class="agile-product-text">              
								 <h5><a href="product_detail.jsp?subid=<%= rs.getString(1)%>" style="margin-left: 20px; margin-bottom: 200px;"><%= cname%></a></h5>
					
								 
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
        <jsp:include page="../customer/include/js_data.jsp"></jsp:include>
    </body>
</html>

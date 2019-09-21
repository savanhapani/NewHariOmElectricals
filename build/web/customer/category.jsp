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
        
            if(session.getAttribute("cid")==null)
            {
                out.println("<script> alert('You Must Be Login'); document.location.href='../login.jsp';</script>");
            }
        %>
        <jsp:include page="../customer/include/css_data.jsp"></jsp:include>
        <jsp:include page="../customer/include/header1.jsp"></jsp:include>
        <%--<jsp:include page="include/menu.jsp"></jsp:include>--%>
        <div class="products" ">
		<div class="container">
			<div >
				<!-- breadcrumbs -->

				<div class="clearfix"> </div>
				<!-- //breadcrumbs -->
				<div class="product-top"  >
					<h4> Category</h4>

					<div class="clearfix"> </div>
				</div>
				<div class="products-row">
                                    <div  >

                                            <%
                                    Connection con=null;
                                    Statement st=null;
                                    ResultSet rs=null;
                                     try
                                    {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                        st=con.createStatement();
                                        rs=st.executeQuery("select *from category");
                                        while(rs.next())
                                       {
                                               String cname=rs.getString(2);
                                               String cid=rs.getString(1);
                                            %>
                                            <div class="agile-products" style="margin: 10px;float: left;height:250px;">

                                                <a href="sub_category.jsp?cid=<%= cid%>"><img width="150px" height="200px" src="../image_cat/<%= rs.getString(4)%>" class="img-responsive" alt="img"></a>

                                                        <div class="agile-product-text">
                                                            <h5><a href="sub_category.jsp?cid=<%= cid%>" style="margin-left: 20px; margin-bottom: 200px;"><%= cname%></a></h5>


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

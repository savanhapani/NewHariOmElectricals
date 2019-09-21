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
            
            if(session.getAttribute("admin")==null)
                               {
                response.sendRedirect("login.jsp");
            }
            String cat_id=null;
            cat_id=request.getParameter("cat_id");
            if(cat_id!=null)
            {
                session.setAttribute("cat_id",cat_id);
            }
            
        %>
        <jsp:include page="../admin/include/css_data.jsp"></jsp:include>
        <jsp:include page="../admin/include/header1.jsp"></jsp:include>
        <%--<jsp:include page="include/menu.jsp"></jsp:include>--%>
        <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Sub Category</h3>  
			<div class="login-body">
                            <form action="sub_category.jsp" method="post">
					<input type="text" class="user" name="scatname" placeholder="Enter Category" required="">
					<textarea name="catdes" style="    font-size: 1em;
    padding: 0.9em 1em;
    width: 100%;
    color: #999;
   
    outline: none;
    border: 1px solid #E2DCDC;
    background: #FFFFFF;" placeholder="Enter">
                                Enter Description</textarea>
                                        
                                        <input type="submit" value="Submit" name="b1">
					
				</form>
                            <%
                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String cname=null,cdes=null,action=null;
                                try
                                {
                                  Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                        cname=request.getParameter("scatname");
                                        cdes=request.getParameter("scatdes");
                                        int i=st.executeUpdate("insert into sub_cat(sub_cat_name,sub_cat_dess,cat_id)values('"+cname+"','"+cdes+"','"+session.getAttribute("cat_id") +"')");
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is"+e);
                                }
                            %>
			</div>  
                        
                        <br/><br/>
                        <table style="border-color: #0280e1; border-style: solid; margin-left: 100px;">
                            <tr>
                                <th style="width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;"></th>
                                <th style="width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;">Name</th>
                                <th style="width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;">Description</th>
                                <th style="width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Product</th>
                                <th style="width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Upload Image</th>
                            </tr>
                            <%
                                rs=st.executeQuery("select *from sub_cat where cat_id='"+session.getAttribute("cat_id") +"'");
                                while(rs.next())
                                {
                                    out.println("<tr>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;><img src=../image_subcat/"+rs.getString(4) +" width=50px height=50px></td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(2) +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(3) +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;><a href=product.jsp?scat_id="+rs.getString(1) +">Product</a></td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;><a href=upload_subcate.jsp?scat_id="+rs.getString(1) +">Upload Image</a></td>");
                                      out.println("</tr>");
                                }
                            %>
                        </table>
		</div>
	</div>
        <jsp:include page="../admin/include/js_data.jsp"></jsp:include>
    </body>
</html>

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
            String sub_cat_id=null;
            sub_cat_id=request.getParameter("scat_id");
            if(sub_cat_id!=null)
            {
                session.setAttribute("scat_id",sub_cat_id);
            }
        %>
         
        <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">product</h3>  
			<div class="login-body">
                            <form action="product.jsp" method="post">
					<input type="text" class="user" name="proname" placeholder="Enter product" required="">
					<textarea name="catdes" style="font-size: 1em;
    padding: 0.9em 1em;
    width: 100%;
    color: #999;
   
    outline: none;
    border: 1px solid #E2DCDC;
    background: #FFFFFF;" placeholder="Enter">
                                Enter Description</textarea>
                                        
                                        <input type="text" class="user" name="proprice" placeholder="Enter price" required="">
                                        <input type="text" class="user" name="prostock" placeholder="Enter stock" required="">
                                       
                                        
                                        <input type="submit" value="Submit" name="b1">
					
				</form>
                            <%
                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String pname=null,pdes=null,pprice=null,stock=null,simage=null,bimage=null,action=null;
                                
                                try
                                {
                                  Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                        pname=request.getParameter("proname");
                                        pdes=request.getParameter("prodes");
                                        pprice=request.getParameter("proprice");
                                        stock=request.getParameter("prostock");
                                        
                                        
                                        int i=st.executeUpdate("insert into product_detail(pro_name,pro_desc,pro_price,stock,sub_cat_id)values('"+pname+"','"+pdes+"','"+pprice+"','"+stock+"','"+session.getAttribute("scat_id") +"')");
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is"+e);
                                }
                            %>
			</div>  
                        
                        <br/><br/>
                        <table style="border-color: #0280e1; border-style: solid; margin-left:100px;">
                            <tr>
                                <th style="width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;"></th>
                                <th style="width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;">Name</th>
                                <th style="width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Description</th>
                                <th style="width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Price</th>
                                <th style="width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Stock</th>
                                
                                <th style="width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Delete</th>
                               <th style="width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Update</th>
                               <th style="width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Upload Image</th>
                            </tr>
                            <%
                                rs=st.executeQuery("select *from product_detail where sub_cat_id='"+session.getAttribute("scat_id") +"' ");
                                while(rs.next())
                                {
                                    out.println("<tr>");
                                     out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;><img src=../image_product/"+rs.getString(6) +" width=50px height=50px></td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(2) +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(3) +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(4) +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(5) +"</td>");
                                   
                                   out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;><a href=delete_pro.jsp?pid="+rs.getString(1) +">Delete</a></td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;><a href=update_pro.jsp?pid="+rs.getString(1) +">Update</a></td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;><a href=upload_product.jsp?up_id="+rs.getString(1) +">Upload Image</a></td>");
                                    out.println("</tr>");
                                }
                            %>
                        </table>
		</div>
	</div>
        <jsp:include page="../admin/include/js_data.jsp"></jsp:include>
    </body>
</html>

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
        %>
        <jsp:include page="../admin/include/css_data.jsp"></jsp:include>
        <jsp:include page="../admin/include/header1.jsp"></jsp:include>
        <%--<jsp:include page="include/menu.jsp"></jsp:include>--%>
        <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Feedback List</h3>  
			
                            <%
                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                
                                try
                                {
                                  Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is"+e);
                                }
                            %>
			
                        <br/><br/>
                        <table style="border-color: #0280e1; border-style: solid; margin-left: 350px;">
                            <tr>
                                  
                                <th style="width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;">Name</th>
                                <th style="width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Description</th>
                               
                            </tr>
                            <%
                                rs=st.executeQuery("select *from feedback_detail");
                                while(rs.next())
                                {
                                    out.println("<tr>");
                                    
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(2) +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(3) +"</td>");
                                    out.println("</tr>");
                                }
                            %>
                        </table>
		</div>
	</div>
                         
        <jsp:include page="../admin/include/js_data.jsp"></jsp:include>
    </body>
</html>

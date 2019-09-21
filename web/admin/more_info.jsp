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
			<h3 class="w3ls-title w3ls-title1">Order Detail</h3>  
			
                            <%
                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String o_id=null;
                                o_id=request.getParameter("o_id");
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
                        <table style="border-color: #0280e1; border-style: solid; margin-left: 200px;">
                            <tr>
                                  
                                <th style="width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;">Product Name</th>
                                <th style="width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">QTY</th>
                                <th style="width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;">Price</th>
                                <th style="width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;">Amount</th>
                               
                               
                            </tr>
                            <%
                                String pname[]=null;
                                String rate[]=null;
                                String qty[]=null;
                                rs=st.executeQuery("select *from order_detail where o_id='"+o_id+"'");
                                long amount=0,t_tamount=0;
                                while(rs.next())
                                {
                                    pname=rs.getString(6).split(",");
                                    rate=rs.getString(8).split(",");
                                    qty=rs.getString(7).split(",");
                                    
                                }
                                for(int i=0;i<pname.length;i++)
                                {
                                    out.println("<tr>");
                                    amount=((Long.parseLong(rate[i])) *(Long.parseLong(qty[i])));
                                    t_tamount=t_tamount+amount;
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+pname[i] +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+qty[i] +"</td>");
                                     out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rate[i] +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+amount+"</td>");
                              
                                    
                                   
                                    out.println("</tr>");

                                }
                            %>
                            <tr>
                                <th style="width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;" colspan="2">Total Amount</th>
                                <th style="width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;"colspan="2"><%= t_tamount%></th>
                            </tr>
                        </table>
		</div>
	</div>
                         
        <jsp:include page="../admin/include/js_data.jsp"></jsp:include>
    </body>
</html>

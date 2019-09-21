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
            if(session.getAttribute("eid")==null)
            {
                response.sendRedirect("login.jsp");
            }
        %>
        <jsp:include page="../employee/include/css_data.jsp"></jsp:include>
        <jsp:include page="../employee/include/header1.jsp"></jsp:include>
        <%--<jsp:include page="include/menu.jsp"></jsp:include>--%>
        <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Work Detail</h3>  
			
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
                        <table style="border-color: #0280e1; border-style: solid; margin-left: 70px;">
                            <tr>
                                  
                                <th style="width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;">Name</th>
                                <th style="width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Address</th>
                                <th style="width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Phone</th>
                                <th style="width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Request</th>
                                <th style="width:  100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Date</th>
                                <th style="width:  100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Status</th>
                                
                            </tr>
                            <%
                                rs=st.executeQuery("select customer.cust_name,service_detail.description,service_detail.r_date,service_detail.reply,service_detail.sid,customer.cust_address,customer.cust_phone,service_detail.eid,service_detail.emp_reply from customer,service_detail,employee where customer.cust_id=service_detail.cid and service_detail.eid=employee.eid and service_detail.eid='"+session.getAttribute("eid") +"'");
                                while(rs.next())
                                {
                                    out.println("<tr>");
                                    String rply=null;
                                    rply=rs.getString(9);
                                    //out.println("--->"+rs.getString(9));
                                    if(rply==null)
                                    {
                                        rply="No Send";
                                    }
                                    
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(1) +"</td>");
                                     out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(6) +"</td>");
                                      out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(7) +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(2) +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(3) +"</td>");
                                  out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;><a href=reply.jsp?sid="+rs.getString(5) +">"+rply+"</a></td>");
                                    out.println("</tr>");
                                }
                            %>
                        </table>
		</div>
	</div>
                         
        <jsp:include page="../employee/include/js_data.jsp"></jsp:include>
    </body>
</html>

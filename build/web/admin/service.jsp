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
			<h3 class="w3ls-title w3ls-title1">Service Request</h3>  
			
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
                        <table style="border-color: #0280e1; border-style: solid; margin-left: 50px;">
                            <tr>
                                  
                                <th style="width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;">Name</th>
                                <th style="width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Address</th>
                                <th style="width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Phone</th>
                                <th style="width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Request</th>
                                <th style="width:  100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Date</th>
                                
                                <th style="width: 200px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Reply</th>
                                <th style="width: 200px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Assign Work</th>
                                 <th style="width: 200px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Employee Name</th>
                                <th style="width: 200px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Employee Reply</th>
                                
                            </tr>
                            <%
                                rs=st.executeQuery("select customer.cust_name,service_detail.description,service_detail.r_date,service_detail.reply,service_detail.sid,customer.cust_address,customer.cust_phone,service_detail.eid,service_detail.emp_reply,ename from customer,employee,service_detail where customer.cust_id=service_detail.cid and employee.eid=service_detail.eid");
                                while(rs.next())
                                {
                                    out.println("<tr>");
                                    String serice=null;
                                    serice=rs.getString(8);
                                    if(Integer.parseInt(serice)==0)
                                    {
                                        serice="Not Assign";
                                    }
                                    else
                                    {
                                         serice="Assigned";
                                    }
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(1) +"</td>");
                                     out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(6) +"</td>");
                                      out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(7) +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(2) +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(3) +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;><a href=reply.jsp?sid="+rs.getString(5) +">"+rs.getString(4) +"</a></td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;><a href=work_assign.jsp?sid="+rs.getString(5) +">"+serice+"</a></td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(10) +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(9) +"</td>");
                                    out.println("</tr>");
                                }
                            %>
                        </table>
		</div>
	</div>
                         
        <jsp:include page="../admin/include/js_data.jsp"></jsp:include>
    </body>
</html>

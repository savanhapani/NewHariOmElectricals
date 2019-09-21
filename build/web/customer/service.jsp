<%-- 
    Document   : feedback
    Created on : Dec 7, 2017, 6:05:37 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
    </head>
    <body>   <%
        
            if(session.getAttribute("cid")==null)
            {
                out.println("<script> alert('You Must Be Login'); document.location.href='../login.jsp';</script>");
            }
        %>
         <jsp:include page="../customer/include/css_data.jsp"></jsp:include>
        <jsp:include page="../customer/include/header1.jsp"></jsp:include>
        <%--<jsp:include page="include/menu.jsp"></jsp:include>--%>
        <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Service Request...
                     </h3>  
			<div class="login-body">
                            <form action="service.jsp" method="post">
					
                                        <input  type="text" name="cdes" class="lock" placeholder="Enter Description" required="">
                                       <input type="submit" value="Send" name="b1"> 
                            </form>        
                              </div>
                        <%
                        Connection con=null;
                        Statement st=null;
                            String r_date=null,action=null,des=null;
                            DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
                            Date dateobj = new Date();
                            r_date=df.format(dateobj).toString();
				 try
                                {
                                  Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                       
                                        des=request.getParameter("cdes");
                                        int i=st.executeUpdate("insert into service_detail(description,r_date,cid)values('"+des+"','"+r_date+"','"+session.getAttribute("cid") +"')");
                                    
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is"+e);
                                }
                        %>
                </div>  
                        
                        <br/><br/>
                        <table style="border-color: #0280e1; border-style: solid; margin-left: 400px;">
                            <tr>
                                
                                <th style="width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;">Description</th>
                                <th style="width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Date</th>
                                <th style="width: 200px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Reply</th>
                               
                            </tr>
                            <%
                                ResultSet rs=null;
                                rs=st.executeQuery("select *from service_detail where cid='"+session.getAttribute("cid") +"'");
                                while(rs.next())
                                {
                                    out.println("<tr>");
                                   
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(2) +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(3) +"</td>");
                                     out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(4) +"</td>"); out.println("</tr>");
                                }
                            %>
                        </table>
		</div>
	</div>
                       
                <jsp:include page="../customer/include/footer.jsp"></jsp:include>
        <jsp:include page="../customer/include/js_data.jsp"></jsp:include>                                
    </body>
</html>

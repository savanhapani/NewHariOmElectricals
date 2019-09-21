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
            String sid=null;
            sid=request.getParameter("sid");
            if(sid!=null)
            {
                session.setAttribute("wsid", sid);
            }
                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                
                                try
                                {
                                  Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    rs=st.executeQuery("select *from employee");
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is"+e);
                                }
        %>
        <jsp:include page="../admin/include/css_data.jsp"></jsp:include>
        <jsp:include page="../admin/include/header1.jsp"></jsp:include>
        <%--<jsp:include page="include/menu.jsp"></jsp:include>--%>
        <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Assign work</h3>  
			<div class="login-body">
                            <form action="work_assign.jsp" method="post">
					
                                        <select name="empid" style="font-size: 1em;
    padding: 0.9em 1em;
    width: 100%;
    color: #999;
   
    outline: none;
    border: 1px solid #E2DCDC;
    background: #FFFFFF;">
                                            <%
                                                while(rs.next())
                                                {
                                            %>
                                            <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
                                            <%
                                                }
                                            %>
                                        </select>
                                        
                                        <input type="submit" value="Submit" name="b1">
					
				</form>
                            <%
                                String action=null,eid=null;
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                        eid=request.getParameter("empid");
                                       
                                        
                                        int i=st.executeUpdate("update service_detail set eid='"+eid+"' where sid='"+session.getAttribute("wsid") +"'");
                                        if(i>0)
                                            out.println("<script> alert('Work is Assign'); document.location.href='service.jsp';</script>");
                                        else
                                             out.println("<script> alert('Work is not Assign'); document.location.href='service.jsp';</script>");
                                    }  
                            %>
			
                        <br/><br/>
                        
		</div>
	</div>
                         
        <jsp:include page="../admin/include/js_data.jsp"></jsp:include>
    </body>
</html>

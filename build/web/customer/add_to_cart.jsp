<%-- 
    Document   : feedback
    Created on : Dec 7, 2017, 6:05:37 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
    </head>
    <body>  
        
        <%
        
            if(session.getAttribute("cid")==null)
            {
                out.println("<script> alert('You Must Be Login'); document.location.href='../login.jsp';</script>");
            }
        %>
         <%
            String apid=null;
            apid=request.getParameter("pid");
            if(apid!=null)
                session.setAttribute("apid", apid);
        %>
         <jsp:include page="../customer/include/css_data.jsp"></jsp:include>
        <jsp:include page="../customer/include/header1.jsp"></jsp:include>
        <%--<jsp:include page="include/menu.jsp"></jsp:include>--%>
        <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Add into Cart...
                     </h3>  
			<div class="login-body">
                            <form action="add_to_cart.jsp" method="post">
					<input  type="number" class="user" name="qty" placeholder="Select Qty" required="">
                                      
                                        <input type="submit" value="Submit" name="b1">
                            </form>
                                        </div>
                    <%
           
                    
              
                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String action=null,qty=null;
                                try
                                {
                                  Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                        qty=request.getParameter("qty");
                                        int i=st.executeUpdate("insert into add_to_cart(pid,qty,cid)values('"+session.getAttribute("apid") +"','"+qty+"','"+session.getAttribute("cid") +"')");
                                        if(i>0)
                                        {
                                            out.println("<script language=javascript> alert('Add Into Cart'); document.location.href='category.jsp';</script>");
                                        }
                                        else
                                        {
                                            out.println("<script language=javascript> alert('Not Add into Cart');</script>");
                                        }
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is"+e);
                                }
                            %>
                         
                       
                            
                </div>
        </div>
                <jsp:include page="../customer/include/footer.jsp"></jsp:include>
        <jsp:include page="../customer/include/js_data.jsp"></jsp:include>                       
    </body>
</html>

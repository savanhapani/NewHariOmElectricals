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
       
         <jsp:include page="../customer/include/css_data.jsp"></jsp:include>
        <jsp:include page="../customer/include/header1.jsp"></jsp:include>
        <%--<jsp:include page="include/menu.jsp"></jsp:include>--%>
        <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">your feedback...
                     </h3>  
			<div class="login-body">
                            <form action="feedback.jsp" method="post">
					<input  type="text" class="user" name="cname" placeholder="Enter Name" required="">
                                        <textarea name="catdes" style="font-size: 1em;
    padding: 0.9em 1em;
    width: 100%;
    color: #999;
   
    outline: none;
    border: 1px solid #E2DCDC;
    background: #FFFFFF;" >Enter Description</textarea>
                                        
                                        <input type="submit" value="Submit" name="b1">
                            </form>
                                        </div>
                    <%
            String cust_id=null,feecback_name=null,feedback_des=null;
                    
              
                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String fname=null,fdes=null,action=null;
                                try
                                {
                                  Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                        fname=request.getParameter("cname");
                                        fdes=request.getParameter("catdes");
                                        int i=st.executeUpdate("insert into feedback_detail(feedback_name,feedback_des,cust_id)values('"+fname+"','"+fdes+"','"+session.getAttribute("cid") +"')");
                                        if(i>0)
                                        {
                                            out.println("<script language=javascript> alert('feedback is Submitted');</script>");
                                        }
                                        else
                                        {
                                            out.println("<script language=javascript> alert('Not Submitted');</script>");
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

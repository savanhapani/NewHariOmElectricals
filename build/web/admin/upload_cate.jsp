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
                session.setAttribute("ucat_id", cat_id);
            }
        %>
        <jsp:include page="../admin/include/css_data.jsp"></jsp:include>
        <jsp:include page="../admin/include/header1.jsp"></jsp:include>
        <%--<jsp:include page="include/menu.jsp"></jsp:include>--%>
        <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Select Image</h3>  
			<div class="login-body">
                            <form method="post" action="../UploadServlet_cate" enctype="multipart/form-data">
					<input type="file" id="fileChooser" class="user" name="catname" placeholder="Select Image" required="">
                                        <input type="submit" value="Upload" name="b1">
					
				</form>
                            
			</div>  
                        
                        
		</div>
	</div>
        <jsp:include page="../admin/include/js_data.jsp"></jsp:include>
    </body>
</html>

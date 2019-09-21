<%-- 
    Document   : logout
    Created on : Dec 25, 2017, 5:55:01 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.removeAttribute("eid");
            response.sendRedirect("../login.jsp");
        %>
    </body>
</html>

<%-- 
    Document   : logout
    Created on : 03/12/2017, 19:41:15
    Author     : Syane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%session.invalidate();
         response.sendRedirect("home.jsp");
         %>
    </body>
</html>

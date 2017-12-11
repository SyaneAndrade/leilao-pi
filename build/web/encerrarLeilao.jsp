<%-- 
    Document   : encerrarLeilao
    Created on : 04/12/2017, 13:43:07
    Author     : THIAGO
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mysql.jdbc.JDBC4Connection"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="java.util.Properties"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Properties properties = new Properties();
            properties.put("user", "root");
            properties.put("password", "syane"); 
            Connection connection = new JDBC4Connection("localhost", 3306, properties, "leilao", "");
            
            try{
            
            int id = Integer.parseInt(request.getParameter("numero"));
            String  sql = "UPDATE leilao SET status=0 WHERE id=?";
            
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
         }
         catch(Exception e){}
            
        response.sendRedirect("leilao.jsp");
        %>
    </body>
</html>

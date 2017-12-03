<%-- 
    Document   : cadastrarproduto
    Created on : 03/12/2017, 18:58:26
    Author     : Syane
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.mysql.jdbc.JDBC4Connection"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.PreparedStatement"%>
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
            
            try {
                
                String descricao = request.getParameter("descricao");
                String lance = request.getParameter("lance");
                String status = request.getParameter("status");
                    
                String comando = "INSERT INTO leilao(descricao_produto,valorLance,status) VALUES(?,?,?)";
                PreparedStatement ps = connection.prepareStatement(comando);
                ps.setString(1, descricao);
                ps.setString(2, lance);
                ps.setString(3, status);
                ps.execute();
                ps.close();
            }
            
            finally {
                connection.close();
            }
            response.sendRedirect("leilao.jsp");
        %>
    </body>
</html>

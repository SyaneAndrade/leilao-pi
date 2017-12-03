<%-- 
    Document   : fazerLance
    Created on : 03/12/2017, 19:25:49
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
    <%
            Properties properties = new Properties();
            properties.put("user", "root");
            properties.put("password", "syane"); 
            Connection connection = new JDBC4Connection("localhost", 3306, properties, "leilao", "");
            
            try {
                
                int numero = Integer.parseInt(request.getParameter("numero"));
                Double valor = Double.parseDouble(request.getParameter("valor"));
                
                String comando = "UPDATE leilao SET valorLance = ? WHERE id= ? AND valorLance < ?";
                PreparedStatement ps = connection.prepareStatement(comando);
                ps.setDouble(1, valor);
                ps.setInt(2, numero);
                ps.setDouble(3, valor);
                ps.execute();
                comando = "INSERT INTO lance (valorlance, id_participante_fk,id_produto) VALUES(?,?,?)";
                ps = connection.prepareStatement(comando);
                ps.setDouble(1, valor);
                ps.setInt(2, (Integer)session.getAttribute("id"));
                ps.setInt(3, numero);
                ps.close();
            }
            
            finally {
                connection.close();
            }
            
            response.sendRedirect("leilao.jsp");
        %>
</html>

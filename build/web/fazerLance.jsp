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
                
                String comando1 = "SELECT * FROM leilao WHERE id = ?";
                PreparedStatement ps = connection.prepareStatement(comando1);
                ps.setInt(1, numero);
                ResultSet rs = ps.executeQuery();
                //ps.close();
                Double valor = 0.0;
                while(rs.next()){
                    valor = rs.getDouble("valorLance");
                }
                String comando = "UPDATE leilao SET valorLance = ? WHERE id= ?";
                ps = connection.prepareStatement(comando);
                ps.setInt(2, numero);
                valor = valor + 10.0;
                ps.setDouble(1, valor);
                ps.execute();
                comando = "INSERT INTO lance (valorlance, id_participante_fk,id_produto) VALUES(?,?,?)";
                ps = connection.prepareStatement(comando);
                ps.setDouble(1, valor);
                ps.setInt(2, (Integer)session.getAttribute("id"));
                ps.setInt(3, numero);
                ps.execute();   
                ps.close();
            }
            
            finally {
                connection.close();
            }
            
            response.sendRedirect("leilao.jsp");
        %>
</html>

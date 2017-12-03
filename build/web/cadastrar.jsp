<%-- 
    Document   : cadastrar
    Created on : 27/11/2017, 13:56:26
    Author     : THIAGO
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
        <title>Cadastramento</title>
    </head>
    <body>
        
        <%
            Properties properties = new Properties();
            properties.put("user", "root");
            properties.put("password", "syane"); 
            Connection connection = new JDBC4Connection("localhost", 3306, properties, "leilao", "");
            
            try {
                
                String login = request.getParameter("login");
                String senha = request.getParameter("senha");
                
                String consulta = "SELECT login FROM usuario WHERE login = ?";
                
                Statement statement = connection.createStatement();
                PreparedStatement ps2 = connection.prepareStatement(consulta);
                ps2.setString(1, login);
                ResultSet rs = ps2.executeQuery();
                
                if(!rs.next()){
                    
                    String comando = "INSERT INTO usuario(login,senha) VALUES(?,?)";
                    PreparedStatement ps = connection.prepareStatement(comando);
                    ps.setString(1, login);
                    ps.setString(2, senha);
                    ps.execute();
                    ps.close();
                    connection.close();
                }
                 
//                statement.execute("");
            }
            
            finally {
                connection.close();
            }
            
            response.sendRedirect("home.jsp");
        %>
        
    </body>
</html>

<%-- 
    Document   : login
    Created on : 03/12/2017, 16:56:55
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
                
                String login = request.getParameter("login");
                String senha = request.getParameter("senha");
                
                String consulta = "SELECT * FROM usuario WHERE login = ? AND senha = ?";
                
                PreparedStatement ps2 = connection.prepareStatement(consulta);
                ps2.setString(1, login);
                ps2.setString(2, senha);
                ResultSet rs = ps2.executeQuery();
                
                if(rs.next()){ 
                    session.setAttribute("id",rs.getInt("id"));
                    session.setAttribute("login", rs.getString("login"));
                    response.sendRedirect("leilao.jsp");
                    ps2.close();
                }
                else{
                    response.sendRedirect("home.jsp");
                }
            }
            
            finally {
                connection.close();
            }
        %>
    </body>
</html>

<%-- 
    Document   : lance
    Created on : 03/12/2017, 19:18:42
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
        <title>Lance</title>
    </head>
    <body>
        <%
         try {
            Properties properties = new Properties();
            properties.put("user", "root");
            properties.put("password", "syane"); 
            Connection connection = new JDBC4Connection("localhost", 3306, properties, "leilao", "");
                 
                String consulta = "SELECT * FROM leilao";              
                PreparedStatement ps = connection.prepareStatement(consulta);
                ResultSet rs = ps.executeQuery();
                
                out.print("<table border=\"1\">"
                        + "<thead><tr><th> Número </th>" +
                            "<th> Descrição </th>"+
                            "<th> Último Lance </th> </tr><thead>");
                while(rs.next()){
                    if(rs.getInt("status") == 1){
                    out.print("<tr>"  +
                                "<td>" + rs.getInt("id")+"</td>" +
                                "<td>" + rs.getString("descricao_produto") +"</td>" +
                                "<td>" +rs.getFloat("valorLance") + "</td>" +
                            "</tr>");
                    }
                out.print("</table>");
                }
                ps.close();
                connection.close();
            }        
            finally {
    
            }
            %>
            <form action="fazerLance.jsp">
                <table border="1">
                    <thead>
                        <tr>
                            <th>Fazer</th>
                            <th>do Lance</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Número do produto: </td>
                            <td><input type="text" name="numero"></td>
                        </tr>
                        <tr>
                            <td>Valor do lance: </td>
                            <td><input type="text" name="valor"></td>
                        </tr>
                    </tbody>
                </table>
                <input type="submit" value="Fazer Lance">
            </form>
            <form action="logout.jsp">
                <input type="submit" value="Logout">
            </form>
    </body>
</html>
